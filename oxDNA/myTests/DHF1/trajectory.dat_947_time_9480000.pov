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
	<-0.260335, 0.146721, 2.694932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.134361, 0.463421, 2.485571>,  <-0.058777, 0.653441, 2.359954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.134361, 0.463421, 2.485571>,  <-0.260335, 0.146721, 2.694932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.134361, 0.463421, 2.485571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635781, -0.585437, -0.503037,
		-0.704698, -0.174346, -0.687753,
		0.314934, 0.791749, -0.523402,
		-0.039881, 0.700946, 2.328550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.463350, 0.103663, 1.900739>,  <-0.260335, 0.146721, 2.694932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.463350, 0.103663, 1.900739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.141876, 0.341337, 1.913607>,  <0.051008, 0.483942, 1.921327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.141876, 0.341337, 1.913607>,  <-0.463350, 0.103663, 1.900739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.141876, 0.341337, 1.913607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354356, -0.434467, -0.828052,
		-0.478040, 0.676892, -0.559728,
		0.803685, 0.594185, 0.032168,
		0.099229, 0.519593, 1.923257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.366315, 0.221667, 1.184872>,  <-0.463350, 0.103663, 1.900739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.366315, 0.221667, 1.184872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.034798, 0.308123, 1.391323>,  <0.164112, 0.359996, 1.515194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.034798, 0.308123, 1.391323>,  <-0.366315, 0.221667, 1.184872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.034798, 0.308123, 1.391323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552209, -0.464913, -0.692041,
		0.090377, 0.858568, -0.504671,
		0.828792, 0.216139, 0.516127,
		0.213840, 0.372964, 1.546161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.139438, 0.300464, 0.656106>,  <-0.366315, 0.221667, 1.184872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.139438, 0.300464, 0.656106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.343292, 0.267487, 0.998678>,  <0.465605, 0.247700, 1.204222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.343292, 0.267487, 0.998678>,  <0.139438, 0.300464, 0.656106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.343292, 0.267487, 0.998678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777411, -0.382374, -0.499422,
		0.368652, 0.920322, -0.130779,
		0.509635, -0.082444, 0.856431,
		0.496183, 0.242753, 1.255608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.818996, 0.587868, 0.490986>,  <0.139438, 0.300464, 0.656106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.818996, 0.587868, 0.490986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.837112, 0.350376, 0.812342>,  <0.847982, 0.207881, 1.005155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.837112, 0.350376, 0.812342>,  <0.818996, 0.587868, 0.490986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.837112, 0.350376, 0.812342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783939, -0.477344, -0.396967,
		0.619184, 0.647786, 0.443829,
		0.045291, -0.593730, 0.803388,
		0.850700, 0.172257, 1.053358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.542828, 0.540366, 0.786915>,  <0.818996, 0.587868, 0.490986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.542828, 0.540366, 0.786915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.337090, 0.217863, 0.903807>,  <1.213646, 0.024362, 0.973942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.337090, 0.217863, 0.903807>,  <1.542828, 0.540366, 0.786915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.337090, 0.217863, 0.903807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741901, -0.589255, -0.319939,
		0.430150, 0.052246, 0.901244,
		-0.514347, -0.806256, 0.292230,
		1.182785, -0.024014, 0.991476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.026072, 0.177701, 1.061322>,  <1.542828, 0.540366, 0.786915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.026072, 0.177701, 1.061322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.713417, -0.055626, 0.972975>,  <1.525824, -0.195622, 0.919966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.713417, -0.055626, 0.972975>,  <2.026072, 0.177701, 1.061322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.713417, -0.055626, 0.972975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621513, -0.698544, -0.354623,
		0.052572, -0.414459, 0.908548,
		-0.781638, -0.583318, -0.220868,
		1.478926, -0.230621, 0.906714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.456644, -0.345140, 1.180607>,  <2.026072, 0.177701, 1.061322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.456644, -0.345140, 1.180607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142212, -0.356192, 0.933603>,  <1.953553, -0.362823, 0.785401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142212, -0.356192, 0.933603>,  <2.456644, -0.345140, 1.180607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.142212, -0.356192, 0.933603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551434, -0.482718, -0.680370,
		-0.279285, -0.875340, 0.394690,
		-0.786079, -0.027629, -0.617508,
		1.906388, -0.364480, 0.748351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.326669, 3.555935, 0.681998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.175095, 3.464546, 0.323288>,  <2.084150, 3.409713, 0.108062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.175095, 3.464546, 0.323288>,  <2.326669, 3.555935, 0.681998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.175095, 3.464546, 0.323288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811308, 0.548184, 0.203161,
		0.445181, 0.804546, -0.393088,
		-0.378937, -0.228472, -0.896776,
		2.061414, 3.396004, 0.054255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.334299, 4.158249, 0.254962>,  <2.326669, 3.555935, 0.681998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.334299, 4.158249, 0.254962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023788, 3.909264, 0.215092>,  <1.837482, 3.759872, 0.191169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023788, 3.909264, 0.215092>,  <2.334299, 4.158249, 0.254962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.023788, 3.909264, 0.215092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599699, 0.680448, 0.421132,
		-0.194315, 0.386690, -0.901506,
		-0.776275, -0.622464, -0.099676,
		1.790906, 3.722524, 0.185189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.713326, 4.482985, -0.141360>,  <2.334299, 4.158249, 0.254962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.713326, 4.482985, -0.141360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.637329, 4.203335, 0.134357>,  <1.591731, 4.035545, 0.299788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.637329, 4.203335, 0.134357>,  <1.713326, 4.482985, -0.141360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.637329, 4.203335, 0.134357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607844, 0.635105, 0.476621,
		-0.770992, -0.328430, -0.545623,
		-0.189992, -0.699125, 0.689295,
		1.580332, 3.993597, 0.341146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.943161, 4.541118, 0.126648>,  <1.713326, 4.482985, -0.141360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.943161, 4.541118, 0.126648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.179405, 4.367477, 0.398746>,  <1.321152, 4.263293, 0.562006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.179405, 4.367477, 0.398746>,  <0.943161, 4.541118, 0.126648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.179405, 4.367477, 0.398746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426216, 0.547989, 0.719755,
		-0.685214, -0.715027, 0.138628,
		0.590611, -0.434101, 0.680246,
		1.356589, 4.237247, 0.602820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.615147, 4.078555, 0.712732>,  <0.943161, 4.541118, 0.126648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.615147, 4.078555, 0.712732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.960358, 4.223194, 0.853832>,  <1.167484, 4.309978, 0.938492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.960358, 4.223194, 0.853832>,  <0.615147, 4.078555, 0.712732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.960358, 4.223194, 0.853832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490666, 0.433977, 0.755586,
		0.120132, -0.825173, 0.551957,
		0.863027, 0.361597, 0.352750,
		1.219266, 4.331673, 0.959657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.549485, 3.940473, 1.451658>,  <0.615147, 4.078555, 0.712732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.549485, 3.940473, 1.451658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.782852, 4.244759, 1.337860>,  <0.922873, 4.427330, 1.269581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.782852, 4.244759, 1.337860>,  <0.549485, 3.940473, 1.451658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.782852, 4.244759, 1.337860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471992, 0.602637, 0.643469,
		0.660944, -0.241131, 0.710640,
		0.583418, 0.760713, -0.284497,
		0.957878, 4.472972, 1.252511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.844737, 4.287679, 2.004458>,  <0.549485, 3.940473, 1.451658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.844737, 4.287679, 2.004458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.856201, 4.568657, 1.719994>,  <0.863080, 4.737244, 1.549315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.856201, 4.568657, 1.719994>,  <0.844737, 4.287679, 2.004458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.856201, 4.568657, 1.719994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574530, 0.593771, 0.563339,
		0.817981, 0.392439, 0.420593,
		0.028660, 0.702444, -0.711161,
		0.864799, 4.779390, 1.506645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.948483, 4.913999, 2.409448>,  <0.844737, 4.287679, 2.004458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.948483, 4.913999, 2.409448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.809082, 5.034756, 2.054504>,  <0.725442, 5.107210, 1.841538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.809082, 5.034756, 2.054504>,  <0.948483, 4.913999, 2.409448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.809082, 5.034756, 2.054504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788761, 0.416985, 0.451641,
		0.506363, 0.857313, 0.092801,
		-0.348501, 0.301892, -0.887360,
		0.704532, 5.125323, 1.788296>
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
