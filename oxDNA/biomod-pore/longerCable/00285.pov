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
	<24.150303, 35.366127, 34.518459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245150, 35.229069, 34.882080>,  <24.302057, 35.146832, 35.100250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245150, 35.229069, 34.882080>,  <24.150303, 35.366127, 34.518459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245150, 35.229069, 34.882080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740661, -0.541754, -0.397397,
		0.628647, 0.767525, 0.125327,
		0.237115, -0.342648, 0.909048,
		24.316284, 35.126274, 35.154793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.895975, 35.559696, 33.892178>,  <24.150303, 35.366127, 34.518459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.895975, 35.559696, 33.892178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223263, 35.387341, 34.044415>,  <24.419636, 35.283928, 34.135757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223263, 35.387341, 34.044415>,  <23.895975, 35.559696, 33.892178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223263, 35.387341, 34.044415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037189, -0.700294, -0.712885,
		0.573703, 0.569142, -0.589018,
		0.818219, -0.430889, 0.380595,
		24.468729, 35.258076, 34.158592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.154636, 35.238140, 33.402866>,  <23.895975, 35.559696, 33.892178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.154636, 35.238140, 33.402866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406370, 35.073711, 33.666672>,  <24.557411, 34.975056, 33.824955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406370, 35.073711, 33.666672>,  <24.154636, 35.238140, 33.402866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406370, 35.073711, 33.666672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095617, -0.801244, -0.590649,
		0.771229, 0.434777, -0.464946,
		0.629336, -0.411068, 0.659514,
		24.595171, 34.950390, 33.864525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.866240, 34.992477, 33.029282>,  <24.154636, 35.238140, 33.402866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.866240, 34.992477, 33.029282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838455, 34.775688, 33.364292>,  <24.821785, 34.645615, 33.565296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838455, 34.775688, 33.364292>,  <24.866240, 34.992477, 33.029282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838455, 34.775688, 33.364292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240188, -0.823938, -0.513261,
		0.968238, 0.165512, 0.187405,
		-0.069460, -0.541971, 0.837522,
		24.817617, 34.613098, 33.615547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475157, 34.613880, 33.067955>,  <24.866240, 34.992477, 33.029282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475157, 34.613880, 33.067955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178959, 34.420547, 33.254742>,  <25.001240, 34.304546, 33.366814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178959, 34.420547, 33.254742>,  <25.475157, 34.613880, 33.067955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178959, 34.420547, 33.254742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174041, -0.809035, -0.561401,
		0.649136, -0.334443, 0.683206,
		-0.740494, -0.483332, 0.466967,
		24.956810, 34.275547, 33.394833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757982, 33.962574, 33.292004>,  <25.475157, 34.613880, 33.067955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757982, 33.962574, 33.292004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365154, 33.918133, 33.231083>,  <25.129457, 33.891468, 33.194530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365154, 33.918133, 33.231083>,  <25.757982, 33.962574, 33.292004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365154, 33.918133, 33.231083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186962, -0.677683, -0.711190,
		-0.024195, -0.726912, 0.686304,
		-0.982069, -0.111106, -0.152302,
		25.070534, 33.884800, 33.185390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512629, 33.223171, 33.323578>,  <25.757982, 33.962574, 33.292004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512629, 33.223171, 33.323578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235249, 33.404671, 33.099709>,  <25.068821, 33.513573, 32.965385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235249, 33.404671, 33.099709>,  <25.512629, 33.223171, 33.323578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235249, 33.404671, 33.099709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110062, -0.700953, -0.704663,
		-0.712058, -0.550242, 0.436128,
		-0.693441, 0.453760, -0.559680,
		25.027214, 33.540798, 32.931805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039143, 32.728542, 33.064537>,  <25.512629, 33.223171, 33.323578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039143, 32.728542, 33.064537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073597, 33.053932, 32.834461>,  <25.094269, 33.249165, 32.696415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073597, 33.053932, 32.834461>,  <25.039143, 32.728542, 33.064537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073597, 33.053932, 32.834461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091091, -0.581345, -0.808542,
		-0.992111, 0.017249, -0.124174,
		0.086135, 0.813474, -0.575187,
		25.099438, 33.297974, 32.661903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729874, 32.567562, 32.496754>,  <25.039143, 32.728542, 33.064537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729874, 32.567562, 32.496754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940634, 32.874111, 32.349758>,  <25.067089, 33.058041, 32.261559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940634, 32.874111, 32.349758>,  <24.729874, 32.567562, 32.496754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.940634, 32.874111, 32.349758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139956, -0.504712, -0.851867,
		-0.838326, 0.397414, -0.373191,
		0.526898, 0.766373, -0.367493,
		25.098703, 33.104023, 32.239510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455601, 32.684490, 31.784424>,  <24.729874, 32.567562, 32.496754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455601, 32.684490, 31.784424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827078, 32.832352, 31.796324>,  <25.049965, 32.921066, 31.803465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827078, 32.832352, 31.796324>,  <24.455601, 32.684490, 31.784424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827078, 32.832352, 31.796324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220121, -0.484897, -0.846417,
		-0.298453, 0.792611, -0.531689,
		0.928694, 0.369651, 0.029752,
		25.105686, 32.943249, 31.805250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597731, 32.917252, 31.129772>,  <24.455601, 32.684490, 31.784424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597731, 32.917252, 31.129772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943205, 32.832703, 31.312799>,  <25.150490, 32.781975, 31.422615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943205, 32.832703, 31.312799>,  <24.597731, 32.917252, 31.129772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943205, 32.832703, 31.312799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279645, -0.554326, -0.783914,
		0.419339, 0.805012, -0.419655,
		0.863686, -0.211372, 0.457568,
		25.202311, 32.769291, 31.450069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202126, 33.103260, 30.641432>,  <24.597731, 32.917252, 31.129772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202126, 33.103260, 30.641432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296837, 32.827133, 30.914898>,  <25.353662, 32.661457, 31.078978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296837, 32.827133, 30.914898>,  <25.202126, 33.103260, 30.641432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296837, 32.827133, 30.914898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342647, -0.599130, -0.723627,
		0.909137, 0.405594, 0.094675,
		0.236777, -0.690316, 0.683667,
		25.367870, 32.620037, 31.119999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069052, 32.339268, 30.379261>,  <25.202126, 33.103260, 30.641432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069052, 32.339268, 30.379261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684877, 32.321186, 30.489183>,  <24.454372, 32.310337, 30.555138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684877, 32.321186, 30.489183>,  <25.069052, 32.339268, 30.379261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684877, 32.321186, 30.489183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195079, -0.595034, -0.779666,
		0.198764, -0.802428, 0.562674,
		-0.960436, -0.045203, 0.274809,
		24.396748, 32.307625, 30.571627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851994, 32.249672, 30.186491>,  <25.069052, 32.339268, 30.379261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851994, 32.249672, 30.186491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153452, 32.326286, 30.437992>,  <26.334328, 32.372253, 30.588894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153452, 32.326286, 30.437992>,  <25.851994, 32.249672, 30.186491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153452, 32.326286, 30.437992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613383, 0.548676, 0.568081,
		-0.236177, -0.813800, 0.530990,
		0.753646, 0.191533, 0.628755,
		26.379545, 32.383747, 30.626619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697132, 32.214733, 30.829428>,  <25.851994, 32.249672, 30.186491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697132, 32.214733, 30.829428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996819, 32.479645, 30.832373>,  <26.176630, 32.638592, 30.834139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996819, 32.479645, 30.832373>,  <25.697132, 32.214733, 30.829428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996819, 32.479645, 30.832373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411949, 0.457263, 0.788168,
		0.518626, -0.593541, 0.615416,
		0.749217, 0.662284, 0.007360,
		26.221584, 32.678329, 30.834581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904369, 32.204086, 31.623983>,  <25.697132, 32.214733, 30.829428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904369, 32.204086, 31.623983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933361, 32.547367, 31.420717>,  <25.950756, 32.753338, 31.298758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933361, 32.547367, 31.420717>,  <25.904369, 32.204086, 31.623983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933361, 32.547367, 31.420717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542959, 0.461341, 0.701683,
		0.836625, 0.225055, 0.499408,
		0.072480, 0.858204, -0.508166,
		25.955105, 32.804829, 31.268267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184177, 32.724701, 32.040676>,  <25.904369, 32.204086, 31.623983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184177, 32.724701, 32.040676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930227, 32.884228, 31.775988>,  <25.777857, 32.979942, 31.617174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930227, 32.884228, 31.775988>,  <26.184177, 32.724701, 32.040676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930227, 32.884228, 31.775988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368832, 0.596133, 0.713154,
		0.678894, 0.696828, -0.231373,
		-0.634875, 0.398819, -0.661723,
		25.739765, 33.003872, 31.577471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255066, 33.511814, 31.907259>,  <26.184177, 32.724701, 32.040676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255066, 33.511814, 31.907259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897423, 33.336662, 31.869667>,  <25.682837, 33.231571, 31.847113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897423, 33.336662, 31.869667>,  <26.255066, 33.511814, 31.907259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897423, 33.336662, 31.869667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358178, 0.573188, 0.736996,
		-0.268846, 0.692617, -0.669331,
		-0.894108, -0.437878, -0.093980,
		25.629190, 33.205299, 31.841473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858902, 34.072659, 31.915703>,  <26.255066, 33.511814, 31.907259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858902, 34.072659, 31.915703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610909, 33.774174, 32.012680>,  <25.462112, 33.595081, 32.070866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610909, 33.774174, 32.012680>,  <25.858902, 34.072659, 31.915703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610909, 33.774174, 32.012680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513598, 0.619573, 0.593587,
		-0.593157, 0.243497, -0.767382,
		-0.619986, -0.746216, 0.242445,
		25.424913, 33.550308, 32.085415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229713, 34.377907, 31.799984>,  <25.858902, 34.072659, 31.915703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229713, 34.377907, 31.799984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194439, 34.086678, 32.071903>,  <25.173275, 33.911938, 32.235054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194439, 34.086678, 32.071903>,  <25.229713, 34.377907, 31.799984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194439, 34.086678, 32.071903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539555, 0.608585, 0.581812,
		-0.837319, -0.315481, -0.446507,
		-0.088187, -0.728078, 0.679799,
		25.167982, 33.868256, 32.275845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.701385, 34.024864, 31.805729>,  <25.229713, 34.377907, 31.799984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.701385, 34.024864, 31.805729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699881, 33.759136, 32.104706>,  <24.698978, 33.599701, 32.284092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699881, 33.759136, 32.104706>,  <24.701385, 34.024864, 31.805729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699881, 33.759136, 32.104706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076590, 0.745442, 0.662155,
		-0.997056, -0.054756, -0.053684,
		-0.003761, -0.664317, 0.747441,
		24.698751, 33.559841, 32.328938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.091328, 34.081631, 32.291706>,  <24.701385, 34.024864, 31.805729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.091328, 34.081631, 32.291706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413054, 33.932861, 32.477070>,  <24.606089, 33.843597, 32.588287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413054, 33.932861, 32.477070>,  <24.091328, 34.081631, 32.291706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413054, 33.932861, 32.477070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095761, 0.688558, 0.718831,
		-0.586438, -0.622542, 0.518200,
		0.804314, -0.371927, 0.463411,
		24.654348, 33.821281, 32.616093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.832973, 34.035091, 32.918556>,  <24.091328, 34.081631, 32.291706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.832973, 34.035091, 32.918556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228199, 33.994942, 32.965294>,  <24.465334, 33.970852, 32.993336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228199, 33.994942, 32.965294>,  <23.832973, 34.035091, 32.918556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228199, 33.994942, 32.965294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042812, 0.549705, 0.834261,
		-0.147973, -0.829306, 0.538846,
		0.988064, -0.100379, 0.116846,
		24.524618, 33.964828, 33.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.014784, 33.409561, 33.341484>,  <23.832973, 34.035091, 32.918556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.014784, 33.409561, 33.341484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387362, 33.547791, 33.387081>,  <24.610909, 33.630726, 33.414440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387362, 33.547791, 33.387081>,  <24.014784, 33.409561, 33.341484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.387362, 33.547791, 33.387081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316114, 0.613269, 0.723859,
		0.180235, -0.710269, 0.680465,
		0.931444, 0.345570, 0.113993,
		24.666794, 33.651463, 33.421280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.120041, 33.544083, 34.132248>,  <24.014784, 33.409561, 33.341484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.120041, 33.544083, 34.132248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381348, 33.760757, 33.920658>,  <24.538132, 33.890762, 33.793705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381348, 33.760757, 33.920658>,  <24.120041, 33.544083, 34.132248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381348, 33.760757, 33.920658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193156, 0.794778, 0.575342,
		0.732075, -0.273677, 0.623833,
		0.653267, 0.541690, -0.528975,
		24.577328, 33.923264, 33.761967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615078, 33.907101, 34.644245>,  <24.120041, 33.544083, 34.132248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615078, 33.907101, 34.644245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679678, 34.123566, 34.314140>,  <24.718439, 34.253445, 34.116077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679678, 34.123566, 34.314140>,  <24.615078, 33.907101, 34.644245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679678, 34.123566, 34.314140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085968, 0.840777, 0.534512,
		0.983121, -0.015378, 0.182310,
		0.161502, 0.541163, -0.825263,
		24.728128, 34.285915, 34.066563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288948, 34.300621, 34.757866>,  <24.615078, 33.907101, 34.644245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288948, 34.300621, 34.757866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086264, 34.502300, 34.478142>,  <24.964653, 34.623306, 34.310307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086264, 34.502300, 34.478142>,  <25.288948, 34.300621, 34.757866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086264, 34.502300, 34.478142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033884, 0.822172, 0.568230,
		0.861451, 0.264232, -0.433686,
		-0.506709, 0.504197, -0.699308,
		24.934252, 34.653561, 34.268349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628948, 34.981991, 34.766232>,  <25.288948, 34.300621, 34.757866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628948, 34.981991, 34.766232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264166, 35.016338, 34.605751>,  <25.045296, 35.036945, 34.509464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264166, 35.016338, 34.605751>,  <25.628948, 34.981991, 34.766232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264166, 35.016338, 34.605751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153258, 0.835776, 0.527248,
		0.380588, 0.542315, -0.749031,
		-0.911957, 0.085869, -0.401201,
		24.990580, 35.042099, 34.485390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302458, 35.260403, 34.588734>,  <25.628948, 34.981991, 34.766232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302458, 35.260403, 34.588734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214691, 35.643501, 34.663109>,  <26.162031, 35.873360, 34.707733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214691, 35.643501, 34.663109>,  <26.302458, 35.260403, 34.588734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214691, 35.643501, 34.663109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437666, -0.073705, 0.896111,
		0.871954, 0.278004, -0.403002,
		-0.219419, 0.957748, 0.185941,
		26.148865, 35.930824, 34.718891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683424, 35.781689, 35.040592>,  <26.302458, 35.260403, 34.588734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683424, 35.781689, 35.040592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501156, 35.663982, 35.376633>,  <26.391796, 35.593357, 35.578259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501156, 35.663982, 35.376633>,  <26.683424, 35.781689, 35.040592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501156, 35.663982, 35.376633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100790, 0.920653, 0.377147,
		-0.884425, 0.256528, -0.389854,
		-0.455669, -0.294265, 0.840104,
		26.364454, 35.575703, 35.628662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271887, 36.313255, 35.258953>,  <26.683424, 35.781689, 35.040592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271887, 36.313255, 35.258953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394060, 36.084316, 35.563354>,  <26.467365, 35.946953, 35.745995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394060, 36.084316, 35.563354>,  <26.271887, 36.313255, 35.258953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394060, 36.084316, 35.563354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298000, 0.816504, 0.494486,
		-0.904381, 0.075746, 0.419949,
		0.305435, -0.572349, 0.761004,
		26.485691, 35.912613, 35.791656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946218, 36.512947, 35.939377>,  <26.271887, 36.313255, 35.258953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946218, 36.512947, 35.939377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307442, 36.351715, 35.998718>,  <26.524176, 36.254974, 36.034325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307442, 36.351715, 35.998718>,  <25.946218, 36.512947, 35.939377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307442, 36.351715, 35.998718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269085, 0.800150, 0.536054,
		-0.334782, -0.444167, 0.831045,
		0.903058, -0.403083, 0.148358,
		26.578360, 36.230789, 36.043224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999599, 36.468357, 36.663078>,  <25.946218, 36.512947, 35.939377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999599, 36.468357, 36.663078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376451, 36.430168, 36.534531>,  <26.602562, 36.407257, 36.457401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376451, 36.430168, 36.534531>,  <25.999599, 36.468357, 36.663078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376451, 36.430168, 36.534531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285881, 0.729486, 0.621387,
		0.175109, -0.677300, 0.714564,
		0.942130, -0.095470, -0.321367,
		26.659090, 36.401527, 36.438122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419275, 36.369701, 37.192966>,  <25.999599, 36.468357, 36.663078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419275, 36.369701, 37.192966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638031, 36.541466, 36.905491>,  <26.769285, 36.644524, 36.733006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638031, 36.541466, 36.905491>,  <26.419275, 36.369701, 37.192966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638031, 36.541466, 36.905491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281849, 0.713901, 0.641020,
		0.788337, -0.553129, 0.269395,
		0.546888, 0.429411, -0.718693,
		26.802097, 36.670288, 36.689884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072582, 36.575825, 37.445923>,  <26.419275, 36.369701, 37.192966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072582, 36.575825, 37.445923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998821, 36.825413, 37.142170>,  <26.954565, 36.975166, 36.959919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998821, 36.825413, 37.142170>,  <27.072582, 36.575825, 37.445923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998821, 36.825413, 37.142170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355742, 0.762617, 0.540245,
		0.916212, -0.170521, -0.362599,
		-0.184401, 0.623970, -0.759380,
		26.943501, 37.012604, 36.914356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662951, 36.883198, 36.964890>,  <27.072582, 36.575825, 37.445923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662951, 36.883198, 36.964890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377048, 37.159950, 37.005741>,  <27.205507, 37.326000, 37.030254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377048, 37.159950, 37.005741>,  <27.662951, 36.883198, 36.964890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377048, 37.159950, 37.005741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615223, 0.552562, 0.562295,
		0.332605, 0.464738, -0.820605,
		-0.714755, 0.691877, 0.102133,
		27.162622, 37.367512, 37.036381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013977, 37.508034, 36.777832>,  <27.662951, 36.883198, 36.964890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013977, 37.508034, 36.777832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733509, 37.613434, 37.042839>,  <27.565228, 37.676674, 37.201843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733509, 37.613434, 37.042839>,  <28.013977, 37.508034, 36.777832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733509, 37.613434, 37.042839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692574, 0.472491, 0.545062,
		-0.169411, 0.841024, -0.513789,
		-0.701171, 0.263498, 0.662516,
		27.523157, 37.692482, 37.241592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951445, 38.283821, 36.791012>,  <28.013977, 37.508034, 36.777832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951445, 38.283821, 36.791012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880623, 38.070423, 37.121838>,  <27.838129, 37.942383, 37.320332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880623, 38.070423, 37.121838>,  <27.951445, 38.283821, 36.791012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880623, 38.070423, 37.121838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850876, 0.339358, 0.401056,
		-0.494633, 0.774736, 0.393855,
		-0.177055, -0.533497, 0.827062,
		27.827507, 37.910374, 37.369957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154528, 38.778378, 37.335598>,  <27.951445, 38.283821, 36.791012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154528, 38.778378, 37.335598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178694, 38.407116, 37.482506>,  <28.193193, 38.184361, 37.570648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178694, 38.407116, 37.482506>,  <28.154528, 38.778378, 37.335598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178694, 38.407116, 37.482506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809245, 0.260945, 0.526337,
		-0.584356, 0.265411, 0.766867,
		0.060415, -0.928151, 0.367267,
		28.196817, 38.128670, 37.592686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649029, 39.229225, 37.450489>,  <28.154528, 38.778378, 37.335598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649029, 39.229225, 37.450489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271063, 39.246357, 37.580292>,  <27.044283, 39.256634, 37.658173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271063, 39.246357, 37.580292>,  <27.649029, 39.229225, 37.450489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271063, 39.246357, 37.580292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273820, -0.646614, -0.711978,
		0.179339, -0.761614, 0.622721,
		-0.944913, 0.042828, 0.324508,
		26.987589, 39.259205, 37.677643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481369, 38.614414, 37.758190>,  <27.649029, 39.229225, 37.450489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481369, 38.614414, 37.758190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164404, 38.800167, 37.599983>,  <26.974226, 38.911621, 37.505058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164404, 38.800167, 37.599983>,  <27.481369, 38.614414, 37.758190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164404, 38.800167, 37.599983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070869, -0.714093, -0.696454,
		-0.605855, -0.523849, 0.598767,
		-0.792412, 0.464384, -0.395512,
		26.926680, 38.939484, 37.481331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062437, 38.035172, 37.782349>,  <27.481369, 38.614414, 37.758190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062437, 38.035172, 37.782349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022251, 38.317608, 37.501968>,  <26.998140, 38.487072, 37.333740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022251, 38.317608, 37.501968>,  <27.062437, 38.035172, 37.782349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022251, 38.317608, 37.501968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044830, -0.700590, -0.712154,
		-0.993930, -0.102969, 0.038729,
		-0.100463, 0.706095, -0.700954,
		26.992111, 38.529438, 37.291683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471493, 37.916336, 37.298523>,  <27.062437, 38.035172, 37.782349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471493, 37.916336, 37.298523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761473, 38.115116, 37.107738>,  <26.935461, 38.234383, 36.993267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761473, 38.115116, 37.107738>,  <26.471493, 37.916336, 37.298523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761473, 38.115116, 37.107738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084929, -0.622675, -0.777858,
		-0.683545, 0.604416, -0.409203,
		0.724951, 0.496947, -0.476959,
		26.978958, 38.264202, 36.964649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350960, 38.216209, 36.512875>,  <26.471493, 37.916336, 37.298523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350960, 38.216209, 36.512875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713881, 38.104820, 36.638893>,  <26.931633, 38.037987, 36.714504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713881, 38.104820, 36.638893>,  <26.350960, 38.216209, 36.512875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713881, 38.104820, 36.638893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001600, -0.746966, -0.664860,
		0.420478, 0.603733, -0.677278,
		0.907301, -0.278475, 0.315049,
		26.986071, 38.021278, 36.733406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802469, 38.164906, 35.944828>,  <26.350960, 38.216209, 36.512875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802469, 38.164906, 35.944828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905277, 37.916748, 36.241222>,  <26.966963, 37.767853, 36.419060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905277, 37.916748, 36.241222>,  <26.802469, 38.164906, 35.944828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905277, 37.916748, 36.241222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270341, -0.689973, -0.671456,
		0.927823, 0.372897, -0.009621,
		0.257022, -0.620391, 0.740982,
		26.982384, 37.730629, 36.463516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268963, 37.702705, 35.739845>,  <26.802469, 38.164906, 35.944828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268963, 37.702705, 35.739845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144058, 37.489948, 36.054699>,  <27.069115, 37.362293, 36.243610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144058, 37.489948, 36.054699>,  <27.268963, 37.702705, 35.739845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144058, 37.489948, 36.054699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017426, -0.825220, -0.564543,
		0.949836, -0.190001, 0.248416,
		-0.312261, -0.531894, 0.787135,
		27.050379, 37.330379, 36.290840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663525, 37.031460, 35.804256>,  <27.268963, 37.702705, 35.739845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663525, 37.031460, 35.804256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376522, 36.935112, 36.065689>,  <27.204321, 36.877304, 36.222549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376522, 36.935112, 36.065689>,  <27.663525, 37.031460, 35.804256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376522, 36.935112, 36.065689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058351, -0.914226, -0.400981,
		0.694105, -0.325843, 0.641907,
		-0.717505, -0.240867, 0.653582,
		27.161270, 36.862850, 36.261765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832464, 36.431129, 35.980930>,  <27.663525, 37.031460, 35.804256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832464, 36.431129, 35.980930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459482, 36.417183, 36.124767>,  <27.235693, 36.408813, 36.211071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459482, 36.417183, 36.124767>,  <27.832464, 36.431129, 35.980930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459482, 36.417183, 36.124767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133892, -0.891104, -0.433597,
		0.335554, -0.452457, 0.826248,
		-0.932457, -0.034867, 0.359594,
		27.179745, 36.406723, 36.232647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772034, 35.800484, 36.264313>,  <27.832464, 36.431129, 35.980930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772034, 35.800484, 36.264313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409662, 35.931145, 36.156540>,  <27.192240, 36.009541, 36.091877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409662, 35.931145, 36.156540>,  <27.772034, 35.800484, 36.264313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409662, 35.931145, 36.156540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168315, -0.861674, -0.478736,
		-0.388538, -0.388353, 0.835596,
		-0.905930, 0.326650, -0.269427,
		27.137884, 36.029140, 36.075710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176962, 35.385315, 36.659138>,  <27.772034, 35.800484, 36.264313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176962, 35.385315, 36.659138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923553, 35.080891, 36.603374>,  <26.771509, 34.898235, 36.569916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923553, 35.080891, 36.603374>,  <27.176962, 35.385315, 36.659138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923553, 35.080891, 36.603374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749732, -0.648350, 0.132456,
		-0.191192, -0.020603, 0.981336,
		-0.633520, -0.761064, -0.139406,
		26.733498, 34.852573, 36.561554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630302, 35.344101, 37.309704>,  <27.176962, 35.385315, 36.659138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630302, 35.344101, 37.309704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005283, 35.244358, 37.406864>,  <28.230272, 35.184513, 37.465160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005283, 35.244358, 37.406864>,  <27.630302, 35.344101, 37.309704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005283, 35.244358, 37.406864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347830, 0.642740, -0.682569,
		0.014081, 0.724365, 0.689273,
		0.937452, -0.249361, 0.242906,
		28.286518, 35.169548, 37.479736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069111, 35.893002, 37.482826>,  <27.630302, 35.344101, 37.309704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069111, 35.893002, 37.482826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304220, 35.625916, 37.300098>,  <28.445286, 35.465664, 37.190460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304220, 35.625916, 37.300098>,  <28.069111, 35.893002, 37.482826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304220, 35.625916, 37.300098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233545, 0.680650, -0.694386,
		0.774585, 0.301452, 0.556008,
		0.587771, -0.667714, -0.456819,
		28.480551, 35.425602, 37.163052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904106, 36.018951, 37.491688>,  <28.069111, 35.893002, 37.482826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904106, 36.018951, 37.491688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712484, 35.847790, 37.185120>,  <28.597511, 35.745090, 37.001179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712484, 35.847790, 37.185120>,  <28.904106, 36.018951, 37.491688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712484, 35.847790, 37.185120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071775, 0.851113, -0.520053,
		0.874846, -0.304143, -0.377017,
		-0.479055, -0.427906, -0.766423,
		28.568769, 35.719418, 36.955193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406944, 36.035221, 36.824936>,  <28.904106, 36.018951, 37.491688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406944, 36.035221, 36.824936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009821, 36.071541, 36.793720>,  <28.771547, 36.093334, 36.774990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009821, 36.071541, 36.793720>,  <29.406944, 36.035221, 36.824936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009821, 36.071541, 36.793720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117979, 0.853044, -0.508327,
		0.020416, -0.513877, -0.857621,
		-0.992806, 0.090803, -0.078042,
		28.711979, 36.098782, 36.770309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226421, 36.296196, 36.064384>,  <29.406944, 36.035221, 36.824936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226421, 36.296196, 36.064384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950974, 36.394421, 36.337296>,  <28.785706, 36.453354, 36.501041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950974, 36.394421, 36.337296>,  <29.226421, 36.296196, 36.064384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950974, 36.394421, 36.337296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017586, 0.934980, -0.354264,
		-0.724909, -0.255952, -0.639528,
		-0.688620, 0.245562, 0.682276,
		28.744387, 36.468090, 36.541977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665787, 35.870644, 35.579258>,  <29.226421, 36.296196, 36.064384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665787, 35.870644, 35.579258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050650, 35.970081, 35.534622>,  <30.281567, 36.029743, 35.507839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050650, 35.970081, 35.534622>,  <29.665787, 35.870644, 35.579258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050650, 35.970081, 35.534622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095377, 0.076382, 0.992507,
		0.255260, -0.965590, 0.049780,
		0.962157, 0.248599, -0.111592,
		30.339296, 36.044662, 35.501144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062147, 35.473618, 36.047249>,  <29.665787, 35.870644, 35.579258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062147, 35.473618, 36.047249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278662, 35.804173, 35.985153>,  <30.408571, 36.002506, 35.947895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278662, 35.804173, 35.985153>,  <30.062147, 35.473618, 36.047249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278662, 35.804173, 35.985153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176703, 0.068703, 0.981864,
		0.822061, -0.558901, -0.108836,
		0.541287, 0.826383, -0.155237,
		30.441048, 36.052086, 35.938583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669924, 35.368370, 36.231468>,  <30.062147, 35.473618, 36.047249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669924, 35.368370, 36.231468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590614, 35.754490, 36.299442>,  <30.543028, 35.986164, 36.340229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590614, 35.754490, 36.299442>,  <30.669924, 35.368370, 36.231468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590614, 35.754490, 36.299442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079677, -0.156932, 0.984390,
		0.976902, 0.208721, -0.045797,
		-0.198276, 0.965302, 0.169938,
		30.531132, 36.044079, 36.350422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177113, 35.737179, 36.629032>,  <30.669924, 35.368370, 36.231468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177113, 35.737179, 36.629032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815449, 35.898697, 36.684814>,  <30.598452, 35.995609, 36.718285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815449, 35.898697, 36.684814>,  <31.177113, 35.737179, 36.629032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815449, 35.898697, 36.684814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182930, 0.070970, 0.980561,
		0.386049, 0.912092, -0.138034,
		-0.904159, 0.403795, 0.139451,
		30.544201, 36.019836, 36.726650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268881, 36.289719, 37.009827>,  <31.177113, 35.737179, 36.629032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268881, 36.289719, 37.009827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898880, 36.147671, 37.063889>,  <30.676880, 36.062443, 37.096325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898880, 36.147671, 37.063889>,  <31.268881, 36.289719, 37.009827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898880, 36.147671, 37.063889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071768, 0.186008, 0.979924,
		-0.373126, 0.916130, -0.146571,
		-0.925001, -0.355116, 0.135153,
		30.621380, 36.041138, 37.104435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799366, 36.788910, 37.296097>,  <31.268881, 36.289719, 37.009827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799366, 36.788910, 37.296097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696865, 36.422459, 37.419411>,  <30.635365, 36.202587, 37.493401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696865, 36.422459, 37.419411>,  <30.799366, 36.788910, 37.296097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696865, 36.422459, 37.419411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153025, 0.353360, 0.922886,
		-0.954420, 0.189318, -0.230741,
		-0.256254, -0.916130, 0.308284,
		30.619989, 36.147621, 37.511894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276098, 37.216080, 36.943962>,  <30.799366, 36.788910, 37.296097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276098, 37.216080, 36.943962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399197, 36.861877, 36.804722>,  <30.473057, 36.649357, 36.721176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399197, 36.861877, 36.804722>,  <30.276098, 37.216080, 36.943962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399197, 36.861877, 36.804722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036850, 0.376675, -0.925612,
		0.950754, 0.272028, 0.148552,
		0.307748, -0.885504, -0.348101,
		30.491522, 36.596226, 36.700291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697495, 37.288738, 36.315117>,  <30.276098, 37.216080, 36.943962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697495, 37.288738, 36.315117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707563, 36.888874, 36.317833>,  <30.713604, 36.648956, 36.319462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707563, 36.888874, 36.317833>,  <30.697495, 37.288738, 36.315117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707563, 36.888874, 36.317833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158726, -0.002708, -0.987319,
		0.987002, 0.025930, 0.158604,
		0.025172, -0.999660, 0.006789,
		30.715115, 36.588978, 36.319870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214531, 37.084389, 35.825951>,  <30.697495, 37.288738, 36.315117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214531, 37.084389, 35.825951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992168, 36.754539, 35.867821>,  <30.858749, 36.556629, 35.892944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992168, 36.754539, 35.867821>,  <31.214531, 37.084389, 35.825951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992168, 36.754539, 35.867821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169095, -0.235477, -0.957056,
		0.813863, -0.514336, 0.270344,
		-0.555908, -0.824627, 0.104675,
		30.825396, 36.507153, 35.899223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533367, 36.576691, 35.439373>,  <31.214531, 37.084389, 35.825951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533367, 36.576691, 35.439373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173178, 36.408180, 35.482590>,  <30.957064, 36.307072, 35.508518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173178, 36.408180, 35.482590>,  <31.533367, 36.576691, 35.439373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173178, 36.408180, 35.482590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007324, -0.233689, -0.972284,
		0.434851, -0.876306, 0.207345,
		-0.900473, -0.421280, 0.108038,
		30.903036, 36.281796, 35.514999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486149, 35.829914, 35.278297>,  <31.533367, 36.576691, 35.439373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486149, 35.829914, 35.278297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138494, 36.012363, 35.201820>,  <30.929903, 36.121834, 35.155933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138494, 36.012363, 35.201820>,  <31.486149, 35.829914, 35.278297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138494, 36.012363, 35.201820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153837, -0.118070, -0.981017,
		-0.470042, -0.882047, 0.032450,
		-0.869135, 0.456127, -0.191189,
		30.877754, 36.149200, 35.144463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340849, 35.682579, 34.579807>,  <31.486149, 35.829914, 35.278297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340849, 35.682579, 34.579807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062666, 35.959145, 34.658073>,  <30.895756, 36.125084, 34.705032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062666, 35.959145, 34.658073>,  <31.340849, 35.682579, 34.579807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062666, 35.959145, 34.658073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006220, 0.266503, -0.963814,
		-0.718538, -0.671511, -0.181042,
		-0.695460, 0.691411, 0.195669,
		30.854029, 36.166569, 34.716774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941353, 35.709557, 34.052547>,  <31.340849, 35.682579, 34.579807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941353, 35.709557, 34.052547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869013, 36.068184, 34.214268>,  <30.825609, 36.283360, 34.311298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869013, 36.068184, 34.214268>,  <30.941353, 35.709557, 34.052547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869013, 36.068184, 34.214268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072575, 0.397790, -0.914602,
		-0.980829, -0.194749, -0.006872,
		-0.180851, 0.896569, 0.404298,
		30.814758, 36.337154, 34.335556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367815, 36.074539, 33.773670>,  <30.941353, 35.709557, 34.052547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367815, 36.074539, 33.773670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607885, 36.366879, 33.903687>,  <30.751928, 36.542282, 33.981697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607885, 36.366879, 33.903687>,  <30.367815, 36.074539, 33.773670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607885, 36.366879, 33.903687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039463, 0.378821, -0.924628,
		-0.798892, 0.567769, 0.198519,
		0.600178, 0.730844, 0.325042,
		30.787939, 36.586132, 34.001198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154663, 36.704659, 33.458515>,  <30.367815, 36.074539, 33.773670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154663, 36.704659, 33.458515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533730, 36.760033, 33.573589>,  <30.761169, 36.793255, 33.642635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533730, 36.760033, 33.573589>,  <30.154663, 36.704659, 33.458515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533730, 36.760033, 33.573589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186174, 0.492419, -0.850213,
		-0.259360, 0.859279, 0.440877,
		0.947666, 0.138432, 0.287690,
		30.818029, 36.801563, 33.659897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261312, 37.285515, 33.352261>,  <30.154663, 36.704659, 33.458515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261312, 37.285515, 33.352261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637764, 37.154106, 33.384148>,  <30.863634, 37.075260, 33.403278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637764, 37.154106, 33.384148>,  <30.261312, 37.285515, 33.352261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637764, 37.154106, 33.384148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231300, 0.453807, -0.860558,
		0.246535, 0.828332, 0.503077,
		0.941127, -0.328520, 0.079714,
		30.920103, 37.055550, 33.408062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787626, 37.924381, 33.229256>,  <30.261312, 37.285515, 33.352261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787626, 37.924381, 33.229256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982428, 37.585949, 33.142563>,  <31.099308, 37.382889, 33.090546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982428, 37.585949, 33.142563>,  <30.787626, 37.924381, 33.229256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982428, 37.585949, 33.142563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362847, 0.421719, -0.830960,
		0.794461, 0.326040, 0.512377,
		0.487005, -0.846080, -0.216737,
		31.128529, 37.332127, 33.077541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422146, 38.083725, 32.891647>,  <30.787626, 37.924381, 33.229256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422146, 38.083725, 32.891647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350311, 37.705635, 32.782612>,  <31.307211, 37.478783, 32.717190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350311, 37.705635, 32.782612>,  <31.422146, 38.083725, 32.891647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350311, 37.705635, 32.782612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230698, 0.228902, -0.945718,
		0.956309, -0.232724, 0.176953,
		-0.179586, -0.945221, -0.272590,
		31.296436, 37.422070, 32.700836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934221, 37.995792, 32.339542>,  <31.422146, 38.083725, 32.891647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934221, 37.995792, 32.339542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679157, 37.692101, 32.287449>,  <31.526119, 37.509884, 32.256195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679157, 37.692101, 32.287449>,  <31.934221, 37.995792, 32.339542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679157, 37.692101, 32.287449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036130, 0.139396, -0.989577,
		0.769471, -0.635718, -0.061456,
		-0.637659, -0.759231, -0.130230,
		31.487860, 37.464333, 32.248379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186817, 37.591141, 31.723448>,  <31.934221, 37.995792, 32.339542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186817, 37.591141, 31.723448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811373, 37.456867, 31.755257>,  <31.586105, 37.376305, 31.774342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811373, 37.456867, 31.755257>,  <32.186817, 37.591141, 31.723448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811373, 37.456867, 31.755257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014674, -0.191457, -0.981391,
		0.344661, -0.922313, 0.174778,
		-0.938613, -0.335683, 0.079521,
		31.529789, 37.356163, 31.779114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201305, 36.968990, 31.518663>,  <32.186817, 37.591141, 31.723448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201305, 36.968990, 31.518663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828688, 37.105522, 31.468515>,  <31.605116, 37.187439, 31.438427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828688, 37.105522, 31.468515>,  <32.201305, 36.968990, 31.518663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828688, 37.105522, 31.468515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134915, 0.004266, -0.990848,
		-0.337669, -0.939935, -0.050025,
		-0.931545, 0.341328, -0.125371,
		31.549225, 37.207920, 31.430904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855482, 36.558804, 30.981701>,  <32.201305, 36.968990, 31.518663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855482, 36.558804, 30.981701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634867, 36.892349, 30.990454>,  <31.502497, 37.092476, 30.995705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634867, 36.892349, 30.990454>,  <31.855482, 36.558804, 30.981701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634867, 36.892349, 30.990454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036954, 0.050632, -0.998033,
		-0.833330, -0.549646, -0.058740,
		-0.551539, 0.833862, 0.021881,
		31.469404, 37.142509, 30.997019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321295, 36.283913, 30.500553>,  <31.855482, 36.558804, 30.981701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321295, 36.283913, 30.500553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333456, 36.682262, 30.534731>,  <31.340752, 36.921272, 30.555239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333456, 36.682262, 30.534731>,  <31.321295, 36.283913, 30.500553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333456, 36.682262, 30.534731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090568, 0.082390, -0.992476,
		-0.995426, 0.037911, -0.087690,
		0.030401, 0.995879, 0.085447,
		31.342577, 36.981026, 30.560366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723547, 36.696167, 30.100294>,  <31.321295, 36.283913, 30.500553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723547, 36.696167, 30.100294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046768, 36.928349, 30.140545>,  <31.240700, 37.067657, 30.164696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046768, 36.928349, 30.140545>,  <30.723547, 36.696167, 30.100294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046768, 36.928349, 30.140545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021195, 0.199342, -0.979701,
		-0.588730, 0.789516, 0.173381,
		0.808052, 0.580454, 0.100625,
		31.289185, 37.102486, 30.170732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465561, 37.209312, 29.712755>,  <30.723547, 36.696167, 30.100294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465561, 37.209312, 29.712755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854675, 37.266930, 29.785349>,  <31.088144, 37.301498, 29.828905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854675, 37.266930, 29.785349>,  <30.465561, 37.209312, 29.712755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854675, 37.266930, 29.785349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137177, 0.273186, -0.952130,
		-0.186727, 0.951116, 0.245992,
		0.972788, 0.144044, 0.181482,
		31.146511, 37.310143, 29.839794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569359, 37.809467, 29.429155>,  <30.465561, 37.209312, 29.712755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569359, 37.809467, 29.429155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925058, 37.631413, 29.471272>,  <31.138479, 37.524578, 29.496540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925058, 37.631413, 29.471272>,  <30.569359, 37.809467, 29.429155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925058, 37.631413, 29.471272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227872, 0.231518, -0.945766,
		0.396621, 0.865015, 0.307312,
		0.889250, -0.445139, 0.105288,
		31.191833, 37.497871, 29.502857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081232, 38.319618, 29.174561>,  <30.569359, 37.809467, 29.429155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081232, 38.319618, 29.174561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225143, 37.946499, 29.166134>,  <31.311491, 37.722626, 29.161077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225143, 37.946499, 29.166134>,  <31.081232, 38.319618, 29.174561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225143, 37.946499, 29.166134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093323, 0.058443, -0.993919,
		0.928359, 0.355625, 0.108079,
		0.359779, -0.932800, -0.021068,
		31.333076, 37.666660, 29.159813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641581, 38.336720, 28.762039>,  <31.081232, 38.319618, 29.174561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641581, 38.336720, 28.762039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541882, 37.949348, 28.763660>,  <31.482061, 37.716927, 28.764633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541882, 37.949348, 28.763660>,  <31.641581, 38.336720, 28.762039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541882, 37.949348, 28.763660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034500, -0.013064, -0.999319,
		0.967825, -0.248939, 0.036667,
		-0.249249, -0.968431, 0.004055,
		31.467106, 37.658817, 28.764877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174973, 37.938873, 28.442343>,  <31.641581, 38.336720, 28.762039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174973, 37.938873, 28.442343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847048, 37.710323, 28.427223>,  <31.650291, 37.573193, 28.418152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847048, 37.710323, 28.427223>,  <32.174973, 37.938873, 28.442343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847048, 37.710323, 28.427223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118109, -0.104132, -0.987526,
		0.560315, -0.814053, 0.152854,
		-0.819815, -0.571379, -0.037801,
		31.601103, 37.538910, 28.415882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399662, 37.284748, 28.054157>,  <32.174973, 37.938873, 28.442343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399662, 37.284748, 28.054157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001282, 37.303799, 28.023651>,  <31.762255, 37.315228, 28.005348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001282, 37.303799, 28.023651>,  <32.399662, 37.284748, 28.054157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001282, 37.303799, 28.023651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059871, -0.281531, -0.957682,
		-0.067080, -0.958370, 0.277540,
		-0.995950, 0.047625, -0.076264,
		31.702497, 37.318085, 28.000772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266121, 36.813194, 27.483309>,  <32.399662, 37.284748, 28.054157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266121, 36.813194, 27.483309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909351, 36.986324, 27.535656>,  <31.695290, 37.090202, 27.567064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909351, 36.986324, 27.535656>,  <32.266121, 36.813194, 27.483309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909351, 36.986324, 27.535656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233108, -0.192141, -0.953280,
		-0.387461, -0.880762, 0.272271,
		-0.891927, 0.432827, 0.130866,
		31.641773, 37.116173, 27.574915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822706, 36.440834, 27.039377>,  <32.266121, 36.813194, 27.483309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822706, 36.440834, 27.039377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618382, 36.769947, 27.139055>,  <31.495787, 36.967415, 27.198862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618382, 36.769947, 27.139055>,  <31.822706, 36.440834, 27.039377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618382, 36.769947, 27.139055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408050, 0.023087, -0.912667,
		-0.756681, -0.567886, 0.323944,
		-0.510812, 0.822784, 0.249195,
		31.465137, 37.016781, 27.213814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960184, 36.348728, 27.025074>,  <31.822706, 36.440834, 27.039377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960184, 36.348728, 27.025074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078672, 36.726799, 26.970093>,  <31.149765, 36.953640, 26.937103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078672, 36.726799, 26.970093>,  <30.960184, 36.348728, 27.025074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078672, 36.726799, 26.970093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322278, -0.036562, -0.945939,
		-0.899106, 0.324503, 0.293779,
		0.296219, 0.945178, -0.137453,
		31.167538, 37.010353, 26.928856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399975, 36.636406, 26.708801>,  <30.960184, 36.348728, 27.025074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399975, 36.636406, 26.708801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704336, 36.886646, 26.639921>,  <30.886953, 37.036789, 26.598593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704336, 36.886646, 26.639921>,  <30.399975, 36.636406, 26.708801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704336, 36.886646, 26.639921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330205, 0.144885, -0.932724,
		-0.558561, 0.766574, 0.316819,
		0.760904, 0.625598, -0.172199,
		30.932608, 37.074326, 26.588261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161551, 37.197926, 26.426691>,  <30.399975, 36.636406, 26.708801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161551, 37.197926, 26.426691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541388, 37.239437, 26.308369>,  <30.769291, 37.264343, 26.237375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541388, 37.239437, 26.308369>,  <30.161551, 37.197926, 26.426691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541388, 37.239437, 26.308369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311398, 0.203634, -0.928205,
		-0.036093, 0.973531, 0.225686,
		0.949594, 0.103780, -0.295806,
		30.826265, 37.270573, 26.219627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170225, 37.775372, 26.025686>,  <30.161551, 37.197926, 26.426691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170225, 37.775372, 26.025686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508213, 37.589424, 25.919920>,  <30.711006, 37.477856, 25.856461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508213, 37.589424, 25.919920>,  <30.170225, 37.775372, 26.025686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508213, 37.589424, 25.919920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144550, 0.277497, -0.949790,
		0.514906, 0.840767, 0.167280,
		0.844972, -0.464872, -0.264418,
		30.761705, 37.449963, 25.840595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487961, 38.211006, 25.573915>,  <30.170225, 37.775372, 26.025686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487961, 38.211006, 25.573915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627205, 37.847858, 25.480459>,  <30.710751, 37.629971, 25.424385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627205, 37.847858, 25.480459>,  <30.487961, 38.211006, 25.573915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627205, 37.847858, 25.480459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086163, 0.217189, -0.972319,
		0.933486, 0.358605, -0.002620,
		0.348109, -0.907872, -0.233642,
		30.731638, 37.575497, 25.410366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773458, 38.392708, 24.977121>,  <30.487961, 38.211006, 25.573915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773458, 38.392708, 24.977121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763699, 37.992867, 24.971445>,  <30.757843, 37.752964, 24.968039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763699, 37.992867, 24.971445>,  <30.773458, 38.392708, 24.977121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763699, 37.992867, 24.971445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104153, 0.011576, -0.994494,
		0.994262, -0.025741, 0.103829,
		-0.024398, -0.999602, -0.014191,
		30.756380, 37.692986, 24.967188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394262, 38.099823, 24.721436>,  <30.773458, 38.392708, 24.977121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394262, 38.099823, 24.721436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141111, 37.795628, 24.663292>,  <30.989222, 37.613110, 24.628407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141111, 37.795628, 24.663292>,  <31.394262, 38.099823, 24.721436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141111, 37.795628, 24.663292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421732, -0.181151, -0.888441,
		0.649315, -0.623575, 0.435367,
		-0.632876, -0.760486, -0.145357,
		30.951248, 37.567482, 24.619684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818260, 37.556534, 24.569696>,  <31.394262, 38.099823, 24.721436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818260, 37.556534, 24.569696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454462, 37.495453, 24.415037>,  <31.236183, 37.458805, 24.322241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454462, 37.495453, 24.415037>,  <31.818260, 37.556534, 24.569696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454462, 37.495453, 24.415037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413417, -0.234616, -0.879796,
		0.043637, -0.960019, 0.276514,
		-0.909496, -0.152707, -0.386650,
		31.181614, 37.449642, 24.299042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863808, 36.898323, 24.230774>,  <31.818260, 37.556534, 24.569696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863808, 36.898323, 24.230774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540415, 37.089584, 24.093531>,  <31.346378, 37.204342, 24.011185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540415, 37.089584, 24.093531>,  <31.863808, 36.898323, 24.230774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540415, 37.089584, 24.093531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301811, -0.163637, -0.939220,
		-0.505240, -0.862895, -0.012016,
		-0.808482, 0.478157, -0.343107,
		31.297871, 37.233032, 23.990599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580233, 36.349922, 23.710609>,  <31.863808, 36.898323, 24.230774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580233, 36.349922, 23.710609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492342, 36.736675, 23.658674>,  <31.439608, 36.968727, 23.627512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492342, 36.736675, 23.658674>,  <31.580233, 36.349922, 23.710609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492342, 36.736675, 23.658674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253081, -0.072042, -0.964759,
		-0.942162, -0.244845, -0.228870,
		-0.219728, 0.966882, -0.129840,
		31.426424, 37.026741, 23.619722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381283, 36.441845, 22.971464>,  <31.580233, 36.349922, 23.710609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381283, 36.441845, 22.971464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463779, 36.819332, 23.074888>,  <31.513277, 37.045826, 23.136944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463779, 36.819332, 23.074888>,  <31.381283, 36.441845, 22.971464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463779, 36.819332, 23.074888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530362, 0.114248, -0.840038,
		-0.822302, 0.310383, -0.476951,
		0.206243, 0.943722, 0.258561,
		31.525652, 37.102448, 23.152456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467072, 36.702469, 22.381773>,  <31.381283, 36.441845, 22.971464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467072, 36.702469, 22.381773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653765, 36.986290, 22.592941>,  <31.765781, 37.156582, 22.719643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653765, 36.986290, 22.592941>,  <31.467072, 36.702469, 22.381773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653765, 36.986290, 22.592941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596686, 0.187957, -0.780152,
		-0.652783, 0.679125, -0.335653,
		0.466733, 0.709550, 0.527920,
		31.793785, 37.199154, 22.751318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570650, 37.343826, 21.948708>,  <31.467072, 36.702469, 22.381773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570650, 37.343826, 21.948708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832659, 37.393768, 22.246798>,  <31.989864, 37.423733, 22.425652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832659, 37.393768, 22.246798>,  <31.570650, 37.343826, 21.948708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832659, 37.393768, 22.246798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701879, 0.264730, -0.661274,
		-0.279844, 0.956206, 0.085773,
		0.655021, 0.124851, 0.745224,
		32.029163, 37.431225, 22.470366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885220, 37.873940, 21.710777>,  <31.570650, 37.343826, 21.948708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885220, 37.873940, 21.710777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146088, 37.714626, 21.968782>,  <32.302608, 37.619038, 22.123587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146088, 37.714626, 21.968782>,  <31.885220, 37.873940, 21.710777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146088, 37.714626, 21.968782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751480, 0.227680, -0.619225,
		0.099772, 0.888555, 0.447791,
		0.652168, -0.398287, 0.645015,
		32.341740, 37.595139, 22.162287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345337, 38.441769, 21.893045>,  <31.885220, 37.873940, 21.710777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345337, 38.441769, 21.893045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511909, 38.082172, 21.947289>,  <32.611855, 37.866413, 21.979836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511909, 38.082172, 21.947289>,  <32.345337, 38.441769, 21.893045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511909, 38.082172, 21.947289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732730, 0.243565, -0.635439,
		0.538227, 0.363984, 0.760150,
		0.416436, -0.898995, 0.135609,
		32.636841, 37.812473, 21.987972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034260, 38.458450, 22.183611>,  <32.345337, 38.441769, 21.893045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034260, 38.458450, 22.183611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998173, 38.126720, 21.963037>,  <32.976521, 37.927681, 21.830694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998173, 38.126720, 21.963037>,  <33.034260, 38.458450, 22.183611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998173, 38.126720, 21.963037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792297, 0.275717, -0.544285,
		0.603429, -0.486002, 0.632199,
		-0.090215, -0.829326, -0.551434,
		32.971107, 37.877922, 21.797607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648254, 38.234802, 22.184393>,  <33.034260, 38.458450, 22.183611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648254, 38.234802, 22.184393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499241, 38.061756, 21.855988>,  <33.409832, 37.957928, 21.658945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499241, 38.061756, 21.855988>,  <33.648254, 38.234802, 22.184393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499241, 38.061756, 21.855988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810671, 0.278903, -0.514806,
		0.451697, -0.857353, 0.246811,
		-0.372534, -0.432619, -0.821011,
		33.387482, 37.931969, 21.609684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234425, 37.938110, 21.795179>,  <33.648254, 38.234802, 22.184393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234425, 37.938110, 21.795179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943378, 37.926830, 21.521017>,  <33.768753, 37.920063, 21.356520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943378, 37.926830, 21.521017>,  <34.234425, 37.938110, 21.795179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943378, 37.926830, 21.521017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609463, 0.432020, -0.664766,
		0.314854, -0.901423, -0.297159,
		-0.727614, -0.028197, -0.685407,
		33.725094, 37.918369, 21.315395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532726, 37.711094, 21.145893>,  <34.234425, 37.938110, 21.795179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532726, 37.711094, 21.145893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210068, 37.943897, 21.104738>,  <34.016472, 38.083580, 21.080046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210068, 37.943897, 21.104738>,  <34.532726, 37.711094, 21.145893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210068, 37.943897, 21.104738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525272, 0.626142, -0.576226,
		-0.270950, -0.518852, -0.810789,
		-0.806645, 0.582013, -0.102885,
		33.968075, 38.118500, 21.073874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531101, 37.829666, 20.435011>,  <34.532726, 37.711094, 21.145893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531101, 37.829666, 20.435011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281052, 38.106586, 20.579199>,  <34.131023, 38.272739, 20.665710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281052, 38.106586, 20.579199>,  <34.531101, 37.829666, 20.435011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281052, 38.106586, 20.579199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324112, 0.650368, -0.687002,
		-0.710052, -0.312628, -0.630944,
		-0.625122, 0.692304, 0.360468,
		34.093513, 38.314278, 20.687340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276199, 38.016018, 19.917257>,  <34.531101, 37.829666, 20.435011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276199, 38.016018, 19.917257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192017, 38.324585, 20.157465>,  <34.141506, 38.509724, 20.301590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192017, 38.324585, 20.157465>,  <34.276199, 38.016018, 19.917257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192017, 38.324585, 20.157465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306618, 0.635368, -0.708726,
		-0.928275, 0.034975, -0.370248,
		-0.210456, 0.771417, 0.600520,
		34.128880, 38.556011, 20.337622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789425, 38.449635, 19.481365>,  <34.276199, 38.016018, 19.917257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789425, 38.449635, 19.481365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945683, 38.672642, 19.774368>,  <34.039436, 38.806446, 19.950171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945683, 38.672642, 19.774368>,  <33.789425, 38.449635, 19.481365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945683, 38.672642, 19.774368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322006, 0.662703, -0.676119,
		-0.862385, 0.499995, 0.079357,
		0.390646, 0.557521, 0.732507,
		34.062878, 38.839897, 19.994120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701462, 39.203781, 19.367685>,  <33.789425, 38.449635, 19.481365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701462, 39.203781, 19.367685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034397, 39.151741, 19.583197>,  <34.234158, 39.120518, 19.712503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034397, 39.151741, 19.583197>,  <33.701462, 39.203781, 19.367685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034397, 39.151741, 19.583197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487185, 0.635267, -0.599238,
		-0.264309, 0.761256, 0.592140,
		0.832341, -0.130098, 0.538779,
		34.284100, 39.112713, 19.744831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920383, 39.756149, 18.891382>,  <33.701462, 39.203781, 19.367685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920383, 39.756149, 18.891382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976635, 40.126354, 18.750729>,  <34.010387, 40.348476, 18.666336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976635, 40.126354, 18.750729>,  <33.920383, 39.756149, 18.891382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976635, 40.126354, 18.750729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021549, -0.352216, -0.935670,
		-0.989828, 0.139162, -0.029589,
		0.140631, 0.925515, -0.351632,
		34.018826, 40.404007, 18.645239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462135, 39.803387, 18.363317>,  <33.920383, 39.756149, 18.891382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462135, 39.803387, 18.363317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714764, 40.105682, 18.294054>,  <33.866341, 40.287060, 18.252497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714764, 40.105682, 18.294054>,  <33.462135, 39.803387, 18.363317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714764, 40.105682, 18.294054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228894, -0.031636, -0.972937,
		-0.740761, 0.654113, 0.153003,
		0.631570, 0.755735, -0.173157,
		33.904236, 40.332401, 18.242107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061752, 40.342449, 17.936766>,  <33.462135, 39.803387, 18.363317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061752, 40.342449, 17.936766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447376, 40.429379, 17.875643>,  <33.678753, 40.481537, 17.838968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447376, 40.429379, 17.875643>,  <33.061752, 40.342449, 17.936766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447376, 40.429379, 17.875643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174781, 0.085656, -0.980874,
		-0.200079, 0.972334, 0.120562,
		0.964064, 0.217325, -0.152808,
		33.736595, 40.494576, 17.829800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023243, 40.925869, 17.476095>,  <33.061752, 40.342449, 17.936766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023243, 40.925869, 17.476095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367252, 40.725533, 17.437077>,  <33.573658, 40.605331, 17.413666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367252, 40.725533, 17.437077>,  <33.023243, 40.925869, 17.476095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367252, 40.725533, 17.437077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095098, 0.030489, -0.995001,
		0.501309, 0.865003, -0.021407,
		0.860026, -0.500839, -0.097544,
		33.625259, 40.575279, 17.407814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602863, 41.329327, 17.151825>,  <33.023243, 40.925869, 17.476095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602863, 41.329327, 17.151825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625076, 40.934284, 17.093096>,  <33.638405, 40.697258, 17.057859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625076, 40.934284, 17.093096>,  <33.602863, 41.329327, 17.151825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625076, 40.934284, 17.093096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100467, 0.140775, -0.984931,
		0.993389, 0.069448, -0.091404,
		0.055535, -0.987603, -0.146821,
		33.641735, 40.638004, 17.049049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272324, 41.047138, 16.748535>,  <33.602863, 41.329327, 17.151825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272324, 41.047138, 16.748535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945068, 40.827141, 16.681412>,  <33.748714, 40.695141, 16.641138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945068, 40.827141, 16.681412>,  <34.272324, 41.047138, 16.748535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945068, 40.827141, 16.681412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066098, 0.199945, -0.977575,
		0.571217, -0.810879, -0.127228,
		-0.818133, -0.549998, -0.167810,
		33.699627, 40.662140, 16.631069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219917, 40.303040, 16.581697>,  <34.272324, 41.047138, 16.748535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219917, 40.303040, 16.581697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914116, 40.499191, 16.414339>,  <33.730637, 40.616882, 16.313923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914116, 40.499191, 16.414339>,  <34.219917, 40.303040, 16.581697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914116, 40.499191, 16.414339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489915, 0.020173, -0.871537,
		-0.418947, -0.871273, -0.255669,
		-0.764504, 0.490384, -0.418398,
		33.684765, 40.646305, 16.288820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783829, 40.149220, 17.121502>,  <34.219917, 40.303040, 16.581697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783829, 40.149220, 17.121502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441700, 40.311394, 17.250523>,  <34.236423, 40.408699, 17.327934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441700, 40.311394, 17.250523>,  <34.783829, 40.149220, 17.121502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441700, 40.311394, 17.250523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398447, 0.116841, 0.909719,
		0.331145, 0.906626, -0.261481,
		-0.855326, 0.405435, 0.322552,
		34.185101, 40.433025, 17.347288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975838, 40.707645, 17.551992>,  <34.783829, 40.149220, 17.121502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975838, 40.707645, 17.551992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591827, 40.668079, 17.656736>,  <34.361423, 40.644341, 17.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591827, 40.668079, 17.656736>,  <34.975838, 40.707645, 17.551992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591827, 40.668079, 17.656736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244254, 0.160910, 0.956268,
		-0.136727, 0.982000, -0.130316,
		-0.960024, -0.098917, 0.261858,
		34.303822, 40.638405, 17.735294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691574, 41.287777, 17.914938>,  <34.975838, 40.707645, 17.551992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691574, 41.287777, 17.914938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475048, 40.969349, 18.023197>,  <34.345131, 40.778294, 18.088152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475048, 40.969349, 18.023197>,  <34.691574, 41.287777, 17.914938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475048, 40.969349, 18.023197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123554, 0.243083, 0.962105,
		-0.831690, 0.554246, -0.033228,
		-0.541320, -0.796067, 0.270649,
		34.312653, 40.730530, 18.104391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235752, 41.640488, 18.279379>,  <34.691574, 41.287777, 17.914938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235752, 41.640488, 18.279379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160095, 41.260883, 18.380255>,  <34.114700, 41.033119, 18.440781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160095, 41.260883, 18.380255>,  <34.235752, 41.640488, 18.279379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160095, 41.260883, 18.380255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361328, 0.306070, 0.880774,
		-0.913055, 0.075465, -0.400795,
		-0.189139, -0.949013, 0.252191,
		34.103355, 40.976181, 18.455912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591068, 41.611538, 18.638014>,  <34.235752, 41.640488, 18.279379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591068, 41.611538, 18.638014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810936, 41.301147, 18.761766>,  <33.942856, 41.114914, 18.836018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810936, 41.301147, 18.761766>,  <33.591068, 41.611538, 18.638014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810936, 41.301147, 18.761766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236331, 0.210770, 0.948538,
		-0.801253, -0.594502, -0.067534,
		0.549673, -0.775979, 0.309379,
		33.975838, 41.068356, 18.854580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295994, 41.482929, 19.295160>,  <33.591068, 41.611538, 18.638014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295994, 41.482929, 19.295160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614632, 41.241318, 19.304823>,  <33.805813, 41.096352, 19.310621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614632, 41.241318, 19.304823>,  <33.295994, 41.482929, 19.295160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614632, 41.241318, 19.304823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106555, -0.100964, 0.989167,
		-0.595047, -0.790541, -0.144790,
		0.796596, -0.604029, 0.024158,
		33.853611, 41.060108, 19.312071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140614, 40.860458, 19.681253>,  <33.295994, 41.482929, 19.295160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140614, 40.860458, 19.681253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537586, 40.909042, 19.688566>,  <33.775768, 40.938194, 19.692953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537586, 40.909042, 19.688566>,  <33.140614, 40.860458, 19.681253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537586, 40.909042, 19.688566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008906, -0.077282, 0.996969,
		0.122510, -0.989583, -0.075615,
		0.992427, 0.121465, 0.018281,
		33.835316, 40.945480, 19.694050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460091, 40.359661, 20.138391>,  <33.140614, 40.860458, 19.681253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460091, 40.359661, 20.138391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707561, 40.671707, 20.101160>,  <33.856045, 40.858932, 20.078821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707561, 40.671707, 20.101160>,  <33.460091, 40.359661, 20.138391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707561, 40.671707, 20.101160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259167, -0.090807, 0.961554,
		0.741669, -0.619013, -0.258360,
		0.618676, 0.780113, -0.093079,
		33.893166, 40.905743, 20.073236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054195, 40.074364, 20.334917>,  <33.460091, 40.359661, 20.138391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054195, 40.074364, 20.334917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147667, 40.463192, 20.343689>,  <34.203751, 40.696487, 20.348951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147667, 40.463192, 20.343689>,  <34.054195, 40.074364, 20.334917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147667, 40.463192, 20.343689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391181, -0.114637, 0.913146,
		0.890153, -0.204805, -0.407042,
		0.233679, 0.972067, 0.021929,
		34.217770, 40.754810, 20.350267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765640, 40.157207, 20.585581>,  <34.054195, 40.074364, 20.334917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765640, 40.157207, 20.585581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554943, 40.484795, 20.676655>,  <34.428524, 40.681347, 20.731298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554943, 40.484795, 20.676655>,  <34.765640, 40.157207, 20.585581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554943, 40.484795, 20.676655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185827, -0.150432, 0.970999,
		0.829466, 0.553773, -0.072947,
		-0.526739, 0.818966, 0.227684,
		34.396923, 40.730484, 20.744961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134193, 40.574856, 20.933907>,  <34.765640, 40.157207, 20.585581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134193, 40.574856, 20.933907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774014, 40.717335, 21.033751>,  <34.557903, 40.802822, 21.093657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774014, 40.717335, 21.033751>,  <35.134193, 40.574856, 20.933907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774014, 40.717335, 21.033751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266010, -0.003050, 0.963965,
		0.344125, 0.934405, -0.092007,
		-0.900454, 0.356199, 0.249610,
		34.503876, 40.824196, 21.108633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262772, 41.054802, 21.374760>,  <35.134193, 40.574856, 20.933907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262772, 41.054802, 21.374760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872192, 40.992142, 21.434095>,  <34.637844, 40.954544, 21.469696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872192, 40.992142, 21.434095>,  <35.262772, 41.054802, 21.374760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872192, 40.992142, 21.434095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164265, -0.094104, 0.981917,
		-0.139858, 0.983161, 0.117620,
		-0.976451, -0.156649, 0.148337,
		34.579258, 40.945148, 21.478596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141888, 41.413227, 22.007929>,  <35.262772, 41.054802, 21.374760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141888, 41.413227, 22.007929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826920, 41.169739, 21.969084>,  <34.637939, 41.023647, 21.945778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826920, 41.169739, 21.969084>,  <35.141888, 41.413227, 22.007929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826920, 41.169739, 21.969084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040349, -0.208103, 0.977274,
		-0.615092, 0.765609, 0.188426,
		-0.787422, -0.608716, -0.097111,
		34.590694, 40.987125, 21.939951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671505, 41.574577, 22.543104>,  <35.141888, 41.413227, 22.007929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671505, 41.574577, 22.543104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585789, 41.198383, 22.437601>,  <34.534359, 40.972668, 22.374300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585789, 41.198383, 22.437601>,  <34.671505, 41.574577, 22.543104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585789, 41.198383, 22.437601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049090, -0.280058, 0.958727,
		-0.975536, 0.192499, 0.106182,
		-0.214291, -0.940485, -0.263757,
		34.521500, 40.916237, 22.358475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034130, 41.350735, 22.992256>,  <34.671505, 41.574577, 22.543104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034130, 41.350735, 22.992256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237206, 41.030933, 22.863852>,  <34.359051, 40.839054, 22.786810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237206, 41.030933, 22.863852>,  <34.034130, 41.350735, 22.992256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237206, 41.030933, 22.863852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117834, -0.304661, 0.945144,
		-0.853444, -0.517665, -0.060464,
		0.507689, -0.799503, -0.321009,
		34.389511, 40.791084, 22.767550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597786, 40.772446, 23.100206>,  <34.034130, 41.350735, 22.992256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597786, 40.772446, 23.100206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982571, 40.663177, 23.098812>,  <34.213440, 40.597618, 23.097975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982571, 40.663177, 23.098812>,  <33.597786, 40.772446, 23.100206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982571, 40.663177, 23.098812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050166, -0.189181, 0.980660,
		-0.268546, -0.943180, -0.195688,
		0.961960, -0.273169, -0.003488,
		34.271160, 40.581226, 23.097765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627045, 40.135258, 23.290237>,  <33.597786, 40.772446, 23.100206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627045, 40.135258, 23.290237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977638, 40.303490, 23.383947>,  <34.187996, 40.404430, 23.440174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977638, 40.303490, 23.383947>,  <33.627045, 40.135258, 23.290237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977638, 40.303490, 23.383947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156889, -0.210527, 0.964917,
		0.455149, -0.882490, -0.118539,
		0.876485, 0.420583, 0.234274,
		34.240585, 40.429665, 23.454229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799484, 39.901398, 23.927647>,  <33.627045, 40.135258, 23.290237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799484, 39.901398, 23.927647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055641, 40.208546, 23.921043>,  <34.209335, 40.392834, 23.917082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055641, 40.208546, 23.921043>,  <33.799484, 39.901398, 23.927647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055641, 40.208546, 23.921043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155350, -0.108450, 0.981888,
		0.752174, -0.631357, -0.188739,
		0.640391, 0.767872, -0.016508,
		34.247757, 40.438908, 23.916092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368164, 39.675274, 24.208803>,  <33.799484, 39.901398, 23.927647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368164, 39.675274, 24.208803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405853, 40.070992, 24.253365>,  <34.428467, 40.308422, 24.280102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405853, 40.070992, 24.253365>,  <34.368164, 39.675274, 24.208803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405853, 40.070992, 24.253365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311603, -0.135583, 0.940490,
		0.945529, -0.053901, -0.321043,
		0.094221, 0.989299, 0.111402,
		34.434120, 40.367783, 24.286785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994812, 39.729561, 24.651129>,  <34.368164, 39.675274, 24.208803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994812, 39.729561, 24.651129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799938, 40.077965, 24.676413>,  <34.683014, 40.287006, 24.691584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799938, 40.077965, 24.676413>,  <34.994812, 39.729561, 24.651129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799938, 40.077965, 24.676413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174607, 0.026231, 0.984289,
		0.855668, 0.490564, -0.164864,
		-0.487181, 0.871010, 0.063211,
		34.653786, 40.339268, 24.695375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381084, 40.189423, 25.086758>,  <34.994812, 39.729561, 24.651129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381084, 40.189423, 25.086758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013119, 40.345119, 25.105707>,  <34.792339, 40.438538, 25.117077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013119, 40.345119, 25.105707>,  <35.381084, 40.189423, 25.086758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013119, 40.345119, 25.105707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157142, 0.255272, 0.954014,
		0.359247, 0.885059, -0.295995,
		-0.919917, 0.389240, 0.047375,
		34.737144, 40.461891, 25.119919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441368, 40.662239, 25.627726>,  <35.381084, 40.189423, 25.086758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441368, 40.662239, 25.627726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046070, 40.682873, 25.570171>,  <34.808891, 40.695255, 25.535639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046070, 40.682873, 25.570171>,  <35.441368, 40.662239, 25.627726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046070, 40.682873, 25.570171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125693, 0.261370, 0.957020,
		0.086978, 0.963859, -0.251815,
		-0.988249, 0.051588, -0.143884,
		34.749596, 40.698349, 25.527006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177891, 41.131214, 26.017366>,  <35.441368, 40.662239, 25.627726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177891, 41.131214, 26.017366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831921, 40.937275, 25.965481>,  <34.624336, 40.820911, 25.934349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831921, 40.937275, 25.965481>,  <35.177891, 41.131214, 26.017366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831921, 40.937275, 25.965481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228208, 0.149730, 0.962030,
		-0.447012, 0.861689, -0.240151,
		-0.864929, -0.484843, -0.129713,
		34.572441, 40.791821, 25.926567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684357, 41.609024, 26.300358>,  <35.177891, 41.131214, 26.017366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684357, 41.609024, 26.300358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516220, 41.246189, 26.291355>,  <34.415340, 41.028488, 26.285954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516220, 41.246189, 26.291355>,  <34.684357, 41.609024, 26.300358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516220, 41.246189, 26.291355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377818, 0.152418, 0.913248,
		-0.824967, 0.392376, -0.406781,
		-0.420337, -0.907089, -0.022507,
		34.390118, 40.974064, 26.284603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026268, 41.624493, 26.683554>,  <34.684357, 41.609024, 26.300358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026268, 41.624493, 26.683554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105999, 41.232578, 26.690367>,  <34.153835, 40.997429, 26.694454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105999, 41.232578, 26.690367>,  <34.026268, 41.624493, 26.683554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105999, 41.232578, 26.690367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370424, -0.059243, 0.926972,
		-0.907225, -0.191076, -0.374744,
		0.199323, -0.979786, 0.017032,
		34.165794, 40.938644, 26.695477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340237, 41.320820, 26.916418>,  <34.026268, 41.624493, 26.683554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340237, 41.320820, 26.916418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643879, 41.073811, 26.998812>,  <33.826065, 40.925606, 27.048248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643879, 41.073811, 26.998812>,  <33.340237, 41.320820, 26.916418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643879, 41.073811, 26.998812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394919, -0.185310, 0.899833,
		-0.517495, -0.764413, -0.384541,
		0.759103, -0.617522, 0.205985,
		33.871609, 40.888554, 27.060608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009716, 40.734406, 27.255310>,  <33.340237, 41.320820, 26.916418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009716, 40.734406, 27.255310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395634, 40.712467, 27.358194>,  <33.627186, 40.699306, 27.419926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395634, 40.712467, 27.358194>,  <33.009716, 40.734406, 27.255310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395634, 40.712467, 27.358194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259171, -0.364393, 0.894454,
		0.044671, -0.929629, -0.365779,
		0.964797, -0.054843, 0.257211,
		33.685074, 40.696014, 27.435358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015373, 40.148823, 27.564039>,  <33.009716, 40.734406, 27.255310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015373, 40.148823, 27.564039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357006, 40.315926, 27.687990>,  <33.561985, 40.416187, 27.762362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357006, 40.315926, 27.687990>,  <33.015373, 40.148823, 27.564039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357006, 40.315926, 27.687990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152897, -0.367792, 0.917252,
		0.497163, -0.830785, -0.250250,
		0.854080, 0.417761, 0.309877,
		33.613232, 40.441254, 27.780952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476315, 39.660179, 27.897902>,  <33.015373, 40.148823, 27.564039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476315, 39.660179, 27.897902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578785, 40.016205, 28.048716>,  <33.640266, 40.229820, 28.139204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578785, 40.016205, 28.048716>,  <33.476315, 39.660179, 27.897902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578785, 40.016205, 28.048716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165811, -0.343805, 0.924286,
		0.952303, -0.299295, 0.059509,
		0.256175, 0.890068, 0.377033,
		33.655636, 40.283226, 28.161825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873699, 39.496902, 28.438648>,  <33.476315, 39.660179, 27.897902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873699, 39.496902, 28.438648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783508, 39.878445, 28.517973>,  <33.729393, 40.107368, 28.565567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783508, 39.878445, 28.517973>,  <33.873699, 39.496902, 28.438648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783508, 39.878445, 28.517973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254097, -0.254083, 0.933208,
		0.940530, 0.160024, 0.299660,
		-0.225474, 0.953852, 0.198311,
		33.715866, 40.164600, 28.577467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272327, 39.691528, 29.055267>,  <33.873699, 39.496902, 28.438648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272327, 39.691528, 29.055267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979290, 39.963692, 29.062767>,  <33.803467, 40.126991, 29.067266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979290, 39.963692, 29.062767>,  <34.272327, 39.691528, 29.055267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979290, 39.963692, 29.062767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149004, -0.187186, 0.970958,
		0.664159, 0.708522, 0.238515,
		-0.732592, 0.680410, 0.018749,
		33.759514, 40.167816, 29.068392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253754, 39.979931, 29.719242>,  <34.272327, 39.691528, 29.055267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253754, 39.979931, 29.719242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901108, 40.059059, 29.547836>,  <33.689522, 40.106537, 29.444994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901108, 40.059059, 29.547836>,  <34.253754, 39.979931, 29.719242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901108, 40.059059, 29.547836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455613, -0.119745, 0.882087,
		0.123186, 0.972896, 0.195700,
		-0.881613, 0.197824, -0.428513,
		33.636623, 40.118404, 29.419283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942810, 40.519562, 30.074308>,  <34.253754, 39.979931, 29.719242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942810, 40.519562, 30.074308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668949, 40.287155, 29.898277>,  <33.504631, 40.147709, 29.792660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668949, 40.287155, 29.898277>,  <33.942810, 40.519562, 30.074308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668949, 40.287155, 29.898277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394161, -0.212730, 0.894082,
		-0.613096, 0.785598, -0.083369,
		-0.684654, -0.581019, -0.440076,
		33.463554, 40.112850, 29.766254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411160, 40.697884, 30.415098>,  <33.942810, 40.519562, 30.074308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411160, 40.697884, 30.415098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307411, 40.351665, 30.243725>,  <33.245163, 40.143932, 30.140902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307411, 40.351665, 30.243725>,  <33.411160, 40.697884, 30.415098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307411, 40.351665, 30.243725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533489, -0.241384, 0.810632,
		-0.805057, 0.438817, -0.399152,
		-0.259370, -0.865548, -0.428432,
		33.229599, 40.092003, 30.115194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650795, 40.675606, 30.517382>,  <33.411160, 40.697884, 30.415098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650795, 40.675606, 30.517382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816677, 40.317501, 30.452232>,  <32.916206, 40.102638, 30.413143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816677, 40.317501, 30.452232>,  <32.650795, 40.675606, 30.517382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816677, 40.317501, 30.452232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366372, -0.328118, 0.870695,
		-0.832939, -0.301414, -0.464072,
		0.414710, -0.895259, -0.162873,
		32.941090, 40.048923, 30.403370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103985, 40.217884, 30.740244>,  <32.650795, 40.675606, 30.517382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103985, 40.217884, 30.740244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415226, 39.967838, 30.715612>,  <32.601971, 39.817810, 30.700834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415226, 39.967838, 30.715612>,  <32.103985, 40.217884, 30.740244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415226, 39.967838, 30.715612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196810, -0.335717, 0.921173,
		-0.596512, -0.704646, -0.384250,
		0.778100, -0.625115, -0.061578,
		32.648655, 39.780304, 30.697140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887068, 39.616440, 31.102972>,  <32.103985, 40.217884, 30.740244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887068, 39.616440, 31.102972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286919, 39.612572, 31.092733>,  <32.526829, 39.610252, 31.086590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286919, 39.612572, 31.092733>,  <31.887068, 39.616440, 31.102972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286919, 39.612572, 31.092733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022112, -0.265559, 0.963841,
		-0.016116, -0.964046, -0.265246,
		0.999626, -0.009668, -0.025597,
		32.586807, 39.609673, 31.085054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063354, 38.983364, 31.610783>,  <31.887068, 39.616440, 31.102972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063354, 38.983364, 31.610783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434811, 39.126080, 31.570129>,  <32.657684, 39.211708, 31.545738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434811, 39.126080, 31.570129>,  <32.063354, 38.983364, 31.610783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434811, 39.126080, 31.570129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235109, -0.354085, 0.905178,
		0.286975, -0.864478, -0.412702,
		0.928638, 0.356793, -0.101633,
		32.713402, 39.233116, 31.539639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525620, 38.527737, 31.925215>,  <32.063354, 38.983364, 31.610783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525620, 38.527737, 31.925215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659401, 38.904701, 31.925741>,  <32.739670, 39.130878, 31.926058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659401, 38.904701, 31.925741>,  <32.525620, 38.527737, 31.925215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659401, 38.904701, 31.925741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096634, -0.035684, 0.994680,
		0.937444, -0.332548, -0.103004,
		0.334455, 0.942411, 0.001316,
		32.759739, 39.187424, 31.926136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096527, 38.630566, 32.337746>,  <32.525620, 38.527737, 31.925215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096527, 38.630566, 32.337746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974899, 39.011566, 32.330917>,  <32.901924, 39.240166, 32.326820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974899, 39.011566, 32.330917>,  <33.096527, 38.630566, 32.337746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974899, 39.011566, 32.330917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119402, 0.055880, 0.991272,
		0.945137, 0.299378, -0.130722,
		-0.304070, 0.952497, -0.017068,
		32.883678, 39.297314, 32.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418774, 38.886036, 32.907520>,  <33.096527, 38.630566, 32.337746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418774, 38.886036, 32.907520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187843, 39.205929, 32.841648>,  <33.049286, 39.397865, 32.802124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187843, 39.205929, 32.841648>,  <33.418774, 38.886036, 32.907520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187843, 39.205929, 32.841648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113597, 0.278394, 0.953726,
		0.808570, 0.531908, -0.251572,
		-0.577330, 0.799732, -0.164678,
		33.014645, 39.445847, 32.792244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788918, 39.603958, 33.063156>,  <33.418774, 38.886036, 32.907520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788918, 39.603958, 33.063156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391788, 39.628117, 33.104458>,  <33.153511, 39.642612, 33.129238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391788, 39.628117, 33.104458>,  <33.788918, 39.603958, 33.063156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391788, 39.628117, 33.104458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116897, 0.306787, 0.944572,
		0.025370, 0.949860, -0.311644,
		-0.992820, 0.060394, 0.103252,
		33.093941, 39.646236, 33.135433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322166, 39.183357, 32.717213>,  <33.788918, 39.603958, 33.063156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322166, 39.183357, 32.717213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653389, 38.965637, 32.770977>,  <34.852123, 38.835003, 32.803234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653389, 38.965637, 32.770977>,  <34.322166, 39.183357, 32.717213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653389, 38.965637, 32.770977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343417, 0.302920, -0.888991,
		0.443164, 0.782288, 0.437756,
		0.828052, -0.544302, 0.134408,
		34.901806, 38.802345, 32.811298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819244, 39.634186, 32.605690>,  <34.322166, 39.183357, 32.717213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819244, 39.634186, 32.605690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991821, 39.275139, 32.569614>,  <35.095367, 39.059711, 32.547970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991821, 39.275139, 32.569614>,  <34.819244, 39.634186, 32.605690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991821, 39.275139, 32.569614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497520, 0.320137, -0.806217,
		0.752548, 0.302970, 0.584706,
		0.431446, -0.897620, -0.090185,
		35.121254, 39.005852, 32.542561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438896, 39.799587, 32.511059>,  <34.819244, 39.634186, 32.605690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438896, 39.799587, 32.511059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444801, 39.424633, 32.371864>,  <35.448345, 39.199661, 32.288349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444801, 39.424633, 32.371864>,  <35.438896, 39.799587, 32.511059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444801, 39.424633, 32.371864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721512, 0.250930, -0.645333,
		0.692245, -0.241551, 0.680037,
		0.014761, -0.937383, -0.347987,
		35.449230, 39.143417, 32.267467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157654, 39.782196, 32.350468>,  <35.438896, 39.799587, 32.511059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157654, 39.782196, 32.350468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945995, 39.512825, 32.143974>,  <35.819000, 39.351200, 32.020077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945995, 39.512825, 32.143974>,  <36.157654, 39.782196, 32.350468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945995, 39.512825, 32.143974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466161, 0.277644, -0.840004,
		0.709015, -0.685131, 0.167014,
		-0.529143, -0.673431, -0.516235,
		35.787254, 39.310795, 31.989103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687012, 39.374840, 31.996777>,  <36.157654, 39.782196, 32.350468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687012, 39.374840, 31.996777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347073, 39.324139, 31.792150>,  <36.143108, 39.293720, 31.669374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347073, 39.324139, 31.792150>,  <36.687012, 39.374840, 31.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347073, 39.324139, 31.792150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484995, 0.191790, -0.853227,
		0.206269, -0.973215, -0.101513,
		-0.849843, -0.126761, -0.511566,
		36.092117, 39.286114, 31.638681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929417, 39.081226, 31.450108>,  <36.687012, 39.374840, 31.996777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929417, 39.081226, 31.450108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568630, 39.224503, 31.353638>,  <36.352158, 39.310467, 31.295755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568630, 39.224503, 31.353638>,  <36.929417, 39.081226, 31.450108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568630, 39.224503, 31.353638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320239, 0.180182, -0.930044,
		-0.289674, -0.916099, -0.277223,
		-0.901963, 0.358187, -0.241177,
		36.298042, 39.331959, 31.281284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772331, 38.710136, 30.790501>,  <36.929417, 39.081226, 31.450108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772331, 38.710136, 30.790501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545479, 39.039425, 30.800829>,  <36.409367, 39.236996, 30.807026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545479, 39.039425, 30.800829>,  <36.772331, 38.710136, 30.790501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545479, 39.039425, 30.800829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113406, 0.109102, -0.987540,
		-0.815780, -0.557141, -0.155234,
		-0.567136, 0.823220, 0.025820,
		36.375340, 39.286392, 30.808575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372932, 38.664814, 30.220737>,  <36.772331, 38.710136, 30.790501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372932, 38.664814, 30.220737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369778, 39.051964, 30.321255>,  <36.367886, 39.284256, 30.381565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369778, 39.051964, 30.321255>,  <36.372932, 38.664814, 30.220737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369778, 39.051964, 30.321255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031062, 0.250944, -0.967503,
		-0.999486, -0.015435, 0.028085,
		-0.007885, 0.967879, 0.251294,
		36.367413, 39.342327, 30.396643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956516, 39.031048, 29.719990>,  <36.372932, 38.664814, 30.220737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956516, 39.031048, 29.719990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163376, 39.333931, 29.879581>,  <36.287491, 39.515663, 29.975336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163376, 39.333931, 29.879581>,  <35.956516, 39.031048, 29.719990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163376, 39.333931, 29.879581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060102, 0.432878, -0.899447,
		-0.853781, 0.489130, 0.178353,
		0.517151, 0.757211, 0.398981,
		36.318520, 39.561096, 29.999275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603397, 39.614414, 29.523186>,  <35.956516, 39.031048, 29.719990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603397, 39.614414, 29.523186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970108, 39.736317, 29.626448>,  <36.190132, 39.809460, 29.688406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970108, 39.736317, 29.626448>,  <35.603397, 39.614414, 29.523186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970108, 39.736317, 29.626448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109415, 0.429993, -0.896178,
		-0.384125, 0.849839, 0.360861,
		0.916775, 0.304761, 0.258156,
		36.245140, 39.827744, 29.703894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698830, 40.131172, 29.058794>,  <35.603397, 39.614414, 29.523186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698830, 40.131172, 29.058794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074287, 40.060295, 29.177143>,  <36.299564, 40.017769, 29.248152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074287, 40.060295, 29.177143>,  <35.698830, 40.131172, 29.058794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074287, 40.060295, 29.177143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336800, 0.286433, -0.896952,
		0.074190, 0.941572, 0.328540,
		0.938649, -0.177197, 0.295871,
		36.355881, 40.007137, 29.265903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045506, 40.736954, 28.888050>,  <35.698830, 40.131172, 29.058794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045506, 40.736954, 28.888050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316475, 40.442764, 28.882622>,  <36.479057, 40.266251, 28.879366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316475, 40.442764, 28.882622>,  <36.045506, 40.736954, 28.888050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316475, 40.442764, 28.882622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391825, 0.376389, -0.839526,
		0.622554, 0.563396, 0.543150,
		0.677421, -0.735470, -0.013570,
		36.519703, 40.222122, 28.878551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590137, 41.028500, 28.628588>,  <36.045506, 40.736954, 28.888050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590137, 41.028500, 28.628588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686611, 40.643810, 28.576559>,  <36.744495, 40.412998, 28.545341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686611, 40.643810, 28.576559>,  <36.590137, 41.028500, 28.628588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686611, 40.643810, 28.576559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410543, 0.222552, -0.884265,
		0.879367, 0.159870, 0.448504,
		0.241183, -0.961723, -0.130072,
		36.758965, 40.355293, 28.537539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294544, 41.110367, 28.329416>,  <36.590137, 41.028500, 28.628588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294544, 41.110367, 28.329416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152023, 40.745636, 28.247801>,  <37.066513, 40.526798, 28.198832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152023, 40.745636, 28.247801>,  <37.294544, 41.110367, 28.329416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152023, 40.745636, 28.247801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411507, 0.042919, -0.910395,
		0.838876, -0.408335, 0.359930,
		-0.356299, -0.911823, -0.204037,
		37.045135, 40.472088, 28.186590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793686, 40.762432, 28.069578>,  <37.294544, 41.110367, 28.329416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793686, 40.762432, 28.069578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474354, 40.568352, 27.926895>,  <37.282753, 40.451904, 27.841286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474354, 40.568352, 27.926895>,  <37.793686, 40.762432, 28.069578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474354, 40.568352, 27.926895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399063, 0.017376, -0.916759,
		0.451012, -0.874229, 0.179755,
		-0.798334, -0.485203, -0.356709,
		37.234852, 40.422791, 27.819881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053257, 40.297684, 27.585581>,  <37.793686, 40.762432, 28.069578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053257, 40.297684, 27.585581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665329, 40.291527, 27.488253>,  <37.432571, 40.287834, 27.429855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665329, 40.291527, 27.488253>,  <38.053257, 40.297684, 27.585581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665329, 40.291527, 27.488253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240903, -0.214078, -0.946645,
		-0.037522, -0.976695, 0.211325,
		-0.969823, -0.015389, -0.243322,
		37.374382, 40.286911, 27.415257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023857, 39.793034, 27.032270>,  <38.053257, 40.297684, 27.585581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023857, 39.793034, 27.032270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665909, 39.968380, 26.998684>,  <37.451141, 40.073589, 26.978531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665909, 39.968380, 26.998684>,  <38.023857, 39.793034, 27.032270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665909, 39.968380, 26.998684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088193, -0.010756, -0.996045,
		-0.437535, -0.898732, -0.029035,
		-0.894866, 0.438366, -0.083968,
		37.397449, 40.099888, 26.973494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694057, 39.469795, 26.448572>,  <38.023857, 39.793034, 27.032270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694057, 39.469795, 26.448572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481220, 39.807838, 26.469269>,  <37.353519, 40.010662, 26.481688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481220, 39.807838, 26.469269>,  <37.694057, 39.469795, 26.448572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481220, 39.807838, 26.469269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011073, 0.054161, -0.998471,
		-0.846614, -0.531852, -0.019461,
		-0.532093, 0.845104, 0.051742,
		37.321594, 40.061371, 26.484791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942379, 39.370758, 26.172724>,  <37.694057, 39.469795, 26.448572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942379, 39.370758, 26.172724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059944, 39.750050, 26.124580>,  <37.130482, 39.977623, 26.095694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059944, 39.750050, 26.124580>,  <36.942379, 39.370758, 26.172724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059944, 39.750050, 26.124580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163655, -0.074139, -0.983728,
		-0.941719, 0.308824, 0.133391,
		0.293909, 0.948225, -0.120359,
		37.148117, 40.034515, 26.088472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420856, 39.699947, 25.756124>,  <36.942379, 39.370758, 26.172724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420856, 39.699947, 25.756124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733253, 39.946617, 25.716583>,  <36.920692, 40.094620, 25.692860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733253, 39.946617, 25.716583>,  <36.420856, 39.699947, 25.756124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733253, 39.946617, 25.716583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028494, -0.122931, -0.992006,
		-0.623896, 0.777561, -0.078437,
		0.780988, 0.616673, -0.098852,
		36.967548, 40.131618, 25.686928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195557, 40.272110, 25.259518>,  <36.420856, 39.699947, 25.756124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195557, 40.272110, 25.259518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594929, 40.252571, 25.270449>,  <36.834553, 40.240849, 25.277008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594929, 40.252571, 25.270449>,  <36.195557, 40.272110, 25.259518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594929, 40.252571, 25.270449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020394, -0.137202, -0.990333,
		0.052127, 0.989338, -0.135990,
		0.998432, -0.048849, 0.027328,
		36.894459, 40.237915, 25.278646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502796, 40.723118, 24.802450>,  <36.195557, 40.272110, 25.259518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502796, 40.723118, 24.802450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739498, 40.404621, 24.852766>,  <36.881519, 40.213524, 24.882956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739498, 40.404621, 24.852766>,  <36.502796, 40.723118, 24.802450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739498, 40.404621, 24.852766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055350, -0.195809, -0.979079,
		0.804218, 0.572410, -0.159942,
		0.591752, -0.796245, 0.125790,
		36.917023, 40.165749, 24.890503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082577, 40.718132, 24.292522>,  <36.502796, 40.723118, 24.802450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082577, 40.718132, 24.292522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047436, 40.338638, 24.413973>,  <37.026352, 40.110943, 24.486843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047436, 40.338638, 24.413973>,  <37.082577, 40.718132, 24.292522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047436, 40.338638, 24.413973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072259, -0.297931, -0.951849,
		0.993509, -0.105560, -0.042381,
		-0.087851, -0.948733, 0.303625,
		37.021080, 40.054020, 24.505060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505295, 40.416847, 23.901674>,  <37.082577, 40.718132, 24.292522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505295, 40.416847, 23.901674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256546, 40.125500, 24.016747>,  <37.107296, 39.950691, 24.085791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256546, 40.125500, 24.016747>,  <37.505295, 40.416847, 23.901674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256546, 40.125500, 24.016747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075641, -0.309770, -0.947798,
		0.779457, -0.611169, 0.137543,
		-0.621872, -0.728364, 0.287682,
		37.069984, 39.906990, 24.103050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751888, 39.743839, 23.524937>,  <37.505295, 40.416847, 23.901674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751888, 39.743839, 23.524937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366417, 39.708130, 23.625616>,  <37.135136, 39.686707, 23.686024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366417, 39.708130, 23.625616>,  <37.751888, 39.743839, 23.524937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366417, 39.708130, 23.625616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203232, -0.366311, -0.908027,
		0.173262, -0.926200, 0.334863,
		-0.963679, -0.089272, 0.251701,
		37.077312, 39.681347, 23.701126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492989, 39.106632, 23.241932>,  <37.751888, 39.743839, 23.524937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492989, 39.106632, 23.241932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174683, 39.342289, 23.298025>,  <36.983700, 39.483685, 23.331680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174683, 39.342289, 23.298025>,  <37.492989, 39.106632, 23.241932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174683, 39.342289, 23.298025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333108, -0.232430, -0.913792,
		-0.505760, -0.773878, 0.381208,
		-0.795768, 0.589143, 0.140231,
		36.935951, 39.519032, 23.340094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955921, 38.628086, 23.233389>,  <37.492989, 39.106632, 23.241932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955921, 38.628086, 23.233389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817120, 38.993706, 23.149387>,  <36.733837, 39.213078, 23.098986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817120, 38.993706, 23.149387>,  <36.955921, 38.628086, 23.233389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817120, 38.993706, 23.149387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433337, -0.354846, -0.828434,
		-0.831748, -0.196470, 0.519225,
		-0.347008, 0.914048, -0.210005,
		36.713017, 39.267921, 23.086386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328079, 38.456593, 22.975517>,  <36.955921, 38.628086, 23.233389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328079, 38.456593, 22.975517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410099, 38.824471, 22.841583>,  <36.459309, 39.045197, 22.761223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410099, 38.824471, 22.841583>,  <36.328079, 38.456593, 22.975517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410099, 38.824471, 22.841583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428744, -0.223131, -0.875438,
		-0.879849, 0.323064, 0.348562,
		0.205048, 0.919697, -0.334833,
		36.471615, 39.100380, 22.741133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705776, 38.603893, 22.518030>,  <36.328079, 38.456593, 22.975517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705776, 38.603893, 22.518030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976082, 38.881588, 22.418932>,  <36.138264, 39.048206, 22.359472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976082, 38.881588, 22.418932>,  <35.705776, 38.603893, 22.518030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976082, 38.881588, 22.418932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248909, -0.101444, -0.963200,
		-0.693824, 0.712559, 0.104250,
		0.675761, 0.694240, -0.247747,
		36.178810, 39.089859, 22.344608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444714, 38.989487, 21.943939>,  <35.705776, 38.603893, 22.518030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444714, 38.989487, 21.943939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835419, 39.074955, 21.937342>,  <36.069843, 39.126236, 21.933382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835419, 39.074955, 21.937342>,  <35.444714, 38.989487, 21.943939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835419, 39.074955, 21.937342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020964, -0.171867, -0.984897,
		-0.213278, 0.961669, -0.172353,
		0.976767, 0.213670, -0.016495,
		36.128448, 39.139057, 21.932394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564758, 39.281258, 21.278078>,  <35.444714, 38.989487, 21.943939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564758, 39.281258, 21.278078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927792, 39.149578, 21.382330>,  <36.145611, 39.070572, 21.444881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927792, 39.149578, 21.382330>,  <35.564758, 39.281258, 21.278078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927792, 39.149578, 21.382330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226926, -0.137696, -0.964129,
		0.353279, 0.934166, -0.050266,
		0.907578, -0.329200, 0.260631,
		36.200066, 39.050819, 21.460520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164810, 39.704563, 20.852711>,  <35.564758, 39.281258, 21.278078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164810, 39.704563, 20.852711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300549, 39.351173, 20.981903>,  <36.381992, 39.139141, 21.059418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300549, 39.351173, 20.981903>,  <36.164810, 39.704563, 20.852711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300549, 39.351173, 20.981903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315792, -0.216429, -0.923815,
		0.886069, 0.415489, 0.205549,
		0.339349, -0.883474, 0.322979,
		36.402351, 39.086132, 21.078796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717640, 39.522831, 20.378393>,  <36.164810, 39.704563, 20.852711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717640, 39.522831, 20.378393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680099, 39.168266, 20.559710>,  <36.657578, 38.955528, 20.668499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680099, 39.168266, 20.559710>,  <36.717640, 39.522831, 20.378393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680099, 39.168266, 20.559710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187274, -0.462891, -0.866406,
		0.977815, 0.003581, 0.209442,
		-0.093847, -0.886408, 0.453292,
		36.651947, 38.902344, 20.695698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296688, 39.186958, 20.195160>,  <36.717640, 39.522831, 20.378393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296688, 39.186958, 20.195160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011600, 38.929222, 20.306055>,  <36.840549, 38.774578, 20.372591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011600, 38.929222, 20.306055>,  <37.296688, 39.186958, 20.195160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011600, 38.929222, 20.306055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229784, -0.587886, -0.775622,
		0.662750, -0.489092, 0.567055,
		-0.712714, -0.644343, 0.277236,
		36.797787, 38.735920, 20.389225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563187, 38.477261, 20.092299>,  <37.296688, 39.186958, 20.195160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563187, 38.477261, 20.092299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166363, 38.430756, 20.111485>,  <36.928268, 38.402851, 20.122997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166363, 38.430756, 20.111485>,  <37.563187, 38.477261, 20.092299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166363, 38.430756, 20.111485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053703, -0.736461, -0.674345,
		0.113727, -0.666414, 0.736857,
		-0.992060, -0.116263, 0.047967,
		36.868744, 38.395878, 20.125875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512409, 37.715065, 20.123896>,  <37.563187, 38.477261, 20.092299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512409, 37.715065, 20.123896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142094, 37.825047, 20.020117>,  <36.919903, 37.891037, 19.957850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142094, 37.825047, 20.020117>,  <37.512409, 37.715065, 20.123896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142094, 37.825047, 20.020117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034099, -0.744240, -0.667042,
		-0.376496, -0.608694, 0.698386,
		-0.925790, 0.274953, -0.259448,
		36.864357, 37.907532, 19.942282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003101, 37.095169, 20.205204>,  <37.512409, 37.715065, 20.123896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003101, 37.095169, 20.205204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849224, 37.346272, 19.934523>,  <36.756897, 37.496933, 19.772114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849224, 37.346272, 19.934523>,  <37.003101, 37.095169, 20.205204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849224, 37.346272, 19.934523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086007, -0.754310, -0.650860,
		-0.919029, -0.192181, 0.344170,
		-0.384694, 0.627760, -0.676704,
		36.733814, 37.534599, 19.731512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524204, 36.682137, 19.930799>,  <37.003101, 37.095169, 20.205204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524204, 36.682137, 19.930799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577824, 36.972206, 19.660645>,  <36.609993, 37.146248, 19.498550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577824, 36.972206, 19.660645>,  <36.524204, 36.682137, 19.930799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577824, 36.972206, 19.660645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059340, -0.674443, -0.735939,
		-0.989197, 0.138726, -0.047374,
		0.134045, 0.725177, -0.675389,
		36.618038, 37.189758, 19.458029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712070, 36.314922, 19.324558>,  <36.524204, 36.682137, 19.930799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712070, 36.314922, 19.324558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987572, 36.027336, 19.287222>,  <37.152874, 35.854786, 19.264820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987572, 36.027336, 19.287222>,  <36.712070, 36.314922, 19.324558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987572, 36.027336, 19.287222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341449, 0.208109, 0.916571,
		-0.639556, -0.663162, 0.388825,
		0.688753, -0.718962, -0.093339,
		37.194199, 35.811646, 19.259220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649242, 35.859730, 19.829165>,  <36.712070, 36.314922, 19.324558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649242, 35.859730, 19.829165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032196, 35.828678, 19.717892>,  <37.261971, 35.810047, 19.651127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032196, 35.828678, 19.717892>,  <36.649242, 35.859730, 19.829165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032196, 35.828678, 19.717892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281616, 0.037259, 0.958803,
		-0.064066, -0.996286, 0.057533,
		0.957386, -0.077629, -0.278183,
		37.319412, 35.805389, 19.634438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951672, 35.354103, 20.273413>,  <36.649242, 35.859730, 19.829165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951672, 35.354103, 20.273413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261471, 35.555470, 20.120193>,  <37.447350, 35.676289, 20.028263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261471, 35.555470, 20.120193>,  <36.951672, 35.354103, 20.273413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261471, 35.555470, 20.120193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323385, 0.205332, 0.923721,
		0.543668, -0.839292, -0.003769,
		0.774498, 0.503417, -0.383047,
		37.493820, 35.706493, 20.005280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473476, 35.157097, 20.768139>,  <36.951672, 35.354103, 20.273413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473476, 35.157097, 20.768139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634548, 35.444363, 20.541128>,  <37.731194, 35.616722, 20.404922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634548, 35.444363, 20.541128>,  <37.473476, 35.157097, 20.768139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634548, 35.444363, 20.541128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648184, 0.214052, 0.730780,
		0.646301, -0.662133, -0.379309,
		0.402682, 0.718165, -0.567526,
		37.755352, 35.659813, 20.370871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178642, 35.024559, 20.851543>,  <37.473476, 35.157097, 20.768139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178642, 35.024559, 20.851543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079479, 35.396065, 20.741320>,  <38.019981, 35.618969, 20.675184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079479, 35.396065, 20.741320>,  <38.178642, 35.024559, 20.851543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079479, 35.396065, 20.741320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474209, 0.364368, 0.801475,
		0.844790, 0.068016, -0.530758,
		-0.247904, 0.928768, -0.275561,
		38.005108, 35.674694, 20.658651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748169, 35.440338, 21.121134>,  <38.178642, 35.024559, 20.851543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748169, 35.440338, 21.121134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461594, 35.706413, 21.036991>,  <38.289650, 35.866058, 20.986506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461594, 35.706413, 21.036991>,  <38.748169, 35.440338, 21.121134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461594, 35.706413, 21.036991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236866, 0.515533, 0.823480,
		0.656213, 0.540143, -0.526906,
		-0.716435, 0.665184, -0.210358,
		38.246662, 35.905968, 20.973885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117611, 36.073311, 21.142433>,  <38.748169, 35.440338, 21.121134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117611, 36.073311, 21.142433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723942, 36.118095, 21.197393>,  <38.487740, 36.144966, 21.230370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723942, 36.118095, 21.197393>,  <39.117611, 36.073311, 21.142433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723942, 36.118095, 21.197393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171823, 0.412539, 0.894588,
		0.043473, 0.904034, -0.425245,
		-0.984168, 0.111957, 0.137400,
		38.428692, 36.151684, 21.238613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213062, 36.626480, 21.617533>,  <39.117611, 36.073311, 21.142433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213062, 36.626480, 21.617533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828938, 36.514984, 21.613470>,  <38.598461, 36.448086, 21.611032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828938, 36.514984, 21.613470>,  <39.213062, 36.626480, 21.617533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828938, 36.514984, 21.613470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167197, 0.546116, 0.820854,
		-0.223255, 0.789976, -0.571047,
		-0.960314, -0.278737, -0.010158,
		38.540844, 36.431362, 21.610422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725395, 37.254322, 21.695314>,  <39.213062, 36.626480, 21.617533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725395, 37.254322, 21.695314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532116, 36.933578, 21.835907>,  <38.416149, 36.741131, 21.920263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532116, 36.933578, 21.835907>,  <38.725395, 37.254322, 21.695314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532116, 36.933578, 21.835907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133991, 0.464460, 0.875399,
		-0.865198, 0.375894, -0.331868,
		-0.483196, -0.801861, 0.351483,
		38.387157, 36.693020, 21.941353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226688, 37.453300, 22.039528>,  <38.725395, 37.254322, 21.695314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226688, 37.453300, 22.039528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190079, 37.073673, 22.160118>,  <38.168114, 36.845898, 22.232471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190079, 37.073673, 22.160118>,  <38.226688, 37.453300, 22.039528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190079, 37.073673, 22.160118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360128, 0.313800, 0.878543,
		-0.928403, -0.028164, -0.370506,
		-0.091522, -0.949071, 0.301476,
		38.162621, 36.788952, 22.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657661, 37.434841, 22.400831>,  <38.226688, 37.453300, 22.039528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657661, 37.434841, 22.400831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847012, 37.106812, 22.529455>,  <37.960621, 36.909992, 22.606628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847012, 37.106812, 22.529455>,  <37.657661, 37.434841, 22.400831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847012, 37.106812, 22.529455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337612, 0.168261, 0.926125,
		-0.813596, -0.546963, -0.197216,
		0.473372, -0.820073, 0.321558,
		37.989021, 36.860790, 22.625923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116745, 37.108978, 22.774523>,  <37.657661, 37.434841, 22.400831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116745, 37.108978, 22.774523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469070, 36.972393, 22.905714>,  <37.680466, 36.890442, 22.984428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469070, 36.972393, 22.905714>,  <37.116745, 37.108978, 22.774523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469070, 36.972393, 22.905714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265333, 0.217724, 0.939252,
		-0.392133, -0.914328, 0.101172,
		0.880812, -0.341468, 0.327978,
		37.733315, 36.869953, 23.004108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005268, 36.645210, 23.308681>,  <37.116745, 37.108978, 22.774523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005268, 36.645210, 23.308681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379463, 36.775356, 23.363834>,  <37.603981, 36.853443, 23.396927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379463, 36.775356, 23.363834>,  <37.005268, 36.645210, 23.308681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379463, 36.775356, 23.363834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184460, 0.116801, 0.975875,
		0.301408, -0.938348, 0.169282,
		0.935483, 0.325363, 0.137882,
		37.660107, 36.872963, 23.405199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281651, 36.169216, 23.691921>,  <37.005268, 36.645210, 23.308681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281651, 36.169216, 23.691921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526318, 36.479355, 23.754795>,  <37.673119, 36.665436, 23.792519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526318, 36.479355, 23.754795>,  <37.281651, 36.169216, 23.691921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526318, 36.479355, 23.754795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074137, -0.141633, 0.987139,
		0.787634, -0.615453, -0.029150,
		0.611666, 0.775344, 0.157183,
		37.709816, 36.711960, 23.801950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706448, 36.005157, 24.323584>,  <37.281651, 36.169216, 23.691921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706448, 36.005157, 24.323584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724880, 36.402744, 24.283783>,  <37.735939, 36.641296, 24.259903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724880, 36.402744, 24.283783>,  <37.706448, 36.005157, 24.323584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724880, 36.402744, 24.283783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193791, 0.106610, 0.975233,
		0.979960, -0.025654, 0.197535,
		0.046078, 0.993970, -0.099502,
		37.738705, 36.700935, 24.253933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064884, 36.192558, 24.924603>,  <37.706448, 36.005157, 24.323584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064884, 36.192558, 24.924603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917259, 36.540962, 24.794903>,  <37.828686, 36.750004, 24.717083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917259, 36.540962, 24.794903>,  <38.064884, 36.192558, 24.924603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917259, 36.540962, 24.794903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036152, 0.335158, 0.941468,
		0.928703, 0.359179, -0.092204,
		-0.369059, 0.871010, -0.324247,
		37.806541, 36.802265, 24.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578487, 36.661201, 25.240938>,  <38.064884, 36.192558, 24.924603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578487, 36.661201, 25.240938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233189, 36.846066, 25.159733>,  <38.026009, 36.956985, 25.111010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233189, 36.846066, 25.159733>,  <38.578487, 36.661201, 25.240938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233189, 36.846066, 25.159733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102994, 0.232459, 0.967138,
		0.494166, 0.855786, -0.153069,
		-0.863245, 0.462162, -0.203014,
		37.974216, 36.984715, 25.098829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645172, 37.283527, 25.549873>,  <38.578487, 36.661201, 25.240938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645172, 37.283527, 25.549873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252476, 37.236893, 25.489761>,  <38.016857, 37.208912, 25.453693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252476, 37.236893, 25.489761>,  <38.645172, 37.283527, 25.549873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252476, 37.236893, 25.489761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177684, 0.280287, 0.943328,
		-0.067857, 0.952810, -0.295886,
		-0.981745, -0.116585, -0.150280,
		37.957951, 37.201916, 25.444677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348148, 37.956650, 25.615435>,  <38.645172, 37.283527, 25.549873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348148, 37.956650, 25.615435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047077, 37.701607, 25.681086>,  <37.866436, 37.548580, 25.720476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047077, 37.701607, 25.681086>,  <38.348148, 37.956650, 25.615435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047077, 37.701607, 25.681086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168857, 0.427893, 0.887916,
		-0.636367, 0.640601, -0.429730,
		-0.752678, -0.637603, 0.164127,
		37.821274, 37.510326, 25.730324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952847, 38.278614, 26.057152>,  <38.348148, 37.956650, 25.615435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952847, 38.278614, 26.057152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817425, 37.906242, 26.111942>,  <37.736172, 37.682819, 26.144815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817425, 37.906242, 26.111942>,  <37.952847, 38.278614, 26.057152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817425, 37.906242, 26.111942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144806, 0.195383, 0.969978,
		-0.929739, 0.308553, -0.200951,
		-0.338552, -0.930924, 0.136975,
		37.715858, 37.626965, 26.153034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415211, 38.417343, 26.318947>,  <37.952847, 38.278614, 26.057152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415211, 38.417343, 26.318947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534378, 38.050236, 26.423971>,  <37.605877, 37.829971, 26.486986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534378, 38.050236, 26.423971>,  <37.415211, 38.417343, 26.318947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534378, 38.050236, 26.423971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003573, 0.273978, 0.961729,
		-0.954585, -0.287454, 0.078343,
		0.297917, -0.917773, 0.262562,
		37.623753, 37.774902, 26.502739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027245, 38.251816, 26.834068>,  <37.415211, 38.417343, 26.318947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027245, 38.251816, 26.834068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310368, 37.971058, 26.865927>,  <37.480244, 37.802601, 26.885042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310368, 37.971058, 26.865927>,  <37.027245, 38.251816, 26.834068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310368, 37.971058, 26.865927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113767, -0.001992, 0.993505,
		-0.697179, -0.712276, -0.081262,
		0.707812, -0.701897, 0.079645,
		37.522713, 37.760490, 26.889820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726105, 37.800915, 27.275475>,  <37.027245, 38.251816, 26.834068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726105, 37.800915, 27.275475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125145, 37.777279, 27.289867>,  <37.364571, 37.763096, 27.298504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125145, 37.777279, 27.289867>,  <36.726105, 37.800915, 27.275475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125145, 37.777279, 27.289867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039354, -0.056899, 0.997604,
		-0.056899, -0.996630, -0.059088,
		-0.997604, 0.059088, -0.035984,
		37.424427, 37.759552, 27.300663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765640, 37.265247, 27.775589>,  <36.726105, 37.800915, 27.275475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765640, 37.265247, 27.775589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129951, 37.428307, 27.749325>,  <37.348537, 37.526142, 27.733566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129951, 37.428307, 27.749325>,  <36.765640, 37.265247, 27.775589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129951, 37.428307, 27.749325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031032, 0.090989, 0.995368,
		0.411734, -0.908595, 0.070220,
		0.910776, 0.407648, -0.065659,
		37.403183, 37.550602, 27.729628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249783, 36.802063, 28.249094>,  <36.765640, 37.265247, 27.775589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249783, 36.802063, 28.249094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432243, 37.155460, 28.206440>,  <37.541718, 37.367496, 28.180847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432243, 37.155460, 28.206440>,  <37.249783, 36.802063, 28.249094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432243, 37.155460, 28.206440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153946, 0.039681, 0.987282,
		0.876486, -0.466764, -0.117910,
		0.456149, 0.883491, -0.106636,
		37.569088, 37.420509, 28.174450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883678, 36.728546, 28.584728>,  <37.249783, 36.802063, 28.249094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883678, 36.728546, 28.584728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854553, 37.126980, 28.564640>,  <37.837078, 37.366039, 28.552588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854553, 37.126980, 28.564640>,  <37.883678, 36.728546, 28.584728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854553, 37.126980, 28.564640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238113, 0.066259, 0.968975,
		0.968504, 0.058596, -0.242004,
		-0.072813, 0.996080, -0.050219,
		37.832710, 37.425804, 28.549574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494091, 37.045002, 28.884760>,  <37.883678, 36.728546, 28.584728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494091, 37.045002, 28.884760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209126, 37.323681, 28.918415>,  <38.038147, 37.490891, 28.938608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209126, 37.323681, 28.918415>,  <38.494091, 37.045002, 28.884760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209126, 37.323681, 28.918415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287934, 0.180857, 0.940417,
		0.639974, 0.694188, -0.329449,
		-0.712410, 0.696702, 0.084137,
		37.995403, 37.532692, 28.943657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748734, 37.574387, 29.299824>,  <38.494091, 37.045002, 28.884760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748734, 37.574387, 29.299824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356968, 37.653328, 29.316828>,  <38.121910, 37.700695, 29.327030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356968, 37.653328, 29.316828>,  <38.748734, 37.574387, 29.299824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356968, 37.653328, 29.316828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086013, 0.217416, 0.972282,
		0.182643, 0.955919, -0.229914,
		-0.979410, 0.197356, 0.042512,
		38.063145, 37.712536, 29.329582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805317, 37.988796, 29.887352>,  <38.748734, 37.574387, 29.299824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805317, 37.988796, 29.887352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426617, 37.860271, 29.879158>,  <38.199394, 37.783157, 29.874243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426617, 37.860271, 29.879158>,  <38.805317, 37.988796, 29.887352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426617, 37.860271, 29.879158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103674, -0.364474, 0.925424,
		-0.304814, 0.874024, 0.378378,
		-0.946752, -0.321311, -0.020483,
		38.142590, 37.763878, 29.873013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450741, 38.357929, 30.430126>,  <38.805317, 37.988796, 29.887352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450741, 38.357929, 30.430126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219166, 38.039845, 30.358051>,  <38.080223, 37.848991, 30.314806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219166, 38.039845, 30.358051>,  <38.450741, 38.357929, 30.430126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219166, 38.039845, 30.358051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063063, -0.176656, 0.982250,
		-0.812933, 0.580020, 0.052123,
		-0.578933, -0.795216, -0.180187,
		38.045486, 37.801281, 30.303995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878319, 38.386967, 30.932144>,  <38.450741, 38.357929, 30.430126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878319, 38.386967, 30.932144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921055, 38.008343, 30.810411>,  <37.946697, 37.781170, 30.737371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921055, 38.008343, 30.810411>,  <37.878319, 38.386967, 30.932144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921055, 38.008343, 30.810411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018161, -0.307890, 0.951249,
		-0.994110, -0.096109, -0.050086,
		0.106844, -0.946555, -0.304331,
		37.953110, 37.724377, 30.719112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434151, 38.052597, 31.495640>,  <37.878319, 38.386967, 30.932144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434151, 38.052597, 31.495640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660858, 37.780151, 31.310228>,  <37.796883, 37.616684, 31.198982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660858, 37.780151, 31.310228>,  <37.434151, 38.052597, 31.495640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660858, 37.780151, 31.310228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123475, -0.486041, 0.865169,
		-0.814569, -0.547588, -0.191375,
		0.566772, -0.681110, -0.463528,
		37.830891, 37.575817, 31.171169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215504, 37.409313, 31.718241>,  <37.434151, 38.052597, 31.495640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215504, 37.409313, 31.718241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597164, 37.413792, 31.598593>,  <37.826160, 37.416477, 31.526804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597164, 37.413792, 31.598593>,  <37.215504, 37.409313, 31.718241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597164, 37.413792, 31.598593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287369, -0.313889, 0.904927,
		-0.083760, -0.949394, -0.302714,
		0.954150, 0.011194, -0.299118,
		37.883408, 37.417149, 31.508858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372204, 36.764538, 31.980644>,  <37.215504, 37.409313, 31.718241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372204, 36.764538, 31.980644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734154, 36.923473, 31.919563>,  <37.951324, 37.018833, 31.882915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734154, 36.923473, 31.919563>,  <37.372204, 36.764538, 31.980644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734154, 36.923473, 31.919563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239573, -0.178856, 0.954262,
		0.351852, -0.900074, -0.257034,
		0.904878, 0.397338, -0.152703,
		38.005619, 37.042675, 31.873753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857716, 36.327824, 32.217148>,  <37.372204, 36.764538, 31.980644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857716, 36.327824, 32.217148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006687, 36.698704, 32.233185>,  <38.096069, 36.921230, 32.242809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006687, 36.698704, 32.233185>,  <37.857716, 36.327824, 32.217148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006687, 36.698704, 32.233185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319259, -0.168564, 0.932555,
		0.871421, -0.334505, -0.358793,
		0.372424, 0.927196, 0.040096,
		38.118416, 36.976864, 32.245213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170158, 36.320786, 32.867073>,  <37.857716, 36.327824, 32.217148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170158, 36.320786, 32.867073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196136, 36.711056, 32.783314>,  <38.211723, 36.945217, 32.733059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196136, 36.711056, 32.783314>,  <38.170158, 36.320786, 32.867073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196136, 36.711056, 32.783314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230448, 0.189500, 0.954455,
		0.970915, -0.110244, -0.212534,
		0.064948, 0.975672, -0.209394,
		38.215622, 37.003757, 32.720497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742229, 36.589783, 33.148727>,  <38.170158, 36.320786, 32.867073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742229, 36.589783, 33.148727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506714, 36.910332, 33.106525>,  <38.365402, 37.102661, 33.081203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506714, 36.910332, 33.106525>,  <38.742229, 36.589783, 33.148727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506714, 36.910332, 33.106525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195131, 0.267594, 0.943566,
		0.784377, 0.534978, -0.313930,
		-0.588793, 0.801369, -0.105504,
		38.330074, 37.150742, 33.074875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221798, 37.161644, 33.422325>,  <38.742229, 36.589783, 33.148727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221798, 37.161644, 33.422325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840508, 37.282211, 33.413303>,  <38.611732, 37.354553, 33.407890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840508, 37.282211, 33.413303>,  <39.221798, 37.161644, 33.422325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840508, 37.282211, 33.413303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121005, 0.448931, 0.885336,
		0.276981, 0.841195, -0.464405,
		-0.953226, 0.301417, -0.022556,
		38.554539, 37.372635, 33.406536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153770, 37.923851, 33.509949>,  <39.221798, 37.161644, 33.422325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153770, 37.923851, 33.509949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813900, 37.752121, 33.632416>,  <38.609978, 37.649082, 33.705898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813900, 37.752121, 33.632416>,  <39.153770, 37.923851, 33.509949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813900, 37.752121, 33.632416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082406, 0.465386, 0.881263,
		-0.520834, 0.774015, -0.360047,
		-0.849671, -0.429322, 0.306172,
		38.558998, 37.623325, 33.724266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922920, 38.426575, 33.885696>,  <39.153770, 37.923851, 33.509949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922920, 38.426575, 33.885696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699604, 38.121689, 34.016750>,  <38.565617, 37.938759, 34.095383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699604, 38.121689, 34.016750>,  <38.922920, 38.426575, 33.885696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699604, 38.121689, 34.016750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192119, 0.265406, 0.944802,
		-0.807096, 0.590418, -0.001738,
		-0.558289, -0.762212, 0.327638,
		38.532116, 37.893024, 34.115044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689476, 38.688835, 34.505573>,  <38.922920, 38.426575, 33.885696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689476, 38.688835, 34.505573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587196, 38.305416, 34.555859>,  <38.525829, 38.075363, 34.586029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587196, 38.305416, 34.555859>,  <38.689476, 38.688835, 34.505573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587196, 38.305416, 34.555859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053028, 0.115933, 0.991840,
		-0.965301, 0.260280, 0.021186,
		-0.255700, -0.958548, 0.125713,
		38.510487, 38.017853, 34.593571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166111, 38.622173, 34.946987>,  <38.689476, 38.688835, 34.505573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166111, 38.622173, 34.946987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342968, 38.263973, 34.967369>,  <38.449081, 38.049053, 34.979599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342968, 38.263973, 34.967369>,  <38.166111, 38.622173, 34.946987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342968, 38.263973, 34.967369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222911, -0.054673, 0.973304,
		-0.868804, -0.441699, -0.223789,
		0.442143, -0.895496, 0.050959,
		38.475613, 37.995323, 34.982658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745461, 38.317467, 35.413132>,  <38.166111, 38.622173, 34.946987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745461, 38.317467, 35.413132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072407, 38.087059, 35.408833>,  <38.268574, 37.948814, 35.406254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072407, 38.087059, 35.408833>,  <37.745461, 38.317467, 35.413132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072407, 38.087059, 35.408833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019373, -0.046127, 0.998748,
		-0.575796, -0.816132, -0.048862,
		0.817364, -0.576022, -0.010749,
		38.317616, 37.914253, 35.405609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597248, 37.703957, 35.839172>,  <37.745461, 38.317467, 35.413132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597248, 37.703957, 35.839172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996483, 37.723480, 35.824005>,  <38.236023, 37.735195, 35.814907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996483, 37.723480, 35.824005>,  <37.597248, 37.703957, 35.839172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996483, 37.723480, 35.824005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040411, -0.051188, 0.997871,
		0.046766, -0.997495, -0.053062,
		0.998088, 0.048811, -0.037916,
		38.295910, 37.738121, 35.812630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733883, 37.246117, 36.315968>,  <37.597248, 37.703957, 35.839172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733883, 37.246117, 36.315968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082863, 37.439812, 36.289604>,  <38.292252, 37.556026, 36.273788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082863, 37.439812, 36.289604>,  <37.733883, 37.246117, 36.315968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082863, 37.439812, 36.289604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130021, -0.100003, 0.986455,
		0.471086, -0.869204, -0.150209,
		0.872452, 0.484235, -0.065905,
		38.344597, 37.585083, 36.269833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117271, 36.786827, 36.785637>,  <37.733883, 37.246117, 36.315968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117271, 36.786827, 36.785637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328445, 37.118881, 36.713902>,  <38.455151, 37.318115, 36.670860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328445, 37.118881, 36.713902>,  <38.117271, 36.786827, 36.785637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328445, 37.118881, 36.713902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298831, 0.016086, 0.954171,
		0.794977, -0.557328, -0.239578,
		0.527933, 0.830136, -0.179335,
		38.486824, 37.367924, 36.660103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865612, 36.768322, 37.024429>,  <38.117271, 36.786827, 36.785637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865612, 36.768322, 37.024429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755573, 37.152817, 37.031910>,  <38.689552, 37.383514, 37.036400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755573, 37.152817, 37.031910>,  <38.865612, 36.768322, 37.024429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755573, 37.152817, 37.031910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207943, 0.040495, 0.977302,
		0.938660, 0.272739, -0.211022,
		-0.275093, 0.961236, 0.018703,
		38.673046, 37.441189, 37.037521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350948, 37.021423, 37.415844>,  <38.865612, 36.768322, 37.024429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350948, 37.021423, 37.415844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094254, 37.328144, 37.421371>,  <38.940235, 37.512177, 37.424686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094254, 37.328144, 37.421371>,  <39.350948, 37.021423, 37.415844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094254, 37.328144, 37.421371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349892, 0.276702, 0.894993,
		0.682455, 0.579187, -0.445867,
		-0.641740, 0.766798, 0.013816,
		38.901733, 37.558182, 37.425518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677380, 37.643402, 37.525692>,  <39.350948, 37.021423, 37.415844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677380, 37.643402, 37.525692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307068, 37.748188, 37.634727>,  <39.084881, 37.811062, 37.700150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307068, 37.748188, 37.634727>,  <39.677380, 37.643402, 37.525692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307068, 37.748188, 37.634727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355868, 0.360447, 0.862227,
		0.127623, 0.895238, -0.426921,
		-0.925781, 0.261968, 0.272585,
		39.029335, 37.826778, 37.716503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686581, 38.296757, 37.817822>,  <39.677380, 37.643402, 37.525692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686581, 38.296757, 37.817822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352795, 38.130096, 37.962078>,  <39.152523, 38.030102, 38.048634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352795, 38.130096, 37.962078>,  <39.686581, 38.296757, 37.817822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352795, 38.130096, 37.962078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228947, 0.333162, 0.914651,
		-0.501243, 0.845816, -0.182622,
		-0.834469, -0.416651, 0.360642,
		39.102455, 38.005100, 38.070271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389862, 38.688610, 38.349625>,  <39.686581, 38.296757, 37.817822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389862, 38.688610, 38.349625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216492, 38.338280, 38.434547>,  <39.112469, 38.128082, 38.485500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216492, 38.338280, 38.434547>,  <39.389862, 38.688610, 38.349625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216492, 38.338280, 38.434547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027863, 0.222449, 0.974546,
		-0.900758, 0.428310, -0.072012,
		-0.433427, -0.875824, 0.212306,
		39.086464, 38.075531, 38.498238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960239, 38.910694, 38.931061>,  <39.389862, 38.688610, 38.349625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960239, 38.910694, 38.931061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974819, 38.513561, 38.976593>,  <38.983566, 38.275280, 39.003914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974819, 38.513561, 38.976593>,  <38.960239, 38.910694, 38.931061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974819, 38.513561, 38.976593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260616, 0.119412, 0.958029,
		-0.964754, -0.005253, 0.263100,
		0.036450, -0.992831, 0.113834,
		38.985756, 38.215714, 39.010742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548405, 38.666553, 39.509457>,  <38.960239, 38.910694, 38.931061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548405, 38.666553, 39.509457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818935, 38.373924, 39.475067>,  <38.981255, 38.198349, 39.454433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818935, 38.373924, 39.475067>,  <38.548405, 38.666553, 39.509457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818935, 38.373924, 39.475067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226729, 0.095696, 0.969245,
		-0.700843, -0.675016, 0.230590,
		0.676323, -0.731570, -0.085977,
		39.021832, 38.154453, 39.449272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435242, 38.209110, 40.109783>,  <38.548405, 38.666553, 39.509457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435242, 38.209110, 40.109783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804779, 38.159519, 39.964928>,  <39.026501, 38.129765, 39.878014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804779, 38.159519, 39.964928>,  <38.435242, 38.209110, 40.109783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804779, 38.159519, 39.964928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368910, 0.036037, 0.928766,
		-0.102095, -0.991631, 0.079029,
		0.923841, -0.123977, -0.362143,
		39.081932, 38.122326, 39.856285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727901, 37.571579, 40.369808>,  <38.435242, 38.209110, 40.109783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727901, 37.571579, 40.369808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024693, 37.830677, 40.300644>,  <39.202766, 37.986134, 40.259148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024693, 37.830677, 40.300644>,  <38.727901, 37.571579, 40.369808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024693, 37.830677, 40.300644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192196, 0.041567, 0.980476,
		0.642282, -0.760726, -0.093651,
		0.741980, 0.647741, -0.172907,
		39.247288, 38.024998, 40.248772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415131, 37.374138, 40.752602>,  <38.727901, 37.571579, 40.369808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415131, 37.374138, 40.752602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399883, 37.769089, 40.691097>,  <39.390736, 38.006058, 40.654194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399883, 37.769089, 40.691097>,  <39.415131, 37.374138, 40.752602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399883, 37.769089, 40.691097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226421, 0.158405, 0.961062,
		0.973283, 0.001824, -0.229601,
		-0.038123, 0.987372, -0.153760,
		39.388447, 38.065300, 40.644970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976402, 37.690453, 40.882446>,  <39.415131, 37.374138, 40.752602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976402, 37.690453, 40.882446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704529, 37.979744, 40.931374>,  <39.541405, 38.153320, 40.960728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704529, 37.979744, 40.931374>,  <39.976402, 37.690453, 40.882446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704529, 37.979744, 40.931374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255744, 0.077371, 0.963643,
		0.687473, 0.686258, -0.237550,
		-0.679688, 0.723231, 0.122315,
		39.500622, 38.196712, 40.968067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362473, 38.220795, 41.215912>,  <39.976402, 37.690453, 40.882446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362473, 38.220795, 41.215912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974415, 38.297295, 41.275558>,  <39.741581, 38.343193, 41.311348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974415, 38.297295, 41.275558>,  <40.362473, 38.220795, 41.215912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974415, 38.297295, 41.275558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211688, 0.367827, 0.905479,
		0.118319, 0.910016, -0.397331,
		-0.970149, 0.191245, 0.149118,
		39.683369, 38.354668, 41.320293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292137, 38.892822, 41.517231>,  <40.362473, 38.220795, 41.215912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292137, 38.892822, 41.517231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947758, 38.709763, 41.606071>,  <39.741131, 38.599926, 41.659378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947758, 38.709763, 41.606071>,  <40.292137, 38.892822, 41.517231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947758, 38.709763, 41.606071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166108, 0.159764, 0.973079,
		-0.480815, 0.874661, -0.061529,
		-0.860944, -0.457651, 0.222105,
		39.689476, 38.572468, 41.672703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755505, 39.323765, 41.914227>,  <40.292137, 38.892822, 41.517231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755505, 39.323765, 41.914227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752079, 38.937725, 42.018921>,  <39.750023, 38.706100, 42.081738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752079, 38.937725, 42.018921>,  <39.755505, 39.323765, 41.914227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752079, 38.937725, 42.018921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116486, 0.259004, 0.958826,
		-0.993155, 0.038700, 0.110202,
		-0.008563, -0.965101, 0.261739,
		39.749512, 38.648193, 42.097443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330402, 39.307587, 42.514694>,  <39.755505, 39.323765, 41.914227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330402, 39.307587, 42.514694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633770, 39.047253, 42.500759>,  <39.815792, 38.891052, 42.492397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633770, 39.047253, 42.500759>,  <39.330402, 39.307587, 42.514694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633770, 39.047253, 42.500759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285630, 0.283853, 0.915337,
		-0.585845, -0.704160, 0.401178,
		0.758420, -0.650835, -0.034836,
		39.861298, 38.852001, 42.490307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404587, 38.688274, 43.105316>,  <39.330402, 39.307587, 42.514694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404587, 38.688274, 43.105316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765373, 38.769096, 42.952667>,  <39.981846, 38.817589, 42.861076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765373, 38.769096, 42.952667>,  <39.404587, 38.688274, 43.105316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765373, 38.769096, 42.952667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322842, 0.271361, 0.906717,
		0.286779, -0.941026, 0.179520,
		0.901960, 0.202071, -0.381623,
		40.035961, 38.829716, 42.838181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081440, 38.717709, 43.341091>,  <39.404587, 38.688274, 43.105316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081440, 38.717709, 43.341091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817390, 38.420650, 43.295990>,  <39.658958, 38.242416, 43.268929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817390, 38.420650, 43.295990>,  <40.081440, 38.717709, 43.341091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817390, 38.420650, 43.295990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026575, 0.173107, -0.984544,
		0.750684, -0.646928, -0.134009,
		-0.660127, -0.742643, -0.112757,
		39.619350, 38.197857, 43.262161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279545, 38.160721, 42.890305>,  <40.081440, 38.717709, 43.341091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279545, 38.160721, 42.890305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879631, 38.163799, 42.882629>,  <39.639683, 38.165646, 42.878025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879631, 38.163799, 42.882629>,  <40.279545, 38.160721, 42.890305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879631, 38.163799, 42.882629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020349, 0.202189, -0.979135,
		-0.003657, -0.979316, -0.202302,
		-0.999786, 0.007697, -0.019189,
		39.579697, 38.166107, 42.876873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846813, 37.766659, 42.411316>,  <40.279545, 38.160721, 42.890305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846813, 37.766659, 42.411316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572437, 38.046417, 42.491642>,  <39.407810, 38.214272, 42.539837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572437, 38.046417, 42.491642>,  <39.846813, 37.766659, 42.411316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572437, 38.046417, 42.491642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157975, 0.126262, -0.979337,
		-0.710303, -0.703491, 0.023879,
		-0.685940, 0.699398, 0.200818,
		39.366653, 38.256237, 42.551888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152664, 37.603249, 42.300396>,  <39.846813, 37.766659, 42.411316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152664, 37.603249, 42.300396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230980, 37.990803, 42.239826>,  <39.277969, 38.223335, 42.203484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230980, 37.990803, 42.239826>,  <39.152664, 37.603249, 42.300396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230980, 37.990803, 42.239826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286536, -0.091157, -0.953723,
		-0.937851, 0.230119, 0.259772,
		0.195790, 0.968884, -0.151429,
		39.289719, 38.281467, 42.194397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579269, 37.978817, 42.063999>,  <39.152664, 37.603249, 42.300396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579269, 37.978817, 42.063999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910358, 38.166519, 41.940926>,  <39.109013, 38.279140, 41.867081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910358, 38.166519, 41.940926>,  <38.579269, 37.978817, 42.063999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910358, 38.166519, 41.940926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278940, -0.131680, -0.951237,
		-0.486891, 0.873188, 0.021899,
		0.827726, 0.469257, -0.307681,
		39.158676, 38.307297, 41.848621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381222, 38.476654, 41.536270>,  <38.579269, 37.978817, 42.063999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381222, 38.476654, 41.536270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773804, 38.448250, 41.465042>,  <39.009354, 38.431206, 41.422306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773804, 38.448250, 41.465042>,  <38.381222, 38.476654, 41.536270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773804, 38.448250, 41.465042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188250, -0.181380, -0.965227,
		0.036247, 0.980846, -0.191385,
		0.981452, -0.071015, -0.178070,
		39.068241, 38.426945, 41.411621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523563, 39.067486, 41.010624>,  <38.381222, 38.476654, 41.536270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523563, 39.067486, 41.010624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810024, 38.788647, 40.996891>,  <38.981899, 38.621342, 40.988651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810024, 38.788647, 40.996891>,  <38.523563, 39.067486, 41.010624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810024, 38.788647, 40.996891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032964, 0.015350, -0.999339,
		0.697168, 0.716808, -0.011987,
		0.716150, -0.697102, -0.034331,
		39.024868, 38.579517, 40.986591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059441, 39.198071, 40.411011>,  <38.523563, 39.067486, 41.010624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059441, 39.198071, 40.411011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071873, 38.809322, 40.504391>,  <39.079330, 38.576073, 40.560421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071873, 38.809322, 40.504391>,  <39.059441, 39.198071, 40.411011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071873, 38.809322, 40.504391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006708, -0.233764, -0.972270,
		0.999494, 0.028650, -0.013784,
		0.031077, -0.971871, 0.233454,
		39.081196, 38.517761, 40.574429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627003, 38.797997, 40.099922>,  <39.059441, 39.198071, 40.411011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627003, 38.797997, 40.099922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695980, 38.426064, 40.229958>,  <39.737366, 38.202904, 40.307980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695980, 38.426064, 40.229958>,  <39.627003, 38.797997, 40.099922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695980, 38.426064, 40.229958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287901, -0.363198, -0.886115,
		0.942006, 0.059213, -0.330330,
		0.172445, -0.929829, 0.325087,
		39.747715, 38.147114, 40.327484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079079, 38.410786, 39.653587>,  <39.627003, 38.797997, 40.099922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079079, 38.410786, 39.653587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850391, 38.148487, 39.850822>,  <39.713181, 37.991108, 39.969166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850391, 38.148487, 39.850822>,  <40.079079, 38.410786, 39.653587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850391, 38.148487, 39.850822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372490, -0.328035, -0.868127,
		0.731022, -0.679992, -0.056717,
		-0.571715, -0.655747, 0.493091,
		39.678879, 37.951763, 39.998749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115948, 37.609249, 39.437382>,  <40.079079, 38.410786, 39.653587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115948, 37.609249, 39.437382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762512, 37.724102, 39.585339>,  <39.550449, 37.793015, 39.674114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762512, 37.724102, 39.585339>,  <40.115948, 37.609249, 39.437382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762512, 37.724102, 39.585339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455735, -0.345871, -0.820170,
		-0.107560, -0.893269, 0.436464,
		-0.883592, 0.287130, 0.369892,
		39.497433, 37.810242, 39.696308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651546, 36.953636, 39.419285>,  <40.115948, 37.609249, 39.437382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651546, 36.953636, 39.419285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436008, 37.289986, 39.439583>,  <39.306686, 37.491795, 39.451759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436008, 37.289986, 39.439583>,  <39.651546, 36.953636, 39.419285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436008, 37.289986, 39.439583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444947, -0.232949, -0.864729,
		-0.715310, -0.488531, 0.499668,
		-0.538844, 0.840876, 0.050740,
		39.274357, 37.542248, 39.454803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944740, 36.872334, 39.216812>,  <39.651546, 36.953636, 39.419285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944740, 36.872334, 39.216812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955307, 37.262894, 39.131069>,  <38.961647, 37.497231, 39.079624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955307, 37.262894, 39.131069>,  <38.944740, 36.872334, 39.216812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955307, 37.262894, 39.131069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436987, -0.181577, -0.880949,
		-0.899080, 0.116942, 0.421877,
		0.026417, 0.976399, -0.214355,
		38.963230, 37.555813, 39.066761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403278, 37.011730, 38.810921>,  <38.944740, 36.872334, 39.216812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403278, 37.011730, 38.810921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614655, 37.338440, 38.718288>,  <38.741482, 37.534466, 38.662708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614655, 37.338440, 38.718288>,  <38.403278, 37.011730, 38.810921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614655, 37.338440, 38.718288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418853, 0.013565, -0.907952,
		-0.738450, 0.576799, 0.349277,
		0.528444, 0.816773, -0.231577,
		38.773190, 37.583473, 38.648815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959663, 37.373505, 38.381287>,  <38.403278, 37.011730, 38.810921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959663, 37.373505, 38.381287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307262, 37.558052, 38.309753>,  <38.515820, 37.668781, 38.266834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307262, 37.558052, 38.309753>,  <37.959663, 37.373505, 38.381287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307262, 37.558052, 38.309753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213728, 0.024015, -0.976598,
		-0.446281, 0.886881, 0.119477,
		0.868996, 0.461373, -0.178834,
		38.567963, 37.696465, 38.256104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761078, 37.860317, 37.981377>,  <37.959663, 37.373505, 38.381287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761078, 37.860317, 37.981377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155426, 37.843601, 37.916485>,  <38.392033, 37.833572, 37.877548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155426, 37.843601, 37.916485>,  <37.761078, 37.860317, 37.981377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155426, 37.843601, 37.916485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151352, 0.192934, -0.969469,
		0.071812, 0.980322, 0.183882,
		0.985868, -0.041789, -0.162228,
		38.451187, 37.831066, 37.867817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826309, 38.291023, 37.464062>,  <37.761078, 37.860317, 37.981377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826309, 38.291023, 37.464062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173218, 38.092033, 37.471588>,  <38.381363, 37.972641, 37.476105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173218, 38.092033, 37.471588>,  <37.826309, 38.291023, 37.464062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173218, 38.092033, 37.471588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023497, 0.003147, -0.999719,
		0.497274, 0.867474, 0.014418,
		0.867276, -0.497473, 0.018818,
		38.433399, 37.942791, 37.477234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307896, 38.678123, 37.013420>,  <37.826309, 38.291023, 37.464062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307896, 38.678123, 37.013420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406170, 38.290661, 37.028030>,  <38.465134, 38.058182, 37.036797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406170, 38.290661, 37.028030>,  <38.307896, 38.678123, 37.013420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406170, 38.290661, 37.028030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241529, -0.097667, -0.965466,
		0.938776, 0.228382, -0.257955,
		0.245689, -0.968660, 0.036527,
		38.479877, 38.000061, 37.038990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753941, 38.622799, 36.454498>,  <38.307896, 38.678123, 37.013420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753941, 38.622799, 36.454498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655396, 38.249336, 36.558491>,  <38.596268, 38.025261, 36.620888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655396, 38.249336, 36.558491>,  <38.753941, 38.622799, 36.454498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655396, 38.249336, 36.558491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000756, -0.268068, -0.963400,
		0.969176, -0.237546, 0.065337,
		-0.246367, -0.933655, 0.259984,
		38.581486, 37.969238, 36.636486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381535, 38.314079, 36.194077>,  <38.753941, 38.622799, 36.454498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381535, 38.314079, 36.194077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055984, 38.083443, 36.222794>,  <38.860657, 37.945061, 36.240025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055984, 38.083443, 36.222794>,  <39.381535, 38.314079, 36.194077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055984, 38.083443, 36.222794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101929, -0.263315, -0.959310,
		0.572034, -0.773438, 0.273076,
		-0.813872, -0.576592, 0.071789,
		38.811821, 37.910465, 36.244331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573669, 37.775330, 35.799782>,  <39.381535, 38.314079, 36.194077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573669, 37.775330, 35.799782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174343, 37.797901, 35.805069>,  <38.934746, 37.811443, 35.808243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174343, 37.797901, 35.805069>,  <39.573669, 37.775330, 35.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174343, 37.797901, 35.805069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032979, -0.365517, -0.930220,
		-0.047657, -0.929093, 0.366763,
		-0.998320, 0.056427, 0.013221,
		38.874847, 37.814831, 35.809036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374168, 37.164238, 35.592751>,  <39.573669, 37.775330, 35.799782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374168, 37.164238, 35.592751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063450, 37.406971, 35.525402>,  <38.877018, 37.552612, 35.484993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063450, 37.406971, 35.525402>,  <39.374168, 37.164238, 35.592751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063450, 37.406971, 35.525402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081859, -0.362386, -0.928427,
		-0.624413, -0.707413, 0.331173,
		-0.776793, 0.606831, -0.168370,
		38.830410, 37.589020, 35.474892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032715, 36.811928, 35.007324>,  <39.374168, 37.164238, 35.592751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032715, 36.811928, 35.007324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879791, 37.181149, 34.990284>,  <38.788036, 37.402679, 34.980061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879791, 37.181149, 34.990284>,  <39.032715, 36.811928, 35.007324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879791, 37.181149, 34.990284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226543, -0.138327, -0.964128,
		-0.895834, -0.358943, 0.261995,
		-0.382308, 0.923052, -0.042602,
		38.765099, 37.458065, 34.977505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474895, 36.699459, 34.595459>,  <39.032715, 36.811928, 35.007324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474895, 36.699459, 34.595459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510754, 37.097691, 34.584270>,  <38.532269, 37.336632, 34.577557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510754, 37.097691, 34.584270>,  <38.474895, 36.699459, 34.595459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510754, 37.097691, 34.584270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366603, 0.006867, -0.930352,
		-0.926049, 0.093653, 0.365598,
		0.089641, 0.995581, -0.027974,
		38.537647, 37.396366, 34.575878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702442, 35.922421, 34.622925>,  <38.474895, 36.699459, 34.595459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702442, 35.922421, 34.622925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531326, 36.137676, 34.332436>,  <38.428658, 36.266830, 34.158142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531326, 36.137676, 34.332436>,  <38.702442, 35.922421, 34.622925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531326, 36.137676, 34.332436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294149, -0.842601, -0.451110,
		-0.854676, 0.020637, 0.518751,
		-0.427790, 0.538143, -0.726221,
		38.402988, 36.299118, 34.114571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303547, 35.513180, 35.025967>,  <38.702442, 35.922421, 34.622925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303547, 35.513180, 35.025967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555176, 35.204353, 35.062145>,  <39.706154, 35.019058, 35.083851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555176, 35.204353, 35.062145>,  <39.303547, 35.513180, 35.025967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555176, 35.204353, 35.062145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776065, 0.617096, -0.130060,
		0.044602, 0.152009, 0.987372,
		0.629074, -0.772065, 0.090445,
		39.743896, 34.972733, 35.089279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829571, 35.829033, 35.360928>,  <39.303547, 35.513180, 35.025967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829571, 35.829033, 35.360928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959145, 35.523468, 35.137676>,  <40.036888, 35.340130, 35.003727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959145, 35.523468, 35.137676>,  <39.829571, 35.829033, 35.360928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959145, 35.523468, 35.137676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808722, 0.529723, -0.255660,
		0.490954, -0.368550, 0.789389,
		0.323934, -0.763914, -0.558124,
		40.056324, 35.294292, 34.970238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526272, 35.731133, 35.440998>,  <39.829571, 35.829033, 35.360928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526272, 35.731133, 35.440998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458755, 35.580791, 35.076527>,  <40.418247, 35.490585, 34.857845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458755, 35.580791, 35.076527>,  <40.526272, 35.731133, 35.440998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458755, 35.580791, 35.076527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772121, 0.524185, -0.359249,
		0.612650, -0.764177, 0.201727,
		-0.168787, -0.375851, -0.911179,
		40.408119, 35.468037, 34.803173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104797, 35.367722, 35.158455>,  <40.526272, 35.731133, 35.440998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104797, 35.367722, 35.158455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899303, 35.502964, 34.843048>,  <40.776009, 35.584110, 34.653805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899303, 35.502964, 34.843048>,  <41.104797, 35.367722, 35.158455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899303, 35.502964, 34.843048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788199, 0.548988, -0.278128,
		0.338850, -0.764393, -0.548529,
		-0.513735, 0.338106, -0.788518,
		40.745182, 35.604397, 34.606491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312496, 34.666630, 35.542675>,  <41.104797, 35.367722, 35.158455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312496, 34.666630, 35.542675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215862, 34.557571, 35.915192>,  <41.157883, 34.492138, 36.138702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215862, 34.557571, 35.915192>,  <41.312496, 34.666630, 35.542675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215862, 34.557571, 35.915192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713622, -0.700249, -0.019886,
		0.657558, 0.659786, 0.363729,
		-0.241581, -0.272642, 0.931292,
		41.143387, 34.475780, 36.194580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827744, 34.594875, 35.982204>,  <41.312496, 34.666630, 35.542675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827744, 34.594875, 35.982204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553089, 34.322495, 36.084057>,  <41.388298, 34.159065, 36.145168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553089, 34.322495, 36.084057>,  <41.827744, 34.594875, 35.982204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553089, 34.322495, 36.084057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709927, -0.703500, 0.033036,
		0.156638, 0.203455, 0.966473,
		-0.686635, -0.680951, 0.254633,
		41.347099, 34.118210, 36.160446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534904, 34.735474, 35.931969>,  <41.827744, 34.594875, 35.982204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534904, 34.735474, 35.931969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556969, 34.945244, 35.592102>,  <42.570206, 35.071106, 35.388184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556969, 34.945244, 35.592102>,  <42.534904, 34.735474, 35.931969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556969, 34.945244, 35.592102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989278, -0.143952, -0.024625,
		-0.135225, -0.839199, -0.526744,
		0.055160, 0.524427, -0.849667,
		42.573517, 35.102573, 35.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777515, 34.340210, 35.426060>,  <42.534904, 34.735474, 35.931969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777515, 34.340210, 35.426060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881561, 34.726284, 35.415104>,  <42.943989, 34.957928, 35.408531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881561, 34.726284, 35.415104>,  <42.777515, 34.340210, 35.426060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881561, 34.726284, 35.415104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962547, -0.256947, 0.086497,
		0.076450, -0.048859, -0.995876,
		0.260114, 0.965190, -0.027385,
		42.959595, 35.015842, 35.406887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173847, 34.358967, 34.810734>,  <42.777515, 34.340210, 35.426060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173847, 34.358967, 34.810734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266788, 34.602188, 35.114388>,  <43.322552, 34.748119, 35.296581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266788, 34.602188, 35.114388>,  <43.173847, 34.358967, 34.810734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266788, 34.602188, 35.114388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879585, -0.464496, 0.102831,
		0.415141, 0.643830, -0.642760,
		0.232354, 0.608051, 0.759135,
		43.336494, 34.784603, 35.342129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837753, 34.571632, 34.793846>,  <43.173847, 34.358967, 34.810734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837753, 34.571632, 34.793846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757690, 34.626160, 35.181938>,  <43.709652, 34.658878, 35.414795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757690, 34.626160, 35.181938>,  <43.837753, 34.571632, 34.793846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757690, 34.626160, 35.181938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882558, -0.404951, 0.238967,
		0.425473, 0.904119, -0.039257,
		-0.200158, 0.136321, 0.970234,
		43.697643, 34.667057, 35.473007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260368, 35.075211, 35.183651>,  <43.837753, 34.571632, 34.793846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260368, 35.075211, 35.183651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138439, 34.779610, 35.423969>,  <44.065281, 34.602249, 35.568161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138439, 34.779610, 35.423969>,  <44.260368, 35.075211, 35.183651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138439, 34.779610, 35.423969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948573, -0.292136, 0.121929,
		0.085407, 0.607063, 0.790051,
		-0.304821, -0.739007, 0.600794,
		44.046993, 34.557907, 35.604206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759205, 35.665901, 35.248569>,  <44.260368, 35.075211, 35.183651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759205, 35.665901, 35.248569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729183, 35.607105, 34.854053>,  <43.711170, 35.571827, 34.617344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729183, 35.607105, 34.854053>,  <43.759205, 35.665901, 35.248569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729183, 35.607105, 34.854053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481243, -0.871610, 0.093282,
		-0.873368, -0.467641, 0.136159,
		-0.075055, -0.146994, -0.986286,
		43.706665, 35.563007, 34.558167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390507, 35.640026, 35.672699>,  <43.759205, 35.665901, 35.248569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390507, 35.640026, 35.672699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484959, 35.639225, 35.284012>,  <44.541630, 35.638744, 35.050800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484959, 35.639225, 35.284012>,  <44.390507, 35.640026, 35.672699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484959, 35.639225, 35.284012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690038, 0.704427, 0.166225,
		0.684173, -0.709774, 0.167715,
		0.236125, -0.002003, -0.971721,
		44.555798, 35.638622, 34.992496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166714, 35.678699, 35.657913>,  <44.390507, 35.640026, 35.672699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166714, 35.678699, 35.657913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053165, 35.799305, 35.293823>,  <44.985035, 35.871666, 35.075371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053165, 35.799305, 35.293823>,  <45.166714, 35.678699, 35.657913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053165, 35.799305, 35.293823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760414, 0.649061, -0.022150,
		0.584113, -0.698435, -0.413523,
		-0.283872, 0.301511, -0.910224,
		44.968002, 35.889759, 35.020756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702183, 36.056465, 35.996239>,  <45.166714, 35.678699, 35.657913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702183, 36.056465, 35.996239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929996, 35.922855, 36.296654>,  <46.066685, 35.842690, 36.476902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929996, 35.922855, 36.296654>,  <45.702183, 36.056465, 35.996239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929996, 35.922855, 36.296654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726963, -0.221731, -0.649893,
		0.383607, 0.916114, 0.116538,
		0.569536, -0.334022, 0.751038,
		46.100857, 35.822647, 36.521965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882992, 36.629688, 35.777966>,  <45.702183, 36.056465, 35.996239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882992, 36.629688, 35.777966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860374, 36.383362, 35.463623>,  <45.846806, 36.235565, 35.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860374, 36.383362, 35.463623>,  <45.882992, 36.629688, 35.777966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860374, 36.383362, 35.463623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753909, 0.489691, -0.437977,
		0.654541, -0.617228, 0.436583,
		-0.056541, -0.615818, -0.785857,
		45.843410, 36.198616, 35.227867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547596, 36.363285, 35.634480>,  <45.882992, 36.629688, 35.777966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547596, 36.363285, 35.634480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.342621, 36.348610, 35.291302>,  <46.219635, 36.339806, 35.085396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.342621, 36.348610, 35.291302>,  <46.547596, 36.363285, 35.634480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.342621, 36.348610, 35.291302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778421, 0.402011, -0.482129,
		0.362591, -0.914899, -0.177444,
		-0.512434, -0.036689, -0.857942,
		46.188889, 36.337605, 35.033920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817547, 35.829914, 35.047638>,  <46.547596, 36.363285, 35.634480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.817547, 35.829914, 35.047638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.653667, 36.178413, 34.939514>,  <46.555340, 36.387512, 34.874641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.653667, 36.178413, 34.939514>,  <46.817547, 35.829914, 35.047638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.653667, 36.178413, 34.939514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816026, 0.217590, -0.535497,
		-0.407737, -0.439970, -0.800111,
		-0.409699, 0.871253, -0.270308,
		46.530758, 36.439789, 34.858421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.395424, 35.432877, 34.621483>,  <46.817547, 35.829914, 35.047638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.395424, 35.432877, 34.621483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378765, 35.161880, 34.915222>,  <47.368771, 34.999283, 35.091465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378765, 35.161880, 34.915222>,  <47.395424, 35.432877, 34.621483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378765, 35.161880, 34.915222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443758, -0.671060, -0.593934,
		0.895178, 0.301140, 0.328589,
		-0.041645, -0.677490, 0.734352,
		47.366272, 34.958633, 35.135529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.057678, 35.203617, 34.896156>,  <47.395424, 35.432877, 34.621483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.057678, 35.203617, 34.896156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766418, 34.930241, 34.917004>,  <47.591663, 34.766216, 34.929512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766418, 34.930241, 34.917004>,  <48.057678, 35.203617, 34.896156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766418, 34.930241, 34.917004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551743, -0.629551, -0.547033,
		0.406675, -0.369563, 0.835487,
		-0.728145, -0.683439, 0.052118,
		47.547974, 34.725208, 34.932640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.936855, 33.972187, 25.997280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.710888, 34.301624, 25.977068>,  <32.575306, 34.499287, 25.964941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.710888, 34.301624, 25.977068>,  <32.936855, 33.972187, 25.997280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710888, 34.301624, 25.977068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057153, 0.022034, 0.998122,
		0.823162, 0.566750, 0.034624,
		-0.564923, 0.823595, -0.050529,
		32.541412, 34.548702, 25.961910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212402, 34.392357, 26.431602>,  <32.936855, 33.972187, 25.997280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212402, 34.392357, 26.431602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.844109, 34.546581, 26.407629>,  <32.623131, 34.639114, 26.393246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.844109, 34.546581, 26.407629>,  <33.212402, 34.392357, 26.431602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844109, 34.546581, 26.407629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034649, 0.072204, 0.996788,
		0.388648, 0.919854, -0.053122,
		-0.920735, 0.385559, -0.059934,
		32.567886, 34.662251, 26.389648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210110, 35.036816, 26.768923>,  <33.212402, 34.392357, 26.431602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210110, 35.036816, 26.768923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.841087, 34.882698, 26.760548>,  <32.619675, 34.790226, 26.755522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.841087, 34.882698, 26.760548>,  <33.210110, 35.036816, 26.768923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841087, 34.882698, 26.760548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082673, 0.144365, 0.986065,
		-0.376907, 0.911429, -0.165038,
		-0.922554, -0.385299, -0.020939,
		32.564320, 34.767109, 26.754267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721134, 35.488647, 27.151304>,  <33.210110, 35.036816, 26.768923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721134, 35.488647, 27.151304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.496975, 35.157360, 27.151972>,  <32.362480, 34.958588, 27.152372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.496975, 35.157360, 27.151972>,  <32.721134, 35.488647, 27.151304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496975, 35.157360, 27.151972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291855, 0.199365, 0.935454,
		-0.775093, 0.523743, -0.353445,
		-0.560402, -0.828219, 0.001669,
		32.328854, 34.908894, 27.152473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186291, 35.656265, 27.605169>,  <32.721134, 35.488647, 27.151304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186291, 35.656265, 27.605169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.153461, 35.258102, 27.585461>,  <32.133762, 35.019203, 27.573635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.153461, 35.258102, 27.585461>,  <32.186291, 35.656265, 27.605169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153461, 35.258102, 27.585461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102683, -0.040729, 0.993880,
		-0.991322, 0.086633, -0.098868,
		-0.082076, -0.995407, -0.049271,
		32.128838, 34.959480, 27.570679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535723, 35.500023, 27.981379>,  <32.186291, 35.656265, 27.605169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535723, 35.500023, 27.981379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.794361, 35.194904, 27.984205>,  <31.949545, 35.011833, 27.985901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.794361, 35.194904, 27.984205>,  <31.535723, 35.500023, 27.981379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794361, 35.194904, 27.984205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145661, -0.114369, 0.982702,
		-0.748797, -0.636440, -0.185061,
		0.646595, -0.762800, 0.007065,
		31.988340, 34.966064, 27.986324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242748, 34.993443, 28.443308>,  <31.535723, 35.500023, 27.981379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242748, 34.993443, 28.443308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.632332, 34.903023, 28.436295>,  <31.866081, 34.848770, 28.432087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.632332, 34.903023, 28.436295>,  <31.242748, 34.993443, 28.443308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632332, 34.903023, 28.436295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014953, -0.013111, 0.999802,
		-0.226237, -0.974027, -0.009389,
		0.973957, -0.226052, -0.017531,
		31.924519, 34.835209, 28.431036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330708, 34.563526, 29.021790>,  <31.242748, 34.993443, 28.443308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330708, 34.563526, 29.021790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.702784, 34.685158, 28.939535>,  <31.926029, 34.758137, 28.890182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.702784, 34.685158, 28.939535>,  <31.330708, 34.563526, 29.021790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702784, 34.685158, 28.939535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217513, -0.005326, 0.976043,
		0.295698, -0.952632, -0.071095,
		0.930188, 0.304078, -0.205635,
		31.981840, 34.776382, 28.877844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750578, 34.229786, 29.518356>,  <31.330708, 34.563526, 29.021790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750578, 34.229786, 29.518356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.012497, 34.501690, 29.386192>,  <32.169647, 34.664833, 29.306894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.012497, 34.501690, 29.386192>,  <31.750578, 34.229786, 29.518356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012497, 34.501690, 29.386192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356782, 0.107389, 0.927995,
		0.666294, -0.725532, -0.172207,
		0.654797, 0.679758, -0.330410,
		32.208935, 34.705616, 29.287069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263313, 34.204636, 30.013651>,  <31.750578, 34.229786, 29.518356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263313, 34.204636, 30.013651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.357147, 34.546364, 29.828133>,  <32.413448, 34.751400, 29.716822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.357147, 34.546364, 29.828133>,  <32.263313, 34.204636, 30.013651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357147, 34.546364, 29.828133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416696, 0.342679, 0.841983,
		0.878256, -0.390779, -0.275605,
		0.234585, 0.854320, -0.463796,
		32.427525, 34.802658, 29.688993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079708, 34.358955, 29.916771>,  <32.263313, 34.204636, 30.013651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079708, 34.358955, 29.916771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.872776, 34.701183, 29.924538>,  <32.748615, 34.906521, 29.929197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.872776, 34.701183, 29.924538>,  <33.079708, 34.358955, 29.916771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872776, 34.701183, 29.924538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596483, 0.344219, 0.725066,
		0.613659, 0.386679, -0.688405,
		-0.517330, 0.855565, 0.019415,
		32.717575, 34.957851, 29.930363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603607, 34.776779, 30.078445>,  <33.079708, 34.358955, 29.916771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603607, 34.776779, 30.078445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.276398, 35.003441, 30.117935>,  <33.080074, 35.139439, 30.141628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.276398, 35.003441, 30.117935>,  <33.603607, 34.776779, 30.078445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276398, 35.003441, 30.117935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490693, 0.597947, 0.633782,
		0.300104, 0.566889, -0.767186,
		-0.818021, 0.566653, 0.098722,
		33.030991, 35.173435, 30.147552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817425, 35.471607, 29.901651>,  <33.603607, 34.776779, 30.078445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817425, 35.471607, 29.901651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.484562, 35.494385, 30.122292>,  <33.284843, 35.508053, 30.254677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.484562, 35.494385, 30.122292>,  <33.817425, 35.471607, 29.901651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484562, 35.494385, 30.122292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454715, 0.639419, 0.619982,
		-0.317399, 0.766746, -0.557995,
		-0.832161, 0.056947, 0.551602,
		33.234913, 35.511471, 30.287771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673702, 36.131802, 29.943308>,  <33.817425, 35.471607, 29.901651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673702, 36.131802, 29.943308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478065, 35.973186, 30.254059>,  <33.360683, 35.878017, 30.440510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478065, 35.973186, 30.254059>,  <33.673702, 36.131802, 29.943308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478065, 35.973186, 30.254059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522641, 0.579841, 0.625005,
		-0.698307, 0.711715, -0.076348,
		-0.489095, -0.396542, 0.776879,
		33.331337, 35.854225, 30.487122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589695, 36.745476, 30.346970>,  <33.673702, 36.131802, 29.943308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589695, 36.745476, 30.346970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534332, 36.416420, 30.567553>,  <33.501114, 36.218987, 30.699902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534332, 36.416420, 30.567553>,  <33.589695, 36.745476, 30.346970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534332, 36.416420, 30.567553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427501, 0.452645, 0.782531,
		-0.893357, 0.344054, 0.289032,
		-0.138404, -0.822641, 0.551458,
		33.492809, 36.169628, 30.732990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224354, 37.003468, 30.930994>,  <33.589695, 36.745476, 30.346970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224354, 37.003468, 30.930994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.406338, 36.665165, 31.042490>,  <33.515530, 36.462181, 31.109388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.406338, 36.665165, 31.042490>,  <33.224354, 37.003468, 30.930994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406338, 36.665165, 31.042490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286499, 0.435388, 0.853437,
		-0.843164, -0.308424, 0.440396,
		0.454964, -0.845761, 0.278740,
		33.542828, 36.411438, 31.126112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141861, 36.950752, 31.738340>,  <33.224354, 37.003468, 30.930994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141861, 36.950752, 31.738340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.435722, 36.686543, 31.676378>,  <33.612038, 36.528019, 31.639200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.435722, 36.686543, 31.676378>,  <33.141861, 36.950752, 31.738340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435722, 36.686543, 31.676378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431229, 0.278356, 0.858230,
		-0.523760, -0.697302, 0.489332,
		0.734654, -0.660521, -0.154905,
		33.656120, 36.488388, 31.629908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254589, 36.918018, 32.357712>,  <33.141861, 36.950752, 31.738340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254589, 36.918018, 32.357712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564610, 36.736519, 32.181805>,  <33.750622, 36.627617, 32.076260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564610, 36.736519, 32.181805>,  <33.254589, 36.918018, 32.357712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564610, 36.736519, 32.181805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573262, 0.212140, 0.791434,
		-0.265822, -0.865508, 0.424540,
		0.775054, -0.453753, -0.439771,
		33.797127, 36.600391, 32.049873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538181, 36.376221, 32.860336>,  <33.254589, 36.918018, 32.357712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538181, 36.376221, 32.860336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847763, 36.468941, 32.624622>,  <34.033512, 36.524574, 32.483192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847763, 36.468941, 32.624622>,  <33.538181, 36.376221, 32.860336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847763, 36.468941, 32.624622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557518, 0.191848, 0.807693,
		0.300282, -0.953656, 0.019245,
		0.773954, 0.231807, -0.589290,
		34.079948, 36.538483, 32.447834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053993, 35.975262, 33.290054>,  <33.538181, 36.376221, 32.860336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053993, 35.975262, 33.290054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248432, 36.241840, 33.063934>,  <34.365097, 36.401787, 32.928265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248432, 36.241840, 33.063934>,  <34.053993, 35.975262, 33.290054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248432, 36.241840, 33.063934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449073, 0.364432, 0.815796,
		0.749694, -0.650417, -0.122131,
		0.486099, 0.666443, -0.565297,
		34.394260, 36.441772, 32.894344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802185, 35.984089, 33.512470>,  <34.053993, 35.975262, 33.290054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802185, 35.984089, 33.512470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.734428, 36.333054, 33.329079>,  <34.693775, 36.542431, 33.219044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.734428, 36.333054, 33.329079>,  <34.802185, 35.984089, 33.512470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734428, 36.333054, 33.329079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460789, 0.481332, 0.745649,
		0.871194, -0.084952, -0.483534,
		-0.169396, 0.872412, -0.458478,
		34.683609, 36.594776, 33.191536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446785, 36.237457, 33.577209>,  <34.802185, 35.984089, 33.512470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446785, 36.237457, 33.577209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184597, 36.533436, 33.516769>,  <35.027283, 36.711021, 33.480503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184597, 36.533436, 33.516769>,  <35.446785, 36.237457, 33.577209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184597, 36.533436, 33.516769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325843, 0.457590, 0.827307,
		0.681307, 0.493042, -0.541045,
		-0.655474, 0.739947, -0.151105,
		34.987953, 36.755421, 33.471439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983562, 35.918652, 34.154648>,  <35.446785, 36.237457, 33.577209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983562, 35.918652, 34.154648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.328671, 35.724541, 34.211414>,  <36.535736, 35.608074, 34.245476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.328671, 35.724541, 34.211414>,  <35.983562, 35.918652, 34.154648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328671, 35.724541, 34.211414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136936, -0.045925, -0.989515,
		0.486705, 0.873154, 0.026829,
		0.862767, -0.485276, 0.141918,
		36.587502, 35.578957, 34.253990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566986, 36.335457, 33.964436>,  <35.983562, 35.918652, 34.154648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566986, 36.335457, 33.964436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655201, 35.949207, 33.909405>,  <36.708130, 35.717457, 33.876385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655201, 35.949207, 33.909405>,  <36.566986, 36.335457, 33.964436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655201, 35.949207, 33.909405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187416, 0.180374, -0.965578,
		0.957203, 0.187165, 0.220753,
		0.220541, -0.965627, -0.137577,
		36.721363, 35.659519, 33.868134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922394, 36.412979, 33.360443>,  <36.566986, 36.335457, 33.964436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922394, 36.412979, 33.360443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.881741, 36.020435, 33.425678>,  <36.857349, 35.784908, 33.464821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.881741, 36.020435, 33.425678>,  <36.922394, 36.412979, 33.360443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881741, 36.020435, 33.425678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167844, -0.178501, -0.969518,
		0.980560, -0.071166, 0.182858,
		-0.101637, -0.981363, 0.163086,
		36.851250, 35.726025, 33.474606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398438, 36.147377, 32.915371>,  <36.922394, 36.412979, 33.360443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398438, 36.147377, 32.915371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141361, 35.848614, 32.983589>,  <36.987118, 35.669357, 33.024521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141361, 35.848614, 32.983589>,  <37.398438, 36.147377, 32.915371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141361, 35.848614, 32.983589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039543, -0.189975, -0.980992,
		0.765108, -0.637215, 0.092560,
		-0.642687, -0.746905, 0.170548,
		36.948555, 35.624542, 33.034752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649117, 35.569542, 32.649338>,  <37.398438, 36.147377, 32.915371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649117, 35.569542, 32.649338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249668, 35.551888, 32.660698>,  <37.009998, 35.541294, 32.667515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249668, 35.551888, 32.660698>,  <37.649117, 35.569542, 32.649338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249668, 35.551888, 32.660698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024628, -0.083675, -0.996189,
		0.046345, -0.995515, 0.082472,
		-0.998622, -0.044138, 0.028396,
		36.950081, 35.538647, 32.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524124, 35.178959, 32.147110>,  <37.649117, 35.569542, 32.649338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524124, 35.178959, 32.147110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158562, 35.328934, 32.209324>,  <36.939224, 35.418919, 32.246651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158562, 35.328934, 32.209324>,  <37.524124, 35.178959, 32.147110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158562, 35.328934, 32.209324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175758, -0.020124, -0.984228,
		-0.365891, -0.926833, 0.084289,
		-0.913911, 0.374935, 0.155535,
		36.884388, 35.441414, 32.255985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056759, 34.691154, 31.696112>,  <37.524124, 35.178959, 32.147110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056759, 34.691154, 31.696112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897194, 35.052235, 31.760614>,  <36.801456, 35.268883, 31.799316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897194, 35.052235, 31.760614>,  <37.056759, 34.691154, 31.696112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897194, 35.052235, 31.760614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327835, 0.023841, -0.944434,
		-0.856384, -0.429612, 0.286426,
		-0.398912, 0.902699, 0.161259,
		36.777519, 35.323044, 31.808992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367046, 34.655945, 31.420099>,  <37.056759, 34.691154, 31.696112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367046, 34.655945, 31.420099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461349, 35.043579, 31.449177>,  <36.517933, 35.276161, 31.466623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461349, 35.043579, 31.449177>,  <36.367046, 34.655945, 31.420099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461349, 35.043579, 31.449177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319671, 0.147976, -0.935902,
		-0.917729, 0.197410, 0.344677,
		0.235761, 0.969088, 0.072696,
		36.532078, 35.334305, 31.470985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792393, 34.973534, 31.270012>,  <36.367046, 34.655945, 31.420099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792393, 34.973534, 31.270012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074100, 35.247463, 31.195148>,  <36.243126, 35.411819, 31.150230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074100, 35.247463, 31.195148>,  <35.792393, 34.973534, 31.270012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074100, 35.247463, 31.195148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412280, 0.179899, -0.893119,
		-0.577957, 0.706155, 0.409035,
		0.704266, 0.684821, -0.187160,
		36.285381, 35.452911, 31.139000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404793, 35.636265, 31.043997>,  <35.792393, 34.973534, 31.270012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404793, 35.636265, 31.043997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782543, 35.613907, 30.914364>,  <36.009193, 35.600491, 30.836584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782543, 35.613907, 30.914364>,  <35.404793, 35.636265, 31.043997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782543, 35.613907, 30.914364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321015, 0.057410, -0.945332,
		0.071448, 0.996785, 0.036272,
		0.944375, -0.055898, -0.324085,
		36.065857, 35.597137, 30.817139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342247, 36.052589, 30.534897>,  <35.404793, 35.636265, 31.043997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342247, 36.052589, 30.534897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696941, 35.879166, 30.470751>,  <35.909760, 35.775112, 30.432264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696941, 35.879166, 30.470751>,  <35.342247, 36.052589, 30.534897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696941, 35.879166, 30.470751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181808, -0.008143, -0.983300,
		0.425016, 0.901087, -0.086046,
		0.886739, -0.433562, -0.160364,
		35.962963, 35.749096, 30.422642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570694, 36.453716, 29.926872>,  <35.342247, 36.052589, 30.534897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570694, 36.453716, 29.926872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807198, 36.131207, 29.919611>,  <35.949100, 35.937698, 29.915255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807198, 36.131207, 29.919611>,  <35.570694, 36.453716, 29.926872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807198, 36.131207, 29.919611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062274, -0.023204, -0.997789,
		0.804075, 0.591080, -0.063929,
		0.591257, -0.806279, -0.018151,
		35.984573, 35.889324, 29.914165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055222, 36.482517, 29.410791>,  <35.570694, 36.453716, 29.926872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055222, 36.482517, 29.410791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998966, 36.093548, 29.485220>,  <35.965214, 35.860168, 29.529877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998966, 36.093548, 29.485220>,  <36.055222, 36.482517, 29.410791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998966, 36.093548, 29.485220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158410, -0.163415, -0.973757,
		0.977307, -0.166418, -0.131059,
		-0.140634, -0.972420, 0.186069,
		35.956776, 35.801823, 29.541040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681969, 36.098835, 29.147993>,  <36.055222, 36.482517, 29.410791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681969, 36.098835, 29.147993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376225, 35.841839, 29.169794>,  <36.192780, 35.687641, 29.182875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376225, 35.841839, 29.169794>,  <36.681969, 36.098835, 29.147993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376225, 35.841839, 29.169794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174403, -0.287379, -0.941805,
		0.620761, -0.710369, 0.331712,
		-0.764356, -0.642487, 0.054503,
		36.146919, 35.649094, 29.186146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904644, 35.540958, 28.764511>,  <36.681969, 36.098835, 29.147993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904644, 35.540958, 28.764511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510601, 35.473045, 28.775410>,  <36.274178, 35.432297, 28.781948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510601, 35.473045, 28.775410>,  <36.904644, 35.540958, 28.764511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510601, 35.473045, 28.775410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046768, -0.417011, -0.907698,
		0.165474, -0.892903, 0.418739,
		-0.985105, -0.169784, 0.027245,
		36.215069, 35.422112, 28.783583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802177, 34.830128, 28.671141>,  <36.904644, 35.540958, 28.764511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802177, 34.830128, 28.671141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.444004, 34.981430, 28.577236>,  <36.229099, 35.072212, 28.520893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.444004, 34.981430, 28.577236>,  <36.802177, 34.830128, 28.671141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444004, 34.981430, 28.577236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017620, -0.496803, -0.867684,
		-0.444838, -0.781094, 0.438192,
		-0.895438, 0.378258, -0.234760,
		36.175373, 35.094910, 28.506807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307354, 34.306831, 28.444550>,  <36.802177, 34.830128, 28.671141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307354, 34.306831, 28.444550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151302, 34.645138, 28.298958>,  <36.057671, 34.848122, 28.211603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151302, 34.645138, 28.298958>,  <36.307354, 34.306831, 28.444550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151302, 34.645138, 28.298958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104089, -0.433280, -0.895229,
		-0.914859, -0.311366, 0.257069,
		-0.390127, 0.845766, -0.363980,
		36.034264, 34.898869, 28.189764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641956, 34.172188, 28.084894>,  <36.307354, 34.306831, 28.444550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641956, 34.172188, 28.084894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779144, 34.506519, 27.913424>,  <35.861458, 34.707119, 27.810541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779144, 34.506519, 27.913424>,  <35.641956, 34.172188, 28.084894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779144, 34.506519, 27.913424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243869, -0.361481, -0.899922,
		-0.907139, 0.413186, 0.079856,
		0.342969, 0.835828, -0.428676,
		35.882034, 34.757267, 27.784821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.054489, 34.287998, 27.661419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332882, 34.524845, 27.498936>,  <35.499920, 34.666954, 27.401445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332882, 34.524845, 27.498936>,  <35.054489, 34.287998, 27.661419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332882, 34.524845, 27.498936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408031, -0.139372, -0.902267,
		-0.590859, 0.793711, 0.144600,
		0.695986, 0.592114, -0.406208,
		35.541679, 34.702480, 27.377073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682518, 34.631813, 27.220478>,  <35.054489, 34.287998, 27.661419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682518, 34.631813, 27.220478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048271, 34.684341, 27.067297>,  <35.267723, 34.715858, 26.975388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048271, 34.684341, 27.067297>,  <34.682518, 34.631813, 27.220478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048271, 34.684341, 27.067297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382666, -0.028437, -0.923449,
		-0.132160, 0.990931, 0.024251,
		0.914385, 0.131323, -0.382955,
		35.322586, 34.723740, 26.952410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494446, 34.908115, 26.643667>,  <34.682518, 34.631813, 27.220478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494446, 34.908115, 26.643667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884399, 34.841450, 26.584585>,  <35.118374, 34.801449, 26.549135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884399, 34.841450, 26.584585>,  <34.494446, 34.908115, 26.643667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884399, 34.841450, 26.584585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144985, 0.028442, -0.989025,
		0.169036, 0.985603, 0.003564,
		0.974888, -0.166664, -0.147705,
		35.176865, 34.791451, 26.540274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847950, 35.426178, 26.208427>,  <34.494446, 34.908115, 26.643667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847950, 35.426178, 26.208427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064949, 35.092335, 26.170212>,  <35.195148, 34.892029, 26.147282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064949, 35.092335, 26.170212>,  <34.847950, 35.426178, 26.208427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064949, 35.092335, 26.170212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203236, -0.020046, -0.978924,
		0.815100, 0.550484, -0.180497,
		0.542501, -0.834605, -0.095539,
		35.227699, 34.841953, 26.141550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191120, 35.463165, 25.624647>,  <34.847950, 35.426178, 26.208427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191120, 35.463165, 25.624647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266720, 35.071987, 25.660202>,  <35.312080, 34.837280, 25.681534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266720, 35.071987, 25.660202>,  <35.191120, 35.463165, 25.624647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266720, 35.071987, 25.660202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018345, -0.094018, -0.995402,
		0.981806, 0.186501, -0.035710,
		0.189001, -0.977946, 0.088886,
		35.323421, 34.778603, 25.686869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691265, 35.319557, 25.109077>,  <35.191120, 35.463165, 25.624647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691265, 35.319557, 25.109077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502304, 34.974392, 25.180880>,  <35.388927, 34.767292, 25.223961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502304, 34.974392, 25.180880>,  <35.691265, 35.319557, 25.109077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502304, 34.974392, 25.180880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056624, -0.173527, -0.983200,
		0.879565, -0.474626, 0.033112,
		-0.472398, -0.862913, 0.179503,
		35.360584, 34.715519, 25.234730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941475, 34.965450, 24.522804>,  <35.691265, 35.319557, 25.109077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941475, 34.965450, 24.522804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640388, 34.742603, 24.663111>,  <35.459736, 34.608894, 24.747295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640388, 34.742603, 24.663111>,  <35.941475, 34.965450, 24.522804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640388, 34.742603, 24.663111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170650, -0.349477, -0.921273,
		0.635841, -0.753317, 0.167985,
		-0.752718, -0.557117, 0.350765,
		35.414574, 34.575470, 24.768341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108345, 34.270100, 24.305901>,  <35.941475, 34.965450, 24.522804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108345, 34.270100, 24.305901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714096, 34.291634, 24.369974>,  <35.477547, 34.304554, 24.408419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714096, 34.291634, 24.369974>,  <36.108345, 34.270100, 24.305901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714096, 34.291634, 24.369974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168793, -0.359122, -0.917900,
		0.008107, -0.931737, 0.363044,
		-0.985618, 0.053838, 0.160182,
		35.418411, 34.307785, 24.418028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937092, 33.608772, 24.039286>,  <36.108345, 34.270100, 24.305901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937092, 33.608772, 24.039286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.592625, 33.807072, 24.084240>,  <35.385944, 33.926052, 24.111212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.592625, 33.807072, 24.084240>,  <35.937092, 33.608772, 24.039286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592625, 33.807072, 24.084240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235084, -0.192384, -0.952745,
		-0.450699, -0.846891, 0.282217,
		-0.861165, 0.495746, 0.112383,
		35.334274, 33.955795, 24.117954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364513, 33.218742, 23.831186>,  <35.937092, 33.608772, 24.039286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364513, 33.218742, 23.831186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229111, 33.591919, 23.782135>,  <35.147869, 33.815823, 23.752705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229111, 33.591919, 23.782135>,  <35.364513, 33.218742, 23.831186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229111, 33.591919, 23.782135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337325, -0.241978, -0.909757,
		-0.878421, -0.266593, 0.396615,
		-0.338507, 0.932939, -0.122630,
		35.127560, 33.871799, 23.745346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705349, 33.156727, 23.570961>,  <35.364513, 33.218742, 23.831186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705349, 33.156727, 23.570961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842621, 33.515820, 23.460463>,  <34.924984, 33.731274, 23.394163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842621, 33.515820, 23.460463>,  <34.705349, 33.156727, 23.570961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842621, 33.515820, 23.460463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155413, -0.235781, -0.959299,
		-0.926325, 0.372140, 0.058604,
		0.343176, 0.897730, -0.276245,
		34.945572, 33.785137, 23.377588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430668, 33.181110, 22.905586>,  <34.705349, 33.156727, 23.570961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430668, 33.181110, 22.905586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676483, 33.496635, 22.909893>,  <34.823975, 33.685951, 22.912477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676483, 33.496635, 22.909893>,  <34.430668, 33.181110, 22.905586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676483, 33.496635, 22.909893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079791, 0.075728, -0.993931,
		-0.784838, 0.609954, 0.109478,
		0.614543, 0.788810, 0.010765,
		34.860847, 33.733280, 22.913122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004570, 33.773537, 22.661585>,  <34.430668, 33.181110, 22.905586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004570, 33.773537, 22.661585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396729, 33.801250, 22.587797>,  <34.632023, 33.817879, 22.543524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396729, 33.801250, 22.587797>,  <34.004570, 33.773537, 22.661585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396729, 33.801250, 22.587797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179065, -0.077504, -0.980780,
		-0.082249, 0.994582, -0.063578,
		0.980393, 0.069284, -0.184470,
		34.690845, 33.822037, 22.532455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071938, 34.338291, 22.163984>,  <34.004570, 33.773537, 22.661585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071938, 34.338291, 22.163984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.415249, 34.134754, 22.137341>,  <34.621235, 34.012630, 22.121353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.415249, 34.134754, 22.137341>,  <34.071938, 34.338291, 22.163984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415249, 34.134754, 22.137341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090918, 0.278515, -0.956119,
		0.505068, 0.814559, 0.285306,
		0.858277, -0.508845, -0.066610,
		34.672733, 33.982101, 22.117357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624077, 34.777935, 21.920588>,  <34.071938, 34.338291, 22.163984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624077, 34.777935, 21.920588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748844, 34.411140, 21.821117>,  <34.823704, 34.191063, 21.761436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748844, 34.411140, 21.821117>,  <34.624077, 34.777935, 21.920588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748844, 34.411140, 21.821117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131865, 0.300982, -0.944469,
		0.940913, 0.261808, 0.214801,
		0.311921, -0.916988, -0.248674,
		34.842419, 34.136044, 21.746515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223690, 34.834705, 21.490505>,  <34.624077, 34.777935, 21.920588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223690, 34.834705, 21.490505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091309, 34.464088, 21.418962>,  <35.011879, 34.241718, 21.376038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091309, 34.464088, 21.418962>,  <35.223690, 34.834705, 21.490505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091309, 34.464088, 21.418962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140121, 0.139184, -0.980303,
		0.933184, -0.349500, 0.083764,
		-0.330957, -0.926541, -0.178857,
		34.992020, 34.186127, 21.365305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756561, 34.452118, 21.092709>,  <35.223690, 34.834705, 21.490505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756561, 34.452118, 21.092709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427452, 34.241943, 21.006016>,  <35.229988, 34.115841, 20.954000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427452, 34.241943, 21.006016>,  <35.756561, 34.452118, 21.092709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427452, 34.241943, 21.006016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175512, 0.127807, -0.976146,
		0.540598, -0.841181, -0.012936,
		-0.822769, -0.525433, -0.216730,
		35.180622, 34.084312, 20.940996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936249, 33.933285, 20.551287>,  <35.756561, 34.452118, 21.092709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936249, 33.933285, 20.551287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542847, 33.994263, 20.512335>,  <35.306805, 34.030849, 20.488964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542847, 33.994263, 20.512335>,  <35.936249, 33.933285, 20.551287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542847, 33.994263, 20.512335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107189, 0.057494, -0.992575,
		-0.145713, -0.986638, -0.072885,
		-0.983503, 0.152444, -0.097379,
		35.247795, 34.039997, 20.483122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723148, 33.505108, 19.947355>,  <35.936249, 33.933285, 20.551287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723148, 33.505108, 19.947355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436546, 33.777203, 20.009192>,  <35.264584, 33.940460, 20.046293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436546, 33.777203, 20.009192>,  <35.723148, 33.505108, 19.947355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436546, 33.777203, 20.009192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077852, 0.142247, -0.986765,
		-0.693226, -0.719056, -0.048962,
		-0.716503, 0.680239, 0.154589,
		35.221596, 33.981274, 20.055569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223175, 33.336449, 19.512035>,  <35.723148, 33.505108, 19.947355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223175, 33.336449, 19.512035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153008, 33.725368, 19.573814>,  <35.110909, 33.958721, 19.610882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153008, 33.725368, 19.573814>,  <35.223175, 33.336449, 19.512035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153008, 33.725368, 19.573814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161315, 0.126372, -0.978778,
		-0.971188, -0.196607, 0.134679,
		-0.175415, 0.972304, 0.154447,
		35.100384, 34.017059, 19.620148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605206, 33.499798, 19.062136>,  <35.223175, 33.336449, 19.512035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605206, 33.499798, 19.062136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787487, 33.844868, 19.149878>,  <34.896858, 34.051910, 19.202522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787487, 33.844868, 19.149878>,  <34.605206, 33.499798, 19.062136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787487, 33.844868, 19.149878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087005, 0.288419, -0.953543,
		-0.885868, 0.415451, 0.206492,
		0.455707, 0.862679, 0.219355,
		34.924198, 34.103672, 19.215685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286232, 33.993313, 18.558092>,  <34.605206, 33.499798, 19.062136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286232, 33.993313, 18.558092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613335, 34.155987, 18.721004>,  <34.809597, 34.253590, 18.818752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613335, 34.155987, 18.721004>,  <34.286232, 33.993313, 18.558092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613335, 34.155987, 18.721004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092758, 0.605253, -0.790611,
		-0.568036, 0.684308, 0.457228,
		0.817760, 0.406684, 0.407281,
		34.858662, 34.277992, 18.843189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157810, 34.694386, 18.452177>,  <34.286232, 33.993313, 18.558092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157810, 34.694386, 18.452177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545277, 34.595695, 18.463589>,  <34.777756, 34.536484, 18.470436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545277, 34.595695, 18.463589>,  <34.157810, 34.694386, 18.452177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545277, 34.595695, 18.463589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111109, 0.327748, -0.938209,
		0.222125, 0.911981, 0.344892,
		0.968667, -0.246720, 0.028528,
		34.835876, 34.521679, 18.472147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029125, 35.342056, 18.064871>,  <34.157810, 34.694386, 18.452177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029125, 35.342056, 18.064871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883076, 35.705196, 17.982410>,  <33.795448, 35.923080, 17.932934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883076, 35.705196, 17.982410>,  <34.029125, 35.342056, 18.064871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883076, 35.705196, 17.982410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374368, 0.059566, 0.925365,
		0.852371, 0.415047, 0.318120,
		-0.365121, 0.907848, -0.206152,
		33.773540, 35.977551, 17.920565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215149, 35.780392, 18.668556>,  <34.029125, 35.342056, 18.064871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215149, 35.780392, 18.668556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907806, 35.969002, 18.495449>,  <33.723400, 36.082169, 18.391584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907806, 35.969002, 18.495449>,  <34.215149, 35.780392, 18.668556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907806, 35.969002, 18.495449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425922, 0.127997, 0.895660,
		0.477716, 0.872516, 0.102484,
		-0.768361, 0.471521, -0.432770,
		33.677299, 36.110458, 18.365618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233044, 36.570442, 18.718407>,  <34.215149, 35.780392, 18.668556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233044, 36.570442, 18.718407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880871, 36.382675, 18.691629>,  <33.669567, 36.270016, 18.675564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880871, 36.382675, 18.691629>,  <34.233044, 36.570442, 18.718407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880871, 36.382675, 18.691629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261138, 0.362184, 0.894779,
		-0.395783, 0.805274, -0.441463,
		-0.880433, -0.469421, -0.066941,
		33.616741, 36.241848, 18.671547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770256, 36.995186, 19.171999>,  <34.233044, 36.570442, 18.718407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770256, 36.995186, 19.171999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.552727, 36.668201, 19.096085>,  <33.422207, 36.472012, 19.050537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.552727, 36.668201, 19.096085>,  <33.770256, 36.995186, 19.171999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552727, 36.668201, 19.096085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380056, 0.038279, 0.924171,
		-0.748205, 0.574717, -0.331496,
		-0.543826, -0.817457, -0.189784,
		33.389580, 36.422966, 19.039150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094574, 37.232224, 19.311039>,  <33.770256, 36.995186, 19.171999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094574, 37.232224, 19.311039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141640, 36.837486, 19.355381>,  <33.169880, 36.600643, 19.381987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141640, 36.837486, 19.355381>,  <33.094574, 37.232224, 19.311039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141640, 36.837486, 19.355381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374062, 0.059365, 0.925502,
		-0.919910, -0.150361, -0.362158,
		0.117660, -0.986847, 0.110855,
		33.176937, 36.541431, 19.388638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629124, 37.065632, 19.785841>,  <33.094574, 37.232224, 19.311039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629124, 37.065632, 19.785841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833530, 36.721989, 19.774612>,  <32.956173, 36.515800, 19.767876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833530, 36.721989, 19.774612>,  <32.629124, 37.065632, 19.785841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833530, 36.721989, 19.774612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180278, -0.139050, 0.973737,
		-0.840454, -0.492534, -0.225936,
		0.511016, -0.859113, -0.028072,
		32.986835, 36.464256, 19.766191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238037, 36.616867, 20.174513>,  <32.629124, 37.065632, 19.785841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238037, 36.616867, 20.174513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608845, 36.466900, 20.171328>,  <32.831329, 36.376919, 20.169416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608845, 36.466900, 20.171328>,  <32.238037, 36.616867, 20.174513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608845, 36.466900, 20.171328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122985, -0.324022, 0.938022,
		-0.354267, -0.868587, -0.346485,
		0.927022, -0.374923, -0.007967,
		32.886951, 36.354424, 20.168938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106575, 35.889870, 20.389349>,  <32.238037, 36.616867, 20.174513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106575, 35.889870, 20.389349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486320, 35.995525, 20.457386>,  <32.714169, 36.058918, 20.498207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486320, 35.995525, 20.457386>,  <32.106575, 35.889870, 20.389349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486320, 35.995525, 20.457386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104401, -0.245387, 0.963787,
		0.296316, -0.932745, -0.205386,
		0.949367, 0.264143, 0.170092,
		32.771130, 36.074768, 20.508413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275414, 35.376869, 20.854225>,  <32.106575, 35.889870, 20.389349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275414, 35.376869, 20.854225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.571480, 35.645828, 20.856590>,  <32.749119, 35.807205, 20.858009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.571480, 35.645828, 20.856590>,  <32.275414, 35.376869, 20.854225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571480, 35.645828, 20.856590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025081, -0.036395, 0.999023,
		0.671959, -0.739293, -0.043803,
		0.740164, 0.672400, 0.005914,
		32.793530, 35.847549, 20.858364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735275, 35.064922, 21.216368>,  <32.275414, 35.376869, 20.854225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735275, 35.064922, 21.216368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.825253, 35.451992, 21.261999>,  <32.879238, 35.684235, 21.289377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.825253, 35.451992, 21.261999>,  <32.735275, 35.064922, 21.216368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825253, 35.451992, 21.261999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019930, -0.112484, 0.993454,
		0.974169, -0.225741, -0.006016,
		0.224940, 0.967672, 0.114078,
		32.892735, 35.742294, 21.296223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138111, 34.926388, 21.774313>,  <32.735275, 35.064922, 21.216368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138111, 34.926388, 21.774313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.054981, 35.317509, 21.763573>,  <33.005104, 35.552181, 21.757128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.054981, 35.317509, 21.763573>,  <33.138111, 34.926388, 21.774313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054981, 35.317509, 21.763573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154986, -0.005811, 0.987899,
		0.965811, 0.209467, 0.152753,
		-0.207820, 0.977798, -0.026852,
		32.992634, 35.610847, 21.755518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583519, 35.146732, 22.194235>,  <33.138111, 34.926388, 21.774313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583519, 35.146732, 22.194235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281086, 35.405636, 22.155470>,  <33.099625, 35.560978, 22.132212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281086, 35.405636, 22.155470>,  <33.583519, 35.146732, 22.194235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281086, 35.405636, 22.155470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072725, 0.064068, 0.995292,
		0.650419, 0.759574, -0.001369,
		-0.756086, 0.647258, -0.096911,
		33.054260, 35.599812, 22.126396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774956, 35.757343, 22.521627>,  <33.583519, 35.146732, 22.194235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774956, 35.757343, 22.521627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.375019, 35.756397, 22.514530>,  <33.135059, 35.755829, 22.510271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.375019, 35.756397, 22.514530>,  <33.774956, 35.757343, 22.521627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375019, 35.756397, 22.514530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017838, 0.049945, 0.998593,
		-0.001472, 0.998749, -0.049979,
		-0.999840, -0.002361, -0.017742,
		33.075066, 35.755688, 22.509207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650040, 36.238678, 22.972824>,  <33.774956, 35.757343, 22.521627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650040, 36.238678, 22.972824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312767, 36.026520, 22.937668>,  <33.110401, 35.899227, 22.916574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312767, 36.026520, 22.937668>,  <33.650040, 36.238678, 22.972824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312767, 36.026520, 22.937668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046833, -0.090393, 0.994804,
		-0.535580, 0.842920, 0.051378,
		-0.843185, -0.530391, -0.087889,
		33.059811, 35.867401, 22.911301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195446, 36.485085, 23.494564>,  <33.650040, 36.238678, 22.972824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195446, 36.485085, 23.494564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.005611, 36.138626, 23.431871>,  <32.891712, 35.930752, 23.394255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.005611, 36.138626, 23.431871>,  <33.195446, 36.485085, 23.494564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005611, 36.138626, 23.431871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065856, -0.142625, 0.987584,
		-0.877743, 0.479013, 0.010646,
		-0.474583, -0.866144, -0.156734,
		32.863235, 35.878784, 23.384851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669357, 36.427361, 24.075558>,  <33.195446, 36.485085, 23.494564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669357, 36.427361, 24.075558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.678310, 36.055260, 23.929060>,  <32.683681, 35.832001, 23.841162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.678310, 36.055260, 23.929060>,  <32.669357, 36.427361, 24.075558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678310, 36.055260, 23.929060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258534, -0.359260, 0.896712,
		-0.965743, 0.074615, -0.248542,
		0.022383, -0.930250, -0.366243,
		32.685024, 35.776184, 23.819187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109673, 36.057701, 24.347057>,  <32.669357, 36.427361, 24.075558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109673, 36.057701, 24.347057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.381271, 35.779110, 24.254211>,  <32.544231, 35.611954, 24.198503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.381271, 35.779110, 24.254211>,  <32.109673, 36.057701, 24.347057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381271, 35.779110, 24.254211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250596, -0.517067, 0.818440,
		-0.690044, -0.497554, -0.525623,
		0.679000, -0.696478, -0.232114,
		32.584972, 35.570168, 24.184578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696434, 35.406494, 24.361755>,  <32.109673, 36.057701, 24.347057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696434, 35.406494, 24.361755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089867, 35.340862, 24.391802>,  <32.325928, 35.301483, 24.409830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089867, 35.340862, 24.391802>,  <31.696434, 35.406494, 24.361755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089867, 35.340862, 24.391802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147476, -0.490999, 0.858586,
		-0.103993, -0.855569, -0.507136,
		0.983584, -0.164077, 0.075115,
		32.384941, 35.291637, 24.414337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753607, 34.694172, 24.441465>,  <31.696434, 35.406494, 24.361755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753607, 34.694172, 24.441465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089413, 34.865566, 24.575106>,  <32.290897, 34.968403, 24.655289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089413, 34.865566, 24.575106>,  <31.753607, 34.694172, 24.441465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089413, 34.865566, 24.575106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001039, -0.613631, 0.789592,
		0.543339, -0.663220, -0.514706,
		0.839512, 0.428482, 0.334099,
		32.341267, 34.994110, 24.675335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095219, 34.112625, 24.828609>,  <31.753607, 34.694172, 24.441465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095219, 34.112625, 24.828609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263100, 34.448689, 24.966000>,  <32.363831, 34.650326, 25.048433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263100, 34.448689, 24.966000>,  <32.095219, 34.112625, 24.828609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263100, 34.448689, 24.966000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039510, -0.394968, 0.917845,
		0.906800, -0.371653, -0.198965,
		0.419705, 0.840163, 0.343473,
		32.389011, 34.700737, 25.069042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541267, 33.919277, 25.329399>,  <32.095219, 34.112625, 24.828609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541267, 33.919277, 25.329399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.489346, 34.307098, 25.412462>,  <32.458195, 34.539791, 25.462299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.489346, 34.307098, 25.412462>,  <32.541267, 33.919277, 25.329399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489346, 34.307098, 25.412462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048841, -0.215427, 0.975298,
		0.990336, 0.116453, 0.075317,
		-0.129802, 0.969551, 0.207658,
		32.450405, 34.597965, 25.474760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.529907, 34.727142, 29.938236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.399593, 35.103188, 29.898136>,  <36.321407, 35.328815, 29.874075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.399593, 35.103188, 29.898136>,  <36.529907, 34.727142, 29.938236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399593, 35.103188, 29.898136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494132, 0.259710, 0.829689,
		0.806039, 0.220761, -0.549149,
		-0.325782, 0.940114, -0.100251,
		36.301857, 35.385223, 29.868061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111176, 35.166386, 30.183550>,  <36.529907, 34.727142, 29.938236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111176, 35.166386, 30.183550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.774536, 35.372185, 30.249285>,  <36.572552, 35.495663, 30.288725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.774536, 35.372185, 30.249285>,  <37.111176, 35.166386, 30.183550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774536, 35.372185, 30.249285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280699, 0.156699, 0.946918,
		0.461436, 0.843052, -0.276297,
		-0.841597, 0.514498, 0.164337,
		36.522057, 35.526535, 30.298586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280590, 35.925865, 30.490215>,  <37.111176, 35.166386, 30.183550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280590, 35.925865, 30.490215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.913052, 35.801987, 30.588039>,  <36.692528, 35.727661, 30.646734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.913052, 35.801987, 30.588039>,  <37.280590, 35.925865, 30.490215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913052, 35.801987, 30.588039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195986, 0.179767, 0.963988,
		-0.342504, 0.933689, -0.104483,
		-0.918847, -0.309693, 0.244561,
		36.637398, 35.709080, 30.661407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025784, 36.511971, 30.871462>,  <37.280590, 35.925865, 30.490215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025784, 36.511971, 30.871462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838951, 36.171680, 30.967886>,  <36.726852, 35.967506, 31.025740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838951, 36.171680, 30.967886>,  <37.025784, 36.511971, 30.871462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838951, 36.171680, 30.967886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141214, 0.197358, 0.970107,
		-0.872867, 0.487156, 0.027953,
		-0.467077, -0.850723, 0.241060,
		36.698830, 35.916462, 31.040205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677513, 36.661739, 31.479746>,  <37.025784, 36.511971, 30.871462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677513, 36.661739, 31.479746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652550, 36.262531, 31.482674>,  <36.637573, 36.023006, 31.484430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652550, 36.262531, 31.482674>,  <36.677513, 36.661739, 31.479746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652550, 36.262531, 31.482674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059251, 0.003618, 0.998237,
		-0.996291, 0.062728, 0.058908,
		-0.062404, -0.998024, 0.007321,
		36.633827, 35.963123, 31.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161922, 36.470612, 32.090126>,  <36.677513, 36.661739, 31.479746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161922, 36.470612, 32.090126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323864, 36.115704, 32.001724>,  <36.421028, 35.902760, 31.948683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323864, 36.115704, 32.001724>,  <36.161922, 36.470612, 32.090126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323864, 36.115704, 32.001724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037775, -0.257720, 0.965481,
		-0.913603, -0.382526, -0.137854,
		0.404849, -0.887274, -0.221004,
		36.445320, 35.849522, 31.935423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712013, 35.925137, 32.385048>,  <36.161922, 36.470612, 32.090126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712013, 35.925137, 32.385048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.087868, 35.792854, 32.349880>,  <36.313381, 35.713486, 32.328781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.087868, 35.792854, 32.349880>,  <35.712013, 35.925137, 32.385048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087868, 35.792854, 32.349880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000286, -0.257679, 0.966231,
		-0.342191, -0.907875, -0.242217,
		0.939630, -0.330704, -0.087916,
		36.369759, 35.693645, 32.323505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675835, 35.236065, 32.690151>,  <35.712013, 35.925137, 32.385048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675835, 35.236065, 32.690151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.054165, 35.365891, 32.693367>,  <36.281162, 35.443787, 32.695297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.054165, 35.365891, 32.693367>,  <35.675835, 35.236065, 32.690151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054165, 35.365891, 32.693367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069369, -0.226208, 0.971606,
		0.317167, -0.918416, -0.236468,
		0.945829, 0.324565, 0.008036,
		36.337914, 35.463261, 32.695778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089230, 34.692314, 33.154572>,  <35.675835, 35.236065, 32.690151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089230, 34.692314, 33.154572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.345383, 34.999538, 33.155117>,  <36.499073, 35.183872, 33.155445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.345383, 34.999538, 33.155117>,  <36.089230, 34.692314, 33.154572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345383, 34.999538, 33.155117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252375, -0.212092, 0.944099,
		0.725411, -0.604238, -0.329658,
		0.640379, 0.768058, 0.001359,
		36.537495, 35.229958, 33.155525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668606, 34.429302, 33.639236>,  <36.089230, 34.692314, 33.154572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668606, 34.429302, 33.639236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.708508, 34.824108, 33.588863>,  <36.732449, 35.060989, 33.558640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.708508, 34.824108, 33.588863>,  <36.668606, 34.429302, 33.639236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708508, 34.824108, 33.588863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400574, 0.076019, 0.913106,
		0.910818, -0.141531, -0.387787,
		0.099753, 0.987011, -0.125933,
		36.738434, 35.120213, 33.551083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262711, 34.503376, 34.084164>,  <36.668606, 34.429302, 33.639236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262711, 34.503376, 34.084164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.106682, 34.859344, 33.989601>,  <37.013065, 35.072926, 33.932861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.106682, 34.859344, 33.989601>,  <37.262711, 34.503376, 34.084164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106682, 34.859344, 33.989601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394054, 0.393388, 0.830643,
		0.832204, 0.230854, -0.504125,
		-0.390074, 0.889917, -0.236410,
		36.989658, 35.126320, 33.918678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694668, 35.006351, 34.339993>,  <37.262711, 34.503376, 34.084164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694668, 35.006351, 34.339993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.343983, 35.197041, 34.314339>,  <37.133572, 35.311455, 34.298946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.343983, 35.197041, 34.314339>,  <37.694668, 35.006351, 34.339993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343983, 35.197041, 34.314339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166495, 0.425834, 0.889351,
		0.451283, 0.769027, -0.452706,
		-0.876712, 0.476722, -0.064132,
		37.080971, 35.340057, 34.295097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616837, 35.779171, 34.379711>,  <37.694668, 35.006351, 34.339993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616837, 35.779171, 34.379711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288605, 35.634716, 34.556900>,  <37.091667, 35.548042, 34.663216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288605, 35.634716, 34.556900>,  <37.616837, 35.779171, 34.379711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288605, 35.634716, 34.556900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331447, 0.330729, 0.883607,
		-0.465610, 0.871893, -0.151692,
		-0.820579, -0.361139, 0.442977,
		37.042431, 35.526375, 34.689793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199619, 36.414032, 34.719193>,  <37.616837, 35.779171, 34.379711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199619, 36.414032, 34.719193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.185886, 36.047810, 34.879482>,  <37.177647, 35.828075, 34.975655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.185886, 36.047810, 34.879482>,  <37.199619, 36.414032, 34.719193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185886, 36.047810, 34.879482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541503, 0.319961, 0.777432,
		-0.839998, 0.243685, 0.484790,
		-0.034335, -0.915556, 0.400723,
		37.175587, 35.773144, 34.999699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784966, 36.901447, 34.519680>,  <37.199619, 36.414032, 34.719193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784966, 36.901447, 34.519680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.012341, 37.207176, 34.397903>,  <38.148766, 37.390614, 34.324837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.012341, 37.207176, 34.397903>,  <37.784966, 36.901447, 34.519680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012341, 37.207176, 34.397903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456172, -0.015149, -0.889763,
		-0.684681, 0.644652, 0.340053,
		0.568436, 0.764327, -0.304444,
		38.182873, 37.436474, 34.306572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377998, 37.236584, 34.030098>,  <37.784966, 36.901447, 34.519680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377998, 37.236584, 34.030098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759327, 37.333397, 33.957882>,  <37.988125, 37.391483, 33.914551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759327, 37.333397, 33.957882>,  <37.377998, 37.236584, 34.030098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759327, 37.333397, 33.957882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191172, 0.020987, -0.981332,
		-0.233727, 0.970041, 0.066277,
		0.953323, 0.242034, -0.180539,
		38.045322, 37.406006, 33.903721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258171, 37.723305, 33.427521>,  <37.377998, 37.236584, 34.030098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258171, 37.723305, 33.427521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646271, 37.626457, 33.427078>,  <37.879131, 37.568348, 33.426811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646271, 37.626457, 33.427078>,  <37.258171, 37.723305, 33.427521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646271, 37.626457, 33.427078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017015, -0.063622, -0.997829,
		0.241526, 0.968158, -0.065848,
		0.970245, -0.242122, -0.001106,
		37.937344, 37.553822, 33.426746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672905, 38.250675, 32.970116>,  <37.258171, 37.723305, 33.427521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672905, 38.250675, 32.970116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.887558, 37.914394, 32.999107>,  <38.016350, 37.712627, 33.016502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.887558, 37.914394, 32.999107>,  <37.672905, 38.250675, 32.970116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887558, 37.914394, 32.999107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263488, 0.085348, -0.960880,
		0.801626, 0.534732, 0.267315,
		0.536628, -0.840700, 0.072478,
		38.048546, 37.662186, 33.020851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089218, 38.286541, 32.458843>,  <37.672905, 38.250675, 32.970116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089218, 38.286541, 32.458843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.167896, 37.901577, 32.533760>,  <38.215103, 37.670597, 32.578709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.167896, 37.901577, 32.533760>,  <38.089218, 38.286541, 32.458843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167896, 37.901577, 32.533760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393251, -0.097544, -0.914242,
		0.898146, 0.253475, 0.359283,
		0.196692, -0.962411, 0.187288,
		38.226902, 37.612854, 32.589947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744808, 38.088448, 32.199039>,  <38.089218, 38.286541, 32.458843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744808, 38.088448, 32.199039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.581661, 37.723717, 32.217880>,  <38.483772, 37.504879, 32.229183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.581661, 37.723717, 32.217880>,  <38.744808, 38.088448, 32.199039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581661, 37.723717, 32.217880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141555, -0.114111, -0.983332,
		0.902000, -0.394405, 0.175616,
		-0.407871, -0.911824, 0.047098,
		38.459301, 37.450169, 32.232010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093506, 37.663486, 31.846100>,  <38.744808, 38.088448, 32.199039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093506, 37.663486, 31.846100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750130, 37.458347, 31.842695>,  <38.544106, 37.335262, 31.840652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750130, 37.458347, 31.842695>,  <39.093506, 37.663486, 31.846100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750130, 37.458347, 31.842695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112562, -0.172176, -0.978614,
		0.500414, -0.841037, 0.205530,
		-0.858438, -0.512847, -0.008509,
		38.492599, 37.304493, 31.840143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125195, 37.081207, 31.337564>,  <39.093506, 37.663486, 31.846100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125195, 37.081207, 31.337564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747196, 37.206753, 31.374378>,  <38.520397, 37.282082, 31.396465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747196, 37.206753, 31.374378>,  <39.125195, 37.081207, 31.337564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747196, 37.206753, 31.374378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075783, 0.063618, -0.995093,
		-0.318179, -0.947334, -0.036334,
		-0.944997, 0.313864, 0.092033,
		38.463696, 37.300911, 31.401989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763531, 36.781479, 30.699625>,  <39.125195, 37.081207, 31.337564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763531, 36.781479, 30.699625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476418, 37.013977, 30.852957>,  <38.304150, 37.153477, 30.944956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476418, 37.013977, 30.852957>,  <38.763531, 36.781479, 30.699625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476418, 37.013977, 30.852957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335130, 0.194167, -0.921948,
		-0.610306, -0.790225, 0.055421,
		-0.717785, 0.581243, 0.383329,
		38.261082, 37.188351, 30.967955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046188, 36.492603, 30.423000>,  <38.763531, 36.781479, 30.699625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046188, 36.492603, 30.423000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044228, 36.881744, 30.515549>,  <38.043053, 37.115231, 30.571077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044228, 36.881744, 30.515549>,  <38.046188, 36.492603, 30.423000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044228, 36.881744, 30.515549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321017, 0.217597, -0.921737,
		-0.947061, -0.078789, 0.311237,
		-0.004898, 0.972853, 0.231370,
		38.042759, 37.173599, 30.584959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377483, 36.740673, 30.156429>,  <38.046188, 36.492603, 30.423000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377483, 36.740673, 30.156429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.598816, 37.071762, 30.193758>,  <37.731613, 37.270416, 30.216156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.598816, 37.071762, 30.193758>,  <37.377483, 36.740673, 30.156429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598816, 37.071762, 30.193758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258849, 0.277360, -0.925240,
		-0.791722, 0.487806, 0.367725,
		0.553330, 0.827718, 0.093324,
		37.764816, 37.320076, 30.221756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965984, 37.295605, 29.889288>,  <37.377483, 36.740673, 30.156429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965984, 37.295605, 29.889288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.340092, 37.433136, 29.855682>,  <37.564556, 37.515656, 29.835518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.340092, 37.433136, 29.855682>,  <36.965984, 37.295605, 29.889288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340092, 37.433136, 29.855682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229149, 0.407295, -0.884082,
		-0.269753, 0.846105, 0.459717,
		0.935267, 0.343827, -0.084015,
		37.620670, 37.536285, 29.830479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869228, 38.037350, 29.602819>,  <36.965984, 37.295605, 29.889288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869228, 38.037350, 29.602819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.246758, 37.932137, 29.522814>,  <37.473274, 37.869007, 29.474810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.246758, 37.932137, 29.522814>,  <36.869228, 38.037350, 29.602819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246758, 37.932137, 29.522814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177827, 0.105872, -0.978350,
		0.278515, 0.958960, 0.053150,
		0.943826, -0.263034, -0.200016,
		37.529903, 37.853226, 29.462809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168892, 38.530994, 29.108038>,  <36.869228, 38.037350, 29.602819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168892, 38.530994, 29.108038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.408588, 38.212120, 29.078648>,  <37.552406, 38.020794, 29.061014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.408588, 38.212120, 29.078648>,  <37.168892, 38.530994, 29.108038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408588, 38.212120, 29.078648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227062, -0.081235, -0.970486,
		0.767692, 0.598240, -0.229691,
		0.599243, -0.797188, -0.073475,
		37.588360, 37.972965, 29.056604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485161, 39.343971, 29.069725>,  <37.168892, 38.530994, 29.108038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485161, 39.343971, 29.069725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193550, 39.612038, 29.014015>,  <37.018585, 39.772877, 28.980589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193550, 39.612038, 29.014015>,  <37.485161, 39.343971, 29.069725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193550, 39.612038, 29.014015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153971, 0.037696, 0.987356,
		0.666942, 0.741254, 0.075705,
		-0.729028, 0.670165, -0.139272,
		36.974842, 39.813087, 28.972233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636234, 39.769279, 29.581938>,  <37.485161, 39.343971, 29.069725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636234, 39.769279, 29.581938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254662, 39.844646, 29.488552>,  <37.025719, 39.889866, 29.432522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254662, 39.844646, 29.488552>,  <37.636234, 39.769279, 29.581938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254662, 39.844646, 29.488552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240271, -0.013816, 0.970607,
		0.179654, 0.981992, 0.058451,
		-0.953936, 0.188417, -0.233462,
		36.968479, 39.901173, 29.418514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395771, 40.303284, 30.013218>,  <37.636234, 39.769279, 29.581938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395771, 40.303284, 30.013218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055473, 40.121197, 29.908140>,  <36.851295, 40.011944, 29.845095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055473, 40.121197, 29.908140>,  <37.395771, 40.303284, 30.013218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055473, 40.121197, 29.908140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232510, -0.122272, 0.964878,
		-0.471348, 0.881945, -0.001820,
		-0.850747, -0.455216, -0.262693,
		36.800251, 39.984631, 29.829332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909519, 40.595505, 30.530054>,  <37.395771, 40.303284, 30.013218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909519, 40.595505, 30.530054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.737549, 40.272362, 30.368799>,  <36.634365, 40.078476, 30.272045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.737549, 40.272362, 30.368799>,  <36.909519, 40.595505, 30.530054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737549, 40.272362, 30.368799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448822, -0.196200, 0.871817,
		-0.783403, 0.555756, -0.278235,
		-0.429928, -0.807862, -0.403139,
		36.608570, 40.030003, 30.247858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308975, 40.601788, 30.816326>,  <36.909519, 40.595505, 30.530054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308975, 40.601788, 30.816326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.301674, 40.228622, 30.672474>,  <36.297295, 40.004723, 30.586163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.301674, 40.228622, 30.672474>,  <36.308975, 40.601788, 30.816326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301674, 40.228622, 30.672474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353357, -0.330460, 0.875177,
		-0.935310, 0.143054, -0.323620,
		-0.018254, -0.932916, -0.359632,
		36.296196, 39.948750, 30.564585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584766, 40.344944, 30.915926>,  <36.308975, 40.601788, 30.816326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584766, 40.344944, 30.915926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.805161, 40.014481, 30.868809>,  <35.937397, 39.816200, 30.840538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.805161, 40.014481, 30.868809>,  <35.584766, 40.344944, 30.915926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805161, 40.014481, 30.868809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327259, -0.343752, 0.880191,
		-0.767672, -0.446421, -0.459770,
		0.550982, -0.826162, -0.117793,
		35.970455, 39.766632, 30.833471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096996, 39.797699, 30.915396>,  <35.584766, 40.344944, 30.915926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096996, 39.797699, 30.915396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451225, 39.642399, 31.017385>,  <35.663765, 39.549217, 31.078579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451225, 39.642399, 31.017385>,  <35.096996, 39.797699, 30.915396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451225, 39.642399, 31.017385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398616, -0.353441, 0.846277,
		-0.238449, -0.851082, -0.467763,
		0.885578, -0.388251, 0.254977,
		35.716900, 39.525925, 31.093878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936890, 39.151924, 31.127592>,  <35.096996, 39.797699, 30.915396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936890, 39.151924, 31.127592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.300804, 39.193424, 31.288353>,  <35.519154, 39.218327, 31.384809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.300804, 39.193424, 31.288353>,  <34.936890, 39.151924, 31.127592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300804, 39.193424, 31.288353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336760, -0.381541, 0.860824,
		0.242657, -0.918510, -0.312180,
		0.909786, 0.103756, 0.401902,
		35.573738, 39.224552, 31.408924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014915, 38.483265, 31.292082>,  <34.936890, 39.151924, 31.127592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014915, 38.483265, 31.292082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.262783, 38.706352, 31.512976>,  <35.411503, 38.840206, 31.645512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.262783, 38.706352, 31.512976>,  <35.014915, 38.483265, 31.292082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262783, 38.706352, 31.512976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381395, -0.400976, 0.832920,
		0.685968, -0.726752, -0.035760,
		0.619666, 0.557718, 0.552237,
		35.448685, 38.873669, 31.678646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412376, 38.021873, 31.684723>,  <35.014915, 38.483265, 31.292082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412376, 38.021873, 31.684723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.449371, 38.358273, 31.897951>,  <35.471569, 38.560112, 32.025887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.449371, 38.358273, 31.897951>,  <35.412376, 38.021873, 31.684723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449371, 38.358273, 31.897951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285027, -0.490601, 0.823450,
		0.954047, -0.228097, 0.194334,
		0.092486, 0.841001, 0.533070,
		35.477116, 38.610573, 32.057873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576916, 37.854763, 32.340801>,  <35.412376, 38.021873, 31.684723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576916, 37.854763, 32.340801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451996, 38.228664, 32.408581>,  <35.377045, 38.453003, 32.449249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451996, 38.228664, 32.408581>,  <35.576916, 37.854763, 32.340801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451996, 38.228664, 32.408581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179375, -0.233183, 0.955746,
		0.932895, 0.268084, 0.240493,
		-0.312300, 0.934749, 0.169448,
		35.358307, 38.509090, 32.459415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832088, 37.940693, 32.970814>,  <35.576916, 37.854763, 32.340801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832088, 37.940693, 32.970814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.553204, 38.223434, 32.923050>,  <35.385872, 38.393078, 32.894394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.553204, 38.223434, 32.923050>,  <35.832088, 37.940693, 32.970814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553204, 38.223434, 32.923050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423300, -0.271517, 0.864347,
		0.578542, 0.653179, 0.488515,
		-0.697213, 0.706849, -0.119407,
		35.344040, 38.435490, 32.887226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.205933, 40.309231, 25.475435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816071, 40.300320, 25.386393>,  <37.582153, 40.294971, 25.332966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816071, 40.300320, 25.386393>,  <38.205933, 40.309231, 25.475435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816071, 40.300320, 25.386393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211705, 0.413554, 0.885525,
		0.072332, 0.910207, -0.407788,
		-0.974653, -0.022279, -0.222608,
		37.523674, 40.293636, 25.319611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952110, 40.980259, 25.575340>,  <38.205933, 40.309231, 25.475435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952110, 40.980259, 25.575340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653263, 40.716053, 25.605097>,  <37.473957, 40.557529, 25.622950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653263, 40.716053, 25.605097>,  <37.952110, 40.980259, 25.575340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653263, 40.716053, 25.605097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137822, 0.263421, 0.954785,
		-0.650250, 0.703081, -0.287840,
		-0.747115, -0.660519, 0.074389,
		37.429131, 40.517899, 25.627413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459007, 41.269779, 25.997190>,  <37.952110, 40.980259, 25.575340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459007, 41.269779, 25.997190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376656, 40.879192, 26.022903>,  <37.327244, 40.644840, 26.038330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376656, 40.879192, 26.022903>,  <37.459007, 41.269779, 25.997190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376656, 40.879192, 26.022903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326040, 0.130380, 0.936322,
		-0.922666, 0.171808, -0.345209,
		-0.205876, -0.976465, 0.064281,
		37.314892, 40.586254, 26.042189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808216, 41.234802, 26.502985>,  <37.459007, 41.269779, 25.997190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808216, 41.234802, 26.502985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971260, 40.869553, 26.500038>,  <37.069084, 40.650402, 26.498270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971260, 40.869553, 26.500038>,  <36.808216, 41.234802, 26.502985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971260, 40.869553, 26.500038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187683, -0.091669, 0.977943,
		-0.893662, -0.397233, -0.208744,
		0.407606, -0.913128, -0.007367,
		37.093540, 40.595615, 26.497828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318489, 40.789783, 26.726812>,  <36.808216, 41.234802, 26.502985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318489, 40.789783, 26.726812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660713, 40.602257, 26.814651>,  <36.866047, 40.489738, 26.867355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660713, 40.602257, 26.814651>,  <36.318489, 40.789783, 26.726812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660713, 40.602257, 26.814651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371107, -0.259635, 0.891555,
		-0.360966, -0.844272, -0.396116,
		0.855560, -0.468822, 0.219596,
		36.917381, 40.461609, 26.880531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052795, 40.216625, 27.084742>,  <36.318489, 40.789783, 26.726812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052795, 40.216625, 27.084742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440647, 40.235306, 27.180777>,  <36.673359, 40.246513, 27.238398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440647, 40.235306, 27.180777>,  <36.052795, 40.216625, 27.084742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440647, 40.235306, 27.180777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202793, -0.395276, 0.895897,
		0.136738, -0.917375, -0.373800,
		0.969627, 0.046699, 0.240086,
		36.731537, 40.249313, 27.252802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266495, 39.628704, 27.523344>,  <36.052795, 40.216625, 27.084742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266495, 39.628704, 27.523344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568562, 39.876228, 27.609877>,  <36.749802, 40.024742, 27.661797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568562, 39.876228, 27.609877>,  <36.266495, 39.628704, 27.523344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568562, 39.876228, 27.609877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145334, -0.163756, 0.975737,
		0.639218, -0.768286, -0.033729,
		0.755168, 0.618806, 0.216334,
		36.795113, 40.061871, 27.674776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681286, 39.275040, 27.861336>,  <36.266495, 39.628704, 27.523344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681286, 39.275040, 27.861336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768730, 39.650902, 27.966606>,  <36.821198, 39.876419, 28.029768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768730, 39.650902, 27.966606>,  <36.681286, 39.275040, 27.861336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768730, 39.650902, 27.966606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141402, -0.236348, 0.961325,
		0.965513, -0.247369, 0.081201,
		0.218610, 0.939654, 0.263175,
		36.834312, 39.932796, 28.045559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090252, 39.125927, 28.478521>,  <36.681286, 39.275040, 27.861336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090252, 39.125927, 28.478521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009850, 39.517307, 28.497375>,  <36.961609, 39.752136, 28.508688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009850, 39.517307, 28.497375>,  <37.090252, 39.125927, 28.478521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009850, 39.517307, 28.497375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222076, -0.092383, 0.970643,
		0.954085, 0.184639, 0.235861,
		-0.201008, 0.978455, 0.047138,
		36.949547, 39.810844, 28.511517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535446, 38.649662, 28.486761>,  <37.090252, 39.125927, 28.478521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535446, 38.649662, 28.486761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643723, 38.265171, 28.507837>,  <37.708687, 38.034477, 28.520483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643723, 38.265171, 28.507837>,  <37.535446, 38.649662, 28.486761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643723, 38.265171, 28.507837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056872, -0.070606, -0.995882,
		0.960985, 0.266580, -0.073779,
		0.270692, -0.961223, 0.052690,
		37.724930, 37.976803, 28.523643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242512, 38.513668, 28.032887>,  <37.535446, 38.649662, 28.486761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242512, 38.513668, 28.032887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023952, 38.181503, 28.076466>,  <37.892818, 37.982204, 28.102613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023952, 38.181503, 28.076466>,  <38.242512, 38.513668, 28.032887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023952, 38.181503, 28.076466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066106, -0.172440, -0.982799,
		0.834912, -0.529799, 0.149116,
		-0.546400, -0.830408, 0.108949,
		37.860031, 37.932381, 28.109150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618763, 37.959187, 27.598368>,  <38.242512, 38.513668, 28.032887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618763, 37.959187, 27.598368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247299, 37.826359, 27.664482>,  <38.024422, 37.746662, 27.704151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247299, 37.826359, 27.664482>,  <38.618763, 37.959187, 27.598368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247299, 37.826359, 27.664482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022668, -0.393959, -0.918848,
		0.370236, -0.857045, 0.358327,
		-0.928661, -0.332068, 0.165285,
		37.968700, 37.726738, 27.714067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686279, 37.457314, 27.290462>,  <38.618763, 37.959187, 27.598368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686279, 37.457314, 27.290462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289658, 37.501583, 27.317486>,  <38.051685, 37.528145, 27.333700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289658, 37.501583, 27.317486>,  <38.686279, 37.457314, 27.290462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289658, 37.501583, 27.317486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089163, -0.203701, -0.974964,
		-0.094137, -0.972758, 0.211850,
		-0.991558, 0.110670, 0.067558,
		37.992191, 37.534786, 27.337753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487621, 36.908096, 27.046209>,  <38.686279, 37.457314, 27.290462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487621, 36.908096, 27.046209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169319, 37.146713, 27.004425>,  <37.978340, 37.289883, 26.979355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169319, 37.146713, 27.004425>,  <38.487621, 36.908096, 27.046209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169319, 37.146713, 27.004425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107797, -0.309247, -0.944852,
		-0.595952, -0.740607, 0.310390,
		-0.795751, 0.596546, -0.104462,
		37.930595, 37.325676, 26.973087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023708, 36.481525, 26.653164>,  <38.487621, 36.908096, 27.046209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023708, 36.481525, 26.653164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900452, 36.860146, 26.615030>,  <37.826496, 37.087318, 26.592150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900452, 36.860146, 26.615030>,  <38.023708, 36.481525, 26.653164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900452, 36.860146, 26.615030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146989, -0.146376, -0.978248,
		-0.939916, -0.287428, 0.184238,
		-0.308144, 0.946551, -0.095332,
		37.808010, 37.144112, 26.586432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497349, 36.323322, 26.391945>,  <38.023708, 36.481525, 26.653164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497349, 36.323322, 26.391945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562286, 36.711708, 26.321669>,  <37.601250, 36.944740, 26.279503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562286, 36.711708, 26.321669>,  <37.497349, 36.323322, 26.391945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562286, 36.711708, 26.321669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204782, -0.141024, -0.968595,
		-0.965251, 0.193222, 0.175943,
		0.162342, 0.970968, -0.175692,
		37.610989, 37.002998, 26.268961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874889, 36.644714, 25.984350>,  <37.497349, 36.323322, 26.391945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874889, 36.644714, 25.984350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167187, 36.903252, 25.896482>,  <37.342564, 37.058376, 25.843761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167187, 36.903252, 25.896482>,  <36.874889, 36.644714, 25.984350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167187, 36.903252, 25.896482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064075, -0.255423, -0.964704,
		-0.679640, 0.719025, -0.145233,
		0.730742, 0.646345, -0.219667,
		37.386410, 37.097157, 25.830582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669800, 37.058132, 25.398197>,  <36.874889, 36.644714, 25.984350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669800, 37.058132, 25.398197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067932, 37.090187, 25.419682>,  <37.306812, 37.109421, 25.432573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067932, 37.090187, 25.419682>,  <36.669800, 37.058132, 25.398197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067932, 37.090187, 25.419682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061226, -0.094453, -0.993645,
		-0.074557, 0.992299, -0.098919,
		0.995335, 0.080139, 0.053712,
		37.366531, 37.114227, 25.435795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819626, 37.460255, 24.775545>,  <36.669800, 37.058132, 25.398197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819626, 37.460255, 24.775545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177704, 37.319336, 24.884733>,  <37.392551, 37.234783, 24.950245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177704, 37.319336, 24.884733>,  <36.819626, 37.460255, 24.775545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177704, 37.319336, 24.884733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261643, -0.080391, -0.961811,
		0.360789, 0.932428, 0.020211,
		0.895195, -0.352299, 0.272968,
		37.446262, 37.213646, 24.966623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330013, 37.975033, 24.472651>,  <36.819626, 37.460255, 24.775545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330013, 37.975033, 24.472651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479774, 37.610081, 24.538847>,  <37.569633, 37.391109, 24.578566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479774, 37.610081, 24.538847>,  <37.330013, 37.975033, 24.472651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479774, 37.610081, 24.538847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220335, -0.085825, -0.971641,
		0.900707, 0.400253, 0.168895,
		0.374407, -0.912377, 0.165493,
		37.592098, 37.336369, 24.588495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931328, 38.004669, 24.163155>,  <37.330013, 37.975033, 24.472651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931328, 38.004669, 24.163155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860554, 37.612480, 24.197493>,  <37.818089, 37.377167, 24.218096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860554, 37.612480, 24.197493>,  <37.931328, 38.004669, 24.163155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860554, 37.612480, 24.197493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459537, -0.159429, -0.873733,
		0.870355, -0.115149, 0.478771,
		-0.176939, -0.980471, 0.085844,
		37.807472, 37.318340, 24.223246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531040, 37.682030, 23.940346>,  <37.931328, 38.004669, 24.163155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531040, 37.682030, 23.940346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254005, 37.398235, 23.888268>,  <38.087784, 37.227959, 23.857021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254005, 37.398235, 23.888268>,  <38.531040, 37.682030, 23.940346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254005, 37.398235, 23.888268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409178, -0.237777, -0.880929,
		0.594048, -0.663396, 0.454987,
		-0.692590, -0.709485, -0.130196,
		38.046230, 37.185390, 23.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912800, 37.209740, 23.625196>,  <38.531040, 37.682030, 23.940346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912800, 37.209740, 23.625196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523788, 37.137897, 23.565948>,  <38.290382, 37.094791, 23.530399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523788, 37.137897, 23.565948>,  <38.912800, 37.209740, 23.625196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523788, 37.137897, 23.565948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196138, -0.289397, -0.936899,
		0.125409, -0.940208, 0.316673,
		-0.972524, -0.179607, -0.148118,
		38.232033, 37.084015, 23.521513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.053537, 37.122196, 23.745863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.392080, 37.234135, 23.927134>,  <30.595205, 37.301296, 24.035896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.392080, 37.234135, 23.927134>,  <30.053537, 37.122196, 23.745863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392080, 37.234135, 23.927134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370544, -0.301814, 0.878411,
		0.382592, -0.911370, -0.151748,
		0.846357, 0.279843, 0.453175,
		30.645988, 37.318089, 24.063086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083296, 36.690582, 24.364347>,  <30.053537, 37.122196, 23.745863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083296, 36.690582, 24.364347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.361448, 36.965542, 24.448187>,  <30.528339, 37.130516, 24.498489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.361448, 36.965542, 24.448187>,  <30.083296, 36.690582, 24.364347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361448, 36.965542, 24.448187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011020, -0.281424, 0.959520,
		0.718557, -0.669541, -0.188122,
		0.695380, 0.687398, 0.209597,
		30.570063, 37.171761, 24.511066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572435, 36.383198, 24.869074>,  <30.083296, 36.690582, 24.364347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572435, 36.383198, 24.869074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.660055, 36.772404, 24.898069>,  <30.712627, 37.005928, 24.915466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.660055, 36.772404, 24.898069>,  <30.572435, 36.383198, 24.869074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660055, 36.772404, 24.898069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326104, -0.143028, 0.934451,
		0.919606, -0.181050, -0.348635,
		0.219047, 0.973018, 0.072488,
		30.725769, 37.064308, 24.919815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203342, 36.400238, 25.199015>,  <30.572435, 36.383198, 24.869074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203342, 36.400238, 25.199015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.061356, 36.771881, 25.240490>,  <30.976164, 36.994869, 25.265375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.061356, 36.771881, 25.240490>,  <31.203342, 36.400238, 25.199015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061356, 36.771881, 25.240490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311960, 0.013165, 0.950004,
		0.881294, 0.369568, -0.294518,
		-0.354968, 0.929110, 0.103688,
		30.954865, 37.050613, 25.271597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809708, 36.874966, 25.397095>,  <31.203342, 36.400238, 25.199015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809708, 36.874966, 25.397095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.482670, 37.060764, 25.533199>,  <31.286448, 37.172245, 25.614862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.482670, 37.060764, 25.533199>,  <31.809708, 36.874966, 25.397095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482670, 37.060764, 25.533199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418624, 0.073791, 0.905157,
		0.395337, 0.882493, -0.254782,
		-0.817596, 0.464500, 0.340260,
		31.237391, 37.200115, 25.635277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084572, 37.312790, 25.890730>,  <31.809708, 36.874966, 25.397095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084572, 37.312790, 25.890730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.702806, 37.250938, 25.992861>,  <31.473747, 37.213829, 26.054140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.702806, 37.250938, 25.992861>,  <32.084572, 37.312790, 25.890730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702806, 37.250938, 25.992861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254081, 0.028120, 0.966774,
		-0.156668, 0.987573, 0.012450,
		-0.954410, -0.154625, 0.255329,
		31.416483, 37.204552, 26.069460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039127, 37.742931, 26.403542>,  <32.084572, 37.312790, 25.890730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039127, 37.742931, 26.403542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.692890, 37.545780, 26.438906>,  <31.485147, 37.427490, 26.460123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.692890, 37.545780, 26.438906>,  <32.039127, 37.742931, 26.403542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692890, 37.545780, 26.438906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016469, 0.148437, 0.988785,
		-0.500476, 0.857342, -0.120369,
		-0.865594, -0.492881, 0.088409,
		31.433212, 37.397915, 26.465429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427794, 38.230839, 26.647818>,  <32.039127, 37.742931, 26.403542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427794, 38.230839, 26.647818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.354897, 37.847973, 26.737820>,  <31.311157, 37.618256, 26.791821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.354897, 37.847973, 26.737820>,  <31.427794, 38.230839, 26.647818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354897, 37.847973, 26.737820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025744, 0.224115, 0.974223,
		-0.982916, 0.183338, -0.016202,
		-0.182244, -0.957162, 0.225006,
		31.300224, 37.560825, 26.805321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119448, 38.213917, 27.342073>,  <31.427794, 38.230839, 26.647818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119448, 38.213917, 27.342073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.238369, 37.832321, 27.326496>,  <31.309721, 37.603363, 27.317150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.238369, 37.832321, 27.326496>,  <31.119448, 38.213917, 27.342073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238369, 37.832321, 27.326496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058497, -0.058911, 0.996548,
		-0.952990, -0.293996, -0.073319,
		0.297301, -0.953990, -0.038944,
		31.327559, 37.546124, 27.314814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594326, 37.860439, 27.604401>,  <31.119448, 38.213917, 27.342073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594326, 37.860439, 27.604401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.914433, 37.621525, 27.625677>,  <31.106497, 37.478176, 27.638443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.914433, 37.621525, 27.625677>,  <30.594326, 37.860439, 27.604401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914433, 37.621525, 27.625677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213635, -0.201103, 0.955990,
		-0.560301, -0.776408, -0.288537,
		0.800264, -0.597284, 0.053190,
		31.154512, 37.442341, 27.641634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390539, 37.336586, 28.104242>,  <30.594326, 37.860439, 27.604401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390539, 37.336586, 28.104242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.788593, 37.347645, 28.066422>,  <31.027426, 37.354279, 28.043730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.788593, 37.347645, 28.066422>,  <30.390539, 37.336586, 28.104242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788593, 37.347645, 28.066422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097015, -0.108514, 0.989350,
		0.017093, -0.993710, -0.110669,
		0.995136, 0.027647, -0.094550,
		31.087133, 37.355938, 28.038057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640713, 36.595879, 28.409895>,  <30.390539, 37.336586, 28.104242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640713, 36.595879, 28.409895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.921894, 36.880344, 28.406019>,  <31.090603, 37.051025, 28.403694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.921894, 36.880344, 28.406019>,  <30.640713, 36.595879, 28.409895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921894, 36.880344, 28.406019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217214, -0.201695, 0.955059,
		0.677253, -0.673468, -0.296259,
		0.702955, 0.711168, -0.009688,
		31.132780, 37.093697, 28.403112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257498, 36.352905, 28.630285>,  <30.640713, 36.595879, 28.409895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257498, 36.352905, 28.630285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.339270, 36.740284, 28.687313>,  <31.388332, 36.972710, 28.721531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.339270, 36.740284, 28.687313>,  <31.257498, 36.352905, 28.630285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339270, 36.740284, 28.687313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325993, -0.204688, 0.922947,
		0.923004, -0.142202, -0.357550,
		0.204431, 0.968443, 0.142571,
		31.400599, 37.030815, 28.730083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823988, 36.421688, 29.018427>,  <31.257498, 36.352905, 28.630285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823988, 36.421688, 29.018427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669821, 36.788357, 29.060680>,  <31.577320, 37.008358, 29.086033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669821, 36.788357, 29.060680>,  <31.823988, 36.421688, 29.018427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669821, 36.788357, 29.060680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202558, -0.027634, 0.978880,
		0.900235, 0.398675, -0.175029,
		-0.385418, 0.916676, 0.105632,
		31.554195, 37.063358, 29.092369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423294, 35.991600, 29.083513>,  <31.823988, 36.421688, 29.018427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423294, 35.991600, 29.083513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.443069, 35.637894, 29.269257>,  <32.454937, 35.425671, 29.380703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.443069, 35.637894, 29.269257>,  <32.423294, 35.991600, 29.083513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443069, 35.637894, 29.269257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066861, -0.466814, -0.881825,
		0.996537, 0.012551, -0.082203,
		0.049442, -0.884267, 0.464358,
		32.457901, 35.372612, 29.408564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941250, 35.634846, 28.835924>,  <32.423294, 35.991600, 29.083513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941250, 35.634846, 28.835924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.694557, 35.355061, 28.980364>,  <32.546539, 35.187191, 29.067028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.694557, 35.355061, 28.980364>,  <32.941250, 35.634846, 28.835924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694557, 35.355061, 28.980364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041740, -0.487141, -0.872325,
		0.786063, -0.522922, 0.329633,
		-0.616736, -0.699461, 0.361097,
		32.509537, 35.145222, 29.088694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272408, 35.049107, 28.615080>,  <32.941250, 35.634846, 28.835924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272408, 35.049107, 28.615080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.881393, 34.995617, 28.680235>,  <32.646782, 34.963524, 28.719328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.881393, 34.995617, 28.680235>,  <33.272408, 35.049107, 28.615080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881393, 34.995617, 28.680235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122427, -0.268793, -0.955386,
		0.171544, -0.953870, 0.246384,
		-0.977540, -0.133727, 0.162890,
		32.588131, 34.955498, 28.729101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187439, 34.418373, 28.352173>,  <33.272408, 35.049107, 28.615080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187439, 34.418373, 28.352173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.817696, 34.569057, 28.376326>,  <32.595848, 34.659466, 28.390818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.817696, 34.569057, 28.376326>,  <33.187439, 34.418373, 28.352173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817696, 34.569057, 28.376326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191306, -0.320738, -0.927647,
		-0.330109, -0.869024, 0.368546,
		-0.924354, 0.376730, 0.060371,
		32.540386, 34.682072, 28.394440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738346, 33.930000, 28.128307>,  <33.187439, 34.418373, 28.352173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738346, 33.930000, 28.128307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519012, 34.258919, 28.067446>,  <32.387413, 34.456272, 28.030928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519012, 34.258919, 28.067446>,  <32.738346, 33.930000, 28.128307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519012, 34.258919, 28.067446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160779, -0.282218, -0.945782,
		-0.820656, -0.494144, 0.286959,
		-0.548337, 0.822298, -0.152156,
		32.354511, 34.505608, 28.021799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168591, 33.677956, 27.550537>,  <32.738346, 33.930000, 28.128307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168591, 33.677956, 27.550537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.143055, 34.077053, 27.558783>,  <32.127731, 34.316513, 27.563730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.143055, 34.077053, 27.558783>,  <32.168591, 33.677956, 27.550537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143055, 34.077053, 27.558783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043248, 0.017872, -0.998905,
		-0.997023, -0.064665, 0.042009,
		-0.063843, 0.997747, 0.020615,
		32.123901, 34.376377, 27.564966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545477, 33.962868, 27.173155>,  <32.168591, 33.677956, 27.550537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545477, 33.962868, 27.173155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.819983, 34.253201, 27.154366>,  <31.984686, 34.427402, 27.143093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.819983, 34.253201, 27.154366>,  <31.545477, 33.962868, 27.173155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819983, 34.253201, 27.154366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174371, 0.101480, -0.979437,
		-0.706143, 0.680342, 0.196206,
		0.686263, 0.725835, -0.046972,
		32.025860, 34.470951, 27.140274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224188, 34.602886, 26.806568>,  <31.545477, 33.962868, 27.173155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224188, 34.602886, 26.806568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.621696, 34.636292, 26.777048>,  <31.860201, 34.656334, 26.759336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.621696, 34.636292, 26.777048>,  <31.224188, 34.602886, 26.806568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621696, 34.636292, 26.777048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098261, 0.344044, -0.933798,
		-0.052597, 0.935232, 0.350107,
		0.993770, 0.083517, -0.073802,
		31.919827, 34.661346, 26.754908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383621, 35.144897, 26.251501>,  <31.224188, 34.602886, 26.806568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383621, 35.144897, 26.251501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.739195, 34.969200, 26.303446>,  <31.952539, 34.863781, 26.334612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.739195, 34.969200, 26.303446>,  <31.383621, 35.144897, 26.251501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739195, 34.969200, 26.303446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237228, 0.198977, -0.950858,
		0.391820, 0.876055, 0.281078,
		0.888932, -0.439244, 0.129861,
		32.005875, 34.837425, 26.342403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804541, 35.671886, 25.989004>,  <31.383621, 35.144897, 26.251501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804541, 35.671886, 25.989004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.022457, 35.336517, 25.995352>,  <32.153206, 35.135296, 25.999161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.022457, 35.336517, 25.995352>,  <31.804541, 35.671886, 25.989004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022457, 35.336517, 25.995352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365584, 0.220434, -0.904299,
		0.754686, 0.498455, 0.426604,
		0.544790, -0.838422, 0.015869,
		32.185894, 35.084991, 26.000113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384552, 35.902519, 25.864792>,  <31.804541, 35.671886, 25.989004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384552, 35.902519, 25.864792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.422333, 35.517914, 25.761589>,  <32.445000, 35.287151, 25.699667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.422333, 35.517914, 25.761589>,  <32.384552, 35.902519, 25.864792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422333, 35.517914, 25.761589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356533, 0.274648, -0.893002,
		0.929496, -0.007643, 0.368753,
		0.094452, -0.961514, -0.258009,
		32.450668, 35.229458, 25.684187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994247, 35.779236, 25.561049>,  <32.384552, 35.902519, 25.864792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994247, 35.779236, 25.561049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.812481, 35.453674, 25.416239>,  <32.703423, 35.258335, 25.329353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.812481, 35.453674, 25.416239>,  <32.994247, 35.779236, 25.561049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812481, 35.453674, 25.416239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358283, 0.205093, -0.910807,
		0.815562, -0.543591, 0.198412,
		-0.454414, -0.813908, -0.362025,
		32.676155, 35.209503, 25.307631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507538, 35.456650, 25.111467>,  <32.994247, 35.779236, 25.561049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507538, 35.456650, 25.111467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.157520, 35.312138, 24.982615>,  <32.947510, 35.225430, 24.905302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.157520, 35.312138, 24.982615>,  <33.507538, 35.456650, 25.111467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157520, 35.312138, 24.982615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282228, 0.159864, -0.945934,
		0.393244, -0.918652, -0.037925,
		-0.875047, -0.361279, -0.322135,
		32.895008, 35.203754, 24.885975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722389, 35.017063, 24.603685>,  <33.507538, 35.456650, 25.111467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722389, 35.017063, 24.603685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334332, 35.082867, 24.532400>,  <33.101498, 35.122349, 24.489630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334332, 35.082867, 24.532400>,  <33.722389, 35.017063, 24.603685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334332, 35.082867, 24.532400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211328, 0.212810, -0.953967,
		-0.119008, -0.963146, -0.241221,
		-0.970143, 0.164506, -0.178213,
		33.043289, 35.132217, 24.478935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112694, 34.370644, 24.714937>,  <33.722389, 35.017063, 24.603685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112694, 34.370644, 24.714937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.494095, 34.345673, 24.597004>,  <34.722935, 34.330692, 24.526243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.494095, 34.345673, 24.597004>,  <34.112694, 34.370644, 24.714937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494095, 34.345673, 24.597004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298090, 0.051387, 0.953154,
		-0.044351, -0.996726, 0.067606,
		0.953507, -0.062426, -0.294835,
		34.780148, 34.326946, 24.508553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384621, 33.895924, 25.194590>,  <34.112694, 34.370644, 24.714937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384621, 33.895924, 25.194590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.695614, 34.102814, 25.051481>,  <34.882210, 34.226948, 24.965616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.695614, 34.102814, 25.051481>,  <34.384621, 33.895924, 25.194590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695614, 34.102814, 25.051481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357724, 0.104186, 0.927997,
		0.517261, -0.849483, -0.104022,
		0.777480, 0.517227, -0.357772,
		34.928860, 34.257980, 24.944149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882397, 33.533459, 25.489225>,  <34.384621, 33.895924, 25.194590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882397, 33.533459, 25.489225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.018883, 33.898552, 25.399342>,  <35.100777, 34.117607, 25.345411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.018883, 33.898552, 25.399342>,  <34.882397, 33.533459, 25.489225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018883, 33.898552, 25.399342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453704, 0.049443, 0.889780,
		0.823239, -0.405560, -0.397239,
		0.341218, 0.912731, -0.224707,
		35.121250, 34.172371, 25.331930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485844, 33.499863, 25.809750>,  <34.882397, 33.533459, 25.489225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485844, 33.499863, 25.809750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406937, 33.891487, 25.789684>,  <35.359592, 34.126465, 25.777645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406937, 33.891487, 25.789684>,  <35.485844, 33.499863, 25.809750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406937, 33.891487, 25.789684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273000, 0.104004, 0.956376,
		0.941572, 0.174966, -0.287801,
		-0.197266, 0.979066, -0.050162,
		35.347755, 34.185207, 25.774635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906433, 33.705948, 26.239851>,  <35.485844, 33.499863, 25.809750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906433, 33.705948, 26.239851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707569, 34.050346, 26.196932>,  <35.588249, 34.256985, 26.171181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707569, 34.050346, 26.196932>,  <35.906433, 33.705948, 26.239851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707569, 34.050346, 26.196932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354315, 0.314345, 0.880709,
		0.792019, 0.399834, -0.461344,
		-0.497159, 0.860999, -0.107300,
		35.558422, 34.308647, 26.164742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339466, 34.249031, 26.224421>,  <35.906433, 33.705948, 26.239851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339466, 34.249031, 26.224421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.985188, 34.396099, 26.337818>,  <35.772621, 34.484341, 26.405857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.985188, 34.396099, 26.337818>,  <36.339466, 34.249031, 26.224421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985188, 34.396099, 26.337818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398637, 0.289234, 0.870306,
		0.237986, 0.883835, -0.402738,
		-0.885692, 0.367667, 0.283496,
		35.719479, 34.506401, 26.422867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442589, 35.018494, 26.441818>,  <36.339466, 34.249031, 26.224421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442589, 35.018494, 26.441818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098476, 34.913948, 26.616909>,  <35.892010, 34.851219, 26.721964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098476, 34.913948, 26.616909>,  <36.442589, 35.018494, 26.441818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098476, 34.913948, 26.616909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284329, 0.466697, 0.837467,
		-0.423170, 0.844915, -0.327177,
		-0.860281, -0.261365, 0.437726,
		35.840393, 34.835537, 26.748226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384682, 35.527996, 26.891298>,  <36.442589, 35.018494, 26.441818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384682, 35.527996, 26.891298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.119637, 35.269699, 27.043074>,  <35.960609, 35.114723, 27.134138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.119637, 35.269699, 27.043074>,  <36.384682, 35.527996, 26.891298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119637, 35.269699, 27.043074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092671, 0.432036, 0.897083,
		-0.743211, 0.629577, -0.226429,
		-0.662608, -0.645738, 0.379437,
		35.920853, 35.075977, 27.156904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082718, 35.955864, 27.302889>,  <36.384682, 35.527996, 26.891298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082718, 35.955864, 27.302889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018642, 35.584675, 27.437473>,  <35.980198, 35.361961, 27.518225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018642, 35.584675, 27.437473>,  <36.082718, 35.955864, 27.302889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018642, 35.584675, 27.437473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039060, 0.334638, 0.941537,
		-0.986313, 0.163966, -0.017359,
		-0.160189, -0.927972, 0.336462,
		35.970585, 35.306282, 27.538412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536575, 36.052757, 27.840530>,  <36.082718, 35.955864, 27.302889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536575, 36.052757, 27.840530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694355, 35.695869, 27.928490>,  <35.789024, 35.481739, 27.981266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694355, 35.695869, 27.928490>,  <35.536575, 36.052757, 27.840530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694355, 35.695869, 27.928490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183237, 0.158125, 0.970268,
		-0.900462, -0.423017, -0.101114,
		0.394452, -0.892218, 0.219898,
		35.812691, 35.428204, 27.994459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087414, 35.669365, 28.273460>,  <35.536575, 36.052757, 27.840530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087414, 35.669365, 28.273460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431072, 35.477516, 28.344828>,  <35.637268, 35.362408, 28.387648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431072, 35.477516, 28.344828>,  <35.087414, 35.669365, 28.273460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431072, 35.477516, 28.344828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146098, 0.104248, 0.983762,
		-0.490430, -0.871263, 0.019493,
		0.859147, -0.479618, 0.178416,
		35.688816, 35.333630, 28.398352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968086, 35.369465, 28.941862>,  <35.087414, 35.669365, 28.273460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968086, 35.369465, 28.941862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363716, 35.362972, 28.883251>,  <35.601093, 35.359077, 28.848083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363716, 35.362972, 28.883251>,  <34.968086, 35.369465, 28.941862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363716, 35.362972, 28.883251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146929, 0.027025, 0.988778,
		-0.012097, -0.999503, 0.029115,
		0.989073, -0.016239, -0.146529,
		35.660439, 35.358101, 28.839293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136185, 34.840816, 29.331656>,  <34.968086, 35.369465, 28.941862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136185, 34.840816, 29.331656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459866, 35.069778, 29.278660>,  <35.654072, 35.207153, 29.246862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459866, 35.069778, 29.278660>,  <35.136185, 34.840816, 29.331656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459866, 35.069778, 29.278660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072079, 0.127083, 0.989270,
		0.583096, -0.810066, 0.061577,
		0.809199, 0.572401, -0.132490,
		35.702625, 35.241497, 29.238913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727337, 34.538918, 29.741241>,  <35.136185, 34.840816, 29.331656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727337, 34.538918, 29.741241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780857, 34.932671, 29.695477>,  <35.812969, 35.168922, 29.668016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780857, 34.932671, 29.695477>,  <35.727337, 34.538918, 29.741241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780857, 34.932671, 29.695477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228823, 0.081644, 0.970038,
		0.964229, -0.155971, -0.214325,
		0.133800, 0.984382, -0.114413,
		35.820995, 35.227985, 29.661152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.959358, 36.502632, 23.399595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596947, 36.626938, 23.284679>,  <38.379498, 36.701519, 23.215729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596947, 36.626938, 23.284679>,  <38.959358, 36.502632, 23.399595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596947, 36.626938, 23.284679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151789, -0.395056, -0.906030,
		-0.395056, -0.864498, 0.310762,
		0.906030, -0.310762, 0.287290,
		38.325138, 36.720165, 23.198492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697750, 35.900990, 23.074804>,  <38.959358, 36.502632, 23.399595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697750, 35.900990, 23.074804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.497662, 36.215488, 22.929701>,  <38.377609, 36.404186, 22.842638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.497662, 36.215488, 22.929701>,  <38.697750, 35.900990, 23.074804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497662, 36.215488, 22.929701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027509, -0.433158, -0.900898,
		-0.865458, -0.440672, 0.238306,
		-0.500225, 0.786245, -0.362758,
		38.347595, 36.451363, 22.820873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259304, 35.558945, 22.586113>,  <38.697750, 35.900990, 23.074804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259304, 35.558945, 22.586113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229065, 35.946529, 22.491964>,  <38.210922, 36.179081, 22.435476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229065, 35.946529, 22.491964>,  <38.259304, 35.558945, 22.586113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229065, 35.946529, 22.491964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067103, -0.240453, -0.968339,
		-0.994878, -0.057410, 0.083197,
		-0.075597, 0.968962, -0.235369,
		38.206387, 36.237217, 22.421354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864933, 35.564106, 22.017347>,  <38.259304, 35.558945, 22.586113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864933, 35.564106, 22.017347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.991001, 35.943718, 22.016962>,  <38.066643, 36.171486, 22.016731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.991001, 35.943718, 22.016962>,  <37.864933, 35.564106, 22.017347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991001, 35.943718, 22.016962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094218, -0.032300, -0.995027,
		-0.944346, 0.313513, -0.099596,
		0.315171, 0.949034, -0.000964,
		38.085552, 36.228428, 22.016672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333534, 35.945351, 21.633827>,  <37.864933, 35.564106, 22.017347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333534, 35.945351, 21.633827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.689850, 36.126949, 21.641659>,  <37.903641, 36.235909, 21.646358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.689850, 36.126949, 21.641659>,  <37.333534, 35.945351, 21.633827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689850, 36.126949, 21.641659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125572, -0.204520, -0.970775,
		-0.436720, 0.867215, -0.239193,
		0.890790, 0.453993, 0.019580,
		37.957088, 36.263145, 21.647533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177055, 36.535789, 21.344799>,  <37.333534, 35.945351, 21.633827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177055, 36.535789, 21.344799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.567059, 36.457470, 21.302797>,  <37.801060, 36.410480, 21.277597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.567059, 36.457470, 21.302797>,  <37.177055, 36.535789, 21.344799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567059, 36.457470, 21.302797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159531, -0.288032, -0.944239,
		0.154635, 0.937391, -0.312069,
		0.975007, -0.195796, -0.105003,
		37.859562, 36.398731, 21.271296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306293, 36.761703, 20.738586>,  <37.177055, 36.535789, 21.344799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306293, 36.761703, 20.738586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610867, 36.513050, 20.812105>,  <37.793610, 36.363857, 20.856216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610867, 36.513050, 20.812105>,  <37.306293, 36.761703, 20.738586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610867, 36.513050, 20.812105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069841, -0.203210, -0.976641,
		0.644465, 0.756487, -0.111316,
		0.761437, -0.621637, 0.183795,
		37.839298, 36.326557, 20.867245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769630, 36.886581, 20.208822>,  <37.306293, 36.761703, 20.738586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769630, 36.886581, 20.208822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827068, 36.515198, 20.345840>,  <37.861530, 36.292366, 20.428051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827068, 36.515198, 20.345840>,  <37.769630, 36.886581, 20.208822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827068, 36.515198, 20.345840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007955, -0.345038, -0.938555,
		0.989604, 0.137499, -0.042161,
		0.143598, -0.928463, 0.342545,
		37.870148, 36.236660, 20.448605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297375, 36.696304, 19.806326>,  <37.769630, 36.886581, 20.208822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297375, 36.696304, 19.806326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.112488, 36.379333, 19.965532>,  <38.001556, 36.189152, 20.061056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.112488, 36.379333, 19.965532>,  <38.297375, 36.696304, 19.806326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112488, 36.379333, 19.965532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058787, -0.420471, -0.905400,
		0.884815, -0.441891, 0.147765,
		-0.462219, -0.792425, 0.398017,
		37.973824, 36.141605, 20.084938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566513, 36.108921, 19.456062>,  <38.297375, 36.696304, 19.806326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566513, 36.108921, 19.456062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238453, 35.971642, 19.639175>,  <38.041615, 35.889275, 19.749043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238453, 35.971642, 19.639175>,  <38.566513, 36.108921, 19.456062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238453, 35.971642, 19.639175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243886, -0.514075, -0.822342,
		0.517559, -0.786093, 0.337920,
		-0.820154, -0.343197, 0.457781,
		37.992405, 35.868683, 19.776510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495071, 35.337353, 19.271038>,  <38.566513, 36.108921, 19.456062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495071, 35.337353, 19.271038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.139690, 35.501015, 19.354212>,  <37.926460, 35.599213, 19.404116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.139690, 35.501015, 19.354212>,  <38.495071, 35.337353, 19.271038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139690, 35.501015, 19.354212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422119, -0.550609, -0.720170,
		-0.180174, -0.727612, 0.661905,
		-0.888455, 0.409159, 0.207934,
		37.873154, 35.623764, 19.416592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055977, 34.826134, 19.068098>,  <38.495071, 35.337353, 19.271038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055977, 34.826134, 19.068098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.814156, 35.142647, 19.104744>,  <37.669064, 35.332554, 19.126732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.814156, 35.142647, 19.104744>,  <38.055977, 34.826134, 19.068098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814156, 35.142647, 19.104744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518434, -0.303535, -0.799433,
		-0.604767, -0.530794, 0.593729,
		-0.604551, 0.791281, 0.091614,
		37.632790, 35.380032, 19.132229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388065, 34.550312, 18.975876>,  <38.055977, 34.826134, 19.068098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388065, 34.550312, 18.975876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342709, 34.941238, 18.904318>,  <37.315495, 35.175793, 18.861383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342709, 34.941238, 18.904318>,  <37.388065, 34.550312, 18.975876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342709, 34.941238, 18.904318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547058, -0.211718, -0.809878,
		-0.829379, 0.006036, 0.558653,
		-0.113389, 0.977312, -0.178896,
		37.308693, 35.234432, 18.850649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631153, 34.760006, 18.941332>,  <37.388065, 34.550312, 18.975876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631153, 34.760006, 18.941332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.879520, 34.987114, 18.725147>,  <37.028542, 35.123379, 18.595436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.879520, 34.987114, 18.725147>,  <36.631153, 34.760006, 18.941332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879520, 34.987114, 18.725147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652517, -0.007694, -0.757735,
		-0.434379, 0.823150, 0.365703,
		0.620916, 0.567772, -0.540462,
		37.065796, 35.157444, 18.563009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005985, 34.570557, 19.309862>,  <36.631153, 34.760006, 18.941332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005985, 34.570557, 19.309862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.627045, 34.612518, 19.188858>,  <35.399681, 34.637695, 19.116255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.627045, 34.612518, 19.188858>,  <36.005985, 34.570557, 19.309862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627045, 34.612518, 19.188858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318996, -0.227907, 0.919946,
		0.027566, 0.968015, 0.249374,
		-0.947355, 0.104908, -0.302511,
		35.342838, 34.643990, 19.098104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623947, 35.125450, 19.722334>,  <36.005985, 34.570557, 19.309862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623947, 35.125450, 19.722334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402534, 34.832458, 19.563803>,  <35.269688, 34.656662, 19.468683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402534, 34.832458, 19.563803>,  <35.623947, 35.125450, 19.722334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402534, 34.832458, 19.563803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412710, -0.172090, 0.894458,
		-0.723378, 0.658678, -0.207045,
		-0.553530, -0.732481, -0.396330,
		35.236477, 34.612713, 19.444904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893669, 35.258369, 19.959339>,  <35.623947, 35.125450, 19.722334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893669, 35.258369, 19.959339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945259, 34.878017, 19.846777>,  <34.976215, 34.649807, 19.779240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945259, 34.878017, 19.846777>,  <34.893669, 35.258369, 19.959339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945259, 34.878017, 19.846777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308084, -0.308156, 0.900069,
		-0.942576, -0.029391, -0.332696,
		0.128976, -0.950882, -0.281406,
		34.983952, 34.592754, 19.762356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291065, 34.889114, 20.133858>,  <34.893669, 35.258369, 19.959339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291065, 34.889114, 20.133858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584106, 34.618599, 20.103064>,  <34.759930, 34.456287, 20.084587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584106, 34.618599, 20.103064>,  <34.291065, 34.889114, 20.133858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584106, 34.618599, 20.103064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215025, -0.337257, 0.916527,
		-0.645804, -0.654893, -0.392495,
		0.732599, -0.676293, -0.076984,
		34.803886, 34.415710, 20.079969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968159, 34.280491, 20.478495>,  <34.291065, 34.889114, 20.133858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968159, 34.280491, 20.478495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.362736, 34.215061, 20.473093>,  <34.599480, 34.175804, 20.469852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.362736, 34.215061, 20.473093>,  <33.968159, 34.280491, 20.478495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362736, 34.215061, 20.473093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062221, -0.448824, 0.891451,
		-0.151875, -0.878523, -0.452915,
		0.986440, -0.163570, -0.013502,
		34.658669, 34.165989, 20.469042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024311, 33.561840, 20.697739>,  <33.968159, 34.280491, 20.478495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024311, 33.561840, 20.697739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386658, 33.705097, 20.788198>,  <34.604065, 33.791054, 20.842474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386658, 33.705097, 20.788198>,  <34.024311, 33.561840, 20.697739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386658, 33.705097, 20.788198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023288, -0.490989, 0.870854,
		0.422930, -0.794141, -0.436428,
		0.905863, 0.358147, 0.226148,
		34.658417, 33.812542, 20.856043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464642, 33.008270, 21.086113>,  <34.024311, 33.561840, 20.697739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464642, 33.008270, 21.086113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639854, 33.357582, 21.171444>,  <34.744984, 33.567169, 21.222643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639854, 33.357582, 21.171444>,  <34.464642, 33.008270, 21.086113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639854, 33.357582, 21.171444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229290, -0.337987, 0.912793,
		0.869227, -0.350919, -0.348283,
		0.438031, 0.873281, 0.213325,
		34.771263, 33.619568, 21.235441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161121, 32.908337, 21.516928>,  <34.464642, 33.008270, 21.086113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161121, 32.908337, 21.516928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065800, 33.291500, 21.580954>,  <35.008606, 33.521397, 21.619370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065800, 33.291500, 21.580954>,  <35.161121, 32.908337, 21.516928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065800, 33.291500, 21.580954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149609, -0.126637, 0.980602,
		0.959597, 0.257631, -0.113133,
		-0.238306, 0.957909, 0.160065,
		34.994308, 33.578873, 21.628973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729134, 33.206856, 21.991013>,  <35.161121, 32.908337, 21.516928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729134, 33.206856, 21.991013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411587, 33.447914, 22.023483>,  <35.221058, 33.592548, 22.042967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411587, 33.447914, 22.023483>,  <35.729134, 33.206856, 21.991013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411587, 33.447914, 22.023483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064571, -0.049199, 0.996700,
		0.604653, 0.796489, 0.000144,
		-0.793867, 0.602648, 0.081178,
		35.173428, 33.628708, 22.047836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985687, 33.789288, 22.334663>,  <35.729134, 33.206856, 21.991013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985687, 33.789288, 22.334663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.592110, 33.787216, 22.406029>,  <35.355965, 33.785973, 22.448849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.592110, 33.787216, 22.406029>,  <35.985687, 33.789288, 22.334663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592110, 33.787216, 22.406029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174931, 0.170652, 0.969679,
		-0.035466, 0.985318, -0.167006,
		-0.983942, -0.005176, 0.178415,
		35.296928, 33.785664, 22.459553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938904, 34.413158, 22.833225>,  <35.985687, 33.789288, 22.334663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938904, 34.413158, 22.833225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590515, 34.217716, 22.853870>,  <35.381481, 34.100452, 22.866257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590515, 34.217716, 22.853870>,  <35.938904, 34.413158, 22.833225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590515, 34.217716, 22.853870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100025, 0.279181, 0.955015,
		-0.481035, 0.826633, -0.292033,
		-0.870977, -0.488607, 0.051612,
		35.329224, 34.071133, 22.869354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522366, 34.936104, 23.142855>,  <35.938904, 34.413158, 22.833225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522366, 34.936104, 23.142855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363087, 34.576221, 23.214369>,  <35.267517, 34.360291, 23.257277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363087, 34.576221, 23.214369>,  <35.522366, 34.936104, 23.142855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363087, 34.576221, 23.214369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177962, 0.266972, 0.947130,
		-0.899870, 0.345330, -0.266422,
		-0.398200, -0.899707, 0.178784,
		35.243626, 34.306309, 23.268003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829380, 35.082451, 23.478073>,  <35.522366, 34.936104, 23.142855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829380, 35.082451, 23.478073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923176, 34.708843, 23.585875>,  <34.979454, 34.484680, 23.650555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923176, 34.708843, 23.585875>,  <34.829380, 35.082451, 23.478073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923176, 34.708843, 23.585875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420134, 0.152633, 0.894534,
		-0.876642, -0.322985, -0.356621,
		0.234489, -0.934015, 0.269502,
		34.993523, 34.428638, 23.666725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239216, 34.816231, 23.989426>,  <34.829380, 35.082451, 23.478073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239216, 34.816231, 23.989426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539364, 34.556522, 24.039053>,  <34.719452, 34.400696, 24.068829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539364, 34.556522, 24.039053>,  <34.239216, 34.816231, 23.989426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539364, 34.556522, 24.039053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069753, 0.108870, 0.991606,
		-0.657332, -0.752722, 0.036404,
		0.750366, -0.649274, 0.124068,
		34.764473, 34.361740, 24.076273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499805, 34.728325, 23.852552>,  <34.239216, 34.816231, 23.989426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499805, 34.728325, 23.852552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224579, 34.998077, 23.959715>,  <33.059444, 35.159927, 24.024014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224579, 34.998077, 23.959715>,  <33.499805, 34.728325, 23.852552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224579, 34.998077, 23.959715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026701, 0.345418, -0.938069,
		-0.725158, -0.652606, -0.219664,
		-0.688065, 0.674383, 0.267908,
		33.018158, 35.200394, 24.040087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919209, 34.550194, 23.435711>,  <33.499805, 34.728325, 23.852552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919209, 34.550194, 23.435711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858437, 34.930565, 23.543533>,  <32.821972, 35.158787, 23.608227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858437, 34.930565, 23.543533>,  <32.919209, 34.550194, 23.435711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858437, 34.930565, 23.543533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118630, 0.288295, -0.950165,
		-0.981247, -0.112380, -0.156609,
		-0.151929, 0.950924, 0.269557,
		32.812859, 35.215843, 23.624401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270794, 34.768742, 23.138636>,  <32.919209, 34.550194, 23.435711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270794, 34.768742, 23.138636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.478958, 35.104424, 23.201771>,  <32.603855, 35.305832, 23.239653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.478958, 35.104424, 23.201771>,  <32.270794, 34.768742, 23.138636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478958, 35.104424, 23.201771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296417, 0.350884, -0.888266,
		-0.800819, 0.415475, 0.431357,
		0.520409, 0.839203, 0.157840,
		32.635082, 35.356186, 23.249123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894556, 35.274380, 22.871080>,  <32.270794, 34.768742, 23.138636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894556, 35.274380, 22.871080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.236477, 35.476826, 22.916975>,  <32.441628, 35.598293, 22.944511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.236477, 35.476826, 22.916975>,  <31.894556, 35.274380, 22.871080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236477, 35.476826, 22.916975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086095, 0.356333, -0.930384,
		-0.511765, 0.785415, 0.348167,
		0.854801, 0.506113, 0.114739,
		32.492916, 35.628658, 22.951397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795471, 35.902653, 22.401182>,  <31.894556, 35.274380, 22.871080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795471, 35.902653, 22.401182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190125, 35.856667, 22.447386>,  <32.426914, 35.829075, 22.475109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190125, 35.856667, 22.447386>,  <31.795471, 35.902653, 22.401182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190125, 35.856667, 22.447386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133138, 0.159831, -0.978125,
		0.093985, 0.980427, 0.173000,
		0.986631, -0.114962, 0.115511,
		32.486115, 35.822178, 22.482038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100483, 36.439125, 21.932491>,  <31.795471, 35.902653, 22.401182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100483, 36.439125, 21.932491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407494, 36.191601, 21.999403>,  <32.591698, 36.043087, 22.039549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407494, 36.191601, 21.999403>,  <32.100483, 36.439125, 21.932491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407494, 36.191601, 21.999403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412006, 0.276307, -0.868278,
		0.491078, 0.735343, 0.467025,
		0.767524, -0.618809, 0.167278,
		32.637753, 36.005959, 22.049587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694504, 36.855576, 21.736725>,  <32.100483, 36.439125, 21.932491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694504, 36.855576, 21.736725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.772171, 36.463669, 21.717304>,  <32.818771, 36.228523, 21.705652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.772171, 36.463669, 21.717304>,  <32.694504, 36.855576, 21.736725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772171, 36.463669, 21.717304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515210, 0.143970, -0.844885,
		0.834780, 0.139036, 0.532740,
		0.194168, -0.979766, -0.048550,
		32.830421, 36.169739, 21.702740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224922, 36.705463, 22.251263>,  <32.694504, 36.855576, 21.736725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224922, 36.705463, 22.251263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067886, 37.065937, 22.177784>,  <32.973663, 37.282219, 22.133698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067886, 37.065937, 22.177784>,  <33.224922, 36.705463, 22.251263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067886, 37.065937, 22.177784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453256, -0.015787, 0.891240,
		0.800270, 0.433152, 0.414665,
		-0.392589, 0.901182, -0.183695,
		32.950111, 37.336292, 22.122675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184807, 37.040482, 22.936977>,  <33.224922, 36.705463, 22.251263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184807, 37.040482, 22.936977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905621, 37.233322, 22.725159>,  <32.738110, 37.349026, 22.598068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905621, 37.233322, 22.725159>,  <33.184807, 37.040482, 22.936977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905621, 37.233322, 22.725159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597385, 0.015837, 0.801798,
		0.394937, 0.875971, 0.276948,
		-0.697966, 0.482104, -0.529546,
		32.696232, 37.377953, 22.566296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927509, 37.539379, 23.348560>,  <33.184807, 37.040482, 22.936977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927509, 37.539379, 23.348560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642860, 37.484520, 23.072941>,  <32.472073, 37.451603, 22.907570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642860, 37.484520, 23.072941>,  <32.927509, 37.539379, 23.348560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642860, 37.484520, 23.072941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701853, 0.094644, 0.706006,
		-0.031612, 0.986019, -0.163608,
		-0.711620, -0.137148, -0.689049,
		32.429375, 37.443375, 22.866226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427029, 38.025593, 23.559952>,  <32.927509, 37.539379, 23.348560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427029, 38.025593, 23.559952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232502, 37.769680, 23.321899>,  <32.115788, 37.616131, 23.179068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232502, 37.769680, 23.321899>,  <32.427029, 38.025593, 23.559952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232502, 37.769680, 23.321899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752874, -0.038882, 0.657015,
		-0.443487, 0.767572, -0.462767,
		-0.486313, -0.639782, -0.595129,
		32.086609, 37.577744, 23.143360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682110, 38.321762, 23.430319>,  <32.427029, 38.025593, 23.559952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682110, 38.321762, 23.430319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.653770, 37.928757, 23.361435>,  <31.636766, 37.692955, 23.320105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.653770, 37.928757, 23.361435>,  <31.682110, 38.321762, 23.430319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653770, 37.928757, 23.361435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728993, -0.066838, 0.681250,
		-0.680844, 0.173807, -0.711507,
		-0.070850, -0.982509, -0.172211,
		31.632515, 37.634003, 23.309772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996338, 38.242912, 23.435600>,  <31.682110, 38.321762, 23.430319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996338, 38.242912, 23.435600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.137651, 37.874897, 23.503376>,  <31.222441, 37.654087, 23.544043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.137651, 37.874897, 23.503376>,  <30.996338, 38.242912, 23.435600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137651, 37.874897, 23.503376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640658, -0.105950, 0.760482,
		-0.681723, -0.377221, -0.626863,
		0.353286, -0.920043, 0.169441,
		31.243637, 37.598885, 23.554209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409651, 37.897804, 23.403509>,  <30.996338, 38.242912, 23.435600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409651, 37.897804, 23.403509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.691095, 37.702099, 23.609636>,  <30.859962, 37.584675, 23.733313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.691095, 37.702099, 23.609636>,  <30.409651, 37.897804, 23.403509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691095, 37.702099, 23.609636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674999, -0.233584, 0.699868,
		-0.222058, -0.840268, -0.494610,
		0.703610, -0.489273, 0.515312,
		30.902180, 37.555321, 23.764233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.806885, 38.115776, 18.575129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.703243, 37.828777, 18.833759>,  <36.641060, 37.656578, 18.988937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.703243, 37.828777, 18.833759>,  <36.806885, 38.115776, 18.575129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703243, 37.828777, 18.833759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130063, 0.689263, 0.712742,
		-0.957052, 0.100579, -0.271911,
		-0.259105, -0.717496, 0.646578,
		36.625511, 37.613529, 19.027733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221790, 38.344349, 18.905020>,  <36.806885, 38.115776, 18.575129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221790, 38.344349, 18.905020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.385010, 38.088234, 19.165339>,  <36.482941, 37.934566, 19.321529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.385010, 38.088234, 19.165339>,  <36.221790, 38.344349, 18.905020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385010, 38.088234, 19.165339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110297, 0.673046, 0.731330,
		-0.906273, -0.370199, 0.204014,
		0.408049, -0.640283, 0.650795,
		36.507423, 37.896149, 19.360577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789711, 38.388569, 19.462618>,  <36.221790, 38.344349, 18.905020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789711, 38.388569, 19.462618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.110809, 38.215652, 19.626923>,  <36.303467, 38.111900, 19.725506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.110809, 38.215652, 19.626923>,  <35.789711, 38.388569, 19.462618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110809, 38.215652, 19.626923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093066, 0.589559, 0.802346,
		-0.589018, -0.682306, 0.433032,
		0.802743, -0.432295, 0.410760,
		36.351631, 38.085964, 19.750151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648987, 38.102329, 20.223450>,  <35.789711, 38.388569, 19.462618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648987, 38.102329, 20.223450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.039810, 38.180714, 20.190079>,  <36.274303, 38.227745, 20.170057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.039810, 38.180714, 20.190079>,  <35.648987, 38.102329, 20.223450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039810, 38.180714, 20.190079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008862, 0.428773, 0.903369,
		0.212793, -0.881904, 0.420672,
		0.977057, 0.195959, -0.083425,
		36.332928, 38.239502, 20.165051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939495, 37.862328, 20.863142>,  <35.648987, 38.102329, 20.223450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939495, 37.862328, 20.863142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.231640, 38.093727, 20.717869>,  <36.406929, 38.232567, 20.630705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.231640, 38.093727, 20.717869>,  <35.939495, 37.862328, 20.863142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231640, 38.093727, 20.717869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155776, 0.376623, 0.913175,
		0.665056, -0.723527, 0.184956,
		0.730365, 0.578501, -0.363184,
		36.450748, 38.267277, 20.608913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528553, 37.769196, 21.287802>,  <35.939495, 37.862328, 20.863142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528553, 37.769196, 21.287802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.573551, 38.114895, 21.091675>,  <36.600552, 38.322315, 20.973999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.573551, 38.114895, 21.091675>,  <36.528553, 37.769196, 21.287802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573551, 38.114895, 21.091675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256184, 0.451541, 0.854681,
		0.960059, -0.221761, -0.170611,
		0.112497, 0.864253, -0.490318,
		36.607300, 38.374172, 20.944580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181332, 38.044456, 21.444958>,  <36.528553, 37.769196, 21.287802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181332, 38.044456, 21.444958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.931187, 38.340050, 21.344692>,  <36.781101, 38.517406, 21.284533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.931187, 38.340050, 21.344692>,  <37.181332, 38.044456, 21.444958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931187, 38.340050, 21.344692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118144, 0.407186, 0.905672,
		0.771342, 0.536756, -0.341943,
		-0.625359, 0.738981, -0.250665,
		36.743580, 38.561745, 21.269493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396069, 38.564983, 21.853973>,  <37.181332, 38.044456, 21.444958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396069, 38.564983, 21.853973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052830, 38.715919, 21.714676>,  <36.846886, 38.806480, 21.631098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052830, 38.715919, 21.714676>,  <37.396069, 38.564983, 21.853973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052830, 38.715919, 21.714676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129779, 0.496809, 0.858101,
		0.496809, 0.781533, -0.377342,
		-0.858101, 0.377342, -0.348246,
		36.795399, 38.829121, 21.610203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469135, 39.329403, 21.879393>,  <37.396069, 38.564983, 21.853973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469135, 39.329403, 21.879393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.071774, 39.285328, 21.892071>,  <36.833355, 39.258881, 21.899677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.071774, 39.285328, 21.892071>,  <37.469135, 39.329403, 21.879393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071774, 39.285328, 21.892071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021702, 0.452132, 0.891687,
		-0.112587, 0.885118, -0.451542,
		-0.993405, -0.110192, 0.031695,
		36.773750, 39.252270, 21.901579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186188, 39.962986, 22.054209>,  <37.469135, 39.329403, 21.879393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186188, 39.962986, 22.054209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.899158, 39.695278, 22.131325>,  <36.726940, 39.534653, 22.177593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.899158, 39.695278, 22.131325>,  <37.186188, 39.962986, 22.054209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899158, 39.695278, 22.131325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074666, 0.349129, 0.934095,
		-0.692470, 0.655887, -0.300497,
		-0.717573, -0.669270, 0.192789,
		36.683887, 39.494495, 22.189161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660812, 40.342499, 22.318336>,  <37.186188, 39.962986, 22.054209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660812, 40.342499, 22.318336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618393, 39.969002, 22.455088>,  <36.592941, 39.744904, 22.537138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618393, 39.969002, 22.455088>,  <36.660812, 40.342499, 22.318336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618393, 39.969002, 22.455088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050740, 0.348449, 0.935953,
		-0.993065, 0.081913, -0.084331,
		-0.106052, -0.933741, 0.341877,
		36.586578, 39.688881, 22.557652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103191, 40.388386, 22.799706>,  <36.660812, 40.342499, 22.318336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103191, 40.388386, 22.799706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.304688, 40.055264, 22.891520>,  <36.425583, 39.855389, 22.946608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.304688, 40.055264, 22.891520>,  <36.103191, 40.388386, 22.799706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304688, 40.055264, 22.891520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174522, 0.162121, 0.971215,
		-0.846045, -0.529295, -0.063677,
		0.503736, -0.832805, 0.229535,
		36.455807, 39.805424, 22.960381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412674, 40.008823, 22.705412>,  <36.103191, 40.388386, 22.799706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412674, 40.008823, 22.705412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.072426, 40.158211, 22.853447>,  <34.868279, 40.247845, 22.942268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.072426, 40.158211, 22.853447>,  <35.412674, 40.008823, 22.705412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072426, 40.158211, 22.853447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364080, 0.089435, -0.927064,
		-0.379331, -0.923320, 0.059898,
		-0.850620, 0.373471, 0.370088,
		34.817242, 40.270252, 22.964474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852371, 39.661503, 22.321730>,  <35.412674, 40.008823, 22.705412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852371, 39.661503, 22.321730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732601, 40.010868, 22.475351>,  <34.660740, 40.220486, 22.567524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732601, 40.010868, 22.475351>,  <34.852371, 39.661503, 22.321730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732601, 40.010868, 22.475351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419674, 0.240928, -0.875116,
		-0.856865, -0.423211, 0.294408,
		-0.299427, 0.873411, 0.384053,
		34.642773, 40.272892, 22.590567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157684, 39.733231, 22.140112>,  <34.852371, 39.661503, 22.321730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157684, 39.733231, 22.140112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.274433, 40.111259, 22.198952>,  <34.344482, 40.338078, 22.234255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.274433, 40.111259, 22.198952>,  <34.157684, 39.733231, 22.140112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274433, 40.111259, 22.198952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400565, 0.260444, -0.878474,
		-0.868537, 0.197483, 0.454582,
		0.291877, 0.945076, 0.147100,
		34.361996, 40.394783, 22.243082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612213, 40.139618, 21.885769>,  <34.157684, 39.733231, 22.140112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612213, 40.139618, 21.885769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901520, 40.415417, 21.901176>,  <34.075104, 40.580894, 21.910421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901520, 40.415417, 21.901176>,  <33.612213, 40.139618, 21.885769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901520, 40.415417, 21.901176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327282, 0.391359, -0.860072,
		-0.608088, 0.609456, 0.508716,
		0.723267, 0.689493, 0.038517,
		34.118500, 40.622265, 21.912731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293118, 40.790600, 21.647064>,  <33.612213, 40.139618, 21.885769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293118, 40.790600, 21.647064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686291, 40.831650, 21.586002>,  <33.922195, 40.856281, 21.549364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686291, 40.831650, 21.586002>,  <33.293118, 40.790600, 21.647064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686291, 40.831650, 21.586002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180806, 0.386392, -0.904439,
		-0.033833, 0.916608, 0.398354,
		0.982937, 0.102625, -0.152655,
		33.981171, 40.862438, 21.540205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375904, 41.369034, 21.269308>,  <33.293118, 40.790600, 21.647064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375904, 41.369034, 21.269308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.747238, 41.223740, 21.237692>,  <33.970039, 41.136562, 21.218721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.747238, 41.223740, 21.237692>,  <33.375904, 41.369034, 21.269308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747238, 41.223740, 21.237692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061450, 0.359649, -0.931062,
		0.366623, 0.859483, 0.356197,
		0.928338, -0.363237, -0.079041,
		34.025738, 41.114769, 21.213980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909321, 41.880043, 21.017168>,  <33.375904, 41.369034, 21.269308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909321, 41.880043, 21.017168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.041908, 41.513943, 20.925566>,  <34.121460, 41.294281, 20.870604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.041908, 41.513943, 20.925566>,  <33.909321, 41.880043, 21.017168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041908, 41.513943, 20.925566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094487, 0.273714, -0.957159,
		0.938722, 0.295632, 0.177208,
		0.331471, -0.915250, -0.229007,
		34.141350, 41.239368, 20.856863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457752, 42.039158, 20.544588>,  <33.909321, 41.880043, 21.017168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457752, 42.039158, 20.544588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.371727, 41.651428, 20.497002>,  <34.320110, 41.418789, 20.468451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.371727, 41.651428, 20.497002>,  <34.457752, 42.039158, 20.544588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371727, 41.651428, 20.497002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012086, 0.124449, -0.992152,
		0.976525, -0.211937, -0.038479,
		-0.215063, -0.969327, -0.118966,
		34.307209, 41.360630, 20.461311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728432, 41.840984, 19.940813>,  <34.457752, 42.039158, 20.544588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728432, 41.840984, 19.940813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.486813, 41.525795, 19.988506>,  <34.341839, 41.336681, 20.017122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.486813, 41.525795, 19.988506>,  <34.728432, 41.840984, 19.940813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486813, 41.525795, 19.988506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004267, -0.152811, -0.988246,
		0.796933, -0.596444, 0.095668,
		-0.604052, -0.787975, 0.119235,
		34.305595, 41.289402, 20.024277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115376, 41.153538, 19.684799>,  <34.728432, 41.840984, 19.940813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115376, 41.153538, 19.684799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.721092, 41.086205, 19.687321>,  <34.484520, 41.045803, 19.688833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.721092, 41.086205, 19.687321>,  <35.115376, 41.153538, 19.684799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721092, 41.086205, 19.687321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052922, -0.344992, -0.937113,
		0.159923, -0.923387, 0.348971,
		-0.985710, -0.168334, 0.006305,
		34.425381, 41.035706, 19.689213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989594, 40.474056, 19.409662>,  <35.115376, 41.153538, 19.684799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989594, 40.474056, 19.409662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.634563, 40.654861, 19.374140>,  <34.421543, 40.763344, 19.352825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.634563, 40.654861, 19.374140>,  <34.989594, 40.474056, 19.409662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634563, 40.654861, 19.374140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102996, -0.382631, -0.918142,
		-0.449000, -0.805774, 0.386170,
		-0.887576, 0.452020, -0.088810,
		34.368290, 40.790466, 19.347498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591171, 39.964191, 19.158268>,  <34.989594, 40.474056, 19.409662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591171, 39.964191, 19.158268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.407230, 40.309036, 19.073135>,  <34.296867, 40.515942, 19.022057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.407230, 40.309036, 19.073135>,  <34.591171, 39.964191, 19.158268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407230, 40.309036, 19.073135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234777, -0.349186, -0.907165,
		-0.856396, -0.367195, 0.362978,
		-0.459853, 0.862112, -0.212832,
		34.269276, 40.567669, 19.009285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892159, 39.509220, 19.672497>,  <34.591171, 39.964191, 19.158268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892159, 39.509220, 19.672497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.216099, 39.275185, 19.655499>,  <35.410465, 39.134762, 19.645300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.216099, 39.275185, 19.655499>,  <34.892159, 39.509220, 19.672497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216099, 39.275185, 19.655499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436161, 0.552101, 0.710597,
		-0.392300, -0.594016, 0.702314,
		0.809854, -0.585090, -0.042497,
		35.459057, 39.099659, 19.642750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115505, 39.411591, 20.442009>,  <34.892159, 39.509220, 19.672497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115505, 39.411591, 20.442009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.740307, 39.460682, 20.312326>,  <34.515190, 39.490135, 20.234516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.740307, 39.460682, 20.312326>,  <35.115505, 39.411591, 20.442009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740307, 39.460682, 20.312326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319776, -0.667413, 0.672535,
		-0.133843, 0.734506, 0.665272,
		-0.937992, 0.122724, -0.324206,
		34.458908, 39.497498, 20.215065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599716, 39.590992, 20.986130>,  <35.115505, 39.411591, 20.442009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599716, 39.590992, 20.986130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.405125, 39.397743, 20.694944>,  <34.288368, 39.281796, 20.520233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.405125, 39.397743, 20.694944>,  <34.599716, 39.590992, 20.986130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405125, 39.397743, 20.694944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454247, -0.571876, 0.683094,
		-0.746322, 0.662987, 0.058750,
		-0.486481, -0.483121, -0.727964,
		34.259182, 39.252808, 20.476555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890633, 39.528740, 21.169952>,  <34.599716, 39.590992, 20.986130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890633, 39.528740, 21.169952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.959927, 39.234638, 20.907843>,  <34.001503, 39.058178, 20.750576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.959927, 39.234638, 20.907843>,  <33.890633, 39.528740, 21.169952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959927, 39.234638, 20.907843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523463, -0.632315, 0.571108,
		-0.834252, 0.244078, -0.494418,
		0.173233, -0.735257, -0.655276,
		34.011898, 39.014061, 20.711260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304726, 39.272152, 21.005856>,  <33.890633, 39.528740, 21.169952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304726, 39.272152, 21.005856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.545990, 38.968288, 20.908592>,  <33.690746, 38.785973, 20.850233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.545990, 38.968288, 20.908592>,  <33.304726, 39.272152, 21.005856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545990, 38.968288, 20.908592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610709, -0.635928, 0.471838,
		-0.513066, -0.136093, -0.847492,
		0.603158, -0.759654, -0.243160,
		33.726936, 38.740391, 20.835644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859673, 38.698292, 20.823078>,  <33.304726, 39.272152, 21.005856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859673, 38.698292, 20.823078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.210300, 38.533195, 20.922083>,  <33.420677, 38.434135, 20.981485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.210300, 38.533195, 20.922083>,  <32.859673, 38.698292, 20.823078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210300, 38.533195, 20.922083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469413, -0.619794, 0.628893,
		-0.106164, -0.667457, -0.737042,
		0.876573, -0.412743, 0.247513,
		33.473274, 38.409374, 20.996336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831875, 38.107773, 20.439089>,  <32.859673, 38.698292, 20.823078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831875, 38.107773, 20.439089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105705, 38.053116, 20.725496>,  <33.270004, 38.020321, 20.897341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105705, 38.053116, 20.725496>,  <32.831875, 38.107773, 20.439089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105705, 38.053116, 20.725496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552304, -0.738288, 0.387157,
		0.475724, -0.660498, -0.580886,
		0.684578, -0.136646, 0.716017,
		33.311077, 38.012123, 20.940302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818588, 37.344978, 20.547726>,  <32.831875, 38.107773, 20.439089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818588, 37.344978, 20.547726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.975124, 37.534924, 20.863031>,  <33.069046, 37.648891, 21.052216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.975124, 37.534924, 20.863031>,  <32.818588, 37.344978, 20.547726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975124, 37.534924, 20.863031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493277, -0.614881, 0.615304,
		0.776873, -0.629625, -0.006388,
		0.391339, 0.474863, 0.788264,
		33.092525, 37.677383, 21.099510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884949, 36.853870, 21.023628>,  <32.818588, 37.344978, 20.547726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884949, 36.853870, 21.023628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.897938, 37.182648, 21.251083>,  <32.905731, 37.379913, 21.387556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.897938, 37.182648, 21.251083>,  <32.884949, 36.853870, 21.023628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897938, 37.182648, 21.251083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501358, -0.478785, 0.720698,
		0.864631, -0.308493, 0.396543,
		0.032471, 0.821947, 0.568638,
		32.907681, 37.429234, 21.421675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464870, 36.848583, 21.575470>,  <32.884949, 36.853870, 21.023628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464870, 36.848583, 21.575470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.265602, 36.516106, 21.476725>,  <33.146042, 36.316620, 21.417477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.265602, 36.516106, 21.476725>,  <33.464870, 36.848583, 21.575470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265602, 36.516106, 21.476725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353032, 0.065607, -0.933308,
		0.791957, -0.552097, 0.260755,
		-0.498169, -0.831195, -0.246865,
		33.116150, 36.266747, 21.402664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740845, 36.754395, 20.961140>,  <33.464870, 36.848583, 21.575470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740845, 36.754395, 20.961140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.443321, 36.488403, 20.934160>,  <33.264809, 36.328808, 20.917973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.443321, 36.488403, 20.934160>,  <33.740845, 36.754395, 20.961140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443321, 36.488403, 20.934160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192814, -0.116850, -0.974253,
		0.639979, -0.737662, 0.215132,
		-0.743807, -0.664982, -0.067450,
		33.220181, 36.288910, 20.913925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084625, 36.227436, 20.649649>,  <33.740845, 36.754395, 20.961140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084625, 36.227436, 20.649649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686897, 36.207802, 20.611868>,  <33.448261, 36.196022, 20.589199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686897, 36.207802, 20.611868>,  <34.084625, 36.227436, 20.649649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686897, 36.207802, 20.611868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095747, -0.024742, -0.995098,
		0.046514, -0.998488, 0.029302,
		-0.994318, -0.049091, -0.094451,
		33.388603, 36.193077, 20.583532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051109, 35.757881, 20.125408>,  <34.084625, 36.227436, 20.649649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051109, 35.757881, 20.125408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.693485, 35.935276, 20.150599>,  <33.478909, 36.041714, 20.165712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.693485, 35.935276, 20.150599>,  <34.051109, 35.757881, 20.125408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693485, 35.935276, 20.150599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090444, -0.041032, -0.995056,
		-0.438716, -0.895338, 0.076796,
		-0.894063, 0.443492, 0.062976,
		33.425266, 36.068325, 20.169491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780727, 35.493561, 19.630667>,  <34.051109, 35.757881, 20.125408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780727, 35.493561, 19.630667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.512146, 35.784985, 19.684841>,  <33.350998, 35.959839, 19.717346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.512146, 35.784985, 19.684841>,  <33.780727, 35.493561, 19.630667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512146, 35.784985, 19.684841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107436, 0.085128, -0.990561,
		-0.733214, -0.679670, 0.021114,
		-0.671457, 0.728561, 0.135438,
		33.310707, 36.003551, 19.725473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236225, 35.262852, 19.307467>,  <33.780727, 35.493561, 19.630667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236225, 35.262852, 19.307467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190632, 35.659924, 19.323456>,  <33.163277, 35.898167, 19.333050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190632, 35.659924, 19.323456>,  <33.236225, 35.262852, 19.307467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190632, 35.659924, 19.323456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124580, 0.025635, -0.991878,
		-0.985641, -0.118036, 0.120746,
		-0.113982, 0.992678, 0.039971,
		33.156437, 35.957726, 19.335447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726807, 35.357735, 18.847029>,  <33.236225, 35.262852, 19.307467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726807, 35.357735, 18.847029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.935780, 35.693863, 18.904888>,  <33.061161, 35.895542, 18.939604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.935780, 35.693863, 18.904888>,  <32.726807, 35.357735, 18.847029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935780, 35.693863, 18.904888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190904, 0.050066, -0.980331,
		-0.831038, 0.539768, -0.134266,
		0.522429, 0.840324, 0.144651,
		33.092506, 35.945961, 18.948284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313217, 35.933548, 18.489868>,  <32.726807, 35.357735, 18.847029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313217, 35.933548, 18.489868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.705929, 35.994831, 18.534822>,  <32.941555, 36.031601, 18.561794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.705929, 35.994831, 18.534822>,  <32.313217, 35.933548, 18.489868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705929, 35.994831, 18.534822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106594, 0.045535, -0.993259,
		-0.157291, 0.987145, 0.028374,
		0.981783, 0.153206, 0.112386,
		33.000465, 36.040794, 18.568539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511883, 36.280968, 17.892061>,  <32.313217, 35.933548, 18.489868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511883, 36.280968, 17.892061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879425, 36.204147, 18.029938>,  <33.099953, 36.158054, 18.112663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879425, 36.204147, 18.029938>,  <32.511883, 36.280968, 17.892061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879425, 36.204147, 18.029938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358056, 0.038745, -0.932896,
		0.165808, 0.980620, 0.104366,
		0.918860, -0.192051, 0.344692,
		33.155083, 36.146534, 18.133345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.304432, 37.841091, 33.295906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511620, 37.502750, 33.346901>,  <34.635933, 37.299747, 33.377499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511620, 37.502750, 33.346901>,  <34.304432, 37.841091, 33.295906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511620, 37.502750, 33.346901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350798, -0.345975, -0.870197,
		0.780162, 0.406008, -0.475925,
		0.517965, -0.845848, 0.127491,
		34.667007, 37.248997, 33.385147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450104, 37.662914, 32.602871>,  <34.304432, 37.841091, 33.295906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450104, 37.662914, 32.602871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518398, 37.321907, 32.800480>,  <34.559376, 37.117302, 32.919044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518398, 37.321907, 32.800480>,  <34.450104, 37.662914, 32.602871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518398, 37.321907, 32.800480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342020, -0.521486, -0.781713,
		0.924052, -0.035500, -0.380615,
		0.170735, -0.852521, 0.494022,
		34.569618, 37.066151, 32.948685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832561, 37.330990, 32.076172>,  <34.450104, 37.662914, 32.602871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832561, 37.330990, 32.076172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700603, 37.053753, 32.332542>,  <34.621429, 36.887409, 32.486366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700603, 37.053753, 32.332542>,  <34.832561, 37.330990, 32.076172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700603, 37.053753, 32.332542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322066, -0.555570, -0.766560,
		0.887380, -0.459305, -0.039943,
		-0.329894, -0.693095, 0.640929,
		34.601635, 36.845825, 32.524822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082565, 36.755619, 31.728138>,  <34.832561, 37.330990, 32.076172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082565, 36.755619, 31.728138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752483, 36.689884, 31.944296>,  <34.554432, 36.650444, 32.073990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752483, 36.689884, 31.944296>,  <35.082565, 36.755619, 31.728138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752483, 36.689884, 31.944296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399535, -0.506445, -0.764124,
		0.399253, -0.846467, 0.352264,
		-0.825208, -0.164337, 0.540393,
		34.504921, 36.640583, 32.106415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897923, 36.071316, 31.736452>,  <35.082565, 36.755619, 31.728138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897923, 36.071316, 31.736452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553436, 36.264153, 31.800808>,  <34.346745, 36.379856, 31.839422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553436, 36.264153, 31.800808>,  <34.897923, 36.071316, 31.736452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553436, 36.264153, 31.800808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419194, -0.494814, -0.761206,
		-0.287363, -0.723010, 0.628235,
		-0.861219, 0.482095, 0.160891,
		34.295071, 36.408783, 31.849075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564152, 35.609180, 31.431416>,  <34.897923, 36.071316, 31.736452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564152, 35.609180, 31.431416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274197, 35.875790, 31.501026>,  <34.100224, 36.035755, 31.542791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274197, 35.875790, 31.501026>,  <34.564152, 35.609180, 31.431416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274197, 35.875790, 31.501026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599609, -0.486131, -0.635724,
		-0.339125, -0.565176, 0.752044,
		-0.724888, 0.666522, 0.174026,
		34.056732, 36.075748, 31.553234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959423, 35.245052, 31.480871>,  <34.564152, 35.609180, 31.431416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959423, 35.245052, 31.480871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827782, 35.612495, 31.393372>,  <33.748798, 35.832962, 31.340872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827782, 35.612495, 31.393372>,  <33.959423, 35.245052, 31.480871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827782, 35.612495, 31.393372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600673, -0.382396, -0.702115,
		-0.728617, -0.099671, 0.677630,
		-0.329103, 0.918607, -0.218751,
		33.729050, 35.888077, 31.327745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226463, 35.274414, 31.596481>,  <33.959423, 35.245052, 31.480871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226463, 35.274414, 31.596481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313725, 35.560936, 31.331356>,  <33.366081, 35.732849, 31.172281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313725, 35.560936, 31.331356>,  <33.226463, 35.274414, 31.596481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313725, 35.560936, 31.331356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648189, -0.401375, -0.647108,
		-0.729562, 0.570795, 0.376739,
		0.218153, 0.716303, -0.662811,
		33.379169, 35.775826, 31.132513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607666, 35.369591, 31.414612>,  <33.226463, 35.274414, 31.596481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607666, 35.369591, 31.414612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829742, 35.546112, 31.132614>,  <32.962990, 35.652023, 30.963415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829742, 35.546112, 31.132614>,  <32.607666, 35.369591, 31.414612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829742, 35.546112, 31.132614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685434, -0.237356, -0.688362,
		-0.471109, 0.865400, 0.170703,
		0.555191, 0.441299, -0.704995,
		32.996300, 35.678501, 30.921116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129326, 35.677814, 31.060263>,  <32.607666, 35.369591, 31.414612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129326, 35.677814, 31.060263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451046, 35.618641, 30.830055>,  <32.644077, 35.583138, 30.691931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451046, 35.618641, 30.830055>,  <32.129326, 35.677814, 31.060263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451046, 35.618641, 30.830055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593013, -0.137980, -0.793283,
		0.037940, 0.979325, -0.198701,
		0.804299, -0.147929, -0.575518,
		32.692337, 35.574261, 30.657400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916489, 35.881077, 30.339333>,  <32.129326, 35.677814, 31.060263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916489, 35.881077, 30.339333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.255833, 35.673252, 30.298651>,  <32.459438, 35.548557, 30.274242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.255833, 35.673252, 30.298651>,  <31.916489, 35.881077, 30.339333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255833, 35.673252, 30.298651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340533, -0.388425, -0.856250,
		0.405370, 0.761040, -0.506452,
		0.848359, -0.519561, -0.101704,
		32.510342, 35.517384, 30.268139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248333, 36.151627, 29.758286>,  <31.916489, 35.881077, 30.339333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248333, 36.151627, 29.758286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370346, 35.778629, 29.835648>,  <32.443554, 35.554832, 29.882065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370346, 35.778629, 29.835648>,  <32.248333, 36.151627, 29.758286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370346, 35.778629, 29.835648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391792, -0.307981, -0.866976,
		0.868016, 0.188685, -0.459289,
		0.305037, -0.932494, 0.193407,
		32.461857, 35.498882, 29.893669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324661, 36.941093, 29.669312>,  <32.248333, 36.151627, 29.758286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324661, 36.941093, 29.669312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981718, 37.138298, 29.610163>,  <31.775951, 37.256622, 29.574673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981718, 37.138298, 29.610163>,  <32.324661, 36.941093, 29.669312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981718, 37.138298, 29.610163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093387, 0.133525, 0.986636,
		0.506172, 0.859713, -0.068437,
		-0.857362, 0.493016, -0.147873,
		31.724510, 37.286201, 29.565802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355274, 37.644436, 29.956652>,  <32.324661, 36.941093, 29.669312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355274, 37.644436, 29.956652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968527, 37.543922, 29.938663>,  <31.736479, 37.483616, 29.927870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968527, 37.543922, 29.938663>,  <32.355274, 37.644436, 29.956652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968527, 37.543922, 29.938663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017980, -0.108698, 0.993912,
		-0.254638, 0.961792, 0.100579,
		-0.966869, -0.251279, -0.044972,
		31.678467, 37.468540, 29.925173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072186, 38.054466, 30.428499>,  <32.355274, 37.644436, 29.956652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072186, 38.054466, 30.428499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796030, 37.772461, 30.363607>,  <31.630337, 37.603260, 30.324673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796030, 37.772461, 30.363607>,  <32.072186, 38.054466, 30.428499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796030, 37.772461, 30.363607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208148, -0.021185, 0.977868,
		-0.692845, 0.708880, -0.132121,
		-0.690392, -0.705011, -0.162229,
		31.588913, 37.560959, 30.314939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329304, 38.285362, 30.786955>,  <32.072186, 38.054466, 30.428499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329304, 38.285362, 30.786955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.334305, 37.894001, 30.704416>,  <31.337305, 37.659184, 30.654894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.334305, 37.894001, 30.704416>,  <31.329304, 38.285362, 30.786955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334305, 37.894001, 30.704416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386360, -0.195061, 0.901486,
		-0.922263, 0.068455, -0.380453,
		0.012501, -0.978399, -0.206346,
		31.338055, 37.600483, 30.642513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588755, 38.061474, 30.886608>,  <31.329304, 38.285362, 30.786955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588755, 38.061474, 30.886608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873209, 37.783855, 30.931486>,  <31.043880, 37.617283, 30.958412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873209, 37.783855, 30.931486>,  <30.588755, 38.061474, 30.886608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873209, 37.783855, 30.931486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362247, -0.224947, 0.904531,
		-0.602549, -0.683885, -0.411384,
		0.711134, -0.694047, 0.112194,
		31.086550, 37.575642, 30.965145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268484, 37.550564, 31.282017>,  <30.588755, 38.061474, 30.886608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268484, 37.550564, 31.282017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.658615, 37.474159, 31.326298>,  <30.892693, 37.428318, 31.352867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.658615, 37.474159, 31.326298>,  <30.268484, 37.550564, 31.282017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658615, 37.474159, 31.326298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160360, -0.268293, 0.949897,
		-0.151736, -0.944211, -0.292303,
		0.975326, -0.191007, 0.110704,
		30.951212, 37.416855, 31.359509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277517, 37.110428, 31.700356>,  <30.268484, 37.550564, 31.282017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277517, 37.110428, 31.700356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.673119, 37.151379, 31.743053>,  <30.910479, 37.175949, 31.768673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.673119, 37.151379, 31.743053>,  <30.277517, 37.110428, 31.700356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673119, 37.151379, 31.743053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064477, -0.351104, 0.934114,
		0.133108, -0.930723, -0.340642,
		0.989002, 0.102374, 0.106745,
		30.969820, 37.182091, 31.775078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586052, 36.519989, 32.131718>,  <30.277517, 37.110428, 31.700356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586052, 36.519989, 32.131718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872751, 36.797642, 32.158405>,  <31.044771, 36.964233, 32.174419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872751, 36.797642, 32.158405>,  <30.586052, 36.519989, 32.131718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872751, 36.797642, 32.158405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204119, -0.300327, 0.931740,
		0.666788, -0.654205, -0.356945,
		0.716749, 0.694132, 0.066719,
		31.087776, 37.005882, 32.178421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191338, 36.204884, 32.311058>,  <30.586052, 36.519989, 32.131718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191338, 36.204884, 32.311058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.216021, 36.581272, 32.444183>,  <31.230829, 36.807106, 32.524059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.216021, 36.581272, 32.444183>,  <31.191338, 36.204884, 32.311058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216021, 36.581272, 32.444183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238449, -0.337693, 0.910552,
		0.969193, 0.023172, -0.245211,
		0.061706, 0.940971, 0.332815,
		31.234533, 36.863564, 32.544029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698187, 36.193684, 32.889042>,  <31.191338, 36.204884, 32.311058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698187, 36.193684, 32.889042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537689, 36.552914, 32.961113>,  <31.441391, 36.768452, 33.004356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537689, 36.552914, 32.961113>,  <31.698187, 36.193684, 32.889042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537689, 36.552914, 32.961113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198891, -0.106589, 0.974208,
		0.894117, 0.426730, -0.135852,
		-0.401243, 0.898076, 0.180176,
		31.417316, 36.822338, 33.015167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044498, 36.477409, 33.496956>,  <31.698187, 36.193684, 32.889042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044498, 36.477409, 33.496956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.694700, 36.668018, 33.460762>,  <31.484821, 36.782383, 33.439045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.694700, 36.668018, 33.460762>,  <32.044498, 36.477409, 33.496956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694700, 36.668018, 33.460762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123253, -0.037894, 0.991652,
		0.469117, 0.878344, 0.091871,
		-0.874493, 0.476524, -0.090482,
		31.432352, 36.810974, 33.433617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086506, 36.910645, 34.068039>,  <32.044498, 36.477409, 33.496956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086506, 36.910645, 34.068039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705095, 36.886162, 33.950035>,  <31.476248, 36.871471, 33.879230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705095, 36.886162, 33.950035>,  <32.086506, 36.910645, 34.068039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705095, 36.886162, 33.950035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291839, -0.055762, 0.954841,
		-0.074889, 0.996566, 0.035310,
		-0.953531, -0.061203, -0.295013,
		31.419037, 36.867802, 33.861530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660551, 37.525032, 34.408318>,  <32.086506, 36.910645, 34.068039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660551, 37.525032, 34.408318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416819, 37.228874, 34.294807>,  <31.270578, 37.051178, 34.226700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416819, 37.228874, 34.294807>,  <31.660551, 37.525032, 34.408318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416819, 37.228874, 34.294807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261538, -0.150191, 0.953436,
		-0.748541, 0.655177, -0.102125,
		-0.609331, -0.740396, -0.283778,
		31.234020, 37.006756, 34.209675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199501, 38.031845, 34.141613>,  <31.660551, 37.525032, 34.408318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199501, 38.031845, 34.141613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489220, 38.300758, 34.080372>,  <32.663052, 38.462105, 34.043629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489220, 38.300758, 34.080372>,  <32.199501, 38.031845, 34.141613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489220, 38.300758, 34.080372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363261, 0.183336, -0.913471,
		-0.586039, 0.717237, 0.377002,
		0.724293, 0.672279, -0.153102,
		32.706509, 38.502441, 34.034443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949484, 38.673958, 33.864544>,  <32.199501, 38.031845, 34.141613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949484, 38.673958, 33.864544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324375, 38.610519, 33.740314>,  <32.549309, 38.572456, 33.665779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324375, 38.610519, 33.740314>,  <31.949484, 38.673958, 33.864544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324375, 38.610519, 33.740314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309884, 0.029676, -0.950311,
		0.159928, 0.986898, -0.021332,
		0.937227, -0.158591, -0.310570,
		32.605545, 38.562943, 33.647144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280861, 39.242146, 33.456760>,  <31.949484, 38.673958, 33.864544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280861, 39.242146, 33.456760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382854, 38.867294, 33.361446>,  <32.444050, 38.642384, 33.304256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382854, 38.867294, 33.361446>,  <32.280861, 39.242146, 33.456760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382854, 38.867294, 33.361446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501126, 0.082682, -0.861415,
		0.826955, 0.339060, -0.448535,
		0.254985, -0.937124, -0.238286,
		32.459351, 38.586159, 33.289959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817837, 39.689972, 33.097076>,  <32.280861, 39.242146, 33.456760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817837, 39.689972, 33.097076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215195, 39.732834, 33.113503>,  <32.453609, 39.758553, 33.123360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215195, 39.732834, 33.113503>,  <31.817837, 39.689972, 33.097076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215195, 39.732834, 33.113503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022426, 0.169667, -0.985246,
		-0.112542, 0.979659, 0.166143,
		0.993394, 0.107155, 0.041065,
		32.513214, 39.764980, 33.125820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000942, 40.254452, 32.683197>,  <31.817837, 39.689972, 33.097076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000942, 40.254452, 32.683197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339455, 40.043228, 32.711369>,  <32.542564, 39.916496, 32.728271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339455, 40.043228, 32.711369>,  <32.000942, 40.254452, 32.683197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339455, 40.043228, 32.711369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163839, 0.132194, -0.977590,
		0.506912, 0.838858, 0.198390,
		0.846285, -0.528056, 0.070426,
		32.593342, 39.884811, 32.732498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588852, 40.529369, 32.348454>,  <32.000942, 40.254452, 32.683197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588852, 40.529369, 32.348454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664936, 40.136673, 32.348991>,  <32.710587, 39.901054, 32.349316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664936, 40.136673, 32.348991>,  <32.588852, 40.529369, 32.348454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664936, 40.136673, 32.348991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026858, 0.003834, -0.999632,
		0.981377, 0.190173, 0.027096,
		0.190206, -0.981743, 0.001345,
		32.721996, 39.842152, 32.349396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163166, 40.313595, 31.963419>,  <32.588852, 40.529369, 32.348454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163166, 40.313595, 31.963419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938900, 39.985931, 31.915024>,  <32.804340, 39.789333, 31.885986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938900, 39.985931, 31.915024>,  <33.163166, 40.313595, 31.963419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938900, 39.985931, 31.915024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356167, -0.106667, -0.928314,
		0.747529, -0.563564, 0.351561,
		-0.560665, -0.819157, -0.120986,
		32.770702, 39.740185, 31.878727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591606, 39.821373, 31.742992>,  <33.163166, 40.313595, 31.963419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591606, 39.821373, 31.742992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223091, 39.765892, 31.597673>,  <33.001980, 39.732605, 31.510483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223091, 39.765892, 31.597673>,  <33.591606, 39.821373, 31.742992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223091, 39.765892, 31.597673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375166, -0.071154, -0.924223,
		0.102339, -0.987775, 0.117589,
		-0.921291, -0.138700, -0.363298,
		32.946705, 39.724281, 31.488684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849239, 39.517658, 31.184761>,  <33.591606, 39.821373, 31.742992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849239, 39.517658, 31.184761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450352, 39.529774, 31.157541>,  <33.211018, 39.537045, 31.141209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450352, 39.529774, 31.157541>,  <33.849239, 39.517658, 31.184761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450352, 39.529774, 31.157541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067213, -0.027838, -0.997350,
		-0.032149, -0.999152, 0.025721,
		-0.997221, 0.030335, -0.068051,
		33.151184, 39.538860, 31.137127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688046, 38.979256, 30.700706>,  <33.849239, 39.517658, 31.184761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688046, 38.979256, 30.700706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386772, 39.242104, 30.688597>,  <33.206009, 39.399811, 30.681332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386772, 39.242104, 30.688597>,  <33.688046, 38.979256, 30.700706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386772, 39.242104, 30.688597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208252, 0.194536, -0.958534,
		-0.623979, -0.728254, -0.283367,
		-0.753181, 0.657117, -0.030274,
		33.160816, 39.439240, 30.679514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300930, 38.776215, 30.159990>,  <33.688046, 38.979256, 30.700706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300930, 38.776215, 30.159990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189796, 39.156216, 30.216980>,  <33.123116, 39.384216, 30.251173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189796, 39.156216, 30.216980>,  <33.300930, 38.776215, 30.159990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189796, 39.156216, 30.216980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172022, 0.195118, -0.965576,
		-0.945101, -0.243763, -0.217632,
		-0.277835, 0.950005, 0.142473,
		33.106445, 39.441216, 30.259722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947968, 38.974972, 29.588030>,  <33.300930, 38.776215, 30.159990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947968, 38.974972, 29.588030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021538, 39.337505, 29.740202>,  <33.065681, 39.555027, 29.831505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021538, 39.337505, 29.740202>,  <32.947968, 38.974972, 29.588030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021538, 39.337505, 29.740202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403839, 0.283183, -0.869898,
		-0.896150, 0.313632, -0.313927,
		0.183929, 0.906335, 0.380431,
		33.076717, 39.609406, 29.854332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505672, 39.533520, 29.078161>,  <32.947968, 38.974972, 29.588030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505672, 39.533520, 29.078161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796986, 39.698177, 29.297304>,  <32.971775, 39.796970, 29.428789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796986, 39.698177, 29.297304>,  <32.505672, 39.533520, 29.078161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796986, 39.698177, 29.297304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236893, 0.598949, -0.764946,
		-0.643025, 0.686883, 0.338690,
		0.728286, 0.411645, 0.547857,
		33.015472, 39.821671, 29.461660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415276, 40.320385, 29.005791>,  <32.505672, 39.533520, 29.078161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415276, 40.320385, 29.005791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795593, 40.279957, 29.122944>,  <33.023785, 40.255699, 29.193235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795593, 40.279957, 29.122944>,  <32.415276, 40.320385, 29.005791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795593, 40.279957, 29.122944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280416, 0.682732, -0.674717,
		-0.131767, 0.723645, 0.677478,
		0.950791, -0.101070, 0.292883,
		33.080830, 40.249638, 29.210808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692238, 40.922249, 28.848040>,  <32.415276, 40.320385, 29.005791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692238, 40.922249, 28.848040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011642, 40.686878, 28.898838>,  <33.203285, 40.545654, 28.929317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011642, 40.686878, 28.898838>,  <32.692238, 40.922249, 28.848040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011642, 40.686878, 28.898838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434229, 0.416921, -0.798513,
		0.416921, 0.692768, 0.588429,
		0.798513, -0.588429, 0.126997,
		33.251198, 40.510349, 28.936937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311760, 41.401413, 28.822531>,  <32.692238, 40.922249, 28.848040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311760, 41.401413, 28.822531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462776, 41.037750, 28.752224>,  <33.553387, 40.819553, 28.710041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462776, 41.037750, 28.752224>,  <33.311760, 41.401413, 28.822531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462776, 41.037750, 28.752224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503947, 0.360973, -0.784688,
		0.776852, 0.207676, 0.594450,
		0.377541, -0.909158, -0.175765,
		33.576038, 40.765003, 28.699495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163372, 41.456490, 28.576197>,  <33.311760, 41.401413, 28.822531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163372, 41.456490, 28.576197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022293, 41.105824, 28.445316>,  <33.937645, 40.895424, 28.366787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022293, 41.105824, 28.445316>,  <34.163372, 41.456490, 28.576197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022293, 41.105824, 28.445316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462357, 0.140736, -0.875454,
		0.813530, -0.460056, 0.355695,
		-0.352698, -0.876665, -0.327203,
		33.916485, 40.842823, 28.347155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682159, 41.195858, 28.196972>,  <34.163372, 41.456490, 28.576197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682159, 41.195858, 28.196972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368690, 40.969032, 28.095545>,  <34.180611, 40.832935, 28.034689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368690, 40.969032, 28.095545>,  <34.682159, 41.195858, 28.196972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368690, 40.969032, 28.095545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329555, -0.033527, -0.943541,
		0.526550, -0.822989, 0.213154,
		-0.783670, -0.567068, -0.253566,
		34.133591, 40.798912, 28.019474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942589, 40.562103, 27.774441>,  <34.682159, 41.195858, 28.196972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942589, 40.562103, 27.774441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562542, 40.638016, 27.675438>,  <34.334515, 40.683563, 27.616035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562542, 40.638016, 27.675438>,  <34.942589, 40.562103, 27.774441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562542, 40.638016, 27.675438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229829, -0.110452, -0.966943,
		-0.210852, -0.975593, 0.061324,
		-0.950116, 0.189788, -0.247509,
		34.277508, 40.694950, 27.601185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745323, 40.012547, 27.387989>,  <34.942589, 40.562103, 27.774441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745323, 40.012547, 27.387989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478313, 40.284458, 27.266459>,  <34.318108, 40.447605, 27.193541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478313, 40.284458, 27.266459>,  <34.745323, 40.012547, 27.387989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478313, 40.284458, 27.266459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116565, -0.307611, -0.944345,
		-0.735408, -0.665788, 0.126099,
		-0.667523, 0.679780, -0.303828,
		34.278057, 40.488392, 27.175310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432137, 39.678757, 26.754824>,  <34.745323, 40.012547, 27.387989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432137, 39.678757, 26.754824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334381, 40.065643, 26.727190>,  <34.275726, 40.297775, 26.710609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334381, 40.065643, 26.727190>,  <34.432137, 39.678757, 26.754824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334381, 40.065643, 26.727190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005227, -0.072556, -0.997350,
		-0.969663, -0.243379, 0.022788,
		-0.244387, 0.967214, -0.069083,
		34.261066, 40.355808, 26.706465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877995, 39.788826, 26.311918>,  <34.432137, 39.678757, 26.754824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877995, 39.788826, 26.311918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042961, 40.153000, 26.299158>,  <34.141941, 40.371506, 26.291502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042961, 40.153000, 26.299158>,  <33.877995, 39.788826, 26.311918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042961, 40.153000, 26.299158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183120, -0.117153, -0.976085,
		-0.892401, 0.396712, -0.215035,
		0.412417, 0.910437, -0.031901,
		34.166687, 40.426132, 26.289587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525089, 40.037201, 25.781374>,  <33.877995, 39.788826, 26.311918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525089, 40.037201, 25.781374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838974, 40.281597, 25.823170>,  <34.027306, 40.428234, 25.848248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838974, 40.281597, 25.823170>,  <33.525089, 40.037201, 25.781374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838974, 40.281597, 25.823170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058933, 0.094264, -0.993801,
		-0.617050, 0.786008, 0.037963,
		0.784714, 0.610988, 0.104488,
		34.074387, 40.464893, 25.854517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405693, 40.629417, 25.445541>,  <33.525089, 40.037201, 25.781374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405693, 40.629417, 25.445541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804634, 40.655094, 25.459251>,  <34.043999, 40.670502, 25.467478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804634, 40.655094, 25.459251>,  <33.405693, 40.629417, 25.445541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804634, 40.655094, 25.459251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023136, 0.166830, -0.985714,
		-0.068992, 0.983894, 0.164902,
		0.997349, 0.064191, 0.034273,
		34.103840, 40.674351, 25.469534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662617, 41.184753, 25.097742>,  <33.405693, 40.629417, 25.445541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662617, 41.184753, 25.097742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993813, 40.960506, 25.093004>,  <34.192532, 40.825958, 25.090160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993813, 40.960506, 25.093004>,  <33.662617, 41.184753, 25.097742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993813, 40.960506, 25.093004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060661, 0.110554, -0.992017,
		0.557453, 0.820661, 0.125545,
		0.827989, -0.560619, -0.011847,
		34.242210, 40.792320, 25.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918236, 41.429840, 24.597181>,  <33.662617, 41.184753, 25.097742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918236, 41.429840, 24.597181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147346, 41.104790, 24.640182>,  <34.284813, 40.909760, 24.665983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147346, 41.104790, 24.640182>,  <33.918236, 41.429840, 24.597181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147346, 41.104790, 24.640182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225787, 0.030333, -0.973704,
		0.787998, 0.581993, 0.200855,
		0.572781, -0.812628, 0.107505,
		34.319180, 40.861000, 24.672434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583359, 41.658947, 24.365526>,  <33.918236, 41.429840, 24.597181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583359, 41.658947, 24.365526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533478, 41.262352, 24.350533>,  <34.503548, 41.024395, 24.341536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533478, 41.262352, 24.350533>,  <34.583359, 41.658947, 24.365526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533478, 41.262352, 24.350533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164215, 0.016634, -0.986284,
		0.978510, -0.129150, 0.160743,
		-0.124705, -0.991486, -0.037485,
		34.496067, 40.964905, 24.339287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146622, 41.385464, 23.956511>,  <34.583359, 41.658947, 24.365526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146622, 41.385464, 23.956511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859428, 41.107685, 23.937540>,  <34.687111, 40.941017, 23.926157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859428, 41.107685, 23.937540>,  <35.146622, 41.385464, 23.956511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859428, 41.107685, 23.937540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152332, -0.090280, -0.984198,
		0.679187, -0.713863, 0.170605,
		-0.717984, -0.694442, -0.047427,
		34.644032, 40.899353, 23.923311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340790, 40.720135, 23.616737>,  <35.146622, 41.385464, 23.956511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340790, 40.720135, 23.616737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947762, 40.779057, 23.571381>,  <34.711945, 40.814411, 23.544167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947762, 40.779057, 23.571381>,  <35.340790, 40.720135, 23.616737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947762, 40.779057, 23.571381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087541, -0.171449, -0.981296,
		-0.163957, -0.974123, 0.155569,
		-0.982576, 0.147272, -0.113386,
		34.652992, 40.823250, 23.537363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809814, 40.140045, 23.489155>,  <35.340790, 40.720135, 23.616737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809814, 40.140045, 23.489155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165157, 39.961758, 23.445049>,  <36.378365, 39.854786, 23.418587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165157, 39.961758, 23.445049>,  <35.809814, 40.140045, 23.489155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165157, 39.961758, 23.445049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132543, 0.019017, 0.990995,
		-0.439608, -0.894971, 0.075971,
		0.888356, -0.445719, -0.110262,
		36.431664, 39.828041, 23.411970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837357, 39.658180, 24.031883>,  <35.809814, 40.140045, 23.489155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837357, 39.658180, 24.031883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.227264, 39.647221, 23.943272>,  <36.461208, 39.640644, 23.890104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.227264, 39.647221, 23.943272>,  <35.837357, 39.658180, 24.031883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227264, 39.647221, 23.943272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221277, -0.011905, 0.975138,
		-0.029356, -0.999554, -0.005542,
		0.974769, -0.027400, -0.221528,
		36.519695, 39.639000, 23.876814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178787, 39.045547, 24.505598>,  <35.837357, 39.658180, 24.031883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178787, 39.045547, 24.505598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478870, 39.285313, 24.393953>,  <36.658920, 39.429173, 24.326967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478870, 39.285313, 24.393953>,  <36.178787, 39.045547, 24.505598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478870, 39.285313, 24.393953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248484, 0.135601, 0.959097,
		0.612740, -0.788873, -0.047216,
		0.750203, 0.599410, -0.279111,
		36.703930, 39.465137, 24.310221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880959, 38.813049, 24.798616>,  <36.178787, 39.045547, 24.505598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880959, 38.813049, 24.798616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925594, 39.202297, 24.718035>,  <36.952377, 39.435844, 24.669685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925594, 39.202297, 24.718035>,  <36.880959, 38.813049, 24.798616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925594, 39.202297, 24.718035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473406, 0.126185, 0.871759,
		0.873747, -0.192651, -0.446599,
		0.111591, 0.973120, -0.201456,
		36.959072, 39.494232, 24.657598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596046, 39.107845, 24.986206>,  <36.880959, 38.813049, 24.798616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596046, 39.107845, 24.986206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.376041, 39.440788, 24.958857>,  <37.244038, 39.640553, 24.942446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.376041, 39.440788, 24.958857>,  <37.596046, 39.107845, 24.986206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376041, 39.440788, 24.958857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428973, 0.351808, 0.831993,
		0.716568, 0.428275, -0.550556,
		-0.550012, 0.832353, -0.068376,
		37.211037, 39.690495, 24.938343>
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
