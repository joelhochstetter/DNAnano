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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.658169, 32.294811, 22.816782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385025, 32.586437, 22.798164>,  <42.221138, 32.761414, 22.786993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385025, 32.586437, 22.798164>,  <42.658169, 32.294811, 22.816782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385025, 32.586437, 22.798164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730456, -0.682399, 0.027653,
		-0.011600, 0.052881, 0.998533,
		-0.682861, 0.729064, -0.046544,
		42.180168, 32.805157, 22.784201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269375, 32.262623, 23.427704>,  <42.658169, 32.294811, 22.816782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269375, 32.262623, 23.427704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034546, 32.422009, 23.145832>,  <41.893650, 32.517639, 22.976709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034546, 32.422009, 23.145832>,  <42.269375, 32.262623, 23.427704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034546, 32.422009, 23.145832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694031, -0.695842, 0.184730,
		-0.416738, 0.597519, 0.685055,
		-0.587070, 0.398466, -0.704680,
		41.858425, 32.541550, 22.934427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538677, 32.291981, 23.643997>,  <42.269375, 32.262623, 23.427704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538677, 32.291981, 23.643997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531677, 32.254784, 23.245792>,  <41.527477, 32.232468, 23.006868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531677, 32.254784, 23.245792>,  <41.538677, 32.291981, 23.643997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531677, 32.254784, 23.245792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633733, -0.769088, 0.082982,
		-0.773354, 0.632342, -0.045471,
		-0.017502, -0.092991, -0.995513,
		41.526428, 32.226887, 22.947138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831627, 32.249557, 23.382263>,  <41.538677, 32.291981, 23.643997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831627, 32.249557, 23.382263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081097, 32.059059, 23.134319>,  <41.230778, 31.944759, 22.985554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081097, 32.059059, 23.134319>,  <40.831627, 32.249557, 23.382263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081097, 32.059059, 23.134319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531650, -0.839754, 0.110278,
		-0.573048, 0.260770, -0.776927,
		0.623670, -0.476248, -0.619858,
		41.268196, 31.916185, 22.948362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793945, 32.232693, 24.135830>,  <40.831627, 32.249557, 23.382263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793945, 32.232693, 24.135830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496395, 32.211384, 23.869354>,  <40.317863, 32.198597, 23.709469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496395, 32.211384, 23.869354>,  <40.793945, 32.232693, 24.135830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496395, 32.211384, 23.869354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436056, 0.794092, 0.423406,
		0.506457, 0.605458, -0.613940,
		-0.743879, -0.053276, -0.666187,
		40.273232, 32.195400, 23.669498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667038, 32.995224, 24.026577>,  <40.793945, 32.232693, 24.135830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667038, 32.995224, 24.026577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373211, 32.745434, 23.920422>,  <40.196915, 32.595558, 23.856730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373211, 32.745434, 23.920422>,  <40.667038, 32.995224, 24.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373211, 32.745434, 23.920422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658882, 0.563035, 0.498865,
		-0.162109, 0.541310, -0.825047,
		-0.734571, -0.624479, -0.265386,
		40.152840, 32.558090, 23.840805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141136, 33.431450, 23.856258>,  <40.667038, 32.995224, 24.026577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141136, 33.431450, 23.856258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955830, 33.083069, 23.921772>,  <39.844646, 32.874039, 23.961081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955830, 33.083069, 23.921772>,  <40.141136, 33.431450, 23.856258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955830, 33.083069, 23.921772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709536, 0.475245, 0.520289,
		-0.530987, 0.124818, -0.838137,
		-0.463262, -0.870955, 0.163786,
		39.816853, 32.821781, 23.970907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458790, 33.486668, 23.702135>,  <40.141136, 33.431450, 23.856258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458790, 33.486668, 23.702135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459152, 33.174782, 23.952587>,  <39.459370, 32.987648, 24.102858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459152, 33.174782, 23.952587>,  <39.458790, 33.486668, 23.702135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459152, 33.174782, 23.952587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893380, 0.280689, 0.350836,
		-0.449301, -0.559690, -0.696330,
		0.000908, -0.779718, 0.626130,
		39.459423, 32.940865, 24.140427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728828, 33.346657, 23.775734>,  <39.458790, 33.486668, 23.702135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728828, 33.346657, 23.775734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913933, 33.168022, 24.082043>,  <39.024998, 33.060841, 24.265827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913933, 33.168022, 24.082043>,  <38.728828, 33.346657, 23.775734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913933, 33.168022, 24.082043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735036, 0.289588, 0.613074,
		-0.495552, -0.846579, -0.194249,
		0.462763, -0.446591, 0.765772,
		39.052761, 33.034046, 24.311775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143620, 33.264660, 24.234722>,  <38.728828, 33.346657, 23.775734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143620, 33.264660, 24.234722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457218, 33.234890, 24.481236>,  <38.645378, 33.217030, 24.629145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457218, 33.234890, 24.481236>,  <38.143620, 33.264660, 24.234722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457218, 33.234890, 24.481236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582048, 0.256985, 0.771478,
		-0.215789, -0.963546, 0.158160,
		0.783999, -0.074420, 0.616285,
		38.692417, 33.212563, 24.666121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940784, 33.003494, 24.890928>,  <38.143620, 33.264660, 24.234722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940784, 33.003494, 24.890928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279354, 33.181202, 25.008358>,  <38.482498, 33.287827, 25.078815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279354, 33.181202, 25.008358>,  <37.940784, 33.003494, 24.890928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279354, 33.181202, 25.008358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471057, 0.367598, 0.801858,
		0.248321, -0.817006, 0.520421,
		0.846429, 0.444266, 0.293574,
		38.533283, 33.314484, 25.096430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194546, 32.664009, 25.594725>,  <37.940784, 33.003494, 24.890928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194546, 32.664009, 25.594725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347290, 33.029507, 25.539219>,  <38.438934, 33.248806, 25.505915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347290, 33.029507, 25.539219>,  <38.194546, 32.664009, 25.594725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347290, 33.029507, 25.539219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163461, 0.214547, 0.962938,
		0.909651, -0.345024, 0.231288,
		0.381859, 0.913744, -0.138765,
		38.461849, 33.303631, 25.497589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487583, 32.872150, 26.254719>,  <38.194546, 32.664009, 25.594725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487583, 32.872150, 26.254719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465557, 33.226986, 26.071400>,  <38.452339, 33.439888, 25.961409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465557, 33.226986, 26.071400>,  <38.487583, 32.872150, 26.254719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465557, 33.226986, 26.071400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412660, 0.397742, 0.819459,
		0.909219, 0.234248, 0.344164,
		-0.055068, 0.887091, -0.458299,
		38.449036, 33.493114, 25.933910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839710, 33.312134, 26.644754>,  <38.487583, 32.872150, 26.254719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839710, 33.312134, 26.644754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578892, 33.539780, 26.444374>,  <38.422401, 33.676369, 26.324146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578892, 33.539780, 26.444374>,  <38.839710, 33.312134, 26.644754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578892, 33.539780, 26.444374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370328, 0.337482, 0.865426,
		0.661587, 0.749810, -0.009294,
		-0.652042, 0.569113, -0.500950,
		38.383278, 33.710514, 26.294088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029022, 34.021320, 26.654186>,  <38.839710, 33.312134, 26.644754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029022, 34.021320, 26.654186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634403, 33.983566, 26.600803>,  <38.397633, 33.960915, 26.568773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634403, 33.983566, 26.600803>,  <39.029022, 34.021320, 26.654186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634403, 33.983566, 26.600803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159122, 0.367677, 0.916239,
		-0.037411, 0.925151, -0.377751,
		-0.986550, -0.094386, -0.133456,
		38.338440, 33.955250, 26.560766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761600, 34.505787, 27.164658>,  <39.029022, 34.021320, 26.654186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761600, 34.505787, 27.164658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441174, 34.307865, 27.029926>,  <38.248917, 34.189110, 26.949087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441174, 34.307865, 27.029926>,  <38.761600, 34.505787, 27.164658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441174, 34.307865, 27.029926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480063, 0.194986, 0.855289,
		-0.357526, 0.846846, -0.393736,
		-0.801071, -0.494806, -0.336827,
		38.200851, 34.159424, 26.928879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199047, 34.802364, 27.479261>,  <38.761600, 34.505787, 27.164658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199047, 34.802364, 27.479261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058323, 34.446648, 27.362370>,  <37.973888, 34.233219, 27.292234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058323, 34.446648, 27.362370>,  <38.199047, 34.802364, 27.479261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058323, 34.446648, 27.362370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467370, -0.103617, 0.877968,
		-0.811046, 0.445457, -0.379173,
		-0.351809, -0.889287, -0.292231,
		37.952782, 34.179863, 27.274700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615498, 34.796936, 27.802647>,  <38.199047, 34.802364, 27.479261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615498, 34.796936, 27.802647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665627, 34.408825, 27.719845>,  <37.695702, 34.175957, 27.670164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665627, 34.408825, 27.719845>,  <37.615498, 34.796936, 27.802647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665627, 34.408825, 27.719845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342111, -0.238113, 0.908990,
		-0.931265, -0.043097, -0.361784,
		0.125321, -0.970281, -0.207002,
		37.703224, 34.117741, 27.657743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051655, 34.459541, 28.142834>,  <37.615498, 34.796936, 27.802647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051655, 34.459541, 28.142834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313431, 34.171383, 28.050976>,  <37.470497, 33.998489, 27.995861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313431, 34.171383, 28.050976>,  <37.051655, 34.459541, 28.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313431, 34.171383, 28.050976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274195, -0.509158, 0.815828,
		-0.704643, -0.470946, -0.530744,
		0.654443, -0.720394, -0.229644,
		37.509766, 33.955265, 27.982082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639107, 33.772045, 28.012190>,  <37.051655, 34.459541, 28.142834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639107, 33.772045, 28.012190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005638, 33.684483, 28.146313>,  <37.225555, 33.631947, 28.226786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005638, 33.684483, 28.146313>,  <36.639107, 33.772045, 28.012190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005638, 33.684483, 28.146313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400277, -0.524402, 0.751519,
		0.011327, -0.822851, -0.568144,
		0.916324, -0.218903, 0.335308,
		37.280537, 33.618813, 28.246904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516006, 33.142746, 28.358751>,  <36.639107, 33.772045, 28.012190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516006, 33.142746, 28.358751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877369, 33.241821, 28.498760>,  <37.094185, 33.301266, 28.582766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877369, 33.241821, 28.498760>,  <36.516006, 33.142746, 28.358751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877369, 33.241821, 28.498760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183336, -0.514797, 0.837480,
		0.387623, -0.820753, -0.419658,
		0.903403, 0.247688, 0.350021,
		37.148388, 33.316128, 28.603767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769829, 32.586796, 28.707022>,  <36.516006, 33.142746, 28.358751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769829, 32.586796, 28.707022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012615, 32.864178, 28.862312>,  <37.158287, 33.030605, 28.955486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012615, 32.864178, 28.862312>,  <36.769829, 32.586796, 28.707022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012615, 32.864178, 28.862312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021587, -0.502703, 0.864189,
		0.794437, -0.516150, -0.320092,
		0.606963, 0.693454, 0.388224,
		37.194702, 33.072212, 28.978779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411369, 32.203423, 28.871874>,  <36.769829, 32.586796, 28.707022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411369, 32.203423, 28.871874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391056, 32.549435, 29.071533>,  <37.378868, 32.757042, 29.191328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391056, 32.549435, 29.071533>,  <37.411369, 32.203423, 28.871874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391056, 32.549435, 29.071533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173677, -0.484529, 0.857361,
		0.983493, 0.130227, -0.125631,
		-0.050780, 0.865027, 0.499148,
		37.375824, 32.808945, 29.221277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952168, 32.184643, 29.301559>,  <37.411369, 32.203423, 28.871874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952168, 32.184643, 29.301559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690601, 32.420147, 29.491615>,  <37.533661, 32.561447, 29.605650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690601, 32.420147, 29.491615>,  <37.952168, 32.184643, 29.301559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690601, 32.420147, 29.491615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014859, -0.617907, 0.786111,
		0.756421, 0.521111, 0.395311,
		-0.653916, 0.588757, 0.475140,
		37.494427, 32.596775, 29.634157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281685, 32.354828, 30.009369>,  <37.952168, 32.184643, 29.301559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281685, 32.354828, 30.009369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892319, 32.438507, 30.046696>,  <37.658699, 32.488712, 30.069092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892319, 32.438507, 30.046696>,  <38.281685, 32.354828, 30.009369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892319, 32.438507, 30.046696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036469, -0.543718, 0.838475,
		0.226144, 0.812778, 0.536890,
		-0.973411, 0.209196, 0.093317,
		37.600296, 32.501266, 30.074690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146667, 32.683933, 30.625193>,  <38.281685, 32.354828, 30.009369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146667, 32.683933, 30.625193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780815, 32.543964, 30.544186>,  <37.561306, 32.459984, 30.495581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780815, 32.543964, 30.544186>,  <38.146667, 32.683933, 30.625193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780815, 32.543964, 30.544186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111441, -0.263310, 0.958253,
		-0.388638, 0.899012, 0.201835,
		-0.914627, -0.349921, -0.202519,
		37.506428, 32.438988, 30.483431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753658, 32.762913, 31.190800>,  <38.146667, 32.683933, 30.625193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753658, 32.762913, 31.190800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549541, 32.451080, 31.045547>,  <37.427071, 32.263981, 30.958397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549541, 32.451080, 31.045547>,  <37.753658, 32.762913, 31.190800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549541, 32.451080, 31.045547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157760, -0.330224, 0.930625,
		-0.845410, 0.532175, 0.045523,
		-0.510288, -0.779578, -0.363131,
		37.396454, 32.217205, 30.936607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213787, 32.698574, 31.557867>,  <37.753658, 32.762913, 31.190800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213787, 32.698574, 31.557867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307293, 32.343128, 31.400021>,  <37.363396, 32.129860, 31.305313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307293, 32.343128, 31.400021>,  <37.213787, 32.698574, 31.557867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307293, 32.343128, 31.400021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093164, -0.383523, 0.918820,
		-0.967820, -0.251552, -0.006867,
		0.233765, -0.888612, -0.394617,
		37.377422, 32.076546, 31.281635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969063, 32.132339, 32.042583>,  <37.213787, 32.698574, 31.557867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969063, 32.132339, 32.042583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206615, 31.918186, 31.802357>,  <37.349148, 31.789696, 31.658222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206615, 31.918186, 31.802357>,  <36.969063, 32.132339, 32.042583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206615, 31.918186, 31.802357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292930, -0.551336, 0.781166,
		-0.749332, -0.639842, -0.170599,
		0.593880, -0.535380, -0.600563,
		37.384781, 31.757572, 31.622189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794983, 31.290771, 32.044788>,  <36.969063, 32.132339, 32.042583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794983, 31.290771, 32.044788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168930, 31.385487, 31.938999>,  <37.393299, 31.442316, 31.875525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168930, 31.385487, 31.938999>,  <36.794983, 31.290771, 32.044788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168930, 31.385487, 31.938999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354720, -0.652030, 0.670098,
		-0.013776, -0.720270, -0.693557,
		0.934871, 0.236787, -0.264477,
		37.449390, 31.456522, 31.859655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473415, 31.002028, 32.026733>,  <36.794983, 31.290771, 32.044788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473415, 31.002028, 32.026733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809910, 30.941692, 32.234417>,  <38.011806, 30.905491, 32.359028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809910, 30.941692, 32.234417>,  <37.473415, 31.002028, 32.026733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809910, 30.941692, 32.234417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479004, -0.653305, 0.586300,
		0.250762, -0.741916, -0.621835,
		0.841233, -0.150840, 0.519205,
		38.062279, 30.896441, 32.390179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615700, 30.367899, 31.999395>,  <37.473415, 31.002028, 32.026733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615700, 30.367899, 31.999395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816921, 30.481461, 32.325912>,  <37.937653, 30.549597, 32.521824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816921, 30.481461, 32.325912>,  <37.615700, 30.367899, 31.999395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816921, 30.481461, 32.325912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386776, -0.770692, 0.506398,
		0.772879, -0.570468, -0.277892,
		0.503053, 0.283902, 0.816295,
		37.967838, 30.566631, 32.570801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043579, 29.723354, 32.284561>,  <37.615700, 30.367899, 31.999395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043579, 29.723354, 32.284561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915890, 29.990990, 32.553013>,  <37.839275, 30.151571, 32.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915890, 29.990990, 32.553013>,  <38.043579, 29.723354, 32.284561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915890, 29.990990, 32.553013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293460, -0.743164, 0.601322,
		0.901097, -0.004992, 0.433588,
		-0.319225, 0.669091, 0.671128,
		37.820122, 30.191717, 32.754353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756855, 29.060469, 32.105068>,  <38.043579, 29.723354, 32.284561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756855, 29.060469, 32.105068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361561, 29.107155, 32.144588>,  <37.124382, 29.135166, 32.168301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361561, 29.107155, 32.144588>,  <37.756855, 29.060469, 32.105068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361561, 29.107155, 32.144588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059677, 0.300533, -0.951903,
		-0.140795, -0.946603, -0.290033,
		-0.988239, 0.116715, 0.098804,
		37.065090, 29.142168, 32.174229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322678, 28.713480, 31.624331>,  <37.756855, 29.060469, 32.105068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322678, 28.713480, 31.624331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118347, 29.041378, 31.727928>,  <36.995750, 29.238117, 31.790087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118347, 29.041378, 31.727928>,  <37.322678, 28.713480, 31.624331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118347, 29.041378, 31.727928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117946, 0.231588, -0.965638,
		-0.851557, -0.523817, -0.021614,
		-0.510823, 0.819746, 0.258992,
		36.965099, 29.287302, 31.805626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744209, 28.832277, 31.013124>,  <37.322678, 28.713480, 31.624331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744209, 28.832277, 31.013124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886986, 29.136311, 31.230331>,  <36.972652, 29.318729, 31.360655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886986, 29.136311, 31.230331>,  <36.744209, 28.832277, 31.013124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886986, 29.136311, 31.230331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276716, 0.469181, -0.838628,
		-0.892199, 0.449606, -0.042854,
		0.356946, 0.760081, 0.543016,
		36.994068, 29.364334, 31.393236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420601, 29.430893, 30.791498>,  <36.744209, 28.832277, 31.013124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420601, 29.430893, 30.791498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785782, 29.498577, 30.940029>,  <37.004890, 29.539186, 31.029148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785782, 29.498577, 30.940029>,  <36.420601, 29.430893, 30.791498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785782, 29.498577, 30.940029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279219, 0.404551, -0.870847,
		-0.297575, 0.898725, 0.322090,
		0.912954, 0.169209, 0.371326,
		37.059669, 29.549339, 31.051428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480244, 30.235126, 30.780910>,  <36.420601, 29.430893, 30.791498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480244, 30.235126, 30.780910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841919, 30.064278, 30.782150>,  <37.058926, 29.961769, 30.782894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841919, 30.064278, 30.782150>,  <36.480244, 30.235126, 30.780910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841919, 30.064278, 30.782150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194137, 0.404496, -0.893697,
		0.380463, 0.808673, 0.448661,
		0.904190, -0.427120, 0.003098,
		37.113174, 29.936142, 30.783079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817265, 30.803677, 30.411198>,  <36.480244, 30.235126, 30.780910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817265, 30.803677, 30.411198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081345, 30.503540, 30.397804>,  <37.239792, 30.323458, 30.389769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081345, 30.503540, 30.397804>,  <36.817265, 30.803677, 30.411198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081345, 30.503540, 30.397804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212763, 0.229583, -0.949749,
		0.720323, 0.619902, 0.311216,
		0.660202, -0.750342, -0.033482,
		37.279404, 30.278437, 30.387760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448742, 31.062475, 30.117695>,  <36.817265, 30.803677, 30.411198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448742, 31.062475, 30.117695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424644, 30.668636, 30.052044>,  <37.410187, 30.432333, 30.012653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424644, 30.668636, 30.052044>,  <37.448742, 31.062475, 30.117695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424644, 30.668636, 30.052044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175621, 0.151404, -0.972746,
		0.982613, -0.087428, 0.163794,
		-0.060247, -0.984598, -0.164126,
		37.406570, 30.373257, 30.002806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906292, 30.994608, 29.517080>,  <37.448742, 31.062475, 30.117695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906292, 30.994608, 29.517080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710541, 30.647758, 29.554184>,  <37.593090, 30.439648, 29.576447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710541, 30.647758, 29.554184>,  <37.906292, 30.994608, 29.517080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710541, 30.647758, 29.554184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108548, -0.166109, -0.980115,
		0.865291, -0.469575, 0.175415,
		-0.489375, -0.867126, 0.092761,
		37.563728, 30.387621, 29.582012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263424, 30.509132, 29.275940>,  <37.906292, 30.994608, 29.517080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263424, 30.509132, 29.275940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917465, 30.313507, 29.230736>,  <37.709888, 30.196133, 29.203613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917465, 30.313507, 29.230736>,  <38.263424, 30.509132, 29.275940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917465, 30.313507, 29.230736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148179, -0.033657, -0.988388,
		0.479578, -0.871600, 0.101578,
		-0.864897, -0.489061, -0.113012,
		37.657997, 30.166788, 29.196833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346413, 29.944527, 28.857288>,  <38.263424, 30.509132, 29.275940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346413, 29.944527, 28.857288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954403, 30.019764, 28.831463>,  <37.719196, 30.064905, 28.815968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954403, 30.019764, 28.831463>,  <38.346413, 29.944527, 28.857288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954403, 30.019764, 28.831463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047777, -0.092462, -0.994569,
		-0.193039, -0.977790, 0.081629,
		-0.980027, 0.188091, -0.064565,
		37.660397, 30.076191, 28.812094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177746, 29.512760, 28.392246>,  <38.346413, 29.944527, 28.857288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177746, 29.512760, 28.392246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884708, 29.785023, 28.390961>,  <37.708885, 29.948380, 28.390190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884708, 29.785023, 28.390961>,  <38.177746, 29.512760, 28.392246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884708, 29.785023, 28.390961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073514, 0.074430, -0.994513,
		-0.676682, -0.728812, -0.104565,
		-0.732596, 0.680656, -0.003212,
		37.664928, 29.989220, 28.389997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886272, 29.372429, 27.779570>,  <38.177746, 29.512760, 28.392246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886272, 29.372429, 27.779570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724110, 29.729416, 27.858711>,  <37.626812, 29.943607, 27.906197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724110, 29.729416, 27.858711>,  <37.886272, 29.372429, 27.779570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724110, 29.729416, 27.858711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033404, 0.230755, -0.972438,
		-0.913524, -0.387627, -0.123362,
		-0.405410, 0.892467, 0.197852,
		37.602486, 29.997156, 27.918066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199974, 29.425993, 27.426863>,  <37.886272, 29.372429, 27.779570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199974, 29.425993, 27.426863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338593, 29.794548, 27.497238>,  <37.421764, 30.015680, 27.539463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338593, 29.794548, 27.497238>,  <37.199974, 29.425993, 27.426863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338593, 29.794548, 27.497238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132611, 0.233799, -0.963199,
		-0.928613, 0.310459, 0.203208,
		0.346543, 0.921387, 0.175938,
		37.442554, 30.070965, 27.550020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641972, 29.910885, 27.152363>,  <37.199974, 29.425993, 27.426863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641972, 29.910885, 27.152363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965786, 30.144440, 27.176788>,  <37.160076, 30.284573, 27.191444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965786, 30.144440, 27.176788>,  <36.641972, 29.910885, 27.152363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965786, 30.144440, 27.176788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221423, 0.400007, -0.889363,
		-0.543713, 0.706449, 0.453106,
		0.809535, 0.583887, 0.061065,
		37.208645, 30.319605, 27.195108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436649, 30.599754, 26.790966>,  <36.641972, 29.910885, 27.152363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436649, 30.599754, 26.790966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835537, 30.572746, 26.803619>,  <37.074867, 30.556541, 26.811211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835537, 30.572746, 26.803619>,  <36.436649, 30.599754, 26.790966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835537, 30.572746, 26.803619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047474, 0.247818, -0.967643,
		0.057494, 0.966451, 0.250333,
		0.997216, -0.067518, 0.031633,
		37.134701, 30.552490, 26.813108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672382, 31.122963, 26.330074>,  <36.436649, 30.599754, 26.790966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672382, 31.122963, 26.330074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007107, 30.913872, 26.395184>,  <37.207943, 30.788418, 26.434250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007107, 30.913872, 26.395184>,  <36.672382, 31.122963, 26.330074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007107, 30.913872, 26.395184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335478, 0.254624, -0.906985,
		0.432660, 0.813586, 0.388437,
		0.836815, -0.522728, 0.162775,
		37.258152, 30.757053, 26.444016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068459, 31.642248, 26.142672>,  <36.672382, 31.122963, 26.330074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068459, 31.642248, 26.142672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253784, 31.289928, 26.103619>,  <37.364979, 31.078537, 26.080187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253784, 31.289928, 26.103619>,  <37.068459, 31.642248, 26.142672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253784, 31.289928, 26.103619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313929, 0.266153, -0.911378,
		0.828725, 0.391609, 0.399822,
		0.463318, -0.880798, -0.097630,
		37.392780, 31.025688, 26.074329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798656, 31.850395, 25.863638>,  <37.068459, 31.642248, 26.142672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798656, 31.850395, 25.863638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728420, 31.463242, 25.791672>,  <37.686279, 31.230949, 25.748493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728420, 31.463242, 25.791672>,  <37.798656, 31.850395, 25.863638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728420, 31.463242, 25.791672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500690, 0.069550, -0.862828,
		0.847630, -0.241589, 0.472397,
		-0.175594, -0.967883, -0.179914,
		37.675743, 31.172876, 25.737698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413666, 31.519348, 25.515278>,  <37.798656, 31.850395, 25.863638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413666, 31.519348, 25.515278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108757, 31.278709, 25.419762>,  <37.925812, 31.134327, 25.362452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108757, 31.278709, 25.419762>,  <38.413666, 31.519348, 25.515278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108757, 31.278709, 25.419762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280997, 0.024761, -0.959389,
		0.583079, -0.798415, 0.150173,
		-0.762273, -0.601598, -0.238790,
		37.880074, 31.098230, 25.348125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653450, 30.958111, 25.111101>,  <38.413666, 31.519348, 25.515278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653450, 30.958111, 25.111101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266304, 30.994534, 25.017342>,  <38.034016, 31.016386, 24.961086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266304, 30.994534, 25.017342>,  <38.653450, 30.958111, 25.111101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266304, 30.994534, 25.017342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236210, 0.009493, -0.971656,
		-0.086251, -0.995800, -0.030697,
		-0.967867, 0.091058, -0.234399,
		37.975945, 31.021851, 24.947021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682961, 30.720997, 24.489386>,  <38.653450, 30.958111, 25.111101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682961, 30.720997, 24.489386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331245, 30.910812, 24.473057>,  <38.120216, 31.024702, 24.463261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331245, 30.910812, 24.473057>,  <38.682961, 30.720997, 24.489386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331245, 30.910812, 24.473057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048596, 0.004128, -0.998810,
		-0.473805, -0.880225, -0.026691,
		-0.879288, 0.474539, -0.040820,
		38.067459, 31.053173, 24.460812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308250, 30.390373, 23.957073>,  <38.682961, 30.720997, 24.489386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308250, 30.390373, 23.957073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135826, 30.746815, 24.013813>,  <38.032372, 30.960680, 24.047857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135826, 30.746815, 24.013813>,  <38.308250, 30.390373, 23.957073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135826, 30.746815, 24.013813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180552, 0.068843, -0.981153,
		-0.884074, -0.448548, 0.131215,
		-0.431061, 0.891103, 0.141848,
		38.006508, 31.014145, 24.056368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770203, 30.372824, 23.427572>,  <38.308250, 30.390373, 23.957073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770203, 30.372824, 23.427572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787571, 30.759552, 23.528271>,  <37.797993, 30.991589, 23.588690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787571, 30.759552, 23.528271>,  <37.770203, 30.372824, 23.427572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787571, 30.759552, 23.528271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051133, 0.253803, -0.965904,
		-0.997747, 0.029071, 0.060458,
		0.043424, 0.966819, 0.251745,
		37.800598, 31.049599, 23.603794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201492, 30.723965, 23.110758>,  <37.770203, 30.372824, 23.427572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201492, 30.723965, 23.110758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499554, 30.982616, 23.176022>,  <37.678391, 31.137808, 23.215179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499554, 30.982616, 23.176022>,  <37.201492, 30.723965, 23.110758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499554, 30.982616, 23.176022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063544, 0.312382, -0.947829,
		-0.663863, 0.695907, 0.273861,
		0.745150, 0.646631, 0.163158,
		37.723099, 31.176605, 23.224970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016048, 31.479601, 22.837734>,  <37.201492, 30.723965, 23.110758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016048, 31.479601, 22.837734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407261, 31.396511, 22.830662>,  <37.641987, 31.346657, 22.826418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407261, 31.396511, 22.830662>,  <37.016048, 31.479601, 22.837734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407261, 31.396511, 22.830662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087329, 0.485237, -0.870011,
		0.189302, 0.849350, 0.492716,
		0.978028, -0.207723, -0.017683,
		37.700668, 31.334194, 22.825357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380447, 32.132950, 22.961018>,  <37.016048, 31.479601, 22.837734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380447, 32.132950, 22.961018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237000, 32.495228, 22.870590>,  <37.150932, 32.712593, 22.816334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237000, 32.495228, 22.870590>,  <37.380447, 32.132950, 22.961018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237000, 32.495228, 22.870590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889898, -0.258563, 0.375801,
		0.281909, 0.335946, 0.898703,
		-0.358620, 0.905696, -0.226066,
		37.129414, 32.766937, 22.802771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291599, 32.514965, 23.554062>,  <37.380447, 32.132950, 22.961018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291599, 32.514965, 23.554062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034496, 32.606850, 23.261734>,  <36.880234, 32.661980, 23.086338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034496, 32.606850, 23.261734>,  <37.291599, 32.514965, 23.554062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034496, 32.606850, 23.261734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733345, -0.460358, 0.500276,
		-0.221518, 0.857498, 0.464357,
		-0.642756, 0.229714, -0.730819,
		36.841671, 32.675762, 23.042488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629402, 32.750690, 23.878199>,  <37.291599, 32.514965, 23.554062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629402, 32.750690, 23.878199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554432, 32.550667, 23.540012>,  <36.509449, 32.430653, 23.337101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554432, 32.550667, 23.540012>,  <36.629402, 32.750690, 23.878199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554432, 32.550667, 23.540012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856507, -0.338189, 0.389903,
		-0.480902, 0.797225, -0.364919,
		-0.187429, -0.500060, -0.845465,
		36.498203, 32.400650, 23.286373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000240, 32.954025, 23.486298>,  <36.629402, 32.750690, 23.878199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000240, 32.954025, 23.486298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089142, 32.564034, 23.484776>,  <36.142483, 32.330040, 23.483862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089142, 32.564034, 23.484776>,  <36.000240, 32.954025, 23.486298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089142, 32.564034, 23.484776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730675, -0.169146, 0.661441,
		-0.645535, -0.144230, -0.749988,
		0.222257, -0.974981, -0.003804,
		36.155819, 32.271538, 23.483635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333790, 32.652061, 23.694897>,  <36.000240, 32.954025, 23.486298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333790, 32.652061, 23.694897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606308, 32.360130, 23.717464>,  <35.769817, 32.184971, 23.731005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606308, 32.360130, 23.717464>,  <35.333790, 32.652061, 23.694897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606308, 32.360130, 23.717464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589649, -0.501495, 0.633101,
		-0.433762, -0.464597, -0.772011,
		0.681296, -0.729830, 0.056419,
		35.810696, 32.141182, 23.734390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143837, 32.024170, 23.385328>,  <35.333790, 32.652061, 23.694897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143837, 32.024170, 23.385328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384907, 31.970802, 23.700031>,  <35.529549, 31.938780, 23.888853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384907, 31.970802, 23.700031>,  <35.143837, 32.024170, 23.385328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384907, 31.970802, 23.700031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723843, -0.506429, 0.468595,
		0.335915, -0.851897, -0.401788,
		0.602672, -0.133423, 0.786756,
		35.565708, 31.930775, 23.936058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264713, 31.303076, 23.644644>,  <35.143837, 32.024170, 23.385328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264713, 31.303076, 23.644644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296192, 31.533897, 23.969807>,  <35.315079, 31.672390, 24.164904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296192, 31.533897, 23.969807>,  <35.264713, 31.303076, 23.644644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296192, 31.533897, 23.969807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758235, -0.494754, 0.424615,
		0.647214, -0.649791, 0.398606,
		0.078699, 0.577054, 0.812906,
		35.319801, 31.707014, 24.213678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235882, 30.867424, 24.186813>,  <35.264713, 31.303076, 23.644644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235882, 30.867424, 24.186813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155704, 31.216141, 24.365608>,  <35.107597, 31.425371, 24.472885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155704, 31.216141, 24.365608>,  <35.235882, 30.867424, 24.186813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155704, 31.216141, 24.365608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758391, -0.426907, 0.492538,
		0.620214, -0.240264, 0.746732,
		-0.200446, 0.871793, 0.446988,
		35.095570, 31.477678, 24.499704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324276, 30.738207, 24.821581>,  <35.235882, 30.867424, 24.186813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324276, 30.738207, 24.821581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101624, 31.069893, 24.841808>,  <34.968033, 31.268906, 24.853945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101624, 31.069893, 24.841808>,  <35.324276, 30.738207, 24.821581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101624, 31.069893, 24.841808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578845, -0.430789, 0.692358,
		0.595900, 0.356118, 0.719780,
		-0.556634, 0.829217, 0.050570,
		34.934631, 31.318659, 24.856979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239307, 30.953468, 25.527821>,  <35.324276, 30.738207, 24.821581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239307, 30.953468, 25.527821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923149, 31.088493, 25.323338>,  <34.733456, 31.169508, 25.200647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923149, 31.088493, 25.323338>,  <35.239307, 30.953468, 25.527821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923149, 31.088493, 25.323338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610130, -0.508645, 0.607472,
		-0.054964, 0.792044, 0.607985,
		-0.790392, 0.337561, -0.511206,
		34.686031, 31.189762, 25.169975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778625, 31.029213, 26.068907>,  <35.239307, 30.953468, 25.527821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778625, 31.029213, 26.068907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549690, 31.069366, 25.743366>,  <34.412331, 31.093458, 25.548042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549690, 31.069366, 25.743366>,  <34.778625, 31.029213, 26.068907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549690, 31.069366, 25.743366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712432, -0.552308, 0.432894,
		-0.406041, 0.827574, 0.387622,
		-0.572339, 0.100382, -0.813850,
		34.377987, 31.099482, 25.499210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997669, 31.199776, 26.220690>,  <34.778625, 31.029213, 26.068907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997669, 31.199776, 26.220690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977444, 31.052986, 25.849148>,  <33.965309, 30.964912, 25.626223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977444, 31.052986, 25.849148>,  <33.997669, 31.199776, 26.220690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977444, 31.052986, 25.849148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781345, -0.564739, 0.265648,
		-0.622048, 0.739189, -0.258178,
		-0.050561, -0.366972, -0.928857,
		33.962276, 30.942894, 25.570490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305519, 31.307381, 25.976284>,  <33.997669, 31.199776, 26.220690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305519, 31.307381, 25.976284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433598, 31.005836, 25.746792>,  <33.510445, 30.824909, 25.609097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433598, 31.005836, 25.746792>,  <33.305519, 31.307381, 25.976284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433598, 31.005836, 25.746792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823107, -0.521208, 0.225469,
		-0.469004, 0.400046, -0.787399,
		0.320201, -0.753860, -0.573730,
		33.529659, 30.779678, 25.574673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721897, 31.074488, 25.754551>,  <33.305519, 31.307381, 25.976284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721897, 31.074488, 25.754551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988010, 30.782078, 25.693878>,  <33.147678, 30.606632, 25.657475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988010, 30.782078, 25.693878>,  <32.721897, 31.074488, 25.754551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988010, 30.782078, 25.693878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684945, -0.678456, 0.265610,
		-0.297078, -0.072810, -0.952073,
		0.665279, -0.731024, -0.151683,
		33.187595, 30.562771, 25.648373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402042, 30.474930, 25.386513>,  <32.721897, 31.074488, 25.754551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402042, 30.474930, 25.386513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717319, 30.333282, 25.587849>,  <32.906487, 30.248295, 25.708651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717319, 30.333282, 25.587849>,  <32.402042, 30.474930, 25.386513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717319, 30.333282, 25.587849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594522, -0.649473, 0.474056,
		0.159033, -0.672895, -0.722441,
		0.788196, -0.354117, 0.503338,
		32.953777, 30.227047, 25.738850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424026, 29.745314, 25.397001>,  <32.402042, 30.474930, 25.386513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424026, 29.745314, 25.397001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679222, 29.815990, 25.696800>,  <32.832340, 29.858397, 25.876680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679222, 29.815990, 25.696800>,  <32.424026, 29.745314, 25.397001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679222, 29.815990, 25.696800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444005, -0.710822, 0.545519,
		0.629149, -0.680817, -0.375046,
		0.637990, 0.176690, 0.749499,
		32.870621, 29.868998, 25.921650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601265, 29.023907, 25.536930>,  <32.424026, 29.745314, 25.397001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601265, 29.023907, 25.536930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673000, 29.265324, 25.847691>,  <32.716042, 29.410173, 26.034147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673000, 29.265324, 25.847691>,  <32.601265, 29.023907, 25.536930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673000, 29.265324, 25.847691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201819, -0.750337, 0.629494,
		0.962864, -0.269685, -0.012758,
		0.179338, 0.603543, 0.776900,
		32.726803, 29.446386, 26.080761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688515, 28.573484, 25.896744>,  <32.601265, 29.023907, 25.536930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688515, 28.573484, 25.896744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676651, 28.880440, 26.152943>,  <32.669533, 29.064613, 26.306662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676651, 28.880440, 26.152943>,  <32.688515, 28.573484, 25.896744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676651, 28.880440, 26.152943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143444, -0.637414, 0.757052,
		0.989214, -0.069421, 0.128983,
		-0.029660, 0.767388, 0.640496,
		32.667751, 29.110657, 26.345091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209206, 28.397104, 26.433681>,  <32.688515, 28.573484, 25.896744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209206, 28.397104, 26.433681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946068, 28.649967, 26.597446>,  <32.788185, 28.801685, 26.695705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946068, 28.649967, 26.597446>,  <33.209206, 28.397104, 26.433681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946068, 28.649967, 26.597446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068780, -0.591750, 0.803182,
		0.750008, 0.500208, 0.432759,
		-0.657843, 0.632158, 0.409413,
		32.748714, 28.839615, 26.720270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472122, 28.587824, 27.161764>,  <33.209206, 28.397104, 26.433681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472122, 28.587824, 27.161764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078869, 28.659874, 27.149048>,  <32.842918, 28.703104, 27.141418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078869, 28.659874, 27.149048>,  <33.472122, 28.587824, 27.161764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078869, 28.659874, 27.149048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135271, -0.599025, 0.789221,
		0.123113, 0.780208, 0.613285,
		-0.983130, 0.180123, -0.031792,
		32.783928, 28.713911, 27.139511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307903, 28.633665, 27.883966>,  <33.472122, 28.587824, 27.161764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307903, 28.633665, 27.883966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972645, 28.551231, 27.681961>,  <32.771488, 28.501770, 27.560757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972645, 28.551231, 27.681961>,  <33.307903, 28.633665, 27.883966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972645, 28.551231, 27.681961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310612, -0.580748, 0.752497,
		-0.448365, 0.787566, 0.422740,
		-0.838146, -0.206085, -0.505014,
		32.721199, 28.489407, 27.530457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689953, 28.743778, 28.303886>,  <33.307903, 28.633665, 27.883966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689953, 28.743778, 28.303886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573299, 28.489407, 28.018078>,  <32.503307, 28.336784, 27.846592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573299, 28.489407, 28.018078>,  <32.689953, 28.743778, 28.303886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573299, 28.489407, 28.018078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605950, -0.455166, 0.652418,
		-0.740119, 0.623231, -0.252600,
		-0.291632, -0.635930, -0.714524,
		32.485809, 28.298628, 27.803720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065754, 28.680849, 28.528704>,  <32.689953, 28.743778, 28.303886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065754, 28.680849, 28.528704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121780, 28.383663, 28.266899>,  <32.155396, 28.205351, 28.109816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121780, 28.383663, 28.266899>,  <32.065754, 28.680849, 28.528704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121780, 28.383663, 28.266899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647820, -0.568672, 0.506894,
		-0.748807, 0.353010, -0.560956,
		0.140062, -0.742964, -0.654513,
		32.163799, 28.160774, 28.070545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463966, 28.319166, 28.531975>,  <32.065754, 28.680849, 28.528704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463966, 28.319166, 28.531975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708710, 28.041397, 28.380497>,  <31.855556, 27.874737, 28.289610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708710, 28.041397, 28.380497>,  <31.463966, 28.319166, 28.531975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708710, 28.041397, 28.380497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434746, -0.695219, 0.572421,
		-0.660775, -0.185607, -0.727274,
		0.611860, -0.694421, -0.378692,
		31.892267, 27.833071, 28.266890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079813, 27.811874, 28.172340>,  <31.463966, 28.319166, 28.531975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079813, 27.811874, 28.172340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423317, 27.634892, 28.275696>,  <31.629419, 27.528702, 28.337709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423317, 27.634892, 28.275696>,  <31.079813, 27.811874, 28.172340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423317, 27.634892, 28.275696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498514, -0.604975, 0.620877,
		-0.118392, -0.661995, -0.740099,
		0.858759, -0.442457, 0.258390,
		31.680944, 27.502155, 28.353212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898911, 27.132677, 28.174910>,  <31.079813, 27.811874, 28.172340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898911, 27.132677, 28.174910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242683, 27.140453, 28.379261>,  <31.448948, 27.145119, 28.501873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242683, 27.140453, 28.379261>,  <30.898911, 27.132677, 28.174910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242683, 27.140453, 28.379261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355455, -0.695507, 0.624437,
		0.367461, -0.718256, -0.590831,
		0.859432, 0.019443, 0.510879,
		31.500513, 27.146286, 28.532524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078442, 26.454502, 28.266022>,  <30.898911, 27.132677, 28.174910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078442, 26.454502, 28.266022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260952, 26.668083, 28.550755>,  <31.370459, 26.796232, 28.721594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260952, 26.668083, 28.550755>,  <31.078442, 26.454502, 28.266022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260952, 26.668083, 28.550755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233964, -0.699823, 0.674914,
		0.858530, -0.474490, -0.194385,
		0.456275, 0.533955, 0.711832,
		31.397835, 26.828270, 28.764305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499136, 26.033598, 28.587214>,  <31.078442, 26.454502, 28.266022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499136, 26.033598, 28.587214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470053, 26.296852, 28.886967>,  <31.452602, 26.454803, 29.066818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470053, 26.296852, 28.886967>,  <31.499136, 26.033598, 28.587214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470053, 26.296852, 28.886967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092859, -0.752574, 0.651928,
		0.993021, -0.022188, 0.115831,
		-0.072707, 0.658134, 0.749382,
		31.448240, 26.494293, 29.111782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687969, 25.627008, 29.144892>,  <31.499136, 26.033598, 28.587214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687969, 25.627008, 29.144892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538687, 25.949257, 29.328930>,  <31.449118, 26.142607, 29.439352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538687, 25.949257, 29.328930>,  <31.687969, 25.627008, 29.144892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538687, 25.949257, 29.328930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159698, -0.544310, 0.823543,
		0.913899, 0.233877, 0.331798,
		-0.373208, 0.805623, 0.460095,
		31.426723, 26.190945, 29.466959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069481, 25.746029, 29.768063>,  <31.687969, 25.627008, 29.144892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069481, 25.746029, 29.768063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718384, 25.928646, 29.826218>,  <31.507727, 26.038218, 29.861111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718384, 25.928646, 29.826218>,  <32.069481, 25.746029, 29.768063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718384, 25.928646, 29.826218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110605, -0.488313, 0.865631,
		0.466195, 0.743719, 0.479109,
		-0.877741, 0.456544, 0.145390,
		31.455061, 26.065609, 29.869835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022865, 26.038874, 30.544992>,  <32.069481, 25.746029, 29.768063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022865, 26.038874, 30.544992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652657, 25.996510, 30.399563>,  <31.430531, 25.971090, 30.312305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652657, 25.996510, 30.399563>,  <32.022865, 26.038874, 30.544992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652657, 25.996510, 30.399563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300506, -0.378809, 0.875328,
		-0.230433, 0.919394, 0.318770,
		-0.925525, -0.105912, -0.363574,
		31.375000, 25.964735, 30.290491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543024, 26.244638, 31.080616>,  <32.022865, 26.038874, 30.544992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543024, 26.244638, 31.080616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348858, 26.007839, 30.823273>,  <31.232359, 25.865761, 30.668867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348858, 26.007839, 30.823273>,  <31.543024, 26.244638, 31.080616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348858, 26.007839, 30.823273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256816, -0.606857, 0.752177,
		-0.835713, 0.530344, 0.142544,
		-0.485416, -0.591997, -0.643359,
		31.203234, 25.830240, 30.630264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914959, 26.180216, 31.309057>,  <31.543024, 26.244638, 31.080616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914959, 26.180216, 31.309057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867916, 25.867901, 31.063606>,  <30.839689, 25.680511, 30.916336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867916, 25.867901, 31.063606>,  <30.914959, 26.180216, 31.309057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867916, 25.867901, 31.063606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679951, -0.387037, 0.622791,
		-0.723764, 0.490482, -0.485379,
		-0.117608, -0.780788, -0.613628,
		30.832634, 25.633665, 30.879519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155893, 26.135340, 31.234003>,  <30.914959, 26.180216, 31.309057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155893, 26.135340, 31.234003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306326, 25.773941, 31.151775>,  <30.396585, 25.557102, 31.102438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306326, 25.773941, 31.151775>,  <30.155893, 26.135340, 31.234003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306326, 25.773941, 31.151775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760663, -0.427728, 0.488303,
		-0.529107, -0.027271, -0.848116,
		0.376080, -0.903496, -0.205570,
		30.419149, 25.502892, 31.090105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561234, 25.660576, 31.024588>,  <30.155893, 26.135340, 31.234003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561234, 25.660576, 31.024588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866732, 25.430996, 31.142754>,  <30.050032, 25.293247, 31.213654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866732, 25.430996, 31.142754>,  <29.561234, 25.660576, 31.024588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866732, 25.430996, 31.142754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624455, -0.540971, 0.563388,
		-0.163546, -0.614760, -0.771572,
		0.763746, -0.573952, 0.295416,
		30.095856, 25.258810, 31.231379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387072, 24.997545, 30.780918>,  <29.561234, 25.660576, 31.024588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387072, 24.997545, 30.780918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640877, 24.996082, 31.090080>,  <29.793159, 24.995205, 31.275578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640877, 24.996082, 31.090080>,  <29.387072, 24.997545, 30.780918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640877, 24.996082, 31.090080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472507, -0.793199, 0.384152,
		0.611662, -0.608952, -0.505022,
		0.634513, -0.003656, 0.772903,
		29.831230, 24.994986, 31.321951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475533, 24.258261, 31.056799>,  <29.387072, 24.997545, 30.780918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475533, 24.258261, 31.056799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637312, 24.472618, 31.353241>,  <29.734381, 24.601233, 31.531107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637312, 24.472618, 31.353241>,  <29.475533, 24.258261, 31.056799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637312, 24.472618, 31.353241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556920, -0.498456, 0.664366,
		0.725438, -0.681440, 0.096849,
		0.404450, 0.535894, 0.741106,
		29.758648, 24.633387, 31.575573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543406, 23.750782, 31.656050>,  <29.475533, 24.258261, 31.056799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543406, 23.750782, 31.656050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579754, 24.120567, 31.804165>,  <29.601562, 24.342438, 31.893034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579754, 24.120567, 31.804165>,  <29.543406, 23.750782, 31.656050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579754, 24.120567, 31.804165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489780, -0.282261, 0.824891,
		0.867097, -0.256318, 0.427134,
		0.090871, 0.924462, 0.370287,
		29.607016, 24.397905, 31.915251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795078, 23.660465, 32.320919>,  <29.543406, 23.750782, 31.656050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795078, 23.660465, 32.320919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617285, 24.018757, 32.316757>,  <29.510609, 24.233732, 32.314262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617285, 24.018757, 32.316757>,  <29.795078, 23.660465, 32.320919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617285, 24.018757, 32.316757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499832, -0.238359, 0.832678,
		0.743373, 0.375311, 0.553659,
		-0.444483, 0.895727, -0.010403,
		29.483940, 24.287476, 32.313637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916508, 23.937632, 33.060471>,  <29.795078, 23.660465, 32.320919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916508, 23.937632, 33.060471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595177, 24.109802, 32.895840>,  <29.402378, 24.213104, 32.797062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595177, 24.109802, 32.895840>,  <29.916508, 23.937632, 33.060471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595177, 24.109802, 32.895840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470207, -0.034300, 0.881890,
		0.365470, 0.901975, 0.229943,
		-0.803329, 0.430425, -0.411579,
		29.354177, 24.238930, 32.772366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693737, 24.165667, 33.640636>,  <29.916508, 23.937632, 33.060471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693737, 24.165667, 33.640636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380854, 24.235878, 33.401524>,  <29.193123, 24.278006, 33.258057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380854, 24.235878, 33.401524>,  <29.693737, 24.165667, 33.640636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380854, 24.235878, 33.401524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576013, 0.161860, 0.801256,
		0.237399, 0.971077, -0.025502,
		-0.782209, 0.175528, -0.597778,
		29.146191, 24.288536, 33.222191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308411, 24.687077, 34.064892>,  <29.693737, 24.165667, 33.640636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308411, 24.687077, 34.064892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059374, 24.526165, 33.796398>,  <28.909952, 24.429619, 33.635303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059374, 24.526165, 33.796398>,  <29.308411, 24.687077, 34.064892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059374, 24.526165, 33.796398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722773, -0.033185, 0.690288,
		-0.299962, 0.914916, -0.270094,
		-0.622593, -0.402277, -0.671232,
		28.872597, 24.405481, 33.595028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773958, 25.217127, 34.053986>,  <29.308411, 24.687077, 34.064892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773958, 25.217127, 34.053986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675102, 24.843441, 33.951096>,  <28.615789, 24.619230, 33.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675102, 24.843441, 33.951096>,  <28.773958, 25.217127, 34.053986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675102, 24.843441, 33.951096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560861, -0.078558, 0.824174,
		-0.790162, 0.347955, -0.504550,
		-0.247139, -0.934214, -0.257229,
		28.600960, 24.563177, 33.873928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091480, 25.176788, 34.272392>,  <28.773958, 25.217127, 34.053986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091480, 25.176788, 34.272392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186247, 24.794064, 34.205002>,  <28.243107, 24.564428, 34.164566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186247, 24.794064, 34.205002>,  <28.091480, 25.176788, 34.272392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186247, 24.794064, 34.205002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641740, -0.284321, 0.712272,
		-0.729412, -0.060627, -0.681383,
		0.236915, -0.956810, -0.168480,
		28.257320, 24.507021, 34.154457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522266, 24.802210, 34.324680>,  <28.091480, 25.176788, 34.272392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522266, 24.802210, 34.324680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797024, 24.515022, 34.369751>,  <27.961880, 24.342710, 34.396793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797024, 24.515022, 34.369751>,  <27.522266, 24.802210, 34.324680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797024, 24.515022, 34.369751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624823, -0.504229, 0.596112,
		-0.371173, -0.479871, -0.794955,
		0.686896, -0.717967, 0.112679,
		28.003092, 24.299631, 34.403553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135191, 24.110435, 34.352097>,  <27.522266, 24.802210, 34.324680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135191, 24.110435, 34.352097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491541, 24.035599, 34.517670>,  <27.705351, 23.990696, 34.617012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491541, 24.035599, 34.517670>,  <27.135191, 24.110435, 34.352097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491541, 24.035599, 34.517670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440715, -0.576758, 0.687837,
		0.110048, -0.795202, -0.596274,
		0.890876, -0.187092, 0.413929,
		27.758804, 23.979471, 34.641850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160191, 23.358793, 34.238243>,  <27.135191, 24.110435, 34.352097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160191, 23.358793, 34.238243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366779, 23.500839, 34.549923>,  <27.490732, 23.586067, 34.736931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366779, 23.500839, 34.549923>,  <27.160191, 23.358793, 34.238243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366779, 23.500839, 34.549923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516521, -0.596576, 0.614250,
		0.682980, -0.719716, -0.124691,
		0.516473, 0.355115, 0.779198,
		27.521721, 23.607374, 34.783684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276129, 22.817598, 34.666092>,  <27.160191, 23.358793, 34.238243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276129, 22.817598, 34.666092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302752, 23.119919, 34.926659>,  <27.318726, 23.301311, 35.082996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302752, 23.119919, 34.926659>,  <27.276129, 22.817598, 34.666092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302752, 23.119919, 34.926659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599304, -0.491695, 0.631721,
		0.797750, -0.432439, 0.420228,
		0.066556, 0.755799, 0.651412,
		27.322718, 23.346659, 35.122082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419348, 22.712294, 35.480320>,  <27.276129, 22.817598, 34.666092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419348, 22.712294, 35.480320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207346, 23.047886, 35.430996>,  <27.080145, 23.249241, 35.401402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207346, 23.047886, 35.430996>,  <27.419348, 22.712294, 35.480320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207346, 23.047886, 35.430996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811710, -0.459850, 0.360091,
		0.245404, 0.290945, 0.924731,
		-0.530005, 0.838981, -0.123314,
		27.048344, 23.299580, 35.394001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948668, 22.851109, 36.073452>,  <27.419348, 22.712294, 35.480320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948668, 22.851109, 36.073452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784853, 23.033215, 35.757221>,  <26.686563, 23.142477, 35.567482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784853, 23.033215, 35.757221>,  <26.948668, 22.851109, 36.073452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784853, 23.033215, 35.757221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867661, -0.462107, 0.183359,
		-0.281855, 0.761046, 0.584266,
		-0.409538, 0.455264, -0.790577,
		26.661991, 23.169794, 35.520046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517206, 23.324780, 36.330566>,  <26.948668, 22.851109, 36.073452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517206, 23.324780, 36.330566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414881, 23.198174, 35.965191>,  <26.353485, 23.122210, 35.745964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414881, 23.198174, 35.965191>,  <26.517206, 23.324780, 36.330566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414881, 23.198174, 35.965191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793427, -0.471078, 0.385434,
		-0.552298, 0.823350, -0.130622,
		-0.255814, -0.316513, -0.913443,
		26.338137, 23.103220, 35.691158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829506, 23.607784, 36.062634>,  <26.517206, 23.324780, 36.330566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829506, 23.607784, 36.062634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910297, 23.250637, 35.901638>,  <25.958773, 23.036348, 35.805042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910297, 23.250637, 35.901638>,  <25.829506, 23.607784, 36.062634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910297, 23.250637, 35.901638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697891, -0.419535, 0.580465,
		-0.687134, 0.163648, -0.707860,
		0.201980, -0.892866, -0.402486,
		25.970892, 22.982777, 35.780891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512539, 23.172995, 36.475628>,  <25.829506, 23.607784, 36.062634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512539, 23.172995, 36.475628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225210, 23.337021, 36.700432>,  <25.052813, 23.435436, 36.835316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225210, 23.337021, 36.700432>,  <25.512539, 23.172995, 36.475628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225210, 23.337021, 36.700432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663290, 0.159938, 0.731072,
		0.209899, 0.897924, -0.386879,
		-0.718324, 0.410064, 0.562013,
		25.009712, 23.460041, 36.869034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727739, 23.898743, 36.924595>,  <25.512539, 23.172995, 36.475628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727739, 23.898743, 36.924595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431307, 23.704624, 37.110191>,  <25.253447, 23.588154, 37.221550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431307, 23.704624, 37.110191>,  <25.727739, 23.898743, 36.924595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431307, 23.704624, 37.110191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514903, 0.032723, 0.856624,
		-0.430898, 0.873738, 0.225629,
		-0.741082, -0.485294, 0.463991,
		25.208982, 23.559036, 37.249390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982672, 23.238560, 37.132576>,  <25.727739, 23.898743, 36.924595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982672, 23.238560, 37.132576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310528, 23.043171, 37.252300>,  <26.507242, 22.925938, 37.324135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310528, 23.043171, 37.252300>,  <25.982672, 23.238560, 37.132576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310528, 23.043171, 37.252300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465282, 0.872423, 0.149638,
		-0.334219, 0.016614, 0.942349,
		0.819641, -0.488470, 0.299310,
		26.556419, 22.896629, 37.342094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531910, 23.732019, 37.467609>,  <25.982672, 23.238560, 37.132576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531910, 23.732019, 37.467609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927210, 23.751160, 37.525669>,  <27.164391, 23.762644, 37.560505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927210, 23.751160, 37.525669>,  <26.531910, 23.732019, 37.467609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927210, 23.751160, 37.525669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038513, 0.841110, -0.539490,
		-0.147903, 0.538742, 0.829386,
		0.988252, 0.047850, 0.145151,
		27.223686, 23.765514, 37.569214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802990, 24.427290, 37.622578>,  <26.531910, 23.732019, 37.467609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802990, 24.427290, 37.622578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127357, 24.233147, 37.491837>,  <27.321978, 24.116661, 37.413391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127357, 24.233147, 37.491837>,  <26.802990, 24.427290, 37.622578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127357, 24.233147, 37.491837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258351, 0.798153, -0.544248,
		0.525036, 0.356898, 0.772632,
		0.810920, -0.485360, -0.326854,
		27.370634, 24.087538, 37.393780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451651, 24.570730, 37.954266>,  <26.802990, 24.427290, 37.622578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451651, 24.570730, 37.954266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460354, 24.473866, 37.566269>,  <27.465576, 24.415747, 37.333469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460354, 24.473866, 37.566269>,  <27.451651, 24.570730, 37.954266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460354, 24.473866, 37.566269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264985, 0.936919, -0.227959,
		0.964007, -0.252074, 0.084553,
		0.021757, -0.242160, -0.969993,
		27.466881, 24.401218, 37.275272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000820, 25.038162, 37.675110>,  <27.451651, 24.570730, 37.954266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000820, 25.038162, 37.675110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802940, 24.911934, 37.351212>,  <27.684212, 24.836197, 37.156872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802940, 24.911934, 37.351212>,  <28.000820, 25.038162, 37.675110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802940, 24.911934, 37.351212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304063, 0.810007, -0.501432,
		0.814146, -0.494266, -0.304742,
		-0.494684, -0.315578, -0.809752,
		27.654531, 24.817263, 37.108288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407608, 25.085285, 37.077835>,  <28.000820, 25.038162, 37.675110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407608, 25.085285, 37.077835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058620, 25.084190, 36.882370>,  <27.849228, 25.083534, 36.765091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058620, 25.084190, 36.882370>,  <28.407608, 25.085285, 37.077835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058620, 25.084190, 36.882370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315979, 0.759644, -0.568417,
		0.372762, -0.650333, -0.661902,
		-0.872471, -0.002737, -0.488659,
		27.796879, 25.083370, 36.735771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540455, 25.091839, 36.400177>,  <28.407608, 25.085285, 37.077835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540455, 25.091839, 36.400177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176802, 25.255135, 36.433208>,  <27.958611, 25.353111, 36.453026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176802, 25.255135, 36.433208>,  <28.540455, 25.091839, 36.400177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176802, 25.255135, 36.433208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283674, 0.752068, -0.594914,
		-0.304968, -0.517432, -0.799537,
		-0.909133, 0.408238, 0.082575,
		27.904062, 25.377605, 36.457981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202124, 25.201656, 35.634583>,  <28.540455, 25.091839, 36.400177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202124, 25.201656, 35.634583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003895, 25.448666, 35.878902>,  <27.884958, 25.596870, 36.025494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003895, 25.448666, 35.878902>,  <28.202124, 25.201656, 35.634583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003895, 25.448666, 35.878902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247770, 0.774513, -0.582014,
		-0.832479, -0.137091, -0.536829,
		-0.495570, 0.617524, 0.610798,
		27.855225, 25.633923, 36.062141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730375, 25.670660, 35.202950>,  <28.202124, 25.201656, 35.634583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730375, 25.670660, 35.202950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735613, 25.863361, 35.553432>,  <27.738756, 25.978981, 35.763721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735613, 25.863361, 35.553432>,  <27.730375, 25.670660, 35.202950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735613, 25.863361, 35.553432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136387, 0.867235, -0.478856,
		-0.990569, 0.125774, -0.054350,
		0.013094, 0.481752, 0.876210,
		27.739540, 26.007887, 35.816296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237720, 26.229956, 35.162041>,  <27.730375, 25.670660, 35.202950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237720, 26.229956, 35.162041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514950, 26.328995, 35.432846>,  <27.681288, 26.388418, 35.595329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514950, 26.328995, 35.432846>,  <27.237720, 26.229956, 35.162041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514950, 26.328995, 35.432846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070091, 0.911567, -0.405134,
		-0.717453, 0.328239, 0.614427,
		0.693072, 0.247599, 0.677013,
		27.722872, 26.403275, 35.635948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961658, 26.742781, 35.520966>,  <27.237720, 26.229956, 35.162041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961658, 26.742781, 35.520966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359900, 26.767021, 35.549549>,  <27.598845, 26.781567, 35.566700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359900, 26.767021, 35.549549>,  <26.961658, 26.742781, 35.520966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359900, 26.767021, 35.549549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034259, 0.945301, -0.324397,
		-0.087207, 0.320522, 0.943218,
		0.995601, 0.060603, 0.071456,
		27.658581, 26.785202, 35.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141417, 27.572002, 35.496304>,  <26.961658, 26.742781, 35.520966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141417, 27.572002, 35.496304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502415, 27.405567, 35.451820>,  <27.719013, 27.305706, 35.425129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502415, 27.405567, 35.451820>,  <27.141417, 27.572002, 35.496304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502415, 27.405567, 35.451820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299936, 0.792493, -0.531031,
		0.309091, 0.445898, 0.840023,
		0.902497, -0.416090, -0.111212,
		27.773165, 27.280741, 35.418457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538759, 28.142363, 35.528961>,  <27.141417, 27.572002, 35.496304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538759, 28.142363, 35.528961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775606, 27.862152, 35.369633>,  <27.917715, 27.694027, 35.274036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775606, 27.862152, 35.369633>,  <27.538759, 28.142363, 35.528961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775606, 27.862152, 35.369633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341966, 0.666003, -0.662948,
		0.729694, 0.256331, 0.633909,
		0.592119, -0.700525, -0.398322,
		27.953241, 27.651995, 35.250137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076284, 28.523890, 35.282970>,  <27.538759, 28.142363, 35.528961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076284, 28.523890, 35.282970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099367, 28.177410, 35.084427>,  <28.113216, 27.969522, 34.965302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099367, 28.177410, 35.084427>,  <28.076284, 28.523890, 35.282970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099367, 28.177410, 35.084427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471956, 0.461790, -0.751004,
		0.879732, -0.190922, 0.435455,
		0.057706, -0.866198, -0.496358,
		28.116678, 27.917551, 34.935520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812639, 28.420597, 34.928169>,  <28.076284, 28.523890, 35.282970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812639, 28.420597, 34.928169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591721, 28.164562, 34.714531>,  <28.459169, 28.010941, 34.586349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591721, 28.164562, 34.714531>,  <28.812639, 28.420597, 34.928169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591721, 28.164562, 34.714531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560650, 0.188952, -0.806207,
		0.616962, -0.744704, 0.254508,
		-0.552296, -0.640088, -0.534094,
		28.426031, 27.972536, 34.554302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239735, 28.064573, 34.461071>,  <28.812639, 28.420597, 34.928169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239735, 28.064573, 34.461071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881210, 27.995461, 34.297722>,  <28.666096, 27.953993, 34.199711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881210, 27.995461, 34.297722>,  <29.239735, 28.064573, 34.461071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881210, 27.995461, 34.297722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395093, 0.106916, -0.912398,
		0.201309, -0.979140, -0.027565,
		-0.896313, -0.172784, -0.408374,
		28.612316, 27.943626, 34.175209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365595, 27.652210, 33.972958>,  <29.239735, 28.064573, 34.461071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365595, 27.652210, 33.972958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017637, 27.819954, 33.869095>,  <28.808863, 27.920599, 33.806778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017637, 27.819954, 33.869095>,  <29.365595, 27.652210, 33.972958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017637, 27.819954, 33.869095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371885, 0.211814, -0.903790,
		-0.324013, -0.882765, -0.340210,
		-0.869895, 0.419358, -0.259657,
		28.756668, 27.945761, 33.791199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284613, 27.360968, 33.377060>,  <29.365595, 27.652210, 33.972958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284613, 27.360968, 33.377060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066101, 27.693699, 33.416340>,  <28.934994, 27.893337, 33.439907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066101, 27.693699, 33.416340>,  <29.284613, 27.360968, 33.377060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066101, 27.693699, 33.416340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362204, 0.340305, -0.867756,
		-0.755240, -0.438470, -0.487193,
		-0.546279, 0.831827, 0.098197,
		28.902218, 27.943247, 33.445801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113586, 27.474817, 32.684528>,  <29.284613, 27.360968, 33.377060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113586, 27.474817, 32.684528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073471, 27.820549, 32.881657>,  <29.049402, 28.027988, 32.999935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073471, 27.820549, 32.881657>,  <29.113586, 27.474817, 32.684528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073471, 27.820549, 32.881657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317589, 0.497218, -0.807411,
		-0.942910, 0.075540, -0.324369,
		-0.100290, 0.864331, 0.492822,
		29.043385, 28.079849, 33.029503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595762, 27.957546, 32.358883>,  <29.113586, 27.474817, 32.684528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595762, 27.957546, 32.358883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886843, 28.153255, 32.551159>,  <29.061491, 28.270681, 32.666523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886843, 28.153255, 32.551159>,  <28.595762, 27.957546, 32.358883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886843, 28.153255, 32.551159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192506, 0.526962, -0.827800,
		-0.658326, 0.694926, 0.289283,
		0.727701, 0.489273, 0.480690,
		29.105152, 28.300037, 32.695366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741117, 28.623777, 31.917315>,  <28.595762, 27.957546, 32.358883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741117, 28.623777, 31.917315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022829, 28.636536, 32.200996>,  <29.191856, 28.644190, 32.371204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022829, 28.636536, 32.200996>,  <28.741117, 28.623777, 31.917315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022829, 28.636536, 32.200996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665010, 0.320044, -0.674784,
		-0.248499, 0.946866, 0.204190,
		0.704279, 0.031894, 0.709206,
		29.234114, 28.646105, 32.413757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018295, 29.328125, 31.997120>,  <28.741117, 28.623777, 31.917315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018295, 29.328125, 31.997120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304119, 29.095432, 32.152550>,  <29.475615, 28.955816, 32.245808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304119, 29.095432, 32.152550>,  <29.018295, 29.328125, 31.997120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304119, 29.095432, 32.152550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643475, 0.328611, -0.691343,
		0.274486, 0.744045, 0.609142,
		0.714561, -0.581732, 0.388575,
		29.518488, 28.920914, 32.269123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568266, 29.808514, 32.196239>,  <29.018295, 29.328125, 31.997120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568266, 29.808514, 32.196239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753244, 29.455269, 32.164608>,  <29.864231, 29.243322, 32.145630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753244, 29.455269, 32.164608>,  <29.568266, 29.808514, 32.196239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753244, 29.455269, 32.164608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786867, 0.449873, -0.422440,
		0.408637, 0.133134, 0.902935,
		0.462447, -0.883114, -0.079076,
		29.891979, 29.190334, 32.140884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270224, 29.934397, 32.305264>,  <29.568266, 29.808514, 32.196239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270224, 29.934397, 32.305264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268137, 29.571384, 32.137283>,  <30.266886, 29.353577, 32.036495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268137, 29.571384, 32.137283>,  <30.270224, 29.934397, 32.305264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268137, 29.571384, 32.137283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847021, 0.219216, -0.484252,
		0.531534, -0.358234, 0.767554,
		-0.005215, -0.907531, -0.419953,
		30.266573, 29.299126, 32.011299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975409, 29.707825, 32.443737>,  <30.270224, 29.934397, 32.305264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975409, 29.707825, 32.443737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825798, 29.483139, 32.148556>,  <30.736031, 29.348328, 31.971445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825798, 29.483139, 32.148556>,  <30.975409, 29.707825, 32.443737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825798, 29.483139, 32.148556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754241, 0.278777, -0.594478,
		0.539651, -0.778950, 0.319396,
		-0.374028, -0.561713, -0.737958,
		30.713589, 29.314625, 31.927168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473417, 29.250938, 32.197689>,  <30.975409, 29.707825, 32.443737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473417, 29.250938, 32.197689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246691, 29.247311, 31.868172>,  <31.110655, 29.245134, 31.670462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246691, 29.247311, 31.868172>,  <31.473417, 29.250938, 32.197689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246691, 29.247311, 31.868172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735920, 0.443911, -0.511239,
		0.370329, -0.896025, -0.244942,
		-0.566815, -0.009069, -0.823796,
		31.076647, 29.244591, 31.621033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917723, 29.132397, 31.567572>,  <31.473417, 29.250938, 32.197689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917723, 29.132397, 31.567572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572052, 29.261791, 31.413399>,  <31.364651, 29.339428, 31.320894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572052, 29.261791, 31.413399>,  <31.917723, 29.132397, 31.567572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572052, 29.261791, 31.413399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503141, 0.544551, -0.671054,
		-0.007190, -0.773835, -0.633347,
		-0.864175, 0.323488, -0.385432,
		31.312799, 29.358837, 31.297770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905573, 28.954462, 30.837944>,  <31.917723, 29.132397, 31.567572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905573, 28.954462, 30.837944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646500, 29.257244, 30.872639>,  <31.491056, 29.438913, 30.893456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646500, 29.257244, 30.872639>,  <31.905573, 28.954462, 30.837944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646500, 29.257244, 30.872639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518076, 0.521014, -0.678338,
		-0.558663, -0.394412, -0.729613,
		-0.647683, 0.756957, 0.086736,
		31.452194, 29.484331, 30.898659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752151, 29.134428, 30.155455>,  <31.905573, 28.954462, 30.837944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752151, 29.134428, 30.155455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651539, 29.448750, 30.381462>,  <31.591171, 29.637342, 30.517067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651539, 29.448750, 30.381462>,  <31.752151, 29.134428, 30.155455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651539, 29.448750, 30.381462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452341, 0.611550, -0.649149,
		-0.855640, 0.092300, -0.509275,
		-0.251531, 0.785804, 0.565018,
		31.576080, 29.684490, 30.550968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545214, 29.545053, 29.666313>,  <31.752151, 29.134428, 30.155455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545214, 29.545053, 29.666313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610222, 29.803371, 29.964718>,  <31.649227, 29.958363, 30.143761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610222, 29.803371, 29.964718>,  <31.545214, 29.545053, 29.666313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610222, 29.803371, 29.964718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564105, 0.559508, -0.607237,
		-0.809551, 0.519517, -0.273366,
		0.162519, 0.645796, 0.746013,
		31.658978, 29.997110, 30.188522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547726, 30.118254, 29.288998>,  <31.545214, 29.545053, 29.666313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547726, 30.118254, 29.288998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704409, 30.231850, 29.639065>,  <31.798418, 30.300007, 29.849104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704409, 30.231850, 29.639065>,  <31.547726, 30.118254, 29.288998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704409, 30.231850, 29.639065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607338, 0.634708, -0.477794,
		-0.691163, 0.718676, 0.076141,
		0.391707, 0.283990, 0.875166,
		31.821920, 30.317047, 29.901615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612974, 30.884995, 29.291317>,  <31.547726, 30.118254, 29.288998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612974, 30.884995, 29.291317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885637, 30.745464, 29.548584>,  <32.049236, 30.661747, 29.702944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885637, 30.745464, 29.548584>,  <31.612974, 30.884995, 29.291317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885637, 30.745464, 29.548584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683647, 0.616871, -0.389997,
		-0.260711, 0.705544, 0.658967,
		0.681657, -0.348824, 0.643168,
		32.090134, 30.640818, 29.741535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881670, 31.448147, 29.657953>,  <31.612974, 30.884995, 29.291317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881670, 31.448147, 29.657953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163040, 31.164352, 29.675030>,  <32.331863, 30.994076, 29.685276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163040, 31.164352, 29.675030>,  <31.881670, 31.448147, 29.657953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163040, 31.164352, 29.675030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672241, 0.644585, -0.364146,
		0.230838, 0.284848, 0.930363,
		0.703425, -0.709486, 0.042692,
		32.374069, 30.951506, 29.687838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424347, 31.752367, 30.035389>,  <31.881670, 31.448147, 29.657953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424347, 31.752367, 30.035389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575317, 31.461628, 29.805870>,  <32.665901, 31.287186, 29.668159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575317, 31.461628, 29.805870>,  <32.424347, 31.752367, 30.035389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575317, 31.461628, 29.805870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705996, 0.626826, -0.329634,
		0.599264, -0.280686, 0.749732,
		0.377428, -0.726846, -0.573798,
		32.688545, 31.243574, 29.633730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191189, 31.866699, 30.012556>,  <32.424347, 31.752367, 30.035389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191189, 31.866699, 30.012556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116222, 31.640617, 29.691204>,  <33.071243, 31.504969, 29.498394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116222, 31.640617, 29.691204>,  <33.191189, 31.866699, 30.012556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116222, 31.640617, 29.691204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708805, 0.488413, -0.508968,
		0.680053, -0.664826, 0.309086,
		-0.187413, -0.565207, -0.803379,
		33.059998, 31.471056, 29.450190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875225, 31.799831, 29.776011>,  <33.191189, 31.866699, 30.012556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875225, 31.799831, 29.776011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618519, 31.705811, 29.484013>,  <33.464497, 31.649397, 29.308813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618519, 31.705811, 29.484013>,  <33.875225, 31.799831, 29.776011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618519, 31.705811, 29.484013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618487, 0.404184, -0.673877,
		0.453451, -0.883959, -0.114009,
		-0.641760, -0.235057, -0.729995,
		33.425991, 31.635294, 29.265015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333958, 31.423670, 29.325317>,  <33.875225, 31.799831, 29.776011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333958, 31.423670, 29.325317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003372, 31.552517, 29.140621>,  <33.805023, 31.629826, 29.029804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003372, 31.552517, 29.140621>,  <34.333958, 31.423670, 29.325317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003372, 31.552517, 29.140621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562971, 0.465119, -0.683175,
		-0.005300, -0.824563, -0.565746,
		-0.826460, 0.322119, -0.461740,
		33.755436, 31.649153, 29.002100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454952, 31.325464, 28.582521>,  <34.333958, 31.423670, 29.325317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454952, 31.325464, 28.582521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155121, 31.589294, 28.604786>,  <33.975224, 31.747593, 28.618145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155121, 31.589294, 28.604786>,  <34.454952, 31.325464, 28.582521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155121, 31.589294, 28.604786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437903, 0.557194, -0.705532,
		-0.496365, -0.504475, -0.706489,
		-0.749575, 0.659575, 0.055661,
		33.930248, 31.787167, 28.621485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298092, 31.425909, 27.904718>,  <34.454952, 31.325464, 28.582521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298092, 31.425909, 27.904718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116013, 31.743484, 28.065945>,  <34.006767, 31.934029, 28.162680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116013, 31.743484, 28.065945>,  <34.298092, 31.425909, 27.904718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116013, 31.743484, 28.065945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380362, 0.582688, -0.718192,
		-0.805061, -0.173607, -0.567220,
		-0.455195, 0.793937, 0.403065,
		33.979454, 31.981665, 28.186865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886410, 31.713343, 27.384300>,  <34.298092, 31.425909, 27.904718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886410, 31.713343, 27.384300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986080, 31.988605, 27.656872>,  <34.045883, 32.153763, 27.820415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986080, 31.988605, 27.656872>,  <33.886410, 31.713343, 27.384300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986080, 31.988605, 27.656872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361418, 0.586715, -0.724667,
		-0.898491, 0.426853, -0.102516,
		0.249179, 0.688158, 0.681431,
		34.060833, 32.195053, 27.861301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670494, 32.375370, 27.143808>,  <33.886410, 31.713343, 27.384300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670494, 32.375370, 27.143808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957596, 32.467682, 27.406586>,  <34.129856, 32.523067, 27.564251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957596, 32.467682, 27.406586>,  <33.670494, 32.375370, 27.143808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957596, 32.467682, 27.406586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488229, 0.505884, -0.711135,
		-0.496451, 0.831157, 0.250427,
		0.717752, 0.230778, 0.656942,
		34.172920, 32.536915, 27.603668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812080, 33.110355, 27.014071>,  <33.670494, 32.375370, 27.143808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812080, 33.110355, 27.014071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114346, 32.992695, 27.248150>,  <34.295704, 32.922100, 27.388597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114346, 32.992695, 27.248150>,  <33.812080, 33.110355, 27.014071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114346, 32.992695, 27.248150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646208, 0.480457, -0.592939,
		-0.106751, 0.826219, 0.553142,
		0.755658, -0.294148, 0.585199,
		34.341042, 32.904449, 27.423710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102993, 33.753326, 27.202982>,  <33.812080, 33.110355, 27.014071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102993, 33.753326, 27.202982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339886, 33.431110, 27.210606>,  <34.482021, 33.237782, 27.215179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339886, 33.431110, 27.210606>,  <34.102993, 33.753326, 27.202982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339886, 33.431110, 27.210606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713207, 0.513050, -0.477614,
		0.374959, 0.296452, 0.878363,
		0.592234, -0.805541, 0.019059,
		34.517555, 33.189449, 27.216324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745865, 34.058559, 27.248775>,  <34.102993, 33.753326, 27.202982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745865, 34.058559, 27.248775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822971, 33.696606, 27.096973>,  <34.869236, 33.479431, 27.005892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822971, 33.696606, 27.096973>,  <34.745865, 34.058559, 27.248775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822971, 33.696606, 27.096973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789555, 0.372676, -0.487561,
		0.582619, -0.205655, 0.786296,
		0.192764, -0.904886, -0.379504,
		34.880802, 33.425140, 26.983122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339142, 33.986298, 27.888279>,  <34.745865, 34.058559, 27.248775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339142, 33.986298, 27.888279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257473, 34.293629, 27.645634>,  <34.208473, 34.478027, 27.500046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257473, 34.293629, 27.645634>,  <34.339142, 33.986298, 27.888279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257473, 34.293629, 27.645634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899896, 0.096624, 0.425267,
		0.385359, 0.632717, 0.671690,
		-0.204172, 0.768332, -0.606614,
		34.196220, 34.524128, 27.463650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003551, 34.420368, 28.358570>,  <34.339142, 33.986298, 27.888279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003551, 34.420368, 28.358570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876202, 34.550400, 28.002377>,  <33.799793, 34.628418, 27.788660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876202, 34.550400, 28.002377>,  <34.003551, 34.420368, 28.358570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876202, 34.550400, 28.002377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942331, -0.006254, 0.334623,
		0.103209, 0.945666, 0.308322,
		-0.318370, 0.325077, -0.890486,
		33.780689, 34.647923, 27.735231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625065, 35.039238, 28.550249>,  <34.003551, 34.420368, 28.358570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625065, 35.039238, 28.550249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499687, 34.893372, 28.199532>,  <33.424461, 34.805851, 27.989101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499687, 34.893372, 28.199532>,  <33.625065, 35.039238, 28.550249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499687, 34.893372, 28.199532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944604, 0.025096, 0.327250,
		-0.097334, 0.930799, -0.352335,
		-0.313446, -0.364670, -0.876794,
		33.405655, 34.783970, 27.936493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907509, 35.377190, 28.489553>,  <33.625065, 35.039238, 28.550249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907509, 35.377190, 28.489553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911484, 35.085300, 28.216084>,  <32.913868, 34.910168, 28.052002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911484, 35.085300, 28.216084>,  <32.907509, 35.377190, 28.489553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911484, 35.085300, 28.216084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919321, -0.275638, 0.280841,
		-0.393382, 0.625725, -0.673586,
		0.009937, -0.729720, -0.683674,
		32.914463, 34.866383, 28.010981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278744, 35.436668, 28.152569>,  <32.907509, 35.377190, 28.489553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278744, 35.436668, 28.152569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399422, 35.060444, 28.090183>,  <32.471828, 34.834709, 28.052752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399422, 35.060444, 28.090183>,  <32.278744, 35.436668, 28.152569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399422, 35.060444, 28.090183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899686, -0.334999, 0.279893,
		-0.315504, 0.055875, -0.947278,
		0.301698, -0.940560, -0.155964,
		32.489933, 34.778275, 28.043394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638567, 35.240009, 27.856697>,  <32.278744, 35.436668, 28.152569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638567, 35.240009, 27.856697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845053, 34.908085, 27.941498>,  <31.968945, 34.708931, 27.992378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845053, 34.908085, 27.941498>,  <31.638567, 35.240009, 27.856697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845053, 34.908085, 27.941498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846475, -0.456631, 0.273802,
		-0.130396, -0.320794, -0.938130,
		0.516214, -0.829807, 0.212001,
		31.999916, 34.659142, 28.005098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232214, 34.661819, 27.649714>,  <31.638567, 35.240009, 27.856697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232214, 34.661819, 27.649714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481867, 34.528065, 27.932171>,  <31.631659, 34.447811, 28.101646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481867, 34.528065, 27.932171>,  <31.232214, 34.661819, 27.649714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481867, 34.528065, 27.932171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773767, -0.389887, 0.499272,
		0.108365, -0.858004, -0.502082,
		0.624133, -0.334391, 0.706145,
		31.669107, 34.427746, 28.144014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173798, 33.917927, 27.656809>,  <31.232214, 34.661819, 27.649714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173798, 33.917927, 27.656809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322750, 34.026188, 28.011906>,  <31.412121, 34.091145, 28.224964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322750, 34.026188, 28.011906>,  <31.173798, 33.917927, 27.656809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322750, 34.026188, 28.011906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760482, -0.459303, 0.459029,
		0.531978, -0.846043, 0.034791,
		0.372379, 0.270651, 0.887740,
		31.434464, 34.107384, 28.278227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243666, 33.291378, 27.971796>,  <31.173798, 33.917927, 27.656809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243666, 33.291378, 27.971796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240055, 33.565289, 28.263275>,  <31.237888, 33.729633, 28.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240055, 33.565289, 28.263275>,  <31.243666, 33.291378, 27.971796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240055, 33.565289, 28.263275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604912, -0.584006, 0.541311,
		0.796241, -0.435913, 0.419500,
		-0.009026, 0.684775, 0.728699,
		31.237347, 33.770721, 28.481884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165920, 32.862755, 28.636511>,  <31.243666, 33.291378, 27.971796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165920, 32.862755, 28.636511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107328, 33.239578, 28.757225>,  <31.072174, 33.465672, 28.829653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107328, 33.239578, 28.757225>,  <31.165920, 32.862755, 28.636511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107328, 33.239578, 28.757225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446624, -0.335192, 0.829562,
		0.882650, -0.013272, 0.469844,
		-0.146478, 0.942056, 0.301785,
		31.063385, 33.522194, 28.847761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465380, 33.029255, 29.343679>,  <31.165920, 32.862755, 28.636511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465380, 33.029255, 29.343679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150467, 33.271152, 29.295559>,  <30.961519, 33.416290, 29.266687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150467, 33.271152, 29.295559>,  <31.465380, 33.029255, 29.343679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150467, 33.271152, 29.295559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393806, -0.343029, 0.852788,
		0.474453, 0.718759, 0.508213,
		-0.787281, 0.604745, -0.120301,
		30.914282, 33.452576, 29.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321886, 33.319427, 30.003532>,  <31.465380, 33.029255, 29.343679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321886, 33.319427, 30.003532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970598, 33.392796, 29.826859>,  <30.759825, 33.436817, 29.720854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970598, 33.392796, 29.826859>,  <31.321886, 33.319427, 30.003532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970598, 33.392796, 29.826859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477634, -0.383388, 0.790493,
		-0.024348, 0.905192, 0.424305,
		-0.878221, 0.183416, -0.441685,
		30.707132, 33.447819, 29.694353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979534, 33.651402, 30.431034>,  <31.321886, 33.319427, 30.003532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979534, 33.651402, 30.431034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693121, 33.495064, 30.199677>,  <30.521273, 33.401260, 30.060862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693121, 33.495064, 30.199677>,  <30.979534, 33.651402, 30.431034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693121, 33.495064, 30.199677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537558, -0.219876, 0.814056,
		-0.445344, 0.893809, -0.052664,
		-0.716031, -0.390845, -0.578394,
		30.478312, 33.377811, 30.026157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325487, 33.962852, 30.790461>,  <30.979534, 33.651402, 30.431034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325487, 33.962852, 30.790461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210171, 33.651157, 30.567863>,  <30.140982, 33.464142, 30.434305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210171, 33.651157, 30.567863>,  <30.325487, 33.962852, 30.790461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210171, 33.651157, 30.567863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657894, -0.261084, 0.706407,
		-0.695747, 0.569763, -0.437385,
		-0.288289, -0.779234, -0.556492,
		30.123684, 33.417389, 30.400915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634966, 33.970306, 30.884691>,  <30.325487, 33.962852, 30.790461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634966, 33.970306, 30.884691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732126, 33.607559, 30.746941>,  <29.790422, 33.389912, 30.664291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732126, 33.607559, 30.746941>,  <29.634966, 33.970306, 30.884691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732126, 33.607559, 30.746941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603544, -0.419212, 0.678231,
		-0.759430, 0.043101, -0.649160,
		0.242903, -0.906865, -0.344375,
		29.804996, 33.335499, 30.643627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037582, 33.568321, 30.835434>,  <29.634966, 33.970306, 30.884691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037582, 33.568321, 30.835434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341288, 33.308201, 30.845402>,  <29.523512, 33.152126, 30.851383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341288, 33.308201, 30.845402>,  <29.037582, 33.568321, 30.835434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341288, 33.308201, 30.845402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520330, -0.583624, 0.623410,
		-0.390860, -0.486301, -0.781498,
		0.759266, -0.650303, 0.024922,
		29.569067, 33.113110, 30.852879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690807, 32.935333, 30.728186>,  <29.037582, 33.568321, 30.835434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690807, 32.935333, 30.728186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030415, 32.847080, 30.920223>,  <29.234179, 32.794128, 31.035446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030415, 32.847080, 30.920223>,  <28.690807, 32.935333, 30.728186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030415, 32.847080, 30.920223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496007, -0.645911, 0.580324,
		0.182057, -0.730835, -0.657826,
		0.849018, -0.220634, 0.480092,
		29.285120, 32.780891, 31.064251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670052, 32.180935, 30.863943>,  <28.690807, 32.935333, 30.728186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670052, 32.180935, 30.863943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951334, 32.320381, 31.111805>,  <29.120104, 32.404049, 31.260521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951334, 32.320381, 31.111805>,  <28.670052, 32.180935, 30.863943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951334, 32.320381, 31.111805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385307, -0.545604, 0.744215,
		0.597526, -0.762094, -0.249350,
		0.703208, 0.348611, 0.619653,
		29.162296, 32.424965, 31.297701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932758, 31.582487, 31.230997>,  <28.670052, 32.180935, 30.863943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932758, 31.582487, 31.230997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054913, 31.891232, 31.454056>,  <29.128204, 32.076477, 31.587891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054913, 31.891232, 31.454056>,  <28.932758, 31.582487, 31.230997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054913, 31.891232, 31.454056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021647, -0.579846, 0.814438,
		0.951983, -0.260789, -0.160368,
		0.305385, 0.771860, 0.557649,
		29.146528, 32.122791, 31.621351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501329, 31.317278, 31.431545>,  <28.932758, 31.582487, 31.230997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501329, 31.317278, 31.431545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384874, 31.610298, 31.677670>,  <29.315001, 31.786110, 31.825344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384874, 31.610298, 31.677670>,  <29.501329, 31.317278, 31.431545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384874, 31.610298, 31.677670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215220, -0.676837, 0.703969,
		0.932158, 0.072525, 0.354713,
		-0.291139, 0.732552, 0.615310,
		29.297533, 31.830063, 31.862263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747259, 31.062065, 32.039669>,  <29.501329, 31.317278, 31.431545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747259, 31.062065, 32.039669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471378, 31.344772, 32.102654>,  <29.305851, 31.514397, 32.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471378, 31.344772, 32.102654>,  <29.747259, 31.062065, 32.039669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471378, 31.344772, 32.102654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522536, -0.636347, 0.567467,
		0.501267, 0.309103, 0.808200,
		-0.689701, 0.706766, 0.157462,
		29.264467, 31.556803, 32.149891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600685, 30.928024, 32.704811>,  <29.747259, 31.062065, 32.039669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600685, 30.928024, 32.704811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291153, 31.143860, 32.572128>,  <29.105434, 31.273361, 32.492519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291153, 31.143860, 32.572128>,  <29.600685, 30.928024, 32.704811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291153, 31.143860, 32.572128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612903, -0.505781, 0.607071,
		0.159801, 0.673073, 0.722106,
		-0.773831, 0.539591, -0.331704,
		29.059004, 31.305737, 32.472618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151134, 31.192249, 33.318523>,  <29.600685, 30.928024, 32.704811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151134, 31.192249, 33.318523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914772, 31.202106, 32.995979>,  <28.772955, 31.208021, 32.802452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914772, 31.202106, 32.995979>,  <29.151134, 31.192249, 33.318523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914772, 31.202106, 32.995979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738784, -0.418052, 0.528612,
		-0.324076, 0.908089, 0.265235,
		-0.590908, 0.024641, -0.806362,
		28.737499, 31.209499, 32.754070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375488, 31.382462, 33.587257>,  <29.151134, 31.192249, 33.318523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375488, 31.382462, 33.587257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312996, 31.203468, 33.235043>,  <28.275499, 31.096073, 33.023712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312996, 31.203468, 33.235043>,  <28.375488, 31.382462, 33.587257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312996, 31.203468, 33.235043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727002, -0.551384, 0.409198,
		-0.668625, 0.704084, -0.239177,
		-0.156232, -0.447482, -0.880540,
		28.266127, 31.069223, 32.970879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591919, 31.374088, 33.424038>,  <28.375488, 31.382462, 33.587257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591919, 31.374088, 33.424038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741991, 31.091644, 33.183823>,  <27.832035, 30.922178, 33.039692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741991, 31.091644, 33.183823>,  <27.591919, 31.374088, 33.424038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741991, 31.091644, 33.183823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759843, -0.605346, 0.237056,
		-0.530922, 0.367377, -0.763646,
		0.375181, -0.706109, -0.600541,
		27.854546, 30.879812, 33.003658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097525, 31.140779, 33.040020>,  <27.591919, 31.374088, 33.424038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097525, 31.140779, 33.040020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361029, 30.840172, 33.025829>,  <27.519131, 30.659807, 33.017315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361029, 30.840172, 33.025829>,  <27.097525, 31.140779, 33.040020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361029, 30.840172, 33.025829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721464, -0.644382, 0.253500,
		-0.213371, -0.141399, -0.966685,
		0.658758, -0.751518, -0.035478,
		27.558657, 30.614716, 33.015186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855368, 30.763067, 32.436520>,  <27.097525, 31.140779, 33.040020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855368, 30.763067, 32.436520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059423, 30.547722, 32.704823>,  <27.181858, 30.418514, 32.865807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059423, 30.547722, 32.704823>,  <26.855368, 30.763067, 32.436520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059423, 30.547722, 32.704823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763489, -0.642547, 0.064945,
		0.396030, -0.545249, -0.738826,
		0.510142, -0.538366, 0.670760,
		27.212465, 30.386211, 32.906052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858921, 30.043919, 32.272095>,  <26.855368, 30.763067, 32.436520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858921, 30.043919, 32.272095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931545, 30.057293, 32.665218>,  <26.975121, 30.065317, 32.901093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931545, 30.057293, 32.665218>,  <26.858921, 30.043919, 32.272095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931545, 30.057293, 32.665218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836080, -0.520890, 0.172175,
		0.517693, -0.852969, -0.066618,
		0.181561, 0.033435, 0.982811,
		26.986013, 30.067324, 32.960060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783926, 29.357807, 32.409599>,  <26.858921, 30.043919, 32.272095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783926, 29.357807, 32.409599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771482, 29.527390, 32.771660>,  <26.764017, 29.629139, 32.988895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771482, 29.527390, 32.771660>,  <26.783926, 29.357807, 32.409599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771482, 29.527390, 32.771660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785322, -0.570568, 0.240253,
		0.618306, -0.703359, 0.350691,
		-0.031108, 0.423955, 0.905149,
		26.762150, 29.654575, 33.043205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681742, 28.807323, 32.863262>,  <26.783926, 29.357807, 32.409599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681742, 28.807323, 32.863262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588436, 29.133125, 33.075741>,  <26.532454, 29.328606, 33.203228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588436, 29.133125, 33.075741>,  <26.681742, 28.807323, 32.863262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588436, 29.133125, 33.075741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870060, -0.418773, 0.260050,
		0.434264, -0.401517, 0.806350,
		-0.233263, 0.814502, 0.531201,
		26.518457, 29.377476, 33.235100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385185, 28.482389, 33.516350>,  <26.681742, 28.807323, 32.863262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385185, 28.482389, 33.516350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268353, 28.864876, 33.508961>,  <26.198254, 29.094368, 33.504528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268353, 28.864876, 33.508961>,  <26.385185, 28.482389, 33.516350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268353, 28.864876, 33.508961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828449, -0.243311, 0.504451,
		0.477870, 0.162643, 0.863243,
		-0.292082, 0.956215, -0.018470,
		26.180727, 29.151741, 33.503418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281570, 28.734482, 34.225735>,  <26.385185, 28.482389, 33.516350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281570, 28.734482, 34.225735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034273, 28.973801, 34.021847>,  <25.885895, 29.117392, 33.899513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034273, 28.973801, 34.021847>,  <26.281570, 28.734482, 34.225735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034273, 28.973801, 34.021847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769674, -0.329410, 0.546893,
		0.159296, 0.730433, 0.664148,
		-0.618246, 0.598295, -0.509721,
		25.848799, 29.153290, 33.868931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870766, 29.024069, 34.695175>,  <26.281570, 28.734482, 34.225735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870766, 29.024069, 34.695175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657856, 29.039391, 34.356895>,  <25.530109, 29.048584, 34.153927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657856, 29.039391, 34.356895>,  <25.870766, 29.024069, 34.695175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657856, 29.039391, 34.356895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727297, -0.531956, 0.433660,
		-0.433267, 0.845905, 0.311005,
		-0.532277, 0.038303, -0.845704,
		25.498173, 29.050880, 34.103184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.171795, 28.947012, 34.966682>,  <25.870766, 29.024069, 34.695175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.171795, 28.947012, 34.966682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130949, 28.895790, 34.572083>,  <25.106441, 28.865057, 34.335323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130949, 28.895790, 34.572083>,  <25.171795, 28.947012, 34.966682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130949, 28.895790, 34.572083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848472, -0.506469, 0.153571,
		-0.519295, 0.852696, -0.056933,
		-0.102115, -0.128055, -0.986496,
		25.100315, 28.857374, 34.276134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.421246, 29.155220, 34.798328>,  <25.171795, 28.947012, 34.966682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.421246, 29.155220, 34.798328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.570190, 28.936218, 34.498573>,  <24.659557, 28.804817, 34.318718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.570190, 28.936218, 34.498573>,  <24.421246, 29.155220, 34.798328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.570190, 28.936218, 34.498573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690252, -0.703137, 0.170735,
		-0.620402, 0.453694, -0.639736,
		0.372361, -0.547504, -0.749391,
		24.681898, 28.771967, 34.273754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960320, 28.931210, 34.209221>,  <24.421246, 29.155220, 34.798328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960320, 28.931210, 34.209221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.237467, 28.643330, 34.191498>,  <24.403755, 28.470602, 34.180862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.237467, 28.643330, 34.191498>,  <23.960320, 28.931210, 34.209221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.237467, 28.643330, 34.191498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711909, -0.692542, 0.116493,
		-0.114524, -0.049173, -0.992203,
		0.692871, -0.719700, -0.044306,
		24.445328, 28.427420, 34.178207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.572172, 28.318413, 33.846931>,  <23.960320, 28.931210, 34.209221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.572172, 28.318413, 33.846931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903141, 28.157558, 34.003731>,  <24.101723, 28.061045, 34.097809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903141, 28.157558, 34.003731>,  <23.572172, 28.318413, 33.846931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.903141, 28.157558, 34.003731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492647, -0.854843, 0.162917,
		0.269578, -0.327916, -0.905427,
		0.827421, -0.402138, 0.391994,
		24.151367, 28.036917, 34.121330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550449, 27.636343, 33.779568>,  <23.572172, 28.318413, 33.846931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550449, 27.636343, 33.779568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.858664, 27.565968, 34.024620>,  <24.043592, 27.523743, 34.171650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.858664, 27.565968, 34.024620>,  <23.550449, 27.636343, 33.779568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.858664, 27.565968, 34.024620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428975, -0.854039, 0.294275,
		0.471436, -0.489553, -0.733543,
		0.770538, -0.175939, 0.612631,
		24.089825, 27.513186, 34.208408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.436983, 26.868582, 33.753517>,  <23.550449, 27.636343, 33.779568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.436983, 26.868582, 33.753517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.293095, 26.613903, 33.480690>,  <23.206762, 26.461096, 33.316994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.293095, 26.613903, 33.480690>,  <23.436983, 26.868582, 33.753517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.293095, 26.613903, 33.480690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381823, 0.566544, -0.730232,
		0.851359, -0.523109, 0.039308,
		-0.359721, -0.636698, -0.682068,
		23.185179, 26.422894, 33.276070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.961023, 26.831549, 33.255898>,  <23.436983, 26.868582, 33.753517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.961023, 26.831549, 33.255898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.621798, 26.724892, 33.072731>,  <23.418262, 26.660898, 32.962830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.621798, 26.724892, 33.072731>,  <23.961023, 26.831549, 33.255898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.621798, 26.724892, 33.072731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282874, 0.502923, -0.816732,
		0.448068, -0.822176, -0.351088,
		-0.848067, -0.266638, -0.457915,
		23.367378, 26.644899, 32.935356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.155344, 26.481794, 32.701950>,  <23.961023, 26.831549, 33.255898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.155344, 26.481794, 32.701950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.801899, 26.656673, 32.634911>,  <23.589832, 26.761600, 32.594688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.801899, 26.656673, 32.634911>,  <24.155344, 26.481794, 32.701950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.801899, 26.656673, 32.634911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413236, 0.559866, -0.718183,
		-0.220155, -0.703852, -0.675369,
		-0.883611, 0.437198, -0.167600,
		23.536816, 26.787832, 32.584629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.073833, 26.428881, 31.997820>,  <24.155344, 26.481794, 32.701950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.073833, 26.428881, 31.997820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.857059, 26.730259, 32.146751>,  <23.726995, 26.911085, 32.236111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.857059, 26.730259, 32.146751>,  <24.073833, 26.428881, 31.997820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.857059, 26.730259, 32.146751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466514, 0.638194, -0.612432,
		-0.699051, -0.158202, -0.697352,
		-0.541934, 0.753446, 0.372327,
		23.694479, 26.956293, 32.258450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.023584, 26.828663, 31.425867>,  <24.073833, 26.428881, 31.997820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.023584, 26.828663, 31.425867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.898445, 27.062672, 31.725166>,  <23.823360, 27.203077, 31.904745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.898445, 27.062672, 31.725166>,  <24.023584, 26.828663, 31.425867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.898445, 27.062672, 31.725166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310173, 0.807529, -0.501687,
		-0.897729, 0.075134, -0.434093,
		-0.312849, 0.585023, 0.748247,
		23.804590, 27.238178, 31.949640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.577660, 27.223404, 31.034807>,  <24.023584, 26.828663, 31.425867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.577660, 27.223404, 31.034807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.708448, 27.404121, 31.366825>,  <23.786921, 27.512552, 31.566036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.708448, 27.404121, 31.366825>,  <23.577660, 27.223404, 31.034807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.708448, 27.404121, 31.366825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441489, 0.703561, -0.556857,
		-0.835570, 0.548532, 0.030582,
		0.326970, 0.451791, 0.830045,
		23.806540, 27.539660, 31.615839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.532206, 27.971624, 31.028793>,  <23.577660, 27.223404, 31.034807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.532206, 27.971624, 31.028793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.798506, 27.941303, 31.325718>,  <23.958286, 27.923111, 31.503874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.798506, 27.941303, 31.325718>,  <23.532206, 27.971624, 31.028793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.798506, 27.941303, 31.325718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474100, 0.811181, -0.342366,
		-0.576198, 0.579861, 0.575983,
		0.665751, -0.075803, 0.742313,
		23.998232, 27.918562, 31.548412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.529812, 28.600889, 31.385242>,  <23.532206, 27.971624, 31.028793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.529812, 28.600889, 31.385242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.887955, 28.426247, 31.420364>,  <24.102840, 28.321461, 31.441437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.887955, 28.426247, 31.420364>,  <23.529812, 28.600889, 31.385242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.887955, 28.426247, 31.420364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439842, 0.836015, -0.328051,
		0.069824, 0.332342, 0.940571,
		0.895357, -0.436609, 0.087804,
		24.156561, 28.295263, 31.446705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.924686, 29.150549, 31.428333>,  <23.529812, 28.600889, 31.385242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.924686, 29.150549, 31.428333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228521, 28.892681, 31.462799>,  <24.410822, 28.737961, 31.483479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228521, 28.892681, 31.462799>,  <23.924686, 29.150549, 31.428333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228521, 28.892681, 31.462799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650179, 0.749147, -0.126671,
		0.017112, 0.152239, 0.988195,
		0.759588, -0.644672, 0.086164,
		24.456398, 28.699280, 31.488647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379225, 29.493698, 31.865940>,  <23.924686, 29.150549, 31.428333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379225, 29.493698, 31.865940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601305, 29.236954, 31.654369>,  <24.734554, 29.082907, 31.527426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601305, 29.236954, 31.654369>,  <24.379225, 29.493698, 31.865940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.601305, 29.236954, 31.654369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646287, 0.733229, -0.211394,
		0.523511, -0.224473, 0.821917,
		0.555202, -0.641862, -0.528928,
		24.767866, 29.044395, 31.495691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176109, 29.549297, 32.052204>,  <24.379225, 29.493698, 31.865940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176109, 29.549297, 32.052204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186092, 29.389210, 31.685772>,  <25.192081, 29.293158, 31.465912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186092, 29.389210, 31.685772>,  <25.176109, 29.549297, 32.052204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186092, 29.389210, 31.685772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724126, 0.639008, -0.259442,
		0.689216, -0.656882, 0.305756,
		0.024958, -0.400218, -0.916080,
		25.193579, 29.269144, 31.410948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912748, 29.502756, 31.868725>,  <25.176109, 29.549297, 32.052204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912748, 29.502756, 31.868725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703373, 29.478676, 31.528751>,  <25.577747, 29.464228, 31.324768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703373, 29.478676, 31.528751>,  <25.912748, 29.502756, 31.868725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703373, 29.478676, 31.528751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598219, 0.684351, -0.416891,
		0.606750, -0.726663, -0.322203,
		-0.523439, -0.060200, -0.849934,
		25.546341, 29.460615, 31.273771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283453, 29.259272, 31.354738>,  <25.912748, 29.502756, 31.868725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283453, 29.259272, 31.354738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003645, 29.508972, 31.215607>,  <25.835760, 29.658792, 31.132128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003645, 29.508972, 31.215607>,  <26.283453, 29.259272, 31.354738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003645, 29.508972, 31.215607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714157, 0.593260, -0.371513,
		-0.025563, -0.508285, -0.860809,
		-0.699518, 0.624250, -0.347830,
		25.793789, 29.696247, 31.111258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585617, 29.374733, 30.765831>,  <26.283453, 29.259272, 31.354738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585617, 29.374733, 30.765831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301569, 29.654602, 30.797283>,  <26.131140, 29.822523, 30.816154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301569, 29.654602, 30.797283>,  <26.585617, 29.374733, 30.765831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301569, 29.654602, 30.797283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573506, 0.639596, -0.511868,
		-0.408433, -0.318392, -0.855458,
		-0.710122, 0.699674, 0.078632,
		26.088531, 29.864504, 30.820873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413857, 29.556007, 30.038252>,  <26.585617, 29.374733, 30.765831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413857, 29.556007, 30.038252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318293, 29.861538, 30.278084>,  <26.260954, 30.044855, 30.421982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318293, 29.861538, 30.278084>,  <26.413857, 29.556007, 30.038252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318293, 29.861538, 30.278084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469734, 0.631315, -0.617083,
		-0.849866, 0.134216, -0.509621,
		-0.238909, 0.763825, 0.599579,
		26.246620, 30.090685, 30.457958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309088, 30.194324, 29.546774>,  <26.413857, 29.556007, 30.038252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309088, 30.194324, 29.546774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331219, 30.330570, 29.922203>,  <26.344498, 30.412317, 30.147461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331219, 30.330570, 29.922203>,  <26.309088, 30.194324, 29.546774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331219, 30.330570, 29.922203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640066, 0.709361, -0.295165,
		-0.766325, 0.617080, -0.178769,
		0.055329, 0.340616, 0.938573,
		26.347816, 30.432755, 30.203775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918831, 30.935270, 29.524931>,  <26.309088, 30.194324, 29.546774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918831, 30.935270, 29.524931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188303, 30.894005, 29.817646>,  <26.349987, 30.869246, 29.993275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188303, 30.894005, 29.817646>,  <25.918831, 30.935270, 29.524931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188303, 30.894005, 29.817646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544139, 0.739277, -0.396715,
		-0.500067, 0.665453, 0.554171,
		0.673681, -0.103162, 0.731787,
		26.390408, 30.863056, 30.037182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075916, 31.577240, 29.636019>,  <25.918831, 30.935270, 29.524931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075916, 31.577240, 29.636019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369606, 31.374180, 29.816334>,  <26.545820, 31.252344, 29.924522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369606, 31.374180, 29.816334>,  <26.075916, 31.577240, 29.636019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369606, 31.374180, 29.816334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674596, 0.620245, -0.400270,
		-0.076401, 0.597986, 0.797857,
		0.734223, -0.507650, 0.450786,
		26.589872, 31.221886, 29.951571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507523, 32.055840, 29.870478>,  <26.075916, 31.577240, 29.636019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507523, 32.055840, 29.870478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733822, 31.726376, 29.854904>,  <26.869600, 31.528698, 29.845560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733822, 31.726376, 29.854904>,  <26.507523, 32.055840, 29.870478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733822, 31.726376, 29.854904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716050, 0.514150, -0.472147,
		0.408905, 0.239238, 0.880660,
		0.565746, -0.823660, -0.038932,
		26.903545, 31.479279, 29.843224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180696, 32.410675, 30.123507>,  <26.507523, 32.055840, 29.870478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180696, 32.410675, 30.123507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262295, 32.063423, 29.942516>,  <27.311255, 31.855072, 29.833923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262295, 32.063423, 29.942516>,  <27.180696, 32.410675, 30.123507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262295, 32.063423, 29.942516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768931, 0.428152, -0.474795,
		0.605912, -0.251064, 0.754876,
		0.203998, -0.868132, -0.452473,
		27.323494, 31.802984, 29.806774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921698, 32.160782, 30.212103>,  <27.180696, 32.410675, 30.123507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921698, 32.160782, 30.212103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814989, 31.927284, 29.905357>,  <27.750963, 31.787188, 29.721310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814989, 31.927284, 29.905357>,  <27.921698, 32.160782, 30.212103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814989, 31.927284, 29.905357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824079, 0.274421, -0.495567,
		0.499726, -0.764161, 0.407839,
		-0.266773, -0.583740, -0.766864,
		27.734957, 31.752163, 29.675299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577448, 31.977890, 29.933853>,  <27.921698, 32.160782, 30.212103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577448, 31.977890, 29.933853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301529, 31.910465, 29.652210>,  <28.135977, 31.870010, 29.483225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301529, 31.910465, 29.652210>,  <28.577448, 31.977890, 29.933853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301529, 31.910465, 29.652210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649697, 0.285037, -0.704732,
		0.319488, -0.943579, -0.087103,
		-0.689798, -0.168562, -0.704107,
		28.094589, 31.859896, 29.440979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997345, 31.722752, 29.436516>,  <28.577448, 31.977890, 29.933853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997345, 31.722752, 29.436516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660852, 31.837360, 29.253109>,  <28.458958, 31.906126, 29.143064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660852, 31.837360, 29.253109>,  <28.997345, 31.722752, 29.436516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660852, 31.837360, 29.253109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533389, 0.300995, -0.790505,
		-0.088486, -0.909564, -0.406034,
		-0.841229, 0.286523, -0.458517,
		28.408484, 31.923317, 29.115553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160326, 31.518698, 28.794664>,  <28.997345, 31.722752, 29.436516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160326, 31.518698, 28.794664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868567, 31.789345, 28.754330>,  <28.693510, 31.951733, 28.730129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868567, 31.789345, 28.754330>,  <29.160326, 31.518698, 28.794664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868567, 31.789345, 28.754330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509971, 0.439562, -0.739401,
		-0.455968, -0.590742, -0.665671,
		-0.729399, 0.676616, -0.100835,
		28.649746, 31.992331, 28.724079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932003, 31.567444, 28.013083>,  <29.160326, 31.518698, 28.794664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932003, 31.567444, 28.013083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831957, 31.903568, 28.205467>,  <28.771929, 32.105244, 28.320898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831957, 31.903568, 28.205467>,  <28.932003, 31.567444, 28.013083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831957, 31.903568, 28.205467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319517, 0.540555, -0.778273,
		-0.913976, -0.040982, -0.403694,
		-0.250114, 0.840310, 0.480960,
		28.756924, 32.155663, 28.349754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602335, 32.048626, 27.486456>,  <28.932003, 31.567444, 28.013083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602335, 32.048626, 27.486456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668655, 32.293957, 27.795349>,  <28.708447, 32.441154, 27.980684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668655, 32.293957, 27.795349>,  <28.602335, 32.048626, 27.486456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668655, 32.293957, 27.795349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197922, 0.746440, -0.635338,
		-0.966094, 0.258180, 0.002369,
		0.165800, 0.613327, 0.772231,
		28.718395, 32.477955, 28.027018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120028, 32.608887, 27.471279>,  <28.602335, 32.048626, 27.486456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120028, 32.608887, 27.471279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462044, 32.721546, 27.645443>,  <28.667253, 32.789143, 27.749941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462044, 32.721546, 27.645443>,  <28.120028, 32.608887, 27.471279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462044, 32.721546, 27.645443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020865, 0.820282, -0.571578,
		-0.518140, 0.497808, 0.695499,
		0.855041, 0.281646, 0.435408,
		28.718555, 32.806042, 27.776066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030411, 33.309162, 27.623184>,  <28.120028, 32.608887, 27.471279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030411, 33.309162, 27.623184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425140, 33.244537, 27.626595>,  <28.661978, 33.205761, 27.628641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425140, 33.244537, 27.626595>,  <28.030411, 33.309162, 27.623184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425140, 33.244537, 27.626595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133368, 0.782511, -0.608185,
		0.091588, 0.601310, 0.793749,
		0.986826, -0.161563, 0.008527,
		28.721188, 33.196068, 27.629152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297195, 33.914482, 27.832945>,  <28.030411, 33.309162, 27.623184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297195, 33.914482, 27.832945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613144, 33.743111, 27.657421>,  <28.802713, 33.640289, 27.552107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613144, 33.743111, 27.657421>,  <28.297195, 33.914482, 27.832945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613144, 33.743111, 27.657421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138916, 0.821911, -0.552416,
		0.597333, 0.375380, 0.708719,
		0.789870, -0.428429, -0.438809,
		28.850105, 33.614582, 27.525778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779390, 34.447559, 27.808903>,  <28.297195, 33.914482, 27.832945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779390, 34.447559, 27.808903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909531, 34.183578, 27.538021>,  <28.987614, 34.025188, 27.375492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909531, 34.183578, 27.538021>,  <28.779390, 34.447559, 27.808903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909531, 34.183578, 27.538021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117142, 0.738782, -0.663685,
		0.938310, 0.136601, 0.317671,
		0.325350, -0.659955, -0.677205,
		29.007135, 33.985592, 27.334860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217587, 34.789867, 27.431194>,  <28.779390, 34.447559, 27.808903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217587, 34.789867, 27.431194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120026, 34.484882, 27.191475>,  <29.061489, 34.301891, 27.047644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120026, 34.484882, 27.191475>,  <29.217587, 34.789867, 27.431194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120026, 34.484882, 27.191475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031780, 0.623913, -0.780847,
		0.969279, -0.171406, -0.176406,
		-0.243904, -0.762464, -0.599298,
		29.046854, 34.256142, 27.011684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625219, 34.909908, 26.929064>,  <29.217587, 34.789867, 27.431194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625219, 34.909908, 26.929064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337189, 34.681252, 26.771729>,  <29.164371, 34.544056, 26.677328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337189, 34.681252, 26.771729>,  <29.625219, 34.909908, 26.929064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337189, 34.681252, 26.771729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044505, 0.603733, -0.795943,
		0.692468, -0.555632, -0.460174,
		-0.720074, -0.571646, -0.393338,
		29.121166, 34.509758, 26.653727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779663, 34.885109, 26.229956>,  <29.625219, 34.909908, 26.929064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779663, 34.885109, 26.229956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410660, 34.735500, 26.191837>,  <29.189257, 34.645733, 26.168966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410660, 34.735500, 26.191837>,  <29.779663, 34.885109, 26.229956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410660, 34.735500, 26.191837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115209, 0.502470, -0.856884,
		0.368378, -0.779506, -0.506624,
		-0.922510, -0.374025, -0.095293,
		29.133907, 34.623291, 26.163250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676764, 34.649910, 25.467606>,  <29.779663, 34.885109, 26.229956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676764, 34.649910, 25.467606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310863, 34.690891, 25.623932>,  <29.091324, 34.715481, 25.717728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310863, 34.690891, 25.623932>,  <29.676764, 34.649910, 25.467606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310863, 34.690891, 25.623932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339179, 0.330845, -0.880624,
		-0.219522, -0.938107, -0.267890,
		-0.914750, 0.102454, 0.390814,
		29.036438, 34.721626, 25.741177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162046, 34.375229, 24.983374>,  <29.676764, 34.649910, 25.467606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162046, 34.375229, 24.983374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967522, 34.645325, 25.205204>,  <28.850807, 34.807381, 25.338303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967522, 34.645325, 25.205204>,  <29.162046, 34.375229, 24.983374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967522, 34.645325, 25.205204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499901, 0.305546, -0.810396,
		-0.716658, -0.671338, 0.188961,
		-0.486314, 0.675238, 0.554574,
		28.821627, 34.847897, 25.371576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405478, 34.262016, 24.781698>,  <29.162046, 34.375229, 24.983374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405478, 34.262016, 24.781698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440548, 34.620853, 24.954918>,  <28.461590, 34.836155, 25.058849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440548, 34.620853, 24.954918>,  <28.405478, 34.262016, 24.781698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440548, 34.620853, 24.954918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714601, 0.359512, -0.600080,
		-0.694016, -0.256845, 0.672586,
		0.087675, 0.897096, 0.433049,
		28.466850, 34.889984, 25.084833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841272, 34.289234, 25.071957>,  <28.405478, 34.262016, 24.781698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841272, 34.289234, 25.071957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967369, 34.665428, 25.021183>,  <28.043028, 34.891144, 24.990719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967369, 34.665428, 25.021183>,  <27.841272, 34.289234, 25.071957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967369, 34.665428, 25.021183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712443, 0.146172, -0.686337,
		-0.626935, 0.306795, 0.716121,
		0.315242, 0.940484, -0.126933,
		28.061941, 34.947575, 24.983103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292213, 34.731842, 25.034086>,  <27.841272, 34.289234, 25.071957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292213, 34.731842, 25.034086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562445, 34.967541, 24.856827>,  <27.724583, 35.108959, 24.750471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562445, 34.967541, 24.856827>,  <27.292213, 34.731842, 25.034086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562445, 34.967541, 24.856827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714376, 0.374467, -0.591136,
		-0.182384, 0.715931, 0.673928,
		0.675577, 0.589251, -0.443147,
		27.765118, 35.144318, 24.723883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888359, 35.384457, 24.897881>,  <27.292213, 34.731842, 25.034086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888359, 35.384457, 24.897881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193779, 35.392040, 24.639694>,  <27.377031, 35.396591, 24.484781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193779, 35.392040, 24.639694>,  <26.888359, 35.384457, 24.897881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193779, 35.392040, 24.639694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588475, 0.431971, -0.683446,
		0.265866, 0.901688, 0.340989,
		0.763552, 0.018958, -0.645468,
		27.422844, 35.397728, 24.446054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765444, 36.005608, 24.637358>,  <26.888359, 35.384457, 24.897881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765444, 36.005608, 24.637358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995176, 35.803383, 24.379818>,  <27.133017, 35.682049, 24.225294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995176, 35.803383, 24.379818>,  <26.765444, 36.005608, 24.637358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995176, 35.803383, 24.379818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618044, 0.247959, -0.746015,
		0.536808, 0.826390, -0.170051,
		0.574333, -0.505566, -0.643852,
		27.167477, 35.651714, 24.186663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505669, 36.263580, 23.996405>,  <26.765444, 36.005608, 24.637358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505669, 36.263580, 23.996405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807823, 36.052410, 23.841129>,  <26.989117, 35.925709, 23.747965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807823, 36.052410, 23.841129>,  <26.505669, 36.263580, 23.996405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807823, 36.052410, 23.841129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227308, 0.344508, -0.910849,
		0.614590, 0.776282, 0.140237,
		0.755388, -0.527921, -0.388186,
		27.034439, 35.894035, 23.724674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921104, 36.042278, 24.295523>,  <26.505669, 36.263580, 23.996405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921104, 36.042278, 24.295523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856310, 36.395466, 24.471760>,  <25.817434, 36.607380, 24.577501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856310, 36.395466, 24.471760>,  <25.921104, 36.042278, 24.295523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856310, 36.395466, 24.471760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553054, 0.451009, -0.700516,
		-0.817247, 0.130199, -0.561388,
		-0.161984, 0.882972, 0.440592,
		25.807714, 36.660358, 24.603937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700583, 36.392033, 23.721518>,  <25.921104, 36.042278, 24.295523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700583, 36.392033, 23.721518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870590, 36.628208, 23.995960>,  <25.972595, 36.769913, 24.160625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870590, 36.628208, 23.995960>,  <25.700583, 36.392033, 23.721518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870590, 36.628208, 23.995960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621492, 0.360733, -0.695427,
		-0.658107, 0.721981, -0.213632,
		0.425021, 0.590436, 0.686107,
		25.998096, 36.805340, 24.201792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778776, 37.112938, 23.438631>,  <25.700583, 36.392033, 23.721518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778776, 37.112938, 23.438631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046274, 37.021938, 23.721764>,  <26.206774, 36.967339, 23.891644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046274, 37.021938, 23.721764>,  <25.778776, 37.112938, 23.438631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046274, 37.021938, 23.721764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712712, 0.467248, -0.523184,
		-0.211712, 0.854357, 0.474608,
		0.668745, -0.227494, 0.707832,
		26.246899, 36.953690, 23.934113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101160, 37.212261, 22.930573>,  <25.778776, 37.112938, 23.438631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101160, 37.212261, 22.930573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283092, 37.189510, 22.575069>,  <25.392252, 37.175861, 22.361767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283092, 37.189510, 22.575069>,  <25.101160, 37.212261, 22.930573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283092, 37.189510, 22.575069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458230, -0.870667, -0.178788,
		-0.763644, 0.488574, -0.422070,
		0.454834, -0.056875, -0.888758,
		25.419542, 37.172447, 22.308441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675680, 36.849583, 23.590082>,  <25.101160, 37.212261, 22.930573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.675680, 36.849583, 23.590082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595278, 36.504055, 23.774868>,  <24.547035, 36.296738, 23.885740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595278, 36.504055, 23.774868>,  <24.675680, 36.849583, 23.590082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.595278, 36.504055, 23.774868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207126, -0.423449, -0.881924,
		0.957442, -0.272958, -0.093803,
		-0.201007, -0.863820, 0.461964,
		24.534975, 36.244907, 23.913458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057632, 36.280083, 23.396099>,  <24.675680, 36.849583, 23.590082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057632, 36.280083, 23.396099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703451, 36.123440, 23.496189>,  <24.490942, 36.029453, 23.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703451, 36.123440, 23.496189>,  <25.057632, 36.280083, 23.396099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.703451, 36.123440, 23.496189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205679, -0.152601, -0.966648,
		0.416734, -0.907389, 0.054576,
		-0.885454, -0.391610, 0.250225,
		24.437815, 36.005959, 23.571257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963045, 35.625977, 23.101940>,  <25.057632, 36.280083, 23.396099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963045, 35.625977, 23.101940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602085, 35.792854, 23.145061>,  <24.385509, 35.892982, 23.170935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602085, 35.792854, 23.145061>,  <24.963045, 35.625977, 23.101940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602085, 35.792854, 23.145061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241297, -0.281982, -0.928581,
		-0.357004, -0.863963, 0.355129,
		-0.902399, 0.417199, 0.107803,
		24.331366, 35.918015, 23.177402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.471800, 35.135750, 22.936317>,  <24.963045, 35.625977, 23.101940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.471800, 35.135750, 22.936317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298798, 35.491245, 22.875546>,  <24.194996, 35.704544, 22.839083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298798, 35.491245, 22.875546>,  <24.471800, 35.135750, 22.936317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298798, 35.491245, 22.875546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329592, -0.312689, -0.890839,
		-0.839229, -0.335219, 0.428161,
		-0.432508, 0.888737, -0.151932,
		24.169044, 35.757866, 22.829966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.685074, 35.022259, 22.765089>,  <24.471800, 35.135750, 22.936317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.685074, 35.022259, 22.765089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.756706, 35.386749, 22.616714>,  <23.799686, 35.605442, 22.527689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.756706, 35.386749, 22.616714>,  <23.685074, 35.022259, 22.765089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.756706, 35.386749, 22.616714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590862, -0.201851, -0.781114,
		-0.786646, 0.359057, 0.502261,
		0.179083, 0.911227, -0.370938,
		23.810431, 35.660118, 22.505432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.126350, 35.082062, 22.375977>,  <23.685074, 35.022259, 22.765089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.126350, 35.082062, 22.375977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343559, 35.392532, 22.247799>,  <23.473885, 35.578815, 22.170893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343559, 35.392532, 22.247799>,  <23.126350, 35.082062, 22.375977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.343559, 35.392532, 22.247799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514525, 0.005965, -0.857455,
		-0.663621, 0.630493, 0.402599,
		0.543021, 0.776172, -0.320446,
		23.506466, 35.625385, 22.151665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.776672, 35.654110, 22.077322>,  <23.126350, 35.082062, 22.375977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.776672, 35.654110, 22.077322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.133692, 35.663147, 21.897167>,  <23.347902, 35.668571, 21.789074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.133692, 35.663147, 21.897167>,  <22.776672, 35.654110, 22.077322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.133692, 35.663147, 21.897167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412847, -0.360886, -0.836253,
		-0.181433, 0.932336, -0.312779,
		0.892547, 0.022594, -0.450389,
		23.401455, 35.669926, 21.762051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.628365, 35.841015, 21.463770>,  <22.776672, 35.654110, 22.077322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.628365, 35.841015, 21.463770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.992201, 35.683765, 21.409962>,  <23.210503, 35.589417, 21.377676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.992201, 35.683765, 21.409962>,  <22.628365, 35.841015, 21.463770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.992201, 35.683765, 21.409962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273729, -0.323388, -0.905811,
		0.312595, 0.860740, -0.401761,
		0.909591, -0.393126, -0.134520,
		23.265078, 35.565826, 21.369606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.706907, 35.972183, 20.778650>,  <22.628365, 35.841015, 21.463770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.706907, 35.972183, 20.778650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.973541, 35.687740, 20.868080>,  <23.133522, 35.517075, 20.921738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.973541, 35.687740, 20.868080>,  <22.706907, 35.972183, 20.778650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.973541, 35.687740, 20.868080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239790, -0.488542, -0.838945,
		0.705807, 0.505618, -0.496172,
		0.666586, -0.711110, 0.223575,
		23.173517, 35.474407, 20.935152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.070478, 35.883106, 20.199192>,  <22.706907, 35.972183, 20.778650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.070478, 35.883106, 20.199192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.167988, 35.560844, 20.415154>,  <23.226494, 35.367489, 20.544731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.167988, 35.560844, 20.415154>,  <23.070478, 35.883106, 20.199192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.167988, 35.560844, 20.415154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013018, -0.559368, -0.828817,
		0.969745, 0.195015, -0.146847,
		0.243774, -0.805653, 0.539905,
		23.241119, 35.319149, 20.577126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.568226, 35.449978, 19.785954>,  <23.070478, 35.883106, 20.199192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.568226, 35.449978, 19.785954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390245, 35.203903, 20.046280>,  <23.283457, 35.056259, 20.202477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390245, 35.203903, 20.046280>,  <23.568226, 35.449978, 19.785954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390245, 35.203903, 20.046280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138997, -0.670474, -0.728797,
		0.884702, -0.414742, 0.212820,
		-0.444953, -0.615186, 0.650817,
		23.256760, 35.019348, 20.241526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.913151, 34.814232, 19.766724>,  <23.568226, 35.449978, 19.785954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.913151, 34.814232, 19.766724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562801, 34.720566, 19.935490>,  <23.352592, 34.664364, 20.036749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562801, 34.720566, 19.935490>,  <23.913151, 34.814232, 19.766724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.562801, 34.720566, 19.935490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076389, -0.796045, -0.600397,
		0.476457, -0.558101, 0.679346,
		-0.875873, -0.234169, 0.421915,
		23.300039, 34.650314, 20.062063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.904102, 34.149918, 19.897461>,  <23.913151, 34.814232, 19.766724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.904102, 34.149918, 19.897461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508383, 34.202927, 19.921871>,  <23.270950, 34.234730, 19.936518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508383, 34.202927, 19.921871>,  <23.904102, 34.149918, 19.897461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508383, 34.202927, 19.921871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145078, -0.849331, -0.507532,
		-0.015430, -0.510954, 0.859469,
		-0.989300, 0.132521, 0.061023,
		23.211594, 34.242683, 19.940178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.600513, 33.434620, 20.177172>,  <23.904102, 34.149918, 19.897461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.600513, 33.434620, 20.177172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.323303, 33.636990, 19.971745>,  <23.156977, 33.758411, 19.848488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.323303, 33.636990, 19.971745>,  <23.600513, 33.434620, 20.177172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.323303, 33.636990, 19.971745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102586, -0.774344, -0.624394,
		-0.713576, -0.380037, 0.588542,
		-0.693026, 0.505929, -0.513567,
		23.115395, 33.788769, 19.817675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.043549, 32.984241, 20.229940>,  <23.600513, 33.434620, 20.177172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.043549, 32.984241, 20.229940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.950180, 33.217278, 19.918530>,  <22.894159, 33.357098, 19.731684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.950180, 33.217278, 19.918530>,  <23.043549, 32.984241, 20.229940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.950180, 33.217278, 19.918530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257712, -0.809079, -0.528182,
		-0.937603, 0.077347, 0.338996,
		-0.233421, 0.582588, -0.778527,
		22.880154, 33.392056, 19.684971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.342194, 32.760414, 19.999727>,  <23.043549, 32.984241, 20.229940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.342194, 32.760414, 19.999727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478451, 32.977390, 19.692554>,  <22.560205, 33.107574, 19.508251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478451, 32.977390, 19.692554>,  <22.342194, 32.760414, 19.999727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.478451, 32.977390, 19.692554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380511, -0.667359, -0.640190,
		-0.859752, 0.510283, -0.020927,
		0.340644, 0.542442, -0.767932,
		22.580645, 33.140121, 19.462175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.864897, 32.659657, 19.511742>,  <22.342194, 32.760414, 19.999727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.864897, 32.659657, 19.511742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.155890, 32.807518, 19.280529>,  <22.330486, 32.896236, 19.141802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.155890, 32.807518, 19.280529>,  <21.864897, 32.659657, 19.511742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.155890, 32.807518, 19.280529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382392, -0.481057, -0.788898,
		-0.569687, 0.794946, -0.208609,
		0.727484, 0.369654, -0.578033,
		22.374134, 32.918415, 19.107119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642614, 32.992088, 18.905291>,  <21.864897, 32.659657, 19.511742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642614, 32.992088, 18.905291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.010519, 32.858685, 18.822525>,  <22.231262, 32.778645, 18.772865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.010519, 32.858685, 18.822525>,  <21.642614, 32.992088, 18.905291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.010519, 32.858685, 18.822525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290478, -0.223908, -0.930316,
		0.263937, 0.915772, -0.302818,
		0.919761, -0.333507, -0.206914,
		22.286448, 32.758633, 18.760450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.683434, 33.061676, 18.094200>,  <21.642614, 32.992088, 18.905291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.683434, 33.061676, 18.094200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.985332, 32.817871, 18.191238>,  <22.166471, 32.671589, 18.249462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.985332, 32.817871, 18.191238>,  <21.683434, 33.061676, 18.094200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.985332, 32.817871, 18.191238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036817, -0.408576, -0.911981,
		0.654983, 0.679382, -0.330812,
		0.754746, -0.609512, 0.242597,
		22.211756, 32.635017, 18.264017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.038404, 32.948921, 17.547878>,  <21.683434, 33.061676, 18.094200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.038404, 32.948921, 17.547878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168018, 32.629925, 17.751450>,  <22.245787, 32.438526, 17.873592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168018, 32.629925, 17.751450>,  <22.038404, 32.948921, 17.547878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168018, 32.629925, 17.751450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004456, -0.539236, -0.842143,
		0.946034, 0.270618, -0.178286,
		0.324037, -0.797490, 0.508930,
		22.265230, 32.390678, 17.904129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643227, 32.643379, 17.154253>,  <22.038404, 32.948921, 17.547878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643227, 32.643379, 17.154253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.495483, 32.359520, 17.394245>,  <22.406837, 32.189205, 17.538240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.495483, 32.359520, 17.394245>,  <22.643227, 32.643379, 17.154253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.495483, 32.359520, 17.394245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066098, -0.664060, -0.744752,
		0.926933, -0.235423, 0.292182,
		-0.369358, -0.709648, 0.599979,
		22.384676, 32.146626, 17.574238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.044966, 32.084435, 17.035686>,  <22.643227, 32.643379, 17.154253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.044966, 32.084435, 17.035686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.706894, 31.932774, 17.186371>,  <22.504051, 31.841776, 17.276781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.706894, 31.932774, 17.186371>,  <23.044966, 32.084435, 17.035686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.706894, 31.932774, 17.186371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018084, -0.684128, -0.729138,
		0.534176, -0.623065, 0.571355,
		-0.845180, -0.379156, 0.376712,
		22.453341, 31.819027, 17.299385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.993580, 31.425133, 16.933987>,  <23.044966, 32.084435, 17.035686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.993580, 31.425133, 16.933987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.601999, 31.428776, 17.015545>,  <22.367052, 31.430962, 17.064480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.601999, 31.428776, 17.015545>,  <22.993580, 31.425133, 16.933987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601999, 31.428776, 17.015545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182385, -0.487450, -0.853890,
		0.091611, -0.873103, 0.478850,
		-0.978950, 0.009109, 0.203897,
		22.308313, 31.431509, 17.076714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.690687, 30.709099, 16.901598>,  <22.993580, 31.425133, 16.933987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.690687, 30.709099, 16.901598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.409269, 30.968803, 16.786026>,  <22.240417, 31.124626, 16.716682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.409269, 30.968803, 16.786026>,  <22.690687, 30.709099, 16.901598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.409269, 30.968803, 16.786026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049429, -0.450295, -0.891510,
		-0.708929, -0.612936, 0.348896,
		-0.703545, 0.649264, -0.288931,
		22.198206, 31.163582, 16.699347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.458288, 30.353613, 16.568169>,  <22.690687, 30.709099, 16.901598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.458288, 30.353613, 16.568169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.302446, 30.706665, 16.462963>,  <22.208942, 30.918495, 16.399839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.302446, 30.706665, 16.462963>,  <22.458288, 30.353613, 16.568169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.302446, 30.706665, 16.462963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075422, -0.315197, -0.946025,
		-0.917890, -0.348737, 0.189371,
		-0.389603, 0.882629, -0.263013,
		22.185566, 30.971455, 16.384060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.768150, 30.449364, 16.248161>,  <22.458288, 30.353613, 16.568169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.768150, 30.449364, 16.248161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.058903, 30.678932, 16.097294>,  <22.233355, 30.816673, 16.006773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.058903, 30.678932, 16.097294>,  <21.768150, 30.449364, 16.248161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.058903, 30.678932, 16.097294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180989, -0.369700, -0.911354,
		-0.662486, 0.730709, -0.164854,
		0.726881, 0.573922, -0.377171,
		22.276966, 30.851109, 15.984142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.786310, 30.980459, 15.658537>,  <21.768150, 30.449364, 16.248161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.786310, 30.980459, 15.658537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.811626, 31.241730, 15.960359>,  <21.826817, 31.398493, 16.141451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.811626, 31.241730, 15.960359>,  <21.786310, 30.980459, 15.658537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.811626, 31.241730, 15.960359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871274, 0.332553, -0.360957,
		-0.486698, 0.680270, -0.548050,
		0.063292, 0.653178, 0.754554,
		21.830614, 31.437683, 16.186726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241724, 31.426037, 15.249782>,  <21.786310, 30.980459, 15.658537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241724, 31.426037, 15.249782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160429, 31.039650, 15.185775>,  <21.111652, 30.807817, 15.147371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160429, 31.039650, 15.185775>,  <21.241724, 31.426037, 15.249782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.160429, 31.039650, 15.185775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830634, 0.256623, -0.494157,
		0.518403, 0.032485, -0.854520,
		-0.203237, -0.965966, -0.160017,
		21.099459, 30.749861, 15.137770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.437435, 31.412374, 15.219385>,  <21.241724, 31.426037, 15.249782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.437435, 31.412374, 15.219385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176960, 31.677650, 15.071803>,  <20.020674, 31.836817, 14.983253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176960, 31.677650, 15.071803>,  <20.437435, 31.412374, 15.219385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176960, 31.677650, 15.071803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068056, 0.535234, 0.841958,
		0.755857, 0.523165, -0.393673,
		-0.651190, 0.663192, -0.368956,
		19.981604, 31.876608, 14.961116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844439, 32.023701, 15.161949>,  <20.437435, 31.412374, 15.219385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844439, 32.023701, 15.161949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.448284, 32.057568, 15.205712>,  <20.210592, 32.077888, 15.231970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.448284, 32.057568, 15.205712>,  <20.844439, 32.023701, 15.161949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.448284, 32.057568, 15.205712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137910, 0.541609, 0.829241,
		0.010956, 0.836356, -0.548078,
		-0.990384, 0.084671, 0.109408,
		20.151169, 32.082970, 15.238535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.669275, 32.715633, 15.431482>,  <20.844439, 32.023701, 15.161949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.669275, 32.715633, 15.431482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.390350, 32.467911, 15.575820>,  <20.222996, 32.319275, 15.662422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.390350, 32.467911, 15.575820>,  <20.669275, 32.715633, 15.431482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390350, 32.467911, 15.575820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044167, 0.539602, 0.840761,
		-0.715404, 0.570337, -0.403625,
		-0.697314, -0.619310, 0.360843,
		20.181156, 32.282116, 15.684072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969570, 33.042027, 15.651572>,  <20.669275, 32.715633, 15.431482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.969570, 33.042027, 15.651572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105185, 32.724102, 15.852899>,  <20.186554, 32.533348, 15.973695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105185, 32.724102, 15.852899>,  <19.969570, 33.042027, 15.651572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105185, 32.724102, 15.852899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066129, 0.553813, 0.830011,
		-0.938446, -0.248121, 0.240324,
		0.339038, -0.794812, 0.503316,
		20.206896, 32.485657, 16.003893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607698, 32.916672, 16.305042>,  <19.969570, 33.042027, 15.651572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607698, 32.916672, 16.305042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973127, 32.758297, 16.342178>,  <20.192385, 32.663273, 16.364460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973127, 32.758297, 16.342178>,  <19.607698, 32.916672, 16.305042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.973127, 32.758297, 16.342178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081468, 0.401852, 0.912073,
		-0.398429, -0.825683, 0.399377,
		0.913574, -0.395934, 0.092843,
		20.247200, 32.639519, 16.370031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503576, 32.609306, 16.932234>,  <19.607698, 32.916672, 16.305042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503576, 32.609306, 16.932234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.896500, 32.672981, 16.892784>,  <20.132254, 32.711185, 16.869114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.896500, 32.672981, 16.892784>,  <19.503576, 32.609306, 16.932234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.896500, 32.672981, 16.892784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018073, 0.604786, 0.796183,
		0.186391, -0.780315, 0.596964,
		0.982309, 0.159190, -0.098623,
		20.191193, 32.720737, 16.863197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.730083, 32.546165, 17.573227>,  <19.503576, 32.609306, 16.932234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.730083, 32.546165, 17.573227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.015039, 32.763847, 17.395985>,  <20.186012, 32.894455, 17.289639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.015039, 32.763847, 17.395985>,  <19.730083, 32.546165, 17.573227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015039, 32.763847, 17.395985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065368, 0.577196, 0.813985,
		0.698734, -0.608839, 0.375614,
		0.712389, 0.544206, -0.443106,
		20.228756, 32.927109, 17.263052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.191776, 32.568584, 18.072399>,  <19.730083, 32.546165, 17.573227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.191776, 32.568584, 18.072399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290724, 32.855808, 17.812183>,  <20.350092, 33.028141, 17.656054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290724, 32.855808, 17.812183>,  <20.191776, 32.568584, 18.072399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290724, 32.855808, 17.812183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179899, 0.625693, 0.759042,
		0.952075, -0.304793, 0.025597,
		0.247366, 0.718060, -0.650538,
		20.364933, 33.071228, 17.617022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.884834, 32.840553, 18.248997>,  <20.191776, 32.568584, 18.072399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.884834, 32.840553, 18.248997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682768, 33.138695, 18.074986>,  <20.561527, 33.317581, 17.970579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682768, 33.138695, 18.074986>,  <20.884834, 32.840553, 18.248997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682768, 33.138695, 18.074986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272886, 0.616170, 0.738829,
		0.818742, 0.254518, -0.514666,
		-0.505167, 0.745356, -0.435030,
		20.531218, 33.362301, 17.944477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055517, 33.422764, 18.701660>,  <20.884834, 32.840553, 18.248997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055517, 33.422764, 18.701660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764120, 33.559959, 18.464458>,  <20.589281, 33.642277, 18.322138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764120, 33.559959, 18.464458>,  <21.055517, 33.422764, 18.701660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764120, 33.559959, 18.464458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039065, 0.885025, 0.463901,
		0.683939, 0.314783, -0.658134,
		-0.728493, 0.342990, -0.593006,
		20.545572, 33.662857, 18.286556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.220293, 34.085640, 18.456709>,  <21.055517, 33.422764, 18.701660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.220293, 34.085640, 18.456709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821421, 34.056339, 18.450157>,  <20.582098, 34.038761, 18.446226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821421, 34.056339, 18.450157>,  <21.220293, 34.085640, 18.456709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821421, 34.056339, 18.450157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068937, 0.807466, 0.585873,
		-0.029689, 0.585350, -0.810238,
		-0.997179, -0.073249, -0.016380,
		20.522266, 34.034363, 18.445244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.979940, 34.804787, 18.490934>,  <21.220293, 34.085640, 18.456709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.979940, 34.804787, 18.490934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677645, 34.569824, 18.606735>,  <20.496267, 34.428848, 18.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677645, 34.569824, 18.606735>,  <20.979940, 34.804787, 18.490934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677645, 34.569824, 18.606735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223960, 0.647246, 0.728639,
		-0.615387, 0.485824, -0.620705,
		-0.755739, -0.587408, 0.289501,
		20.450924, 34.393600, 18.693586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433399, 35.236736, 18.731546>,  <20.979940, 34.804787, 18.490934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433399, 35.236736, 18.731546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311831, 34.885288, 18.878876>,  <20.238890, 34.674419, 18.967274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311831, 34.885288, 18.878876>,  <20.433399, 35.236736, 18.731546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311831, 34.885288, 18.878876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282657, 0.452361, 0.845857,
		-0.909801, 0.152964, -0.385830,
		-0.303920, -0.878619, 0.368322,
		20.220655, 34.621704, 18.989372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.801920, 35.328888, 18.966265>,  <20.433399, 35.236736, 18.731546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.801920, 35.328888, 18.966265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939533, 35.023682, 19.185154>,  <20.022100, 34.840557, 19.316488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939533, 35.023682, 19.185154>,  <19.801920, 35.328888, 18.966265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939533, 35.023682, 19.185154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231686, 0.495795, 0.836964,
		-0.909925, -0.414726, -0.006210,
		0.344032, -0.763014, 0.547222,
		20.042744, 34.794777, 19.349321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437300, 35.299267, 19.568428>,  <19.801920, 35.328888, 18.966265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437300, 35.299267, 19.568428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.750944, 35.087608, 19.698151>,  <19.939131, 34.960613, 19.775984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.750944, 35.087608, 19.698151>,  <19.437300, 35.299267, 19.568428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750944, 35.087608, 19.698151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060599, 0.585332, 0.808526,
		-0.617655, -0.614322, 0.491031,
		0.784111, -0.529146, 0.324305,
		19.986177, 34.928864, 19.795443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362175, 35.183105, 20.279146>,  <19.437300, 35.299267, 19.568428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362175, 35.183105, 20.279146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.754358, 35.110733, 20.248245>,  <19.989668, 35.067310, 20.229704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.754358, 35.110733, 20.248245>,  <19.362175, 35.183105, 20.279146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754358, 35.110733, 20.248245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163318, 0.529613, 0.832368,
		-0.109687, -0.828718, 0.548812,
		0.980457, -0.180931, -0.077252,
		20.048496, 35.056454, 20.225069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671869, 34.803570, 20.953674>,  <19.362175, 35.183105, 20.279146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.671869, 34.803570, 20.953674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.956001, 35.005577, 20.757557>,  <20.126480, 35.126781, 20.639887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.956001, 35.005577, 20.757557>,  <19.671869, 34.803570, 20.953674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956001, 35.005577, 20.757557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184340, 0.538781, 0.822030,
		0.679301, -0.674293, 0.289618,
		0.710330, 0.505018, -0.490294,
		20.169100, 35.157082, 20.610468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.179651, 34.818504, 21.417604>,  <19.671869, 34.803570, 20.953674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.179651, 34.818504, 21.417604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.299822, 35.096657, 21.156471>,  <20.371923, 35.263550, 20.999792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.299822, 35.096657, 21.156471>,  <20.179651, 34.818504, 21.417604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.299822, 35.096657, 21.156471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323801, 0.569445, 0.755570,
		0.897161, -0.438379, -0.054090,
		0.300425, 0.695382, -0.652831,
		20.389950, 35.305271, 20.960623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.863789, 34.926357, 21.734999>,  <20.179651, 34.818504, 21.417604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.863789, 34.926357, 21.734999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.738447, 35.215611, 21.488785>,  <20.663242, 35.389164, 21.341057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.738447, 35.215611, 21.488785>,  <20.863789, 34.926357, 21.734999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738447, 35.215611, 21.488785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412553, 0.687481, 0.597637,
		0.855341, -0.066668, -0.513758,
		-0.313356, 0.723135, -0.615535,
		20.644440, 35.432552, 21.304125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.478270, 35.294590, 21.692600>,  <20.863789, 34.926357, 21.734999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.478270, 35.294590, 21.692600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.197802, 35.546124, 21.558182>,  <21.029520, 35.697044, 21.477531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.197802, 35.546124, 21.558182>,  <21.478270, 35.294590, 21.692600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.197802, 35.546124, 21.558182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339441, 0.708890, 0.618268,
		0.627007, 0.319444, -0.710505,
		-0.701171, 0.628833, -0.336047,
		20.987450, 35.734772, 21.457367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.904388, 35.860474, 21.550924>,  <21.478270, 35.294590, 21.692600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.904388, 35.860474, 21.550924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.526340, 35.959522, 21.636181>,  <21.299511, 36.018951, 21.687334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.526340, 35.959522, 21.636181>,  <21.904388, 35.860474, 21.550924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.526340, 35.959522, 21.636181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324048, 0.627198, 0.708249,
		0.041696, 0.738449, -0.673019,
		-0.945121, 0.247622, 0.213141,
		21.242804, 36.033810, 21.700123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.025501, 36.498375, 21.773100>,  <21.904388, 35.860474, 21.550924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.025501, 36.498375, 21.773100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.647835, 36.447044, 21.894478>,  <21.421234, 36.416245, 21.967304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.647835, 36.447044, 21.894478>,  <22.025501, 36.498375, 21.773100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.647835, 36.447044, 21.894478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152297, 0.646721, 0.747367,
		-0.292153, 0.751854, -0.591069,
		-0.944167, -0.128327, 0.303446,
		21.364584, 36.408546, 21.985512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758549, 37.180668, 21.928076>,  <22.025501, 36.498375, 21.773100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758549, 37.180668, 21.928076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.520353, 36.930981, 22.130360>,  <21.377436, 36.781170, 22.251730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.520353, 36.930981, 22.130360>,  <21.758549, 37.180668, 21.928076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.520353, 36.930981, 22.130360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111405, 0.559247, 0.821481,
		-0.795602, 0.545521, -0.263485,
		-0.595489, -0.624219, 0.505712,
		21.341707, 36.743713, 22.282074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434956, 37.551311, 22.419216>,  <21.758549, 37.180668, 21.928076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434956, 37.551311, 22.419216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403099, 37.190411, 22.588734>,  <21.383986, 36.973869, 22.690443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403099, 37.190411, 22.588734>,  <21.434956, 37.551311, 22.419216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403099, 37.190411, 22.588734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230557, 0.396941, 0.888415,
		-0.969794, 0.168464, 0.176407,
		-0.079643, -0.902251, 0.423792,
		21.379206, 36.919735, 22.715872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.922077, 37.518047, 23.041885>,  <21.434956, 37.551311, 22.419216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.922077, 37.518047, 23.041885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137774, 37.186806, 23.103146>,  <21.267191, 36.988060, 23.139902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137774, 37.186806, 23.103146>,  <20.922077, 37.518047, 23.041885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137774, 37.186806, 23.103146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264743, 0.339327, 0.902645,
		-0.799456, -0.446198, 0.402215,
		0.539241, -0.828109, 0.153149,
		21.299545, 36.938374, 23.149090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647038, 37.251003, 23.710278>,  <20.922077, 37.518047, 23.041885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647038, 37.251003, 23.710278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014793, 37.103432, 23.655708>,  <21.235447, 37.014889, 23.622967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014793, 37.103432, 23.655708>,  <20.647038, 37.251003, 23.710278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.014793, 37.103432, 23.655708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253815, 0.291472, 0.922292,
		-0.300493, -0.882574, 0.361616,
		0.919392, -0.368926, -0.136425,
		21.290611, 36.992752, 23.614780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261049, 37.904396, 24.149227>,  <20.647038, 37.251003, 23.710278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261049, 37.904396, 24.149227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.137411, 37.875126, 23.769943>,  <20.063229, 37.857563, 23.542372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.137411, 37.875126, 23.769943>,  <20.261049, 37.904396, 24.149227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.137411, 37.875126, 23.769943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950302, -0.015243, 0.310955,
		-0.037208, 0.997202, -0.064829,
		-0.309097, -0.073177, -0.948211,
		20.044682, 37.853172, 23.485479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.826574, 38.479885, 23.868874>,  <20.261049, 37.904396, 24.149227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.826574, 38.479885, 23.868874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.729012, 38.126183, 23.709572>,  <19.670475, 37.913963, 23.613991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.729012, 38.126183, 23.709572>,  <19.826574, 38.479885, 23.868874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.729012, 38.126183, 23.709572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969570, 0.213425, 0.119929,
		-0.021050, 0.415386, -0.909402,
		-0.243906, -0.884253, -0.398254,
		19.655840, 37.860905, 23.590096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423136, 38.566902, 23.368078>,  <19.826574, 38.479885, 23.868874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.423136, 38.566902, 23.368078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342455, 38.190666, 23.477337>,  <19.294046, 37.964924, 23.542892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342455, 38.190666, 23.477337>,  <19.423136, 38.566902, 23.368078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342455, 38.190666, 23.477337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979322, 0.198134, -0.040894,
		-0.015655, -0.275746, -0.961103,
		-0.201703, -0.940589, 0.273146,
		19.281944, 37.908489, 23.559280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.951561, 38.324844, 22.806711>,  <19.423136, 38.566902, 23.368078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.951561, 38.324844, 22.806711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.900431, 38.128242, 23.151287>,  <18.869753, 38.010281, 23.358032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.900431, 38.128242, 23.151287>,  <18.951561, 38.324844, 22.806711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.900431, 38.128242, 23.151287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968239, 0.250023, -0.001020,
		-0.214879, -0.834211, -0.507857,
		-0.127827, -0.491508, 0.861441,
		18.862083, 37.980789, 23.409719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280289, 37.965473, 22.756639>,  <18.951561, 38.324844, 22.806711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280289, 37.965473, 22.756639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.343359, 37.997814, 23.150311>,  <18.381201, 38.017220, 23.386513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.343359, 37.997814, 23.150311>,  <18.280289, 37.965473, 22.756639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.343359, 37.997814, 23.150311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980175, 0.133903, 0.146037,
		-0.119977, -0.987691, 0.100357,
		0.157678, 0.080846, 0.984176,
		18.390663, 38.022068, 23.445562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<27.869913, 25.709393, 27.721920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.253639, 25.660702, 27.823822>,  <28.483875, 25.631487, 27.884964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.253639, 25.660702, 27.823822>,  <27.869913, 25.709393, 27.721920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253639, 25.660702, 27.823822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248461, 0.792525, -0.556930,
		-0.134109, 0.597568, 0.790524,
		0.959313, -0.121725, 0.254757,
		28.541433, 25.624184, 27.900249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147692, 26.399294, 28.028465>,  <27.869913, 25.709393, 27.721920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147692, 26.399294, 28.028465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.457163, 26.189053, 27.886951>,  <28.642845, 26.062908, 27.802044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.457163, 26.189053, 27.886951>,  <28.147692, 26.399294, 28.028465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457163, 26.189053, 27.886951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264005, 0.775044, -0.574116,
		0.575955, 0.350780, 0.738397,
		0.773678, -0.525605, -0.353782,
		28.689266, 26.031370, 27.780817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720682, 26.847403, 28.126652>,  <28.147692, 26.399294, 28.028465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720682, 26.847403, 28.126652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.876369, 26.581852, 27.871223>,  <28.969782, 26.422522, 27.717966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.876369, 26.581852, 27.871223>,  <28.720682, 26.847403, 28.126652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876369, 26.581852, 27.871223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493536, 0.735633, -0.463968,
		0.777773, -0.134573, 0.613971,
		0.389220, -0.663878, -0.638572,
		28.993135, 26.382689, 27.679651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571217, 26.773851, 28.179018>,  <28.720682, 26.847403, 28.126652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571217, 26.773851, 28.179018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.424755, 26.660526, 27.824467>,  <29.336878, 26.592531, 27.611736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.424755, 26.660526, 27.824467>,  <29.571217, 26.773851, 28.179018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424755, 26.660526, 27.824467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548336, 0.703898, -0.451503,
		0.751836, -0.651352, -0.102383,
		-0.366155, -0.283316, -0.886376,
		29.314909, 26.575531, 27.558554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157862, 26.912601, 27.694225>,  <29.571217, 26.773851, 28.179018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157862, 26.912601, 27.694225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.872591, 26.842514, 27.422733>,  <29.701429, 26.800461, 27.259838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.872591, 26.842514, 27.422733>,  <30.157862, 26.912601, 27.694225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872591, 26.842514, 27.422733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495356, 0.559122, -0.664835,
		0.495986, -0.810359, -0.311957,
		-0.713177, -0.175219, -0.678732,
		29.658638, 26.789949, 27.219114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433838, 26.718077, 27.021465>,  <30.157862, 26.912601, 27.694225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433838, 26.718077, 27.021465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.079702, 26.884377, 26.938206>,  <29.867220, 26.984156, 26.888250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.079702, 26.884377, 26.938206>,  <30.433838, 26.718077, 27.021465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079702, 26.884377, 26.938206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432219, 0.570963, -0.697989,
		-0.171343, -0.707923, -0.685191,
		-0.885341, 0.415748, -0.208147,
		29.814100, 27.009100, 26.875761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532637, 26.951880, 26.388489>,  <30.433838, 26.718077, 27.021465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532637, 26.951880, 26.388489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.199175, 27.159843, 26.463020>,  <29.999098, 27.284622, 26.507740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.199175, 27.159843, 26.463020>,  <30.532637, 26.951880, 26.388489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199175, 27.159843, 26.463020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285929, 0.694934, -0.659782,
		-0.472512, -0.496752, -0.727990,
		-0.833653, 0.519908, 0.186329,
		29.949080, 27.315815, 26.518919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254980, 27.201725, 25.783422>,  <30.532637, 26.951880, 26.388489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254980, 27.201725, 25.783422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.067167, 27.442242, 26.042030>,  <29.954479, 27.586552, 26.197195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.067167, 27.442242, 26.042030>,  <30.254980, 27.201725, 25.783422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067167, 27.442242, 26.042030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292380, 0.796832, -0.528747,
		-0.833099, -0.059233, -0.549943,
		-0.469531, 0.601291, 0.646521,
		29.926308, 27.622629, 26.235987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966841, 27.667997, 25.379772>,  <30.254980, 27.201725, 25.783422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966841, 27.667997, 25.379772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.980799, 27.834011, 25.743427>,  <29.989174, 27.933619, 25.961620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.980799, 27.834011, 25.743427>,  <29.966841, 27.667997, 25.379772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980799, 27.834011, 25.743427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217490, 0.884735, -0.412240,
		-0.975439, 0.212112, -0.059394,
		0.034893, 0.415033, 0.909137,
		29.991266, 27.958521, 26.016169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613733, 28.261158, 25.318602>,  <29.966841, 27.667997, 25.379772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613733, 28.261158, 25.318602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.793674, 28.330196, 25.669109>,  <29.901638, 28.371620, 25.879414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.793674, 28.330196, 25.669109>,  <29.613733, 28.261158, 25.318602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793674, 28.330196, 25.669109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100569, 0.965119, -0.241726,
		-0.887423, 0.196866, 0.416801,
		0.449851, 0.172596, 0.876268,
		29.928629, 28.381975, 25.931990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260981, 28.730762, 25.770903>,  <29.613733, 28.261158, 25.318602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260981, 28.730762, 25.770903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.641827, 28.748215, 25.891949>,  <29.870335, 28.758686, 25.964577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.641827, 28.748215, 25.891949>,  <29.260981, 28.730762, 25.770903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641827, 28.748215, 25.891949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065436, 0.937751, -0.341087,
		-0.298659, 0.344556, 0.889991,
		0.952114, 0.043631, 0.302614,
		29.927462, 28.761305, 25.982733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324774, 29.393618, 26.021221>,  <29.260981, 28.730762, 25.770903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324774, 29.393618, 26.021221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.708206, 29.286896, 25.981346>,  <29.938265, 29.222862, 25.957422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.708206, 29.286896, 25.981346>,  <29.324774, 29.393618, 26.021221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708206, 29.286896, 25.981346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205561, 0.890333, -0.406266,
		0.197149, 0.368947, 0.908301,
		0.958580, -0.266807, -0.099687,
		29.995781, 29.206854, 25.951441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697376, 29.931456, 26.329416>,  <29.324774, 29.393618, 26.021221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697376, 29.931456, 26.329416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.926222, 29.755322, 26.052639>,  <30.063530, 29.649641, 25.886572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.926222, 29.755322, 26.052639>,  <29.697376, 29.931456, 26.329416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926222, 29.755322, 26.052639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226309, 0.895659, -0.382857,
		0.788332, 0.062445, 0.612073,
		0.572116, -0.440336, -0.691945,
		30.097857, 29.623220, 25.845055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329689, 30.243679, 26.348446>,  <29.697376, 29.931456, 26.329416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329689, 30.243679, 26.348446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.324289, 30.094357, 25.977402>,  <30.321051, 30.004763, 25.754776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.324289, 30.094357, 25.977402>,  <30.329689, 30.243679, 26.348446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324289, 30.094357, 25.977402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412514, 0.842990, -0.345253,
		0.910851, -0.387313, 0.142615,
		-0.013498, -0.373304, -0.927611,
		30.320240, 29.982365, 25.699118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893490, 30.573469, 26.065701>,  <30.329689, 30.243679, 26.348446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893490, 30.573469, 26.065701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.665159, 30.432507, 25.769062>,  <30.528160, 30.347929, 25.591078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.665159, 30.432507, 25.769062>,  <30.893490, 30.573469, 26.065701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665159, 30.432507, 25.769062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264553, 0.776097, -0.572438,
		0.777314, -0.522934, -0.349745,
		-0.570784, -0.352438, -0.741615,
		30.493912, 30.326784, 25.546583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315321, 30.590374, 25.431911>,  <30.893490, 30.573469, 26.065701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315321, 30.590374, 25.431911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931358, 30.570206, 25.321613>,  <30.700981, 30.558105, 25.255434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931358, 30.570206, 25.321613>,  <31.315321, 30.590374, 25.431911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931358, 30.570206, 25.321613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090196, 0.875828, -0.474121,
		0.265412, -0.479983, -0.836165,
		-0.959907, -0.050419, -0.275748,
		30.643387, 30.555080, 25.238890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376482, 30.787531, 24.786217>,  <31.315321, 30.590374, 25.431911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376482, 30.787531, 24.786217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.987003, 30.821629, 24.870739>,  <30.753317, 30.842087, 24.921452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.987003, 30.821629, 24.870739>,  <31.376482, 30.787531, 24.786217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987003, 30.821629, 24.870739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057375, 0.805770, -0.589443,
		-0.220509, -0.586062, -0.779684,
		-0.973696, 0.085243, 0.211304,
		30.694895, 30.847202, 24.934130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045168, 30.785583, 24.163471>,  <31.376482, 30.787531, 24.786217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045168, 30.785583, 24.163471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.812044, 30.997898, 24.409592>,  <30.672171, 31.125288, 24.557264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.812044, 30.997898, 24.409592>,  <31.045168, 30.785583, 24.163471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812044, 30.997898, 24.409592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110758, 0.698240, -0.707243,
		-0.805026, -0.480337, -0.348151,
		-0.582808, 0.530789, 0.615303,
		30.637201, 31.157135, 24.594183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539804, 31.097452, 23.732464>,  <31.045168, 30.785583, 24.163471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539804, 31.097452, 23.732464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.526157, 31.309219, 24.071533>,  <30.517969, 31.436279, 24.274975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.526157, 31.309219, 24.071533>,  <30.539804, 31.097452, 23.732464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526157, 31.309219, 24.071533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218428, 0.823712, -0.523247,
		-0.975256, -0.203008, 0.087537,
		-0.034118, 0.529420, 0.847673,
		30.515923, 31.468046, 24.325836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141302, 31.525391, 23.485088>,  <30.539804, 31.097452, 23.732464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141302, 31.525391, 23.485088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.191908, 31.683601, 23.848969>,  <30.222271, 31.778528, 24.067297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.191908, 31.683601, 23.848969>,  <30.141302, 31.525391, 23.485088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191908, 31.683601, 23.848969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419205, 0.852471, -0.312346,
		-0.899034, -0.341833, 0.273658,
		0.126515, 0.395528, 0.909699,
		30.229862, 31.802259, 24.121878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543879, 31.964394, 23.513674>,  <30.141302, 31.525391, 23.485088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543879, 31.964394, 23.513674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.800220, 32.059914, 23.805504>,  <29.954025, 32.117226, 23.980602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.800220, 32.059914, 23.805504>,  <29.543879, 31.964394, 23.513674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800220, 32.059914, 23.805504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245224, 0.964273, -0.100218,
		-0.727441, -0.114684, 0.676518,
		0.640855, 0.238801, 0.729575,
		29.992477, 32.131554, 24.024376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218285, 32.291023, 24.039557>,  <29.543879, 31.964394, 23.513674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218285, 32.291023, 24.039557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597843, 32.416214, 24.055756>,  <29.825579, 32.491329, 24.065475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597843, 32.416214, 24.055756>,  <29.218285, 32.291023, 24.039557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597843, 32.416214, 24.055756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312985, 0.949738, -0.006201,
		-0.040403, -0.006791, 0.999161,
		0.948898, 0.312973, 0.040498,
		29.882513, 32.510105, 24.067905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145855, 32.973476, 23.631426>,  <29.218285, 32.291023, 24.039557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145855, 32.973476, 23.631426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.811945, 33.111958, 23.460175>,  <28.611599, 33.195045, 23.357424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.811945, 33.111958, 23.460175>,  <29.145855, 32.973476, 23.631426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811945, 33.111958, 23.460175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538483, -0.675532, 0.503679,
		-0.114839, 0.650999, 0.750342,
		-0.834774, 0.346205, -0.428129,
		28.561512, 33.215820, 23.331736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698441, 33.326256, 24.076344>,  <29.145855, 32.973476, 23.631426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698441, 33.326256, 24.076344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.478519, 33.191002, 23.770824>,  <28.346567, 33.109852, 23.587513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.478519, 33.191002, 23.770824>,  <28.698441, 33.326256, 24.076344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478519, 33.191002, 23.770824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542808, -0.550380, 0.634383,
		-0.634883, 0.763380, 0.119060,
		-0.549803, -0.338132, -0.763795,
		28.313578, 33.089561, 23.541685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986694, 33.292801, 24.359125>,  <28.698441, 33.326256, 24.076344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986694, 33.292801, 24.359125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.003660, 33.057632, 24.036003>,  <28.013840, 32.916531, 23.842131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.003660, 33.057632, 24.036003>,  <27.986694, 33.292801, 24.359125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003660, 33.057632, 24.036003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624120, -0.646957, 0.438088,
		-0.780177, 0.485586, -0.394374,
		0.042414, -0.587922, -0.807805,
		28.016384, 32.881256, 23.793661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349054, 32.992188, 24.213671>,  <27.986694, 33.292801, 24.359125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349054, 32.992188, 24.213671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.584484, 32.740677, 24.010410>,  <27.725742, 32.589771, 23.888454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.584484, 32.740677, 24.010410>,  <27.349054, 32.992188, 24.213671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584484, 32.740677, 24.010410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500597, -0.777014, 0.381644,
		-0.634809, 0.029751, -0.772096,
		0.588575, -0.628780, -0.508149,
		27.761057, 32.552044, 23.857965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893194, 32.478519, 23.904354>,  <27.349054, 32.992188, 24.213671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893194, 32.478519, 23.904354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.254740, 32.314358, 23.952679>,  <27.471666, 32.215858, 23.981674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.254740, 32.314358, 23.952679>,  <26.893194, 32.478519, 23.904354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254740, 32.314358, 23.952679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425299, -0.831369, 0.357697,
		-0.046363, -0.374690, -0.925990,
		0.903865, -0.410407, 0.120811,
		27.525900, 32.191235, 23.988922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815100, 31.737482, 23.956625>,  <26.893194, 32.478519, 23.904354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815100, 31.737482, 23.956625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.192108, 31.742294, 24.090199>,  <27.418312, 31.745182, 24.170343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.192108, 31.742294, 24.090199>,  <26.815100, 31.737482, 23.956625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192108, 31.742294, 24.090199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181591, -0.820463, 0.542094,
		0.280504, -0.571573, -0.771117,
		0.942519, 0.012031, 0.333936,
		27.474863, 31.745903, 24.190380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999580, 31.190502, 23.876451>,  <26.815100, 31.737482, 23.956625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999580, 31.190502, 23.876451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.270626, 31.316395, 24.142319>,  <27.433252, 31.391932, 24.301840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.270626, 31.316395, 24.142319>,  <26.999580, 31.190502, 23.876451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270626, 31.316395, 24.142319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135744, -0.834738, 0.533653,
		0.722783, -0.451834, -0.522906,
		0.677612, 0.314734, 0.664668,
		27.473909, 31.410814, 24.341719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397158, 30.527924, 24.034031>,  <26.999580, 31.190502, 23.876451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397158, 30.527924, 24.034031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.464628, 30.793396, 24.325531>,  <27.505110, 30.952679, 24.500431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.464628, 30.793396, 24.325531>,  <27.397158, 30.527924, 24.034031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464628, 30.793396, 24.325531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031225, -0.735376, 0.676939,
		0.985177, -0.136939, -0.103317,
		0.168676, 0.663679, 0.728752,
		27.515230, 30.992500, 24.544157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913830, 30.290617, 24.465786>,  <27.397158, 30.527924, 24.034031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913830, 30.290617, 24.465786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.717081, 30.545189, 24.703449>,  <27.599031, 30.697931, 24.846046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.717081, 30.545189, 24.703449>,  <27.913830, 30.290617, 24.465786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717081, 30.545189, 24.703449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094041, -0.639590, 0.762942,
		0.865575, 0.431144, 0.254745,
		-0.491870, 0.636428, 0.594158,
		27.569521, 30.736116, 24.881697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300594, 30.304321, 25.135534>,  <27.913830, 30.290617, 24.465786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300594, 30.304321, 25.135534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.930145, 30.421021, 25.231182>,  <27.707876, 30.491039, 25.288570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.930145, 30.421021, 25.231182>,  <28.300594, 30.304321, 25.135534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930145, 30.421021, 25.231182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039692, -0.705750, 0.707348,
		0.375127, 0.645600, 0.665192,
		-0.926123, 0.291748, 0.239121,
		27.652308, 30.508545, 25.302917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245060, 30.228777, 25.789122>,  <28.300594, 30.304321, 25.135534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245060, 30.228777, 25.789122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.857471, 30.301785, 25.722446>,  <27.624918, 30.345589, 25.682442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.857471, 30.301785, 25.722446>,  <28.245060, 30.228777, 25.789122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857471, 30.301785, 25.722446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239132, -0.521503, 0.819055,
		0.062564, 0.833500, 0.548966,
		-0.968969, 0.182519, -0.166689,
		27.566780, 30.356541, 25.672440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867880, 30.300406, 26.394484>,  <28.245060, 30.228777, 25.789122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867880, 30.300406, 26.394484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.557928, 30.204376, 26.160587>,  <27.371956, 30.146759, 26.020248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.557928, 30.204376, 26.160587>,  <27.867880, 30.300406, 26.394484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557928, 30.204376, 26.160587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321224, -0.647158, 0.691377,
		-0.544403, 0.723568, 0.424353,
		-0.774881, -0.240075, -0.584742,
		27.325464, 30.132353, 25.985165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259575, 30.164127, 26.811567>,  <27.867880, 30.300406, 26.394484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259575, 30.164127, 26.811567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.169748, 29.975319, 26.470566>,  <27.115852, 29.862034, 26.265965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.169748, 29.975319, 26.470566>,  <27.259575, 30.164127, 26.811567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169748, 29.975319, 26.470566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336540, -0.783453, 0.522438,
		-0.914500, 0.404224, 0.017083,
		-0.224566, -0.472021, -0.852506,
		27.102379, 29.833714, 26.214813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559650, 29.960152, 26.829397>,  <27.259575, 30.164127, 26.811567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559650, 29.960152, 26.829397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.753958, 29.724628, 26.570992>,  <26.870543, 29.583315, 26.415947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.753958, 29.724628, 26.570992>,  <26.559650, 29.960152, 26.829397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753958, 29.724628, 26.570992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299174, -0.806434, 0.510058,
		-0.821294, -0.054499, -0.567896,
		0.485768, -0.588808, -0.646015,
		26.899687, 29.547985, 26.377186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010475, 29.472879, 26.716438>,  <26.559650, 29.960152, 26.829397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010475, 29.472879, 26.716438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.358734, 29.316448, 26.597084>,  <26.567690, 29.222589, 26.525471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.358734, 29.316448, 26.597084>,  <26.010475, 29.472879, 26.716438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358734, 29.316448, 26.597084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289746, -0.897902, 0.331389,
		-0.397520, -0.202066, -0.895068,
		0.870646, -0.391076, -0.298387,
		26.619928, 29.199125, 26.507568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784935, 28.918978, 26.489895>,  <26.010475, 29.472879, 26.716438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784935, 28.918978, 26.489895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.175751, 28.834217, 26.498745>,  <26.410240, 28.783360, 26.504055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.175751, 28.834217, 26.498745>,  <25.784935, 28.918978, 26.489895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175751, 28.834217, 26.498745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209317, -0.935334, 0.285196,
		-0.039738, -0.283279, -0.958214,
		0.977040, -0.211903, 0.022126,
		26.468863, 28.770645, 26.505383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872057, 28.104301, 26.390905>,  <25.784935, 28.918978, 26.489895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872057, 28.104301, 26.390905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.225521, 28.235836, 26.524178>,  <26.437599, 28.314756, 26.604141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.225521, 28.235836, 26.524178>,  <25.872057, 28.104301, 26.390905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225521, 28.235836, 26.524178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130841, -0.856858, 0.498672,
		0.449473, -0.397063, -0.800197,
		0.883660, 0.328839, 0.333183,
		26.490620, 28.334488, 26.624132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369699, 27.547371, 26.222214>,  <25.872057, 28.104301, 26.390905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369699, 27.547371, 26.222214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.517467, 27.752743, 26.532032>,  <26.606129, 27.875965, 26.717922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.517467, 27.752743, 26.532032>,  <26.369699, 27.547371, 26.222214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517467, 27.752743, 26.532032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082404, -0.812122, 0.577640,
		0.925603, -0.277216, -0.257704,
		0.369418, 0.513429, 0.774546,
		26.628292, 27.906771, 26.764395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.810854, 27.048738, 26.496197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.774296, 27.302040, 26.803608>,  <26.752361, 27.454021, 26.988054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.774296, 27.302040, 26.803608>,  <26.810854, 27.048738, 26.496197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774296, 27.302040, 26.803608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018187, -0.772691, 0.634522,
		0.995649, 0.044014, 0.082137,
		-0.091394, 0.633254, 0.768529,
		26.746878, 27.492016, 27.034166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269012, 26.835789, 26.988855>,  <26.810854, 27.048738, 26.496197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269012, 26.835789, 26.988855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.022600, 27.053608, 27.216530>,  <26.874752, 27.184299, 27.353134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.022600, 27.053608, 27.216530>,  <27.269012, 26.835789, 26.988855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022600, 27.053608, 27.216530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041122, -0.743817, 0.667117,
		0.786648, 0.387558, 0.480607,
		-0.616031, 0.544550, 0.569185,
		26.837791, 27.216972, 27.387285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465731, 26.772415, 27.695215>,  <27.269012, 26.835789, 26.988855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465731, 26.772415, 27.695215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.095606, 26.916283, 27.743271>,  <26.873531, 27.002604, 27.772104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.095606, 26.916283, 27.743271>,  <27.465731, 26.772415, 27.695215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095606, 26.916283, 27.743271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219365, -0.766140, 0.604077,
		0.309312, 0.532606, 0.787818,
		-0.925314, 0.359668, 0.120141,
		26.818012, 27.024183, 27.779314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385027, 26.815868, 28.466587>,  <27.465731, 26.772415, 27.695215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385027, 26.815868, 28.466587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.023432, 26.811852, 28.295612>,  <26.806475, 26.809443, 28.193027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.023432, 26.811852, 28.295612>,  <27.385027, 26.815868, 28.466587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023432, 26.811852, 28.295612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309269, -0.674945, 0.669927,
		-0.295224, 0.737800, 0.607038,
		-0.903989, -0.010040, -0.427439,
		26.752235, 26.808840, 28.167381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912231, 26.739964, 28.971657>,  <27.385027, 26.815868, 28.466587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912231, 26.739964, 28.971657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.701628, 26.624752, 28.651699>,  <26.575266, 26.555624, 28.459724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.701628, 26.624752, 28.651699>,  <26.912231, 26.739964, 28.971657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701628, 26.624752, 28.651699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490113, -0.665952, 0.562404,
		-0.694679, 0.688147, 0.209461,
		-0.526508, -0.288031, -0.799892,
		26.543676, 26.538343, 28.411732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214376, 26.687712, 29.200180>,  <26.912231, 26.739964, 28.971657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214376, 26.687712, 29.200180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.274731, 26.469090, 28.870693>,  <26.310944, 26.337915, 28.673002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.274731, 26.469090, 28.870693>,  <26.214376, 26.687712, 29.200180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274731, 26.469090, 28.870693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584980, -0.721069, 0.371293,
		-0.796889, 0.425834, -0.428525,
		0.150887, -0.546558, -0.823716,
		26.319998, 26.305122, 28.623579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566456, 26.562866, 29.083475>,  <26.214376, 26.687712, 29.200180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566456, 26.562866, 29.083475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.786583, 26.291489, 28.888802>,  <25.918659, 26.128662, 28.771997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.786583, 26.291489, 28.888802>,  <25.566456, 26.562866, 29.083475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786583, 26.291489, 28.888802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416375, -0.728229, 0.544348,
		-0.723701, -0.096955, -0.683269,
		0.550353, -0.678441, -0.486650,
		25.951679, 26.087955, 28.742796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071121, 26.153801, 28.873043>,  <25.566456, 26.562866, 29.083475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071121, 26.153801, 28.873043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.411337, 25.944416, 28.852749>,  <25.615465, 25.818785, 28.840572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.411337, 25.944416, 28.852749>,  <25.071121, 26.153801, 28.873043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411337, 25.944416, 28.852749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452047, -0.776971, 0.438144,
		-0.268771, -0.349723, -0.897472,
		0.850539, -0.523460, -0.050735,
		25.666498, 25.787378, 28.837528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862179, 25.608795, 28.518095>,  <25.071121, 26.153801, 28.873043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862179, 25.608795, 28.518095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.194305, 25.505695, 28.715736>,  <25.393581, 25.443836, 28.834320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.194305, 25.505695, 28.715736>,  <24.862179, 25.608795, 28.518095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194305, 25.505695, 28.715736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444244, -0.841449, 0.307589,
		0.336481, -0.474898, -0.813174,
		0.830318, -0.257749, 0.494103,
		25.443401, 25.428371, 28.863968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803850, 24.955545, 28.530807>,  <24.862179, 25.608795, 28.518095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803850, 24.955545, 28.530807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.072794, 24.998856, 28.823711>,  <25.234161, 25.024841, 28.999454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.072794, 24.998856, 28.823711>,  <24.803850, 24.955545, 28.530807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072794, 24.998856, 28.823711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525707, -0.626579, 0.575353,
		0.521118, -0.771799, -0.364365,
		0.672361, 0.108277, 0.732262,
		25.274502, 25.031340, 29.043390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767748, 24.400251, 28.820328>,  <24.803850, 24.955545, 28.530807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767748, 24.400251, 28.820328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.959776, 24.607979, 29.103127>,  <25.074993, 24.732615, 29.272806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.959776, 24.607979, 29.103127>,  <24.767748, 24.400251, 28.820328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959776, 24.607979, 29.103127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535819, -0.464536, 0.705057,
		0.694573, -0.717298, 0.055250,
		0.480070, 0.519317, 0.706996,
		25.103796, 24.763775, 29.315226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751554, 23.968689, 29.391361>,  <24.767748, 24.400251, 28.820328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751554, 23.968689, 29.391361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.827190, 24.322956, 29.560989>,  <24.872572, 24.535517, 29.662766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.827190, 24.322956, 29.560989>,  <24.751554, 23.968689, 29.391361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827190, 24.322956, 29.560989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635759, -0.218707, 0.740255,
		0.748368, -0.409581, 0.521716,
		0.189091, 0.885669, 0.424068,
		24.883919, 24.588657, 29.688210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854076, 23.832502, 30.122320>,  <24.751554, 23.968689, 29.391361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854076, 23.832502, 30.122320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.771845, 24.223927, 30.117382>,  <24.722506, 24.458782, 30.114418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.771845, 24.223927, 30.117382>,  <24.854076, 23.832502, 30.122320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.771845, 24.223927, 30.117382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559037, -0.107072, 0.822201,
		0.803252, 0.175931, 0.569064,
		-0.205581, 0.978562, -0.012346,
		24.710171, 24.517496, 30.113678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.981489, 24.050486, 30.795734>,  <24.854076, 23.832502, 30.122320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.981489, 24.050486, 30.795734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.752222, 24.336403, 30.635460>,  <24.614662, 24.507954, 30.539295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.752222, 24.336403, 30.635460>,  <24.981489, 24.050486, 30.795734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752222, 24.336403, 30.635460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655873, -0.107050, 0.747242,
		0.491231, 0.691094, 0.530172,
		-0.573169, 0.714794, -0.400684,
		24.580271, 24.550840, 30.515255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860209, 24.526419, 31.395456>,  <24.981489, 24.050486, 30.795734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860209, 24.526419, 31.395456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.577290, 24.600739, 31.122631>,  <24.407537, 24.645330, 30.958937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.577290, 24.600739, 31.122631>,  <24.860209, 24.526419, 31.395456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577290, 24.600739, 31.122631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703567, -0.091224, 0.704750,
		0.068721, 0.978344, 0.195245,
		-0.707299, 0.185799, -0.682061,
		24.365101, 24.656479, 30.918013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379299, 24.931845, 31.718842>,  <24.860209, 24.526419, 31.395456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379299, 24.931845, 31.718842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.183514, 24.778210, 31.405689>,  <24.066042, 24.686028, 31.217798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.183514, 24.778210, 31.405689>,  <24.379299, 24.931845, 31.718842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183514, 24.778210, 31.405689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845572, -0.010398, 0.533760,
		-0.213152, 0.923237, -0.319686,
		-0.489463, -0.384090, -0.782880,
		24.036674, 24.662983, 31.170826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.682281, 25.187925, 31.808002>,  <24.379299, 24.931845, 31.718842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.682281, 25.187925, 31.808002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.643608, 24.876949, 31.559410>,  <23.620403, 24.690363, 31.410255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.643608, 24.876949, 31.559410>,  <23.682281, 25.187925, 31.808002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.643608, 24.876949, 31.559410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771294, -0.336136, 0.540479,
		-0.629093, 0.531600, -0.567136,
		-0.096684, -0.777441, -0.621481,
		23.614603, 24.643717, 31.372965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.835152, 25.056606, 31.689240>,  <23.682281, 25.187925, 31.808002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.835152, 25.056606, 31.689240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.025698, 24.714516, 31.607590>,  <23.140026, 24.509262, 31.558599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.025698, 24.714516, 31.607590>,  <22.835152, 25.056606, 31.689240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.025698, 24.714516, 31.607590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576282, -0.479032, 0.662139,
		-0.664060, -0.197786, -0.721044,
		0.476366, -0.855225, -0.204125,
		23.168608, 24.457949, 31.546352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.301788, 24.541332, 31.699549>,  <22.835152, 25.056606, 31.689240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.301788, 24.541332, 31.699549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.644613, 24.337090, 31.727039>,  <22.850307, 24.214544, 31.743534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.644613, 24.337090, 31.727039>,  <22.301788, 24.541332, 31.699549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.644613, 24.337090, 31.727039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384755, -0.545612, 0.744494,
		-0.342646, -0.664521, -0.664083,
		0.857063, -0.510607, 0.068726,
		22.901731, 24.183907, 31.747658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.170431, 23.766857, 31.841461>,  <22.301788, 24.541332, 31.699549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.170431, 23.766857, 31.841461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.548231, 23.822655, 31.960430>,  <22.774912, 23.856133, 32.031811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.548231, 23.822655, 31.960430>,  <22.170431, 23.766857, 31.841461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.548231, 23.822655, 31.960430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149330, -0.624117, 0.766928,
		0.292608, -0.768778, -0.568648,
		0.944500, 0.139493, 0.297423,
		22.831581, 23.864502, 32.049656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.304558, 23.126402, 32.005795>,  <22.170431, 23.766857, 31.841461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.304558, 23.126402, 32.005795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.580492, 23.344620, 32.196167>,  <22.746052, 23.475550, 32.310390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.580492, 23.344620, 32.196167>,  <22.304558, 23.126402, 32.005795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.580492, 23.344620, 32.196167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135492, -0.548491, 0.825106,
		0.711176, -0.633670, -0.304451,
		0.689834, 0.545545, 0.475931,
		22.787443, 23.508284, 32.338947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825302, 22.659107, 32.260166>,  <22.304558, 23.126402, 32.005795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825302, 22.659107, 32.260166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.817974, 22.986816, 32.489410>,  <22.813578, 23.183443, 32.626957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.817974, 22.986816, 32.489410>,  <22.825302, 22.659107, 32.260166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.817974, 22.986816, 32.489410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210263, -0.563543, 0.798880,
		0.977473, -0.105868, 0.182588,
		-0.018320, 0.819275, 0.573108,
		22.812477, 23.232599, 32.661343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.336035, 22.682861, 32.766682>,  <22.825302, 22.659107, 32.260166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.336035, 22.682861, 32.766682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.049030, 22.921200, 32.910984>,  <22.876827, 23.064203, 32.997566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.049030, 22.921200, 32.910984>,  <23.336035, 22.682861, 32.766682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.049030, 22.921200, 32.910984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106895, -0.605982, 0.788263,
		0.688297, 0.527024, 0.498491,
		-0.717510, 0.595845, 0.360759,
		22.833776, 23.099953, 33.019211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.682051, 22.406126, 33.340519>,  <23.336035, 22.682861, 32.766682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.682051, 22.406126, 33.340519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.964075, 22.333488, 33.614719>,  <24.133289, 22.289906, 33.779240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.964075, 22.333488, 33.614719>,  <23.682051, 22.406126, 33.340519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.964075, 22.333488, 33.614719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614514, 0.638899, -0.462797,
		-0.353927, 0.747551, 0.562053,
		0.705059, -0.181593, 0.685504,
		24.175592, 22.279011, 33.820370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.053637, 23.116312, 33.460739>,  <23.682051, 22.406126, 33.340519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.053637, 23.116312, 33.460739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.296522, 22.819691, 33.574856>,  <24.442253, 22.641718, 33.643326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.296522, 22.819691, 33.574856>,  <24.053637, 23.116312, 33.460739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296522, 22.819691, 33.574856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783279, 0.498459, -0.371501,
		0.133283, 0.449041, 0.883514,
		0.607215, -0.741553, 0.285289,
		24.478687, 22.597225, 33.660442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709614, 23.365770, 33.756683>,  <24.053637, 23.116312, 33.460739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709614, 23.365770, 33.756683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.839010, 22.995895, 33.676380>,  <24.916647, 22.773970, 33.628197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.839010, 22.995895, 33.676380>,  <24.709614, 23.365770, 33.756683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839010, 22.995895, 33.676380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819330, 0.379863, -0.429421,
		0.473342, -0.025576, 0.880507,
		0.323489, -0.924689, -0.200761,
		24.936056, 22.718489, 33.616154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439445, 23.373823, 33.950809>,  <24.709614, 23.365770, 33.756683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439445, 23.373823, 33.950809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.401279, 23.071682, 33.691475>,  <25.378380, 22.890398, 33.535873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.401279, 23.071682, 33.691475>,  <25.439445, 23.373823, 33.950809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401279, 23.071682, 33.691475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883442, 0.235883, -0.404833,
		0.458722, -0.611395, 0.644803,
		-0.095414, -0.755351, -0.648337,
		25.372656, 22.845078, 33.496975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171806, 23.085579, 33.789776>,  <25.439445, 23.373823, 33.950809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171806, 23.085579, 33.789776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.936855, 22.920086, 33.511551>,  <25.795885, 22.820791, 33.344616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.936855, 22.920086, 33.511551>,  <26.171806, 23.085579, 33.789776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936855, 22.920086, 33.511551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724308, 0.114691, -0.679870,
		0.361058, -0.903146, 0.232301,
		-0.587379, -0.413730, -0.695566,
		25.760641, 22.795967, 33.302879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495197, 22.459892, 33.502079>,  <26.171806, 23.085579, 33.789776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495197, 22.459892, 33.502079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.236099, 22.619389, 33.242409>,  <26.080641, 22.715086, 33.086605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.236099, 22.619389, 33.242409>,  <26.495197, 22.459892, 33.502079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236099, 22.619389, 33.242409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666506, -0.116175, -0.736391,
		-0.369049, -0.909675, -0.190512,
		-0.647744, 0.398742, -0.649178,
		26.041777, 22.739012, 33.047657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811380, 22.196779, 32.830738>,  <26.495197, 22.459892, 33.502079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811380, 22.196779, 32.830738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.547533, 22.484814, 32.744595>,  <26.389225, 22.657635, 32.692909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.547533, 22.484814, 32.744595>,  <26.811380, 22.196779, 32.830738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547533, 22.484814, 32.744595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617255, 0.355521, -0.701856,
		-0.428833, -0.595887, -0.678985,
		-0.659620, 0.720086, -0.215355,
		26.349648, 22.700840, 32.679989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769436, 22.096790, 32.127850>,  <26.811380, 22.196779, 32.830738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769436, 22.096790, 32.127850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.636568, 22.468254, 32.193886>,  <26.556849, 22.691132, 32.233509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.636568, 22.468254, 32.193886>,  <26.769436, 22.096790, 32.127850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636568, 22.468254, 32.193886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560528, 0.335120, -0.757300,
		-0.758599, -0.159012, -0.631856,
		-0.332167, 0.928660, 0.165091,
		26.536919, 22.746853, 32.243412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426308, 22.355324, 31.657003>,  <26.769436, 22.096790, 32.127850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426308, 22.355324, 31.657003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.546486, 22.703781, 31.812359>,  <26.618593, 22.912855, 31.905573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.546486, 22.703781, 31.812359>,  <26.426308, 22.355324, 31.657003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546486, 22.703781, 31.812359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487112, 0.209953, -0.847727,
		-0.820034, 0.443883, -0.361264,
		0.300444, 0.871141, 0.388389,
		26.636620, 22.965124, 31.928875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347919, 22.773382, 31.107029>,  <26.426308, 22.355324, 31.657003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347919, 22.773382, 31.107029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.562019, 22.994900, 31.362160>,  <26.690479, 23.127810, 31.515238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.562019, 22.994900, 31.362160>,  <26.347919, 22.773382, 31.107029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562019, 22.994900, 31.362160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500651, 0.400186, -0.767594,
		-0.680337, 0.730182, -0.063058,
		0.535248, 0.553792, 0.637827,
		26.722593, 23.161037, 31.553509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219143, 23.497458, 30.888027>,  <26.347919, 22.773382, 31.107029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219143, 23.497458, 30.888027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.563448, 23.477737, 31.090672>,  <26.770031, 23.465906, 31.212257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.563448, 23.477737, 31.090672>,  <26.219143, 23.497458, 30.888027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563448, 23.477737, 31.090672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448063, 0.545622, -0.708193,
		-0.241503, 0.836580, 0.491741,
		0.860765, -0.049300, 0.506610,
		26.821678, 23.462948, 31.242655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520483, 24.091455, 30.796034>,  <26.219143, 23.497458, 30.888027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520483, 24.091455, 30.796034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.833328, 23.892689, 30.946430>,  <27.021036, 23.773428, 31.036669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.833328, 23.892689, 30.946430>,  <26.520483, 24.091455, 30.796034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833328, 23.892689, 30.946430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604342, 0.457817, -0.652053,
		0.151881, 0.737208, 0.658374,
		0.782114, -0.496918, 0.375992,
		27.067963, 23.743614, 31.059227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004269, 24.575159, 30.877726>,  <26.520483, 24.091455, 30.796034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004269, 24.575159, 30.877726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.215368, 24.235401, 30.878799>,  <27.342028, 24.031546, 30.879444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.215368, 24.235401, 30.878799>,  <27.004269, 24.575159, 30.877726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215368, 24.235401, 30.878799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671210, 0.415098, -0.614142,
		0.520536, 0.325914, 0.789191,
		0.527749, -0.849396, 0.002683,
		27.373693, 23.980583, 30.879604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729185, 24.831421, 30.841684>,  <27.004269, 24.575159, 30.877726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729185, 24.831421, 30.841684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.708549, 24.464840, 30.682964>,  <27.696169, 24.244890, 30.587732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.708549, 24.464840, 30.682964>,  <27.729185, 24.831421, 30.841684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708549, 24.464840, 30.682964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556050, 0.303684, -0.773682,
		0.829546, -0.260555, 0.493927,
		-0.051589, -0.916453, -0.396802,
		27.693073, 24.189903, 30.563923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351416, 24.875343, 30.399933>,  <27.729185, 24.831421, 30.841684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351416, 24.875343, 30.399933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.164888, 24.542767, 30.279102>,  <28.052971, 24.343220, 30.206604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.164888, 24.542767, 30.279102>,  <28.351416, 24.875343, 30.399933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164888, 24.542767, 30.279102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331525, 0.152333, -0.931067,
		0.820145, -0.534320, 0.204609,
		-0.466319, -0.831443, -0.302075,
		28.024992, 24.293333, 30.188480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855047, 24.462154, 30.086349>,  <28.351416, 24.875343, 30.399933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855047, 24.462154, 30.086349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.496342, 24.348499, 29.950653>,  <28.281118, 24.280306, 29.869236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.496342, 24.348499, 29.950653>,  <28.855047, 24.462154, 30.086349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496342, 24.348499, 29.950653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275529, 0.241362, -0.930499,
		0.346269, -0.927907, -0.138156,
		-0.896762, -0.284137, -0.339241,
		28.227314, 24.263258, 29.848881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982883, 24.037809, 29.637014>,  <28.855047, 24.462154, 30.086349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982883, 24.037809, 29.637014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610723, 24.153233, 29.546604>,  <28.387428, 24.222486, 29.492357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610723, 24.153233, 29.546604>,  <28.982883, 24.037809, 29.637014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610723, 24.153233, 29.546604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311601, 0.297926, -0.902300,
		-0.193028, -0.909930, -0.367105,
		-0.930400, 0.288560, -0.226027,
		28.331604, 24.239799, 29.478796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814734, 23.858633, 28.932009>,  <28.982883, 24.037809, 29.637014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814734, 23.858633, 28.932009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.552094, 24.148743, 29.014812>,  <28.394510, 24.322809, 29.064495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.552094, 24.148743, 29.014812>,  <28.814734, 23.858633, 28.932009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552094, 24.148743, 29.014812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348058, 0.534855, -0.769926,
		-0.669128, -0.433482, -0.603624,
		-0.656600, 0.725275, 0.207009,
		28.355114, 24.366325, 29.076916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571301, 24.005695, 28.292963>,  <28.814734, 23.858633, 28.932009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571301, 24.005695, 28.292963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.474949, 24.333488, 28.500973>,  <28.417137, 24.530165, 28.625778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.474949, 24.333488, 28.500973>,  <28.571301, 24.005695, 28.292963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474949, 24.333488, 28.500973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168629, 0.562991, -0.809076,
		-0.955793, -0.107199, -0.273802,
		-0.240880, 0.819481, 0.520027,
		28.402685, 24.579332, 28.656981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234959, 24.326847, 27.877666>,  <28.571301, 24.005695, 28.292963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234959, 24.326847, 27.877666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.349623, 24.599411, 28.147038>,  <28.418421, 24.762949, 28.308661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.349623, 24.599411, 28.147038>,  <28.234959, 24.326847, 27.877666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349623, 24.599411, 28.147038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188466, 0.649082, -0.737002,
		-0.939312, 0.338186, 0.057641,
		0.286658, 0.681412, 0.673428,
		28.435619, 24.803835, 28.349066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972778, 24.992287, 27.611279>,  <28.234959, 24.326847, 27.877666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972778, 24.992287, 27.611279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.252642, 25.132668, 27.860214>,  <28.420561, 25.216896, 28.009577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.252642, 25.132668, 27.860214>,  <27.972778, 24.992287, 27.611279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252642, 25.132668, 27.860214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113487, 0.805397, -0.581770,
		-0.705405, 0.477669, 0.523675,
		0.699660, 0.350954, 0.622341,
		28.462540, 25.237953, 28.046917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.025612, 31.450140, 17.275667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.422523, 31.441219, 17.226868>,  <21.660671, 31.435867, 17.197588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.422523, 31.441219, 17.226868>,  <21.025612, 31.450140, 17.275667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422523, 31.441219, 17.226868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115023, 0.533362, 0.838030,
		0.046381, -0.845593, 0.531809,
		0.992279, -0.022301, -0.122000,
		21.720207, 31.434528, 17.190268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.401539, 31.278048, 17.846420>,  <21.025612, 31.450140, 17.275667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.401539, 31.278048, 17.846420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.718805, 31.448185, 17.672077>,  <21.909164, 31.550266, 17.567471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.718805, 31.448185, 17.672077>,  <21.401539, 31.278048, 17.846420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.718805, 31.448185, 17.672077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230404, 0.452915, 0.861268,
		0.563739, -0.783552, 0.261236,
		0.793166, 0.425341, -0.435860,
		21.956755, 31.575787, 17.541319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.876963, 31.287361, 18.364777>,  <21.401539, 31.278048, 17.846420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.876963, 31.287361, 18.364777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.996090, 31.557674, 18.095074>,  <22.067566, 31.719862, 17.933252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.996090, 31.557674, 18.095074>,  <21.876963, 31.287361, 18.364777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.996090, 31.557674, 18.095074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165419, 0.659089, 0.733648,
		0.940181, -0.330029, 0.084502,
		0.297819, 0.675783, -0.674256,
		22.085436, 31.760408, 17.892797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537563, 31.398512, 18.649195>,  <21.876963, 31.287361, 18.364777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537563, 31.398512, 18.649195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.472706, 31.713085, 18.410789>,  <22.433790, 31.901829, 18.267746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.472706, 31.713085, 18.410789>,  <22.537563, 31.398512, 18.649195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.472706, 31.713085, 18.410789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329736, 0.612468, 0.718441,
		0.930045, -0.080035, -0.358624,
		-0.162145, 0.786434, -0.596013,
		22.424063, 31.949015, 18.231985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.181126, 31.824722, 18.600254>,  <22.537563, 31.398512, 18.649195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.181126, 31.824722, 18.600254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.886045, 32.077339, 18.504795>,  <22.708998, 32.228909, 18.447519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.886045, 32.077339, 18.504795>,  <23.181126, 31.824722, 18.600254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.886045, 32.077339, 18.504795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302166, 0.624960, 0.719806,
		0.603733, 0.458890, -0.651864,
		-0.737701, 0.631542, -0.238648,
		22.664736, 32.266800, 18.433201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.490166, 32.385235, 18.640257>,  <23.181126, 31.824722, 18.600254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.490166, 32.385235, 18.640257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.114414, 32.522247, 18.634052>,  <22.888964, 32.604454, 18.630329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.114414, 32.522247, 18.634052>,  <23.490166, 32.385235, 18.640257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.114414, 32.522247, 18.634052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261626, 0.745278, 0.613280,
		0.221627, 0.572044, -0.789713,
		-0.939379, 0.342529, -0.015512,
		22.832600, 32.625008, 18.629398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.596401, 33.080116, 18.676783>,  <23.490166, 32.385235, 18.640257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.596401, 33.080116, 18.676783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.212341, 33.017471, 18.769379>,  <22.981905, 32.979885, 18.824936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.212341, 33.017471, 18.769379>,  <23.596401, 33.080116, 18.676783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.212341, 33.017471, 18.769379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038022, 0.747366, 0.663323,
		-0.276891, 0.645691, -0.711628,
		-0.960149, -0.156611, 0.231489,
		22.924297, 32.970490, 18.838825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.134699, 33.777897, 18.525465>,  <23.596401, 33.080116, 18.676783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.134699, 33.777897, 18.525465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.953987, 33.569687, 18.815277>,  <22.845560, 33.444759, 18.989164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.953987, 33.569687, 18.815277>,  <23.134699, 33.777897, 18.525465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.953987, 33.569687, 18.815277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179623, 0.848578, 0.497645,
		-0.873859, 0.094684, -0.476870,
		-0.451781, -0.520529, 0.724530,
		22.818453, 33.413528, 19.032637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.661190, 34.202991, 18.727552>,  <23.134699, 33.777897, 18.525465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.661190, 34.202991, 18.727552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.686213, 33.936176, 19.024509>,  <22.701225, 33.776089, 19.202684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.686213, 33.936176, 19.024509>,  <22.661190, 34.202991, 18.727552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686213, 33.936176, 19.024509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048097, 0.745001, 0.665328,
		-0.996882, -0.005913, 0.078687,
		0.062556, -0.667038, 0.742393,
		22.704979, 33.736065, 19.247227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154818, 34.490681, 19.256908>,  <22.661190, 34.202991, 18.727552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154818, 34.490681, 19.256908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.419003, 34.257477, 19.446178>,  <22.577515, 34.117554, 19.559740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.419003, 34.257477, 19.446178>,  <22.154818, 34.490681, 19.256908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419003, 34.257477, 19.446178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004046, 0.632930, 0.774198,
		-0.750848, -0.509415, 0.420386,
		0.660463, -0.583006, 0.473173,
		22.617142, 34.082577, 19.588131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.983335, 34.447441, 20.038580>,  <22.154818, 34.490681, 19.256908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.983335, 34.447441, 20.038580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.373610, 34.370266, 19.996990>,  <22.607775, 34.323963, 19.972036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.373610, 34.370266, 19.996990>,  <21.983335, 34.447441, 20.038580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.373610, 34.370266, 19.996990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176816, 0.412617, 0.893579,
		-0.129501, -0.890238, 0.436699,
		0.975687, -0.192935, -0.103974,
		22.666315, 34.312386, 19.965797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.190353, 34.386742, 20.730936>,  <21.983335, 34.447441, 20.038580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.190353, 34.386742, 20.730936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.537697, 34.439785, 20.539783>,  <22.746103, 34.471611, 20.425093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.537697, 34.439785, 20.539783>,  <22.190353, 34.386742, 20.730936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.537697, 34.439785, 20.539783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407623, 0.358014, 0.840041,
		0.282481, -0.924252, 0.256832,
		0.868360, 0.132605, -0.477878,
		22.798204, 34.479568, 20.396420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.706453, 34.240429, 21.097813>,  <22.190353, 34.386742, 20.730936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.706453, 34.240429, 21.097813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.911413, 34.478882, 20.850563>,  <23.034389, 34.621952, 20.702213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.911413, 34.478882, 20.850563>,  <22.706453, 34.240429, 21.097813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.911413, 34.478882, 20.850563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422310, 0.451820, 0.785820,
		0.747732, -0.663693, -0.020240,
		0.512398, 0.596130, -0.618124,
		23.065132, 34.657722, 20.665127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.369808, 34.272728, 21.313871>,  <22.706453, 34.240429, 21.097813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.369808, 34.272728, 21.313871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.356852, 34.592968, 21.074543>,  <23.349077, 34.785110, 20.930946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.356852, 34.592968, 21.074543>,  <23.369808, 34.272728, 21.313871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.356852, 34.592968, 21.074543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402296, 0.558445, 0.725463,
		0.914936, -0.217205, -0.340167,
		-0.032390, 0.800600, -0.598323,
		23.347134, 34.833149, 20.895046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.074722, 34.603168, 21.338018>,  <23.369808, 34.272728, 21.313871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.074722, 34.603168, 21.338018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.805765, 34.868893, 21.207428>,  <23.644390, 35.028328, 21.129074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.805765, 34.868893, 21.207428>,  <24.074722, 34.603168, 21.338018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.805765, 34.868893, 21.207428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526818, 0.739325, 0.419358,
		0.519952, 0.109981, -0.847085,
		-0.672393, 0.664307, -0.326474,
		23.604048, 35.068184, 21.109486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472994, 35.171326, 21.134703>,  <24.074722, 34.603168, 21.338018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472994, 35.171326, 21.134703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.104879, 35.296070, 21.229206>,  <23.884010, 35.370918, 21.285908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.104879, 35.296070, 21.229206>,  <24.472994, 35.171326, 21.134703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.104879, 35.296070, 21.229206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379516, 0.564788, 0.732791,
		0.095092, 0.764041, -0.638122,
		-0.920285, 0.311860, 0.236258,
		23.828794, 35.389629, 21.300083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596022, 35.789600, 21.390696>,  <24.472994, 35.171326, 21.134703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596022, 35.789600, 21.390696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.213860, 35.753510, 21.503162>,  <23.984562, 35.731853, 21.570642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.213860, 35.753510, 21.503162>,  <24.596022, 35.789600, 21.390696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213860, 35.753510, 21.503162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196992, 0.514577, 0.834509,
		-0.219978, 0.852684, -0.473857,
		-0.955408, -0.090228, 0.281168,
		23.927237, 35.726440, 21.587513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333530, 36.447628, 21.549202>,  <24.596022, 35.789600, 21.390696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333530, 36.447628, 21.549202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.084188, 36.202465, 21.743427>,  <23.934584, 36.055367, 21.859962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.084188, 36.202465, 21.743427>,  <24.333530, 36.447628, 21.549202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.084188, 36.202465, 21.743427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230811, 0.449076, 0.863167,
		-0.747099, 0.650131, -0.138466,
		-0.623353, -0.612912, 0.485562,
		23.897182, 36.018593, 21.889095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010071, 36.835472, 22.037148>,  <24.333530, 36.447628, 21.549202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010071, 36.835472, 22.037148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.991032, 36.462009, 22.179142>,  <23.979609, 36.237930, 22.264338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.991032, 36.462009, 22.179142>,  <24.010071, 36.835472, 22.037148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.991032, 36.462009, 22.179142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320169, 0.322377, 0.890823,
		-0.946164, 0.156054, 0.283585,
		-0.047596, -0.933659, 0.354985,
		23.976753, 36.181911, 22.285637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.601616, 36.869770, 22.649342>,  <24.010071, 36.835472, 22.037148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.601616, 36.869770, 22.649342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775391, 36.512020, 22.691986>,  <23.879656, 36.297371, 22.717573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775391, 36.512020, 22.691986>,  <23.601616, 36.869770, 22.649342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.775391, 36.512020, 22.691986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152661, 0.189769, 0.969888,
		-0.887672, -0.405078, 0.218978,
		0.434435, -0.894371, 0.106613,
		23.905722, 36.243710, 22.723970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.198082, 36.470112, 23.236715>,  <23.601616, 36.869770, 22.649342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.198082, 36.470112, 23.236715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.581209, 36.361404, 23.199356>,  <23.811085, 36.296181, 23.176941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.581209, 36.361404, 23.199356>,  <23.198082, 36.470112, 23.236715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.581209, 36.361404, 23.199356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161115, 0.238714, 0.957631,
		-0.237961, -0.932285, 0.272431,
		0.957819, -0.271771, -0.093400,
		23.868555, 36.279873, 23.171335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.387754, 36.300091, 23.317314>,  <23.198082, 36.470112, 23.236715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.387754, 36.300091, 23.317314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.040863, 36.473824, 23.414700>,  <21.832729, 36.578064, 23.473131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.040863, 36.473824, 23.414700>,  <22.387754, 36.300091, 23.317314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.040863, 36.473824, 23.414700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399247, -0.314405, -0.861250,
		-0.297490, -0.844116, 0.446057,
		-0.867238, 0.434300, 0.243479,
		21.780695, 36.604122, 23.487740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.855680, 35.814602, 23.157341>,  <22.387754, 36.300091, 23.317314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.855680, 35.814602, 23.157341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.687012, 36.177258, 23.163052>,  <21.585810, 36.394852, 23.166477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.687012, 36.177258, 23.163052>,  <21.855680, 35.814602, 23.157341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.687012, 36.177258, 23.163052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554685, -0.245463, -0.795030,
		-0.717298, -0.343162, 0.606402,
		-0.421673, 0.906636, 0.014277,
		21.560511, 36.449249, 23.167336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202923, 35.678368, 23.165739>,  <21.855680, 35.814602, 23.157341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202923, 35.678368, 23.165739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.252182, 36.046902, 23.018242>,  <21.281738, 36.268024, 22.929743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.252182, 36.046902, 23.018242>,  <21.202923, 35.678368, 23.165739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.252182, 36.046902, 23.018242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533336, -0.251905, -0.807525,
		-0.836892, 0.296110, 0.460360,
		0.123149, 0.921338, -0.368743,
		21.289127, 36.323303, 22.907619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.560755, 35.922169, 22.968075>,  <21.202923, 35.678368, 23.165739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.560755, 35.922169, 22.968075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.786751, 36.173904, 22.754639>,  <20.922348, 36.324947, 22.626577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.786751, 36.173904, 22.754639>,  <20.560755, 35.922169, 22.968075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.786751, 36.173904, 22.754639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302948, -0.443303, -0.843626,
		-0.767469, 0.638290, -0.059805,
		0.564990, 0.629339, -0.533590,
		20.956247, 36.362705, 22.594563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.174162, 36.061600, 22.377502>,  <20.560755, 35.922169, 22.968075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.174162, 36.061600, 22.377502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.529703, 36.190784, 22.247494>,  <20.743027, 36.268295, 22.169489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.529703, 36.190784, 22.247494>,  <20.174162, 36.061600, 22.377502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.529703, 36.190784, 22.247494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227147, -0.305465, -0.924714,
		-0.397929, 0.895761, -0.198154,
		0.888852, 0.322960, -0.325022,
		20.796358, 36.287674, 22.149986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091623, 36.606171, 21.818993>,  <20.174162, 36.061600, 22.377502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091623, 36.606171, 21.818993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.444614, 36.424324, 21.770729>,  <20.656408, 36.315216, 21.741770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.444614, 36.424324, 21.770729>,  <20.091623, 36.606171, 21.818993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444614, 36.424324, 21.770729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301485, -0.349811, -0.886983,
		0.361028, 0.819120, -0.445760,
		0.882477, -0.454615, -0.120660,
		20.709358, 36.287941, 21.734531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.111656, 36.624863, 21.158091>,  <20.091623, 36.606171, 21.818993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.111656, 36.624863, 21.158091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.390339, 36.354126, 21.253162>,  <20.557549, 36.191685, 21.310205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.390339, 36.354126, 21.253162>,  <20.111656, 36.624863, 21.158091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390339, 36.354126, 21.253162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112861, -0.430622, -0.895448,
		0.708424, 0.597038, -0.376405,
		0.696705, -0.676838, 0.237681,
		20.599350, 36.151073, 21.324467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580515, 36.612820, 20.651743>,  <20.111656, 36.624863, 21.158091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580515, 36.612820, 20.651743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583364, 36.255997, 20.832489>,  <20.585073, 36.041904, 20.940937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583364, 36.255997, 20.832489>,  <20.580515, 36.612820, 20.651743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583364, 36.255997, 20.832489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140542, -0.448285, -0.882773,
		0.990049, -0.057217, -0.128565,
		0.007124, -0.892058, 0.451866,
		20.585503, 35.988380, 20.968048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790224, 36.136086, 20.088694>,  <20.580515, 36.612820, 20.651743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790224, 36.136086, 20.088694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.696285, 35.866177, 20.368561>,  <20.639923, 35.704231, 20.536480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.696285, 35.866177, 20.368561>,  <20.790224, 36.136086, 20.088694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696285, 35.866177, 20.368561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033973, -0.713659, -0.699669,
		0.971439, -0.188084, 0.144676,
		-0.234846, -0.674770, 0.699666,
		20.625832, 35.663746, 20.578461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243601, 35.510353, 19.990114>,  <20.790224, 36.136086, 20.088694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243601, 35.510353, 19.990114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.904722, 35.416935, 20.180992>,  <20.701395, 35.360886, 20.295519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.904722, 35.416935, 20.180992>,  <21.243601, 35.510353, 19.990114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.904722, 35.416935, 20.180992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145057, -0.762386, -0.630655,
		0.511093, -0.603509, 0.612014,
		-0.847197, -0.233546, 0.477193,
		20.650562, 35.346870, 20.324150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.291288, 34.822605, 20.002283>,  <21.243601, 35.510353, 19.990114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.291288, 34.822605, 20.002283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.903559, 34.862740, 20.092033>,  <20.670921, 34.886818, 20.145884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.903559, 34.862740, 20.092033>,  <21.291288, 34.822605, 20.002283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903559, 34.862740, 20.092033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221746, -0.750743, -0.622265,
		0.106014, -0.652931, 0.749962,
		-0.969324, 0.100332, 0.224374,
		20.612761, 34.892838, 20.159346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.998528, 34.207848, 20.149010>,  <21.291288, 34.822605, 20.002283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.998528, 34.207848, 20.149010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.662582, 34.408302, 20.065590>,  <20.461016, 34.528576, 20.015537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.662582, 34.408302, 20.065590>,  <20.998528, 34.207848, 20.149010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.662582, 34.408302, 20.065590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224809, -0.670853, -0.706695,
		-0.494059, -0.546642, 0.676083,
		-0.839862, 0.501139, -0.208551,
		20.410624, 34.558643, 20.003025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.535099, 33.747448, 19.963982>,  <20.998528, 34.207848, 20.149010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.535099, 33.747448, 19.963982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.376638, 34.068817, 19.786182>,  <20.281563, 34.261639, 19.679502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.376638, 34.068817, 19.786182>,  <20.535099, 33.747448, 19.963982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.376638, 34.068817, 19.786182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071796, -0.509728, -0.857335,
		-0.915374, -0.307721, 0.259612,
		-0.396151, 0.803421, -0.444499,
		20.257793, 34.309845, 19.652832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.948154, 33.523438, 19.602262>,  <20.535099, 33.747448, 19.963982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.948154, 33.523438, 19.602262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.042585, 33.862064, 19.411438>,  <20.099243, 34.065239, 19.296944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.042585, 33.862064, 19.411438>,  <19.948154, 33.523438, 19.602262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.042585, 33.862064, 19.411438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091595, -0.469368, -0.878239,
		-0.967408, 0.251028, -0.033265,
		0.236076, 0.846568, -0.477064,
		20.113409, 34.116035, 19.268318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466330, 33.615898, 19.067921>,  <19.948154, 33.523438, 19.602262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466330, 33.615898, 19.067921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.754435, 33.866455, 18.948689>,  <19.927298, 34.016788, 18.877150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.754435, 33.866455, 18.948689>,  <19.466330, 33.615898, 19.067921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754435, 33.866455, 18.948689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086261, -0.345484, -0.934452,
		-0.688316, 0.698764, -0.194806,
		0.720264, 0.626394, -0.298078,
		19.970514, 34.054375, 18.859264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234947, 33.933678, 18.482048>,  <19.466330, 33.615898, 19.067921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234947, 33.933678, 18.482048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.634096, 33.959320, 18.477249>,  <19.873585, 33.974705, 18.474371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.634096, 33.959320, 18.477249>,  <19.234947, 33.933678, 18.482048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634096, 33.959320, 18.477249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022629, -0.512826, -0.858194,
		-0.061166, 0.856096, -0.513185,
		0.997871, 0.064106, -0.011995,
		19.933458, 33.978550, 18.473650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451391, 34.202496, 17.823282>,  <19.234947, 33.933678, 18.482048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451391, 34.202496, 17.823282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.784504, 34.028477, 17.960228>,  <19.984371, 33.924065, 18.042397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.784504, 34.028477, 17.960228>,  <19.451391, 34.202496, 17.823282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.784504, 34.028477, 17.960228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144311, -0.426453, -0.892923,
		0.534464, 0.793016, -0.292359,
		0.832780, -0.435045, 0.342365,
		20.034338, 33.897964, 18.062937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.032284, 34.335690, 17.256020>,  <19.451391, 34.202496, 17.823282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.032284, 34.335690, 17.256020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.145834, 34.024845, 17.480701>,  <20.213964, 33.838337, 17.615511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.145834, 34.024845, 17.480701>,  <20.032284, 34.335690, 17.256020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.145834, 34.024845, 17.480701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259185, -0.501809, -0.825234,
		0.923167, 0.379850, 0.058963,
		0.283877, -0.777111, 0.561705,
		20.230997, 33.791710, 17.649214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596685, 34.157890, 16.949903>,  <20.032284, 34.335690, 17.256020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596685, 34.157890, 16.949903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.535700, 33.808197, 17.134285>,  <20.499109, 33.598381, 17.244915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.535700, 33.808197, 17.134285>,  <20.596685, 34.157890, 16.949903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.535700, 33.808197, 17.134285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292356, -0.485428, -0.823946,
		0.944078, 0.009142, 0.329595,
		-0.152462, -0.874229, 0.460955,
		20.489962, 33.545929, 17.272572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074076, 33.695786, 16.718065>,  <20.596685, 34.157890, 16.949903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074076, 33.695786, 16.718065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.802635, 33.442955, 16.867718>,  <20.639771, 33.291256, 16.957508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.802635, 33.442955, 16.867718>,  <21.074076, 33.695786, 16.718065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802635, 33.442955, 16.867718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246882, -0.676013, -0.694302,
		0.691771, -0.378789, 0.614794,
		-0.678603, -0.632080, 0.374130,
		20.599054, 33.253330, 16.979958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373165, 33.095974, 16.542004>,  <21.074076, 33.695786, 16.718065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373165, 33.095974, 16.542004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.005630, 32.985924, 16.655170>,  <20.785110, 32.919891, 16.723070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.005630, 32.985924, 16.655170>,  <21.373165, 33.095974, 16.542004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.005630, 32.985924, 16.655170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018218, -0.745713, -0.666019,
		0.394217, -0.606808, 0.690201,
		-0.918837, -0.275130, 0.282918,
		20.729979, 32.903385, 16.740046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.322554, 29.960413, 25.184719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634388, 30.008038, 25.430668>,  <26.821489, 30.036612, 25.578238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634388, 30.008038, 25.430668>,  <26.322554, 29.960413, 25.184719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634388, 30.008038, 25.430668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224306, 0.863562, -0.451606,
		-0.584750, 0.489986, 0.646515,
		0.779586, 0.119059, 0.614874,
		26.868263, 30.043755, 25.615129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350519, 30.617767, 25.288130>,  <26.322554, 29.960413, 25.184719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350519, 30.617767, 25.288130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714132, 30.522320, 25.424789>,  <26.932301, 30.465052, 25.506784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714132, 30.522320, 25.424789>,  <26.350519, 30.617767, 25.288130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714132, 30.522320, 25.424789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359893, 0.862841, -0.354940,
		-0.210092, 0.445608, 0.870227,
		0.909032, -0.238618, 0.341647,
		26.986841, 30.450735, 25.527283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528072, 31.126963, 25.683094>,  <26.350519, 30.617767, 25.288130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528072, 31.126963, 25.683094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863850, 30.949631, 25.557369>,  <27.065315, 30.843231, 25.481934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863850, 30.949631, 25.557369>,  <26.528072, 31.126963, 25.683094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863850, 30.949631, 25.557369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246550, 0.826098, -0.506730,
		0.484302, 0.347878, 0.802766,
		0.839443, -0.443332, -0.314312,
		27.115683, 30.816631, 25.463076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968807, 31.655293, 25.616049>,  <26.528072, 31.126963, 25.683094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968807, 31.655293, 25.616049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176611, 31.366722, 25.432896>,  <27.301292, 31.193581, 25.323004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176611, 31.366722, 25.432896>,  <26.968807, 31.655293, 25.616049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176611, 31.366722, 25.432896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312483, 0.659157, -0.684007,
		0.795277, 0.212267, 0.567871,
		0.519508, -0.721425, -0.457883,
		27.332464, 31.150295, 25.295530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681910, 31.875668, 25.528564>,  <26.968807, 31.655293, 25.616049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681910, 31.875668, 25.528564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603811, 31.621822, 25.229462>,  <27.556953, 31.469515, 25.049999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603811, 31.621822, 25.229462>,  <27.681910, 31.875668, 25.528564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603811, 31.621822, 25.229462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419712, 0.635023, -0.648526,
		0.886409, -0.440464, 0.142372,
		-0.195244, -0.634615, -0.747759,
		27.545238, 31.431438, 25.005135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376020, 31.752029, 25.276014>,  <27.681910, 31.875668, 25.528564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376020, 31.752029, 25.276014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126719, 31.648125, 24.980968>,  <27.977137, 31.585781, 24.803940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126719, 31.648125, 24.980968>,  <28.376020, 31.752029, 25.276014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126719, 31.648125, 24.980968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371175, 0.731943, -0.571392,
		0.688318, -0.629908, -0.359770,
		-0.623256, -0.259762, -0.737615,
		27.939743, 31.570196, 24.759684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723583, 31.612494, 24.574924>,  <28.376020, 31.752029, 25.276014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723583, 31.612494, 24.574924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348894, 31.686886, 24.456287>,  <28.124081, 31.731522, 24.385105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348894, 31.686886, 24.456287>,  <28.723583, 31.612494, 24.574924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348894, 31.686886, 24.456287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342212, 0.665039, -0.663788,
		0.073794, -0.723281, -0.686600,
		-0.936721, 0.185979, -0.296591,
		28.067879, 31.742680, 24.367310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739288, 31.735882, 23.871069>,  <28.723583, 31.612494, 24.574924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739288, 31.735882, 23.871069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363840, 31.867847, 23.911373>,  <28.138571, 31.947027, 23.935556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363840, 31.867847, 23.911373>,  <28.739288, 31.735882, 23.871069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363840, 31.867847, 23.911373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131747, 0.612805, -0.779174,
		-0.318806, -0.718073, -0.618655,
		-0.938618, 0.329912, 0.100762,
		28.082254, 31.966822, 23.941601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510759, 31.674305, 23.250420>,  <28.739288, 31.735882, 23.871069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510759, 31.674305, 23.250420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261595, 31.934128, 23.424801>,  <28.112097, 32.090023, 23.529430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261595, 31.934128, 23.424801>,  <28.510759, 31.674305, 23.250420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261595, 31.934128, 23.424801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111196, 0.625137, -0.772554,
		-0.774351, -0.432755, -0.461632,
		-0.622910, 0.649559, 0.435955,
		28.074722, 32.128994, 23.555588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136745, 32.110382, 22.743034>,  <28.510759, 31.674305, 23.250420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136745, 32.110382, 22.743034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077599, 32.348427, 23.059002>,  <28.042110, 32.491253, 23.248583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077599, 32.348427, 23.059002>,  <28.136745, 32.110382, 22.743034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077599, 32.348427, 23.059002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242291, 0.796159, -0.554460,
		-0.958869, 0.109404, -0.261916,
		-0.147867, 0.595114, 0.789920,
		28.033239, 32.526962, 23.295979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631531, 32.646370, 22.570974>,  <28.136745, 32.110382, 22.743034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631531, 32.646370, 22.570974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852169, 32.785892, 22.874046>,  <27.984552, 32.869606, 23.055889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852169, 32.785892, 22.874046>,  <27.631531, 32.646370, 22.570974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852169, 32.785892, 22.874046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251422, 0.796589, -0.549757,
		-0.795317, 0.493740, 0.351697,
		0.551595, 0.348807, 0.757679,
		28.017647, 32.890533, 23.101351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484896, 33.382076, 22.645233>,  <27.631531, 32.646370, 22.570974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484896, 33.382076, 22.645233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833044, 33.316982, 22.831123>,  <28.041933, 33.277924, 22.942657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833044, 33.316982, 22.831123>,  <27.484896, 33.382076, 22.645233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833044, 33.316982, 22.831123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357536, 0.857810, -0.369230,
		-0.338560, 0.487524, 0.804797,
		0.870371, -0.162737, 0.464727,
		28.094154, 33.268162, 22.970541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680017, 33.998684, 23.138029>,  <27.484896, 33.382076, 22.645233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680017, 33.998684, 23.138029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000242, 33.814785, 22.984287>,  <28.192377, 33.704445, 22.892042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000242, 33.814785, 22.984287>,  <27.680017, 33.998684, 23.138029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000242, 33.814785, 22.984287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348880, 0.879071, -0.324833,
		0.487217, 0.125956, 0.864150,
		0.800564, -0.459749, -0.384355,
		28.240412, 33.676861, 22.868980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087002, 34.415382, 22.823465>,  <27.680017, 33.998684, 23.138029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087002, 34.415382, 22.823465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394398, 34.167709, 22.758930>,  <28.578836, 34.019104, 22.720209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394398, 34.167709, 22.758930>,  <28.087002, 34.415382, 22.823465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394398, 34.167709, 22.758930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556223, 0.771094, -0.309888,
		0.316286, 0.148405, 0.936984,
		0.768491, -0.619185, -0.161340,
		28.624945, 33.981953, 22.710527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047293, 35.122383, 23.305363>,  <28.087002, 34.415382, 22.823465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047293, 35.122383, 23.305363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795654, 35.300770, 23.560032>,  <27.644670, 35.407803, 23.712833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795654, 35.300770, 23.560032>,  <28.047293, 35.122383, 23.305363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795654, 35.300770, 23.560032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610029, -0.224385, 0.759945,
		0.481770, 0.866467, -0.130893,
		-0.629097, 0.445967, 0.636672,
		27.606926, 35.434559, 23.751034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437883, 35.553722, 23.695635>,  <28.047293, 35.122383, 23.305363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437883, 35.553722, 23.695635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119486, 35.493820, 23.930229>,  <27.928448, 35.457878, 24.070986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119486, 35.493820, 23.930229>,  <28.437883, 35.553722, 23.695635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119486, 35.493820, 23.930229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594502, -0.011186, 0.804016,
		-0.113843, 0.988660, 0.097933,
		-0.795995, -0.149753, 0.586487,
		27.880688, 35.448895, 24.106174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506712, 36.038906, 24.233782>,  <28.437883, 35.553722, 23.695635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506712, 36.038906, 24.233782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283749, 35.745369, 24.389099>,  <28.149971, 35.569248, 24.482290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283749, 35.745369, 24.389099>,  <28.506712, 36.038906, 24.233782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283749, 35.745369, 24.389099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524178, 0.051627, 0.850043,
		-0.643843, 0.677357, 0.355886,
		-0.557409, -0.733841, 0.388295,
		28.116526, 35.525215, 24.505587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539034, 36.190323, 24.901382>,  <28.506712, 36.038906, 24.233782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539034, 36.190323, 24.901382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380983, 35.824066, 24.930962>,  <28.286154, 35.604313, 24.948709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380983, 35.824066, 24.930962>,  <28.539034, 36.190323, 24.901382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380983, 35.824066, 24.930962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487232, -0.140650, 0.861872,
		-0.778769, 0.376577, 0.501707,
		-0.395126, -0.915646, 0.073947,
		28.262445, 35.549374, 24.953146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410170, 36.072548, 25.626787>,  <28.539034, 36.190323, 24.901382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410170, 36.072548, 25.626787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451239, 35.710503, 25.461754>,  <28.475880, 35.493275, 25.362734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451239, 35.710503, 25.461754>,  <28.410170, 36.072548, 25.626787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451239, 35.710503, 25.461754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278993, -0.371924, 0.885345,
		-0.954789, -0.206010, 0.214333,
		0.102674, -0.905115, -0.412584,
		28.482040, 35.438969, 25.337978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222998, 35.603733, 26.172480>,  <28.410170, 36.072548, 25.626787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222998, 35.603733, 26.172480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405922, 35.367130, 25.906853>,  <28.515676, 35.225166, 25.747477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405922, 35.367130, 25.906853>,  <28.222998, 35.603733, 26.172480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405922, 35.367130, 25.906853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321241, -0.586427, 0.743578,
		-0.829259, -0.553372, -0.078163,
		0.457312, -0.591509, -0.664065,
		28.543116, 35.189678, 25.707634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934616, 35.006111, 26.322987>,  <28.222998, 35.603733, 26.172480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934616, 35.006111, 26.322987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251238, 34.886791, 26.109650>,  <28.441212, 34.815197, 25.981647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251238, 34.886791, 26.109650>,  <27.934616, 35.006111, 26.322987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251238, 34.886791, 26.109650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189875, -0.709505, 0.678638,
		-0.580849, -0.638449, -0.504973,
		0.791557, -0.298304, -0.533341,
		28.488705, 34.797298, 25.949648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892233, 34.271660, 26.067331>,  <27.934616, 35.006111, 26.322987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892233, 34.271660, 26.067331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276346, 34.371902, 26.116405>,  <28.506815, 34.432049, 26.145851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276346, 34.371902, 26.116405>,  <27.892233, 34.271660, 26.067331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276346, 34.371902, 26.116405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104233, -0.730054, 0.675394,
		0.258825, -0.635782, -0.727180,
		0.960284, 0.250605, 0.122686,
		28.564432, 34.447083, 26.153212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209665, 33.655186, 26.185268>,  <27.892233, 34.271660, 26.067331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209665, 33.655186, 26.185268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488621, 33.911160, 26.314346>,  <28.655994, 34.064743, 26.391792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488621, 33.911160, 26.314346>,  <28.209665, 33.655186, 26.185268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488621, 33.911160, 26.314346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388491, -0.715908, 0.580130,
		0.602265, -0.279213, -0.747875,
		0.697390, 0.639934, 0.322695,
		28.697838, 34.103138, 26.411154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889475, 33.284901, 26.148451>,  <28.209665, 33.655186, 26.185268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889475, 33.284901, 26.148451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916512, 33.573574, 26.424019>,  <28.932734, 33.746777, 26.589359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916512, 33.573574, 26.424019>,  <28.889475, 33.284901, 26.148451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916512, 33.573574, 26.424019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420880, -0.646677, 0.636135,
		0.904595, 0.246955, -0.347450,
		0.067591, 0.721680, 0.688920,
		28.936789, 33.790077, 26.630695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394350, 33.044178, 26.508120>,  <28.889475, 33.284901, 26.148451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394350, 33.044178, 26.508120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241112, 33.331341, 26.740616>,  <29.149168, 33.503639, 26.880114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241112, 33.331341, 26.740616>,  <29.394350, 33.044178, 26.508120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241112, 33.331341, 26.740616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291896, -0.502916, 0.813555,
		0.876376, 0.481331, -0.016890,
		-0.383095, 0.717910, 0.581242,
		29.126183, 33.546715, 26.914989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881147, 33.105518, 26.951225>,  <29.394350, 33.044178, 26.508120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881147, 33.105518, 26.951225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539925, 33.226398, 27.121387>,  <29.335190, 33.298927, 27.223484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539925, 33.226398, 27.121387>,  <29.881147, 33.105518, 26.951225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539925, 33.226398, 27.121387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166127, -0.615541, 0.770397,
		0.494666, 0.727864, 0.474889,
		-0.853058, 0.302197, 0.425405,
		29.284008, 33.317059, 27.249008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043791, 33.128559, 27.736074>,  <29.881147, 33.105518, 26.951225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043791, 33.128559, 27.736074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646626, 33.117775, 27.689774>,  <29.408327, 33.111305, 27.661993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646626, 33.117775, 27.689774>,  <30.043791, 33.128559, 27.736074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646626, 33.117775, 27.689774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076400, -0.601236, 0.795411,
		-0.091040, 0.798616, 0.594915,
		-0.992912, -0.026963, -0.115751,
		29.348751, 33.109688, 27.655048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745766, 33.202251, 28.402225>,  <30.043791, 33.128559, 27.736074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745766, 33.202251, 28.402225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439579, 33.052872, 28.192619>,  <29.255867, 32.963242, 28.066856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439579, 33.052872, 28.192619>,  <29.745766, 33.202251, 28.402225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439579, 33.052872, 28.192619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239496, -0.590500, 0.770683,
		-0.597243, 0.715433, 0.362569,
		-0.765468, -0.373451, -0.524015,
		29.209938, 32.940838, 28.035416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663887, 33.794456, 29.048187>,  <29.745766, 33.202251, 28.402225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663887, 33.794456, 29.048187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985737, 33.665714, 29.247784>,  <30.178846, 33.588470, 29.367540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985737, 33.665714, 29.247784>,  <29.663887, 33.794456, 29.048187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985737, 33.665714, 29.247784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593784, 0.438751, -0.674477,
		-0.001847, 0.838991, 0.544142,
		0.804623, -0.321857, 0.498990,
		30.227123, 33.569157, 29.397480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034233, 34.366592, 29.069040>,  <29.663887, 33.794456, 29.048187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034233, 34.366592, 29.069040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309788, 34.089470, 29.154320>,  <30.475121, 33.923195, 29.205486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309788, 34.089470, 29.154320>,  <30.034233, 34.366592, 29.069040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309788, 34.089470, 29.154320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587883, 0.361925, -0.723467,
		0.424061, 0.623722, 0.656615,
		0.688887, -0.692807, 0.213198,
		30.516455, 33.881626, 29.218279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654045, 34.680550, 29.223839>,  <30.034233, 34.366592, 29.069040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654045, 34.680550, 29.223839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792089, 34.321892, 29.112892>,  <30.874916, 34.106697, 29.046324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792089, 34.321892, 29.112892>,  <30.654045, 34.680550, 29.223839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792089, 34.321892, 29.112892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807849, 0.434217, -0.398541,
		0.477785, -0.086528, 0.874205,
		0.345110, -0.896643, -0.277365,
		30.895622, 34.052898, 29.029682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363726, 34.589737, 29.519836>,  <30.654045, 34.680550, 29.223839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363726, 34.589737, 29.519836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339699, 34.337566, 29.210266>,  <31.325283, 34.186264, 29.024525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339699, 34.337566, 29.210266>,  <31.363726, 34.589737, 29.519836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339699, 34.337566, 29.210266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824258, 0.405987, -0.394681,
		0.563019, -0.661620, 0.495245,
		-0.060066, -0.630423, -0.773924,
		31.321678, 34.148441, 28.978088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000412, 34.228165, 29.467999>,  <31.363726, 34.589737, 29.519836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000412, 34.228165, 29.467999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820818, 34.237514, 29.110706>,  <31.713060, 34.243122, 28.896330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820818, 34.237514, 29.110706>,  <32.000412, 34.228165, 29.467999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820818, 34.237514, 29.110706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879707, 0.186762, -0.437305,
		0.156601, -0.982127, -0.104415,
		-0.448989, 0.023373, -0.893231,
		31.686121, 34.244526, 28.842737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462521, 33.966782, 29.064930>,  <32.000412, 34.228165, 29.467999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462521, 33.966782, 29.064930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213970, 34.114208, 28.788364>,  <32.064838, 34.202663, 28.622425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213970, 34.114208, 28.788364>,  <32.462521, 33.966782, 29.064930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213970, 34.114208, 28.788364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781500, 0.228314, -0.580630,
		-0.056139, -0.901129, -0.429901,
		-0.621375, 0.368564, -0.691415,
		32.027557, 34.224777, 28.580940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673603, 33.594227, 28.502230>,  <32.462521, 33.966782, 29.064930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673603, 33.594227, 28.502230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480366, 33.919060, 28.371300>,  <32.364426, 34.113960, 28.292742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480366, 33.919060, 28.371300>,  <32.673603, 33.594227, 28.502230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480366, 33.919060, 28.371300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811844, 0.275439, -0.514823,
		-0.327923, -0.514442, -0.792348,
		-0.483090, 0.812085, -0.327324,
		32.335438, 34.162685, 28.273102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909618, 33.603199, 27.785431>,  <32.673603, 33.594227, 28.502230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909618, 33.603199, 27.785431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765488, 33.969330, 27.857376>,  <32.679008, 34.189007, 27.900543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765488, 33.969330, 27.857376>,  <32.909618, 33.603199, 27.785431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765488, 33.969330, 27.857376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806632, 0.402575, -0.432757,
		-0.468521, -0.010850, -0.883386,
		-0.360324, 0.915323, 0.179862,
		32.657391, 34.243927, 27.911335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941864, 33.903225, 27.149408>,  <32.909618, 33.603199, 27.785431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941864, 33.903225, 27.149408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940712, 34.188564, 27.429729>,  <32.940022, 34.359768, 27.597921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940712, 34.188564, 27.429729>,  <32.941864, 33.903225, 27.149408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940712, 34.188564, 27.429729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752516, 0.463077, -0.468273,
		-0.658568, 0.526013, -0.538144,
		-0.002884, 0.713351, 0.700801,
		32.939846, 34.402569, 27.639969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092037, 34.420116, 26.748831>,  <32.941864, 33.903225, 27.149408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092037, 34.420116, 26.748831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183720, 34.536121, 27.120499>,  <33.238728, 34.605724, 27.343500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183720, 34.536121, 27.120499>,  <33.092037, 34.420116, 26.748831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183720, 34.536121, 27.120499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864653, 0.377741, -0.331192,
		-0.447035, 0.879321, -0.164180,
		0.229206, 0.290013, 0.929170,
		33.252483, 34.623127, 27.399250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375156, 35.111687, 26.613043>,  <33.092037, 34.420116, 26.748831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375156, 35.111687, 26.613043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519638, 34.966091, 26.956448>,  <33.606327, 34.878735, 27.162491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519638, 34.966091, 26.956448>,  <33.375156, 35.111687, 26.613043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519638, 34.966091, 26.956448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912518, 0.327487, -0.245078,
		-0.191946, 0.871931, 0.450436,
		0.361203, -0.363990, 0.858513,
		33.627998, 34.856895, 27.214001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931332, 35.572334, 26.750097>,  <33.375156, 35.111687, 26.613043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931332, 35.572334, 26.750097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997612, 35.233776, 26.952545>,  <34.037380, 35.030640, 27.074015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997612, 35.233776, 26.952545>,  <33.931332, 35.572334, 26.750097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997612, 35.233776, 26.952545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971289, 0.051226, -0.232321,
		0.170709, 0.530084, 0.830584,
		0.165697, -0.846396, 0.506120,
		34.047321, 34.979858, 27.104382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.423115, 32.506660, 32.438927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.685160, 32.214142, 32.362999>,  <28.842386, 32.038631, 32.317440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.685160, 32.214142, 32.362999>,  <28.423115, 32.506660, 32.438927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685160, 32.214142, 32.362999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625285, 0.665810, -0.407081,
		0.424082, 0.147991, 0.893450,
		0.655113, -0.731297, -0.189822,
		28.881693, 31.994753, 32.306053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047062, 32.780441, 32.670670>,  <28.423115, 32.506660, 32.438927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047062, 32.780441, 32.670670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.107063, 32.489822, 32.402454>,  <29.143064, 32.315449, 32.241524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.107063, 32.489822, 32.402454>,  <29.047062, 32.780441, 32.670670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107063, 32.489822, 32.402454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426411, 0.659435, -0.619128,
		0.892004, -0.193053, 0.408728,
		0.150005, -0.726551, -0.670538,
		29.152065, 32.271858, 32.201294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597065, 33.080811, 32.366207>,  <29.047062, 32.780441, 32.670670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597065, 33.080811, 32.366207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.465162, 32.784286, 32.132378>,  <29.386021, 32.606373, 31.992081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.465162, 32.784286, 32.132378>,  <29.597065, 33.080811, 32.366207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465162, 32.784286, 32.132378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542019, 0.358321, -0.760145,
		0.772966, -0.567512, 0.283644,
		-0.329756, -0.741307, -0.584572,
		29.366236, 32.561893, 31.957006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185320, 32.942089, 31.967926>,  <29.597065, 33.080811, 32.366207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185320, 32.942089, 31.967926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.888636, 32.750954, 31.779655>,  <29.710625, 32.636272, 31.666693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.888636, 32.750954, 31.779655>,  <30.185320, 32.942089, 31.967926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888636, 32.750954, 31.779655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446705, 0.171535, -0.878084,
		0.500321, -0.861536, 0.086225,
		-0.741710, -0.477840, -0.470675,
		29.666122, 32.607601, 31.638453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438358, 32.400906, 31.514912>,  <30.185320, 32.942089, 31.967926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438358, 32.400906, 31.514912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.090967, 32.533569, 31.367535>,  <29.882532, 32.613167, 31.279108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.090967, 32.533569, 31.367535>,  <30.438358, 32.400906, 31.514912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090967, 32.533569, 31.367535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444722, 0.192876, -0.874655,
		-0.219024, -0.923472, -0.315005,
		-0.868476, 0.331660, -0.368444,
		29.830425, 32.633068, 31.257002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385170, 32.101833, 30.867771>,  <30.438358, 32.400906, 31.514912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385170, 32.101833, 30.867771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.138855, 32.416691, 30.853840>,  <29.991066, 32.605606, 30.845482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.138855, 32.416691, 30.853840>,  <30.385170, 32.101833, 30.867771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138855, 32.416691, 30.853840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342057, 0.227253, -0.911786,
		-0.709790, -0.573379, -0.409187,
		-0.615788, 0.787142, -0.034827,
		29.954119, 32.652832, 30.843391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261900, 32.176125, 30.117413>,  <30.385170, 32.101833, 30.867771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261900, 32.176125, 30.117413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.125418, 32.519054, 30.271595>,  <30.043530, 32.724812, 30.364105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.125418, 32.519054, 30.271595>,  <30.261900, 32.176125, 30.117413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125418, 32.519054, 30.271595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215931, 0.470587, -0.855524,
		-0.914852, -0.208676, -0.345689,
		-0.341204, 0.857322, 0.385458,
		30.023056, 32.776253, 30.387232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746460, 32.431717, 29.636738>,  <30.261900, 32.176125, 30.117413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746460, 32.431717, 29.636738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.885582, 32.722446, 29.873638>,  <29.969055, 32.896885, 30.015778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.885582, 32.722446, 29.873638>,  <29.746460, 32.431717, 29.636738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885582, 32.722446, 29.873638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094078, 0.601443, -0.793357,
		-0.932835, 0.331651, 0.140806,
		0.347805, 0.726824, 0.592249,
		29.989923, 32.940495, 30.051313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351883, 33.099453, 29.576483>,  <29.746460, 32.431717, 29.636738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351883, 33.099453, 29.576483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.735065, 33.141613, 29.683224>,  <29.964975, 33.166908, 29.747269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.735065, 33.141613, 29.683224>,  <29.351883, 33.099453, 29.576483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735065, 33.141613, 29.683224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167653, 0.549130, -0.818748,
		-0.232835, 0.829064, 0.508372,
		0.957956, 0.105403, 0.266852,
		30.022453, 33.173233, 29.763279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157551, 33.289276, 28.976328>,  <29.351883, 33.099453, 29.576483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157551, 33.289276, 28.976328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.014589, 33.053230, 28.686768>,  <28.928812, 32.911602, 28.513031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.014589, 33.053230, 28.686768>,  <29.157551, 33.289276, 28.976328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014589, 33.053230, 28.686768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589066, -0.459046, 0.665040,
		-0.724752, 0.664111, -0.183552,
		-0.357402, -0.590113, -0.723899,
		28.907370, 32.876198, 28.469597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416458, 33.258064, 28.855703>,  <29.157551, 33.289276, 28.976328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416458, 33.258064, 28.855703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.540657, 32.896801, 28.737114>,  <28.615175, 32.680042, 28.665960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.540657, 32.896801, 28.737114>,  <28.416458, 33.258064, 28.855703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540657, 32.896801, 28.737114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695334, -0.428457, 0.577005,
		-0.648154, 0.026992, -0.761031,
		0.310495, -0.903159, -0.296475,
		28.633806, 32.625854, 28.648172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797150, 33.016010, 28.910328>,  <28.416458, 33.258064, 28.855703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797150, 33.016010, 28.910328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.041389, 32.705936, 28.845516>,  <28.187933, 32.519890, 28.806629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.041389, 32.705936, 28.845516>,  <27.797150, 33.016010, 28.910328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041389, 32.705936, 28.845516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655123, -0.609378, 0.446624,
		-0.444954, -0.166558, -0.879928,
		0.610597, -0.775188, -0.162029,
		28.224569, 32.473381, 28.796907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413372, 32.494854, 28.509695>,  <27.797150, 33.016010, 28.910328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413372, 32.494854, 28.509695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.719906, 32.315765, 28.693993>,  <27.903826, 32.208313, 28.804571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.719906, 32.315765, 28.693993>,  <27.413372, 32.494854, 28.509695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719906, 32.315765, 28.693993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641987, -0.506607, 0.575502,
		-0.024248, -0.736816, -0.675659,
		0.766332, -0.447718, 0.460742,
		27.949806, 32.181450, 28.832214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251366, 31.776239, 28.460039>,  <27.413372, 32.494854, 28.509695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251366, 31.776239, 28.460039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.521479, 31.777874, 28.755058>,  <27.683546, 31.778854, 28.932070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.521479, 31.777874, 28.755058>,  <27.251366, 31.776239, 28.460039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521479, 31.777874, 28.755058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579065, -0.616412, 0.533592,
		0.456815, -0.787413, -0.413885,
		0.675281, 0.004087, 0.737550,
		27.724062, 31.779100, 28.976324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190109, 31.195055, 28.674646>,  <27.251366, 31.776239, 28.460039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190109, 31.195055, 28.674646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.368269, 31.366264, 28.989204>,  <27.475164, 31.468990, 29.177938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.368269, 31.366264, 28.989204>,  <27.190109, 31.195055, 28.674646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368269, 31.366264, 28.989204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610874, -0.496853, 0.616418,
		0.654563, -0.754940, 0.040170,
		0.445400, 0.428022, 0.786394,
		27.501888, 31.494671, 29.225122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558044, 30.754026, 29.087431>,  <27.190109, 31.195055, 28.674646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558044, 30.754026, 29.087431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.498333, 31.062527, 29.334942>,  <27.462505, 31.247627, 29.483448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.498333, 31.062527, 29.334942>,  <27.558044, 30.754026, 29.087431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498333, 31.062527, 29.334942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523596, -0.592511, 0.612191,
		0.838786, -0.232602, 0.492274,
		-0.149281, 0.771250, 0.618779,
		27.453548, 31.293901, 29.520576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666700, 30.437159, 29.803629>,  <27.558044, 30.754026, 29.087431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666700, 30.437159, 29.803629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.434607, 30.761227, 29.836983>,  <27.295351, 30.955667, 29.856995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.434607, 30.761227, 29.836983>,  <27.666700, 30.437159, 29.803629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434607, 30.761227, 29.836983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569396, -0.476724, 0.669719,
		0.582339, 0.341113, 0.737919,
		-0.580233, 0.810171, 0.083387,
		27.260536, 31.004278, 29.862000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600473, 30.594578, 30.498627>,  <27.666700, 30.437159, 29.803629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600473, 30.594578, 30.498627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.282053, 30.776726, 30.339157>,  <27.091002, 30.886015, 30.243475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.282053, 30.776726, 30.339157>,  <27.600473, 30.594578, 30.498627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282053, 30.776726, 30.339157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589123, -0.432052, 0.682836,
		0.138696, 0.778440, 0.612205,
		-0.796052, 0.455370, -0.398673,
		27.043238, 30.913336, 30.219555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226389, 30.929379, 31.070612>,  <27.600473, 30.594578, 30.498627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226389, 30.929379, 31.070612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.978628, 30.886959, 30.759460>,  <26.829971, 30.861507, 30.572769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.978628, 30.886959, 30.759460>,  <27.226389, 30.929379, 31.070612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978628, 30.886959, 30.759460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657979, -0.470374, 0.588057,
		-0.428257, 0.876072, 0.221572,
		-0.619402, -0.106049, -0.777878,
		26.792807, 30.855145, 30.526096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644588, 30.912422, 31.351816>,  <27.226389, 30.929379, 31.070612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644588, 30.912422, 31.351816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.547058, 30.760262, 30.994976>,  <26.488541, 30.668964, 30.780872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.547058, 30.760262, 30.994976>,  <26.644588, 30.912422, 31.351816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547058, 30.760262, 30.994976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675300, -0.593624, 0.437699,
		-0.696074, 0.709158, -0.112145,
		-0.243826, -0.380402, -0.892100,
		26.473911, 30.646141, 30.727346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896967, 30.984558, 31.340597>,  <26.644588, 30.912422, 31.351816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896967, 30.984558, 31.340597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.007883, 30.709888, 31.071796>,  <26.074432, 30.545086, 30.910517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.007883, 30.709888, 31.071796>,  <25.896967, 30.984558, 31.340597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007883, 30.709888, 31.071796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787326, -0.563270, 0.250691,
		-0.550661, 0.459570, -0.696827,
		0.277292, -0.686675, -0.672002,
		26.091070, 30.503885, 30.870195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304205, 30.854280, 30.866283>,  <25.896967, 30.984558, 31.340597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304205, 30.854280, 30.866283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.525732, 30.521248, 30.862335>,  <25.658648, 30.321428, 30.859966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.525732, 30.521248, 30.862335>,  <25.304205, 30.854280, 30.866283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525732, 30.521248, 30.862335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812300, -0.542855, 0.213255,
		-0.182911, -0.110085, -0.976947,
		0.553816, -0.832580, -0.009872,
		25.691877, 30.271473, 30.859373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918219, 30.309265, 30.424486>,  <25.304205, 30.854280, 30.866283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918219, 30.309265, 30.424486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.181673, 30.109272, 30.649418>,  <25.339746, 29.989275, 30.784376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.181673, 30.109272, 30.649418>,  <24.918219, 30.309265, 30.424486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181673, 30.109272, 30.649418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702703, -0.675946, 0.222047,
		0.269084, -0.541398, -0.796544,
		0.658637, -0.499985, 0.562329,
		25.379265, 29.959276, 30.818117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.088705, 24.361261, 30.755728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.887348, 24.697235, 30.836826>,  <30.766535, 24.898819, 30.885487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.887348, 24.697235, 30.836826>,  <31.088705, 24.361261, 30.755728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887348, 24.697235, 30.836826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426543, 0.445625, -0.787070,
		-0.751437, -0.309725, -0.582592,
		-0.503393, 0.839934, 0.202749,
		30.736330, 24.949215, 30.897652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765953, 24.568733, 30.153841>,  <31.088705, 24.361261, 30.755728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765953, 24.568733, 30.153841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779228, 24.894123, 30.386101>,  <30.787193, 25.089357, 30.525457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779228, 24.894123, 30.386101>,  <30.765953, 24.568733, 30.153841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779228, 24.894123, 30.386101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182061, 0.566330, -0.803819,
		-0.982727, 0.132392, -0.129307,
		0.033189, 0.813476, 0.580651,
		30.789185, 25.138166, 30.560297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424667, 25.167273, 29.836090>,  <30.765953, 24.568733, 30.153841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424667, 25.167273, 29.836090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667072, 25.372784, 30.078999>,  <30.812515, 25.496090, 30.224745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667072, 25.372784, 30.078999>,  <30.424667, 25.167273, 29.836090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667072, 25.372784, 30.078999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193568, 0.645231, -0.739059,
		-0.771543, 0.565428, 0.291568,
		0.606014, 0.513778, 0.607272,
		30.848877, 25.526917, 30.261181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202839, 25.926977, 29.737198>,  <30.424667, 25.167273, 29.836090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202839, 25.926977, 29.737198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.574043, 25.919785, 29.886044>,  <30.796766, 25.915468, 29.975351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.574043, 25.919785, 29.886044>,  <30.202839, 25.926977, 29.737198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574043, 25.919785, 29.886044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241847, 0.788836, -0.565020,
		-0.283378, 0.614340, 0.736399,
		0.928012, -0.017981, 0.372115,
		30.852448, 25.914391, 29.997679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343634, 26.659060, 29.827011>,  <30.202839, 25.926977, 29.737198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343634, 26.659060, 29.827011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.682928, 26.447456, 29.816875>,  <30.886505, 26.320494, 29.810793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.682928, 26.447456, 29.816875>,  <30.343634, 26.659060, 29.827011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682928, 26.447456, 29.816875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396681, 0.666304, -0.631414,
		0.350908, 0.525538, 0.775032,
		0.848238, -0.529008, -0.025340,
		30.937399, 26.288754, 29.809273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805334, 27.201818, 30.028259>,  <30.343634, 26.659060, 29.827011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805334, 27.201818, 30.028259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.985968, 26.908234, 29.825333>,  <31.094347, 26.732082, 29.703577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.985968, 26.908234, 29.825333>,  <30.805334, 27.201818, 30.028259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985968, 26.908234, 29.825333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447691, 0.678233, -0.582729,
		0.771781, 0.036028, 0.634867,
		0.451582, -0.733963, -0.507318,
		31.121443, 26.688046, 29.673138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358498, 27.462589, 29.979340>,  <30.805334, 27.201818, 30.028259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358498, 27.462589, 29.979340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390274, 27.154427, 29.726307>,  <31.409340, 26.969528, 29.574488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390274, 27.154427, 29.726307>,  <31.358498, 27.462589, 29.979340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390274, 27.154427, 29.726307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610007, 0.539468, -0.580400,
		0.788404, -0.339773, 0.512810,
		0.079441, -0.770408, -0.632583,
		31.414106, 26.923304, 29.536531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061729, 27.477299, 29.639574>,  <31.358498, 27.462589, 29.979340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061729, 27.477299, 29.639574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895285, 27.234371, 29.368866>,  <31.795418, 27.088615, 29.206442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895285, 27.234371, 29.368866>,  <32.061729, 27.477299, 29.639574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895285, 27.234371, 29.368866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496607, 0.471689, -0.728623,
		0.761731, -0.639275, 0.105324,
		-0.416110, -0.607319, -0.676769,
		31.770452, 27.052176, 29.165834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597050, 27.229168, 29.261555>,  <32.061729, 27.477299, 29.639574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597050, 27.229168, 29.261555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.268147, 27.197884, 29.036068>,  <32.070805, 27.179113, 28.900776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.268147, 27.197884, 29.036068>,  <32.597050, 27.229168, 29.261555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268147, 27.197884, 29.036068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454751, 0.505269, -0.733420,
		0.342187, -0.859411, -0.379897,
		-0.822259, -0.078208, -0.563714,
		32.021469, 27.174421, 28.866953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856358, 27.019495, 28.587730>,  <32.597050, 27.229168, 29.261555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856358, 27.019495, 28.587730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.492844, 27.179123, 28.538975>,  <32.274734, 27.274900, 28.509722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.492844, 27.179123, 28.538975>,  <32.856358, 27.019495, 28.587730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492844, 27.179123, 28.538975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338499, 0.534266, -0.774583,
		-0.243992, -0.745187, -0.620616,
		-0.908783, 0.399069, -0.121888,
		32.220207, 27.298843, 28.502409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719921, 26.931042, 27.878345>,  <32.856358, 27.019495, 28.587730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719921, 26.931042, 27.878345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.477200, 27.225357, 27.998611>,  <32.331566, 27.401947, 28.070770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.477200, 27.225357, 27.998611>,  <32.719921, 26.931042, 27.878345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477200, 27.225357, 27.998611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342719, 0.583495, -0.736258,
		-0.717168, -0.343723, -0.606238,
		-0.606806, 0.735790, 0.300664,
		32.295158, 27.446095, 28.088810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340710, 27.117556, 27.268322>,  <32.719921, 26.931042, 27.878345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340710, 27.117556, 27.268322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.302273, 27.431828, 27.512772>,  <32.279213, 27.620392, 27.659441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.302273, 27.431828, 27.512772>,  <32.340710, 27.117556, 27.268322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302273, 27.431828, 27.512772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207412, 0.616291, -0.759714,
		-0.973523, 0.053753, -0.222179,
		-0.096090, 0.785682, 0.611123,
		32.273445, 27.667532, 27.696108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902012, 27.566170, 26.890057>,  <32.340710, 27.117556, 27.268322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902012, 27.566170, 26.890057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.094688, 27.779449, 27.168243>,  <32.210293, 27.907417, 27.335155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.094688, 27.779449, 27.168243>,  <31.902012, 27.566170, 26.890057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094688, 27.779449, 27.168243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135767, 0.738616, -0.660313,
		-0.865761, 0.412488, 0.283394,
		0.481690, 0.533198, 0.695467,
		32.239197, 27.939409, 27.376884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572935, 28.225779, 26.886671>,  <31.902012, 27.566170, 26.890057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572935, 28.225779, 26.886671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.927874, 28.270836, 27.065525>,  <32.140835, 28.297871, 27.172836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.927874, 28.270836, 27.065525>,  <31.572935, 28.225779, 26.886671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927874, 28.270836, 27.065525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088285, 0.910260, -0.404515,
		-0.452574, 0.398419, 0.797771,
		0.887346, 0.112642, 0.447134,
		32.194077, 28.304628, 27.199665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771069, 28.373709, 26.928928>,  <31.572935, 28.225779, 26.886671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771069, 28.373709, 26.928928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526827, 28.383381, 26.612301>,  <30.380281, 28.389185, 26.422325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526827, 28.383381, 26.612301>,  <30.771069, 28.373709, 26.928928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526827, 28.383381, 26.612301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427822, -0.851202, 0.304012,
		-0.666433, 0.524281, 0.530092,
		-0.610603, 0.024181, -0.791568,
		30.343647, 28.390635, 26.374830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107016, 28.513519, 27.142414>,  <30.771069, 28.373709, 26.928928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107016, 28.513519, 27.142414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082857, 28.328213, 26.788750>,  <30.068361, 28.217030, 26.576551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082857, 28.328213, 26.788750>,  <30.107016, 28.513519, 27.142414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082857, 28.328213, 26.788750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400711, -0.800014, 0.446550,
		-0.914211, 0.381263, -0.137316,
		-0.060399, -0.463265, -0.884159,
		30.064737, 28.189234, 26.523502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426769, 28.344986, 27.141195>,  <30.107016, 28.513519, 27.142414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426769, 28.344986, 27.141195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.601370, 28.112732, 26.866291>,  <29.706131, 27.973379, 26.701349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.601370, 28.112732, 26.866291>,  <29.426769, 28.344986, 27.141195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601370, 28.112732, 26.866291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477178, -0.796994, 0.370272,
		-0.762735, 0.166320, -0.624959,
		0.436504, -0.580636, -0.687259,
		29.732321, 27.938541, 26.660112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903387, 28.030893, 26.851107>,  <29.426769, 28.344986, 27.141195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903387, 28.030893, 26.851107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.216644, 27.803246, 26.750874>,  <29.404598, 27.666656, 26.690735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.216644, 27.803246, 26.750874>,  <28.903387, 28.030893, 26.851107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216644, 27.803246, 26.750874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497717, -0.815246, 0.296060,
		-0.372778, -0.107140, -0.921714,
		0.783144, -0.569118, -0.250581,
		29.451588, 27.632511, 26.675699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624805, 27.373829, 26.622383>,  <28.903387, 28.030893, 26.851107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624805, 27.373829, 26.622383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.005726, 27.283623, 26.704617>,  <29.234278, 27.229500, 26.753956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.005726, 27.283623, 26.704617>,  <28.624805, 27.373829, 26.622383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005726, 27.283623, 26.704617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278591, -0.917417, 0.284134,
		0.124529, -0.327855, -0.936485,
		0.952302, -0.225514, 0.205582,
		29.291416, 27.215969, 26.766291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675488, 26.657204, 26.340029>,  <28.624805, 27.373829, 26.622383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675488, 26.657204, 26.340029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.956211, 26.700329, 26.621693>,  <29.124645, 26.726204, 26.790691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.956211, 26.700329, 26.621693>,  <28.675488, 26.657204, 26.340029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956211, 26.700329, 26.621693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265770, -0.877483, 0.399237,
		0.660930, -0.467333, -0.587172,
		0.701810, 0.107815, 0.704158,
		29.166754, 26.732674, 26.832939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993433, 26.003136, 26.432087>,  <28.675488, 26.657204, 26.340029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993433, 26.003136, 26.432087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.075146, 26.188976, 26.776741>,  <29.124174, 26.300482, 26.983534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.075146, 26.188976, 26.776741>,  <28.993433, 26.003136, 26.432087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075146, 26.188976, 26.776741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211007, -0.838605, 0.502214,
		0.955900, -0.284405, -0.073279,
		0.204284, 0.464604, 0.861633,
		29.136431, 26.328358, 27.035231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368713, 25.455778, 26.834871>,  <28.993433, 26.003136, 26.432087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368713, 25.455778, 26.834871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.254171, 25.742191, 27.089523>,  <29.185446, 25.914040, 27.242315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.254171, 25.742191, 27.089523>,  <29.368713, 25.455778, 26.834871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254171, 25.742191, 27.089523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028335, -0.670495, 0.741373,
		0.957705, 0.194255, 0.212287,
		-0.286353, 0.716032, 0.636632,
		29.168266, 25.957001, 27.280514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823526, 25.584261, 27.473116>,  <29.368713, 25.455778, 26.834871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823526, 25.584261, 27.473116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.452984, 25.695663, 27.574547>,  <29.230659, 25.762505, 27.635406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.452984, 25.695663, 27.574547>,  <29.823526, 25.584261, 27.473116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452984, 25.695663, 27.574547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017826, -0.704907, 0.709076,
		0.376230, 0.652336, 0.657958,
		-0.926355, 0.278505, 0.253579,
		29.175077, 25.779215, 27.650620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780798, 25.499878, 28.166368>,  <29.823526, 25.584261, 27.473116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780798, 25.499878, 28.166368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.391403, 25.537632, 28.083023>,  <29.157766, 25.560286, 28.033016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.391403, 25.537632, 28.083023>,  <29.780798, 25.499878, 28.166368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391403, 25.537632, 28.083023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224630, -0.566433, 0.792903,
		-0.043183, 0.818685, 0.572618,
		-0.973487, 0.094387, -0.208361,
		29.099358, 25.565948, 28.020515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420380, 25.599373, 28.829195>,  <29.780798, 25.499878, 28.166368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420380, 25.599373, 28.829195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.124674, 25.494858, 28.580933>,  <28.947250, 25.432148, 28.431974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.124674, 25.494858, 28.580933>,  <29.420380, 25.599373, 28.829195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124674, 25.494858, 28.580933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343741, -0.646125, 0.681443,
		-0.579074, 0.717113, 0.387844,
		-0.739267, -0.261288, -0.620655,
		28.902893, 25.416471, 28.394735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803236, 25.668806, 29.231876>,  <29.420380, 25.599373, 28.829195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803236, 25.668806, 29.231876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.674700, 25.406437, 28.958672>,  <28.597578, 25.249016, 28.794748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.674700, 25.406437, 28.958672>,  <28.803236, 25.668806, 29.231876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674700, 25.406437, 28.958672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601079, -0.416059, 0.682348,
		-0.731742, 0.629809, -0.260565,
		-0.321338, -0.655923, -0.683013,
		28.578299, 25.209660, 28.753767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039133, 25.648775, 29.254911>,  <28.803236, 25.668806, 29.231876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039133, 25.648775, 29.254911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.166004, 25.307018, 29.090275>,  <28.242126, 25.101963, 28.991493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.166004, 25.307018, 29.090275>,  <28.039133, 25.648775, 29.254911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166004, 25.307018, 29.090275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553068, -0.519203, 0.651571,
		-0.770398, 0.020975, -0.637218,
		0.317179, -0.854394, -0.411594,
		28.261158, 25.050701, 28.966797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470148, 25.302839, 29.158947>,  <28.039133, 25.648775, 29.254911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470148, 25.302839, 29.158947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.744642, 25.011909, 29.155445>,  <27.909338, 24.837351, 29.153343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.744642, 25.011909, 29.155445>,  <27.470148, 25.302839, 29.158947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744642, 25.011909, 29.155445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608751, -0.580863, 0.540390,
		-0.398125, -0.365507, -0.841369,
		0.686236, -0.727327, -0.008753,
		27.950514, 24.793711, 29.152819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838081, 25.134512, 28.776165>,  <27.470148, 25.302839, 29.158947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838081, 25.134512, 28.776165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.469633, 25.290009, 28.768013>,  <26.248564, 25.383307, 28.763123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.469633, 25.290009, 28.768013>,  <26.838081, 25.134512, 28.776165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469633, 25.290009, 28.768013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209163, 0.450102, -0.868135,
		-0.328306, -0.803921, -0.495909,
		-0.921122, 0.388740, -0.020379,
		26.193296, 25.406630, 28.761900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717926, 25.271381, 28.032879>,  <26.838081, 25.134512, 28.776165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717926, 25.271381, 28.032879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.466751, 25.504826, 28.238827>,  <26.316046, 25.644892, 28.362396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.466751, 25.504826, 28.238827>,  <26.717926, 25.271381, 28.032879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466751, 25.504826, 28.238827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158800, 0.743726, -0.649349,
		-0.761892, -0.325988, -0.559689,
		-0.627936, 0.583613, 0.514872,
		26.278370, 25.679909, 28.393288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404276, 25.573496, 27.562668>,  <26.717926, 25.271381, 28.032879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404276, 25.573496, 27.562668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.377947, 25.800091, 27.891243>,  <26.362150, 25.936049, 28.088388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.377947, 25.800091, 27.891243>,  <26.404276, 25.573496, 27.562668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377947, 25.800091, 27.891243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209370, 0.812737, -0.543712,
		-0.975619, 0.136196, -0.172101,
		-0.065821, 0.566488, 0.821437,
		26.358200, 25.970037, 28.137674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826445, 26.035545, 27.467484>,  <26.404276, 25.573496, 27.562668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826445, 26.035545, 27.467484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.064060, 26.187450, 27.751144>,  <26.206631, 26.278593, 27.921341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.064060, 26.187450, 27.751144>,  <25.826445, 26.035545, 27.467484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064060, 26.187450, 27.751144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017439, 0.887425, -0.460622,
		-0.804247, 0.261261, 0.533789,
		0.594040, 0.379763, 0.709152,
		26.242271, 26.301380, 27.963890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696602, 26.758038, 27.428835>,  <25.826445, 26.035545, 27.467484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696602, 26.758038, 27.428835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.000313, 26.775673, 27.688545>,  <26.182539, 26.786255, 27.844372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.000313, 26.775673, 27.688545>,  <25.696602, 26.758038, 27.428835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000313, 26.775673, 27.688545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295060, 0.865936, -0.403850,
		-0.580036, 0.498208, 0.644474,
		0.759275, 0.044089, 0.649275,
		26.228096, 26.788900, 27.883327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557394, 27.319649, 27.943811>,  <25.696602, 26.758038, 27.428835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557394, 27.319649, 27.943811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.944073, 27.244629, 27.874157>,  <26.176079, 27.199617, 27.832365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.944073, 27.244629, 27.874157>,  <25.557394, 27.319649, 27.943811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944073, 27.244629, 27.874157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115113, 0.926340, -0.358670,
		0.228579, 0.326679, 0.917078,
		0.966696, -0.187552, -0.174137,
		26.234081, 27.188364, 27.821917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942057, 27.948895, 28.033072>,  <25.557394, 27.319649, 27.943811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942057, 27.948895, 28.033072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.198721, 27.723629, 27.824795>,  <26.352718, 27.588470, 27.699829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.198721, 27.723629, 27.824795>,  <25.942057, 27.948895, 28.033072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198721, 27.723629, 27.824795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258327, 0.797895, -0.544638,
		0.722177, 0.214964, 0.657458,
		0.641660, -0.563164, -0.520691,
		26.391218, 27.554680, 27.668587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612013, 28.231102, 28.081434>,  <25.942057, 27.948895, 28.033072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612013, 28.231102, 28.081434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.622995, 28.017681, 27.743305>,  <26.629585, 27.889629, 27.540428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.622995, 28.017681, 27.743305>,  <26.612013, 28.231102, 28.081434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622995, 28.017681, 27.743305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172799, 0.835444, -0.521703,
		0.984574, -0.131746, 0.115137,
		0.027459, -0.533551, -0.845322,
		26.631233, 27.857616, 27.489708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149977, 28.579412, 27.717484>,  <26.612013, 28.231102, 28.081434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149977, 28.579412, 27.717484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.984171, 28.375797, 27.415741>,  <26.884687, 28.253628, 27.234695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.984171, 28.375797, 27.415741>,  <27.149977, 28.579412, 27.717484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984171, 28.375797, 27.415741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039707, 0.818020, -0.573817,
		0.909176, -0.267809, -0.318869,
		-0.414515, -0.509040, -0.754358,
		26.859816, 28.223085, 27.189434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621979, 28.677130, 27.211781>,  <27.149977, 28.579412, 27.717484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621979, 28.677130, 27.211781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.291637, 28.547970, 27.026871>,  <27.093433, 28.470474, 26.915924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.291637, 28.547970, 27.026871>,  <27.621979, 28.677130, 27.211781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291637, 28.547970, 27.026871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149878, 0.664621, -0.731994,
		0.543599, -0.673806, -0.500485,
		-0.825855, -0.322900, -0.462276,
		27.043880, 28.451099, 26.888187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755573, 28.482410, 26.570318>,  <27.621979, 28.677130, 27.211781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755573, 28.482410, 26.570318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.373495, 28.596897, 26.540161>,  <27.144249, 28.665588, 26.522066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.373495, 28.596897, 26.540161>,  <27.755573, 28.482410, 26.570318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373495, 28.596897, 26.540161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239332, 0.597037, -0.765681,
		-0.174138, -0.749418, -0.638787,
		-0.955194, 0.286217, -0.075393,
		27.086937, 28.682762, 26.517544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678257, 28.630547, 25.903728>,  <27.755573, 28.482410, 26.570318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678257, 28.630547, 25.903728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.353559, 28.791878, 26.072678>,  <27.158741, 28.888676, 26.174047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.353559, 28.791878, 26.072678>,  <27.678257, 28.630547, 25.903728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353559, 28.791878, 26.072678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136862, 0.834460, -0.533803,
		-0.567749, -0.375505, -0.732569,
		-0.811745, 0.403327, 0.422371,
		27.110037, 28.912876, 26.199389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200394, 28.894447, 25.283936>,  <27.678257, 28.630547, 25.903728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200394, 28.894447, 25.283936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.092947, 29.071648, 25.626068>,  <27.028479, 29.177969, 25.831348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.092947, 29.071648, 25.626068>,  <27.200394, 28.894447, 25.283936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092947, 29.071648, 25.626068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107594, 0.896210, -0.430385,
		-0.957220, -0.023579, -0.288400,
		-0.268615, 0.443003, 0.855333,
		27.012363, 29.204548, 25.882668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771837, 29.322300, 25.054926>,  <27.200394, 28.894447, 25.283936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771837, 29.322300, 25.054926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.873623, 29.480659, 25.407860>,  <26.934694, 29.575674, 25.619619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.873623, 29.480659, 25.407860>,  <26.771837, 29.322300, 25.054926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873623, 29.480659, 25.407860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015987, 0.910521, -0.413154,
		-0.966951, 0.119238, 0.225364,
		0.254462, 0.395897, 0.882335,
		26.949961, 29.599428, 25.672560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.327816, 32.081097, 30.122009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.700504, 32.170300, 30.236660>,  <36.924118, 32.223820, 30.305450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.700504, 32.170300, 30.236660>,  <36.327816, 32.081097, 30.122009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700504, 32.170300, 30.236660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049441, 0.704013, -0.708464,
		-0.359783, 0.674265, 0.644921,
		0.931725, 0.223008, 0.286629,
		36.980022, 32.237202, 30.322649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381023, 32.827557, 30.038713>,  <36.327816, 32.081097, 30.122009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381023, 32.827557, 30.038713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771118, 32.747440, 30.076229>,  <37.005177, 32.699371, 30.098738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771118, 32.747440, 30.076229>,  <36.381023, 32.827557, 30.038713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771118, 32.747440, 30.076229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215143, 0.760920, -0.612139,
		0.051241, 0.617159, 0.785169,
		0.975237, -0.200290, 0.093788,
		37.063690, 32.687355, 30.104366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763077, 33.471359, 30.284079>,  <36.381023, 32.827557, 30.038713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763077, 33.471359, 30.284079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.001671, 33.220131, 30.084190>,  <37.144829, 33.069393, 29.964256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.001671, 33.220131, 30.084190>,  <36.763077, 33.471359, 30.284079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001671, 33.220131, 30.084190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152885, 0.700125, -0.697461,
		0.787926, 0.339627, 0.513640,
		0.596488, -0.628075, -0.499723,
		37.180618, 33.031708, 29.934273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355667, 33.860786, 30.031750>,  <36.763077, 33.471359, 30.284079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355667, 33.860786, 30.031750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.371178, 33.541737, 29.790989>,  <37.380482, 33.350307, 29.646532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.371178, 33.541737, 29.790989>,  <37.355667, 33.860786, 30.031750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371178, 33.541737, 29.790989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330348, 0.578717, -0.745626,
		0.943063, -0.169927, 0.285933,
		0.038772, -0.797629, -0.601901,
		37.382809, 33.302448, 29.610418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849594, 34.035122, 29.501820>,  <37.355667, 33.860786, 30.031750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849594, 34.035122, 29.501820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.675388, 33.723701, 29.321072>,  <37.570866, 33.536850, 29.212624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.675388, 33.723701, 29.321072>,  <37.849594, 34.035122, 29.501820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675388, 33.723701, 29.321072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309977, 0.341570, -0.887268,
		0.845127, -0.526488, 0.092574,
		-0.435516, -0.778550, -0.451869,
		37.544735, 33.490135, 29.185511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304016, 33.757526, 29.040485>,  <37.849594, 34.035122, 29.501820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304016, 33.757526, 29.040485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.974827, 33.583733, 28.894100>,  <37.777313, 33.479458, 28.806269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.974827, 33.583733, 28.894100>,  <38.304016, 33.757526, 29.040485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974827, 33.583733, 28.894100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296674, 0.220663, -0.929135,
		0.484451, -0.873230, -0.052700,
		-0.822977, -0.434486, -0.365965,
		37.727932, 33.453388, 28.784311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532841, 33.385277, 28.542082>,  <38.304016, 33.757526, 29.040485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532841, 33.385277, 28.542082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145916, 33.429825, 28.450954>,  <37.913761, 33.456554, 28.396278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145916, 33.429825, 28.450954>,  <38.532841, 33.385277, 28.542082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145916, 33.429825, 28.450954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249217, 0.251512, -0.935218,
		-0.046852, -0.961426, -0.271046,
		-0.967314, 0.111366, -0.227819,
		37.855721, 33.463234, 28.382608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352840, 32.977852, 27.850130>,  <38.532841, 33.385277, 28.542082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352840, 32.977852, 27.850130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.094772, 33.278252, 27.906361>,  <37.939934, 33.458492, 27.940098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.094772, 33.278252, 27.906361>,  <38.352840, 32.977852, 27.850130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094772, 33.278252, 27.906361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200527, 0.343976, -0.917316,
		-0.737256, -0.563634, -0.372518,
		-0.645168, 0.750997, 0.140575,
		37.901222, 33.503551, 27.948532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795471, 32.851997, 27.352629>,  <38.352840, 32.977852, 27.850130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795471, 32.851997, 27.352629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800320, 33.237873, 27.457874>,  <37.803230, 33.469398, 27.521021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800320, 33.237873, 27.457874>,  <37.795471, 32.851997, 27.352629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800320, 33.237873, 27.457874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029222, 0.263361, -0.964255,
		-0.999499, 0.004001, 0.031383,
		0.012123, 0.964689, 0.263113,
		37.803955, 33.527279, 27.536808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387566, 33.069542, 26.896118>,  <37.795471, 32.851997, 27.352629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387566, 33.069542, 26.896118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.574043, 33.403149, 27.014160>,  <37.685928, 33.603313, 27.084986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.574043, 33.403149, 27.014160>,  <37.387566, 33.069542, 26.896118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574043, 33.403149, 27.014160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115699, 0.273228, -0.954966,
		-0.877084, 0.479343, 0.030883,
		0.466194, 0.834012, 0.295104,
		37.713902, 33.653351, 27.102692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026371, 33.681122, 26.650074>,  <37.387566, 33.069542, 26.896118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026371, 33.681122, 26.650074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.401814, 33.804245, 26.712391>,  <37.627079, 33.878120, 26.749781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.401814, 33.804245, 26.712391>,  <37.026371, 33.681122, 26.650074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401814, 33.804245, 26.712391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099188, 0.191748, -0.976419,
		-0.330426, 0.931925, 0.149445,
		0.938605, 0.307812, 0.155794,
		37.683395, 33.896587, 26.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190868, 34.175781, 26.134834>,  <37.026371, 33.681122, 26.650074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190868, 34.175781, 26.134834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554611, 34.092499, 26.278896>,  <37.772858, 34.042530, 26.365334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554611, 34.092499, 26.278896>,  <37.190868, 34.175781, 26.134834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554611, 34.092499, 26.278896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392030, 0.139203, -0.909360,
		0.139203, 0.968127, 0.208210,
		0.909360, -0.208210, 0.360157,
		37.827419, 34.030037, 26.386944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641270, 34.393669, 25.517313>,  <37.190868, 34.175781, 26.134834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641270, 34.393669, 25.517313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893475, 34.217628, 25.773052>,  <38.044796, 34.112003, 25.926497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893475, 34.217628, 25.773052>,  <37.641270, 34.393669, 25.517313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893475, 34.217628, 25.773052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665511, -0.117372, -0.737102,
		0.399441, 0.890245, 0.218887,
		0.630510, -0.440100, 0.639350,
		38.082626, 34.085598, 25.964857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369865, 34.710045, 25.495737>,  <37.641270, 34.393669, 25.517313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369865, 34.710045, 25.495737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.380310, 34.322655, 25.594833>,  <38.386578, 34.090221, 25.654291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.380310, 34.322655, 25.594833>,  <38.369865, 34.710045, 25.495737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380310, 34.322655, 25.594833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687802, -0.162433, -0.707492,
		0.725429, 0.188870, 0.661877,
		0.026113, -0.968475, 0.247739,
		38.388145, 34.032112, 25.669155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032749, 34.467747, 25.358303>,  <38.369865, 34.710045, 25.495737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032749, 34.467747, 25.358303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.854122, 34.114155, 25.413666>,  <38.746944, 33.902000, 25.446884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.854122, 34.114155, 25.413666>,  <39.032749, 34.467747, 25.358303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854122, 34.114155, 25.413666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619861, -0.417201, -0.664617,
		0.645252, -0.211003, 0.734253,
		-0.446567, -0.883980, 0.138407,
		38.720154, 33.848961, 25.455187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611794, 33.930328, 25.435211>,  <39.032749, 34.467747, 25.358303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611794, 33.930328, 25.435211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271061, 33.755436, 25.319828>,  <39.066620, 33.650501, 25.250599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271061, 33.755436, 25.319828>,  <39.611794, 33.930328, 25.435211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271061, 33.755436, 25.319828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515786, -0.604101, -0.607476,
		0.091350, -0.666251, 0.740111,
		-0.851833, -0.437232, -0.288458,
		39.015511, 33.624268, 25.233290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835831, 33.250423, 25.341084>,  <39.611794, 33.930328, 25.435211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835831, 33.250423, 25.341084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.498055, 33.273769, 25.128101>,  <39.295387, 33.287777, 25.000313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.498055, 33.273769, 25.128101>,  <39.835831, 33.250423, 25.341084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498055, 33.273769, 25.128101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338614, -0.712060, -0.615070,
		-0.415035, -0.699689, 0.581534,
		-0.844445, 0.058360, -0.532454,
		39.244720, 33.291279, 24.968365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701061, 32.464130, 25.304335>,  <39.835831, 33.250423, 25.341084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701061, 32.464130, 25.304335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502216, 32.649017, 25.010605>,  <39.382908, 32.759949, 24.834366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502216, 32.649017, 25.010605>,  <39.701061, 32.464130, 25.304335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502216, 32.649017, 25.010605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441661, -0.593673, -0.672672,
		-0.746870, -0.658716, 0.090979,
		-0.497112, 0.462217, -0.734326,
		39.353081, 32.787682, 24.790306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453072, 31.886932, 24.946802>,  <39.701061, 32.464130, 25.304335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453072, 31.886932, 24.946802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.446064, 32.210926, 24.712326>,  <39.441860, 32.405323, 24.571640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.446064, 32.210926, 24.712326>,  <39.453072, 31.886932, 24.946802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446064, 32.210926, 24.712326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465700, -0.512192, -0.721653,
		-0.884769, -0.285631, -0.368237,
		-0.017519, 0.809984, -0.586190,
		39.440807, 32.453922, 24.536469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113148, 31.735510, 24.271170>,  <39.453072, 31.886932, 24.946802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113148, 31.735510, 24.271170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326366, 32.065186, 24.194672>,  <39.454296, 32.262989, 24.148773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326366, 32.065186, 24.194672>,  <39.113148, 31.735510, 24.271170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326366, 32.065186, 24.194672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454376, -0.469529, -0.757024,
		-0.713725, 0.316633, -0.624772,
		0.533048, 0.824188, -0.191244,
		39.486282, 32.312443, 24.137299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328156, 31.671196, 23.569134>,  <39.113148, 31.735510, 24.271170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328156, 31.671196, 23.569134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.589687, 31.965321, 23.640484>,  <39.746609, 32.141796, 23.683294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.589687, 31.965321, 23.640484>,  <39.328156, 31.671196, 23.569134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589687, 31.965321, 23.640484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644383, -0.417575, -0.640626,
		-0.396577, 0.533803, -0.746847,
		0.653833, 0.735313, 0.178373,
		39.785839, 32.185913, 23.693996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652645, 31.985661, 23.512440>,  <39.328156, 31.671196, 23.569134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652645, 31.985661, 23.512440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341892, 31.751080, 23.420769>,  <38.155441, 31.610331, 23.365767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341892, 31.751080, 23.420769>,  <38.652645, 31.985661, 23.512440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341892, 31.751080, 23.420769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079470, -0.269740, 0.959648,
		-0.624607, 0.763749, 0.162952,
		-0.776885, -0.586453, -0.229176,
		38.108826, 31.575144, 23.352016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075268, 32.313118, 23.917839>,  <38.652645, 31.985661, 23.512440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075268, 32.313118, 23.917839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.979485, 31.937740, 23.818253>,  <37.922016, 31.712515, 23.758501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.979485, 31.937740, 23.818253>,  <38.075268, 32.313118, 23.917839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979485, 31.937740, 23.818253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188621, -0.206578, 0.960077,
		-0.952409, 0.276857, -0.127543,
		-0.239456, -0.938443, -0.248968,
		37.907646, 31.656208, 23.743563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476414, 32.176926, 24.344095>,  <38.075268, 32.313118, 23.917839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476414, 32.176926, 24.344095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626240, 31.818584, 24.248466>,  <37.716133, 31.603580, 24.191090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626240, 31.818584, 24.248466>,  <37.476414, 32.176926, 24.344095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626240, 31.818584, 24.248466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201016, -0.330168, 0.922270,
		-0.905150, -0.297390, -0.303748,
		0.374562, -0.895851, -0.239071,
		37.738609, 31.549829, 24.176744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944710, 31.725681, 24.467106>,  <37.476414, 32.176926, 24.344095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944710, 31.725681, 24.467106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.276398, 31.502125, 24.464802>,  <37.475410, 31.367990, 24.463419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.276398, 31.502125, 24.464802>,  <36.944710, 31.725681, 24.467106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276398, 31.502125, 24.464802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231760, -0.353199, 0.906387,
		-0.508607, -0.750260, -0.422408,
		0.829220, -0.558892, -0.005759,
		37.525166, 31.334457, 24.463074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723583, 31.048769, 24.647873>,  <36.944710, 31.725681, 24.467106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723583, 31.048769, 24.647873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112667, 31.044849, 24.740597>,  <37.346119, 31.042498, 24.796230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112667, 31.044849, 24.740597>,  <36.723583, 31.048769, 24.647873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112667, 31.044849, 24.740597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213095, -0.432929, 0.875878,
		0.091774, -0.901375, -0.423204,
		0.972712, -0.009800, 0.231810,
		37.404480, 31.041910, 24.810141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840733, 30.446363, 24.986111>,  <36.723583, 31.048769, 24.647873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840733, 30.446363, 24.986111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177204, 30.639046, 25.084396>,  <37.379089, 30.754654, 25.143368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177204, 30.639046, 25.084396>,  <36.840733, 30.446363, 24.986111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177204, 30.639046, 25.084396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055111, -0.375657, 0.925119,
		0.537937, -0.791734, -0.289449,
		0.841182, 0.481704, 0.245713,
		37.429558, 30.783556, 25.158110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251480, 29.958147, 25.365635>,  <36.840733, 30.446363, 24.986111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251480, 29.958147, 25.365635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.385197, 30.317139, 25.480721>,  <37.465427, 30.532534, 25.549772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.385197, 30.317139, 25.480721>,  <37.251480, 29.958147, 25.365635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385197, 30.317139, 25.480721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006566, -0.303053, 0.952951,
		0.942447, -0.320453, -0.095415,
		0.334292, 0.897479, 0.287716,
		37.485485, 30.586382, 25.567036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878609, 29.833471, 25.840380>,  <37.251480, 29.958147, 25.365635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878609, 29.833471, 25.840380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.732922, 30.197891, 25.917664>,  <37.645508, 30.416544, 25.964033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.732922, 30.197891, 25.917664>,  <37.878609, 29.833471, 25.840380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732922, 30.197891, 25.917664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008593, -0.210737, 0.977505,
		0.931273, 0.354366, 0.084584,
		-0.364220, 0.911051, 0.193209,
		37.623657, 30.471207, 25.975626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315742, 30.077446, 26.408316>,  <37.878609, 29.833471, 25.840380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315742, 30.077446, 26.408316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.978848, 30.291214, 26.436672>,  <37.776711, 30.419476, 26.453686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.978848, 30.291214, 26.436672>,  <38.315742, 30.077446, 26.408316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978848, 30.291214, 26.436672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055633, -0.216960, 0.974594,
		0.536224, 0.816899, 0.212464,
		-0.842241, 0.534420, 0.070892,
		37.726173, 30.451540, 26.457939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445621, 30.463266, 26.944260>,  <38.315742, 30.077446, 26.408316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445621, 30.463266, 26.944260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.049667, 30.504219, 26.904987>,  <37.812096, 30.528791, 26.881424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.049667, 30.504219, 26.904987>,  <38.445621, 30.463266, 26.944260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049667, 30.504219, 26.904987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092200, 0.061601, 0.993833,
		0.107799, 0.992836, -0.051539,
		-0.989888, 0.102382, -0.098180,
		37.752701, 30.534933, 26.875534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324417, 30.998959, 27.281305>,  <38.445621, 30.463266, 26.944260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324417, 30.998959, 27.281305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973660, 30.807426, 27.264473>,  <37.763203, 30.692507, 27.254374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973660, 30.807426, 27.264473>,  <38.324417, 30.998959, 27.281305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973660, 30.807426, 27.264473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083787, 0.066062, 0.994291,
		-0.473318, 0.875418, -0.098050,
		-0.876898, -0.478831, -0.042081,
		37.710590, 30.663776, 27.251848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729004, 31.310760, 27.735641>,  <38.324417, 30.998959, 27.281305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729004, 31.310760, 27.735641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.623188, 30.928734, 27.682167>,  <37.559700, 30.699518, 27.650082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.623188, 30.928734, 27.682167>,  <37.729004, 31.310760, 27.735641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623188, 30.928734, 27.682167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240444, -0.068930, 0.968212,
		-0.933920, 0.288272, -0.211405,
		-0.264536, -0.955064, -0.133688,
		37.543827, 30.642214, 27.642061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204021, 31.209574, 28.189262>,  <37.729004, 31.310760, 27.735641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204021, 31.209574, 28.189262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292221, 30.830093, 28.098625>,  <37.345142, 30.602406, 28.044243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292221, 30.830093, 28.098625>,  <37.204021, 31.209574, 28.189262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292221, 30.830093, 28.098625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181293, -0.268125, 0.946172,
		-0.958391, -0.167552, -0.231115,
		0.220501, -0.948702, -0.226593,
		37.358372, 30.545483, 28.030647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626499, 30.813032, 28.448862>,  <37.204021, 31.209574, 28.189262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626499, 30.813032, 28.448862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.936382, 30.560146, 28.444317>,  <37.122311, 30.408415, 28.441589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.936382, 30.560146, 28.444317>,  <36.626499, 30.813032, 28.448862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936382, 30.560146, 28.444317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201810, -0.264247, 0.943105,
		-0.599248, -0.728338, -0.332302,
		0.774709, -0.632216, -0.011363,
		37.168797, 30.370481, 28.440908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347141, 30.196882, 28.814949>,  <36.626499, 30.813032, 28.448862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347141, 30.196882, 28.814949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.746613, 30.176693, 28.810940>,  <36.986294, 30.164579, 28.808535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.746613, 30.176693, 28.810940>,  <36.347141, 30.196882, 28.814949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746613, 30.176693, 28.810940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001919, -0.231143, 0.972918,
		-0.051425, -0.971610, -0.230933,
		0.998675, -0.050476, -0.010022,
		37.046215, 30.161551, 28.807934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486988, 29.559149, 29.073563>,  <36.347141, 30.196882, 28.814949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486988, 29.559149, 29.073563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.825047, 29.764664, 29.132549>,  <37.027882, 29.887972, 29.167940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.825047, 29.764664, 29.132549>,  <36.486988, 29.559149, 29.073563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825047, 29.764664, 29.132549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075271, -0.387521, 0.918783,
		0.529205, -0.765408, -0.366186,
		0.845149, 0.513787, 0.147465,
		37.078590, 29.918800, 29.176788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781639, 29.296968, 29.705421>,  <36.486988, 29.559149, 29.073563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781639, 29.296968, 29.705421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.023598, 29.610035, 29.646725>,  <37.168774, 29.797874, 29.611506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.023598, 29.610035, 29.646725>,  <36.781639, 29.296968, 29.705421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023598, 29.610035, 29.646725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253033, -0.014190, 0.967354,
		0.755034, -0.622278, -0.206624,
		0.604895, 0.782667, -0.146743,
		37.205067, 29.844835, 29.602701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392307, 29.015728, 29.984764>,  <36.781639, 29.296968, 29.705421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392307, 29.015728, 29.984764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.381649, 29.415485, 29.975796>,  <37.375256, 29.655340, 29.970415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.381649, 29.415485, 29.975796>,  <37.392307, 29.015728, 29.984764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381649, 29.415485, 29.975796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213277, 0.027596, 0.976602,
		0.976629, 0.021240, -0.213883,
		-0.026646, 0.999394, -0.022421,
		37.373657, 29.715303, 29.969070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051498, 29.243389, 30.368832>,  <37.392307, 29.015728, 29.984764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051498, 29.243389, 30.368832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.783749, 29.540340, 30.357422>,  <37.623100, 29.718512, 30.350576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.783749, 29.540340, 30.357422>,  <38.051498, 29.243389, 30.368832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783749, 29.540340, 30.357422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047208, 0.080819, 0.995610,
		0.741424, 0.665089, -0.089144,
		-0.669374, 0.742378, -0.028524,
		37.582935, 29.763054, 30.348866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345284, 29.620090, 30.880152>,  <38.051498, 29.243389, 30.368832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345284, 29.620090, 30.880152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961380, 29.724998, 30.840000>,  <37.731037, 29.787943, 30.815908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961380, 29.724998, 30.840000>,  <38.345284, 29.620090, 30.880152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961380, 29.724998, 30.840000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148627, -0.171121, 0.973975,
		0.238270, 0.949700, 0.203216,
		-0.959759, 0.262272, -0.100379,
		37.673450, 29.803680, 30.809887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200901, 29.854692, 31.565851>,  <38.345284, 29.620090, 30.880152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200901, 29.854692, 31.565851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.846939, 29.765297, 31.402390>,  <37.634563, 29.711660, 31.304312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.846939, 29.765297, 31.402390>,  <38.200901, 29.854692, 31.565851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846939, 29.765297, 31.402390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240266, -0.532602, 0.811546,
		-0.399021, 0.816326, 0.417605,
		-0.884904, -0.223487, -0.408655,
		37.581467, 29.698250, 31.279793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<24.865820, 29.565882, 30.246281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.081026, 29.530270, 30.581570>,  <25.210150, 29.508902, 30.782743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.081026, 29.530270, 30.581570>,  <24.865820, 29.565882, 30.246281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081026, 29.530270, 30.581570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491160, -0.841268, 0.225898,
		0.685056, -0.533237, -0.496343,
		0.538015, -0.089032, 0.838220,
		25.242430, 29.503561, 30.833036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933756, 28.812830, 30.200687>,  <24.865820, 29.565882, 30.246281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933756, 28.812830, 30.200687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.032423, 28.923386, 30.572227>,  <25.091623, 28.989719, 30.795151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.032423, 28.923386, 30.572227>,  <24.933756, 28.812830, 30.200687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032423, 28.923386, 30.572227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452647, -0.814632, 0.362610,
		0.856892, -0.509886, -0.075839,
		0.246670, 0.276389, 0.928850,
		25.106424, 29.006302, 30.850883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309357, 28.277510, 30.620712>,  <24.933756, 28.812830, 30.200687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309357, 28.277510, 30.620712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.124537, 28.516865, 30.882534>,  <25.013645, 28.660479, 31.039627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.124537, 28.516865, 30.882534>,  <25.309357, 28.277510, 30.620712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124537, 28.516865, 30.882534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467946, -0.791456, 0.393222,
		0.753351, -0.124609, 0.645705,
		-0.462048, 0.598389, 0.654555,
		24.985922, 28.696381, 31.078901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314432, 27.825403, 31.203556>,  <25.309357, 28.277510, 30.620712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314432, 27.825403, 31.203556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.044481, 28.099762, 31.312431>,  <24.882511, 28.264378, 31.377756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.044481, 28.099762, 31.312431>,  <25.314432, 27.825403, 31.203556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044481, 28.099762, 31.312431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538592, -0.709985, 0.453696,
		0.504440, 0.159590, 0.848570,
		-0.674877, 0.685896, 0.272190,
		24.842018, 28.305531, 31.394089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230642, 27.808392, 32.000576>,  <25.314432, 27.825403, 31.203556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230642, 27.808392, 32.000576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.905973, 27.979439, 31.841415>,  <24.711172, 28.082067, 31.745918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.905973, 27.979439, 31.841415>,  <25.230642, 27.808392, 32.000576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905973, 27.979439, 31.841415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583453, -0.561230, 0.587029,
		0.027709, 0.708634, 0.705032,
		-0.811674, 0.427619, -0.397904,
		24.662472, 28.107725, 31.722044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800858, 27.855175, 32.546150>,  <25.230642, 27.808392, 32.000576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800858, 27.855175, 32.546150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.544481, 27.896790, 32.241947>,  <24.390656, 27.921759, 32.059425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.544481, 27.896790, 32.241947>,  <24.800858, 27.855175, 32.546150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544481, 27.896790, 32.241947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690847, -0.510011, 0.512464,
		-0.334551, 0.853853, 0.398761,
		-0.640942, 0.104037, -0.760507,
		24.352200, 27.928001, 32.013794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.099901, 27.889830, 32.857243>,  <24.800858, 27.855175, 32.546150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.099901, 27.889830, 32.857243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.999977, 27.818611, 32.476528>,  <23.940022, 27.775881, 32.248100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.999977, 27.818611, 32.476528>,  <24.099901, 27.889830, 32.857243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.999977, 27.818611, 32.476528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747235, -0.589693, 0.306435,
		-0.615820, 0.787758, 0.014271,
		-0.249812, -0.178045, -0.951785,
		23.925034, 27.765198, 32.190994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.356354, 28.035162, 32.835857>,  <24.099901, 27.889830, 32.857243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.356354, 28.035162, 32.835857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.497574, 27.782124, 32.560123>,  <23.582306, 27.630301, 32.394684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.497574, 27.782124, 32.560123>,  <23.356354, 28.035162, 32.835857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.497574, 27.782124, 32.560123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639649, -0.700890, 0.315598,
		-0.682791, 0.329509, -0.652089,
		0.353050, -0.632596, -0.689332,
		23.603489, 27.592344, 32.353325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.725586, 27.771778, 32.451771>,  <23.356354, 28.035162, 32.835857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.725586, 27.771778, 32.451771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.026497, 27.512489, 32.404629>,  <23.207043, 27.356916, 32.376343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.026497, 27.512489, 32.404629>,  <22.725586, 27.771778, 32.451771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.026497, 27.512489, 32.404629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622369, -0.757859, 0.195718,
		-0.216183, -0.073888, -0.973553,
		0.752277, -0.648220, -0.117851,
		23.252180, 27.318024, 32.369274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.392241, 27.170475, 32.185524>,  <22.725586, 27.771778, 32.451771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.392241, 27.170475, 32.185524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.747246, 27.051117, 32.325966>,  <22.960249, 26.979502, 32.410233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.747246, 27.051117, 32.325966>,  <22.392241, 27.170475, 32.185524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.747246, 27.051117, 32.325966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419019, -0.839632, 0.345602,
		0.191677, -0.453849, -0.870219,
		0.887515, -0.298394, 0.351110,
		23.013500, 26.961599, 32.431297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.301315, 26.480419, 32.213261>,  <22.392241, 27.170475, 32.185524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.301315, 26.480419, 32.213261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.630665, 26.523766, 32.436081>,  <22.828276, 26.549772, 32.569775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.630665, 26.523766, 32.436081>,  <22.301315, 26.480419, 32.213261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630665, 26.523766, 32.436081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241727, -0.821128, 0.517027,
		0.513440, -0.560363, -0.649902,
		0.823375, 0.108364, 0.557055,
		22.877678, 26.556274, 32.603199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.932251, 26.062786, 32.194530>,  <22.301315, 26.480419, 32.213261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.932251, 26.062786, 32.194530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.875425, 26.163658, 32.577408>,  <22.841330, 26.224182, 32.807133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.875425, 26.163658, 32.577408>,  <22.932251, 26.062786, 32.194530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875425, 26.163658, 32.577408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382752, -0.905781, 0.181830,
		0.912863, -0.340536, 0.225202,
		-0.142064, 0.252182, 0.957195,
		22.832806, 26.239313, 32.864567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.294991, 25.547691, 32.669563>,  <22.932251, 26.062786, 32.194530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.294991, 25.547691, 32.669563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.975355, 25.718758, 32.838589>,  <22.783573, 25.821398, 32.940002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.975355, 25.718758, 32.838589>,  <23.294991, 25.547691, 32.669563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.975355, 25.718758, 32.838589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399140, -0.902983, 0.159086,
		0.449601, -0.041537, 0.892263,
		-0.799090, 0.427664, 0.422562,
		22.735628, 25.847057, 32.965359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.170681, 25.230383, 33.283436>,  <23.294991, 25.547691, 32.669563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.170681, 25.230383, 33.283436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.820168, 25.352173, 33.134075>,  <22.609859, 25.425247, 33.044460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.820168, 25.352173, 33.134075>,  <23.170681, 25.230383, 33.283436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.820168, 25.352173, 33.134075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412918, -0.873929, 0.256412,
		-0.248253, 0.378872, 0.891531,
		-0.876282, 0.304474, -0.373398,
		22.557283, 25.443516, 33.022057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.823805, 24.420355, 33.212494>,  <23.170681, 25.230383, 33.283436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.823805, 24.420355, 33.212494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.826963, 24.043922, 33.077255>,  <22.828859, 23.818064, 32.996113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.826963, 24.043922, 33.077255>,  <22.823805, 24.420355, 33.212494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.826963, 24.043922, 33.077255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506331, 0.295321, -0.810194,
		0.862303, -0.164788, 0.478830,
		0.007898, -0.941079, -0.338094,
		22.829332, 23.761599, 32.975826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.566193, 24.196869, 33.085182>,  <22.823805, 24.420355, 33.212494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.566193, 24.196869, 33.085182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.333494, 23.978001, 32.844460>,  <23.193874, 23.846680, 32.700024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.333494, 23.978001, 32.844460>,  <23.566193, 24.196869, 33.085182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.333494, 23.978001, 32.844460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447457, 0.402582, -0.798567,
		0.679230, -0.733848, 0.010634,
		-0.581746, -0.547170, -0.601811,
		23.158970, 23.813850, 32.663918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.958965, 24.114006, 32.539299>,  <23.566193, 24.196869, 33.085182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.958965, 24.114006, 32.539299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.615942, 23.981853, 32.381596>,  <23.410128, 23.902561, 32.286972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.615942, 23.981853, 32.381596>,  <23.958965, 24.114006, 32.539299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.615942, 23.981853, 32.381596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246692, 0.408417, -0.878828,
		0.451376, -0.850905, -0.268737,
		-0.857556, -0.330387, -0.394262,
		23.358675, 23.882738, 32.263317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.085175, 23.651649, 31.880865>,  <23.958965, 24.114006, 32.539299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.085175, 23.651649, 31.880865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.715746, 23.803448, 31.858963>,  <23.494089, 23.894527, 31.845821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.715746, 23.803448, 31.858963>,  <24.085175, 23.651649, 31.880865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.715746, 23.803448, 31.858963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202871, 0.362478, -0.909644,
		-0.325359, -0.851230, -0.411763,
		-0.923572, 0.379495, -0.054754,
		23.438675, 23.917295, 31.842537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855080, 23.406052, 31.227375>,  <24.085175, 23.651649, 31.880865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855080, 23.406052, 31.227375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.639339, 23.725342, 31.334660>,  <23.509895, 23.916916, 31.399031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.639339, 23.725342, 31.334660>,  <23.855080, 23.406052, 31.227375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.639339, 23.725342, 31.334660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289359, 0.474798, -0.831167,
		-0.790806, -0.370680, -0.487056,
		-0.539350, 0.798225, 0.268213,
		23.477535, 23.964809, 31.415123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.473301, 23.588781, 30.652319>,  <23.855080, 23.406052, 31.227375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.473301, 23.588781, 30.652319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.527298, 23.912827, 30.880527>,  <23.559696, 24.107254, 31.017452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.527298, 23.912827, 30.880527>,  <23.473301, 23.588781, 30.652319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.527298, 23.912827, 30.880527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613331, 0.383905, -0.690248,
		-0.778205, 0.443095, -0.445044,
		0.134991, 0.810113, 0.570521,
		23.567795, 24.155861, 31.051683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.320311, 24.214924, 30.223347>,  <23.473301, 23.588781, 30.652319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.320311, 24.214924, 30.223347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.540392, 24.365540, 30.521473>,  <23.672440, 24.455910, 30.700348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.540392, 24.365540, 30.521473>,  <23.320311, 24.214924, 30.223347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.540392, 24.365540, 30.521473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596768, 0.447005, -0.666374,
		-0.584077, 0.811421, 0.021236,
		0.550202, 0.376540, 0.745315,
		23.705452, 24.478502, 30.745068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.411852, 24.879145, 30.036442>,  <23.320311, 24.214924, 30.223347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.411852, 24.879145, 30.036442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.701336, 24.813274, 30.304508>,  <23.875027, 24.773752, 30.465347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.701336, 24.813274, 30.304508>,  <23.411852, 24.879145, 30.036442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.701336, 24.813274, 30.304508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660933, 0.444751, -0.604454,
		-0.198518, 0.880385, 0.430712,
		0.723712, -0.164677, 0.670166,
		23.918449, 24.763872, 30.505558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.845734, 25.510548, 30.038940>,  <23.411852, 24.879145, 30.036442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.845734, 25.510548, 30.038940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.075397, 25.225525, 30.200237>,  <24.213196, 25.054510, 30.297014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.075397, 25.225525, 30.200237>,  <23.845734, 25.510548, 30.038940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.075397, 25.225525, 30.200237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756288, 0.272906, -0.594602,
		0.313642, 0.646361, 0.695590,
		0.574158, -0.712558, 0.403240,
		24.247644, 25.011757, 30.321209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429525, 25.777216, 30.070791>,  <23.845734, 25.510548, 30.038940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429525, 25.777216, 30.070791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.531013, 25.390392, 30.079041>,  <24.591908, 25.158298, 30.083990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.531013, 25.390392, 30.079041>,  <24.429525, 25.777216, 30.070791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531013, 25.390392, 30.079041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758154, 0.185583, -0.625109,
		0.600689, 0.174238, 0.780265,
		0.253722, -0.967057, 0.020622,
		24.607130, 25.100275, 30.085228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117956, 25.766441, 30.207220>,  <24.429525, 25.777216, 30.070791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117956, 25.766441, 30.207220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.058706, 25.397659, 30.064079>,  <25.023155, 25.176390, 29.978195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.058706, 25.397659, 30.064079>,  <25.117956, 25.766441, 30.207220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058706, 25.397659, 30.064079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708687, 0.153430, -0.688637,
		0.689798, -0.355610, 0.630650,
		-0.148126, -0.921955, -0.357853,
		25.014269, 25.121073, 29.956724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640196, 25.439936, 30.265574>,  <25.117956, 25.766441, 30.207220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640196, 25.439936, 30.265574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.461971, 25.253044, 29.960110>,  <25.355038, 25.140909, 29.776831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.461971, 25.253044, 29.960110>,  <25.640196, 25.439936, 30.265574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461971, 25.253044, 29.960110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735465, 0.295341, -0.609807,
		0.510459, -0.833350, 0.212037,
		-0.445559, -0.467227, -0.763659,
		25.328304, 25.112877, 29.731012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162264, 25.153929, 29.967007>,  <25.640196, 25.439936, 30.265574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162264, 25.153929, 29.967007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.880291, 25.143768, 29.683479>,  <25.711107, 25.137672, 29.513363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.880291, 25.143768, 29.683479>,  <26.162264, 25.153929, 29.967007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880291, 25.143768, 29.683479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694781, 0.176274, -0.697286,
		0.142658, -0.984013, -0.106612,
		-0.704931, -0.025401, -0.708820,
		25.668812, 25.136148, 29.470833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570089, 25.027977, 29.445286>,  <26.162264, 25.153929, 29.967007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570089, 25.027977, 29.445286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.227997, 25.143803, 29.273365>,  <26.022741, 25.213299, 29.170214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.227997, 25.143803, 29.273365>,  <26.570089, 25.027977, 29.445286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227997, 25.143803, 29.273365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507553, 0.300416, -0.807552,
		-0.104721, -0.908791, -0.403896,
		-0.855233, 0.289566, -0.429800,
		25.971426, 25.230673, 29.144424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123783, 24.630438, 29.262590>,  <26.570089, 25.027977, 29.445286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123783, 24.630438, 29.262590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.502239, 24.510647, 29.311794>,  <27.729313, 24.438772, 29.341316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.502239, 24.510647, 29.311794>,  <27.123783, 24.630438, 29.262590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502239, 24.510647, 29.311794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297648, -0.655140, 0.694404,
		-0.127368, -0.693618, -0.708994,
		0.946141, -0.299476, 0.123010,
		27.786081, 24.420803, 29.348698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093113, 23.967825, 29.330681>,  <27.123783, 24.630438, 29.262590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093113, 23.967825, 29.330681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.450970, 24.042324, 29.493126>,  <27.665684, 24.087023, 29.590593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.450970, 24.042324, 29.493126>,  <27.093113, 23.967825, 29.330681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450970, 24.042324, 29.493126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278040, -0.479426, 0.832373,
		0.349728, -0.857591, -0.377131,
		0.894642, 0.186247, 0.406113,
		27.719362, 24.098198, 29.614960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347147, 23.410721, 29.525562>,  <27.093113, 23.967825, 29.330681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347147, 23.410721, 29.525562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542284, 23.674141, 29.754761>,  <27.659367, 23.832193, 29.892279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542284, 23.674141, 29.754761>,  <27.347147, 23.410721, 29.525562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542284, 23.674141, 29.754761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371675, -0.437231, 0.818955,
		0.789853, -0.612488, 0.031466,
		0.487842, 0.658549, 0.572995,
		27.688637, 23.871706, 29.926659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624027, 23.040031, 30.127239>,  <27.347147, 23.410721, 29.525562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624027, 23.040031, 30.127239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.666405, 23.396580, 30.303528>,  <27.691832, 23.610508, 30.409300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.666405, 23.396580, 30.303528>,  <27.624027, 23.040031, 30.127239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666405, 23.396580, 30.303528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290069, -0.396233, 0.871125,
		0.951123, -0.220130, 0.216581,
		0.105944, 0.891371, 0.440719,
		27.698189, 23.663992, 30.435743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062025, 22.934841, 30.772423>,  <27.624027, 23.040031, 30.127239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062025, 22.934841, 30.772423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.859400, 23.274925, 30.829750>,  <27.737825, 23.478975, 30.864147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.859400, 23.274925, 30.829750>,  <28.062025, 22.934841, 30.772423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859400, 23.274925, 30.829750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206124, -0.280821, 0.937365,
		0.837203, 0.445291, 0.317501,
		-0.506561, 0.850209, 0.143319,
		27.707432, 23.529987, 30.872746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093904, 23.037777, 31.476431>,  <28.062025, 22.934841, 30.772423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093904, 23.037777, 31.476431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.778877, 23.252487, 31.355366>,  <27.589861, 23.381313, 31.282726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.778877, 23.252487, 31.355366>,  <28.093904, 23.037777, 31.476431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778877, 23.252487, 31.355366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504139, -0.278800, 0.817383,
		0.354370, 0.796330, 0.490184,
		-0.787570, 0.536777, -0.302663,
		27.542606, 23.413521, 31.264566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948099, 23.591827, 31.948435>,  <28.093904, 23.037777, 31.476431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948099, 23.591827, 31.948435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.610249, 23.537804, 31.741219>,  <27.407537, 23.505390, 31.616888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.610249, 23.537804, 31.741219>,  <27.948099, 23.591827, 31.948435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610249, 23.537804, 31.741219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516915, -0.046049, 0.854797,
		-0.139304, 0.989767, -0.030920,
		-0.844626, -0.135060, -0.518040,
		27.356861, 23.497286, 31.585806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186226, 24.240574, 32.331741>,  <27.948099, 23.591827, 31.948435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186226, 24.240574, 32.331741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.476830, 24.299629, 32.600185>,  <28.651192, 24.335062, 32.761250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.476830, 24.299629, 32.600185>,  <28.186226, 24.240574, 32.331741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476830, 24.299629, 32.600185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641162, 0.205656, -0.739336,
		-0.247171, 0.967424, 0.054752,
		0.726511, 0.147637, 0.671107,
		28.694782, 24.343920, 32.801517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433201, 24.827953, 32.161358>,  <28.186226, 24.240574, 32.331741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433201, 24.827953, 32.161358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.723560, 24.675137, 32.390133>,  <28.897776, 24.583447, 32.527397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.723560, 24.675137, 32.390133>,  <28.433201, 24.827953, 32.161358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723560, 24.675137, 32.390133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685715, 0.337294, -0.645002,
		0.053505, 0.860394, 0.506813,
		0.725901, -0.382041, 0.571938,
		28.941330, 24.560524, 32.561714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870211, 25.456676, 32.407326>,  <28.433201, 24.827953, 32.161358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870211, 25.456676, 32.407326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.055977, 25.103512, 32.379654>,  <29.167437, 24.891613, 32.363052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.055977, 25.103512, 32.379654>,  <28.870211, 25.456676, 32.407326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055977, 25.103512, 32.379654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687184, 0.408528, -0.600736,
		0.558657, 0.231455, 0.796449,
		0.464415, -0.882912, -0.069175,
		29.195301, 24.838638, 32.358902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587038, 25.551870, 32.487213>,  <28.870211, 25.456676, 32.407326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587038, 25.551870, 32.487213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.585052, 25.208244, 32.282478>,  <29.583862, 25.002069, 32.159637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.585052, 25.208244, 32.282478>,  <29.587038, 25.551870, 32.487213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585052, 25.208244, 32.282478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739549, 0.341368, -0.580116,
		0.673084, -0.381410, 0.633628,
		-0.004961, -0.859066, -0.511841,
		29.583565, 24.950525, 32.128925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274595, 25.396461, 32.448326>,  <29.587038, 25.551870, 32.487213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274595, 25.396461, 32.448326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.097157, 25.175415, 32.166096>,  <29.990692, 25.042788, 31.996758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.097157, 25.175415, 32.166096>,  <30.274595, 25.396461, 32.448326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097157, 25.175415, 32.166096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747665, 0.205924, -0.631342,
		0.494184, -0.807596, 0.321824,
		-0.443598, -0.552615, -0.705576,
		29.964077, 25.009630, 31.954424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769785, 24.905401, 32.263103>,  <30.274595, 25.396461, 32.448326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769785, 24.905401, 32.263103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.492262, 24.955410, 31.979412>,  <30.325748, 24.985415, 31.809198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.492262, 24.955410, 31.979412>,  <30.769785, 24.905401, 32.263103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492262, 24.955410, 31.979412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719775, 0.088100, -0.688595,
		-0.023608, -0.988234, -0.151113,
		-0.693806, 0.125023, -0.709227,
		30.284121, 24.992916, 31.766644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016945, 24.519749, 31.614494>,  <30.769785, 24.905401, 32.263103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016945, 24.519749, 31.614494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.737070, 24.784420, 31.506702>,  <30.569145, 24.943222, 31.442028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.737070, 24.784420, 31.506702>,  <31.016945, 24.519749, 31.614494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737070, 24.784420, 31.506702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616233, 0.368067, -0.696264,
		-0.361515, -0.653230, -0.665279,
		-0.699688, 0.661677, -0.269480,
		30.527164, 24.982924, 31.425858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.039127, 27.565586, 35.119453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.770853, 27.555321, 34.822933>,  <24.609888, 27.549162, 34.645023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.770853, 27.555321, 34.822933>,  <25.039127, 27.565586, 35.119453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770853, 27.555321, 34.822933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524460, 0.690319, -0.498399,
		0.524521, -0.723050, -0.449529,
		-0.670686, -0.025661, -0.741297,
		24.569647, 27.547623, 34.600544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364260, 27.566586, 34.411835>,  <25.039127, 27.565586, 35.119453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364260, 27.566586, 34.411835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.995703, 27.710697, 34.353546>,  <24.774569, 27.797165, 34.318573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.995703, 27.710697, 34.353546>,  <25.364260, 27.566586, 34.411835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995703, 27.710697, 34.353546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382152, 0.771712, -0.508350,
		-0.070691, -0.524079, -0.848731,
		-0.921391, 0.360280, -0.145725,
		24.719286, 27.818781, 34.309830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251463, 27.574665, 33.709198>,  <25.364260, 27.566586, 34.411835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251463, 27.574665, 33.709198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.024691, 27.853943, 33.884064>,  <24.888626, 28.021509, 33.988983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.024691, 27.853943, 33.884064>,  <25.251463, 27.574665, 33.709198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024691, 27.853943, 33.884064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544850, 0.715847, -0.436694,
		-0.617841, -0.009386, -0.786247,
		-0.566932, 0.698194, 0.437165,
		24.854610, 28.063400, 34.015213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286634, 28.052214, 33.293537>,  <25.251463, 27.574665, 33.709198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286634, 28.052214, 33.293537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.105026, 28.255211, 33.586472>,  <24.996061, 28.377008, 33.762234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.105026, 28.255211, 33.586472>,  <25.286634, 28.052214, 33.293537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105026, 28.255211, 33.586472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456417, 0.838374, -0.298015,
		-0.765211, 0.198945, -0.612268,
		-0.454021, 0.507494, 0.732335,
		24.968821, 28.407459, 33.806171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008135, 28.673252, 32.955887>,  <25.286634, 28.052214, 33.293537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008135, 28.673252, 32.955887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.022432, 28.739689, 33.350071>,  <25.031012, 28.779551, 33.586582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.022432, 28.739689, 33.350071>,  <25.008135, 28.673252, 32.955887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.022432, 28.739689, 33.350071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482524, 0.860665, -0.162562,
		-0.875153, 0.481320, -0.049379,
		0.035746, 0.166093, 0.985462,
		25.033155, 28.789516, 33.645710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.769989, 29.343935, 33.082973>,  <25.008135, 28.673252, 32.955887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.769989, 29.343935, 33.082973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.997812, 29.239445, 33.394707>,  <25.134506, 29.176750, 33.581749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.997812, 29.239445, 33.394707>,  <24.769989, 29.343935, 33.082973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997812, 29.239445, 33.394707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589267, 0.790788, -0.165588,
		-0.573035, 0.553549, 0.604329,
		0.569557, -0.261224, 0.779337,
		25.168680, 29.161077, 33.628510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998316, 29.971367, 33.333626>,  <24.769989, 29.343935, 33.082973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998316, 29.971367, 33.333626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.270414, 29.703297, 33.452377>,  <25.433674, 29.542456, 33.523628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.270414, 29.703297, 33.452377>,  <24.998316, 29.971367, 33.333626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270414, 29.703297, 33.452377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731876, 0.643284, -0.224817,
		-0.040309, 0.370207, 0.928074,
		0.680245, -0.670173, 0.296876,
		25.474487, 29.502245, 33.541439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559057, 30.320932, 33.511803>,  <24.998316, 29.971367, 33.333626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559057, 30.320932, 33.511803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.763834, 29.977459, 33.502155>,  <25.886700, 29.771376, 33.496368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.763834, 29.977459, 33.502155>,  <25.559057, 30.320932, 33.511803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763834, 29.977459, 33.502155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841876, 0.507108, -0.184623,
		0.170763, 0.074212, 0.982513,
		0.511942, -0.858681, -0.024118,
		25.917416, 29.719854, 33.494919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138582, 30.415018, 33.923416>,  <25.559057, 30.320932, 33.511803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138582, 30.415018, 33.923416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.267561, 30.088100, 33.732391>,  <26.344948, 29.891951, 33.617779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.267561, 30.088100, 33.732391>,  <26.138582, 30.415018, 33.923416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267561, 30.088100, 33.732391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926755, 0.375301, -0.016544,
		0.192749, -0.437244, 0.878445,
		0.322448, -0.817292, -0.477557,
		26.364296, 29.842913, 33.589123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750502, 30.157711, 34.281506>,  <26.138582, 30.415018, 33.923416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750502, 30.157711, 34.281506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.751167, 30.013603, 33.908367>,  <26.751566, 29.927137, 33.684483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.751167, 30.013603, 33.908367>,  <26.750502, 30.157711, 34.281506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751167, 30.013603, 33.908367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952151, 0.285671, -0.108630,
		0.305623, -0.888030, 0.343507,
		0.001663, -0.360271, -0.932846,
		26.751667, 29.905521, 33.628513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350714, 29.950483, 34.192642>,  <26.750502, 30.157711, 34.281506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350714, 29.950483, 34.192642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.225199, 29.997669, 33.815788>,  <27.149889, 30.025980, 33.589676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.225199, 29.997669, 33.815788>,  <27.350714, 29.950483, 34.192642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225199, 29.997669, 33.815788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869629, 0.434030, -0.235293,
		0.381159, -0.893142, -0.238779,
		-0.313787, 0.117965, -0.942137,
		27.131063, 30.033058, 33.533146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854786, 29.624472, 33.707596>,  <27.350714, 29.950483, 34.192642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854786, 29.624472, 33.707596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.654299, 29.875011, 33.468777>,  <27.534006, 30.025335, 33.325485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.654299, 29.875011, 33.468777>,  <27.854786, 29.624472, 33.707596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654299, 29.875011, 33.468777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865158, 0.376107, -0.331730,
		0.016776, -0.682811, -0.730402,
		-0.501218, 0.626348, -0.597050,
		27.503933, 30.062916, 33.289661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162365, 29.046494, 33.463093>,  <27.854786, 29.624472, 33.707596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162365, 29.046494, 33.463093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.381083, 28.713028, 33.432056>,  <28.512314, 28.512949, 33.413433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.381083, 28.713028, 33.432056>,  <28.162365, 29.046494, 33.463093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381083, 28.713028, 33.432056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452374, -0.372145, 0.810473,
		-0.704537, -0.408062, -0.580615,
		0.546796, -0.833663, -0.077593,
		28.545122, 28.462929, 33.408779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673290, 28.545591, 33.528801>,  <28.162365, 29.046494, 33.463093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673290, 28.545591, 33.528801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.999968, 28.326450, 33.601318>,  <28.195974, 28.194965, 33.644829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.999968, 28.326450, 33.601318>,  <27.673290, 28.545591, 33.528801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999968, 28.326450, 33.601318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486875, -0.485515, 0.726104,
		-0.309779, -0.681272, -0.663254,
		0.816694, -0.547854, 0.181292,
		28.244976, 28.162094, 33.655704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480028, 27.807287, 33.605289>,  <27.673290, 28.545591, 33.528801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480028, 27.807287, 33.605289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.839853, 27.829556, 33.778580>,  <28.055748, 27.842916, 33.882553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.839853, 27.829556, 33.778580>,  <27.480028, 27.807287, 33.605289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839853, 27.829556, 33.778580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355182, -0.484063, 0.799705,
		0.254230, -0.873260, -0.415673,
		0.899563, 0.055670, 0.433230,
		28.109722, 27.846256, 33.908550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695326, 27.112375, 33.909954>,  <27.480028, 27.807287, 33.605289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695326, 27.112375, 33.909954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.920702, 27.378162, 34.106327>,  <28.055927, 27.537634, 34.224152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.920702, 27.378162, 34.106327>,  <27.695326, 27.112375, 33.909954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920702, 27.378162, 34.106327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069714, -0.553882, 0.829671,
		0.823211, -0.501695, -0.265756,
		0.563439, 0.664468, 0.490937,
		28.089733, 27.577503, 34.253609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178978, 26.816786, 34.292164>,  <27.695326, 27.112375, 33.909954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178978, 26.816786, 34.292164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.190535, 27.162128, 34.493671>,  <28.197468, 27.369333, 34.614574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.190535, 27.162128, 34.493671>,  <28.178978, 26.816786, 34.292164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190535, 27.162128, 34.493671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016382, -0.504317, 0.863363,
		0.999448, -0.016690, -0.028714,
		0.028891, 0.863357, 0.503765,
		28.199202, 27.421135, 34.644802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769789, 26.798557, 34.782429>,  <28.178978, 26.816786, 34.292164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769789, 26.798557, 34.782429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.500454, 27.055626, 34.928631>,  <28.338854, 27.209867, 35.016350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.500454, 27.055626, 34.928631>,  <28.769789, 26.798557, 34.782429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500454, 27.055626, 34.928631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142197, -0.597704, 0.789006,
		0.725534, 0.479292, 0.493842,
		-0.673335, 0.642673, 0.365501,
		28.298454, 27.248428, 35.038280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992756, 26.835653, 35.403786>,  <28.769789, 26.798557, 34.782429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992756, 26.835653, 35.403786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.618612, 26.975502, 35.425201>,  <28.394125, 27.059410, 35.438049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.618612, 26.975502, 35.425201>,  <28.992756, 26.835653, 35.403786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618612, 26.975502, 35.425201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238279, -0.734743, 0.635119,
		0.261387, 0.581308, 0.770557,
		-0.935361, 0.349620, 0.053539,
		28.338003, 27.080387, 35.441261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832714, 26.903965, 36.114727>,  <28.992756, 26.835653, 35.403786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832714, 26.903965, 36.114727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.461124, 26.898685, 35.966766>,  <28.238171, 26.895517, 35.877991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.461124, 26.898685, 35.966766>,  <28.832714, 26.903965, 36.114727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461124, 26.898685, 35.966766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227125, -0.768771, 0.597834,
		-0.292262, 0.639388, 0.711172,
		-0.928976, -0.013199, -0.369904,
		28.182432, 26.894726, 35.855797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550735, 26.615120, 36.593441>,  <28.832714, 26.903965, 36.114727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550735, 26.615120, 36.593441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268604, 26.576633, 36.312511>,  <28.099325, 26.553541, 36.143955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268604, 26.576633, 36.312511>,  <28.550735, 26.615120, 36.593441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268604, 26.576633, 36.312511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391416, -0.773164, 0.499010,
		-0.591022, 0.626865, 0.507674,
		-0.705327, -0.096214, -0.702323,
		28.057007, 26.547770, 36.101814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815725, 26.613657, 36.923061>,  <28.550735, 26.615120, 36.593441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815725, 26.613657, 36.923061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.835545, 26.413132, 36.577522>,  <27.847437, 26.292816, 36.370197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.835545, 26.413132, 36.577522>,  <27.815725, 26.613657, 36.923061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835545, 26.413132, 36.577522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430212, -0.791272, 0.434517,
		-0.901367, 0.350108, -0.254877,
		0.049550, -0.501311, -0.863847,
		27.850409, 26.262739, 36.318367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066544, 26.344046, 36.844208>,  <27.815725, 26.613657, 36.923061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066544, 26.344046, 36.844208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.302591, 26.131531, 36.601063>,  <27.444220, 26.004023, 36.455177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.302591, 26.131531, 36.601063>,  <27.066544, 26.344046, 36.844208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302591, 26.131531, 36.601063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368754, -0.847190, 0.382477,
		-0.718177, -0.001557, -0.695859,
		0.590121, -0.531287, -0.607859,
		27.479628, 25.972145, 36.418705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655321, 25.774475, 36.436867>,  <27.066544, 26.344046, 36.844208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655321, 25.774475, 36.436867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.033194, 25.643532, 36.445030>,  <27.259916, 25.564966, 36.449928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.033194, 25.643532, 36.445030>,  <26.655321, 25.774475, 36.436867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033194, 25.643532, 36.445030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327714, -0.939462, 0.100073,
		-0.013587, -0.101225, -0.994771,
		0.944679, -0.327360, 0.020408,
		27.316597, 25.545324, 36.451153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673336, 25.085724, 36.159615>,  <26.655321, 25.774475, 36.436867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673336, 25.085724, 36.159615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.019186, 25.091465, 36.360500>,  <27.226696, 25.094910, 36.481033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.019186, 25.091465, 36.360500>,  <26.673336, 25.085724, 36.159615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019186, 25.091465, 36.360500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127466, -0.960620, 0.246906,
		0.485981, -0.277497, -0.828745,
		0.864624, 0.014355, 0.502214,
		27.278574, 25.095772, 36.511166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949032, 24.393124, 36.116604>,  <26.673336, 25.085724, 36.159615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949032, 24.393124, 36.116604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.098295, 24.559944, 36.448101>,  <27.187853, 24.660036, 36.646999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.098295, 24.559944, 36.448101>,  <26.949032, 24.393124, 36.116604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098295, 24.559944, 36.448101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197688, -0.837014, 0.510223,
		0.906461, -0.354227, -0.229893,
		0.373158, 0.417051, 0.828747,
		27.210243, 24.685059, 36.696724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650440, 24.251612, 35.944889>,  <26.949032, 24.393124, 36.116604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650440, 24.251612, 35.944889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.544203, 23.968128, 35.683449>,  <27.480459, 23.798038, 35.526585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.544203, 23.968128, 35.683449>,  <27.650440, 24.251612, 35.944889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544203, 23.968128, 35.683449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717750, 0.307265, -0.624838,
		0.643656, -0.635075, 0.427067,
		-0.265596, -0.708708, -0.653599,
		27.464523, 23.755516, 35.487370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306601, 24.012072, 35.736404>,  <27.650440, 24.251612, 35.944889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306601, 24.012072, 35.736404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.079584, 23.871086, 35.438770>,  <27.943375, 23.786495, 35.260189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.079584, 23.871086, 35.438770>,  <28.306601, 24.012072, 35.736404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079584, 23.871086, 35.438770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675613, 0.317164, -0.665548,
		0.470580, -0.880441, 0.058125,
		-0.567540, -0.352464, -0.744088,
		27.909323, 23.765347, 35.215546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816767, 23.625467, 35.212433>,  <28.306601, 24.012072, 35.736404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816767, 23.625467, 35.212433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.475374, 23.747120, 35.043167>,  <28.270538, 23.820112, 34.941608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.475374, 23.747120, 35.043167>,  <28.816767, 23.625467, 35.212433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475374, 23.747120, 35.043167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495861, 0.224198, -0.838962,
		-0.160283, -0.925872, -0.342157,
		-0.853482, 0.304134, -0.423168,
		28.219330, 23.838360, 34.916218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898857, 23.399458, 34.479874>,  <28.816767, 23.625467, 35.212433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898857, 23.399458, 34.479874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.613497, 23.679554, 34.469147>,  <28.442280, 23.847612, 34.462711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.613497, 23.679554, 34.469147>,  <28.898857, 23.399458, 34.479874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613497, 23.679554, 34.469147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406875, 0.382751, -0.829430,
		-0.570536, -0.602629, -0.557966,
		-0.713401, 0.700243, -0.026822,
		28.399477, 23.889627, 34.461102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661621, 23.284901, 33.831669>,  <28.898857, 23.399458, 34.479874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661621, 23.284901, 33.831669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.541798, 23.652683, 33.933544>,  <28.469904, 23.873352, 33.994667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.541798, 23.652683, 33.933544>,  <28.661621, 23.284901, 33.831669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541798, 23.652683, 33.933544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194735, 0.320249, -0.927103,
		-0.933993, -0.228126, -0.274984,
		-0.299560, 0.919456, 0.254686,
		28.451929, 23.928520, 34.009949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056952, 23.485027, 33.470680>,  <28.661621, 23.284901, 33.831669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056952, 23.485027, 33.470680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.263292, 23.809914, 33.579639>,  <28.387096, 24.004847, 33.645016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.263292, 23.809914, 33.579639>,  <28.056952, 23.485027, 33.470680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263292, 23.809914, 33.579639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293426, 0.131219, -0.946933,
		-0.804860, 0.568405, -0.170637,
		0.515851, 0.812218, 0.272397,
		28.418047, 24.053579, 33.661358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902136, 23.850826, 32.966843>,  <28.056952, 23.485027, 33.470680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902136, 23.850826, 32.966843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.224985, 24.020287, 33.131313>,  <28.418695, 24.121962, 33.229996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.224985, 24.020287, 33.131313>,  <27.902136, 23.850826, 32.966843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224985, 24.020287, 33.131313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396513, 0.127016, -0.909200,
		-0.437409, 0.896877, -0.065465,
		0.807125, 0.423649, 0.411181,
		28.467123, 24.147381, 33.254669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393646, 23.789375, 32.449409>,  <27.902136, 23.850826, 32.966843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393646, 23.789375, 32.449409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.181379, 23.618256, 32.156731>,  <27.054020, 23.515585, 31.981123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.181379, 23.618256, 32.156731>,  <27.393646, 23.789375, 32.449409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181379, 23.618256, 32.156731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767035, -0.124911, 0.629328,
		-0.360622, 0.895202, -0.261850,
		-0.530668, -0.427798, -0.731697,
		27.022179, 23.489916, 31.937222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827116, 24.118620, 32.504810>,  <27.393646, 23.789375, 32.449409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827116, 24.118620, 32.504810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.770248, 23.763092, 32.330551>,  <26.736128, 23.549776, 32.225994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.770248, 23.763092, 32.330551>,  <26.827116, 24.118620, 32.504810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770248, 23.763092, 32.330551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727148, -0.204837, 0.655208,
		-0.671598, 0.409932, -0.617180,
		-0.142169, -0.888818, -0.435650,
		26.727598, 23.496447, 32.199856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092400, 23.922176, 32.607777>,  <26.827116, 24.118620, 32.504810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092400, 23.922176, 32.607777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.218218, 23.565407, 32.477833>,  <26.293709, 23.351345, 32.399868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.218218, 23.565407, 32.477833>,  <26.092400, 23.922176, 32.607777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218218, 23.565407, 32.477833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821886, -0.427127, 0.376916,
		-0.474938, 0.148442, -0.867409,
		0.314544, -0.891924, -0.324861,
		26.312582, 23.297831, 32.380375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528666, 23.655407, 32.423443>,  <26.092400, 23.922176, 32.607777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528666, 23.655407, 32.423443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.760012, 23.333965, 32.479603>,  <25.898819, 23.141100, 32.513298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.760012, 23.333965, 32.479603>,  <25.528666, 23.655407, 32.423443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760012, 23.333965, 32.479603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736901, -0.440820, 0.512498,
		-0.349955, -0.399872, -0.847133,
		0.578367, -0.803604, 0.140399,
		25.933521, 23.092884, 32.521721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188482, 23.047253, 32.156158>,  <25.528666, 23.655407, 32.423443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188482, 23.047253, 32.156158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.457701, 22.950096, 32.435589>,  <25.619232, 22.891802, 32.603249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.457701, 22.950096, 32.435589>,  <25.188482, 23.047253, 32.156158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457701, 22.950096, 32.435589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711378, -0.471035, 0.521601,
		0.202363, -0.848016, -0.489815,
		0.673045, -0.242890, 0.698580,
		25.659615, 22.877230, 32.645164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.977808, 22.434750, 32.303673>,  <25.188482, 23.047253, 32.156158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.977808, 22.434750, 32.303673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.210676, 22.525005, 32.616123>,  <25.350397, 22.579159, 32.803593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.210676, 22.525005, 32.616123>,  <24.977808, 22.434750, 32.303673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210676, 22.525005, 32.616123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610910, -0.512574, 0.603371,
		0.536533, -0.828464, -0.160558,
		0.582170, 0.225642, 0.781130,
		25.385326, 22.592697, 32.850464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053637, 21.852875, 32.721302>,  <24.977808, 22.434750, 32.303673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053637, 21.852875, 32.721302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.159740, 22.144203, 32.974026>,  <25.223402, 22.319000, 33.125660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.159740, 22.144203, 32.974026>,  <25.053637, 21.852875, 32.721302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159740, 22.144203, 32.974026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604209, -0.385094, 0.697591,
		0.751378, -0.566788, 0.337910,
		0.265259, 0.728323, 0.631810,
		25.239319, 22.362700, 33.163570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345943, 21.519302, 33.361130>,  <25.053637, 21.852875, 32.721302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345943, 21.519302, 33.361130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.190306, 21.884377, 33.411110>,  <25.096922, 22.103420, 33.441097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.190306, 21.884377, 33.411110>,  <25.345943, 21.519302, 33.361130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190306, 21.884377, 33.411110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649261, -0.367925, 0.665651,
		0.653502, 0.177876, 0.735728,
		-0.389096, 0.912684, 0.124951,
		25.073578, 22.158182, 33.448597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324661, 21.651083, 34.105984>,  <25.345943, 21.519302, 33.361130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324661, 21.651083, 34.105984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.061365, 21.896034, 33.930843>,  <24.903387, 22.043005, 33.825760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.061365, 21.896034, 33.930843>,  <25.324661, 21.651083, 34.105984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061365, 21.896034, 33.930843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703429, -0.293143, 0.647499,
		0.268160, 0.734208, 0.623722,
		-0.658238, 0.612377, -0.437854,
		24.863894, 22.079748, 33.799488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.130041, 32.753609, 24.007698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733910, 32.699394, 24.019547>,  <30.496231, 32.666866, 24.026655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733910, 32.699394, 24.019547>,  <31.130041, 32.753609, 24.007698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733910, 32.699394, 24.019547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122648, -0.755543, 0.643516,
		-0.064836, 0.640926, 0.764859,
		-0.990330, -0.135532, 0.029622,
		30.436811, 32.658733, 24.028433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970518, 32.742027, 24.749428>,  <31.130041, 32.753609, 24.007698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970518, 32.742027, 24.749428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687649, 32.546349, 24.545235>,  <30.517927, 32.428940, 24.422718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687649, 32.546349, 24.545235>,  <30.970518, 32.742027, 24.749428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687649, 32.546349, 24.545235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154142, -0.811304, 0.563938,
		-0.690033, 0.320115, 0.649138,
		-0.707173, -0.489196, -0.510484,
		30.475496, 32.399590, 24.392090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551176, 32.484013, 25.254204>,  <30.970518, 32.742027, 24.749428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551176, 32.484013, 25.254204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472895, 32.259132, 24.932800>,  <30.425926, 32.124203, 24.739958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472895, 32.259132, 24.932800>,  <30.551176, 32.484013, 25.254204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472895, 32.259132, 24.932800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072154, -0.808878, 0.583533,
		-0.978005, 0.172176, 0.117734,
		-0.195703, -0.562204, -0.803510,
		30.414185, 32.090473, 24.691748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236570, 31.971657, 25.574732>,  <30.551176, 32.484013, 25.254204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236570, 31.971657, 25.574732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301561, 31.822544, 25.209297>,  <30.340555, 31.733076, 24.990036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301561, 31.822544, 25.209297>,  <30.236570, 31.971657, 25.574732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301561, 31.822544, 25.209297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142137, -0.925073, 0.352189,
		-0.976421, 0.072632, -0.203287,
		0.162476, -0.372780, -0.913585,
		30.350304, 31.710711, 24.935223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645187, 31.546925, 25.370110>,  <30.236570, 31.971657, 25.574732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645187, 31.546925, 25.370110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947086, 31.427601, 25.136402>,  <30.128225, 31.356007, 24.996178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947086, 31.427601, 25.136402>,  <29.645187, 31.546925, 25.370110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947086, 31.427601, 25.136402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170465, -0.949219, 0.264435,
		-0.633483, -0.099984, -0.767270,
		0.754746, -0.298308, -0.584269,
		30.173510, 31.338108, 24.961121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400881, 31.006151, 24.970112>,  <29.645187, 31.546925, 25.370110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400881, 31.006151, 24.970112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799122, 30.971401, 24.984108>,  <30.038067, 30.950550, 24.992506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799122, 30.971401, 24.984108>,  <29.400881, 31.006151, 24.970112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799122, 30.971401, 24.984108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093139, -0.957697, 0.272289,
		0.009856, -0.274352, -0.961579,
		0.995604, -0.086877, 0.034992,
		30.097803, 30.945337, 24.994606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529903, 30.438175, 24.578608>,  <29.400881, 31.006151, 24.970112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529903, 30.438175, 24.578608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859955, 30.477993, 24.801048>,  <30.057985, 30.501884, 24.934513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859955, 30.477993, 24.801048>,  <29.529903, 30.438175, 24.578608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859955, 30.477993, 24.801048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119327, -0.992855, 0.000669,
		0.552197, 0.065806, -0.831113,
		0.825130, 0.099544, 0.556104,
		30.107494, 30.507856, 24.967880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922277, 29.875937, 24.438007>,  <29.529903, 30.438175, 24.578608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922277, 29.875937, 24.438007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049297, 29.985271, 24.801205>,  <30.125509, 30.050873, 25.019123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049297, 29.985271, 24.801205>,  <29.922277, 29.875937, 24.438007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049297, 29.985271, 24.801205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112287, -0.961655, 0.250222,
		0.941570, 0.022498, -0.336065,
		0.317550, 0.273337, 0.907992,
		30.144562, 30.067272, 25.073603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357965, 29.333551, 24.641529>,  <29.922277, 29.875937, 24.438007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357965, 29.333551, 24.641529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362026, 29.550468, 24.977581>,  <30.364464, 29.680618, 25.179213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362026, 29.550468, 24.977581>,  <30.357965, 29.333551, 24.641529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362026, 29.550468, 24.977581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113973, -0.835325, 0.537812,
		0.993432, 0.090292, -0.070288,
		0.010154, 0.542290, 0.840130,
		30.365072, 29.713156, 25.229620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982611, 29.047049, 25.097948>,  <30.357965, 29.333551, 24.641529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982611, 29.047049, 25.097948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721832, 29.244019, 25.328594>,  <30.565365, 29.362202, 25.466982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721832, 29.244019, 25.328594>,  <30.982611, 29.047049, 25.097948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721832, 29.244019, 25.328594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077285, -0.799630, 0.595500,
		0.754317, 0.343670, 0.559372,
		-0.651945, 0.492426, 0.576614,
		30.526249, 29.391747, 25.501579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194857, 28.853315, 25.693434>,  <30.982611, 29.047049, 25.097948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194857, 28.853315, 25.693434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818537, 28.969193, 25.763836>,  <30.592745, 29.038719, 25.806076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818537, 28.969193, 25.763836>,  <31.194857, 28.853315, 25.693434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818537, 28.969193, 25.763836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137004, -0.799910, 0.584273,
		0.310046, 0.525570, 0.792242,
		-0.940798, 0.289692, 0.176004,
		30.536297, 29.056101, 25.816637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133793, 28.807787, 26.378023>,  <31.194857, 28.853315, 25.693434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133793, 28.807787, 26.378023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768398, 28.771259, 26.219429>,  <30.549162, 28.749342, 26.124271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768398, 28.771259, 26.219429>,  <31.133793, 28.807787, 26.378023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768398, 28.771259, 26.219429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026582, -0.959009, 0.282128,
		-0.405998, 0.268259, 0.873615,
		-0.913487, -0.091321, -0.396486,
		30.494352, 28.743862, 26.100483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528948, 28.963707, 27.044161>,  <31.133793, 28.807787, 26.378023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528948, 28.963707, 27.044161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920668, 28.905010, 27.099926>,  <32.155701, 28.869793, 27.133385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920668, 28.905010, 27.099926>,  <31.528948, 28.963707, 27.044161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920668, 28.905010, 27.099926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192892, 0.885301, -0.423124,
		-0.061332, 0.441258, 0.895282,
		0.979301, -0.146742, 0.139412,
		32.214458, 28.860987, 27.141750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803638, 29.629801, 27.209200>,  <31.528948, 28.963707, 27.044161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803638, 29.629801, 27.209200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093456, 29.403084, 27.052341>,  <32.267349, 29.267054, 26.958225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093456, 29.403084, 27.052341>,  <31.803638, 29.629801, 27.209200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093456, 29.403084, 27.052341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306616, 0.774637, -0.553104,
		0.617267, 0.280511, 0.735048,
		0.724547, -0.566791, -0.392148,
		32.310822, 29.233047, 26.934696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411205, 30.112446, 27.104660>,  <31.803638, 29.629801, 27.209200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411205, 30.112446, 27.104660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500660, 29.794338, 26.879257>,  <32.554333, 29.603474, 26.744017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500660, 29.794338, 26.879257>,  <32.411205, 30.112446, 27.104660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500660, 29.794338, 26.879257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477668, 0.593384, -0.647865,
		0.849601, -0.124285, 0.512574,
		0.223633, -0.795267, -0.563506,
		32.567749, 29.555758, 26.710205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062134, 30.194345, 27.109726>,  <32.411205, 30.112446, 27.104660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062134, 30.194345, 27.109726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960865, 29.957066, 26.804043>,  <32.900105, 29.814697, 26.620632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960865, 29.957066, 26.804043>,  <33.062134, 30.194345, 27.109726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960865, 29.957066, 26.804043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621885, 0.505314, -0.598262,
		0.741055, -0.626714, 0.240971,
		-0.253173, -0.593201, -0.764209,
		32.884914, 29.779104, 26.574780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733681, 30.170961, 26.851847>,  <33.062134, 30.194345, 27.109726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733681, 30.170961, 26.851847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480942, 30.048435, 26.567047>,  <33.329300, 29.974920, 26.396168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480942, 30.048435, 26.567047>,  <33.733681, 30.170961, 26.851847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480942, 30.048435, 26.567047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564765, 0.447200, -0.693579,
		0.530860, -0.840347, -0.109565,
		-0.631844, -0.306315, -0.712000,
		33.291389, 29.956541, 26.353447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979076, 29.653761, 26.291349>,  <33.733681, 30.170961, 26.851847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979076, 29.653761, 26.291349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680733, 29.858223, 26.120510>,  <33.501728, 29.980900, 26.018007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680733, 29.858223, 26.120510>,  <33.979076, 29.653761, 26.291349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680733, 29.858223, 26.120510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648035, 0.408516, -0.642779,
		-0.154085, -0.756197, -0.635944,
		-0.745861, 0.511157, -0.427096,
		33.456974, 30.011570, 25.992382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063332, 29.588673, 25.550549>,  <33.979076, 29.653761, 26.291349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063332, 29.588673, 25.550549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818005, 29.902431, 25.587566>,  <33.670811, 30.090687, 25.609777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818005, 29.902431, 25.587566>,  <34.063332, 29.588673, 25.550549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818005, 29.902431, 25.587566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658457, 0.572484, -0.488566,
		-0.436209, -0.238710, -0.867605,
		-0.613316, 0.784398, 0.092543,
		33.634010, 30.137751, 25.615330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071911, 29.828846, 24.937580>,  <34.063332, 29.588673, 25.550549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071911, 29.828846, 24.937580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917595, 30.132439, 25.147385>,  <33.825005, 30.314594, 25.273268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917595, 30.132439, 25.147385>,  <34.071911, 29.828846, 24.937580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917595, 30.132439, 25.147385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546479, 0.646050, -0.532898,
		-0.743320, 0.081047, -0.664008,
		-0.385792, 0.758980, 0.524513,
		33.801857, 30.360132, 25.304739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966389, 30.423183, 24.406713>,  <34.071911, 29.828846, 24.937580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966389, 30.423183, 24.406713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942970, 30.582447, 24.772892>,  <33.928921, 30.678005, 24.992599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942970, 30.582447, 24.772892>,  <33.966389, 30.423183, 24.406713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942970, 30.582447, 24.772892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357228, 0.864651, -0.353224,
		-0.932181, 0.306343, -0.192854,
		-0.058544, 0.398161, 0.915445,
		33.925407, 30.701895, 25.047525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659298, 31.163143, 24.373896>,  <33.966389, 30.423183, 24.406713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659298, 31.163143, 24.373896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861073, 31.149323, 24.718998>,  <33.982136, 31.141031, 24.926060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861073, 31.149323, 24.718998>,  <33.659298, 31.163143, 24.373896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861073, 31.149323, 24.718998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546001, 0.786827, -0.287726,
		-0.668900, 0.616206, 0.415768,
		0.504436, -0.034550, 0.862758,
		34.012402, 31.138958, 24.977825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685692, 31.782776, 24.644318>,  <33.659298, 31.163143, 24.373896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685692, 31.782776, 24.644318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001900, 31.602039, 24.809689>,  <34.191624, 31.493597, 24.908911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001900, 31.602039, 24.809689>,  <33.685692, 31.782776, 24.644318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001900, 31.602039, 24.809689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598925, 0.711381, -0.367731,
		-0.127948, 0.538309, 0.832978,
		0.790518, -0.451841, 0.413426,
		34.239056, 31.466488, 24.933716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051411, 32.254875, 25.000803>,  <33.685692, 31.782776, 24.644318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051411, 32.254875, 25.000803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316483, 31.967121, 24.917530>,  <34.475525, 31.794468, 24.867567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316483, 31.967121, 24.917530>,  <34.051411, 32.254875, 25.000803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316483, 31.967121, 24.917530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666936, 0.693336, -0.272913,
		0.340669, 0.042011, 0.939244,
		0.662677, -0.719389, -0.208180,
		34.515285, 31.751305, 24.855076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659107, 32.642128, 24.940754>,  <34.051411, 32.254875, 25.000803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659107, 32.642128, 24.940754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829464, 32.285576, 24.878704>,  <34.931679, 32.071644, 24.841475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829464, 32.285576, 24.878704>,  <34.659107, 32.642128, 24.940754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829464, 32.285576, 24.878704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807014, 0.451770, -0.380305,
		0.409074, 0.036782, 0.911759,
		0.425894, -0.891376, -0.155124,
		34.957233, 32.018162, 24.832167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356392, 32.554752, 25.183083>,  <34.659107, 32.642128, 24.940754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356392, 32.554752, 25.183083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338238, 32.304741, 24.871368>,  <35.327347, 32.154736, 24.684340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338238, 32.304741, 24.871368>,  <35.356392, 32.554752, 25.183083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338238, 32.304741, 24.871368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648407, 0.575002, -0.498940,
		0.759940, -0.527936, 0.379175,
		-0.045382, -0.625024, -0.779285,
		35.324623, 32.117233, 24.637583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916080, 33.033043, 25.618673>,  <35.356392, 32.554752, 25.183083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916080, 33.033043, 25.618673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613480, 33.191299, 25.826969>,  <35.431919, 33.286251, 25.951946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613480, 33.191299, 25.826969>,  <35.916080, 33.033043, 25.618673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613480, 33.191299, 25.826969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637586, -0.623383, -0.452634,
		0.145540, -0.674436, 0.723847,
		-0.756507, 0.395639, 0.520738,
		35.386528, 33.309990, 25.983191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377937, 32.561134, 26.017992>,  <35.916080, 33.033043, 25.618673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377937, 32.561134, 26.017992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229908, 32.880867, 25.828632>,  <35.141090, 33.072708, 25.715017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229908, 32.880867, 25.828632>,  <35.377937, 32.561134, 26.017992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229908, 32.880867, 25.828632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486467, -0.600870, -0.634275,
		-0.791450, -0.004437, 0.611218,
		-0.370077, 0.799334, -0.473400,
		35.118885, 33.120667, 25.686613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314373, 32.273129, 26.619781>,  <35.377937, 32.561134, 26.017992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314373, 32.273129, 26.619781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222221, 32.619427, 26.797504>,  <35.166931, 32.827206, 26.904139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222221, 32.619427, 26.797504>,  <35.314373, 32.273129, 26.619781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222221, 32.619427, 26.797504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542664, -0.493297, 0.679833,
		0.807739, -0.084491, 0.583454,
		-0.230376, 0.865748, 0.444306,
		35.153107, 32.879150, 26.930796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403015, 32.234566, 27.254093>,  <35.314373, 32.273129, 26.619781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403015, 32.234566, 27.254093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114738, 32.510048, 27.222389>,  <34.941772, 32.675339, 27.203367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114738, 32.510048, 27.222389>,  <35.403015, 32.234566, 27.254093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114738, 32.510048, 27.222389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459425, -0.388858, 0.798573,
		0.519164, 0.611938, 0.596657,
		-0.720692, 0.688709, -0.079259,
		34.898529, 32.716660, 27.198612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448833, 32.543930, 27.933413>,  <35.403015, 32.234566, 27.254093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448833, 32.543930, 27.933413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087799, 32.630840, 27.784752>,  <34.871178, 32.682987, 27.695555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087799, 32.630840, 27.784752>,  <35.448833, 32.543930, 27.933413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087799, 32.630840, 27.784752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426419, -0.332525, 0.841186,
		0.059186, 0.917724, 0.392784,
		-0.902587, 0.217277, -0.371654,
		34.817024, 32.696022, 27.673256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054688, 32.853230, 28.545361>,  <35.448833, 32.543930, 27.933413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054688, 32.853230, 28.545361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786022, 32.766647, 28.261948>,  <34.624825, 32.714699, 28.091900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786022, 32.766647, 28.261948>,  <35.054688, 32.853230, 28.545361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786022, 32.766647, 28.261948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630003, -0.336355, 0.699973,
		-0.389831, 0.916523, 0.089550,
		-0.671661, -0.216454, -0.708533,
		34.584522, 32.701710, 28.049387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301472, 33.011040, 28.812023>,  <35.054688, 32.853230, 28.545361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301472, 33.011040, 28.812023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236813, 32.753674, 28.512722>,  <34.198017, 32.599255, 28.333141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236813, 32.753674, 28.512722>,  <34.301472, 33.011040, 28.812023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236813, 32.753674, 28.512722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738578, -0.423995, 0.524147,
		-0.654501, 0.637373, -0.406675,
		-0.161649, -0.643416, -0.748255,
		34.188316, 32.560650, 28.288246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588024, 33.104973, 28.707611>,  <34.301472, 33.011040, 28.812023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588024, 33.104973, 28.707611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702534, 32.754021, 28.553596>,  <33.771240, 32.543449, 28.461187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702534, 32.754021, 28.553596>,  <33.588024, 33.104973, 28.707611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702534, 32.754021, 28.553596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639835, -0.474177, 0.604788,
		-0.713204, 0.073226, -0.697122,
		0.286273, -0.877379, -0.385037,
		33.788414, 32.490807, 28.438086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921917, 32.616611, 28.657442>,  <33.588024, 33.104973, 28.707611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921917, 32.616611, 28.657442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241161, 32.377277, 28.629120>,  <33.432709, 32.233677, 28.612125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241161, 32.377277, 28.629120>,  <32.921917, 32.616611, 28.657442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241161, 32.377277, 28.629120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519196, -0.742616, 0.423033,
		-0.305697, -0.300866, -0.903343,
		0.798113, -0.598332, -0.070807,
		33.480595, 32.197777, 28.607878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666515, 31.916620, 28.371798>,  <32.921917, 32.616611, 28.657442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666515, 31.916620, 28.371798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016445, 31.829407, 28.544834>,  <33.226402, 31.777079, 28.648657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016445, 31.829407, 28.544834>,  <32.666515, 31.916620, 28.371798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016445, 31.829407, 28.544834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395914, -0.836381, 0.379102,
		0.279156, -0.502919, -0.818012,
		0.874828, -0.218034, 0.432593,
		33.278893, 31.763996, 28.674612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571362, 31.160828, 28.424870>,  <32.666515, 31.916620, 28.371798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571362, 31.160828, 28.424870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870426, 31.285385, 28.659485>,  <33.049866, 31.360119, 28.800255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870426, 31.285385, 28.659485>,  <32.571362, 31.160828, 28.424870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870426, 31.285385, 28.659485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301125, -0.628243, 0.717380,
		0.591878, -0.712983, -0.375947,
		0.747666, 0.311394, 0.586541,
		33.094727, 31.378803, 28.835447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043015, 30.644072, 28.473562>,  <32.571362, 31.160828, 28.424870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043015, 30.644072, 28.473562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027290, 30.888653, 28.789684>,  <33.017857, 31.035402, 28.979357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027290, 30.888653, 28.789684>,  <33.043015, 30.644072, 28.473562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027290, 30.888653, 28.789684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398675, -0.734835, 0.548704,
		0.916249, -0.293502, 0.272661,
		-0.039315, 0.611453, 0.790304,
		33.015495, 31.072088, 29.026775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042011, 30.098219, 29.031961>,  <33.043015, 30.644072, 28.473562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042011, 30.098219, 29.031961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945217, 30.445160, 29.205925>,  <32.887142, 30.653324, 29.310303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945217, 30.445160, 29.205925>,  <33.042011, 30.098219, 29.031961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945217, 30.445160, 29.205925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487153, -0.496246, 0.718625,
		0.839122, -0.037972, 0.542616,
		-0.241984, 0.867351, 0.434909,
		32.872623, 30.705366, 29.336397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280312, 30.028036, 29.688292>,  <33.042011, 30.098219, 29.031961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280312, 30.028036, 29.688292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000183, 30.313541, 29.692158>,  <32.832108, 30.484844, 29.694477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000183, 30.313541, 29.692158>,  <33.280312, 30.028036, 29.688292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000183, 30.313541, 29.692158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593716, -0.589946, 0.547235,
		0.396298, 0.377501, 0.836923,
		-0.700321, 0.713762, 0.009666,
		32.790085, 30.527670, 29.695057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021469, 30.062103, 30.392828>,  <33.280312, 30.028036, 29.688292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021469, 30.062103, 30.392828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724674, 30.262634, 30.214783>,  <32.546597, 30.382952, 30.107956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724674, 30.262634, 30.214783>,  <33.021469, 30.062103, 30.392828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724674, 30.262634, 30.214783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657862, -0.416598, 0.627426,
		0.129112, 0.758366, 0.638914,
		-0.741988, 0.501326, -0.445112,
		32.502079, 30.413033, 30.081249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602169, 30.423386, 30.953585>,  <33.021469, 30.062103, 30.392828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602169, 30.423386, 30.953585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367485, 30.396412, 30.630791>,  <32.226673, 30.380228, 30.437115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367485, 30.396412, 30.630791>,  <32.602169, 30.423386, 30.953585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367485, 30.396412, 30.630791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740595, -0.358397, 0.568394,
		-0.327549, 0.931131, 0.160334,
		-0.586712, -0.067435, -0.806983,
		32.191471, 30.376181, 30.388697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927929, 30.732851, 31.243896>,  <32.602169, 30.423386, 30.953585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927929, 30.732851, 31.243896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811823, 30.533245, 30.917282>,  <31.742159, 30.413483, 30.721313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811823, 30.533245, 30.917282>,  <31.927929, 30.732851, 31.243896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811823, 30.533245, 30.917282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703342, -0.467340, 0.535633,
		-0.648888, 0.729780, -0.215325,
		-0.290265, -0.499013, -0.816537,
		31.724743, 30.383541, 30.672321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157810, 30.766136, 31.147530>,  <31.927929, 30.732851, 31.243896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157810, 30.766136, 31.147530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296185, 30.433758, 30.973240>,  <31.379210, 30.234331, 30.868666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296185, 30.433758, 30.973240>,  <31.157810, 30.766136, 31.147530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296185, 30.433758, 30.973240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681987, -0.541628, 0.491459,
		-0.644377, 0.127145, -0.754064,
		0.345935, -0.830947, -0.435724,
		31.399965, 30.184473, 30.842522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596613, 30.458920, 31.031521>,  <31.157810, 30.766136, 31.147530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596613, 30.458920, 31.031521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862963, 30.162884, 30.993835>,  <31.022774, 29.985262, 30.971224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862963, 30.162884, 30.993835>,  <30.596613, 30.458920, 31.031521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862963, 30.162884, 30.993835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619100, -0.618604, 0.483782,
		-0.416324, -0.263811, -0.870103,
		0.665875, -0.740090, -0.094214,
		31.062725, 29.940857, 30.965570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249924, 29.902340, 30.817095>,  <30.596613, 30.458920, 31.031521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249924, 29.902340, 30.817095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576468, 29.738819, 30.980282>,  <30.772394, 29.640707, 31.078194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576468, 29.738819, 30.980282>,  <30.249924, 29.902340, 30.817095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576468, 29.738819, 30.980282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574297, -0.649398, 0.498463,
		0.061161, -0.641219, -0.764916,
		0.816359, -0.408802, 0.407968,
		30.821375, 29.616179, 31.102673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119423, 29.224751, 30.699020>,  <30.249924, 29.902340, 30.817095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119423, 29.224751, 30.699020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406904, 29.231880, 30.977055>,  <30.579393, 29.236158, 31.143875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406904, 29.231880, 30.977055>,  <30.119423, 29.224751, 30.699020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406904, 29.231880, 30.977055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446312, -0.754723, 0.480830,
		0.533168, -0.655801, -0.534468,
		0.718705, 0.017824, 0.695087,
		30.622517, 29.237226, 31.185581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115187, 28.606520, 31.003366>,  <30.119423, 29.224751, 30.699020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115187, 28.606520, 31.003366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311449, 28.822708, 31.276760>,  <30.429207, 28.952421, 31.440796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311449, 28.822708, 31.276760>,  <30.115187, 28.606520, 31.003366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311449, 28.822708, 31.276760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483274, -0.483901, 0.729579,
		0.725055, -0.688281, 0.023768,
		0.490655, 0.540471, 0.683483,
		30.458645, 28.984850, 31.481806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462822, 28.110317, 31.478220>,  <30.115187, 28.606520, 31.003366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462822, 28.110317, 31.478220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389330, 28.464615, 31.648727>,  <30.345236, 28.677193, 31.751032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389330, 28.464615, 31.648727>,  <30.462822, 28.110317, 31.478220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389330, 28.464615, 31.648727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421069, -0.462766, 0.780095,
		0.888225, -0.036162, 0.457982,
		-0.183729, 0.885743, 0.426267,
		30.334211, 28.730337, 31.776608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512245, 28.030624, 32.154247>,  <30.462822, 28.110317, 31.478220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512245, 28.030624, 32.154247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324625, 28.383549, 32.138687>,  <30.212053, 28.595304, 32.129349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324625, 28.383549, 32.138687>,  <30.512245, 28.030624, 32.154247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324625, 28.383549, 32.138687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629966, -0.303379, 0.714915,
		0.618976, 0.359840, 0.698128,
		-0.469053, 0.882313, -0.038903,
		30.183908, 28.648243, 32.127018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417191, 28.200356, 32.808327>,  <30.512245, 28.030624, 32.154247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417191, 28.200356, 32.808327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138472, 28.411430, 32.614002>,  <29.971239, 28.538074, 32.497406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138472, 28.411430, 32.614002>,  <30.417191, 28.200356, 32.808327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138472, 28.411430, 32.614002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686179, -0.293169, 0.665741,
		0.208877, 0.797244, 0.566368,
		-0.696799, 0.527688, -0.485815,
		29.929432, 28.569736, 32.468258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094204, 28.651472, 33.386459>,  <30.417191, 28.200356, 32.808327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094204, 28.651472, 33.386459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827822, 28.674561, 33.088959>,  <29.667994, 28.688414, 32.910458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827822, 28.674561, 33.088959>,  <30.094204, 28.651472, 33.386459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827822, 28.674561, 33.088959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745840, -0.031349, 0.665387,
		0.015092, 0.997841, 0.063929,
		-0.665954, 0.057723, -0.743756,
		29.628035, 28.691877, 32.865833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585480, 29.065742, 33.639053>,  <30.094204, 28.651472, 33.386459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585480, 29.065742, 33.639053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421227, 28.873795, 33.328930>,  <29.322674, 28.758627, 33.142857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421227, 28.873795, 33.328930>,  <29.585480, 29.065742, 33.639053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421227, 28.873795, 33.328930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851857, -0.101315, 0.513883,
		-0.325146, 0.871471, -0.367175,
		-0.410634, -0.479868, -0.775311,
		29.298037, 28.729834, 33.096336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870028, 29.346779, 33.533657>,  <29.585480, 29.065742, 33.639053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870028, 29.346779, 33.533657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908911, 28.977192, 33.385693>,  <28.932241, 28.755440, 33.296913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908911, 28.977192, 33.385693>,  <28.870028, 29.346779, 33.533657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908911, 28.977192, 33.385693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652343, -0.339851, 0.677458,
		-0.751664, 0.175451, -0.635781,
		0.097210, -0.923969, -0.369908,
		28.938074, 28.700001, 33.274719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335817, 29.627689, 33.007847>,  <28.870028, 29.346779, 33.533657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335817, 29.627689, 33.007847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094204, 29.946453, 33.011318>,  <27.949236, 30.137712, 33.013401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094204, 29.946453, 33.011318>,  <28.335817, 29.627689, 33.007847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094204, 29.946453, 33.011318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713301, 0.545457, -0.440089,
		-0.355447, -0.259637, -0.897912,
		-0.604035, 0.796910, 0.008682,
		27.912992, 30.185526, 33.013924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410616, 29.910011, 32.347366>,  <28.335817, 29.627689, 33.007847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410616, 29.910011, 32.347366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226200, 30.210377, 32.536499>,  <28.115551, 30.390596, 32.649979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226200, 30.210377, 32.536499>,  <28.410616, 29.910011, 32.347366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226200, 30.210377, 32.536499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708923, 0.632168, -0.312716,
		-0.533731, 0.191025, -0.823797,
		-0.461042, 0.750915, 0.472829,
		28.087887, 30.435652, 32.678349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316586, 30.438940, 31.868835>,  <28.410616, 29.910011, 32.347366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316586, 30.438940, 31.868835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289988, 30.623779, 32.222569>,  <28.274029, 30.734682, 32.434807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289988, 30.623779, 32.222569>,  <28.316586, 30.438940, 31.868835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289988, 30.623779, 32.222569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498431, 0.783174, -0.371760,
		-0.864376, 0.416059, -0.282399,
		-0.066493, 0.462097, 0.884333,
		28.270039, 30.762409, 32.487869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919617, 31.179934, 31.780592>,  <28.316586, 30.438940, 31.868835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919617, 31.179934, 31.780592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180454, 31.165195, 32.083488>,  <28.336956, 31.156353, 32.265228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180454, 31.165195, 32.083488>,  <27.919617, 31.179934, 31.780592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180454, 31.165195, 32.083488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412558, 0.855227, -0.313661,
		-0.636058, 0.516942, 0.572889,
		0.652094, -0.036843, 0.757242,
		28.376083, 31.154142, 32.310661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093525, 31.813057, 31.853395>,  <27.919617, 31.179934, 31.780592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093525, 31.813057, 31.853395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393572, 31.642078, 32.055233>,  <28.573601, 31.539492, 32.176334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393572, 31.642078, 32.055233>,  <28.093525, 31.813057, 31.853395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393572, 31.642078, 32.055233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578961, 0.793210, -0.188739,
		-0.319573, 0.433716, 0.842475,
		0.750119, -0.427444, 0.504593,
		28.618607, 31.513845, 32.206612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
