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
	<24.602219, 35.211102, 34.887009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283520, 34.972279, 34.849648>,  <24.092300, 34.828987, 34.827232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283520, 34.972279, 34.849648>,  <24.602219, 35.211102, 34.887009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283520, 34.972279, 34.849648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600293, -0.764133, -0.236111,
		0.069599, -0.244189, 0.967227,
		-0.796746, -0.597053, -0.093402,
		24.044497, 34.793163, 34.821629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021566, 35.885239, 34.839180>,  <24.602219, 35.211102, 34.887009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021566, 35.885239, 34.839180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388496, 36.019821, 34.754032>,  <25.608654, 36.100571, 34.702946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388496, 36.019821, 34.754032>,  <25.021566, 35.885239, 34.839180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388496, 36.019821, 34.754032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167400, -0.811030, -0.560542,
		-0.361240, 0.478565, -0.800301,
		0.917324, 0.336461, -0.212865,
		25.663694, 36.120758, 34.690174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204094, 35.958153, 34.059185>,  <25.021566, 35.885239, 34.839180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204094, 35.958153, 34.059185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540112, 35.862167, 34.253811>,  <25.741722, 35.804577, 34.370586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540112, 35.862167, 34.253811>,  <25.204094, 35.958153, 34.059185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540112, 35.862167, 34.253811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164770, -0.741643, -0.650244,
		0.516893, 0.626404, -0.583472,
		0.840043, -0.239968, 0.486562,
		25.792124, 35.790176, 34.399780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629755, 35.644749, 33.583958>,  <25.204094, 35.958153, 34.059185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629755, 35.644749, 33.583958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834930, 35.563484, 33.917572>,  <25.958036, 35.514725, 34.117741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834930, 35.563484, 33.917572>,  <25.629755, 35.644749, 33.583958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834930, 35.563484, 33.917572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291979, -0.872370, -0.392070,
		0.807242, 0.444630, -0.388155,
		0.512941, -0.203162, 0.834037,
		25.988813, 35.502537, 34.167782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223623, 35.539604, 33.360306>,  <25.629755, 35.644749, 33.583958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223623, 35.539604, 33.360306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172895, 35.330448, 33.697472>,  <26.142460, 35.204956, 33.899773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172895, 35.330448, 33.697472>,  <26.223623, 35.539604, 33.360306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172895, 35.330448, 33.697472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214428, -0.844134, -0.491384,
		0.968472, 0.118428, 0.219173,
		-0.126817, -0.522889, 0.842915,
		26.134850, 35.173580, 33.950344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776752, 34.996719, 33.495575>,  <26.223623, 35.539604, 33.360306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776752, 34.996719, 33.495575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437798, 34.868649, 33.665009>,  <26.234425, 34.791805, 33.766666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437798, 34.868649, 33.665009>,  <26.776752, 34.996719, 33.495575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437798, 34.868649, 33.665009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074735, -0.861717, -0.501855,
		0.525691, -0.393609, 0.754136,
		-0.847386, -0.320181, 0.423581,
		26.183582, 34.772594, 33.792084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892237, 34.318661, 33.882580>,  <26.776752, 34.996719, 33.495575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892237, 34.318661, 33.882580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503143, 34.346416, 33.794060>,  <26.269688, 34.363071, 33.740948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503143, 34.346416, 33.794060>,  <26.892237, 34.318661, 33.882580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503143, 34.346416, 33.794060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079505, -0.796592, -0.599266,
		-0.217870, -0.600521, 0.769355,
		-0.972734, 0.069394, -0.221298,
		26.211323, 34.367233, 33.727669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502241, 33.703327, 34.163567>,  <26.892237, 34.318661, 33.882580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502241, 33.703327, 34.163567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386646, 33.891937, 33.830303>,  <26.317289, 34.005104, 33.630344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386646, 33.891937, 33.830303>,  <26.502241, 33.703327, 34.163567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386646, 33.891937, 33.830303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181887, -0.827396, -0.531350,
		-0.939895, -0.305094, 0.153343,
		-0.288987, 0.471523, -0.833158,
		26.299950, 34.033394, 33.580357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975245, 33.300812, 33.732750>,  <26.502241, 33.703327, 34.163567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975245, 33.300812, 33.732750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110022, 33.574776, 33.474335>,  <26.190887, 33.739155, 33.319286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110022, 33.574776, 33.474335>,  <25.975245, 33.300812, 33.732750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110022, 33.574776, 33.474335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067044, -0.701871, -0.709142,
		-0.939136, 0.195626, -0.282408,
		0.336940, 0.684914, -0.646037,
		26.211103, 33.780251, 33.280525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587128, 33.246120, 33.177338>,  <25.975245, 33.300812, 33.732750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587128, 33.246120, 33.177338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944052, 33.394646, 33.074646>,  <26.158205, 33.483761, 33.013031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944052, 33.394646, 33.074646>,  <25.587128, 33.246120, 33.177338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944052, 33.394646, 33.074646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184386, -0.818892, -0.543524,
		-0.412053, 0.437653, -0.799169,
		0.892308, 0.371317, -0.256730,
		26.211744, 33.506042, 32.997627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658920, 33.399651, 32.356907>,  <25.587128, 33.246120, 33.177338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658920, 33.399651, 32.356907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969036, 33.285488, 32.582283>,  <26.155106, 33.216991, 32.717510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969036, 33.285488, 32.582283>,  <25.658920, 33.399651, 32.356907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969036, 33.285488, 32.582283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030653, -0.874030, -0.484903,
		0.630859, 0.393212, -0.668880,
		0.775291, -0.285403, 0.563443,
		26.201624, 33.199867, 32.751316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755026, 32.641285, 32.174526>,  <25.658920, 33.399651, 32.356907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755026, 32.641285, 32.174526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066097, 32.724094, 32.411964>,  <26.252739, 32.773781, 32.554428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066097, 32.724094, 32.411964>,  <25.755026, 32.641285, 32.174526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066097, 32.724094, 32.411964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404018, -0.888001, -0.219600,
		0.481653, 0.410602, -0.774220,
		0.777676, 0.207027, 0.593599,
		26.299400, 32.786201, 32.590042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185980, 32.447529, 31.641428>,  <25.755026, 32.641285, 32.174526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185980, 32.447529, 31.641428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545921, 32.342422, 31.502165>,  <26.761887, 32.279358, 31.418608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545921, 32.342422, 31.502165>,  <26.185980, 32.447529, 31.641428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545921, 32.342422, 31.502165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430832, 0.410732, 0.803544,
		-0.068146, -0.873071, 0.482808,
		0.899856, -0.262767, -0.348157,
		26.815878, 32.263592, 31.397718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573914, 32.305695, 32.297878>,  <26.185980, 32.447529, 31.641428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573914, 32.305695, 32.297878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802122, 32.395737, 31.981945>,  <26.939047, 32.449760, 31.792385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802122, 32.395737, 31.981945>,  <26.573914, 32.305695, 32.297878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802122, 32.395737, 31.981945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465189, 0.703988, 0.536656,
		0.676836, -0.673594, 0.296923,
		0.570519, 0.225103, -0.789833,
		26.973278, 32.463268, 31.744995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330763, 32.255169, 32.493122>,  <26.573914, 32.305695, 32.297878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330763, 32.255169, 32.493122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245840, 32.550514, 32.237076>,  <27.194887, 32.727722, 32.083447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245840, 32.550514, 32.237076>,  <27.330763, 32.255169, 32.493122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245840, 32.550514, 32.237076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190775, 0.673761, 0.713898,
		0.958400, 0.029447, -0.283905,
		-0.212307, 0.738362, -0.640115,
		27.182148, 32.772022, 32.045040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398548, 32.759964, 33.073578>,  <27.330763, 32.255169, 32.493122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398548, 32.759964, 33.073578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198896, 32.894176, 32.754005>,  <27.079105, 32.974705, 32.562263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198896, 32.894176, 32.754005>,  <27.398548, 32.759964, 33.073578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198896, 32.894176, 32.754005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190027, 0.857164, 0.478705,
		0.845433, 0.390755, -0.364078,
		-0.499131, 0.335529, -0.798930,
		27.049156, 32.994835, 32.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464846, 33.574608, 33.178101>,  <27.398548, 32.759964, 33.073578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464846, 33.574608, 33.178101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154558, 33.520741, 32.931484>,  <26.968386, 33.488419, 32.783516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154558, 33.520741, 32.931484>,  <27.464846, 33.574608, 33.178101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154558, 33.520741, 32.931484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346963, 0.907070, 0.238414,
		0.527140, 0.398860, -0.750356,
		-0.775719, -0.134668, -0.616542,
		26.921843, 33.480339, 32.746521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315163, 34.172180, 32.690365>,  <27.464846, 33.574608, 33.178101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315163, 34.172180, 32.690365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979326, 33.963017, 32.749226>,  <26.777824, 33.837517, 32.784542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979326, 33.963017, 32.749226>,  <27.315163, 34.172180, 32.690365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979326, 33.963017, 32.749226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465433, 0.832150, 0.301493,
		-0.280103, 0.184644, -0.942045,
		-0.839592, -0.522908, 0.147149,
		26.727449, 33.806145, 32.793369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704565, 34.567310, 32.420773>,  <27.315163, 34.172180, 32.690365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704565, 34.567310, 32.420773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565702, 34.309082, 32.692867>,  <26.482386, 34.154144, 32.856125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565702, 34.309082, 32.692867>,  <26.704565, 34.567310, 32.420773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565702, 34.309082, 32.692867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420376, 0.755515, 0.502476,
		-0.838312, -0.111517, -0.533664,
		-0.347156, -0.645570, 0.680236,
		26.461555, 34.115410, 32.896938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013105, 34.797230, 32.541904>,  <26.704565, 34.567310, 32.420773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013105, 34.797230, 32.541904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091318, 34.566635, 32.859249>,  <26.138245, 34.428276, 33.049656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091318, 34.566635, 32.859249>,  <26.013105, 34.797230, 32.541904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091318, 34.566635, 32.859249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486134, 0.645618, 0.588941,
		-0.851729, -0.500838, -0.154013,
		0.195531, -0.576489, 0.793365,
		26.149977, 34.393688, 33.097260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331648, 34.652107, 32.999344>,  <26.013105, 34.797230, 32.541904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331648, 34.652107, 32.999344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666660, 34.609962, 33.213799>,  <25.867668, 34.584675, 33.342472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666660, 34.609962, 33.213799>,  <25.331648, 34.652107, 32.999344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666660, 34.609962, 33.213799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366147, 0.620091, 0.693847,
		-0.405556, -0.777423, 0.480768,
		0.837532, -0.105362, 0.536133,
		25.917919, 34.578354, 33.374638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914795, 34.565506, 33.581093>,  <25.331648, 34.652107, 32.999344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914795, 34.565506, 33.581093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303686, 34.486855, 33.631866>,  <25.537020, 34.439663, 33.662331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303686, 34.486855, 33.631866>,  <24.914795, 34.565506, 33.581093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303686, 34.486855, 33.631866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036493, 0.663080, 0.747658,
		-0.231182, -0.722261, 0.651840,
		0.972226, -0.196633, 0.126935,
		25.595354, 34.427864, 33.669949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056274, 34.327618, 34.329300>,  <24.914795, 34.565506, 33.581093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056274, 34.327618, 34.329300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410957, 34.456844, 34.197010>,  <25.623768, 34.534382, 34.117638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410957, 34.456844, 34.197010>,  <25.056274, 34.327618, 34.329300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410957, 34.456844, 34.197010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194879, 0.387504, 0.901034,
		0.419257, -0.863402, 0.280642,
		0.886705, 0.323074, -0.330723,
		25.676970, 34.553764, 34.097794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653854, 33.967525, 34.732342>,  <25.056274, 34.327618, 34.329300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653854, 33.967525, 34.732342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734802, 34.327724, 34.578384>,  <25.783371, 34.543846, 34.486012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734802, 34.327724, 34.578384>,  <25.653854, 33.967525, 34.732342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734802, 34.327724, 34.578384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138827, 0.362677, 0.921516,
		0.969420, -0.239919, -0.051620,
		0.202368, 0.900502, -0.384894,
		25.795513, 34.597874, 34.462917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939318, 34.597256, 35.120583>,  <25.653854, 33.967525, 34.732342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939318, 34.597256, 35.120583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024723, 34.756084, 34.763538>,  <26.075966, 34.851383, 34.549313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024723, 34.756084, 34.763538>,  <25.939318, 34.597256, 35.120583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024723, 34.756084, 34.763538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073501, 0.904557, 0.419970,
		0.974172, -0.155276, 0.163948,
		0.213512, 0.397073, -0.892606,
		26.088776, 34.875206, 34.495758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512745, 34.926228, 35.225876>,  <25.939318, 34.597256, 35.120583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512745, 34.926228, 35.225876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348873, 35.116505, 34.914524>,  <26.250549, 35.230671, 34.727711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348873, 35.116505, 34.914524>,  <26.512745, 34.926228, 35.225876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348873, 35.116505, 34.914524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199867, 0.879349, 0.432202,
		0.890064, 0.021493, -0.455328,
		-0.409682, 0.475693, -0.778381,
		26.225969, 35.259212, 34.681011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785833, 35.576748, 35.219448>,  <26.512745, 34.926228, 35.225876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785833, 35.576748, 35.219448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442274, 35.625851, 35.020561>,  <26.236139, 35.655312, 34.901230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442274, 35.625851, 35.020561>,  <26.785833, 35.576748, 35.219448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442274, 35.625851, 35.020561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049764, 0.946253, 0.319577,
		0.509726, 0.299227, -0.806624,
		-0.858896, 0.122756, -0.497220,
		26.184605, 35.662678, 34.871395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833105, 36.089638, 34.676060>,  <26.785833, 35.576748, 35.219448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833105, 36.089638, 34.676060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473471, 36.050228, 34.846676>,  <26.257690, 36.026581, 34.949047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473471, 36.050228, 34.846676>,  <26.833105, 36.089638, 34.676060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473471, 36.050228, 34.846676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032719, 0.956497, 0.289902,
		-0.436547, 0.274603, -0.856750,
		-0.899086, -0.098524, 0.426541,
		26.203745, 36.020672, 34.974640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369453, 36.563641, 34.400162>,  <26.833105, 36.089638, 34.676060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369453, 36.563641, 34.400162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311708, 36.446106, 34.778118>,  <26.277061, 36.375584, 35.004890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311708, 36.446106, 34.778118>,  <26.369453, 36.563641, 34.400162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311708, 36.446106, 34.778118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128633, 0.941217, 0.312352,
		-0.981129, 0.166635, -0.098077,
		-0.144361, -0.293841, 0.944890,
		26.268400, 36.357952, 35.061584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824783, 37.033447, 34.734158>,  <26.369453, 36.563641, 34.400162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824783, 37.033447, 34.734158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104460, 36.890072, 34.981594>,  <26.272264, 36.804047, 35.130054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104460, 36.890072, 34.981594>,  <25.824783, 37.033447, 34.734158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104460, 36.890072, 34.981594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215462, 0.930655, 0.295732,
		-0.681697, -0.073490, 0.727934,
		0.699189, -0.358442, 0.618590,
		26.314217, 36.782539, 35.167171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762459, 37.195740, 35.441906>,  <25.824783, 37.033447, 34.734158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762459, 37.195740, 35.441906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151434, 37.161209, 35.355270>,  <26.384819, 37.140491, 35.303288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151434, 37.161209, 35.355270>,  <25.762459, 37.195740, 35.441906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151434, 37.161209, 35.355270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139602, 0.959592, 0.244325,
		0.186745, -0.267828, 0.945196,
		0.972439, -0.086325, -0.216588,
		26.443165, 37.135311, 35.290295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097015, 37.414616, 36.006866>,  <25.762459, 37.195740, 35.441906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097015, 37.414616, 36.006866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315269, 37.442482, 35.672817>,  <26.446222, 37.459202, 35.472389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315269, 37.442482, 35.672817>,  <26.097015, 37.414616, 36.006866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315269, 37.442482, 35.672817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159896, 0.969576, 0.185352,
		0.822626, -0.234668, 0.517897,
		0.545637, 0.069666, -0.835121,
		26.478960, 37.463383, 35.422279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714882, 37.638073, 36.223610>,  <26.097015, 37.414616, 36.006866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714882, 37.638073, 36.223610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716679, 37.747074, 35.838753>,  <26.717756, 37.812473, 35.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716679, 37.747074, 35.838753>,  <26.714882, 37.638073, 36.223610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716679, 37.747074, 35.838753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387594, 0.886467, 0.252878,
		0.921819, -0.374058, -0.101636,
		0.004494, 0.272501, -0.962145,
		26.718027, 37.828823, 35.550110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414927, 37.945503, 36.045959>,  <26.714882, 37.638073, 36.223610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414927, 37.945503, 36.045959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155058, 38.091507, 35.779217>,  <26.999136, 38.179108, 35.619171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155058, 38.091507, 35.779217>,  <27.414927, 37.945503, 36.045959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155058, 38.091507, 35.779217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315213, 0.927573, 0.200623,
		0.691784, -0.079861, -0.717674,
		-0.649673, 0.365008, -0.666854,
		26.960155, 38.201008, 35.579159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562130, 38.071518, 35.331551>,  <27.414927, 37.945503, 36.045959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562130, 38.071518, 35.331551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489416, 38.113533, 34.940464>,  <27.445787, 38.138741, 34.705814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489416, 38.113533, 34.940464>,  <27.562130, 38.071518, 35.331551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489416, 38.113533, 34.940464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416188, 0.892615, 0.173279,
		0.890922, 0.438412, -0.118549,
		-0.181786, 0.105039, -0.977712,
		27.434881, 38.145046, 34.647152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876646, 38.701195, 35.077587>,  <27.562130, 38.071518, 35.331551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876646, 38.701195, 35.077587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566429, 38.606144, 34.843643>,  <27.380299, 38.549114, 34.703278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566429, 38.606144, 34.843643>,  <27.876646, 38.701195, 35.077587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566429, 38.606144, 34.843643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267753, 0.962809, -0.036143,
		0.571700, 0.128568, -0.810326,
		-0.775543, -0.237630, -0.584863,
		27.333767, 38.534855, 34.668182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823044, 39.099274, 34.439671>,  <27.876646, 38.701195, 35.077587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823044, 39.099274, 34.439671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464069, 38.995514, 34.582401>,  <27.248684, 38.933258, 34.668037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464069, 38.995514, 34.582401>,  <27.823044, 39.099274, 34.439671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464069, 38.995514, 34.582401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285636, 0.958088, -0.021901,
		-0.336187, -0.121576, -0.933915,
		-0.897435, -0.259397, 0.356823,
		27.194839, 38.917694, 34.689449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304462, 39.552414, 34.091179>,  <27.823044, 39.099274, 34.439671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304462, 39.552414, 34.091179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141720, 39.447357, 34.441147>,  <27.044075, 39.384323, 34.651127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141720, 39.447357, 34.441147>,  <27.304462, 39.552414, 34.091179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141720, 39.447357, 34.441147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308317, 0.941056, 0.139120,
		-0.859889, -0.213152, -0.463851,
		-0.406856, -0.262641, 0.874922,
		27.019663, 39.368565, 34.703625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597719, 39.832691, 34.041283>,  <27.304462, 39.552414, 34.091179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597719, 39.832691, 34.041283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698315, 39.769958, 34.423309>,  <26.758673, 39.732319, 34.652527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698315, 39.769958, 34.423309>,  <26.597719, 39.832691, 34.041283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698315, 39.769958, 34.423309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362999, 0.899468, 0.243287,
		-0.897210, -0.407873, 0.169276,
		0.251489, -0.156832, 0.955069,
		26.773762, 39.722908, 34.709831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046629, 39.805977, 34.570595>,  <26.597719, 39.832691, 34.041283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046629, 39.805977, 34.570595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378544, 39.979004, 34.711643>,  <26.577692, 40.082821, 34.796272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378544, 39.979004, 34.711643>,  <26.046629, 39.805977, 34.570595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378544, 39.979004, 34.711643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512285, 0.841049, 0.173780,
		-0.221405, -0.324845, 0.919486,
		0.829785, 0.432564, 0.352626,
		26.627480, 40.108772, 34.817432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967472, 40.100208, 35.261238>,  <26.046629, 39.805977, 34.570595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967472, 40.100208, 35.261238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218971, 40.325085, 35.046345>,  <26.369869, 40.460011, 34.917408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218971, 40.325085, 35.046345>,  <25.967472, 40.100208, 35.261238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218971, 40.325085, 35.046345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492752, 0.822507, 0.284038,
		0.601560, 0.086133, 0.794171,
		0.628746, 0.562195, -0.537230,
		26.407595, 40.493744, 34.885178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193546, 40.653790, 35.602283>,  <25.967472, 40.100208, 35.261238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193546, 40.653790, 35.602283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191496, 40.738514, 35.211365>,  <26.190266, 40.789349, 34.976814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191496, 40.738514, 35.211365>,  <26.193546, 40.653790, 35.602283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191496, 40.738514, 35.211365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504515, 0.843261, 0.185406,
		0.863388, 0.494012, 0.102537,
		-0.005128, 0.211809, -0.977298,
		26.189957, 40.802055, 34.918175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241373, 39.996742, 36.023708>,  <26.193546, 40.653790, 35.602283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241373, 39.996742, 36.023708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445427, 40.202053, 35.747646>,  <26.567860, 40.325241, 35.582008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445427, 40.202053, 35.747646>,  <26.241373, 39.996742, 36.023708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445427, 40.202053, 35.747646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857129, 0.236802, -0.457445,
		-0.071368, 0.824906, 0.560746,
		0.510135, 0.513278, -0.690151,
		26.598467, 40.356037, 35.540600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895540, 39.602364, 36.014294>,  <26.241373, 39.996742, 36.023708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895540, 39.602364, 36.014294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858572, 39.620392, 35.616413>,  <26.836391, 39.631207, 35.377686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858572, 39.620392, 35.616413>,  <26.895540, 39.602364, 36.014294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858572, 39.620392, 35.616413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243446, -0.967635, -0.066460,
		-0.965502, -0.248298, 0.078454,
		-0.092417, 0.045068, -0.994700,
		26.830847, 39.633911, 35.318005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514421, 39.070347, 35.871853>,  <26.895540, 39.602364, 36.014294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514421, 39.070347, 35.871853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664810, 39.147545, 35.509327>,  <26.755043, 39.193863, 35.291813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664810, 39.147545, 35.509327>,  <26.514421, 39.070347, 35.871853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664810, 39.147545, 35.509327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124225, -0.958743, -0.255696,
		-0.918267, 0.208721, -0.336484,
		0.375970, 0.192997, -0.906310,
		26.777601, 39.205444, 35.237434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019989, 38.855160, 35.252140>,  <26.514421, 39.070347, 35.871853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019989, 38.855160, 35.252140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403229, 38.831730, 35.139988>,  <26.633173, 38.817673, 35.072697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403229, 38.831730, 35.139988>,  <26.019989, 38.855160, 35.252140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403229, 38.831730, 35.139988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141011, -0.948493, -0.283684,
		-0.249325, 0.311335, -0.917010,
		0.958099, -0.058579, -0.280385,
		26.690659, 38.814156, 35.055874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171822, 38.510387, 34.512642>,  <26.019989, 38.855160, 35.252140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171822, 38.510387, 34.512642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456722, 38.435070, 34.783123>,  <26.627663, 38.389881, 34.945412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456722, 38.435070, 34.783123>,  <26.171822, 38.510387, 34.512642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456722, 38.435070, 34.783123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029124, -0.970447, -0.239549,
		0.701322, 0.150925, -0.696684,
		0.712249, -0.188291, 0.676201,
		26.670397, 38.378582, 34.985985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671070, 38.103073, 34.239456>,  <26.171822, 38.510387, 34.512642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671070, 38.103073, 34.239456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694748, 38.025368, 34.631119>,  <26.708954, 37.978745, 34.866116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694748, 38.025368, 34.631119>,  <26.671070, 38.103073, 34.239456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694748, 38.025368, 34.631119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033731, -0.979932, -0.196459,
		0.997676, 0.044658, -0.051454,
		0.059195, -0.194267, 0.979161,
		26.712507, 37.967087, 34.924866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187338, 37.645344, 34.345001>,  <26.671070, 38.103073, 34.239456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187338, 37.645344, 34.345001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960686, 37.597122, 34.671043>,  <26.824696, 37.568192, 34.866669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960686, 37.597122, 34.671043>,  <27.187338, 37.645344, 34.345001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960686, 37.597122, 34.671043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040389, -0.983987, -0.173604,
		0.822983, -0.131291, 0.552686,
		-0.566629, -0.120551, 0.815107,
		26.790697, 37.560955, 34.915577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550932, 37.227394, 34.847713>,  <27.187338, 37.645344, 34.345001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550932, 37.227394, 34.847713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157875, 37.180542, 34.905258>,  <26.922041, 37.152431, 34.939785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157875, 37.180542, 34.905258>,  <27.550932, 37.227394, 34.847713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157875, 37.180542, 34.905258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097295, -0.985653, -0.137919,
		0.157950, -0.121528, 0.979940,
		-0.982642, -0.117127, 0.143860,
		26.863083, 37.145405, 34.948418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090782, 37.182247, 35.362843>,  <27.550932, 37.227394, 34.847713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090782, 37.182247, 35.362843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189875, 36.822292, 35.506413>,  <28.249331, 36.606319, 35.592556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189875, 36.822292, 35.506413>,  <28.090782, 37.182247, 35.362843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189875, 36.822292, 35.506413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963061, 0.188368, -0.192436,
		0.105560, 0.393343, 0.913312,
		0.247732, -0.899888, 0.358929,
		28.264194, 36.552326, 35.614090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414442, 37.202290, 36.000019>,  <28.090782, 37.182247, 35.362843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414442, 37.202290, 36.000019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547590, 36.923729, 35.745705>,  <28.627480, 36.756592, 35.593117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547590, 36.923729, 35.745705>,  <28.414442, 37.202290, 36.000019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547590, 36.923729, 35.745705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904069, 0.427353, 0.005233,
		0.268061, -0.576536, 0.771848,
		0.332869, -0.696401, -0.635786,
		28.647451, 36.714809, 35.554970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916330, 36.671524, 36.337158>,  <28.414442, 37.202290, 36.000019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916330, 36.671524, 36.337158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951086, 36.813240, 35.964722>,  <28.971939, 36.898270, 35.741261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951086, 36.813240, 35.964722>,  <28.916330, 36.671524, 36.337158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951086, 36.813240, 35.964722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795037, 0.538531, 0.279109,
		0.600306, -0.764503, -0.234880,
		0.086890, 0.354289, -0.931090,
		28.977154, 36.919525, 35.685394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627090, 36.454777, 36.006760>,  <28.916330, 36.671524, 36.337158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627090, 36.454777, 36.006760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483534, 36.800499, 35.865803>,  <29.397400, 37.007931, 35.781227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483534, 36.800499, 35.865803>,  <29.627090, 36.454777, 36.006760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483534, 36.800499, 35.865803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777258, 0.485778, 0.399863,
		0.516786, -0.130392, -0.846126,
		-0.358891, 0.864302, -0.352392,
		29.375866, 37.059788, 35.760086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236584, 36.807549, 35.757385>,  <29.627090, 36.454777, 36.006760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236584, 36.807549, 35.757385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953068, 37.083359, 35.816948>,  <29.782959, 37.248844, 35.852684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953068, 37.083359, 35.816948>,  <30.236584, 36.807549, 35.757385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953068, 37.083359, 35.816948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705375, 0.690351, 0.160815,
		0.008091, 0.219016, -0.975688,
		-0.708788, 0.689527, 0.148903,
		29.740431, 37.290218, 35.861618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077618, 36.597160, 35.080242>,  <30.236584, 36.807549, 35.757385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077618, 36.597160, 35.080242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453161, 36.723118, 35.024548>,  <30.678488, 36.798691, 34.991131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453161, 36.723118, 35.024548>,  <30.077618, 36.597160, 35.080242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453161, 36.723118, 35.024548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007976, -0.424176, -0.905545,
		-0.344211, 0.849068, -0.400753,
		0.938858, 0.314895, -0.139234,
		30.734819, 36.817585, 34.982777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085163, 37.191399, 34.584644>,  <30.077618, 36.597160, 35.080242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085163, 37.191399, 34.584644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400024, 36.947239, 34.619972>,  <30.588942, 36.800743, 34.641167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400024, 36.947239, 34.619972>,  <30.085163, 37.191399, 34.584644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400024, 36.947239, 34.619972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071556, -0.232612, -0.969934,
		0.612591, 0.757168, -0.226780,
		0.787154, -0.610401, 0.088316,
		30.636171, 36.764118, 34.646465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819332, 37.324539, 34.234127>,  <30.085163, 37.191399, 34.584644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819332, 37.324539, 34.234127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671612, 36.953793, 34.261066>,  <30.582979, 36.731346, 34.277229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671612, 36.953793, 34.261066>,  <30.819332, 37.324539, 34.234127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671612, 36.953793, 34.261066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054391, -0.050787, -0.997227,
		0.927716, -0.371942, -0.031658,
		-0.369302, -0.926866, 0.067346,
		30.560822, 36.675732, 34.281269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290955, 36.735867, 33.966846>,  <30.819332, 37.324539, 34.234127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290955, 36.735867, 33.966846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894186, 36.708965, 33.923820>,  <30.656126, 36.692825, 33.898003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894186, 36.708965, 33.923820>,  <31.290955, 36.735867, 33.966846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894186, 36.708965, 33.923820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098283, 0.128761, -0.986793,
		0.080211, -0.989393, -0.121111,
		-0.991921, -0.067249, -0.107568,
		30.596609, 36.688789, 33.891548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126484, 36.243534, 33.351849>,  <31.290955, 36.735867, 33.966846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126484, 36.243534, 33.351849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811949, 36.479729, 33.424519>,  <30.623228, 36.621445, 33.468121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811949, 36.479729, 33.424519>,  <31.126484, 36.243534, 33.351849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811949, 36.479729, 33.424519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104761, 0.162357, -0.981155,
		-0.608851, -0.790550, -0.065807,
		-0.786336, 0.590484, 0.181670,
		30.576048, 36.656876, 33.479019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525053, 35.851665, 33.047417>,  <31.126484, 36.243534, 33.351849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525053, 35.851665, 33.047417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512405, 36.249447, 33.087543>,  <30.504816, 36.488117, 33.111618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512405, 36.249447, 33.087543>,  <30.525053, 35.851665, 33.047417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512405, 36.249447, 33.087543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099472, 0.096733, -0.990327,
		-0.994538, -0.041292, 0.095861,
		-0.031620, 0.994453, 0.100312,
		30.502920, 36.547783, 33.117638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384703, 35.227287, 32.701653>,  <30.525053, 35.851665, 33.047417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384703, 35.227287, 32.701653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461130, 35.451466, 32.379314>,  <30.506987, 35.585972, 32.185913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461130, 35.451466, 32.379314>,  <30.384703, 35.227287, 32.701653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461130, 35.451466, 32.379314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981548, -0.102805, 0.161232,
		0.007517, -0.821783, -0.569751,
		0.191070, 0.560450, -0.805846,
		30.518452, 35.619602, 32.137562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917809, 34.934376, 32.285358>,  <30.384703, 35.227287, 32.701653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917809, 34.934376, 32.285358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948826, 35.328018, 32.221462>,  <30.967436, 35.564205, 32.183125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948826, 35.328018, 32.221462>,  <30.917809, 34.934376, 32.285358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948826, 35.328018, 32.221462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990552, -0.057870, 0.124326,
		0.113106, -0.167873, -0.979299,
		0.077543, 0.984109, -0.159742,
		30.972088, 35.623249, 32.173538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620525, 34.548656, 32.467888>,  <30.917809, 34.934376, 32.285358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620525, 34.548656, 32.467888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381920, 34.260841, 32.325653>,  <31.238756, 34.088154, 32.240314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381920, 34.260841, 32.325653>,  <31.620525, 34.548656, 32.467888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381920, 34.260841, 32.325653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642035, -0.161931, -0.749379,
		0.481625, -0.675312, 0.558561,
		-0.596513, -0.719536, -0.355585,
		31.202967, 34.044979, 32.218979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029499, 33.855816, 32.345722>,  <31.620525, 34.548656, 32.467888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029499, 33.855816, 32.345722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733805, 33.870346, 32.076736>,  <31.556389, 33.879063, 31.915344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733805, 33.870346, 32.076736>,  <32.029499, 33.855816, 32.345722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733805, 33.870346, 32.076736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658749, -0.168493, -0.733253,
		-0.139935, -0.985034, 0.100633,
		-0.739235, 0.036316, -0.672468,
		31.512035, 33.881241, 31.874996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862911, 33.162094, 31.948446>,  <32.029499, 33.855816, 32.345722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862911, 33.162094, 31.948446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755713, 33.476406, 31.725475>,  <31.691393, 33.664993, 31.591694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755713, 33.476406, 31.725475>,  <31.862911, 33.162094, 31.948446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755713, 33.476406, 31.725475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680397, -0.255262, -0.686951,
		-0.682083, -0.563372, -0.466234,
		-0.267997, 0.785782, -0.557426,
		31.675314, 33.712139, 31.558247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821238, 32.924595, 31.278599>,  <31.862911, 33.162094, 31.948446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821238, 32.924595, 31.278599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880152, 33.318653, 31.243263>,  <31.915501, 33.555088, 31.222063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880152, 33.318653, 31.243263>,  <31.821238, 32.924595, 31.278599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880152, 33.318653, 31.243263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549821, -0.155788, -0.820626,
		-0.822195, 0.072297, -0.564596,
		0.147286, 0.985141, -0.088338,
		31.924337, 33.614197, 31.216763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957401, 33.047176, 30.600332>,  <31.821238, 32.924595, 31.278599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957401, 33.047176, 30.600332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088676, 33.397743, 30.741289>,  <32.167442, 33.608086, 30.825863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088676, 33.397743, 30.741289>,  <31.957401, 33.047176, 30.600332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088676, 33.397743, 30.741289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744027, -0.009991, -0.668075,
		-0.581993, 0.481445, -0.655358,
		0.328189, 0.876419, 0.352393,
		32.187134, 33.660667, 30.847008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064709, 33.514881, 29.913069>,  <31.957401, 33.047176, 30.600332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064709, 33.514881, 29.913069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260357, 33.696281, 30.211088>,  <32.377747, 33.805122, 30.389900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260357, 33.696281, 30.211088>,  <32.064709, 33.514881, 29.913069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260357, 33.696281, 30.211088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760635, 0.196246, -0.618807,
		-0.426843, 0.869381, -0.248961,
		0.489122, 0.453501, 0.745048,
		32.407093, 33.832333, 30.434603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202808, 34.243004, 29.735828>,  <32.064709, 33.514881, 29.913069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202808, 34.243004, 29.735828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484367, 34.135769, 29.998936>,  <32.653301, 34.071426, 30.156799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484367, 34.135769, 29.998936>,  <32.202808, 34.243004, 29.735828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484367, 34.135769, 29.998936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710081, 0.242429, -0.661070,
		0.017766, 0.932392, 0.361011,
		0.703896, -0.268091, 0.657767,
		32.695538, 34.055340, 30.196266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643406, 34.835693, 29.664448>,  <32.202808, 34.243004, 29.735828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643406, 34.835693, 29.664448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843102, 34.508286, 29.778135>,  <32.962917, 34.311840, 29.846348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843102, 34.508286, 29.778135>,  <32.643406, 34.835693, 29.664448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843102, 34.508286, 29.778135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771050, 0.270042, -0.576680,
		0.395275, 0.507048, 0.765937,
		0.499240, -0.818523, 0.284219,
		32.992874, 34.262730, 29.863401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193306, 35.096107, 29.871365>,  <32.643406, 34.835693, 29.664448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193306, 35.096107, 29.871365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308456, 34.714947, 29.833181>,  <33.377548, 34.486252, 29.810272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308456, 34.714947, 29.833181>,  <33.193306, 35.096107, 29.871365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308456, 34.714947, 29.833181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808724, 0.295279, -0.508700,
		0.512925, 0.069245, 0.855636,
		0.287876, -0.952898, -0.095456,
		33.394821, 34.429077, 29.804544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855244, 35.037144, 30.213318>,  <33.193306, 35.096107, 29.871365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855244, 35.037144, 30.213318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833054, 34.752354, 29.933315>,  <33.819740, 34.581478, 29.765314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833054, 34.752354, 29.933315>,  <33.855244, 35.037144, 30.213318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833054, 34.752354, 29.933315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750298, 0.432840, -0.499702,
		0.658768, -0.552934, 0.510184,
		-0.055474, -0.711978, -0.700007,
		33.816410, 34.538761, 29.723312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565006, 34.875118, 30.067879>,  <33.855244, 35.037144, 30.213318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565006, 34.875118, 30.067879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363937, 34.719662, 29.759005>,  <34.243294, 34.626389, 29.573679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363937, 34.719662, 29.759005>,  <34.565006, 34.875118, 30.067879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363937, 34.719662, 29.759005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600841, 0.485148, -0.635312,
		0.621536, -0.783317, -0.010357,
		-0.502675, -0.388646, -0.772187,
		34.213135, 34.603069, 29.527349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099567, 34.856922, 29.578482>,  <34.565006, 34.875118, 30.067879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099567, 34.856922, 29.578482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772133, 34.814896, 29.352602>,  <34.575672, 34.789680, 29.217073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772133, 34.814896, 29.352602>,  <35.099567, 34.856922, 29.578482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772133, 34.814896, 29.352602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451840, 0.489202, -0.746004,
		0.354632, -0.865819, -0.352978,
		-0.818582, -0.105067, -0.564699,
		34.526558, 34.783375, 29.183193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358944, 34.548641, 29.002220>,  <35.099567, 34.856922, 29.578482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358944, 34.548641, 29.002220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006519, 34.710258, 28.903858>,  <34.795063, 34.807228, 28.844841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006519, 34.710258, 28.903858>,  <35.358944, 34.548641, 29.002220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006519, 34.710258, 28.903858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403970, 0.372381, -0.835548,
		-0.246031, -0.835510, -0.491316,
		-0.881066, 0.404048, -0.245904,
		34.742199, 34.831474, 28.830088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247189, 34.368195, 28.252275>,  <35.358944, 34.548641, 29.002220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247189, 34.368195, 28.252275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034130, 34.695473, 28.338846>,  <34.906296, 34.891838, 28.390789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034130, 34.695473, 28.338846>,  <35.247189, 34.368195, 28.252275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034130, 34.695473, 28.338846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235532, 0.388926, -0.890652,
		-0.812904, -0.423427, -0.399872,
		-0.532647, 0.818197, 0.216429,
		34.874336, 34.940933, 28.403774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818893, 34.403019, 27.693104>,  <35.247189, 34.368195, 28.252275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818893, 34.403019, 27.693104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843006, 34.765640, 27.860210>,  <34.857475, 34.983212, 27.960474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843006, 34.765640, 27.860210>,  <34.818893, 34.403019, 27.693104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843006, 34.765640, 27.860210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128006, 0.408052, -0.903940,
		-0.989940, 0.107968, -0.091445,
		0.060282, 0.906552, 0.417768,
		34.861092, 35.037605, 27.985540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405220, 34.769611, 27.329082>,  <34.818893, 34.403019, 27.693104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405220, 34.769611, 27.329082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632805, 35.058643, 27.486135>,  <34.769356, 35.232063, 27.580366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632805, 35.058643, 27.486135>,  <34.405220, 34.769611, 27.329082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632805, 35.058643, 27.486135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178326, 0.357676, -0.916661,
		-0.802796, 0.591563, 0.074650,
		0.568963, 0.722580, 0.392632,
		34.803493, 35.275417, 27.603926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147717, 35.439476, 27.188419>,  <34.405220, 34.769611, 27.329082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147717, 35.439476, 27.188419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522263, 35.551140, 27.273550>,  <34.746990, 35.618137, 27.324629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522263, 35.551140, 27.273550>,  <34.147717, 35.439476, 27.188419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522263, 35.551140, 27.273550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015909, 0.639402, -0.768708,
		-0.350674, 0.716403, 0.603153,
		0.936362, 0.279161, 0.212825,
		34.803173, 35.634888, 27.337397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224133, 36.207817, 26.996223>,  <34.147717, 35.439476, 27.188419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224133, 36.207817, 26.996223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606461, 36.090614, 26.986824>,  <34.835857, 36.020290, 26.981184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606461, 36.090614, 26.986824>,  <34.224133, 36.207817, 26.996223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606461, 36.090614, 26.986824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202494, 0.714273, -0.669933,
		0.213083, 0.635577, 0.742050,
		0.955820, -0.293011, -0.023499,
		34.893208, 36.002712, 26.979774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606991, 36.849323, 27.063330>,  <34.224133, 36.207817, 26.996223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606991, 36.849323, 27.063330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863117, 36.587070, 26.903257>,  <35.016792, 36.429718, 26.807215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863117, 36.587070, 26.903257>,  <34.606991, 36.849323, 27.063330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863117, 36.587070, 26.903257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150243, 0.617830, -0.771824,
		0.753278, 0.434084, 0.494108,
		0.640312, -0.655635, -0.400180,
		35.055210, 36.390381, 26.783203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896992, 37.296974, 26.620504>,  <34.606991, 36.849323, 27.063330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896992, 37.296974, 26.620504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074615, 36.962936, 26.490627>,  <35.181190, 36.762512, 26.412701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074615, 36.962936, 26.490627>,  <34.896992, 37.296974, 26.620504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074615, 36.962936, 26.490627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175817, 0.436551, -0.882333,
		0.878578, 0.334722, 0.340679,
		0.444060, -0.835095, -0.324694,
		35.207832, 36.712406, 26.393219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578232, 37.470509, 26.360479>,  <34.896992, 37.296974, 26.620504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578232, 37.470509, 26.360479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457882, 37.134220, 26.180405>,  <35.385674, 36.932446, 26.072361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457882, 37.134220, 26.180405>,  <35.578232, 37.470509, 26.360479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457882, 37.134220, 26.180405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177754, 0.414348, -0.892591,
		0.936952, -0.348578, 0.024775,
		-0.300872, -0.840720, -0.450185,
		35.367619, 36.882004, 26.045349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128460, 37.382919, 25.867403>,  <35.578232, 37.470509, 26.360479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128460, 37.382919, 25.867403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809387, 37.163868, 25.766363>,  <35.617943, 37.032436, 25.705740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809387, 37.163868, 25.766363>,  <36.128460, 37.382919, 25.867403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809387, 37.163868, 25.766363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143767, 0.234100, -0.961524,
		0.585690, -0.803307, -0.108007,
		-0.797683, -0.547627, -0.252599,
		35.570084, 36.999580, 25.690584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305168, 37.109749, 25.259933>,  <36.128460, 37.382919, 25.867403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305168, 37.109749, 25.259933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906696, 37.081375, 25.239546>,  <35.667614, 37.064350, 25.227312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906696, 37.081375, 25.239546>,  <36.305168, 37.109749, 25.259933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906696, 37.081375, 25.239546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032256, 0.243545, -0.969353,
		0.081171, -0.967292, -0.240326,
		-0.996178, -0.070932, -0.050970,
		35.607841, 37.060097, 25.224255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104610, 36.694008, 24.739252>,  <36.305168, 37.109749, 25.259933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104610, 36.694008, 24.739252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816238, 36.964012, 24.802015>,  <35.643215, 37.126015, 24.839674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816238, 36.964012, 24.802015>,  <36.104610, 36.694008, 24.739252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816238, 36.964012, 24.802015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136091, 0.359909, -0.923008,
		-0.679512, -0.644072, -0.351333,
		-0.720932, 0.675008, 0.156910,
		35.599960, 37.166515, 24.849089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977921, 36.799034, 24.043318>,  <36.104610, 36.694008, 24.739252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977921, 36.799034, 24.043318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762695, 37.088638, 24.215967>,  <35.633560, 37.262402, 24.319557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762695, 37.088638, 24.215967>,  <35.977921, 36.799034, 24.043318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762695, 37.088638, 24.215967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019964, 0.522869, -0.852179,
		-0.842666, -0.449912, -0.295792,
		-0.538066, 0.724008, 0.431621,
		35.601276, 37.305840, 24.345453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348804, 36.810265, 23.655798>,  <35.977921, 36.799034, 24.043318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348804, 36.810265, 23.655798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414024, 37.153740, 23.850143>,  <35.453156, 37.359825, 23.966751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414024, 37.153740, 23.850143>,  <35.348804, 36.810265, 23.655798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414024, 37.153740, 23.850143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110815, 0.505277, -0.855812,
		-0.980375, 0.085697, 0.177540,
		0.163048, 0.858691, 0.485865,
		35.462940, 37.411346, 23.995903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883423, 37.305218, 23.446333>,  <35.348804, 36.810265, 23.655798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883423, 37.305218, 23.446333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154892, 37.540997, 23.621586>,  <35.317772, 37.682465, 23.726738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154892, 37.540997, 23.621586>,  <34.883423, 37.305218, 23.446333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154892, 37.540997, 23.621586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018585, 0.610144, -0.792073,
		-0.734204, 0.529417, 0.425043,
		0.678674, 0.589443, 0.438131,
		35.358494, 37.717831, 23.753025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675735, 38.001453, 23.345951>,  <34.883423, 37.305218, 23.446333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675735, 38.001453, 23.345951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066662, 38.047058, 23.417339>,  <35.301216, 38.074421, 23.460173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066662, 38.047058, 23.417339>,  <34.675735, 38.001453, 23.345951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066662, 38.047058, 23.417339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047305, 0.703891, -0.708731,
		-0.206429, 0.701097, 0.682531,
		0.977317, 0.114016, 0.178469,
		35.359856, 38.081264, 23.470881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713181, 38.690960, 23.246679>,  <34.675735, 38.001453, 23.345951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713181, 38.690960, 23.246679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092232, 38.565063, 23.224958>,  <35.319660, 38.489525, 23.211926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092232, 38.565063, 23.224958>,  <34.713181, 38.690960, 23.246679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092232, 38.565063, 23.224958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162879, 0.622475, -0.765504,
		0.274735, 0.716564, 0.641136,
		0.947624, -0.314738, -0.054303,
		35.376518, 38.470642, 23.208668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093491, 39.278374, 23.143942>,  <34.713181, 38.690960, 23.246679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093491, 39.278374, 23.143942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358856, 39.005695, 23.020548>,  <35.518078, 38.842087, 22.946510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358856, 39.005695, 23.020548>,  <35.093491, 39.278374, 23.143942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358856, 39.005695, 23.020548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230895, 0.578668, -0.782196,
		0.711732, 0.447696, 0.541300,
		0.663419, -0.681698, -0.308486,
		35.557880, 38.801186, 22.928001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538048, 39.769524, 22.747309>,  <35.093491, 39.278374, 23.143942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538048, 39.769524, 22.747309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668270, 39.407833, 22.636761>,  <35.746403, 39.190819, 22.570433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668270, 39.407833, 22.636761>,  <35.538048, 39.769524, 22.747309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668270, 39.407833, 22.636761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194244, 0.350017, -0.916383,
		0.925355, 0.244652, 0.289592,
		0.325557, -0.904231, -0.276368,
		35.765938, 39.136562, 22.553850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323803, 39.680080, 22.494480>,  <35.538048, 39.769524, 22.747309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323803, 39.680080, 22.494480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115669, 39.387951, 22.317450>,  <35.990788, 39.212673, 22.211231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115669, 39.387951, 22.317450>,  <36.323803, 39.680080, 22.494480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115669, 39.387951, 22.317450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328687, 0.307056, -0.893130,
		0.788171, -0.610199, 0.080275,
		-0.520339, -0.730324, -0.442577,
		35.959568, 39.168854, 22.184677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799149, 39.432568, 22.086782>,  <36.323803, 39.680080, 22.494480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799149, 39.432568, 22.086782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439007, 39.331516, 21.945055>,  <36.222923, 39.270885, 21.860018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439007, 39.331516, 21.945055>,  <36.799149, 39.432568, 22.086782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439007, 39.331516, 21.945055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208310, 0.464665, -0.860635,
		0.382055, -0.848686, -0.365740,
		-0.900356, -0.252623, -0.354317,
		36.168900, 39.255730, 21.838760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890427, 39.030960, 21.426151>,  <36.799149, 39.432568, 22.086782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890427, 39.030960, 21.426151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522434, 39.187397, 21.436548>,  <36.301640, 39.281258, 21.442787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522434, 39.187397, 21.436548>,  <36.890427, 39.030960, 21.426151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522434, 39.187397, 21.436548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172946, 0.464552, -0.868493,
		-0.351735, -0.794505, -0.495019,
		-0.919985, 0.391091, 0.025993,
		36.246437, 39.304726, 21.444345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703186, 38.988209, 20.740564>,  <36.890427, 39.030960, 21.426151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703186, 38.988209, 20.740564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445309, 39.240002, 20.914057>,  <36.290581, 39.391079, 21.018152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445309, 39.240002, 20.914057>,  <36.703186, 38.988209, 20.740564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445309, 39.240002, 20.914057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168593, 0.670496, -0.722504,
		-0.745619, -0.392669, -0.538390,
		-0.644693, 0.629481, 0.433733,
		36.251900, 39.428844, 21.044176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309372, 39.256557, 20.158640>,  <36.703186, 38.988209, 20.740564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309372, 39.256557, 20.158640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245338, 39.514568, 20.457521>,  <36.206921, 39.669373, 20.636850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245338, 39.514568, 20.457521>,  <36.309372, 39.256557, 20.158640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245338, 39.514568, 20.457521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172215, 0.763608, -0.622290,
		-0.971965, 0.029063, -0.233321,
		-0.160080, 0.645025, 0.747206,
		36.197315, 39.708076, 20.681683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809410, 39.917587, 19.940138>,  <36.309372, 39.256557, 20.158640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809410, 39.917587, 19.940138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031864, 40.055325, 20.242701>,  <36.165337, 40.137966, 20.424238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031864, 40.055325, 20.242701>,  <35.809410, 39.917587, 19.940138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031864, 40.055325, 20.242701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085349, 0.881656, -0.464110,
		-0.826701, 0.322664, 0.460927,
		0.556131, 0.344341, 0.756405,
		36.198704, 40.158627, 20.469622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805408, 40.609825, 19.900284>,  <35.809410, 39.917587, 19.940138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805408, 40.609825, 19.900284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105122, 40.587395, 20.164234>,  <36.284950, 40.573936, 20.322605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105122, 40.587395, 20.164234>,  <35.805408, 40.609825, 19.900284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105122, 40.587395, 20.164234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411211, 0.820446, -0.397207,
		-0.519121, 0.568967, 0.637800,
		0.749279, -0.056072, 0.659877,
		36.329906, 40.570572, 20.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805740, 41.218819, 20.179415>,  <35.805408, 40.609825, 19.900284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805740, 41.218819, 20.179415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173832, 41.087509, 20.264662>,  <36.394688, 41.008724, 20.315809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173832, 41.087509, 20.264662>,  <35.805740, 41.218819, 20.179415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173832, 41.087509, 20.264662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384946, 0.857497, -0.341345,
		-0.070693, 0.396153, 0.915459,
		0.920228, -0.328271, 0.213117,
		36.449902, 40.989029, 20.328596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080257, 41.605446, 20.783482>,  <35.805740, 41.218819, 20.179415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080257, 41.605446, 20.783482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389919, 41.481827, 20.562513>,  <36.575718, 41.407658, 20.429932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389919, 41.481827, 20.562513>,  <36.080257, 41.605446, 20.783482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389919, 41.481827, 20.562513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236421, 0.950728, -0.200554,
		0.587183, 0.024656, 0.809079,
		0.774158, -0.309045, -0.552422,
		36.622166, 41.389114, 20.396788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545017, 41.968578, 21.048615>,  <36.080257, 41.605446, 20.783482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545017, 41.968578, 21.048615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704849, 41.846157, 20.702976>,  <36.800751, 41.772705, 20.495594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704849, 41.846157, 20.702976>,  <36.545017, 41.968578, 21.048615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704849, 41.846157, 20.702976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390763, 0.909558, -0.141456,
		0.829239, -0.281133, 0.483040,
		0.399584, -0.306055, -0.864097,
		36.824726, 41.754341, 20.443747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299160, 42.216980, 21.008968>,  <36.545017, 41.968578, 21.048615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299160, 42.216980, 21.008968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154251, 42.140457, 20.644075>,  <37.067307, 42.094543, 20.425140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154251, 42.140457, 20.644075>,  <37.299160, 42.216980, 21.008968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154251, 42.140457, 20.644075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327262, 0.890292, -0.316670,
		0.872732, -0.413257, -0.259917,
		-0.362268, -0.191307, -0.912230,
		37.045570, 42.083065, 20.370407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724655, 42.654472, 20.655815>,  <37.299160, 42.216980, 21.008968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724655, 42.654472, 20.655815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461540, 42.534126, 20.379612>,  <37.303673, 42.461918, 20.213890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461540, 42.534126, 20.379612>,  <37.724655, 42.654472, 20.655815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461540, 42.534126, 20.379612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171226, 0.833027, -0.526068,
		0.733485, -0.464273, -0.496437,
		-0.657785, -0.300860, -0.690508,
		37.264206, 42.443867, 20.172459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042904, 42.785694, 19.996218>,  <37.724655, 42.654472, 20.655815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042904, 42.785694, 19.996218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652977, 42.757565, 19.911570>,  <37.419022, 42.740688, 19.860781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652977, 42.757565, 19.911570>,  <38.042904, 42.785694, 19.996218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652977, 42.757565, 19.911570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100706, 0.707874, -0.699123,
		0.198962, -0.702829, -0.682968,
		-0.974820, -0.070320, -0.211619,
		37.360531, 42.736469, 19.848083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936882, 42.815666, 19.244093>,  <38.042904, 42.785694, 19.996218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936882, 42.815666, 19.244093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576736, 42.912163, 19.388954>,  <37.360649, 42.970058, 19.475870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576736, 42.912163, 19.388954>,  <37.936882, 42.815666, 19.244093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576736, 42.912163, 19.388954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118752, 0.664446, -0.737841,
		-0.418626, -0.707329, -0.569594,
		-0.900361, 0.241239, 0.362151,
		37.306629, 42.984535, 19.497599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542320, 43.016216, 18.632181>,  <37.936882, 42.815666, 19.244093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542320, 43.016216, 18.632181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315544, 43.165474, 18.925941>,  <37.179478, 43.255028, 19.102198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315544, 43.165474, 18.925941>,  <37.542320, 43.016216, 18.632181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315544, 43.165474, 18.925941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206252, 0.798826, -0.565099,
		-0.797520, -0.471850, -0.375925,
		-0.566941, 0.373142, 0.734400,
		37.145462, 43.277416, 19.146261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744133, 42.941959, 18.485563>,  <37.542320, 43.016216, 18.632181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744133, 42.941959, 18.485563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880577, 43.239922, 18.714914>,  <36.962444, 43.418697, 18.852524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880577, 43.239922, 18.714914>,  <36.744133, 42.941959, 18.485563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880577, 43.239922, 18.714914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467526, 0.663606, -0.583992,
		-0.815515, -0.068864, 0.574624,
		0.341108, 0.744906, 0.573376,
		36.982910, 43.463394, 18.886927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190765, 43.291908, 18.845072>,  <36.744133, 42.941959, 18.485563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190765, 43.291908, 18.845072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494400, 43.532810, 18.746214>,  <36.676582, 43.677349, 18.686899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494400, 43.532810, 18.746214>,  <36.190765, 43.291908, 18.845072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494400, 43.532810, 18.746214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610147, 0.525833, -0.592638,
		-0.226960, 0.600659, 0.766615,
		0.759085, 0.602253, -0.247147,
		36.722126, 43.713486, 18.672070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094181, 44.058430, 19.098289>,  <36.190765, 43.291908, 18.845072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094181, 44.058430, 19.098289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301735, 43.971294, 18.767639>,  <36.426266, 43.919014, 18.569250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301735, 43.971294, 18.767639>,  <36.094181, 44.058430, 19.098289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301735, 43.971294, 18.767639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697145, 0.451788, -0.556665,
		0.494721, 0.865122, 0.082561,
		0.518883, -0.217837, -0.826624,
		36.457401, 43.905945, 18.519651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239662, 44.670769, 18.666645>,  <36.094181, 44.058430, 19.098289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239662, 44.670769, 18.666645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074551, 44.921272, 18.402094>,  <35.975483, 45.071575, 18.243362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074551, 44.921272, 18.402094>,  <36.239662, 44.670769, 18.666645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074551, 44.921272, 18.402094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568146, 0.744578, 0.350447,
		0.711916, -0.231102, -0.663150,
		-0.412778, 0.626255, -0.661377,
		35.950718, 45.109150, 18.203680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875160, 45.422989, 18.748079>,  <36.239662, 44.670769, 18.666645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875160, 45.422989, 18.748079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880058, 45.822197, 18.772726>,  <35.882996, 46.061722, 18.787514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880058, 45.822197, 18.772726>,  <35.875160, 45.422989, 18.748079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880058, 45.822197, 18.772726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764816, -0.030346, 0.643534,
		0.644133, -0.055006, 0.762934,
		0.012246, 0.998025, 0.061617,
		35.883732, 46.121605, 18.791210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713665, 45.475445, 18.738138>,  <35.875160, 45.422989, 18.748079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713665, 45.475445, 18.738138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984550, 45.769329, 18.722235>,  <37.147079, 45.945660, 18.712692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984550, 45.769329, 18.722235>,  <36.713665, 45.475445, 18.738138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984550, 45.769329, 18.722235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038443, 0.018631, 0.999087,
		0.734784, -0.678121, -0.015627,
		0.677211, 0.734714, -0.039758,
		37.187714, 45.989742, 18.710308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417019, 45.315506, 19.032663>,  <36.713665, 45.475445, 18.738138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417019, 45.315506, 19.032663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347088, 45.708500, 19.058462>,  <37.305130, 45.944298, 19.073942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347088, 45.708500, 19.058462>,  <37.417019, 45.315506, 19.032663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347088, 45.708500, 19.058462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078733, -0.051347, 0.995572,
		0.981446, 0.179134, -0.068377,
		-0.174830, 0.982484, 0.064498,
		37.294640, 46.003246, 19.077812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019577, 45.691769, 19.334202>,  <37.417019, 45.315506, 19.032663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019577, 45.691769, 19.334202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652752, 45.843082, 19.384647>,  <37.432659, 45.933872, 19.414915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652752, 45.843082, 19.384647>,  <38.019577, 45.691769, 19.334202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652752, 45.843082, 19.384647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096104, -0.097269, 0.990607,
		0.386998, 0.920565, 0.052847,
		-0.917059, 0.378284, 0.126113,
		37.377636, 45.956570, 19.422482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012268, 46.102325, 19.902763>,  <38.019577, 45.691769, 19.334202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012268, 46.102325, 19.902763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633583, 45.978771, 19.866243>,  <37.406372, 45.904640, 19.844332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633583, 45.978771, 19.866243>,  <38.012268, 46.102325, 19.902763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633583, 45.978771, 19.866243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045727, -0.151701, 0.987368,
		-0.318831, 0.938924, 0.129492,
		-0.946708, -0.308882, -0.091302,
		37.349571, 45.886108, 19.838852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756615, 46.009182, 20.597267>,  <38.012268, 46.102325, 19.902763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756615, 46.009182, 20.597267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430347, 45.923347, 20.382368>,  <37.234585, 45.871845, 20.253429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430347, 45.923347, 20.382368>,  <37.756615, 46.009182, 20.597267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430347, 45.923347, 20.382368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432886, -0.389676, 0.812873,
		-0.383784, 0.895603, 0.224956,
		-0.815671, -0.214587, -0.537246,
		37.185646, 45.858971, 20.221195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115749, 46.183075, 21.061359>,  <37.756615, 46.009182, 20.597267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115749, 46.183075, 21.061359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044392, 45.896149, 20.791952>,  <37.001575, 45.723991, 20.630308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044392, 45.896149, 20.791952>,  <37.115749, 46.183075, 21.061359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044392, 45.896149, 20.791952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449589, -0.549446, 0.704258,
		-0.875240, 0.428445, -0.224478,
		-0.178397, -0.717318, -0.673521,
		36.990871, 45.680954, 20.589895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382641, 46.016548, 21.166542>,  <37.115749, 46.183075, 21.061359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382641, 46.016548, 21.166542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549728, 45.707790, 20.974836>,  <36.649979, 45.522537, 20.859812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549728, 45.707790, 20.974836>,  <36.382641, 46.016548, 21.166542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549728, 45.707790, 20.974836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519197, -0.635671, 0.571276,
		-0.745620, 0.010204, -0.666293,
		0.417715, -0.771892, -0.479267,
		36.675041, 45.476223, 20.831057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862015, 45.532917, 20.850605>,  <36.382641, 46.016548, 21.166542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862015, 45.532917, 20.850605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205948, 45.345440, 20.931623>,  <36.412308, 45.232956, 20.980234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205948, 45.345440, 20.931623>,  <35.862015, 45.532917, 20.850605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205948, 45.345440, 20.931623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456921, -0.529292, 0.714894,
		-0.227857, -0.707234, -0.669254,
		0.859828, -0.468690, 0.202547,
		36.463898, 45.204834, 20.992388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545578, 44.903011, 21.013601>,  <35.862015, 45.532917, 20.850605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545578, 44.903011, 21.013601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921429, 44.906544, 21.150438>,  <36.146938, 44.908665, 21.232540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921429, 44.906544, 21.150438>,  <35.545578, 44.903011, 21.013601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921429, 44.906544, 21.150438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257617, -0.639764, 0.724110,
		0.225253, -0.768521, -0.598863,
		0.939625, 0.008831, 0.342093,
		36.203316, 44.909191, 21.253067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649826, 44.250134, 21.128958>,  <35.545578, 44.903011, 21.013601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649826, 44.250134, 21.128958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911648, 44.451466, 21.354603>,  <36.068741, 44.572266, 21.489990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911648, 44.451466, 21.354603>,  <35.649826, 44.250134, 21.128958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911648, 44.451466, 21.354603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152549, -0.642885, 0.750618,
		0.740465, -0.577374, -0.344021,
		0.654554, 0.503327, 0.564112,
		36.108013, 44.602463, 21.523836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037056, 43.688343, 21.489332>,  <35.649826, 44.250134, 21.128958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037056, 43.688343, 21.489332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084564, 44.021652, 21.705317>,  <36.113068, 44.221638, 21.834908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084564, 44.021652, 21.705317>,  <36.037056, 43.688343, 21.489332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084564, 44.021652, 21.705317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098441, -0.531247, 0.841479,
		0.988030, -0.153096, 0.018933,
		0.118769, 0.833270, 0.539959,
		36.120193, 44.271633, 21.867304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583916, 43.508953, 21.997423>,  <36.037056, 43.688343, 21.489332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583916, 43.508953, 21.997423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398636, 43.830090, 22.147568>,  <36.287468, 44.022770, 22.237654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398636, 43.830090, 22.147568>,  <36.583916, 43.508953, 21.997423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398636, 43.830090, 22.147568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008069, -0.419699, 0.907627,
		0.886218, 0.423440, 0.187926,
		-0.463198, 0.802840, 0.375362,
		36.259678, 44.070942, 22.260176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946476, 43.740471, 22.652925>,  <36.583916, 43.508953, 21.997423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946476, 43.740471, 22.652925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587368, 43.912453, 22.691195>,  <36.371902, 44.015640, 22.714157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587368, 43.912453, 22.691195>,  <36.946476, 43.740471, 22.652925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587368, 43.912453, 22.691195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045127, -0.305852, 0.951009,
		0.438151, 0.849468, 0.293987,
		-0.897768, 0.429952, 0.095675,
		36.318039, 44.041439, 22.719896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870392, 43.972260, 23.374189>,  <36.946476, 43.740471, 22.652925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870392, 43.972260, 23.374189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499069, 43.994373, 23.227116>,  <36.276276, 44.007641, 23.138872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499069, 43.994373, 23.227116>,  <36.870392, 43.972260, 23.374189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499069, 43.994373, 23.227116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360321, -0.377760, 0.852916,
		-0.091743, 0.924251, 0.370598,
		-0.928306, 0.055285, -0.367684,
		36.220577, 44.010960, 23.116810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491009, 44.308762, 23.877573>,  <36.870392, 43.972260, 23.374189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491009, 44.308762, 23.877573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230606, 44.096996, 23.659983>,  <36.074364, 43.969936, 23.529428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230606, 44.096996, 23.659983>,  <36.491009, 44.308762, 23.877573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230606, 44.096996, 23.659983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415247, -0.351511, 0.839053,
		-0.635422, 0.772112, 0.008997,
		-0.651006, -0.529417, -0.543975,
		36.035305, 43.938171, 23.496790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906986, 44.257610, 24.347219>,  <36.491009, 44.308762, 23.877573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906986, 44.257610, 24.347219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862877, 43.973991, 24.068626>,  <35.836411, 43.803818, 23.901470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862877, 43.973991, 24.068626>,  <35.906986, 44.257610, 24.347219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862877, 43.973991, 24.068626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442495, -0.592450, 0.673202,
		-0.889965, 0.382424, -0.248422,
		-0.110271, -0.709052, -0.696481,
		35.829796, 43.761276, 23.859682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208576, 44.005527, 24.464096>,  <35.906986, 44.257610, 24.347219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208576, 44.005527, 24.464096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388405, 43.718384, 24.251472>,  <35.496304, 43.546097, 24.123898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388405, 43.718384, 24.251472>,  <35.208576, 44.005527, 24.464096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388405, 43.718384, 24.251472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433678, -0.695664, 0.572691,
		-0.780901, -0.026941, -0.624074,
		0.449575, -0.717861, -0.531561,
		35.523277, 43.503025, 24.092005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649605, 43.516636, 24.374996>,  <35.208576, 44.005527, 24.464096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649605, 43.516636, 24.374996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983288, 43.300980, 24.328640>,  <35.183498, 43.171585, 24.300825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983288, 43.300980, 24.328640>,  <34.649605, 43.516636, 24.374996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983288, 43.300980, 24.328640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424038, -0.761484, 0.490239,
		-0.352558, -0.359816, -0.863849,
		0.834203, -0.539142, -0.115892,
		35.233547, 43.139236, 24.293873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457504, 42.918247, 24.154398>,  <34.649605, 43.516636, 24.374996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457504, 42.918247, 24.154398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822273, 42.837986, 24.297583>,  <35.041134, 42.789829, 24.383493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822273, 42.837986, 24.297583>,  <34.457504, 42.918247, 24.154398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822273, 42.837986, 24.297583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366456, -0.790770, 0.490300,
		0.184685, -0.578292, -0.794651,
		0.911922, -0.200653, 0.357961,
		35.095848, 42.777790, 24.404970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560719, 42.208435, 24.117620>,  <34.457504, 42.918247, 24.154398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560719, 42.208435, 24.117620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819160, 42.338985, 24.393599>,  <34.974228, 42.417316, 24.559185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819160, 42.338985, 24.393599>,  <34.560719, 42.208435, 24.117620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819160, 42.338985, 24.393599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197111, -0.801942, 0.563947,
		0.737356, -0.500365, -0.453807,
		0.646106, 0.326379, 0.689944,
		35.012993, 42.436901, 24.600582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466991, 41.654915, 24.530987>,  <34.560719, 42.208435, 24.117620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466991, 41.654915, 24.530987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708115, 41.873531, 24.763510>,  <34.852787, 42.004700, 24.903025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708115, 41.873531, 24.763510>,  <34.466991, 41.654915, 24.530987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708115, 41.873531, 24.763510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141313, -0.643912, 0.751936,
		0.785274, -0.535419, -0.310921,
		0.602807, 0.546538, 0.581309,
		34.888958, 42.037495, 24.937902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876957, 41.154385, 24.920740>,  <34.466991, 41.654915, 24.530987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876957, 41.154385, 24.920740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917236, 41.492485, 25.130661>,  <34.941402, 41.695343, 25.256613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917236, 41.492485, 25.130661>,  <34.876957, 41.154385, 24.920740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917236, 41.492485, 25.130661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009898, -0.526605, 0.850052,
		0.994868, -0.090791, -0.044660,
		0.100696, 0.845248, 0.524801,
		34.947445, 41.746059, 25.288101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487907, 41.068016, 25.272886>,  <34.876957, 41.154385, 24.920740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487907, 41.068016, 25.272886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239811, 41.331841, 25.442722>,  <35.090954, 41.490135, 25.544624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239811, 41.331841, 25.442722>,  <35.487907, 41.068016, 25.272886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239811, 41.331841, 25.442722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018540, -0.528810, 0.848538,
		0.784190, 0.534172, 0.315763,
		-0.620244, 0.659560, 0.424591,
		35.053738, 41.529709, 25.570099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696846, 41.047337, 25.948078>,  <35.487907, 41.068016, 25.272886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696846, 41.047337, 25.948078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356323, 41.248768, 26.006979>,  <35.152008, 41.369629, 26.042320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356323, 41.248768, 26.006979>,  <35.696846, 41.047337, 25.948078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356323, 41.248768, 26.006979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085104, -0.409477, 0.908343,
		0.517719, 0.760747, 0.391447,
		-0.851308, 0.503580, 0.147251,
		35.100929, 41.399841, 26.051155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725113, 41.197716, 26.689827>,  <35.696846, 41.047337, 25.948078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725113, 41.197716, 26.689827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343925, 41.255337, 26.583166>,  <35.115215, 41.289909, 26.519169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343925, 41.255337, 26.583166>,  <35.725113, 41.197716, 26.689827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343925, 41.255337, 26.583166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302901, -0.422852, 0.854077,
		0.010279, 0.894676, 0.446598,
		-0.952966, 0.144055, -0.266652,
		35.058037, 41.298553, 26.503170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360901, 41.388012, 27.262587>,  <35.725113, 41.197716, 26.689827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360901, 41.388012, 27.262587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069843, 41.257416, 27.021276>,  <34.895210, 41.179058, 26.876490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069843, 41.257416, 27.021276>,  <35.360901, 41.388012, 27.262587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069843, 41.257416, 27.021276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379389, -0.541157, 0.750476,
		-0.571492, 0.774952, 0.269900,
		-0.727641, -0.326494, -0.603275,
		34.851551, 41.159466, 26.840294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738899, 41.475857, 27.659113>,  <35.360901, 41.388012, 27.262587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738899, 41.475857, 27.659113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673786, 41.188427, 27.388662>,  <34.634720, 41.015968, 27.226391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673786, 41.188427, 27.388662>,  <34.738899, 41.475857, 27.659113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673786, 41.188427, 27.388662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371666, -0.590133, 0.716664,
		-0.913984, 0.367956, -0.171006,
		-0.162784, -0.718576, -0.676129,
		34.624950, 40.972855, 27.185823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173065, 41.233707, 27.844885>,  <34.738899, 41.475857, 27.659113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173065, 41.233707, 27.844885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304676, 40.930241, 27.619968>,  <34.383644, 40.748161, 27.485020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304676, 40.930241, 27.619968>,  <34.173065, 41.233707, 27.844885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304676, 40.930241, 27.619968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387223, -0.651475, 0.652410,
		-0.861277, 0.003071, -0.508126,
		0.329028, -0.758664, -0.562290,
		34.403385, 40.702641, 27.451283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575405, 40.775349, 27.769394>,  <34.173065, 41.233707, 27.844885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575405, 40.775349, 27.769394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909065, 40.566517, 27.698257>,  <34.109261, 40.441219, 27.655575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909065, 40.566517, 27.698257>,  <33.575405, 40.775349, 27.769394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909065, 40.566517, 27.698257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247103, -0.642033, 0.725764,
		-0.493087, -0.561450, -0.664559,
		0.834149, -0.522079, -0.177842,
		34.159309, 40.409893, 27.644905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294209, 40.138630, 27.644773>,  <33.575405, 40.775349, 27.769394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294209, 40.138630, 27.644773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683968, 40.069576, 27.702383>,  <33.917824, 40.028145, 27.736948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683968, 40.069576, 27.702383>,  <33.294209, 40.138630, 27.644773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683968, 40.069576, 27.702383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224809, -0.755519, 0.615347,
		0.002582, -0.631972, -0.774987,
		0.974399, -0.172635, 0.144023,
		33.976288, 40.017784, 27.745590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395390, 39.462166, 27.648775>,  <33.294209, 40.138630, 27.644773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395390, 39.462166, 27.648775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744900, 39.557518, 27.818335>,  <33.954605, 39.614727, 27.920071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744900, 39.557518, 27.818335>,  <33.395390, 39.462166, 27.648775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744900, 39.557518, 27.818335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139106, -0.712710, 0.687527,
		0.466006, -0.659713, -0.589591,
		0.873777, 0.238376, 0.423898,
		34.007034, 39.629032, 27.945503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774452, 38.866631, 27.602461>,  <33.395390, 39.462166, 27.648775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774452, 38.866631, 27.602461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919605, 39.090961, 27.900129>,  <34.006699, 39.225559, 28.078730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919605, 39.090961, 27.900129>,  <33.774452, 38.866631, 27.602461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919605, 39.090961, 27.900129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263605, -0.704203, 0.659250,
		0.893772, -0.435398, -0.107706,
		0.362884, 0.560827, 0.744170,
		34.028469, 39.259209, 28.123381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106480, 38.394802, 27.980686>,  <33.774452, 38.866631, 27.602461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106480, 38.394802, 27.980686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083500, 38.709305, 28.226774>,  <34.069710, 38.898006, 28.374426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083500, 38.709305, 28.226774>,  <34.106480, 38.394802, 27.980686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083500, 38.709305, 28.226774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191393, -0.613481, 0.766166,
		0.979831, -0.073729, 0.185731,
		-0.057454, 0.786260, 0.615219,
		34.066265, 38.945183, 28.411339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544361, 38.203667, 28.515520>,  <34.106480, 38.394802, 27.980686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544361, 38.203667, 28.515520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287106, 38.470055, 28.666708>,  <34.132751, 38.629887, 28.757421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287106, 38.470055, 28.666708>,  <34.544361, 38.203667, 28.515520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287106, 38.470055, 28.666708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042065, -0.523575, 0.850940,
		0.764597, 0.531370, 0.364743,
		-0.643135, 0.665969, 0.377972,
		34.094166, 38.669846, 28.780100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769817, 38.228642, 29.094873>,  <34.544361, 38.203667, 28.515520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769817, 38.228642, 29.094873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403580, 38.387756, 29.118401>,  <34.183838, 38.483223, 29.132517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403580, 38.387756, 29.118401>,  <34.769817, 38.228642, 29.094873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403580, 38.387756, 29.118401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170799, -0.517143, 0.838684,
		0.364031, 0.757847, 0.541433,
		-0.915592, 0.397783, 0.058817,
		34.128902, 38.507092, 29.136045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705410, 38.398453, 29.841089>,  <34.769817, 38.228642, 29.094873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705410, 38.398453, 29.841089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318340, 38.417599, 29.742048>,  <34.086098, 38.429089, 29.682623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318340, 38.417599, 29.742048>,  <34.705410, 38.398453, 29.841089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318340, 38.417599, 29.742048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238388, -0.493942, 0.836177,
		-0.082276, 0.868176, 0.489388,
		-0.967679, 0.047867, -0.247602,
		34.028038, 38.431957, 29.667767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287506, 38.616421, 30.479797>,  <34.705410, 38.398453, 29.841089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287506, 38.616421, 30.479797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056942, 38.422581, 30.216612>,  <33.918606, 38.306278, 30.058701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056942, 38.422581, 30.216612>,  <34.287506, 38.616421, 30.479797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056942, 38.422581, 30.216612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224437, -0.680334, 0.697692,
		-0.785737, 0.549826, 0.283387,
		-0.576407, -0.484600, -0.657965,
		33.884022, 38.277203, 30.019222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635296, 38.490921, 30.850109>,  <34.287506, 38.616421, 30.479797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635296, 38.490921, 30.850109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644550, 38.218170, 30.557669>,  <33.650105, 38.054520, 30.382204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644550, 38.218170, 30.557669>,  <33.635296, 38.490921, 30.850109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644550, 38.218170, 30.557669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396828, -0.677482, 0.619310,
		-0.917601, 0.275792, -0.286264,
		0.023138, -0.681877, -0.731100,
		33.651493, 38.013607, 30.338339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025692, 38.206425, 30.814703>,  <33.635296, 38.490921, 30.850109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025692, 38.206425, 30.814703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243587, 37.927429, 30.628469>,  <33.374325, 37.760033, 30.516729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243587, 37.927429, 30.628469>,  <33.025692, 38.206425, 30.814703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243587, 37.927429, 30.628469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416501, -0.706899, 0.571683,
		-0.727866, -0.117498, -0.675577,
		0.544736, -0.697487, -0.465590,
		33.407009, 37.718182, 30.488794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570320, 37.651386, 30.730862>,  <33.025692, 38.206425, 30.814703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570320, 37.651386, 30.730862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931168, 37.483562, 30.690580>,  <33.147678, 37.382866, 30.666412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931168, 37.483562, 30.690580>,  <32.570320, 37.651386, 30.730862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931168, 37.483562, 30.690580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308040, -0.789679, 0.530583,
		-0.302135, -0.447631, -0.841630,
		0.902123, -0.419564, -0.100701,
		33.201805, 37.357693, 30.660370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497482, 37.004719, 30.325865>,  <32.570320, 37.651386, 30.730862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497482, 37.004719, 30.325865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847366, 36.978146, 30.517891>,  <33.057297, 36.962204, 30.633106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847366, 36.978146, 30.517891>,  <32.497482, 37.004719, 30.325865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847366, 36.978146, 30.517891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300705, -0.851220, 0.430117,
		0.380071, -0.520588, -0.764549,
		0.874713, -0.066429, 0.480068,
		33.109779, 36.958218, 30.661911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723442, 36.328697, 30.144924>,  <32.497482, 37.004719, 30.325865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723442, 36.328697, 30.144924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924824, 36.425777, 30.476618>,  <33.045654, 36.484024, 30.675634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924824, 36.425777, 30.476618>,  <32.723442, 36.328697, 30.144924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924824, 36.425777, 30.476618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379121, -0.800358, 0.464429,
		0.776400, -0.548200, -0.310934,
		0.503458, 0.242701, 0.829232,
		33.075863, 36.498589, 30.725388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039204, 35.707108, 30.431883>,  <32.723442, 36.328697, 30.144924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039204, 35.707108, 30.431883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031548, 35.949024, 30.750343>,  <33.026955, 36.094173, 30.941420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031548, 35.949024, 30.750343>,  <33.039204, 35.707108, 30.431883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031548, 35.949024, 30.750343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200816, -0.782397, 0.589515,
		0.979442, -0.148598, 0.136426,
		-0.019138, 0.604792, 0.796153,
		33.025806, 36.130463, 30.989189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482655, 35.314064, 30.858055>,  <33.039204, 35.707108, 30.431883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482655, 35.314064, 30.858055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287857, 35.560867, 31.105324>,  <33.170979, 35.708950, 31.253685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287857, 35.560867, 31.105324>,  <33.482655, 35.314064, 30.858055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287857, 35.560867, 31.105324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004474, -0.709523, 0.704668,
		0.873395, 0.340402, 0.348292,
		-0.486992, 0.617012, 0.618171,
		33.141758, 35.745972, 31.290775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899239, 35.296448, 31.429813>,  <33.482655, 35.314064, 30.858055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899239, 35.296448, 31.429813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522141, 35.410446, 31.499102>,  <33.295879, 35.478844, 31.540674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522141, 35.410446, 31.499102>,  <33.899239, 35.296448, 31.429813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522141, 35.410446, 31.499102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011791, -0.547552, 0.836689,
		0.333300, 0.786743, 0.519563,
		-0.942747, 0.284995, 0.173222,
		33.239315, 35.495945, 31.551069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446518, 35.826168, 31.413113>,  <33.899239, 35.296448, 31.429813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446518, 35.826168, 31.413113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776825, 35.769924, 31.631596>,  <34.975010, 35.736179, 31.762686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776825, 35.769924, 31.631596>,  <34.446518, 35.826168, 31.413113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776825, 35.769924, 31.631596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460597, 0.727038, -0.509182,
		-0.325520, 0.672046, 0.665125,
		0.825765, -0.140605, 0.546208,
		35.024555, 35.727741, 31.795458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696445, 36.413490, 31.437088>,  <34.446518, 35.826168, 31.413113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696445, 36.413490, 31.437088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022964, 36.202682, 31.531668>,  <35.218876, 36.076199, 31.588415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022964, 36.202682, 31.531668>,  <34.696445, 36.413490, 31.437088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022964, 36.202682, 31.531668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563186, 0.635192, -0.528539,
		0.128358, 0.564610, 0.815315,
		0.816300, -0.527016, 0.236448,
		35.267853, 36.044579, 31.602602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226498, 36.849655, 31.809145>,  <34.696445, 36.413490, 31.437088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226498, 36.849655, 31.809145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421173, 36.541031, 31.645279>,  <35.537979, 36.355858, 31.546959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421173, 36.541031, 31.645279>,  <35.226498, 36.849655, 31.809145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421173, 36.541031, 31.645279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625481, 0.635153, -0.453161,
		0.609840, -0.035687, 0.791721,
		0.486691, -0.771562, -0.409663,
		35.567181, 36.309563, 31.522381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858913, 36.741055, 32.129745>,  <35.226498, 36.849655, 31.809145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858913, 36.741055, 32.129745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870808, 36.586918, 31.760826>,  <35.877945, 36.494438, 31.539474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870808, 36.586918, 31.760826>,  <35.858913, 36.741055, 32.129745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870808, 36.586918, 31.760826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707614, 0.659809, -0.252852,
		0.705973, -0.645110, 0.292293,
		0.029740, -0.385338, -0.922296,
		35.879730, 36.471317, 31.484137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520374, 36.848522, 31.946373>,  <35.858913, 36.741055, 32.129745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520374, 36.848522, 31.946373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371513, 36.734917, 31.592913>,  <36.282196, 36.666752, 31.380836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371513, 36.734917, 31.592913>,  <36.520374, 36.848522, 31.946373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371513, 36.734917, 31.592913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517176, 0.727096, -0.451509,
		0.770733, -0.625033, -0.123706,
		-0.372154, -0.284015, -0.883650,
		36.259869, 36.649712, 31.327818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045975, 36.764225, 31.430624>,  <36.520374, 36.848522, 31.946373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045975, 36.764225, 31.430624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718006, 36.863068, 31.224068>,  <36.521225, 36.922375, 31.100134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718006, 36.863068, 31.224068>,  <37.045975, 36.764225, 31.430624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718006, 36.863068, 31.224068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508565, 0.728565, -0.458863,
		0.262836, -0.638852, -0.723039,
		-0.819926, 0.247107, -0.516391,
		36.472027, 36.937199, 31.069151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277061, 36.818642, 30.703501>,  <37.045975, 36.764225, 31.430624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277061, 36.818642, 30.703501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933949, 37.021622, 30.736233>,  <36.728081, 37.143410, 30.755871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933949, 37.021622, 30.736233>,  <37.277061, 36.818642, 30.703501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933949, 37.021622, 30.736233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312086, 0.640665, -0.701535,
		-0.408422, -0.576228, -0.707922,
		-0.857785, 0.507455, 0.081829,
		36.676613, 37.173859, 30.760780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155754, 37.133305, 29.971535>,  <37.277061, 36.818642, 30.703501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155754, 37.133305, 29.971535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939499, 37.344807, 30.233259>,  <36.809746, 37.471710, 30.390293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939499, 37.344807, 30.233259>,  <37.155754, 37.133305, 29.971535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939499, 37.344807, 30.233259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322675, 0.848631, -0.419174,
		-0.776909, -0.015493, -0.629422,
		-0.540642, 0.528758, 0.654310,
		36.777306, 37.503433, 30.429552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963608, 37.587830, 29.579889>,  <37.155754, 37.133305, 29.971535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963608, 37.587830, 29.579889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853642, 37.737583, 29.934122>,  <36.787663, 37.827435, 30.146662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853642, 37.737583, 29.934122>,  <36.963608, 37.587830, 29.579889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853642, 37.737583, 29.934122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344324, 0.898320, -0.272876,
		-0.897697, 0.229909, -0.375873,
		-0.274918, 0.374382, 0.885583,
		36.771168, 37.849899, 30.199797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597950, 38.109539, 29.390326>,  <36.963608, 37.587830, 29.579889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597950, 38.109539, 29.390326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695068, 38.212284, 29.764505>,  <36.753342, 38.273933, 29.989014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695068, 38.212284, 29.764505>,  <36.597950, 38.109539, 29.390326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695068, 38.212284, 29.764505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079493, 0.955795, -0.283084,
		-0.966814, 0.143095, 0.211647,
		0.242799, 0.256865, 0.935451,
		36.767910, 38.289345, 30.045141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159954, 38.732685, 29.586746>,  <36.597950, 38.109539, 29.390326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159954, 38.732685, 29.586746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484482, 38.719406, 29.820211>,  <36.679199, 38.711441, 29.960291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484482, 38.719406, 29.820211>,  <36.159954, 38.732685, 29.586746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484482, 38.719406, 29.820211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182490, 0.962878, -0.198905,
		-0.555396, 0.267888, 0.787256,
		0.811315, -0.033195, 0.583665,
		36.727875, 38.709446, 29.995312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147190, 39.339287, 29.934906>,  <36.159954, 38.732685, 29.586746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147190, 39.339287, 29.934906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535835, 39.245777, 29.949423>,  <36.769024, 39.189671, 29.958132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535835, 39.245777, 29.949423>,  <36.147190, 39.339287, 29.934906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535835, 39.245777, 29.949423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231884, 0.910684, -0.341883,
		0.046874, 0.340593, 0.939041,
		0.971613, -0.233775, 0.036290,
		36.827320, 39.175644, 29.960310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401222, 39.701183, 30.414307>,  <36.147190, 39.339287, 29.934906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401222, 39.701183, 30.414307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699429, 39.632393, 30.156740>,  <36.878353, 39.591118, 30.002199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699429, 39.632393, 30.156740>,  <36.401222, 39.701183, 30.414307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699429, 39.632393, 30.156740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091870, 0.983430, -0.156287,
		0.660126, 0.057358, 0.748962,
		0.745516, -0.171976, -0.643918,
		36.923084, 39.580799, 29.963564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781914, 40.289455, 30.414713>,  <36.401222, 39.701183, 30.414307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781914, 40.289455, 30.414713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985802, 40.127792, 30.110912>,  <37.108135, 40.030796, 29.928631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985802, 40.127792, 30.110912>,  <36.781914, 40.289455, 30.414713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985802, 40.127792, 30.110912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127119, 0.908484, -0.398118,
		0.850898, 0.106381, 0.514448,
		0.509719, -0.404154, -0.759504,
		37.138718, 40.006546, 29.883060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351337, 40.701660, 30.368761>,  <36.781914, 40.289455, 30.414713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351337, 40.701660, 30.368761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270775, 40.534081, 30.014605>,  <37.222435, 40.433533, 29.802111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270775, 40.534081, 30.014605>,  <37.351337, 40.701660, 30.368761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270775, 40.534081, 30.014605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171050, 0.874982, -0.452933,
		0.964457, -0.242670, -0.104568,
		-0.201409, -0.418948, -0.885391,
		37.210354, 40.408398, 29.748987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805771, 40.940384, 29.921616>,  <37.351337, 40.701660, 30.368761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805771, 40.940384, 29.921616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529137, 40.806099, 29.665802>,  <37.363155, 40.725529, 29.512314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529137, 40.806099, 29.665802>,  <37.805771, 40.940384, 29.921616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529137, 40.806099, 29.665802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277389, 0.694081, -0.664309,
		0.666905, -0.636828, -0.386896,
		-0.691588, -0.335710, -0.639535,
		37.321659, 40.705387, 29.473942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113178, 40.872498, 29.218060>,  <37.805771, 40.940384, 29.921616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113178, 40.872498, 29.218060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717606, 40.906029, 29.169081>,  <37.480263, 40.926147, 29.139692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717606, 40.906029, 29.169081>,  <38.113178, 40.872498, 29.218060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717606, 40.906029, 29.169081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145237, 0.716050, -0.682772,
		0.030443, -0.692997, -0.720298,
		-0.988928, 0.083828, -0.122448,
		37.420929, 40.931179, 29.132347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020264, 40.881313, 28.432068>,  <38.113178, 40.872498, 29.218060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020264, 40.881313, 28.432068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696331, 41.028259, 28.615030>,  <37.501972, 41.116425, 28.724808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696331, 41.028259, 28.615030>,  <38.020264, 40.881313, 28.432068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696331, 41.028259, 28.615030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031638, 0.751191, -0.659327,
		-0.585808, -0.548415, -0.596716,
		-0.809832, 0.367360, 0.457404,
		37.453381, 41.138466, 28.752251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528755, 40.925358, 27.871475>,  <38.020264, 40.881313, 28.432068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528755, 40.925358, 27.871475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433296, 41.183113, 28.162079>,  <37.376022, 41.337765, 28.336441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433296, 41.183113, 28.162079>,  <37.528755, 40.925358, 27.871475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433296, 41.183113, 28.162079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008655, 0.749507, -0.661940,
		-0.971068, -0.151682, -0.184445,
		-0.238647, 0.644385, 0.726509,
		37.361702, 41.376431, 28.380032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887074, 41.192230, 27.582193>,  <37.528755, 40.925358, 27.871475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887074, 41.192230, 27.582193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998859, 41.461815, 27.855742>,  <37.065933, 41.623566, 28.019871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998859, 41.461815, 27.855742>,  <36.887074, 41.192230, 27.582193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998859, 41.461815, 27.855742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023022, 0.707340, -0.706498,
		-0.959879, 0.213188, 0.182163,
		0.279469, 0.673959, 0.683869,
		37.082699, 41.664001, 28.060902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458035, 41.734058, 27.466156>,  <36.887074, 41.192230, 27.582193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458035, 41.734058, 27.466156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783371, 41.890034, 27.638861>,  <36.978573, 41.983620, 27.742483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783371, 41.890034, 27.638861>,  <36.458035, 41.734058, 27.466156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783371, 41.890034, 27.638861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039408, 0.777360, -0.627821,
		-0.580445, 0.493620, 0.647629,
		0.813346, 0.389937, 0.431762,
		37.027374, 42.007015, 27.768389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222748, 42.394222, 27.503750>,  <36.458035, 41.734058, 27.466156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222748, 42.394222, 27.503750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621712, 42.365471, 27.503204>,  <36.861092, 42.348221, 27.502876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621712, 42.365471, 27.503204>,  <36.222748, 42.394222, 27.503750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621712, 42.365471, 27.503204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055958, 0.788122, -0.612970,
		0.045136, 0.611307, 0.790105,
		0.997412, -0.071880, -0.001366,
		36.920937, 42.343906, 27.502794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323154, 43.089172, 27.315601>,  <36.222748, 42.394222, 27.503750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323154, 43.089172, 27.315601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663074, 42.889503, 27.247883>,  <36.867027, 42.769703, 27.207251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663074, 42.889503, 27.247883>,  <36.323154, 43.089172, 27.315601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663074, 42.889503, 27.247883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219171, 0.626733, -0.747777,
		0.479376, 0.598357, 0.642003,
		0.849802, -0.499175, -0.169298,
		36.918015, 42.739750, 27.197094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821712, 43.595852, 26.985706>,  <36.323154, 43.089172, 27.315601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821712, 43.595852, 26.985706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009701, 43.254456, 26.895655>,  <37.122494, 43.049618, 26.841623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009701, 43.254456, 26.895655>,  <36.821712, 43.595852, 26.985706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009701, 43.254456, 26.895655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381451, 0.426386, -0.820177,
		0.796004, 0.299584, 0.525953,
		0.469970, -0.853490, -0.225128,
		37.150692, 42.998409, 26.828115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523735, 43.773235, 26.864464>,  <36.821712, 43.595852, 26.985706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523735, 43.773235, 26.864464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460663, 43.415703, 26.696560>,  <37.422817, 43.201183, 26.595818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460663, 43.415703, 26.696560>,  <37.523735, 43.773235, 26.864464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460663, 43.415703, 26.696560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456595, 0.310915, -0.833578,
		0.875589, -0.323104, 0.359093,
		-0.157685, -0.893832, -0.419761,
		37.413357, 43.147552, 26.570631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062344, 43.641510, 26.507700>,  <37.523735, 43.773235, 26.864464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062344, 43.641510, 26.507700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827877, 43.368111, 26.333691>,  <37.687199, 43.204071, 26.229286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827877, 43.368111, 26.333691>,  <38.062344, 43.641510, 26.507700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827877, 43.368111, 26.333691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529879, 0.082770, -0.844024,
		0.612896, -0.725244, 0.313655,
		-0.586163, -0.683498, -0.435021,
		37.652027, 43.163063, 26.203184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471661, 43.239372, 26.080393>,  <38.062344, 43.641510, 26.507700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471661, 43.239372, 26.080393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108089, 43.178646, 25.925064>,  <37.889946, 43.142208, 25.831867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108089, 43.178646, 25.925064>,  <38.471661, 43.239372, 26.080393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108089, 43.178646, 25.925064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405848, -0.108706, -0.907453,
		0.095555, -0.982412, 0.160422,
		-0.908931, -0.151819, -0.388322,
		37.835411, 43.133102, 25.808567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505630, 42.737179, 25.584539>,  <38.471661, 43.239372, 26.080393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505630, 42.737179, 25.584539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170460, 42.935856, 25.494043>,  <37.969357, 43.055061, 25.439747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170460, 42.935856, 25.494043>,  <38.505630, 42.737179, 25.584539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170460, 42.935856, 25.494043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256296, -0.007886, -0.966566,
		-0.481868, -0.867892, -0.120692,
		-0.837923, 0.496691, -0.226238,
		37.919083, 43.084862, 25.426172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079639, 42.357254, 25.100655>,  <38.505630, 42.737179, 25.584539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079639, 42.357254, 25.100655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938660, 42.722946, 25.020697>,  <37.854073, 42.942360, 24.972721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938660, 42.722946, 25.020697>,  <38.079639, 42.357254, 25.100655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938660, 42.722946, 25.020697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209191, -0.131230, -0.969029,
		-0.912149, -0.383353, -0.144996,
		-0.352453, 0.914231, -0.199896,
		37.832924, 42.997215, 24.960728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682110, 42.318798, 24.423260>,  <38.079639, 42.357254, 25.100655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682110, 42.318798, 24.423260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769276, 42.705833, 24.474310>,  <37.821575, 42.938053, 24.504940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769276, 42.705833, 24.474310>,  <37.682110, 42.318798, 24.423260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769276, 42.705833, 24.474310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246072, 0.072073, -0.966568,
		-0.944437, 0.242038, -0.222390,
		0.217918, 0.967586, 0.127628,
		37.834652, 42.996109, 24.512598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509857, 42.564999, 23.762127>,  <37.682110, 42.318798, 24.423260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509857, 42.564999, 23.762127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741428, 42.853428, 23.914383>,  <37.880371, 43.026485, 24.005737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741428, 42.853428, 23.914383>,  <37.509857, 42.564999, 23.762127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741428, 42.853428, 23.914383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327568, 0.221821, -0.918420,
		-0.746686, 0.656386, -0.107783,
		0.578929, 0.721078, 0.380641,
		37.915108, 43.069752, 24.028576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320488, 43.133934, 23.448137>,  <37.509857, 42.564999, 23.762127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320488, 43.133934, 23.448137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691845, 43.210129, 23.575764>,  <37.914658, 43.255848, 23.652340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691845, 43.210129, 23.575764>,  <37.320488, 43.133934, 23.448137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691845, 43.210129, 23.575764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256489, 0.292812, -0.921127,
		-0.268892, 0.937003, 0.222986,
		0.928391, 0.190490, 0.319065,
		37.970364, 43.267277, 23.671484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594357, 43.730522, 23.080099>,  <37.320488, 43.133934, 23.448137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594357, 43.730522, 23.080099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923168, 43.546528, 23.214371>,  <38.120457, 43.436131, 23.294933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923168, 43.546528, 23.214371>,  <37.594357, 43.730522, 23.080099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923168, 43.546528, 23.214371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500850, 0.303540, -0.810563,
		0.270956, 0.834431, 0.479903,
		0.822029, -0.459986, 0.335679,
		38.169777, 43.408531, 23.315075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111366, 44.142246, 22.900909>,  <37.594357, 43.730522, 23.080099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111366, 44.142246, 22.900909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322243, 43.806160, 22.951691>,  <38.448769, 43.604507, 22.982159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322243, 43.806160, 22.951691>,  <38.111366, 44.142246, 22.900909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322243, 43.806160, 22.951691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536738, 0.213434, -0.816308,
		0.658775, 0.498489, 0.563493,
		0.527189, -0.840212, 0.126953,
		38.480400, 43.554096, 22.989777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718533, 44.347851, 22.758537>,  <38.111366, 44.142246, 22.900909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718533, 44.347851, 22.758537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760448, 43.952686, 22.712843>,  <38.785599, 43.715588, 22.685427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760448, 43.952686, 22.712843>,  <38.718533, 44.347851, 22.758537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760448, 43.952686, 22.712843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435718, 0.148862, -0.887688,
		0.893963, 0.043242, 0.446049,
		0.104786, -0.987912, -0.114236,
		38.791885, 43.656311, 22.678572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399517, 44.316120, 22.506430>,  <38.718533, 44.347851, 22.758537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399517, 44.316120, 22.506430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175758, 44.001289, 22.402441>,  <39.041504, 43.812389, 22.340048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175758, 44.001289, 22.402441>,  <39.399517, 44.316120, 22.506430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175758, 44.001289, 22.402441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346905, 0.062546, -0.935812,
		0.752818, -0.613674, 0.238054,
		-0.559395, -0.787078, -0.259973,
		39.007938, 43.765167, 22.324450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706524, 43.982433, 22.013464>,  <39.399517, 44.316120, 22.506430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706524, 43.982433, 22.013464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355476, 43.799583, 21.955740>,  <39.144848, 43.689873, 21.921104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355476, 43.799583, 21.955740>,  <39.706524, 43.982433, 22.013464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355476, 43.799583, 21.955740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139309, 0.044841, -0.989233,
		0.458678, -0.888269, 0.024329,
		-0.877615, -0.457129, -0.144312,
		39.092194, 43.662445, 21.912447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648273, 43.297726, 21.590757>,  <39.706524, 43.982433, 22.013464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648273, 43.297726, 21.590757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358643, 43.572029, 21.561224>,  <39.184864, 43.736610, 21.543505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358643, 43.572029, 21.561224>,  <39.648273, 43.297726, 21.590757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358643, 43.572029, 21.561224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149782, 0.051845, -0.987359,
		-0.673259, -0.725983, -0.140254,
		-0.724077, 0.685756, -0.073834,
		39.141418, 43.777756, 21.539074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686787, 42.698006, 21.121342>,  <39.648273, 43.297726, 21.590757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686787, 42.698006, 21.121342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062519, 42.630787, 21.001732>,  <40.287960, 42.590454, 20.929966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062519, 42.630787, 21.001732>,  <39.686787, 42.698006, 21.121342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062519, 42.630787, 21.001732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220272, -0.372733, 0.901416,
		-0.262939, -0.912595, -0.313103,
		0.939331, -0.168050, -0.299025,
		40.344318, 42.580372, 20.912024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915974, 41.988708, 21.245926>,  <39.686787, 42.698006, 21.121342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915974, 41.988708, 21.245926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219402, 42.249325, 21.242622>,  <40.401459, 42.405693, 21.240641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219402, 42.249325, 21.242622>,  <39.915974, 41.988708, 21.245926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219402, 42.249325, 21.242622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328878, -0.371903, 0.868059,
		0.562500, -0.661203, -0.496392,
		0.758573, 0.651536, -0.008260,
		40.446976, 42.444786, 21.240145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476997, 41.574417, 21.556494>,  <39.915974, 41.988708, 21.245926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476997, 41.574417, 21.556494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575470, 41.961575, 21.576803>,  <40.634556, 42.193867, 21.588989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575470, 41.961575, 21.576803>,  <40.476997, 41.574417, 21.556494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575470, 41.961575, 21.576803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349511, -0.137518, 0.926785,
		0.904010, -0.210414, -0.372144,
		0.246185, 0.967892, 0.050776,
		40.649326, 42.251942, 21.592035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135685, 41.563293, 21.778566>,  <40.476997, 41.574417, 21.556494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135685, 41.563293, 21.778566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993370, 41.921070, 21.886932>,  <40.907982, 42.135735, 21.951952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993370, 41.921070, 21.886932>,  <41.135685, 41.563293, 21.778566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993370, 41.921070, 21.886932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427520, -0.102005, 0.898232,
		0.831047, 0.435404, -0.346097,
		-0.355791, 0.894437, 0.270915,
		40.886631, 42.189400, 21.968206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708996, 41.929115, 22.133326>,  <41.135685, 41.563293, 21.778566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708996, 41.929115, 22.133326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343868, 42.067101, 22.220741>,  <41.124790, 42.149891, 22.273191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343868, 42.067101, 22.220741>,  <41.708996, 41.929115, 22.133326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343868, 42.067101, 22.220741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185519, -0.126438, 0.974472,
		0.363787, 0.930062, 0.051418,
		-0.912821, 0.344961, 0.218541,
		41.070023, 42.170589, 22.286304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826641, 41.916950, 22.843006>,  <41.708996, 41.929115, 22.133326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826641, 41.916950, 22.843006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437817, 42.003792, 22.807299>,  <41.204521, 42.055897, 22.785873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437817, 42.003792, 22.807299>,  <41.826641, 41.916950, 22.843006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437817, 42.003792, 22.807299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108528, -0.078444, 0.990994,
		0.208142, 0.972992, 0.099814,
		-0.972059, 0.217100, -0.089269,
		41.146198, 42.068920, 22.780518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669556, 42.321167, 23.427378>,  <41.826641, 41.916950, 22.843006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669556, 42.321167, 23.427378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325386, 42.176746, 23.283541>,  <41.118885, 42.090096, 23.197239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325386, 42.176746, 23.283541>,  <41.669556, 42.321167, 23.427378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325386, 42.176746, 23.283541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325183, -0.154268, 0.932983,
		-0.392329, 0.919698, 0.015329,
		-0.860427, -0.361051, -0.359594,
		41.067257, 42.068432, 23.175663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176888, 42.501816, 23.884501>,  <41.669556, 42.321167, 23.427378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176888, 42.501816, 23.884501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024204, 42.175842, 23.710058>,  <40.932594, 41.980259, 23.605392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024204, 42.175842, 23.710058>,  <41.176888, 42.501816, 23.884501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024204, 42.175842, 23.710058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348516, -0.310106, 0.884517,
		-0.856060, 0.489614, -0.165647,
		-0.381704, -0.814931, -0.436107,
		40.909695, 41.931362, 23.579226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553829, 42.391315, 24.228687>,  <41.176888, 42.501816, 23.884501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553829, 42.391315, 24.228687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610794, 42.036442, 24.053129>,  <40.644974, 41.823517, 23.947794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610794, 42.036442, 24.053129>,  <40.553829, 42.391315, 24.228687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610794, 42.036442, 24.053129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385005, -0.458146, 0.801170,
		-0.911861, 0.054880, -0.406815,
		0.142412, -0.887181, -0.438894,
		40.653519, 41.770287, 23.921461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968868, 42.067272, 24.534643>,  <40.553829, 42.391315, 24.228687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968868, 42.067272, 24.534643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217655, 41.787155, 24.394503>,  <40.366928, 41.619083, 24.310417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217655, 41.787155, 24.394503>,  <39.968868, 42.067272, 24.534643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217655, 41.787155, 24.394503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290596, -0.621896, 0.727186,
		-0.727130, -0.350470, -0.590299,
		0.621962, -0.700297, -0.350354,
		40.404243, 41.577065, 24.289396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537586, 41.448357, 24.471746>,  <39.968868, 42.067272, 24.534643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537586, 41.448357, 24.471746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921970, 41.337906, 24.478655>,  <40.152603, 41.271633, 24.482800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921970, 41.337906, 24.478655>,  <39.537586, 41.448357, 24.471746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921970, 41.337906, 24.478655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161656, -0.509719, 0.845017,
		-0.224531, -0.814824, -0.534460,
		0.960965, -0.276131, 0.017273,
		40.210258, 41.255066, 24.483837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516235, 40.722210, 24.714161>,  <39.537586, 41.448357, 24.471746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516235, 40.722210, 24.714161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891560, 40.841408, 24.784334>,  <40.116753, 40.912926, 24.826439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891560, 40.841408, 24.784334>,  <39.516235, 40.722210, 24.714161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891560, 40.841408, 24.784334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042113, -0.405077, 0.913312,
		0.343228, -0.864356, -0.367537,
		0.938307, 0.297996, 0.175434,
		40.173054, 40.930805, 24.836964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896912, 40.205437, 25.054321>,  <39.516235, 40.722210, 24.714161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896912, 40.205437, 25.054321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039036, 40.564957, 25.157011>,  <40.124310, 40.780670, 25.218624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039036, 40.564957, 25.157011>,  <39.896912, 40.205437, 25.054321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039036, 40.564957, 25.157011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002826, -0.273611, 0.961837,
		0.934743, -0.342479, -0.094678,
		0.355313, 0.898802, 0.256723,
		40.145630, 40.834599, 25.234028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475910, 40.141621, 25.515377>,  <39.896912, 40.205437, 25.054321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475910, 40.141621, 25.515377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349377, 40.517265, 25.569048>,  <40.273457, 40.742653, 25.601252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349377, 40.517265, 25.569048>,  <40.475910, 40.141621, 25.515377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349377, 40.517265, 25.569048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150372, -0.090016, 0.984523,
		0.936655, 0.331614, -0.112740,
		-0.316333, 0.939111, 0.134179,
		40.254478, 40.799000, 25.609303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984921, 40.443634, 25.921818>,  <40.475910, 40.141621, 25.515377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984921, 40.443634, 25.921818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669331, 40.685188, 25.967142>,  <40.479977, 40.830120, 25.994337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669331, 40.685188, 25.967142>,  <40.984921, 40.443634, 25.921818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669331, 40.685188, 25.967142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046215, -0.125565, 0.991008,
		0.612685, 0.787117, 0.071159,
		-0.788975, 0.603888, 0.113308,
		40.432640, 40.866356, 26.001135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163181, 40.777267, 26.485975>,  <40.984921, 40.443634, 25.921818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163181, 40.777267, 26.485975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767750, 40.835400, 26.470024>,  <40.530491, 40.870281, 26.460453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767750, 40.835400, 26.470024>,  <41.163181, 40.777267, 26.485975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767750, 40.835400, 26.470024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049062, -0.060154, 0.996983,
		0.142495, 0.987553, 0.066598,
		-0.988579, 0.145332, -0.039880,
		40.471176, 40.878998, 26.458059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938637, 41.014191, 27.184336>,  <41.163181, 40.777267, 26.485975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938637, 41.014191, 27.184336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587013, 40.914635, 27.021700>,  <40.376041, 40.854900, 26.924118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587013, 40.914635, 27.021700>,  <40.938637, 41.014191, 27.184336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587013, 40.914635, 27.021700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354012, -0.230401, 0.906416,
		-0.319276, 0.940728, 0.114425,
		-0.879055, -0.248889, -0.406591,
		40.323296, 40.839970, 26.899723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550613, 41.267921, 27.723368>,  <40.938637, 41.014191, 27.184336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550613, 41.267921, 27.723368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339996, 41.019730, 27.490900>,  <40.213627, 40.870815, 27.351419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339996, 41.019730, 27.490900>,  <40.550613, 41.267921, 27.723368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339996, 41.019730, 27.490900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362512, -0.454475, 0.813657,
		-0.768984, 0.639106, 0.014369,
		-0.526544, -0.620480, -0.581168,
		40.182034, 40.833584, 27.316549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844601, 41.281086, 27.945536>,  <40.550613, 41.267921, 27.723368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844601, 41.281086, 27.945536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868774, 40.926952, 27.761133>,  <39.883278, 40.714470, 27.650492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868774, 40.926952, 27.761133>,  <39.844601, 41.281086, 27.945536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868774, 40.926952, 27.761133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426863, -0.440412, 0.789826,
		-0.902295, 0.149054, -0.404533,
		0.060434, -0.885336, -0.461007,
		39.886906, 40.661350, 27.622831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147705, 40.778946, 28.023991>,  <39.844601, 41.281086, 27.945536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147705, 40.778946, 28.023991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430077, 40.510639, 27.933010>,  <39.599499, 40.349655, 27.878422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430077, 40.510639, 27.933010>,  <39.147705, 40.778946, 28.023991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430077, 40.510639, 27.933010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230107, -0.520909, 0.822012,
		-0.669861, -0.527945, -0.522074,
		0.705930, -0.670766, -0.227453,
		39.641857, 40.309410, 27.864775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841496, 40.134117, 28.143854>,  <39.147705, 40.778946, 28.023991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841496, 40.134117, 28.143854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235550, 40.065437, 28.142138>,  <39.471985, 40.024227, 28.141108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235550, 40.065437, 28.142138>,  <38.841496, 40.134117, 28.143854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235550, 40.065437, 28.142138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111480, -0.658208, 0.744536,
		-0.130663, -0.732994, -0.667568,
		0.985139, -0.171704, -0.004289,
		39.531094, 40.013927, 28.140850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824223, 39.492397, 28.304874>,  <38.841496, 40.134117, 28.143854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824223, 39.492397, 28.304874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186459, 39.631351, 28.402220>,  <39.403801, 39.714725, 28.460627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186459, 39.631351, 28.402220>,  <38.824223, 39.492397, 28.304874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186459, 39.631351, 28.402220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043250, -0.495150, 0.867730,
		0.421940, -0.796335, -0.433379,
		0.905592, 0.347386, 0.243365,
		39.458138, 39.735569, 28.475229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217934, 38.797020, 28.438484>,  <38.824223, 39.492397, 28.304874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217934, 38.797020, 28.438484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402569, 39.102585, 28.618876>,  <39.513351, 39.285923, 28.727110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402569, 39.102585, 28.618876>,  <39.217934, 38.797020, 28.438484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402569, 39.102585, 28.618876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320701, -0.617691, 0.718059,
		0.827097, -0.186817, -0.530104,
		0.461586, 0.763909, 0.450978,
		39.541046, 39.331757, 28.754169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776096, 38.541744, 28.746759>,  <39.217934, 38.797020, 28.438484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776096, 38.541744, 28.746759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769806, 38.893646, 28.936827>,  <39.766033, 39.104786, 29.050867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769806, 38.893646, 28.936827>,  <39.776096, 38.541744, 28.746759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769806, 38.893646, 28.936827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149627, -0.467804, 0.871075,
		0.988618, 0.084795, -0.124279,
		-0.015725, 0.879755, 0.475167,
		39.765087, 39.157574, 29.079376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341263, 38.555580, 29.243025>,  <39.776096, 38.541744, 28.746759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341263, 38.555580, 29.243025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070854, 38.822861, 29.367281>,  <39.908607, 38.983231, 29.441835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070854, 38.822861, 29.367281>,  <40.341263, 38.555580, 29.243025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070854, 38.822861, 29.367281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023745, -0.401591, 0.915511,
		0.736496, 0.626285, 0.255619,
		-0.676025, 0.668201, 0.310641,
		39.868046, 39.023319, 29.460474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542618, 38.750622, 29.882877>,  <40.341263, 38.555580, 29.243025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542618, 38.750622, 29.882877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153923, 38.844692, 29.874680>,  <39.920708, 38.901134, 29.869761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153923, 38.844692, 29.874680>,  <40.542618, 38.750622, 29.882877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153923, 38.844692, 29.874680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110752, -0.377498, 0.919363,
		0.208478, 0.895648, 0.392875,
		-0.971736, 0.235178, -0.020494,
		39.862404, 38.915245, 29.868530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350471, 39.175484, 30.591440>,  <40.542618, 38.750622, 29.882877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350471, 39.175484, 30.591440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033447, 39.004627, 30.417362>,  <39.843231, 38.902115, 30.312916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033447, 39.004627, 30.417362>,  <40.350471, 39.175484, 30.591440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033447, 39.004627, 30.417362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313938, -0.326021, 0.891714,
		-0.522768, 0.843365, 0.124297,
		-0.792563, -0.427138, -0.435197,
		39.795677, 38.876484, 30.286802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030293, 39.315876, 31.041159>,  <40.350471, 39.175484, 30.591440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030293, 39.315876, 31.041159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801044, 39.054832, 30.842909>,  <39.663498, 38.898209, 30.723959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801044, 39.054832, 30.842909>,  <40.030293, 39.315876, 31.041159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801044, 39.054832, 30.842909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313211, -0.384441, 0.868392,
		-0.757255, 0.652925, 0.015926,
		-0.573117, -0.652606, -0.495623,
		39.629108, 38.859051, 30.694221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266350, 39.308056, 31.333658>,  <40.030293, 39.315876, 31.041159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266350, 39.308056, 31.333658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336845, 38.966808, 31.137238>,  <39.379143, 38.762062, 31.019384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336845, 38.966808, 31.137238>,  <39.266350, 39.308056, 31.333658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336845, 38.966808, 31.137238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224138, -0.520537, 0.823895,
		-0.958489, -0.035138, -0.282955,
		0.176239, -0.853116, -0.491054,
		39.389717, 38.710873, 30.989922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863541, 38.897305, 31.712343>,  <39.266350, 39.308056, 31.333658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863541, 38.897305, 31.712343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092125, 38.617367, 31.540928>,  <39.229275, 38.449402, 31.438078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092125, 38.617367, 31.540928>,  <38.863541, 38.897305, 31.712343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092125, 38.617367, 31.540928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168918, -0.611341, 0.773129,
		-0.803057, -0.369423, -0.467574,
		0.571459, -0.699849, -0.428540,
		39.263561, 38.407413, 31.412367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499718, 38.342911, 31.940332>,  <38.863541, 38.897305, 31.712343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499718, 38.342911, 31.940332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865059, 38.237030, 31.816584>,  <39.084263, 38.173500, 31.742334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865059, 38.237030, 31.816584>,  <38.499718, 38.342911, 31.940332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865059, 38.237030, 31.816584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151382, -0.484587, 0.861544,
		-0.377974, -0.833731, -0.402528,
		0.913356, -0.264705, -0.309373,
		39.139065, 38.157619, 31.723772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572880, 37.615936, 31.995201>,  <38.499718, 38.342911, 31.940332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572880, 37.615936, 31.995201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944462, 37.763950, 31.999580>,  <39.167412, 37.852760, 32.002209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944462, 37.763950, 31.999580>,  <38.572880, 37.615936, 31.995201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944462, 37.763950, 31.999580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217396, -0.569214, 0.792928,
		0.299645, -0.734212, -0.609218,
		0.928952, 0.370038, 0.010947,
		39.223148, 37.874962, 32.002865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925865, 36.985016, 32.086861>,  <38.572880, 37.615936, 31.995201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925865, 36.985016, 32.086861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161686, 37.295273, 32.177017>,  <39.303177, 37.481426, 32.231110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161686, 37.295273, 32.177017>,  <38.925865, 36.985016, 32.086861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161686, 37.295273, 32.177017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406297, -0.525944, 0.747198,
		0.698106, -0.348936, -0.625214,
		0.589552, 0.775646, 0.225393,
		39.338551, 37.527966, 32.244637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593925, 36.774853, 32.094902>,  <38.925865, 36.985016, 32.086861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593925, 36.774853, 32.094902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595306, 37.087654, 32.344208>,  <39.596134, 37.275333, 32.493790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595306, 37.087654, 32.344208>,  <39.593925, 36.774853, 32.094902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595306, 37.087654, 32.344208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344957, -0.585943, 0.733264,
		0.938612, 0.212466, -0.271782,
		0.003455, 0.782003, 0.623265,
		39.596344, 37.322254, 32.531189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182751, 36.708790, 32.454075>,  <39.593925, 36.774853, 32.094902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182751, 36.708790, 32.454075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953110, 36.943409, 32.682590>,  <39.815327, 37.084183, 32.819698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953110, 36.943409, 32.682590>,  <40.182751, 36.708790, 32.454075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953110, 36.943409, 32.682590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209143, -0.569531, 0.794917,
		0.791625, 0.575842, 0.204295,
		-0.574099, 0.586549, 0.571288,
		39.780880, 37.119373, 32.853977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474121, 36.704670, 33.048157>,  <40.182751, 36.708790, 32.454075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474121, 36.704670, 33.048157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113041, 36.847794, 33.143742>,  <39.896393, 36.933670, 33.201092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113041, 36.847794, 33.143742>,  <40.474121, 36.704670, 33.048157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113041, 36.847794, 33.143742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082002, -0.688260, 0.720815,
		0.422383, 0.631085, 0.650634,
		-0.902701, 0.357813, 0.238959,
		39.842232, 36.955139, 33.215431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459026, 36.745895, 33.776569>,  <40.474121, 36.704670, 33.048157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459026, 36.745895, 33.776569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074810, 36.723774, 33.667542>,  <39.844280, 36.710503, 33.602123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074810, 36.723774, 33.667542>,  <40.459026, 36.745895, 33.776569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074810, 36.723774, 33.667542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134429, -0.765629, 0.629080,
		-0.243477, 0.640901, 0.727987,
		-0.960545, -0.055304, -0.272569,
		39.786648, 36.707184, 33.585770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132065, 36.706165, 34.407001>,  <40.459026, 36.745895, 33.776569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132065, 36.706165, 34.407001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845520, 36.596462, 34.150375>,  <39.673595, 36.530640, 33.996399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845520, 36.596462, 34.150375>,  <40.132065, 36.706165, 34.407001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845520, 36.596462, 34.150375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346080, -0.658759, 0.668031,
		-0.605854, 0.700584, 0.376991,
		-0.716359, -0.274260, -0.641570,
		39.630611, 36.514183, 33.957905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486610, 36.680428, 34.773941>,  <40.132065, 36.706165, 34.407001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486610, 36.680428, 34.773941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460793, 36.426708, 34.465786>,  <39.445301, 36.274479, 34.280891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460793, 36.426708, 34.465786>,  <39.486610, 36.680428, 34.773941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460793, 36.426708, 34.465786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171190, -0.753519, 0.634746,
		-0.983122, 0.172852, -0.059950,
		-0.064544, -0.634296, -0.770392,
		39.441429, 36.236420, 34.234669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973114, 36.215221, 34.916718>,  <39.486610, 36.680428, 34.773941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973114, 36.215221, 34.916718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137379, 36.017925, 34.609974>,  <39.235935, 35.899548, 34.425926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137379, 36.017925, 34.609974>,  <38.973114, 36.215221, 34.916718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137379, 36.017925, 34.609974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129509, -0.864078, 0.486413,
		-0.902544, -0.100435, -0.418720,
		0.410660, -0.493237, -0.766861,
		39.260578, 35.869953, 34.379917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584541, 35.551037, 34.793755>,  <38.973114, 36.215221, 34.916718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584541, 35.551037, 34.793755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958843, 35.487980, 34.667568>,  <39.183422, 35.450146, 34.591854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958843, 35.487980, 34.667568>,  <38.584541, 35.551037, 34.793755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958843, 35.487980, 34.667568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073951, -0.962358, 0.261532,
		-0.344820, -0.221400, -0.912185,
		0.935751, -0.157638, -0.315467,
		39.239567, 35.440689, 34.572929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546337, 34.960667, 34.374710>,  <38.584541, 35.551037, 34.793755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546337, 34.960667, 34.374710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928680, 34.978867, 34.490829>,  <39.158085, 34.989784, 34.560501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928680, 34.978867, 34.490829>,  <38.546337, 34.960667, 34.374710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928680, 34.978867, 34.490829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020202, -0.975427, 0.219394,
		0.293146, -0.215573, -0.931447,
		0.955854, 0.045497, 0.290298,
		39.215435, 34.992516, 34.577919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777748, 34.341427, 34.109840>,  <38.546337, 34.960667, 34.374710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777748, 34.341427, 34.109840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029518, 34.463825, 34.395550>,  <39.180580, 34.537266, 34.566975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029518, 34.463825, 34.395550>,  <38.777748, 34.341427, 34.109840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029518, 34.463825, 34.395550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005751, -0.921009, 0.389499,
		0.777037, -0.241054, -0.581469,
		0.629428, 0.305999, 0.714272,
		39.218346, 34.555626, 34.609833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914066, 33.764061, 34.488747>,  <38.777748, 34.341427, 34.109840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914066, 33.764061, 34.488747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166576, 33.966549, 34.723774>,  <39.318085, 34.088039, 34.864788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166576, 33.966549, 34.723774>,  <38.914066, 33.764061, 34.488747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166576, 33.966549, 34.723774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231307, -0.846015, 0.480370,
		0.740259, -0.167340, -0.651163,
		0.631279, 0.506217, 0.587564,
		39.355961, 34.118416, 34.900043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735512, 33.423618, 34.474880>,  <38.914066, 33.764061, 34.488747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735512, 33.423618, 34.474880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566883, 33.599617, 34.792038>,  <39.465706, 33.705215, 34.982330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566883, 33.599617, 34.792038>,  <39.735512, 33.423618, 34.474880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566883, 33.599617, 34.792038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097139, -0.891271, 0.442945,
		0.901576, 0.109714, 0.418478,
		-0.421575, 0.439999, 0.792891,
		39.440411, 33.731617, 35.029903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012913, 33.067596, 35.121300>,  <39.735512, 33.423618, 34.474880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012913, 33.067596, 35.121300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667015, 33.238781, 35.226421>,  <39.459476, 33.341492, 35.289494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667015, 33.238781, 35.226421>,  <40.012913, 33.067596, 35.121300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667015, 33.238781, 35.226421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197520, -0.770942, 0.605504,
		0.461742, 0.471695, 0.751198,
		-0.864743, 0.427963, 0.262807,
		39.407593, 33.367168, 35.305264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051075, 32.927742, 35.802330>,  <40.012913, 33.067596, 35.121300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051075, 32.927742, 35.802330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672623, 32.988773, 35.688103>,  <39.445549, 33.025394, 35.619568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672623, 32.988773, 35.688103>,  <40.051075, 32.927742, 35.802330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672623, 32.988773, 35.688103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280406, -0.827100, 0.487111,
		-0.161867, 0.540947, 0.825333,
		-0.946135, 0.152582, -0.285565,
		39.388783, 33.034550, 35.602432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734440, 32.783337, 36.387775>,  <40.051075, 32.927742, 35.802330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734440, 32.783337, 36.387775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471916, 32.755112, 36.087303>,  <39.314400, 32.738178, 35.907021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471916, 32.755112, 36.087303>,  <39.734440, 32.783337, 36.387775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471916, 32.755112, 36.087303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385218, -0.824731, 0.414035,
		-0.648738, 0.561105, 0.514100,
		-0.656312, -0.070560, -0.751183,
		39.275024, 32.733944, 35.861950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237923, 32.565548, 36.736198>,  <39.734440, 32.783337, 36.387775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237923, 32.565548, 36.736198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162460, 32.488316, 36.351048>,  <39.117184, 32.441978, 36.119957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162460, 32.488316, 36.351048>,  <39.237923, 32.565548, 36.736198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162460, 32.488316, 36.351048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554598, -0.788216, 0.266716,
		-0.810451, 0.584326, 0.041621,
		-0.188656, -0.193077, -0.962876,
		39.105865, 32.430393, 36.062183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505730, 32.328278, 36.775421>,  <39.237923, 32.565548, 36.736198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505730, 32.328278, 36.775421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732365, 32.189800, 36.476322>,  <38.868347, 32.106712, 36.296864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732365, 32.189800, 36.476322>,  <38.505730, 32.328278, 36.775421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732365, 32.189800, 36.476322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528997, -0.848587, -0.007953,
		-0.631775, 0.400062, -0.663936,
		0.566589, -0.346195, -0.747747,
		38.902340, 32.085941, 36.251999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036678, 32.176785, 36.347328>,  <38.505730, 32.328278, 36.775421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036678, 32.176785, 36.347328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338818, 31.965490, 36.192196>,  <38.520100, 31.838713, 36.099117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338818, 31.965490, 36.192196>,  <38.036678, 32.176785, 36.347328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338818, 31.965490, 36.192196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538472, -0.837595, 0.092095,
		-0.373493, 0.139272, -0.917118,
		0.755348, -0.528240, -0.387830,
		38.565422, 31.807018, 36.075848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757217, 31.739182, 35.836166>,  <38.036678, 32.176785, 36.347328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757217, 31.739182, 35.836166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108009, 31.565111, 35.917679>,  <38.318485, 31.460669, 35.966587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108009, 31.565111, 35.917679>,  <37.757217, 31.739182, 35.836166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108009, 31.565111, 35.917679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451801, -0.891164, 0.041267,
		0.163646, -0.128260, -0.978146,
		0.876981, -0.435174, 0.203783,
		38.371105, 31.434559, 35.978813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709152, 31.133308, 35.470745>,  <37.757217, 31.739182, 35.836166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709152, 31.133308, 35.470745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988785, 31.088888, 35.753292>,  <38.156563, 31.062237, 35.922821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988785, 31.088888, 35.753292>,  <37.709152, 31.133308, 35.470745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988785, 31.088888, 35.753292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318266, -0.932940, 0.168314,
		0.640305, -0.342477, -0.687546,
		0.699083, -0.111050, 0.706365,
		38.198509, 31.055573, 35.965202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313721, 30.612425, 35.289341>,  <37.709152, 31.133308, 35.470745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313721, 30.612425, 35.289341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193466, 30.652378, 35.668739>,  <38.121315, 30.676350, 35.896378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193466, 30.652378, 35.668739>,  <38.313721, 30.612425, 35.289341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193466, 30.652378, 35.668739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296404, -0.955040, 0.006624,
		0.906513, -0.279147, 0.316721,
		-0.300632, 0.099882, 0.948496,
		38.103275, 30.682343, 35.953289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505322, 29.965446, 35.608395>,  <38.313721, 30.612425, 35.289341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505322, 29.965446, 35.608395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215832, 30.132462, 35.828171>,  <38.042137, 30.232670, 35.960037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215832, 30.132462, 35.828171>,  <38.505322, 29.965446, 35.608395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215832, 30.132462, 35.828171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519660, -0.853623, -0.035803,
		0.454068, -0.311435, 0.834764,
		-0.723724, 0.417536, 0.549443,
		37.998714, 30.257723, 35.993004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338837, 29.486835, 36.107059>,  <38.505322, 29.965446, 35.608395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338837, 29.486835, 36.107059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003174, 29.704071, 36.095230>,  <37.801777, 29.834412, 36.088131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003174, 29.704071, 36.095230>,  <38.338837, 29.486835, 36.107059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003174, 29.704071, 36.095230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540527, -0.826682, 0.156292,
		0.060430, 0.147140, 0.987268,
		-0.839154, 0.543089, -0.029577,
		37.751427, 29.866999, 36.086357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968918, 29.128464, 36.549107>,  <38.338837, 29.486835, 36.107059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968918, 29.128464, 36.549107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708054, 29.368223, 36.363457>,  <37.551537, 29.512079, 36.252068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708054, 29.368223, 36.363457>,  <37.968918, 29.128464, 36.549107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708054, 29.368223, 36.363457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679021, -0.734094, 0.006063,
		-0.337074, 0.319101, 0.885751,
		-0.652160, 0.599400, -0.464120,
		37.512405, 29.548042, 36.224220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341568, 29.140615, 36.980110>,  <37.968918, 29.128464, 36.549107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341568, 29.140615, 36.980110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231312, 29.244392, 36.609875>,  <37.165157, 29.306658, 36.387733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231312, 29.244392, 36.609875>,  <37.341568, 29.140615, 36.980110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231312, 29.244392, 36.609875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723890, -0.689555, 0.022294,
		-0.632458, 0.676168, 0.377879,
		-0.275643, 0.259443, -0.925586,
		37.148621, 29.322226, 36.332199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626179, 29.183697, 37.012211>,  <37.341568, 29.140615, 36.980110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626179, 29.183697, 37.012211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680901, 29.171131, 36.616173>,  <36.713734, 29.163591, 36.378548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680901, 29.171131, 36.616173>,  <36.626179, 29.183697, 37.012211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680901, 29.171131, 36.616173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721098, -0.688452, -0.077795,
		-0.679192, 0.724601, -0.116836,
		0.136806, -0.031412, -0.990100,
		36.721943, 29.161707, 36.319141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949165, 29.045582, 36.638199>,  <36.626179, 29.183697, 37.012211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949165, 29.045582, 36.638199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248943, 28.916853, 36.406765>,  <36.428810, 28.839617, 36.267902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248943, 28.916853, 36.406765>,  <35.949165, 29.045582, 36.638199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248943, 28.916853, 36.406765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417781, -0.907826, -0.036201,
		-0.513608, 0.268855, -0.814815,
		0.749444, -0.321821, -0.578589,
		36.473778, 28.820307, 36.233189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638824, 28.605154, 36.176163>,  <35.949165, 29.045582, 36.638199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638824, 28.605154, 36.176163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025932, 28.524946, 36.237118>,  <36.258198, 28.476822, 36.273689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025932, 28.524946, 36.237118>,  <35.638824, 28.605154, 36.176163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025932, 28.524946, 36.237118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216700, -0.971295, 0.098117,
		0.128335, -0.127976, -0.983439,
		0.967766, -0.200519, 0.152383,
		36.316261, 28.464790, 36.282833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793549, 28.169613, 35.618427>,  <35.638824, 28.605154, 36.176163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793549, 28.169613, 35.618427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012539, 28.084255, 35.942089>,  <36.143932, 28.033041, 36.136288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012539, 28.084255, 35.942089>,  <35.793549, 28.169613, 35.618427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012539, 28.084255, 35.942089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329999, -0.943635, -0.025580,
		0.769008, -0.253017, -0.587034,
		0.547473, -0.213392, 0.809158,
		36.176781, 28.020237, 36.184837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221798, 27.548668, 35.556961>,  <35.793549, 28.169613, 35.618427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221798, 27.548668, 35.556961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228889, 27.599684, 35.953632>,  <36.233143, 27.630293, 36.191635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228889, 27.599684, 35.953632>,  <36.221798, 27.548668, 35.556961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228889, 27.599684, 35.953632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132042, -0.982845, 0.128764,
		0.991086, -0.133225, -0.000584,
		0.017729, 0.127539, 0.991675,
		36.234207, 27.637945, 36.251137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036694, 27.393398, 35.588390>,  <36.221798, 27.548668, 35.556961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036694, 27.393398, 35.588390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412769, 27.257458, 35.579075>,  <37.638416, 27.175894, 35.573486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412769, 27.257458, 35.579075>,  <37.036694, 27.393398, 35.588390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412769, 27.257458, 35.579075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209468, -0.522858, -0.826282,
		0.268634, 0.781742, -0.562774,
		0.940191, -0.339850, -0.023292,
		37.694828, 27.155502, 35.572086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155022, 28.060947, 36.026173>,  <37.036694, 27.393398, 35.588390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155022, 28.060947, 36.026173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805351, 28.242840, 35.958004>,  <36.595551, 28.351976, 35.917103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805351, 28.242840, 35.958004>,  <37.155022, 28.060947, 36.026173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805351, 28.242840, 35.958004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485419, 0.808234, -0.333356,
		-0.013849, -0.374135, -0.927271,
		-0.874172, 0.454732, -0.170419,
		36.543098, 28.379259, 35.906879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288155, 28.467703, 35.527565>,  <37.155022, 28.060947, 36.026173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288155, 28.467703, 35.527565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950424, 28.630638, 35.666817>,  <36.747787, 28.728399, 35.750366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950424, 28.630638, 35.666817>,  <37.288155, 28.467703, 35.527565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950424, 28.630638, 35.666817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420530, 0.906370, -0.040597,
		-0.332069, 0.112121, -0.936568,
		-0.844325, 0.407336, 0.348128,
		36.697128, 28.752838, 35.771255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059299, 29.062351, 35.079445>,  <37.288155, 28.467703, 35.527565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059299, 29.062351, 35.079445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951603, 29.096590, 35.463150>,  <36.886986, 29.117132, 35.693375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951603, 29.096590, 35.463150>,  <37.059299, 29.062351, 35.079445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951603, 29.096590, 35.463150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475890, 0.877768, 0.055245,
		-0.837281, 0.471378, -0.277062,
		-0.269238, 0.085595, 0.959262,
		36.870831, 29.122269, 35.750927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811493, 29.706987, 35.168598>,  <37.059299, 29.062351, 35.079445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811493, 29.706987, 35.168598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923492, 29.589874, 35.534306>,  <36.990692, 29.519606, 35.753731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923492, 29.589874, 35.534306>,  <36.811493, 29.706987, 35.168598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923492, 29.589874, 35.534306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496596, 0.859213, 0.123069,
		-0.821581, 0.419561, 0.385971,
		0.279996, -0.292783, 0.914265,
		37.007492, 29.502039, 35.808586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685493, 30.296030, 35.563732>,  <36.811493, 29.706987, 35.168598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685493, 30.296030, 35.563732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951237, 30.092583, 35.782799>,  <37.110683, 29.970514, 35.914238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951237, 30.092583, 35.782799>,  <36.685493, 30.296030, 35.563732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951237, 30.092583, 35.782799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479502, 0.852118, 0.209697,
		-0.573334, 0.123295, 0.809992,
		0.664354, -0.508619, 0.547668,
		37.150543, 29.939997, 35.947098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706951, 30.568222, 36.229290>,  <36.685493, 30.296030, 35.563732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706951, 30.568222, 36.229290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049351, 30.366590, 36.183372>,  <37.254791, 30.245611, 36.155823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049351, 30.366590, 36.183372>,  <36.706951, 30.568222, 36.229290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049351, 30.366590, 36.183372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512009, 0.795863, 0.323187,
		-0.071552, -0.335422, 0.939347,
		0.855995, -0.504078, -0.114793,
		37.306149, 30.215366, 36.148933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108391, 30.671801, 36.821743>,  <36.706951, 30.568222, 36.229290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108391, 30.671801, 36.821743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388866, 30.563910, 36.557751>,  <37.557152, 30.499174, 36.399357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388866, 30.563910, 36.557751>,  <37.108391, 30.671801, 36.821743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388866, 30.563910, 36.557751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584390, 0.747714, 0.315295,
		0.408433, -0.606770, 0.681918,
		0.701192, -0.269729, -0.659982,
		37.599224, 30.482990, 36.359756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795696, 30.897852, 37.181965>,  <37.108391, 30.671801, 36.821743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795696, 30.897852, 37.181965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881050, 30.849361, 36.794197>,  <37.932262, 30.820267, 36.561539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881050, 30.849361, 36.794197>,  <37.795696, 30.897852, 37.181965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881050, 30.849361, 36.794197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550653, 0.834564, 0.016845,
		0.806999, -0.537407, 0.244839,
		0.213387, -0.121227, -0.969417,
		37.945065, 30.812994, 36.503372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445831, 30.607954, 37.032970>,  <37.795696, 30.897852, 37.181965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445831, 30.607954, 37.032970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569607, 30.598303, 36.652725>,  <38.643871, 30.592512, 36.424580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569607, 30.598303, 36.652725>,  <38.445831, 30.607954, 37.032970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569607, 30.598303, 36.652725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032933, 0.998806, -0.036070,
		0.950350, 0.042468, 0.308271,
		0.309435, -0.024127, -0.950615,
		38.662437, 30.591064, 36.367542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165733, 30.868422, 36.801208>,  <38.445831, 30.607954, 37.032970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165733, 30.868422, 36.801208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873779, 30.917084, 36.532146>,  <38.698608, 30.946281, 36.370708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873779, 30.917084, 36.532146>,  <39.165733, 30.868422, 36.801208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873779, 30.917084, 36.532146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233320, 0.969277, -0.077867,
		0.642517, -0.213778, -0.735847,
		-0.729886, 0.121657, -0.672656,
		38.654812, 30.953581, 36.330349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525032, 30.912142, 36.179298>,  <39.165733, 30.868422, 36.801208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525032, 30.912142, 36.179298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168732, 31.092793, 36.158905>,  <38.954952, 31.201183, 36.146667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168732, 31.092793, 36.158905>,  <39.525032, 30.912142, 36.179298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168732, 31.092793, 36.158905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441523, 0.833251, -0.332792,
		-0.107816, -0.318945, -0.941621,
		-0.890749, 0.451628, -0.050984,
		38.901508, 31.228281, 36.143608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700256, 31.381823, 35.620033>,  <39.525032, 30.912142, 36.179298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700256, 31.381823, 35.620033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338661, 31.499725, 35.743916>,  <39.121704, 31.570467, 35.818245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338661, 31.499725, 35.743916>,  <39.700256, 31.381823, 35.620033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338661, 31.499725, 35.743916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144491, 0.892371, -0.427547,
		-0.402394, -0.341750, -0.849286,
		-0.903992, 0.294757, 0.309705,
		39.067463, 31.588152, 35.836826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399509, 31.586922, 35.086040>,  <39.700256, 31.381823, 35.620033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399509, 31.586922, 35.086040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219200, 31.776226, 35.388783>,  <39.111015, 31.889809, 35.570427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219200, 31.776226, 35.388783>,  <39.399509, 31.586922, 35.086040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219200, 31.776226, 35.388783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090905, 0.867814, -0.488503,
		-0.887999, -0.151401, -0.434207,
		-0.450771, 0.473261, 0.756855,
		39.083969, 31.918205, 35.615837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933826, 32.088909, 34.798843>,  <39.399509, 31.586922, 35.086040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933826, 32.088909, 34.798843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960331, 32.186161, 35.185936>,  <38.976234, 32.244514, 35.418190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960331, 32.186161, 35.185936>,  <38.933826, 32.088909, 34.798843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960331, 32.186161, 35.185936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090026, 0.967360, -0.236875,
		-0.993733, -0.071424, 0.085990,
		0.066265, 0.243132, 0.967727,
		38.980209, 32.259102, 35.476254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392658, 32.618610, 34.927029>,  <38.933826, 32.088909, 34.798843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392658, 32.618610, 34.927029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630356, 32.668266, 35.244888>,  <38.772972, 32.698059, 35.435604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630356, 32.668266, 35.244888>,  <38.392658, 32.618610, 34.927029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630356, 32.668266, 35.244888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046453, 0.981070, -0.188001,
		-0.802945, 0.148631, 0.577225,
		0.594241, 0.124140, 0.794649,
		38.808628, 32.705509, 35.483284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136086, 33.273605, 35.232159>,  <38.392658, 32.618610, 34.927029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136086, 33.273605, 35.232159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509716, 33.207153, 35.358593>,  <38.733894, 33.167282, 35.434452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509716, 33.207153, 35.358593>,  <38.136086, 33.273605, 35.232159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509716, 33.207153, 35.358593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210213, 0.971372, -0.110665,
		-0.288651, 0.169814, 0.942255,
		0.934072, -0.166130, 0.316085,
		38.789936, 33.157314, 35.453419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243855, 33.769402, 35.677937>,  <38.136086, 33.273605, 35.232159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243855, 33.769402, 35.677937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607021, 33.648136, 35.562164>,  <38.824921, 33.575375, 35.492699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607021, 33.648136, 35.562164>,  <38.243855, 33.769402, 35.677937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607021, 33.648136, 35.562164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295385, 0.952712, -0.071325,
		0.297371, -0.020737, 0.954537,
		0.907920, -0.303165, -0.289434,
		38.879398, 33.557186, 35.475334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700615, 34.280144, 35.953449>,  <38.243855, 33.769402, 35.677937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700615, 34.280144, 35.953449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898228, 34.102158, 35.654671>,  <39.016796, 33.995365, 35.475403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898228, 34.102158, 35.654671>,  <38.700615, 34.280144, 35.953449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898228, 34.102158, 35.654671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394603, 0.880286, -0.263409,
		0.774738, -0.164615, 0.610478,
		0.494034, -0.444969, -0.746949,
		39.046436, 33.968666, 35.430588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322720, 34.615471, 35.941292>,  <38.700615, 34.280144, 35.953449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322720, 34.615471, 35.941292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244686, 34.466282, 35.578453>,  <39.197868, 34.376766, 35.360748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244686, 34.466282, 35.578453>,  <39.322720, 34.615471, 35.941292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244686, 34.466282, 35.578453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405095, 0.811655, -0.420850,
		0.893220, -0.449561, -0.007246,
		-0.195079, -0.372976, -0.907101,
		39.186161, 34.354389, 35.306324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982620, 34.762623, 35.590961>,  <39.322720, 34.615471, 35.941292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982620, 34.762623, 35.590961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754330, 34.719353, 35.265369>,  <39.617355, 34.693390, 35.070015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754330, 34.719353, 35.265369>,  <39.982620, 34.762623, 35.590961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754330, 34.719353, 35.265369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330840, 0.876970, -0.348523,
		0.751539, -0.468210, -0.464724,
		-0.570731, -0.108179, -0.813980,
		39.583111, 34.686897, 35.021175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404209, 35.109867, 35.014183>,  <39.982620, 34.762623, 35.590961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404209, 35.109867, 35.014183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024097, 35.090618, 34.891113>,  <39.796032, 35.079067, 34.817272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024097, 35.090618, 34.891113>,  <40.404209, 35.109867, 35.014183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024097, 35.090618, 34.891113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169961, 0.747724, -0.641890,
		0.260942, -0.662264, -0.702364,
		-0.950275, -0.048122, -0.307671,
		39.739014, 35.076183, 34.798813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507668, 35.278343, 34.259056>,  <40.404209, 35.109867, 35.014183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507668, 35.278343, 34.259056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127335, 35.324509, 34.374020>,  <39.899136, 35.352207, 34.442997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127335, 35.324509, 34.374020>,  <40.507668, 35.278343, 34.259056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127335, 35.324509, 34.374020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071537, 0.821044, -0.566365,
		-0.301344, -0.559076, -0.772415,
		-0.950828, 0.115414, 0.287411,
		39.842087, 35.359135, 34.460243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884350, 34.753029, 34.057384>,  <40.507668, 35.278343, 34.259056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884350, 34.753029, 34.057384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179550, 34.792477, 34.324406>,  <41.356670, 34.816147, 34.484619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179550, 34.792477, 34.324406>,  <40.884350, 34.753029, 34.057384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179550, 34.792477, 34.324406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229641, 0.966922, 0.111023,
		-0.634525, -0.235233, 0.736236,
		0.737999, 0.098623, 0.667556,
		41.400951, 34.822063, 34.524673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170559, 34.149445, 34.488091>,  <40.884350, 34.753029, 34.057384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170559, 34.149445, 34.488091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903679, 33.999123, 34.230839>,  <40.743549, 33.908928, 34.076488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903679, 33.999123, 34.230839>,  <41.170559, 34.149445, 34.488091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903679, 33.999123, 34.230839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108445, -0.805196, 0.583008,
		-0.736942, 0.458727, 0.496473,
		-0.667200, -0.375803, -0.643130,
		40.703518, 33.886383, 34.037899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797653, 33.727367, 34.893639>,  <41.170559, 34.149445, 34.488091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797653, 33.727367, 34.893639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661522, 33.622585, 34.532406>,  <40.579842, 33.559715, 34.315666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661522, 33.622585, 34.532406>,  <40.797653, 33.727367, 34.893639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661522, 33.622585, 34.532406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163498, -0.929296, 0.331176,
		-0.925984, 0.260360, 0.273435,
		-0.340327, -0.261958, -0.903081,
		40.559425, 33.543999, 34.261482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169312, 33.862045, 35.594421>,  <40.797653, 33.727367, 34.893639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169312, 33.862045, 35.594421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321999, 34.226299, 35.657711>,  <41.413612, 34.444851, 35.695686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321999, 34.226299, 35.657711>,  <41.169312, 33.862045, 35.594421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321999, 34.226299, 35.657711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924276, -0.376450, -0.063242,
		0.001974, 0.170385, -0.985376,
		0.381720, 0.910634, 0.158226,
		41.436516, 34.499489, 35.705177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710739, 34.146507, 35.143841>,  <41.169312, 33.862045, 35.594421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710739, 34.146507, 35.143841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799362, 34.323402, 35.491482>,  <41.852535, 34.429539, 35.700066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799362, 34.323402, 35.491482>,  <41.710739, 34.146507, 35.143841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799362, 34.323402, 35.491482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942164, -0.326916, -0.073839,
		0.251470, 0.835198, -0.489088,
		0.221561, 0.442233, 0.869103,
		41.865829, 34.456074, 35.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390015, 34.532349, 35.178970>,  <41.710739, 34.146507, 35.143841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390015, 34.532349, 35.178970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330391, 34.415268, 35.556774>,  <42.294617, 34.345020, 35.783459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330391, 34.415268, 35.556774>,  <42.390015, 34.532349, 35.178970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330391, 34.415268, 35.556774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937289, -0.346175, 0.040636,
		0.315073, 0.891340, 0.325948,
		-0.149056, -0.292704, 0.944514,
		42.285675, 34.327457, 35.840130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011215, 34.356098, 35.381744>,  <42.390015, 34.532349, 35.178970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011215, 34.356098, 35.381744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824917, 34.262287, 35.723053>,  <42.713139, 34.206001, 35.927837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824917, 34.262287, 35.723053>,  <43.011215, 34.356098, 35.381744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824917, 34.262287, 35.723053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831814, -0.445031, 0.331711,
		0.301940, 0.864260, 0.402353,
		-0.465744, -0.234526, 0.853276,
		42.685192, 34.191929, 35.979034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415817, 34.467640, 36.000504>,  <43.011215, 34.356098, 35.381744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415817, 34.467640, 36.000504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191490, 34.136700, 36.012951>,  <43.056892, 33.938133, 36.020420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191490, 34.136700, 36.012951>,  <43.415817, 34.467640, 36.000504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191490, 34.136700, 36.012951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760700, -0.500072, 0.413839,
		-0.326828, 0.255764, 0.909818,
		-0.560820, -0.827353, 0.031122,
		43.023243, 33.888493, 36.022289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539013, 34.060246, 36.653351>,  <43.415817, 34.467640, 36.000504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539013, 34.060246, 36.653351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478561, 33.851036, 36.317825>,  <43.442291, 33.725510, 36.116512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478561, 33.851036, 36.317825>,  <43.539013, 34.060246, 36.653351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478561, 33.851036, 36.317825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861762, -0.485422, 0.147416,
		-0.484280, -0.700578, 0.524083,
		-0.151125, -0.523026, -0.838812,
		43.433224, 33.694130, 36.066181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416836, 33.321011, 36.946793>,  <43.539013, 34.060246, 36.653351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416836, 33.321011, 36.946793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511341, 33.628105, 37.185040>,  <43.568043, 33.812363, 37.327988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511341, 33.628105, 37.185040>,  <43.416836, 33.321011, 36.946793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511341, 33.628105, 37.185040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906119, -0.395433, 0.150271,
		0.350896, 0.504199, -0.789085,
		0.236264, 0.767734, 0.595620,
		43.582222, 33.858425, 37.363724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070583, 33.383453, 36.688610>,  <43.416836, 33.321011, 36.946793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070583, 33.383453, 36.688610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943344, 33.468307, 37.058216>,  <43.867001, 33.519218, 37.279980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943344, 33.468307, 37.058216>,  <44.070583, 33.383453, 36.688610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943344, 33.468307, 37.058216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614411, -0.696141, 0.371333,
		0.722021, 0.685848, 0.091102,
		-0.318097, 0.212136, 0.924020,
		43.847916, 33.531948, 37.335423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816204, 33.427162, 36.903679>,  <44.070583, 33.383453, 36.688610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816204, 33.427162, 36.903679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098167, 33.430817, 37.187374>,  <45.267345, 33.433010, 37.357594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098167, 33.430817, 37.187374>,  <44.816204, 33.427162, 36.903679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098167, 33.430817, 37.187374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510549, 0.687599, -0.516283,
		-0.492391, 0.726033, 0.480028,
		0.704905, 0.009135, 0.709243,
		45.309639, 33.433556, 37.400146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941837, 34.074589, 36.978420>,  <44.816204, 33.427162, 36.903679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941837, 34.074589, 36.978420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266663, 33.870789, 37.092239>,  <45.461555, 33.748508, 37.160530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266663, 33.870789, 37.092239>,  <44.941837, 34.074589, 36.978420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266663, 33.870789, 37.092239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574452, 0.612030, -0.543529,
		0.102775, 0.604838, 0.789689,
		0.812060, -0.509500, 0.284549,
		45.510281, 33.717937, 37.177605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488220, 34.540421, 37.156929>,  <44.941837, 34.074589, 36.978420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488220, 34.540421, 37.156929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632668, 34.185837, 37.041149>,  <45.719337, 33.973087, 36.971684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632668, 34.185837, 37.041149>,  <45.488220, 34.540421, 37.156929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632668, 34.185837, 37.041149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774630, 0.457970, -0.436132,
		0.519171, -0.066716, 0.852062,
		0.361122, -0.886460, -0.289445,
		45.741005, 33.919899, 36.954315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147121, 34.539299, 37.278507>,  <45.488220, 34.540421, 37.156929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147121, 34.539299, 37.278507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051342, 34.329033, 36.951988>,  <45.993874, 34.202873, 36.756077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051342, 34.329033, 36.951988>,  <46.147121, 34.539299, 37.278507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051342, 34.329033, 36.951988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791492, 0.381252, -0.477689,
		0.562320, -0.760474, 0.324771,
		-0.239451, -0.525668, -0.816294,
		45.979507, 34.171333, 36.707100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580414, 33.907822, 37.053123>,  <46.147121, 34.539299, 37.278507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580414, 33.907822, 37.053123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408733, 34.069553, 36.730061>,  <46.305725, 34.166592, 36.536224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408733, 34.069553, 36.730061>,  <46.580414, 33.907822, 37.053123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408733, 34.069553, 36.730061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901974, 0.145131, -0.406669,
		-0.047211, -0.903027, -0.426982,
		-0.429202, 0.404326, -0.807655,
		46.279972, 34.190849, 36.487762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.784187, 33.528606, 36.346272>,  <46.580414, 33.907822, 37.053123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.784187, 33.528606, 36.346272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697105, 33.918316, 36.322990>,  <46.644855, 34.152142, 36.309021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697105, 33.918316, 36.322990>,  <46.784187, 33.528606, 36.346272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697105, 33.918316, 36.322990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878649, 0.169675, -0.446302,
		-0.424946, -0.148303, -0.892988,
		-0.217706, 0.974277, -0.058203,
		46.631794, 34.210598, 36.305531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823372, 33.896164, 35.701836>,  <46.784187, 33.528606, 36.346272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823372, 33.896164, 35.701836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923283, 34.161316, 35.984169>,  <46.983231, 34.320408, 36.153568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923283, 34.161316, 35.984169>,  <46.823372, 33.896164, 35.701836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923283, 34.161316, 35.984169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878953, 0.150627, -0.452496,
		-0.406268, 0.733420, -0.545016,
		0.249776, 0.662878, 0.705836,
		46.998215, 34.360180, 36.195919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916996, 34.462658, 35.369209>,  <46.823372, 33.896164, 35.701836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916996, 34.462658, 35.369209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135704, 34.452194, 35.703960>,  <47.266930, 34.445915, 35.904812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135704, 34.452194, 35.703960>,  <46.916996, 34.462658, 35.369209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.135704, 34.452194, 35.703960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760038, 0.434835, -0.482971,
		-0.351268, 0.900130, 0.257636,
		0.546766, -0.026161, 0.836877,
		47.299732, 34.444347, 35.955025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496433, 34.780460, 34.759830>,  <46.916996, 34.462658, 35.369209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496433, 34.780460, 34.759830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773792, 34.692326, 34.485413>,  <46.940208, 34.639446, 34.320763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773792, 34.692326, 34.485413>,  <46.496433, 34.780460, 34.759830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773792, 34.692326, 34.485413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713493, -0.342931, -0.611003,
		-0.100638, 0.913154, -0.394996,
		0.693397, -0.220337, -0.686041,
		46.981812, 34.626225, 34.279602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.176243, 35.080261, 35.002357>,  <46.496433, 34.780460, 34.759830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.176243, 35.080261, 35.002357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.478558, 35.177200, 35.245689>,  <47.659946, 35.235363, 35.391689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.478558, 35.177200, 35.245689>,  <47.176243, 35.080261, 35.002357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.478558, 35.177200, 35.245689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638956, -0.476188, -0.604136,
		0.143270, 0.845290, -0.514741,
		0.755783, 0.242343, 0.608327,
		47.705292, 35.249905, 35.428188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.907635, 38.233349, 23.885614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516163, 38.151657, 23.894329>,  <38.281281, 38.102642, 23.899559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516163, 38.151657, 23.894329>,  <38.907635, 38.233349, 23.885614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516163, 38.151657, 23.894329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150550, -0.641168, 0.752488,
		-0.139710, 0.739725, 0.658246,
		-0.978680, -0.204229, 0.021788,
		38.222557, 38.090389, 23.900866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601879, 38.408005, 24.516064>,  <38.907635, 38.233349, 23.885614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601879, 38.408005, 24.516064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394882, 38.106400, 24.354239>,  <38.270683, 37.925438, 24.257143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394882, 38.106400, 24.354239>,  <38.601879, 38.408005, 24.516064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394882, 38.106400, 24.354239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070708, -0.508858, 0.857942,
		-0.852761, 0.415372, 0.316645,
		-0.517492, -0.754009, -0.404564,
		38.239635, 37.880196, 24.232870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002861, 38.304981, 24.972019>,  <38.601879, 38.408005, 24.516064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002861, 38.304981, 24.972019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023365, 37.966415, 24.759998>,  <38.035667, 37.763275, 24.632786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023365, 37.966415, 24.759998>,  <38.002861, 38.304981, 24.972019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023365, 37.966415, 24.759998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265260, -0.523225, 0.809860,
		-0.962813, 0.099084, -0.251343,
		0.051264, -0.846415, -0.530051,
		38.038746, 37.712490, 24.600983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417599, 37.838524, 25.139633>,  <38.002861, 38.304981, 24.972019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417599, 37.838524, 25.139633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692684, 37.597462, 24.977715>,  <37.857735, 37.452824, 24.880564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692684, 37.597462, 24.977715>,  <37.417599, 37.838524, 25.139633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692684, 37.597462, 24.977715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200774, -0.693718, 0.691697,
		-0.697686, -0.394401, -0.598066,
		0.687695, -0.602664, -0.404811,
		37.898998, 37.416664, 24.856276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110306, 37.150322, 25.098927>,  <37.417599, 37.838524, 25.139633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110306, 37.150322, 25.098927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.500801, 37.066124, 25.078310>,  <37.735096, 37.015606, 25.065941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.500801, 37.066124, 25.078310>,  <37.110306, 37.150322, 25.098927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500801, 37.066124, 25.078310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137191, -0.784379, 0.604920,
		-0.167760, -0.583474, -0.794616,
		0.976235, -0.210496, -0.051541,
		37.793671, 37.002975, 25.062847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170010, 36.484638, 24.821150>,  <37.110306, 37.150322, 25.098927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170010, 36.484638, 24.821150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508171, 36.561863, 25.020359>,  <37.711067, 36.608196, 25.139885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508171, 36.561863, 25.020359>,  <37.170010, 36.484638, 24.821150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508171, 36.561863, 25.020359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240412, -0.695078, 0.677546,
		0.476972, -0.692528, -0.541205,
		0.845399, 0.193058, 0.498025,
		37.761791, 36.619781, 25.169767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290714, 35.840073, 25.078585>,  <37.170010, 36.484638, 24.821150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290714, 35.840073, 25.078585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.511734, 36.083755, 25.306110>,  <37.644348, 36.229965, 25.442625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.511734, 36.083755, 25.306110>,  <37.290714, 35.840073, 25.078585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511734, 36.083755, 25.306110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115486, -0.619914, 0.776124,
		0.825440, -0.494538, -0.272179,
		0.552551, 0.609211, 0.568814,
		37.677498, 36.266518, 25.476755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757816, 35.428379, 25.423422>,  <37.290714, 35.840073, 25.078585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757816, 35.428379, 25.423422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705795, 35.763668, 25.635258>,  <37.674583, 35.964844, 25.762360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705795, 35.763668, 25.635258>,  <37.757816, 35.428379, 25.423422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705795, 35.763668, 25.635258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015480, -0.535777, 0.844218,
		0.991386, 0.101597, 0.082656,
		-0.130055, 0.838225, 0.529589,
		37.666779, 36.015137, 25.794134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123425, 35.324837, 26.099419>,  <37.757816, 35.428379, 25.423422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123425, 35.324837, 26.099419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876717, 35.626476, 26.189697>,  <37.728691, 35.807461, 26.243864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876717, 35.626476, 26.189697>,  <38.123425, 35.324837, 26.099419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876717, 35.626476, 26.189697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133478, -0.382770, 0.914150,
		0.775747, 0.533691, 0.336735,
		-0.616766, 0.754096, 0.225697,
		37.691689, 35.852707, 26.257406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404255, 35.576366, 26.711071>,  <38.123425, 35.324837, 26.099419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404255, 35.576366, 26.711071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035839, 35.730816, 26.690699>,  <37.814789, 35.823486, 26.678474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035839, 35.730816, 26.690699>,  <38.404255, 35.576366, 26.711071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035839, 35.730816, 26.690699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236165, -0.449714, 0.861384,
		0.309698, 0.805397, 0.505394,
		-0.921039, 0.386125, -0.050931,
		37.759529, 35.846653, 26.675419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223236, 36.099468, 27.359274>,  <38.404255, 35.576366, 26.711071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223236, 36.099468, 27.359274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887768, 35.931240, 27.220856>,  <37.686485, 35.830303, 27.137804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887768, 35.931240, 27.220856>,  <38.223236, 36.099468, 27.359274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887768, 35.931240, 27.220856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191546, -0.367008, 0.910283,
		-0.509843, 0.829712, 0.227240,
		-0.838672, -0.420574, -0.346045,
		37.636166, 35.805069, 27.117043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744278, 36.173382, 27.873018>,  <38.223236, 36.099468, 27.359274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744278, 36.173382, 27.873018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604176, 35.870319, 27.652733>,  <37.520115, 35.688484, 27.520561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604176, 35.870319, 27.652733>,  <37.744278, 36.173382, 27.873018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604176, 35.870319, 27.652733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250333, -0.490850, 0.834506,
		-0.902582, 0.430152, -0.017742,
		-0.350256, -0.757651, -0.550714,
		37.499100, 35.643024, 27.487518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076294, 36.069267, 28.009716>,  <37.744278, 36.173382, 27.873018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076294, 36.069267, 28.009716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.184727, 35.714535, 27.860023>,  <37.249786, 35.501698, 27.770208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.184727, 35.714535, 27.860023>,  <37.076294, 36.069267, 28.009716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184727, 35.714535, 27.860023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393687, -0.456934, 0.797635,
		-0.878366, -0.068891, -0.472999,
		0.271079, -0.886829, -0.374234,
		37.266052, 35.448486, 27.747753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627438, 35.633537, 28.385971>,  <37.076294, 36.069267, 28.009716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627438, 35.633537, 28.385971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833004, 35.341282, 28.206169>,  <36.956345, 35.165928, 28.098288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833004, 35.341282, 28.206169>,  <36.627438, 35.633537, 28.385971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833004, 35.341282, 28.206169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219846, -0.618672, 0.754263,
		-0.829189, -0.288809, -0.478576,
		0.513919, -0.730640, -0.449502,
		36.987179, 35.122089, 28.071318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229050, 34.982418, 28.331217>,  <36.627438, 35.633537, 28.385971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229050, 34.982418, 28.331217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611584, 34.866661, 28.314859>,  <36.841103, 34.797207, 28.305044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611584, 34.866661, 28.314859>,  <36.229050, 34.982418, 28.331217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611584, 34.866661, 28.314859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170154, -0.665048, 0.727158,
		-0.237629, -0.688450, -0.685251,
		0.956337, -0.289393, -0.040892,
		36.898483, 34.779842, 28.302591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280262, 34.296310, 28.293816>,  <36.229050, 34.982418, 28.331217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280262, 34.296310, 28.293816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.660488, 34.361210, 28.399721>,  <36.888622, 34.400150, 28.463264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.660488, 34.361210, 28.399721>,  <36.280262, 34.296310, 28.293816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660488, 34.361210, 28.399721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053895, -0.753500, 0.655235,
		0.305809, -0.637114, -0.707508,
		0.950566, 0.162245, 0.264764,
		36.945660, 34.409882, 28.479151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697098, 33.589394, 28.283754>,  <36.280262, 34.296310, 28.293816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697098, 33.589394, 28.283754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868923, 33.857441, 28.525883>,  <36.972019, 34.018269, 28.671160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868923, 33.857441, 28.525883>,  <36.697098, 33.589394, 28.283754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868923, 33.857441, 28.525883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109734, -0.626613, 0.771567,
		0.896343, -0.397863, -0.195636,
		0.429566, 0.670121, 0.605319,
		36.997791, 34.058475, 28.707478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043835, 33.209396, 28.709898>,  <36.697098, 33.589394, 28.283754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043835, 33.209396, 28.709898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042717, 33.548168, 28.922575>,  <37.042046, 33.751431, 29.050182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042717, 33.548168, 28.922575>,  <37.043835, 33.209396, 28.709898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042717, 33.548168, 28.922575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021870, -0.531517, 0.846765,
		0.999757, 0.013996, -0.017035,
		-0.002797, 0.846932, 0.531694,
		37.041878, 33.802246, 29.082083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604862, 33.207596, 29.170120>,  <37.043835, 33.209396, 28.709898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604862, 33.207596, 29.170120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354439, 33.481899, 29.318602>,  <37.204185, 33.646481, 29.407690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354439, 33.481899, 29.318602>,  <37.604862, 33.207596, 29.170120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354439, 33.481899, 29.318602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171171, -0.343568, 0.923397,
		0.760760, 0.641636, 0.097711,
		-0.626055, 0.685758, 0.371202,
		37.166622, 33.687626, 29.429962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957592, 33.528538, 29.718021>,  <37.604862, 33.207596, 29.170120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957592, 33.528538, 29.718021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575932, 33.630222, 29.781237>,  <37.346935, 33.691235, 29.819166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575932, 33.630222, 29.781237>,  <37.957592, 33.528538, 29.718021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575932, 33.630222, 29.781237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160111, -0.012657, 0.987018,
		0.252911, 0.967066, -0.028625,
		-0.954149, 0.254211, 0.158039,
		37.289688, 33.706486, 29.828648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914295, 34.028000, 30.233715>,  <37.957592, 33.528538, 29.718021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914295, 34.028000, 30.233715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550156, 33.863010, 30.247133>,  <37.331673, 33.764015, 30.255184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550156, 33.863010, 30.247133>,  <37.914295, 34.028000, 30.233715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550156, 33.863010, 30.247133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048423, -0.025667, 0.998497,
		-0.410997, 0.910606, 0.043340,
		-0.910350, -0.412478, 0.033546,
		37.277050, 33.739265, 30.257196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566719, 34.428661, 30.738588>,  <37.914295, 34.028000, 30.233715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566719, 34.428661, 30.738588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386333, 34.074745, 30.691633>,  <37.278103, 33.862396, 30.663460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386333, 34.074745, 30.691633>,  <37.566719, 34.428661, 30.738588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386333, 34.074745, 30.691633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143930, -0.201890, 0.968775,
		-0.880859, 0.419990, 0.218394,
		-0.450967, -0.884787, -0.117388,
		37.251041, 33.809307, 30.656418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077274, 34.658195, 31.393581>,  <37.566719, 34.428661, 30.738588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077274, 34.658195, 31.393581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470818, 34.703148, 31.449289>,  <38.706944, 34.730118, 31.482714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470818, 34.703148, 31.449289>,  <38.077274, 34.658195, 31.393581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470818, 34.703148, 31.449289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071968, 0.464070, -0.882870,
		-0.163845, 0.878641, 0.448491,
		0.983857, 0.112377, 0.139270,
		38.765976, 34.736862, 31.491070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277695, 35.412460, 31.221857>,  <38.077274, 34.658195, 31.393581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277695, 35.412460, 31.221857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625164, 35.216644, 31.191486>,  <38.833645, 35.099155, 31.173264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625164, 35.216644, 31.191486>,  <38.277695, 35.412460, 31.221857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625164, 35.216644, 31.191486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235896, 0.543528, -0.805562,
		0.435624, 0.681856, 0.587626,
		0.868669, -0.489541, -0.075927,
		38.885765, 35.069782, 31.168709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802830, 36.004700, 31.063665>,  <38.277695, 35.412460, 31.221857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802830, 36.004700, 31.063665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.958363, 35.653023, 30.953508>,  <39.051682, 35.442017, 30.887415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.958363, 35.653023, 30.953508>,  <38.802830, 36.004700, 31.063665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958363, 35.653023, 30.953508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309373, 0.406154, -0.859841,
		0.867813, 0.249134, 0.429922,
		0.388831, -0.879188, -0.275391,
		39.075012, 35.389267, 30.870892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557465, 36.116158, 30.841576>,  <38.802830, 36.004700, 31.063665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557465, 36.116158, 30.841576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.515854, 35.746357, 30.694889>,  <39.490887, 35.524479, 30.606876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.515854, 35.746357, 30.694889>,  <39.557465, 36.116158, 30.841576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515854, 35.746357, 30.694889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630297, 0.223942, -0.743354,
		0.769353, -0.308470, 0.559412,
		-0.104027, -0.924498, -0.366718,
		39.484646, 35.469009, 30.584873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272160, 35.865536, 30.607061>,  <39.557465, 36.116158, 30.841576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272160, 35.865536, 30.607061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994267, 35.673359, 30.392948>,  <39.827530, 35.558052, 30.264481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994267, 35.673359, 30.392948>,  <40.272160, 35.865536, 30.607061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994267, 35.673359, 30.392948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551619, 0.121703, -0.825170,
		0.461589, -0.868543, 0.180468,
		-0.694731, -0.480439, -0.535281,
		39.785847, 35.529228, 30.232365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623928, 35.448742, 30.247995>,  <40.272160, 35.865536, 30.607061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623928, 35.448742, 30.247995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.270115, 35.482819, 30.064541>,  <40.057827, 35.503265, 29.954468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.270115, 35.482819, 30.064541>,  <40.623928, 35.448742, 30.247995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270115, 35.482819, 30.064541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464811, 0.077776, -0.881987,
		-0.039471, -0.993324, -0.108395,
		-0.884530, 0.085196, -0.458638,
		40.004757, 35.508377, 29.926949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651814, 34.993950, 29.711754>,  <40.623928, 35.448742, 30.247995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651814, 34.993950, 29.711754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.359241, 35.241772, 29.597803>,  <40.183697, 35.390465, 29.529432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.359241, 35.241772, 29.597803>,  <40.651814, 34.993950, 29.711754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359241, 35.241772, 29.597803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473094, 0.160176, -0.866329,
		-0.491111, -0.768434, -0.410267,
		-0.731431, 0.619559, -0.284877,
		40.139812, 35.427639, 29.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400692, 34.759830, 29.095694>,  <40.651814, 34.993950, 29.711754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400692, 34.759830, 29.095694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332943, 35.154049, 29.096931>,  <40.292294, 35.390579, 29.097673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332943, 35.154049, 29.096931>,  <40.400692, 34.759830, 29.095694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332943, 35.154049, 29.096931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389435, 0.069809, -0.918405,
		-0.905347, -0.154348, -0.395630,
		-0.169372, 0.985547, 0.003093,
		40.282131, 35.449715, 29.097858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246849, 34.791668, 28.409414>,  <40.400692, 34.759830, 29.095694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246849, 34.791668, 28.409414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280056, 35.171028, 28.531822>,  <40.299980, 35.398643, 28.605267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280056, 35.171028, 28.531822>,  <40.246849, 34.791668, 28.409414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280056, 35.171028, 28.531822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293050, 0.270270, -0.917102,
		-0.952486, 0.165818, -0.255490,
		0.083021, 0.948398, 0.306022,
		40.304962, 35.455547, 28.623629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732376, 35.206924, 27.996607>,  <40.246849, 34.791668, 28.409414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732376, 35.206924, 27.996607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.014786, 35.454548, 28.134184>,  <40.184231, 35.603123, 28.216730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.014786, 35.454548, 28.134184>,  <39.732376, 35.206924, 27.996607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014786, 35.454548, 28.134184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088546, 0.404686, -0.910159,
		-0.702631, 0.673048, 0.230902,
		0.706024, 0.619060, 0.343941,
		40.226593, 35.640266, 28.237366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478565, 35.930920, 27.759253>,  <39.732376, 35.206924, 27.996607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478565, 35.930920, 27.759253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871758, 35.959488, 27.826954>,  <40.107674, 35.976631, 27.867575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871758, 35.959488, 27.826954>,  <39.478565, 35.930920, 27.759253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871758, 35.959488, 27.826954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102544, 0.551100, -0.828115,
		-0.152422, 0.831377, 0.534397,
		0.982981, 0.071424, 0.169252,
		40.166653, 35.980915, 27.877729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666164, 36.700134, 27.771509>,  <39.478565, 35.930920, 27.759253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666164, 36.700134, 27.771509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998913, 36.493729, 27.689816>,  <40.198563, 36.369884, 27.640799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998913, 36.493729, 27.689816>,  <39.666164, 36.700134, 27.771509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998913, 36.493729, 27.689816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145605, 0.558066, -0.816922,
		0.535520, 0.649840, 0.539376,
		0.831876, -0.516014, -0.204236,
		40.248474, 36.338924, 27.628544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100361, 37.174061, 27.558136>,  <39.666164, 36.700134, 27.771509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100361, 37.174061, 27.558136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285812, 36.844868, 27.426838>,  <40.397083, 36.647350, 27.348059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285812, 36.844868, 27.426838>,  <40.100361, 37.174061, 27.558136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285812, 36.844868, 27.426838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293110, 0.492070, -0.819728,
		0.836141, 0.283841, 0.469365,
		0.463633, -0.822983, -0.328243,
		40.424904, 36.597973, 27.328365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740955, 37.391521, 27.136656>,  <40.100361, 37.174061, 27.558136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740955, 37.391521, 27.136656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.698635, 37.011032, 27.020742>,  <40.673244, 36.782738, 26.951195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.698635, 37.011032, 27.020742>,  <40.740955, 37.391521, 27.136656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698635, 37.011032, 27.020742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363373, 0.234280, -0.901706,
		0.925617, -0.200697, 0.320864,
		-0.105797, -0.951227, -0.289781,
		40.666897, 36.725662, 26.933807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330612, 37.187199, 26.875572>,  <40.740955, 37.391521, 27.136656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330612, 37.187199, 26.875572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.057533, 36.950718, 26.703804>,  <40.893684, 36.808830, 26.600742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.057533, 36.950718, 26.703804>,  <41.330612, 37.187199, 26.875572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057533, 36.950718, 26.703804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173836, 0.439403, -0.881309,
		0.709719, -0.676319, -0.197208,
		-0.682700, -0.591200, -0.429422,
		40.852722, 36.773357, 26.574978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668873, 37.066647, 26.286818>,  <41.330612, 37.187199, 26.875572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668873, 37.066647, 26.286818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.289169, 36.983345, 26.192545>,  <41.061348, 36.933365, 26.135983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.289169, 36.983345, 26.192545>,  <41.668873, 37.066647, 26.286818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289169, 36.983345, 26.192545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206689, 0.151740, -0.966568,
		0.237055, -0.966232, -0.100995,
		-0.949255, -0.208255, -0.235681,
		41.004395, 36.920868, 26.121841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750912, 36.734295, 25.621935>,  <41.668873, 37.066647, 26.286818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750912, 36.734295, 25.621935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.366592, 36.841858, 25.648918>,  <41.136002, 36.906395, 25.665108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.366592, 36.841858, 25.648918>,  <41.750912, 36.734295, 25.621935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366592, 36.841858, 25.648918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023245, 0.164319, -0.986133,
		-0.276265, -0.949045, -0.151627,
		-0.960800, 0.268910, 0.067456,
		41.078354, 36.922531, 25.669155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395832, 36.314548, 25.122641>,  <41.750912, 36.734295, 25.621935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395832, 36.314548, 25.122641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.175358, 36.643375, 25.179779>,  <41.043072, 36.840672, 25.214062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.175358, 36.643375, 25.179779>,  <41.395832, 36.314548, 25.122641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175358, 36.643375, 25.179779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079759, 0.118503, -0.989745,
		-0.830563, -0.556925, 0.000250,
		-0.551184, 0.822065, 0.142844,
		41.010002, 36.889996, 25.222631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.012169, 36.419876, 24.447168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.944401, 36.773586, 24.621223>,  <40.903740, 36.985813, 24.725657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.944401, 36.773586, 24.621223>,  <41.012169, 36.419876, 24.447168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944401, 36.773586, 24.621223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241827, 0.390725, -0.888174,
		-0.955414, -0.255704, 0.147646,
		-0.169421, 0.884279, 0.435140,
		40.893574, 37.038872, 24.751766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266552, 36.707943, 24.270729>,  <41.012169, 36.419876, 24.447168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266552, 36.707943, 24.270729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478020, 37.029465, 24.379833>,  <40.604900, 37.222378, 24.445295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478020, 37.029465, 24.379833>,  <40.266552, 36.707943, 24.270729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478020, 37.029465, 24.379833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143189, 0.401186, -0.904736,
		-0.836661, 0.439254, 0.327192,
		0.528674, 0.803807, 0.272761,
		40.636623, 37.270607, 24.461662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881805, 37.272087, 24.059984>,  <40.266552, 36.707943, 24.270729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881805, 37.272087, 24.059984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.252983, 37.415058, 24.102228>,  <40.475689, 37.500843, 24.127575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.252983, 37.415058, 24.102228>,  <39.881805, 37.272087, 24.059984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252983, 37.415058, 24.102228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052874, 0.406744, -0.912011,
		-0.368938, 0.840715, 0.396336,
		0.927949, 0.357432, 0.105611,
		40.531368, 37.522289, 24.133911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715633, 37.788078, 23.651997>,  <39.881805, 37.272087, 24.059984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715633, 37.788078, 23.651997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104900, 37.830658, 23.733597>,  <40.338459, 37.856205, 23.782557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104900, 37.830658, 23.733597>,  <39.715633, 37.788078, 23.651997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104900, 37.830658, 23.733597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102183, 0.594426, -0.797632,
		-0.206169, 0.797074, 0.567598,
		0.973166, 0.106449, 0.203999,
		40.396851, 37.862591, 23.794796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812443, 38.478443, 23.730743>,  <39.715633, 37.788078, 23.651997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812443, 38.478443, 23.730743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148659, 38.290291, 23.623234>,  <40.350388, 38.177399, 23.558729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148659, 38.290291, 23.623234>,  <39.812443, 38.478443, 23.730743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148659, 38.290291, 23.623234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039396, 0.547871, -0.835635,
		0.540322, 0.691792, 0.479036,
		0.840536, -0.470384, -0.268773,
		40.400818, 38.149178, 23.542603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192478, 39.064449, 23.588890>,  <39.812443, 38.478443, 23.730743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192478, 39.064449, 23.588890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358284, 38.733845, 23.436546>,  <40.457767, 38.535480, 23.345140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358284, 38.733845, 23.436546>,  <40.192478, 39.064449, 23.588890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358284, 38.733845, 23.436546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154948, 0.476498, -0.865414,
		0.896754, 0.299715, 0.325583,
		0.414517, -0.826511, -0.380861,
		40.482639, 38.485893, 23.322289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679291, 39.353584, 23.085426>,  <40.192478, 39.064449, 23.588890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679291, 39.353584, 23.085426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.656094, 38.960052, 23.017653>,  <40.642174, 38.723934, 22.976988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.656094, 38.960052, 23.017653>,  <40.679291, 39.353584, 23.085426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656094, 38.960052, 23.017653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403441, 0.132146, -0.905413,
		0.913166, -0.120869, 0.389255,
		-0.057997, -0.983833, -0.169435,
		40.638695, 38.664902, 22.966822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373180, 39.023830, 22.830509>,  <40.679291, 39.353584, 23.085426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373180, 39.023830, 22.830509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077438, 38.804649, 22.673996>,  <40.899994, 38.673141, 22.580088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077438, 38.804649, 22.673996>,  <41.373180, 39.023830, 22.830509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077438, 38.804649, 22.673996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314225, 0.233167, -0.920269,
		0.595497, -0.803357, -0.000214,
		-0.739355, -0.547951, -0.391285,
		40.855633, 38.640263, 22.556610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718006, 38.527309, 22.398701>,  <41.373180, 39.023830, 22.830509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718006, 38.527309, 22.398701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345421, 38.544285, 22.254162>,  <41.121868, 38.554470, 22.167439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345421, 38.544285, 22.254162>,  <41.718006, 38.527309, 22.398701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345421, 38.544285, 22.254162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354408, 0.330426, -0.874765,
		0.082275, -0.942877, -0.322821,
		-0.931464, 0.042439, -0.361349,
		41.065983, 38.557018, 22.145758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683262, 38.101200, 21.849121>,  <41.718006, 38.527309, 22.398701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683262, 38.101200, 21.849121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.378128, 38.354618, 21.797415>,  <41.195049, 38.506668, 21.766390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.378128, 38.354618, 21.797415>,  <41.683262, 38.101200, 21.849121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378128, 38.354618, 21.797415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302959, 0.173586, -0.937061,
		-0.571232, -0.753981, -0.324355,
		-0.762830, 0.633546, -0.129268,
		41.149281, 38.544682, 21.758635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440464, 38.082077, 21.108057>,  <41.683262, 38.101200, 21.849121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440464, 38.082077, 21.108057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.235870, 38.408688, 21.215139>,  <41.113113, 38.604656, 21.279388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.235870, 38.408688, 21.215139>,  <41.440464, 38.082077, 21.108057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235870, 38.408688, 21.215139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091055, 0.258284, -0.961768,
		-0.854456, -0.516303, -0.057758,
		-0.511482, 0.816530, 0.267704,
		41.082424, 38.653648, 21.295450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990520, 37.955105, 20.642385>,  <41.440464, 38.082077, 21.108057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990520, 37.955105, 20.642385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978363, 38.327908, 20.786854>,  <40.971069, 38.551590, 20.873535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978363, 38.327908, 20.786854>,  <40.990520, 37.955105, 20.642385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978363, 38.327908, 20.786854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060705, 0.362393, -0.930046,
		-0.997693, -0.006339, -0.067590,
		-0.030390, 0.932004, 0.361173,
		40.969246, 38.607510, 20.895206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481739, 38.433765, 20.332235>,  <40.990520, 37.955105, 20.642385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481739, 38.433765, 20.332235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.756397, 38.687527, 20.474249>,  <40.921192, 38.839783, 20.559458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.756397, 38.687527, 20.474249>,  <40.481739, 38.433765, 20.332235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756397, 38.687527, 20.474249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000548, 0.488814, -0.872388,
		-0.726991, 0.598828, 0.335990,
		0.686647, 0.634402, 0.355035,
		40.962391, 38.877846, 20.580759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400532, 39.097725, 19.944517>,  <40.481739, 38.433765, 20.332235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400532, 39.097725, 19.944517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.748470, 39.181835, 20.123022>,  <40.957233, 39.232300, 20.230125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.748470, 39.181835, 20.123022>,  <40.400532, 39.097725, 19.944517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748470, 39.181835, 20.123022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230109, 0.627227, -0.744067,
		-0.436363, 0.749915, 0.497208,
		0.869849, 0.210271, 0.446260,
		41.009426, 39.244915, 20.256901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399826, 39.816452, 20.182413>,  <40.400532, 39.097725, 19.944517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399826, 39.816452, 20.182413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778423, 39.711929, 20.106647>,  <41.005581, 39.649216, 20.061188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778423, 39.711929, 20.106647>,  <40.399826, 39.816452, 20.182413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778423, 39.711929, 20.106647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056245, 0.711464, -0.700468,
		0.317798, 0.652332, 0.688089,
		0.946488, -0.261309, -0.189412,
		41.062370, 39.633537, 20.049824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707027, 40.380173, 20.248236>,  <40.399826, 39.816452, 20.182413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707027, 40.380173, 20.248236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969521, 40.156002, 20.046133>,  <41.127018, 40.021500, 19.924871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969521, 40.156002, 20.046133>,  <40.707027, 40.380173, 20.248236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969521, 40.156002, 20.046133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178062, 0.765711, -0.618045,
		0.733248, 0.315614, 0.602275,
		0.656232, -0.560423, -0.505257,
		41.166389, 39.987877, 19.894556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290997, 40.816586, 20.185040>,  <40.707027, 40.380173, 20.248236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290997, 40.816586, 20.185040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.300671, 40.533337, 19.902769>,  <41.306477, 40.363388, 19.733408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.300671, 40.533337, 19.902769>,  <41.290997, 40.816586, 20.185040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300671, 40.533337, 19.902769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186893, 0.696639, -0.692651,
		0.982083, -0.115134, 0.149191,
		0.024185, -0.708123, -0.705675,
		41.307926, 40.320900, 19.691067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953056, 40.987610, 19.795498>,  <41.290997, 40.816586, 20.185040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953056, 40.987610, 19.795498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695602, 40.756672, 19.594534>,  <41.541130, 40.618111, 19.473955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695602, 40.756672, 19.594534>,  <41.953056, 40.987610, 19.795498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695602, 40.756672, 19.594534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043985, 0.627465, -0.777401,
		0.764070, -0.522459, -0.378463,
		-0.643632, -0.577342, -0.502407,
		41.502514, 40.583469, 19.443811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207985, 40.970318, 19.127243>,  <41.953056, 40.987610, 19.795498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207985, 40.970318, 19.127243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.826351, 40.865402, 19.069372>,  <41.597370, 40.802452, 19.034649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.826351, 40.865402, 19.069372>,  <42.207985, 40.970318, 19.127243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826351, 40.865402, 19.069372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081288, 0.691571, -0.717720,
		0.288307, -0.673003, -0.681136,
		-0.954082, -0.262292, -0.144678,
		41.540127, 40.786716, 19.025969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198513, 40.950550, 18.439411>,  <42.207985, 40.970318, 19.127243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198513, 40.950550, 18.439411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812878, 40.980633, 18.541296>,  <41.581497, 40.998684, 18.602427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812878, 40.980633, 18.541296>,  <42.198513, 40.950550, 18.439411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812878, 40.980633, 18.541296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170714, 0.559198, -0.811267,
		-0.203448, -0.825616, -0.526277,
		-0.964088, 0.075208, 0.254712,
		41.523651, 41.003197, 18.617710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862118, 40.969563, 17.723017>,  <42.198513, 40.950550, 18.439411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862118, 40.969563, 17.723017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640228, 41.116772, 18.021503>,  <41.507095, 41.205097, 18.200596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640228, 41.116772, 18.021503>,  <41.862118, 40.969563, 17.723017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640228, 41.116772, 18.021503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210365, 0.805684, -0.553733,
		-0.805001, -0.464148, -0.369514,
		-0.554725, 0.368023, 0.746216,
		41.473812, 41.227177, 18.245369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126556, 41.079594, 17.487215>,  <41.862118, 40.969563, 17.723017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126556, 41.079594, 17.487215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136436, 41.311176, 17.813210>,  <41.142365, 41.450127, 18.008806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136436, 41.311176, 17.813210>,  <41.126556, 41.079594, 17.487215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136436, 41.311176, 17.813210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302814, 0.781266, -0.545827,
		-0.952730, -0.233308, 0.194611,
		0.024697, 0.578957, 0.814984,
		41.143845, 41.484863, 18.057705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555733, 41.400974, 17.486475>,  <41.126556, 41.079594, 17.487215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555733, 41.400974, 17.486475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783340, 41.649792, 17.701612>,  <40.919907, 41.799084, 17.830694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783340, 41.649792, 17.701612>,  <40.555733, 41.400974, 17.486475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783340, 41.649792, 17.701612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480284, 0.782302, -0.396648,
		-0.667489, -0.032616, 0.743905,
		0.569022, 0.622045, 0.537843,
		40.954048, 41.836407, 17.862965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272133, 40.649570, 17.451027>,  <40.555733, 41.400974, 17.486475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272133, 40.649570, 17.451027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.942421, 40.460564, 17.575798>,  <39.744595, 40.347160, 17.650661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.942421, 40.460564, 17.575798>,  <40.272133, 40.649570, 17.451027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942421, 40.460564, 17.575798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561908, 0.615105, -0.553087,
		0.069472, -0.631172, -0.772526,
		-0.824277, -0.472512, 0.311927,
		39.695137, 40.318810, 17.669376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690525, 40.338840, 16.858850>,  <40.272133, 40.649570, 17.451027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690525, 40.338840, 16.858850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532261, 40.466686, 17.203247>,  <39.437302, 40.543392, 17.409885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532261, 40.466686, 17.203247>,  <39.690525, 40.338840, 16.858850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532261, 40.466686, 17.203247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459597, 0.742750, -0.486922,
		-0.795125, -0.588364, -0.146983,
		-0.395659, 0.319611, 0.860989,
		39.413563, 40.562569, 17.461544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006332, 40.471756, 16.693731>,  <39.690525, 40.338840, 16.858850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006332, 40.471756, 16.693731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695358, 40.234447, 16.610191>,  <38.508774, 40.092060, 16.560066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695358, 40.234447, 16.610191>,  <39.006332, 40.471756, 16.693731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695358, 40.234447, 16.610191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370521, 0.163676, 0.914289,
		-0.508241, 0.788184, -0.347068,
		-0.777435, -0.593275, -0.208852,
		38.462128, 40.056465, 16.547535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598301, 40.728947, 17.132442>,  <39.006332, 40.471756, 16.693731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598301, 40.728947, 17.132442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430050, 40.384151, 17.019276>,  <38.329098, 40.177273, 16.951376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430050, 40.384151, 17.019276>,  <38.598301, 40.728947, 17.132442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430050, 40.384151, 17.019276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436726, -0.080948, 0.895945,
		-0.795197, 0.500421, -0.342404,
		-0.420632, -0.861990, -0.282917,
		38.303860, 40.125553, 16.934401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923779, 40.753067, 17.277033>,  <38.598301, 40.728947, 17.132442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923779, 40.753067, 17.277033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019287, 40.364780, 17.266523>,  <38.076591, 40.131809, 17.260218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019287, 40.364780, 17.266523>,  <37.923779, 40.753067, 17.277033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019287, 40.364780, 17.266523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284592, -0.095820, 0.953848,
		-0.928438, -0.220273, -0.299138,
		0.238771, -0.970720, -0.026275,
		38.090919, 40.073563, 17.258640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388714, 40.413830, 17.712376>,  <37.923779, 40.753067, 17.277033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388714, 40.413830, 17.712376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682468, 40.145088, 17.673801>,  <37.858719, 39.983845, 17.650658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682468, 40.145088, 17.673801>,  <37.388714, 40.413830, 17.712376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682468, 40.145088, 17.673801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229870, -0.379876, 0.896021,
		-0.638625, -0.635855, -0.433412,
		0.734383, -0.671850, -0.096435,
		37.902782, 39.943535, 17.644871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066647, 39.743805, 17.893957>,  <37.388714, 40.413830, 17.712376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066647, 39.743805, 17.893957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463787, 39.737614, 17.941292>,  <37.702072, 39.733898, 17.969692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463787, 39.737614, 17.941292>,  <37.066647, 39.743805, 17.893957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463787, 39.737614, 17.941292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116503, -0.340837, 0.932876,
		0.025896, -0.939995, -0.340204,
		0.992853, -0.015477, 0.118338,
		37.761642, 39.732971, 17.976793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199249, 39.112617, 18.337667>,  <37.066647, 39.743805, 17.893957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199249, 39.112617, 18.337667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533092, 39.329430, 18.376913>,  <37.733398, 39.459518, 18.400461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533092, 39.329430, 18.376913>,  <37.199249, 39.112617, 18.337667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533092, 39.329430, 18.376913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107995, -0.335677, 0.935766,
		0.540152, -0.770403, -0.338696,
		0.834610, 0.542033, 0.098116,
		37.783474, 39.492039, 18.406347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671902, 38.659863, 18.683208>,  <37.199249, 39.112617, 18.337667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671902, 38.659863, 18.683208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815292, 39.027794, 18.746960>,  <37.901329, 39.248554, 18.785210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815292, 39.027794, 18.746960>,  <37.671902, 38.659863, 18.683208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815292, 39.027794, 18.746960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183693, -0.236889, 0.954013,
		0.915287, -0.312716, -0.253886,
		0.358479, 0.919832, 0.159378,
		37.922836, 39.303745, 18.794773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226868, 38.540737, 18.982126>,  <37.671902, 38.659863, 18.683208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226868, 38.540737, 18.982126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161930, 38.927467, 19.061018>,  <38.122967, 39.159504, 19.108353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161930, 38.927467, 19.061018>,  <38.226868, 38.540737, 18.982126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161930, 38.927467, 19.061018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281561, -0.146182, 0.948343,
		0.945710, 0.209492, -0.248487,
		-0.162346, 0.966822, 0.197230,
		38.113228, 39.217514, 19.120188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831646, 38.829498, 19.312880>,  <38.226868, 38.540737, 18.982126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831646, 38.829498, 19.312880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514454, 39.049511, 19.417685>,  <38.324139, 39.181519, 19.480568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514454, 39.049511, 19.417685>,  <38.831646, 38.829498, 19.312880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514454, 39.049511, 19.417685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242931, -0.108937, 0.963907,
		0.558723, 0.828008, -0.047235,
		-0.792978, 0.550032, 0.262015,
		38.276562, 39.214520, 19.496288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093304, 39.036102, 19.853058>,  <38.831646, 38.829498, 19.312880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093304, 39.036102, 19.853058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705837, 39.125877, 19.895609>,  <38.473358, 39.179741, 19.921139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705837, 39.125877, 19.895609>,  <39.093304, 39.036102, 19.853058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705837, 39.125877, 19.895609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057162, -0.215348, 0.974863,
		0.241705, 0.950396, 0.195771,
		-0.968665, 0.224439, 0.106377,
		38.415237, 39.193211, 19.927523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029270, 39.494942, 20.482792>,  <39.093304, 39.036102, 19.853058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029270, 39.494942, 20.482792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.690212, 39.296947, 20.406391>,  <38.486778, 39.178150, 20.360550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.690212, 39.296947, 20.406391>,  <39.029270, 39.494942, 20.482792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690212, 39.296947, 20.406391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027555, -0.318447, 0.947540,
		-0.529844, 0.808443, 0.256291,
		-0.847647, -0.494986, -0.191004,
		38.435917, 39.148453, 20.349091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618561, 39.759338, 20.931278>,  <39.029270, 39.494942, 20.482792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618561, 39.759338, 20.931278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479465, 39.399841, 20.824436>,  <38.396008, 39.184143, 20.760330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479465, 39.399841, 20.824436>,  <38.618561, 39.759338, 20.931278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479465, 39.399841, 20.824436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028296, -0.294816, 0.955135,
		-0.937166, 0.324576, 0.127948,
		-0.347735, -0.898740, -0.267107,
		38.375145, 39.130219, 20.744305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149841, 39.492966, 21.532345>,  <38.618561, 39.759338, 20.931278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149841, 39.492966, 21.532345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174953, 39.153835, 21.321726>,  <38.190022, 38.950359, 21.195354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174953, 39.153835, 21.321726>,  <38.149841, 39.492966, 21.532345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174953, 39.153835, 21.321726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133383, -0.529984, 0.837452,
		-0.989074, 0.017661, -0.146355,
		0.062775, -0.847824, -0.526549,
		38.193787, 38.899487, 21.163761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588699, 39.135181, 21.701540>,  <38.149841, 39.492966, 21.532345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588699, 39.135181, 21.701540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.855328, 38.872196, 21.561010>,  <38.015305, 38.714405, 21.476692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.855328, 38.872196, 21.561010>,  <37.588699, 39.135181, 21.701540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855328, 38.872196, 21.561010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285197, -0.660357, 0.694688,
		-0.688734, -0.362857, -0.627678,
		0.666564, -0.657467, -0.351325,
		38.055298, 38.674957, 21.455614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328808, 38.512821, 21.827057>,  <37.588699, 39.135181, 21.701540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328808, 38.512821, 21.827057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.712543, 38.417042, 21.767275>,  <37.942783, 38.359573, 21.731405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.712543, 38.417042, 21.767275>,  <37.328808, 38.512821, 21.827057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712543, 38.417042, 21.767275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047530, -0.658969, 0.750667,
		-0.278231, -0.713039, -0.643555,
		0.959338, -0.239447, -0.149455,
		38.000343, 38.345207, 21.722439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422466, 37.756966, 21.882818>,  <37.328808, 38.512821, 21.827057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422466, 37.756966, 21.882818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778645, 37.918503, 21.966745>,  <37.992352, 38.015423, 22.017101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778645, 37.918503, 21.966745>,  <37.422466, 37.756966, 21.882818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778645, 37.918503, 21.966745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108523, -0.636165, 0.763883,
		0.441964, -0.657425, -0.610295,
		0.890444, 0.403840, 0.209816,
		38.045776, 38.039654, 22.029690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878578, 37.171410, 22.035933>,  <37.422466, 37.756966, 21.882818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878578, 37.171410, 22.035933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058971, 37.486431, 22.203920>,  <38.167206, 37.675446, 22.304712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058971, 37.486431, 22.203920>,  <37.878578, 37.171410, 22.035933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058971, 37.486431, 22.203920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138097, -0.526439, 0.838923,
		0.881786, -0.320341, -0.346173,
		0.450980, 0.787556, 0.419968,
		38.194267, 37.722698, 22.329910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426571, 36.901836, 22.415537>,  <37.878578, 37.171410, 22.035933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426571, 36.901836, 22.415537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350552, 37.257366, 22.582327>,  <38.304939, 37.470684, 22.682402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350552, 37.257366, 22.582327>,  <38.426571, 36.901836, 22.415537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350552, 37.257366, 22.582327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008793, -0.423157, 0.906014,
		0.981736, 0.175852, 0.072604,
		-0.190047, 0.888827, 0.416974,
		38.293537, 37.524014, 22.707418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916252, 36.958752, 23.023615>,  <38.426571, 36.901836, 22.415537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916252, 36.958752, 23.023615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616096, 37.210529, 23.104330>,  <38.436005, 37.361595, 23.152760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616096, 37.210529, 23.104330>,  <38.916252, 36.958752, 23.023615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616096, 37.210529, 23.104330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095863, -0.405685, 0.908972,
		0.654008, 0.662739, 0.364761,
		-0.750389, 0.629442, 0.201789,
		38.390980, 37.399361, 23.164867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.361385, 35.651497, 27.507893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.012798, 35.846584, 27.528608>,  <40.803646, 35.963638, 27.541037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.012798, 35.846584, 27.528608>,  <41.361385, 35.651497, 27.507893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012798, 35.846584, 27.528608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008780, -0.090061, 0.995897,
		0.490382, 0.868343, 0.074203,
		-0.871463, 0.487719, 0.051788,
		40.751358, 35.992901, 27.544146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460918, 36.023262, 28.169193>,  <41.361385, 35.651497, 27.507893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460918, 36.023262, 28.169193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066158, 36.033321, 28.105457>,  <40.829300, 36.039356, 28.067215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066158, 36.033321, 28.105457>,  <41.460918, 36.023262, 28.169193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066158, 36.033321, 28.105457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161294, -0.168934, 0.972340,
		-0.002469, 0.985307, 0.170777,
		-0.986903, 0.025145, -0.159341,
		40.770088, 36.040863, 28.057655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158978, 36.424385, 28.752258>,  <41.460918, 36.023262, 28.169193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158978, 36.424385, 28.752258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864807, 36.201820, 28.597569>,  <40.688305, 36.068279, 28.504755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864807, 36.201820, 28.597569>,  <41.158978, 36.424385, 28.752258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864807, 36.201820, 28.597569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310350, -0.230754, 0.922191,
		-0.602359, 0.798220, -0.002982,
		-0.735422, -0.556415, -0.386724,
		40.644180, 36.034897, 28.481552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471706, 36.734844, 28.897972>,  <41.158978, 36.424385, 28.752258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471706, 36.734844, 28.897972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.405613, 36.346294, 28.829702>,  <40.365955, 36.113163, 28.788740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.405613, 36.346294, 28.829702>,  <40.471706, 36.734844, 28.897972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405613, 36.346294, 28.829702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395170, -0.093348, 0.913853,
		-0.903624, 0.218447, -0.368434,
		-0.165236, -0.971374, -0.170675,
		40.356041, 36.054882, 28.778500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829113, 36.661762, 29.102514>,  <40.471706, 36.734844, 28.897972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829113, 36.661762, 29.102514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.985680, 36.293743, 29.109436>,  <40.079620, 36.072929, 29.113588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.985680, 36.293743, 29.109436>,  <39.829113, 36.661762, 29.102514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985680, 36.293743, 29.109436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539814, -0.214343, 0.814038,
		-0.745247, -0.327970, -0.580554,
		0.391418, -0.920050, 0.017305,
		40.103104, 36.017727, 29.114628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308064, 36.299110, 29.186007>,  <39.829113, 36.661762, 29.102514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308064, 36.299110, 29.186007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588371, 36.041931, 29.309645>,  <39.756557, 35.887623, 29.383827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588371, 36.041931, 29.309645>,  <39.308064, 36.299110, 29.186007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588371, 36.041931, 29.309645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592798, -0.283773, 0.753700,
		-0.396879, -0.711400, -0.579998,
		0.700770, -0.642949, 0.309093,
		39.798603, 35.849049, 29.402372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919334, 35.683918, 29.324640>,  <39.308064, 36.299110, 29.186007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919334, 35.683918, 29.324640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270168, 35.626984, 29.508142>,  <39.480671, 35.592823, 29.618244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270168, 35.626984, 29.508142>,  <38.919334, 35.683918, 29.324640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270168, 35.626984, 29.508142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460781, -0.519021, 0.719929,
		0.135630, -0.842827, -0.520814,
		0.877089, -0.142337, 0.458753,
		39.533295, 35.584282, 29.645769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860836, 34.923069, 29.569344>,  <38.919334, 35.683918, 29.324640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860836, 34.923069, 29.569344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133911, 35.131016, 29.774740>,  <39.297756, 35.255783, 29.897978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133911, 35.131016, 29.774740>,  <38.860836, 34.923069, 29.569344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133911, 35.131016, 29.774740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312160, -0.427886, 0.848216,
		0.660673, -0.739360, -0.129833,
		0.682691, 0.519865, 0.513491,
		39.338718, 35.286976, 29.928787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040363, 34.425430, 30.069344>,  <38.860836, 34.923069, 29.569344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040363, 34.425430, 30.069344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196293, 34.758816, 30.225992>,  <39.289852, 34.958847, 30.319981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196293, 34.758816, 30.225992>,  <39.040363, 34.425430, 30.069344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196293, 34.758816, 30.225992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175275, -0.350338, 0.920077,
		0.904054, -0.427312, 0.009515,
		0.389827, 0.833467, 0.391622,
		39.313240, 35.008858, 30.343479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545979, 34.188950, 30.561756>,  <39.040363, 34.425430, 30.069344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545979, 34.188950, 30.561756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.395123, 34.550823, 30.641058>,  <39.304607, 34.767948, 30.688639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.395123, 34.550823, 30.641058>,  <39.545979, 34.188950, 30.561756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395123, 34.550823, 30.641058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109686, -0.256188, 0.960383,
		0.919637, 0.340457, 0.195851,
		-0.377144, 0.904686, 0.198257,
		39.281979, 34.822227, 30.700535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973663, 34.405243, 31.200022>,  <39.545979, 34.188950, 30.561756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973663, 34.405243, 31.200022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.634003, 34.615135, 31.176035>,  <39.430206, 34.741070, 31.161644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.634003, 34.615135, 31.176035>,  <39.973663, 34.405243, 31.200022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634003, 34.615135, 31.176035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336573, -0.450149, 0.827094,
		0.407006, 0.722514, 0.558856,
		-0.849155, 0.524728, -0.059965,
		39.379257, 34.772552, 31.158045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025623, 34.962605, 31.682632>,  <39.973663, 34.405243, 31.200022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025623, 34.962605, 31.682632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.640682, 34.871048, 31.623989>,  <39.409718, 34.816113, 31.588804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.640682, 34.871048, 31.623989>,  <40.025623, 34.962605, 31.682632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640682, 34.871048, 31.623989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140826, -0.041476, 0.989165,
		-0.232492, 0.972568, 0.007681,
		-0.962349, -0.228892, -0.146606,
		39.351978, 34.802380, 31.580008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842388, 35.118271, 32.340702>,  <40.025623, 34.962605, 31.682632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842388, 35.118271, 32.340702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.582298, 34.872013, 32.162628>,  <39.426243, 34.724258, 32.055782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.582298, 34.872013, 32.162628>,  <39.842388, 35.118271, 32.340702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582298, 34.872013, 32.162628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211564, -0.416070, 0.884379,
		-0.729688, 0.669233, 0.140293,
		-0.650227, -0.615640, -0.445188,
		39.387230, 34.687321, 32.029072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223083, 35.308228, 32.897285>,  <39.842388, 35.118271, 32.340702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223083, 35.308228, 32.897285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318417, 35.399715, 33.274834>,  <40.375618, 35.454609, 33.501362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318417, 35.399715, 33.274834>,  <40.223083, 35.308228, 32.897285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318417, 35.399715, 33.274834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892147, -0.435594, -0.119718,
		0.383761, 0.870600, -0.307870,
		0.238332, 0.228722, 0.943866,
		40.389915, 35.468330, 33.557995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659485, 35.237362, 33.349682>,  <40.223083, 35.308228, 32.897285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659485, 35.237362, 33.349682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.552032, 35.412106, 33.693073>,  <39.487560, 35.516953, 33.899109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.552032, 35.412106, 33.693073>,  <39.659485, 35.237362, 33.349682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552032, 35.412106, 33.693073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062820, 0.897288, -0.436954,
		-0.961192, -0.063451, -0.268485,
		-0.268633, 0.436863, 0.858480,
		39.471443, 35.543163, 33.950619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067459, 35.421032, 33.241150>,  <39.659485, 35.237362, 33.349682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067459, 35.421032, 33.241150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228836, 35.657192, 33.520767>,  <39.325661, 35.798889, 33.688538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228836, 35.657192, 33.520767>,  <39.067459, 35.421032, 33.241150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228836, 35.657192, 33.520767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051368, 0.777390, -0.626917,
		-0.913563, 0.217015, 0.343958,
		0.403440, 0.590397, 0.699048,
		39.349869, 35.834312, 33.730480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688370, 36.042442, 33.151184>,  <39.067459, 35.421032, 33.241150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688370, 36.042442, 33.151184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979225, 36.172112, 33.393234>,  <39.153740, 36.249912, 33.538464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979225, 36.172112, 33.393234>,  <38.688370, 36.042442, 33.151184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979225, 36.172112, 33.393234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073024, 0.839955, -0.537720,
		-0.682596, 0.435186, 0.587091,
		0.727138, 0.324174, 0.605129,
		39.197365, 36.269363, 33.574772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491589, 36.758965, 33.235138>,  <38.688370, 36.042442, 33.151184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491589, 36.758965, 33.235138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876945, 36.750725, 33.342060>,  <39.108158, 36.745781, 33.406216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876945, 36.750725, 33.342060>,  <38.491589, 36.758965, 33.235138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876945, 36.750725, 33.342060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183282, 0.778266, -0.600591,
		-0.195669, 0.627596, 0.753549,
		0.963390, -0.020595, 0.267309,
		39.165962, 36.744545, 33.422253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668339, 37.487442, 33.432079>,  <38.491589, 36.758965, 33.235138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668339, 37.487442, 33.432079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.039665, 37.343597, 33.394302>,  <39.262459, 37.257290, 33.371635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.039665, 37.343597, 33.394302>,  <38.668339, 37.487442, 33.432079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039665, 37.343597, 33.394302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209849, 0.716451, -0.665328,
		0.306921, 0.597813, 0.740554,
		0.928312, -0.359607, -0.094444,
		39.318157, 37.235714, 33.365971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092255, 38.032558, 33.542675>,  <38.668339, 37.487442, 33.432079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092255, 38.032558, 33.542675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299248, 37.760551, 33.334911>,  <39.423443, 37.597347, 33.210251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299248, 37.760551, 33.334911>,  <39.092255, 38.032558, 33.542675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299248, 37.760551, 33.334911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145440, 0.668072, -0.729745,
		0.843244, 0.302086, 0.444616,
		0.517481, -0.680018, -0.519412,
		39.454491, 37.556545, 33.179089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570660, 38.437660, 33.202770>,  <39.092255, 38.032558, 33.542675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570660, 38.437660, 33.202770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.600063, 38.084328, 33.017590>,  <39.617706, 37.872330, 32.906479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.600063, 38.084328, 33.017590>,  <39.570660, 38.437660, 33.202770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600063, 38.084328, 33.017590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225532, 0.466908, -0.855063,
		0.971458, -0.041554, 0.233542,
		0.073511, -0.883329, -0.462953,
		39.622116, 37.819328, 32.878704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125908, 38.539387, 32.676071>,  <39.570660, 38.437660, 33.202770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125908, 38.539387, 32.676071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931820, 38.219044, 32.535675>,  <39.815369, 38.026840, 32.451439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931820, 38.219044, 32.535675>,  <40.125908, 38.539387, 32.676071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931820, 38.219044, 32.535675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062816, 0.432297, -0.899541,
		0.872133, -0.414427, -0.260066,
		-0.485220, -0.800856, -0.350987,
		39.786255, 37.978786, 32.430378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426929, 38.351135, 32.088284>,  <40.125908, 38.539387, 32.676071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426929, 38.351135, 32.088284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060940, 38.191921, 32.061783>,  <39.841347, 38.096394, 32.045883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060940, 38.191921, 32.061783>,  <40.426929, 38.351135, 32.088284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060940, 38.191921, 32.061783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066826, 0.311401, -0.947926,
		0.397941, -0.862900, -0.311523,
		-0.914974, -0.398036, -0.066255,
		39.786446, 38.072510, 32.041908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426720, 37.980091, 31.424314>,  <40.426929, 38.351135, 32.088284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426720, 37.980091, 31.424314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.035179, 38.001083, 31.503407>,  <39.800255, 38.013680, 31.550861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.035179, 38.001083, 31.503407>,  <40.426720, 37.980091, 31.424314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035179, 38.001083, 31.503407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174893, 0.286760, -0.941903,
		-0.106132, -0.956564, -0.271517,
		-0.978851, 0.052480, 0.197730,
		39.741524, 38.016827, 31.562725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149593, 37.658070, 30.793169>,  <40.426720, 37.980091, 31.424314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149593, 37.658070, 30.793169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876930, 37.880161, 30.983774>,  <39.713333, 38.013416, 31.098137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876930, 37.880161, 30.983774>,  <40.149593, 37.658070, 30.793169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876930, 37.880161, 30.983774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176494, 0.507256, -0.843529,
		-0.710066, -0.659099, -0.247780,
		-0.681657, 0.555229, 0.476513,
		39.672432, 38.046730, 31.126728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585243, 37.700508, 30.273685>,  <40.149593, 37.658070, 30.793169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585243, 37.700508, 30.273685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544445, 38.005581, 30.529158>,  <39.519966, 38.188625, 30.682442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544445, 38.005581, 30.529158>,  <39.585243, 37.700508, 30.273685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544445, 38.005581, 30.529158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083540, 0.633194, -0.769471,
		-0.991271, -0.131841, -0.000871,
		-0.101999, 0.762681, 0.638681,
		39.513844, 38.234386, 30.720762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934250, 37.970722, 29.994673>,  <39.585243, 37.700508, 30.273685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934250, 37.970722, 29.994673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.164310, 38.218018, 30.208954>,  <39.302345, 38.366394, 30.337523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.164310, 38.218018, 30.208954>,  <38.934250, 37.970722, 29.994673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164310, 38.218018, 30.208954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037654, 0.674171, -0.737615,
		-0.817179, 0.404070, 0.411030,
		0.575153, 0.618240, 0.535704,
		39.336857, 38.403488, 30.369665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667847, 38.589527, 29.831102>,  <38.934250, 37.970722, 29.994673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667847, 38.589527, 29.831102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024055, 38.670349, 29.994144>,  <39.237782, 38.718842, 30.091969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024055, 38.670349, 29.994144>,  <38.667847, 38.589527, 29.831102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024055, 38.670349, 29.994144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143270, 0.725810, -0.672811,
		-0.431790, 0.657551, 0.617401,
		0.890523, 0.202058, 0.407604,
		39.291214, 38.730965, 30.116426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035305, 38.829044, 30.050314>,  <38.667847, 38.589527, 29.831102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035305, 38.829044, 30.050314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.655388, 38.953773, 30.040096>,  <37.427437, 39.028610, 30.033966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.655388, 38.953773, 30.040096>,  <38.035305, 38.829044, 30.050314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655388, 38.953773, 30.040096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281941, -0.817649, 0.501955,
		0.135637, 0.483957, 0.864516,
		-0.949796, 0.311826, -0.025544,
		37.370449, 39.047321, 30.032433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816540, 38.735909, 30.716677>,  <38.035305, 38.829044, 30.050314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816540, 38.735909, 30.716677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474373, 38.731106, 30.509554>,  <37.269073, 38.728222, 30.385281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474373, 38.731106, 30.509554>,  <37.816540, 38.735909, 30.716677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474373, 38.731106, 30.509554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318138, -0.776733, 0.543575,
		-0.408725, 0.629716, 0.660608,
		-0.855414, -0.012008, -0.517807,
		37.217751, 38.727505, 30.354212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330116, 38.534210, 31.157755>,  <37.816540, 38.735909, 30.716677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330116, 38.534210, 31.157755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132057, 38.455307, 30.819307>,  <37.013222, 38.407963, 30.616240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132057, 38.455307, 30.819307>,  <37.330116, 38.534210, 31.157755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132057, 38.455307, 30.819307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364633, -0.836778, 0.408468,
		-0.788587, 0.510775, 0.342403,
		-0.495150, -0.197261, -0.846117,
		36.983513, 38.396130, 30.565472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508049, 38.435257, 31.310991>,  <37.330116, 38.534210, 31.157755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508049, 38.435257, 31.310991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.571102, 38.249550, 30.962368>,  <36.608932, 38.138126, 30.753195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.571102, 38.249550, 30.962368>,  <36.508049, 38.435257, 31.310991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571102, 38.249550, 30.962368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442789, -0.822122, 0.357846,
		-0.882661, 0.329508, -0.335163,
		0.157632, -0.464264, -0.871557,
		36.618393, 38.110271, 30.700901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919628, 38.191471, 31.057320>,  <36.508049, 38.435257, 31.310991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919628, 38.191471, 31.057320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.200932, 37.965343, 30.884884>,  <36.369713, 37.829666, 30.781422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.200932, 37.965343, 30.884884>,  <35.919628, 38.191471, 31.057320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200932, 37.965343, 30.884884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521938, -0.822267, 0.226841,
		-0.482711, 0.065475, -0.873329,
		0.703257, -0.565322, -0.431091,
		36.411907, 37.795746, 30.755556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497417, 37.712959, 30.778038>,  <35.919628, 38.191471, 31.057320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497417, 37.712959, 30.778038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.865692, 37.556866, 30.774881>,  <36.086655, 37.463211, 30.772987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.865692, 37.556866, 30.774881>,  <35.497417, 37.712959, 30.778038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865692, 37.556866, 30.774881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376477, -0.893204, 0.245869,
		-0.102994, -0.223397, -0.969271,
		0.920684, -0.390231, -0.007891,
		36.141895, 37.439796, 30.772514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398510, 37.169472, 30.369654>,  <35.497417, 37.712959, 30.778038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398510, 37.169472, 30.369654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.731071, 37.110455, 30.583946>,  <35.930607, 37.075043, 30.712521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.731071, 37.110455, 30.583946>,  <35.398510, 37.169472, 30.369654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731071, 37.110455, 30.583946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371330, -0.864751, 0.338111,
		0.413387, -0.480038, -0.773741,
		0.831399, -0.147543, 0.535730,
		35.980492, 37.066193, 30.744665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577900, 36.463634, 30.176529>,  <35.398510, 37.169472, 30.369654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577900, 36.463634, 30.176529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770950, 36.515179, 30.523046>,  <35.886780, 36.546104, 30.730957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770950, 36.515179, 30.523046>,  <35.577900, 36.463634, 30.176529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770950, 36.515179, 30.523046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383702, -0.858030, 0.341403,
		0.787300, -0.497170, -0.364666,
		0.482630, 0.128863, 0.866292,
		35.915741, 36.553837, 30.782934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956184, 35.851555, 30.390640>,  <35.577900, 36.463634, 30.176529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956184, 35.851555, 30.390640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907238, 36.046669, 30.736378>,  <35.877869, 36.163738, 30.943821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907238, 36.046669, 30.736378>,  <35.956184, 35.851555, 30.390640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907238, 36.046669, 30.736378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303789, -0.847497, 0.435272,
		0.944848, -0.209313, 0.251892,
		-0.122370, 0.487788, 0.864343,
		35.870525, 36.193005, 30.995680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352932, 35.373878, 30.989994>,  <35.956184, 35.851555, 30.390640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352932, 35.373878, 30.989994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.082886, 35.635601, 31.126286>,  <35.920856, 35.792633, 31.208059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.082886, 35.635601, 31.126286>,  <36.352932, 35.373878, 30.989994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082886, 35.635601, 31.126286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371198, -0.700442, 0.609584,
		0.637515, 0.285065, 0.715760,
		-0.675120, 0.654308, 0.340726,
		35.880348, 35.831894, 31.228504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356087, 35.447113, 31.770638>,  <36.352932, 35.373878, 30.989994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356087, 35.447113, 31.770638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.987896, 35.590405, 31.708153>,  <35.766983, 35.676380, 31.670662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.987896, 35.590405, 31.708153>,  <36.356087, 35.447113, 31.770638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987896, 35.590405, 31.708153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346205, -0.562009, 0.751191,
		0.181307, 0.745532, 0.641334,
		-0.920472, 0.358230, -0.156211,
		35.711754, 35.697872, 31.661289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117043, 35.500401, 32.398937>,  <36.356087, 35.447113, 31.770638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117043, 35.500401, 32.398937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.772274, 35.555000, 32.203606>,  <35.565414, 35.587761, 32.086407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.772274, 35.555000, 32.203606>,  <36.117043, 35.500401, 32.398937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772274, 35.555000, 32.203606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494300, -0.440790, 0.749247,
		-0.112975, 0.887170, 0.447399,
		-0.861919, 0.136503, -0.488327,
		35.513699, 35.595951, 32.057106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.935764, 42.536591, 28.453989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660210, 42.360165, 28.223896>,  <37.494877, 42.254307, 28.085840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660210, 42.360165, 28.223896>,  <37.935764, 42.536591, 28.453989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660210, 42.360165, 28.223896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272574, -0.577700, 0.769393,
		-0.671666, 0.686820, 0.277747,
		-0.688889, -0.441068, -0.575230,
		37.453545, 42.227844, 28.051327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425591, 42.502720, 28.983980>,  <37.935764, 42.536591, 28.453989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425591, 42.502720, 28.983980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318222, 42.249760, 28.693319>,  <37.253799, 42.097984, 28.518923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318222, 42.249760, 28.693319>,  <37.425591, 42.502720, 28.983980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318222, 42.249760, 28.693319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170461, -0.711250, 0.681958,
		-0.948100, 0.306918, 0.083116,
		-0.268421, -0.632396, -0.726654,
		37.237694, 42.060040, 28.475323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903877, 42.034611, 29.396833>,  <37.425591, 42.502720, 28.983980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903877, 42.034611, 29.396833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982159, 41.851688, 29.049829>,  <37.029129, 41.741936, 28.841627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982159, 41.851688, 29.049829>,  <36.903877, 42.034611, 29.396833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982159, 41.851688, 29.049829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241905, -0.879791, 0.409204,
		-0.950359, 0.129773, -0.282801,
		0.195702, -0.457302, -0.867511,
		37.040871, 41.714497, 28.789576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307514, 41.538441, 29.262234>,  <36.903877, 42.034611, 29.396833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307514, 41.538441, 29.262234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635773, 41.415745, 29.069378>,  <36.832726, 41.342129, 28.953665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635773, 41.415745, 29.069378>,  <36.307514, 41.538441, 29.262234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635773, 41.415745, 29.069378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142665, -0.926981, 0.346919,
		-0.553346, -0.215913, -0.804481,
		0.820643, -0.306738, -0.482138,
		36.881966, 41.323723, 28.924736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168335, 40.881348, 28.856619>,  <36.307514, 41.538441, 29.262234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168335, 40.881348, 28.856619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558098, 40.910427, 28.941710>,  <36.791954, 40.927876, 28.992764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558098, 40.910427, 28.941710>,  <36.168335, 40.881348, 28.856619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558098, 40.910427, 28.941710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047826, -0.857580, 0.512123,
		0.219660, -0.509188, -0.832152,
		0.974403, 0.072694, 0.212729,
		36.850418, 40.932236, 29.005527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466736, 40.294193, 28.606867>,  <36.168335, 40.881348, 28.856619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466736, 40.294193, 28.606867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729267, 40.421120, 28.880667>,  <36.886787, 40.497276, 29.044947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729267, 40.421120, 28.880667>,  <36.466736, 40.294193, 28.606867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729267, 40.421120, 28.880667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010822, -0.911120, 0.412000,
		0.754397, -0.263000, -0.601428,
		0.656329, 0.317320, 0.684500,
		36.926167, 40.516315, 29.086016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051968, 39.834553, 28.568287>,  <36.466736, 40.294193, 28.606867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051968, 39.834553, 28.568287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089054, 40.019260, 28.921143>,  <37.111305, 40.130085, 29.132856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089054, 40.019260, 28.921143>,  <37.051968, 39.834553, 28.568287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089054, 40.019260, 28.921143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203513, -0.876043, 0.437185,
		0.974672, 0.138991, -0.175203,
		0.092720, 0.461768, 0.882141,
		37.116871, 40.157791, 29.185785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677631, 39.550884, 28.795525>,  <37.051968, 39.834553, 28.568287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677631, 39.550884, 28.795525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508308, 39.683315, 29.132854>,  <37.406715, 39.762775, 29.335253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508308, 39.683315, 29.132854>,  <37.677631, 39.550884, 28.795525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508308, 39.683315, 29.132854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191366, -0.877161, 0.440418,
		0.885547, 0.347814, 0.307947,
		-0.423303, 0.331081, 0.843327,
		37.381317, 39.782639, 29.385853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032982, 39.339764, 29.354698>,  <37.677631, 39.550884, 28.795525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032982, 39.339764, 29.354698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679008, 39.410080, 29.527201>,  <37.466625, 39.452271, 29.630703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679008, 39.410080, 29.527201>,  <38.032982, 39.339764, 29.354698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679008, 39.410080, 29.527201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065825, -0.869510, 0.489510,
		0.461034, 0.461573, 0.757890,
		-0.884938, 0.175793, 0.431256,
		37.413528, 39.462818, 29.656578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646503, 39.328674, 29.802803>,  <38.032982, 39.339764, 29.354698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646503, 39.328674, 29.802803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032566, 39.229218, 29.835430>,  <39.264202, 39.169544, 29.855005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032566, 39.229218, 29.835430>,  <38.646503, 39.328674, 29.802803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032566, 39.229218, 29.835430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229164, 0.652653, -0.722169,
		0.126324, 0.715697, 0.686891,
		0.965156, -0.248638, 0.081567,
		39.322113, 39.154625, 29.859900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127758, 39.931725, 29.944260>,  <38.646503, 39.328674, 29.802803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127758, 39.931725, 29.944260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341030, 39.633686, 29.783983>,  <39.468994, 39.454865, 29.687817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341030, 39.633686, 29.783983>,  <39.127758, 39.931725, 29.944260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341030, 39.633686, 29.783983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133179, 0.541648, -0.829989,
		0.835452, 0.389171, 0.388028,
		0.533182, -0.745093, -0.400691,
		39.500984, 39.410156, 29.663776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531502, 40.349751, 29.503695>,  <39.127758, 39.931725, 29.944260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531502, 40.349751, 29.503695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626221, 39.977341, 29.392618>,  <39.683052, 39.753895, 29.325974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626221, 39.977341, 29.392618>,  <39.531502, 40.349751, 29.503695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626221, 39.977341, 29.392618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138439, 0.315237, -0.938861,
		0.961645, 0.183879, 0.203539,
		0.236800, -0.931029, -0.277690,
		39.697262, 39.698032, 29.309311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156799, 40.384277, 29.254383>,  <39.531502, 40.349751, 29.503695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156799, 40.384277, 29.254383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000805, 40.049576, 29.100624>,  <39.907207, 39.848755, 29.008369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000805, 40.049576, 29.100624>,  <40.156799, 40.384277, 29.254383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000805, 40.049576, 29.100624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337554, 0.258482, -0.905122,
		0.856720, -0.482738, 0.181644,
		-0.389984, -0.836751, -0.384396,
		39.883808, 39.798550, 28.985306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621143, 40.098160, 28.809896>,  <40.156799, 40.384277, 29.254383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621143, 40.098160, 28.809896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268856, 39.949505, 28.692438>,  <40.057484, 39.860313, 28.621964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268856, 39.949505, 28.692438>,  <40.621143, 40.098160, 28.809896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268856, 39.949505, 28.692438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246297, 0.170220, -0.954130,
		0.404575, -0.912640, -0.058382,
		-0.880714, -0.371638, -0.293647,
		40.004642, 39.838013, 28.604343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803322, 39.782570, 28.247635>,  <40.621143, 40.098160, 28.809896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803322, 39.782570, 28.247635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406952, 39.820709, 28.209732>,  <40.169128, 39.843594, 28.186991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406952, 39.820709, 28.209732>,  <40.803322, 39.782570, 28.247635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406952, 39.820709, 28.209732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124619, 0.387318, -0.913485,
		-0.050402, -0.917002, -0.395686,
		-0.990924, 0.095352, -0.094755,
		40.109676, 39.849316, 28.181305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495472, 39.465294, 27.561390>,  <40.803322, 39.782570, 28.247635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495472, 39.465294, 27.561390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255928, 39.765251, 27.673834>,  <40.112202, 39.945225, 27.741301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255928, 39.765251, 27.673834>,  <40.495472, 39.465294, 27.561390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255928, 39.765251, 27.673834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054833, 0.388583, -0.919781,
		-0.798975, -0.535404, -0.273826,
		-0.598859, 0.749897, 0.281111,
		40.076271, 39.990219, 27.758167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993656, 39.532101, 27.041254>,  <40.495472, 39.465294, 27.561390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993656, 39.532101, 27.041254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964878, 39.887535, 27.222466>,  <39.947613, 40.100796, 27.331192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964878, 39.887535, 27.222466>,  <39.993656, 39.532101, 27.041254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964878, 39.887535, 27.222466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049176, 0.450495, -0.891424,
		-0.996196, -0.086408, 0.011288,
		-0.071941, 0.888588, 0.453030,
		39.943295, 40.154110, 27.358376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510719, 39.857353, 26.669588>,  <39.993656, 39.532101, 27.041254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510719, 39.857353, 26.669588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690582, 40.167156, 26.847555>,  <39.798500, 40.353039, 26.954336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690582, 40.167156, 26.847555>,  <39.510719, 39.857353, 26.669588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690582, 40.167156, 26.847555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059795, 0.470897, -0.880159,
		-0.891199, 0.422372, 0.165430,
		0.449655, 0.774505, 0.444918,
		39.825478, 40.399509, 26.981031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171730, 40.437443, 26.382858>,  <39.510719, 39.857353, 26.669588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171730, 40.437443, 26.382858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513710, 40.576740, 26.536633>,  <39.718899, 40.660320, 26.628897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513710, 40.576740, 26.536633>,  <39.171730, 40.437443, 26.382858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513710, 40.576740, 26.536633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113261, 0.597919, -0.793514,
		-0.506199, 0.721954, 0.471746,
		0.854947, 0.348246, 0.384435,
		39.770195, 40.681213, 26.651962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245274, 41.127144, 26.116863>,  <39.171730, 40.437443, 26.382858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245274, 41.127144, 26.116863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614525, 41.061665, 26.256023>,  <39.836075, 41.022377, 26.339520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614525, 41.061665, 26.256023>,  <39.245274, 41.127144, 26.116863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614525, 41.061665, 26.256023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382384, 0.485487, -0.786184,
		-0.040204, 0.858781, 0.510763,
		0.923128, -0.163700, 0.347903,
		39.891464, 41.012554, 26.360394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451099, 41.748577, 26.105810>,  <39.245274, 41.127144, 26.116863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451099, 41.748577, 26.105810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735039, 41.467155, 26.092382>,  <39.905403, 41.298302, 26.084326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735039, 41.467155, 26.092382>,  <39.451099, 41.748577, 26.105810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735039, 41.467155, 26.092382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195858, 0.242944, -0.950062,
		0.676572, 0.667829, 0.310250,
		0.709853, -0.703550, -0.033569,
		39.947994, 41.256092, 26.082312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003551, 42.081970, 25.800749>,  <39.451099, 41.748577, 26.105810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003551, 42.081970, 25.800749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071526, 41.691093, 25.749819>,  <40.112309, 41.456566, 25.719261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071526, 41.691093, 25.749819>,  <40.003551, 42.081970, 25.800749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071526, 41.691093, 25.749819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386188, 0.184906, -0.903697,
		0.906632, 0.104396, 0.408803,
		0.169933, -0.977196, -0.127326,
		40.122505, 41.397934, 25.711620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695030, 41.997643, 25.417509>,  <40.003551, 42.081970, 25.800749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695030, 41.997643, 25.417509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539783, 41.631390, 25.375582>,  <40.446636, 41.411640, 25.350426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539783, 41.631390, 25.375582>,  <40.695030, 41.997643, 25.417509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539783, 41.631390, 25.375582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224051, 0.016577, -0.974436,
		0.893959, -0.401684, 0.198714,
		-0.388121, -0.915628, -0.104817,
		40.423347, 41.356701, 25.344137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.338741, 38.249573, 21.537775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540989, 38.526550, 21.743635>,  <35.662338, 38.692738, 21.867151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540989, 38.526550, 21.743635>,  <35.338741, 38.249573, 21.537775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540989, 38.526550, 21.743635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013404, -0.590145, 0.807186,
		0.862652, -0.415028, -0.289108,
		0.505620, 0.692446, 0.514653,
		35.692677, 38.734283, 21.898031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897900, 37.930527, 21.926199>,  <35.338741, 38.249573, 21.537775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897900, 37.930527, 21.926199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.853458, 38.275986, 22.122883>,  <35.826794, 38.483261, 22.240892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.853458, 38.275986, 22.122883>,  <35.897900, 37.930527, 21.926199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853458, 38.275986, 22.122883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055520, -0.499393, 0.864595,
		0.992257, 0.068757, 0.103431,
		-0.111100, 0.863643, 0.491709,
		35.820129, 38.535080, 22.270395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295563, 37.792915, 22.531349>,  <35.897900, 37.930527, 21.926199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295563, 37.792915, 22.531349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076050, 38.108536, 22.641798>,  <35.944344, 38.297909, 22.708067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076050, 38.108536, 22.641798>,  <36.295563, 37.792915, 22.531349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076050, 38.108536, 22.641798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068570, -0.371675, 0.925827,
		0.833151, 0.489140, 0.258073,
		-0.548778, 0.789050, 0.276121,
		35.911415, 38.345249, 22.724634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610237, 37.970524, 23.127619>,  <36.295563, 37.792915, 22.531349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610237, 37.970524, 23.127619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.239239, 38.119652, 23.138689>,  <36.016640, 38.209129, 23.145330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.239239, 38.119652, 23.138689>,  <36.610237, 37.970524, 23.127619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239239, 38.119652, 23.138689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134219, -0.401171, 0.906116,
		0.348919, 0.836701, 0.422122,
		-0.927491, 0.372818, 0.027675,
		35.960991, 38.231499, 23.146992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575489, 38.249523, 23.798927>,  <36.610237, 37.970524, 23.127619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575489, 38.249523, 23.798927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199928, 38.180443, 23.679838>,  <35.974590, 38.138996, 23.608385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199928, 38.180443, 23.679838>,  <36.575489, 38.249523, 23.798927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199928, 38.180443, 23.679838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206927, -0.407993, 0.889226,
		-0.275037, 0.896503, 0.347329,
		-0.938901, -0.172698, -0.297724,
		35.918259, 38.128632, 23.590521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106293, 38.561768, 24.337364>,  <36.575489, 38.249523, 23.798927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106293, 38.561768, 24.337364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.904114, 38.276348, 24.143305>,  <35.782806, 38.105095, 24.026869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.904114, 38.276348, 24.143305>,  <36.106293, 38.561768, 24.337364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904114, 38.276348, 24.143305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334579, -0.356192, 0.872459,
		-0.795348, 0.603304, -0.058702,
		-0.505449, -0.713549, -0.485150,
		35.752480, 38.062283, 23.997761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563416, 38.455830, 24.805290>,  <36.106293, 38.561768, 24.337364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563416, 38.455830, 24.805290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.520039, 38.159977, 24.539604>,  <35.494011, 37.982464, 24.380192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.520039, 38.159977, 24.539604>,  <35.563416, 38.455830, 24.805290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520039, 38.159977, 24.539604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337992, -0.600920, 0.724332,
		-0.934881, 0.303047, -0.184826,
		-0.108442, -0.739634, -0.664216,
		35.487507, 37.938087, 24.340340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879082, 38.273697, 24.933983>,  <35.563416, 38.455830, 24.805290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879082, 38.273697, 24.933983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.089249, 37.981403, 24.759644>,  <35.215351, 37.806026, 24.655041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.089249, 37.981403, 24.759644>,  <34.879082, 38.273697, 24.933983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089249, 37.981403, 24.759644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262103, -0.626351, 0.734157,
		-0.809465, -0.271506, -0.520626,
		0.525422, -0.730731, -0.435847,
		35.246876, 37.762184, 24.628889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375755, 37.728619, 24.897621>,  <34.879082, 38.273697, 24.933983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375755, 37.728619, 24.897621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753578, 37.597679, 24.887398>,  <34.980270, 37.519115, 24.881264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753578, 37.597679, 24.887398>,  <34.375755, 37.728619, 24.897621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753578, 37.597679, 24.887398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202045, -0.640815, 0.740631,
		-0.258822, -0.694405, -0.671426,
		0.944557, -0.327349, -0.025556,
		35.036945, 37.499474, 24.879730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346359, 37.007275, 25.071276>,  <34.375755, 37.728619, 24.897621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346359, 37.007275, 25.071276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.740944, 37.031872, 25.132093>,  <34.977695, 37.046631, 25.168583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.740944, 37.031872, 25.132093>,  <34.346359, 37.007275, 25.071276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740944, 37.031872, 25.132093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101234, -0.501058, 0.859472,
		0.129034, -0.863226, -0.488048,
		0.986459, 0.061494, 0.152042,
		35.036880, 37.050320, 25.177706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504536, 36.318863, 25.267467>,  <34.346359, 37.007275, 25.071276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504536, 36.318863, 25.267467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.813217, 36.536419, 25.399321>,  <34.998425, 36.666950, 25.478434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.813217, 36.536419, 25.399321>,  <34.504536, 36.318863, 25.267467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813217, 36.536419, 25.399321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038288, -0.477638, 0.877722,
		0.634828, -0.689963, -0.347771,
		0.771704, 0.543888, 0.329635,
		35.044727, 36.699585, 25.498211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966564, 35.797703, 25.464661>,  <34.504536, 36.318863, 25.267467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966564, 35.797703, 25.464661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.069454, 36.132717, 25.657478>,  <35.131187, 36.333725, 25.773169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.069454, 36.132717, 25.657478>,  <34.966564, 35.797703, 25.464661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069454, 36.132717, 25.657478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039072, -0.507437, 0.860803,
		0.965561, -0.202587, -0.163251,
		0.257227, 0.837536, 0.482046,
		35.146622, 36.383980, 25.802092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455357, 35.538589, 25.890921>,  <34.966564, 35.797703, 25.464661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455357, 35.538589, 25.890921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378944, 35.898273, 26.048368>,  <35.333096, 36.114082, 26.142838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378944, 35.898273, 26.048368>,  <35.455357, 35.538589, 25.890921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378944, 35.898273, 26.048368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053172, -0.390935, 0.918881,
		0.980142, 0.196468, 0.026869,
		-0.191035, 0.899205, 0.393619,
		35.321632, 36.168034, 26.166454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033592, 35.708012, 26.313246>,  <35.455357, 35.538589, 25.890921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033592, 35.708012, 26.313246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719059, 35.901714, 26.466702>,  <35.530338, 36.017937, 26.558775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719059, 35.901714, 26.466702>,  <36.033592, 35.708012, 26.313246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719059, 35.901714, 26.466702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105178, -0.506972, 0.855522,
		0.608788, 0.713072, 0.347714,
		-0.786330, 0.484260, 0.383638,
		35.483162, 36.046993, 26.581793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517967, 36.303478, 26.635759>,  <36.033592, 35.708012, 26.313246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517967, 36.303478, 26.635759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883183, 36.140358, 26.632605>,  <37.102310, 36.042488, 26.630713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883183, 36.140358, 26.632605>,  <36.517967, 36.303478, 26.635759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883183, 36.140358, 26.632605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226122, 0.522181, -0.822311,
		0.339454, 0.749019, 0.568983,
		0.913039, -0.407797, -0.007887,
		37.157093, 36.018021, 26.630239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943039, 36.897770, 26.500820>,  <36.517967, 36.303478, 26.635759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943039, 36.897770, 26.500820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.180767, 36.580570, 26.447260>,  <37.323402, 36.390251, 26.415123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.180767, 36.580570, 26.447260>,  <36.943039, 36.897770, 26.500820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180767, 36.580570, 26.447260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325606, 0.389502, -0.861550,
		0.735366, 0.468439, 0.489696,
		0.594321, -0.793003, -0.133900,
		37.359062, 36.342670, 26.407089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633335, 37.160591, 26.397474>,  <36.943039, 36.897770, 26.500820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633335, 37.160591, 26.397474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664505, 36.806427, 26.214184>,  <37.683205, 36.593929, 26.104210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664505, 36.806427, 26.214184>,  <37.633335, 37.160591, 26.397474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664505, 36.806427, 26.214184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359014, 0.453709, -0.815633,
		0.930074, -0.100955, 0.353230,
		0.077921, -0.885413, -0.458227,
		37.687881, 36.540802, 26.076715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316780, 37.105530, 26.234829>,  <37.633335, 37.160591, 26.397474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316780, 37.105530, 26.234829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120480, 36.859081, 25.988394>,  <38.002701, 36.711212, 25.840532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120480, 36.859081, 25.988394>,  <38.316780, 37.105530, 26.234829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120480, 36.859081, 25.988394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464161, 0.413535, -0.783290,
		0.737372, -0.670364, 0.083034,
		-0.490752, -0.616117, -0.616086,
		37.973255, 36.674248, 25.803568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845585, 36.771767, 25.801594>,  <38.316780, 37.105530, 26.234829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845585, 36.771767, 25.801594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503384, 36.740059, 25.596918>,  <38.298061, 36.721035, 25.474112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503384, 36.740059, 25.596918>,  <38.845585, 36.771767, 25.801594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503384, 36.740059, 25.596918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393570, 0.542614, -0.742073,
		0.336471, -0.836234, -0.433013,
		-0.855506, -0.079265, -0.511690,
		38.246731, 36.716278, 25.443411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100060, 36.793282, 25.088800>,  <38.845585, 36.771767, 25.801594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100060, 36.793282, 25.088800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706131, 36.861008, 25.104088>,  <38.469772, 36.901646, 25.113260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706131, 36.861008, 25.104088>,  <39.100060, 36.793282, 25.088800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706131, 36.861008, 25.104088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052445, 0.500143, -0.864353,
		-0.165467, -0.849228, -0.501430,
		-0.984820, 0.169319, 0.038219,
		38.410686, 36.911804, 25.115553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803028, 36.680233, 24.320320>,  <39.100060, 36.793282, 25.088800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803028, 36.680233, 24.320320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507294, 36.885784, 24.494362>,  <38.329853, 37.009117, 24.598787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507294, 36.885784, 24.494362>,  <38.803028, 36.680233, 24.320320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507294, 36.885784, 24.494362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154542, 0.499435, -0.852456,
		-0.655367, -0.697489, -0.289832,
		-0.739331, 0.513881, 0.435105,
		38.285496, 37.039948, 24.624893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169010, 36.645542, 23.838945>,  <38.803028, 36.680233, 24.320320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169010, 36.645542, 23.838945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.130283, 36.958031, 24.085625>,  <38.107048, 37.145523, 24.233631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.130283, 36.958031, 24.085625>,  <38.169010, 36.645542, 23.838945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130283, 36.958031, 24.085625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145280, 0.601879, -0.785261,
		-0.984642, -0.165620, 0.055224,
		-0.096817, 0.781224, 0.616697,
		38.101238, 37.192398, 24.270634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573616, 36.978920, 23.519506>,  <38.169010, 36.645542, 23.838945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573616, 36.978920, 23.519506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794086, 37.229725, 23.739708>,  <37.926369, 37.380207, 23.871830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794086, 37.229725, 23.739708>,  <37.573616, 36.978920, 23.519506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794086, 37.229725, 23.739708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031122, 0.643862, -0.764509,
		-0.833808, 0.438512, 0.335368,
		0.551177, 0.627016, 0.550504,
		37.959438, 37.417831, 23.904860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284584, 37.708996, 23.415110>,  <37.573616, 36.978920, 23.519506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284584, 37.708996, 23.415110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671032, 37.694893, 23.517372>,  <37.902901, 37.686432, 23.578730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671032, 37.694893, 23.517372>,  <37.284584, 37.708996, 23.415110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671032, 37.694893, 23.517372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241006, 0.477562, -0.844897,
		-0.092303, 0.877890, 0.469882,
		0.966124, -0.035257, 0.255657,
		37.960869, 37.684315, 23.594069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635700, 38.402882, 23.415445>,  <37.284584, 37.708996, 23.415110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635700, 38.402882, 23.415445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885139, 38.097668, 23.347439>,  <38.034801, 37.914539, 23.306635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885139, 38.097668, 23.347439>,  <37.635700, 38.402882, 23.415445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885139, 38.097668, 23.347439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318941, 0.446886, -0.835805,
		0.713725, 0.466981, 0.522040,
		0.623597, -0.763035, -0.170015,
		38.072220, 37.868755, 23.296434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279572, 38.724644, 23.305281>,  <37.635700, 38.402882, 23.415445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279572, 38.724644, 23.305281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.281075, 38.363945, 23.132383>,  <38.281975, 38.147526, 23.028645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.281075, 38.363945, 23.132383>,  <38.279572, 38.724644, 23.305281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281075, 38.363945, 23.132383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388050, 0.399686, -0.830463,
		0.921631, -0.164614, 0.351424,
		0.003754, -0.901750, -0.432241,
		38.282200, 38.093418, 23.002710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748135, 38.806232, 22.778894>,  <38.279572, 38.724644, 23.305281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748135, 38.806232, 22.778894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.587704, 38.464226, 22.647387>,  <38.491447, 38.259022, 22.568481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.587704, 38.464226, 22.647387>,  <38.748135, 38.806232, 22.778894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587704, 38.464226, 22.647387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127159, 0.303462, -0.944320,
		0.907177, -0.420549, -0.012988,
		-0.401075, -0.855014, -0.328771,
		38.467381, 38.207722, 22.548756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185192, 38.499718, 22.284859>,  <38.748135, 38.806232, 22.778894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185192, 38.499718, 22.284859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.833931, 38.333271, 22.190453>,  <38.623177, 38.233402, 22.133808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.833931, 38.333271, 22.190453>,  <39.185192, 38.499718, 22.284859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833931, 38.333271, 22.190453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140649, 0.246982, -0.958758,
		0.457245, -0.875128, -0.158361,
		-0.878148, -0.416114, -0.236017,
		38.570488, 38.208435, 22.119648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829201, 37.985809, 22.084721>,  <39.185192, 38.499718, 22.284859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829201, 37.985809, 22.084721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.151852, 38.180752, 22.218493>,  <40.345440, 38.297718, 22.298756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.151852, 38.180752, 22.218493>,  <39.829201, 37.985809, 22.084721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151852, 38.180752, 22.218493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041528, -0.517682, 0.854565,
		0.589606, -0.703200, -0.397335,
		0.806622, 0.487356, 0.334431,
		40.393837, 38.326958, 22.318821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300079, 37.537338, 22.434586>,  <39.829201, 37.985809, 22.084721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300079, 37.537338, 22.434586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443069, 37.878025, 22.587835>,  <40.528862, 38.082439, 22.679785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443069, 37.878025, 22.587835>,  <40.300079, 37.537338, 22.434586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443069, 37.878025, 22.587835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208939, -0.472770, 0.856057,
		0.910250, -0.225970, -0.346962,
		0.357477, 0.851719, 0.383125,
		40.550312, 38.133541, 22.702772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998692, 37.438892, 22.686052>,  <40.300079, 37.537338, 22.434586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998692, 37.438892, 22.686052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.848457, 37.754162, 22.881077>,  <40.758316, 37.943325, 22.998091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.848457, 37.754162, 22.881077>,  <40.998692, 37.438892, 22.686052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848457, 37.754162, 22.881077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410831, -0.329974, 0.849903,
		0.830756, 0.519514, -0.199875,
		-0.375583, 0.788176, 0.487561,
		40.735783, 37.990616, 23.027346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532101, 37.618797, 23.129677>,  <40.998692, 37.438892, 22.686052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532101, 37.618797, 23.129677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.183735, 37.767803, 23.257893>,  <40.974716, 37.857204, 23.334822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.183735, 37.767803, 23.257893>,  <41.532101, 37.618797, 23.129677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183735, 37.767803, 23.257893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276563, -0.167646, 0.946260,
		0.406229, 0.912760, 0.042982,
		-0.870914, 0.372511, 0.320538,
		40.922462, 37.879555, 23.354053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670181, 37.901112, 23.758644>,  <41.532101, 37.618797, 23.129677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670181, 37.901112, 23.758644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272491, 37.867168, 23.784927>,  <41.033878, 37.846802, 23.800697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272491, 37.867168, 23.784927>,  <41.670181, 37.901112, 23.758644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272491, 37.867168, 23.784927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076281, -0.128042, 0.988831,
		-0.075496, 0.988132, 0.133775,
		-0.994224, -0.084857, 0.065709,
		40.974224, 37.841713, 23.804640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585434, 38.292740, 24.339554>,  <41.670181, 37.901112, 23.758644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585434, 38.292740, 24.339554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.277805, 38.043396, 24.283052>,  <41.093227, 37.893791, 24.249151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.277805, 38.043396, 24.283052>,  <41.585434, 38.292740, 24.339554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277805, 38.043396, 24.283052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035813, -0.262680, 0.964218,
		-0.638155, 0.736497, 0.224345,
		-0.769074, -0.623355, -0.141255,
		41.047085, 37.856388, 24.240677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376526, 38.254791, 24.958824>,  <41.585434, 38.292740, 24.339554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376526, 38.254791, 24.958824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.154140, 37.958885, 24.807217>,  <41.020710, 37.781342, 24.716253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.154140, 37.958885, 24.807217>,  <41.376526, 38.254791, 24.958824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154140, 37.958885, 24.807217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119507, -0.380107, 0.917190,
		-0.822570, 0.555220, 0.122918,
		-0.555964, -0.739763, -0.379017,
		40.987350, 37.736958, 24.693512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804195, 38.219147, 25.316519>,  <41.376526, 38.254791, 24.958824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804195, 38.219147, 25.316519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811970, 37.851307, 25.159569>,  <40.816635, 37.630604, 25.065399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811970, 37.851307, 25.159569>,  <40.804195, 38.219147, 25.316519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811970, 37.851307, 25.159569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200587, -0.388055, 0.899543,
		-0.979483, 0.061222, -0.192002,
		0.019436, -0.919600, -0.392374,
		40.817802, 37.575428, 25.041857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246780, 37.906372, 25.488338>,  <40.804195, 38.219147, 25.316519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246780, 37.906372, 25.488338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.490158, 37.598900, 25.409428>,  <40.636185, 37.414417, 25.362082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.490158, 37.598900, 25.409428>,  <40.246780, 37.906372, 25.488338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490158, 37.598900, 25.409428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211289, -0.396528, 0.893377,
		-0.764950, -0.501890, -0.403681,
		0.608448, -0.768682, -0.197280,
		40.672691, 37.368294, 25.350245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883987, 37.377628, 25.570021>,  <40.246780, 37.906372, 25.488338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883987, 37.377628, 25.570021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.257614, 37.248226, 25.630508>,  <40.481789, 37.170586, 25.666801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.257614, 37.248226, 25.630508>,  <39.883987, 37.377628, 25.570021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257614, 37.248226, 25.630508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301288, -0.486596, 0.820030,
		-0.191705, -0.811520, -0.551982,
		0.934063, -0.323509, 0.151219,
		40.537834, 37.151173, 25.675875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788059, 36.670330, 25.733982>,  <39.883987, 37.377628, 25.570021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788059, 36.670330, 25.733982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.155445, 36.748566, 25.871481>,  <40.375877, 36.795509, 25.953979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.155445, 36.748566, 25.871481>,  <39.788059, 36.670330, 25.733982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155445, 36.748566, 25.871481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189238, -0.545861, 0.816226,
		0.347285, -0.814727, -0.464342,
		0.918467, 0.195592, 0.343746,
		40.430984, 36.807243, 25.974606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002510, 35.950935, 26.089655>,  <39.788059, 36.670330, 25.733982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002510, 35.950935, 26.089655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.273731, 36.209759, 26.229115>,  <40.436462, 36.365055, 26.312790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.273731, 36.209759, 26.229115>,  <40.002510, 35.950935, 26.089655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273731, 36.209759, 26.229115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069855, -0.415467, 0.906922,
		0.731688, -0.639294, -0.236507,
		0.678051, 0.647062, 0.348650,
		40.477146, 36.403877, 26.333710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298584, 35.478382, 26.480129>,  <40.002510, 35.950935, 26.089655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298584, 35.478382, 26.480129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416527, 35.836781, 26.612947>,  <40.487293, 36.051819, 26.692638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416527, 35.836781, 26.612947>,  <40.298584, 35.478382, 26.480129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416527, 35.836781, 26.612947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051393, -0.332122, 0.941835,
		0.954158, -0.294773, -0.051881,
		0.294859, 0.895993, 0.332046,
		40.504986, 36.105579, 26.712561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932720, 35.393879, 26.937578>,  <40.298584, 35.478382, 26.480129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932720, 35.393879, 26.937578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.761124, 35.740513, 27.039560>,  <40.658165, 35.948494, 27.100750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.761124, 35.740513, 27.039560>,  <40.932720, 35.393879, 26.937578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761124, 35.740513, 27.039560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081719, -0.243855, 0.966362,
		0.899607, 0.435391, 0.033794,
		-0.428987, 0.866585, 0.254954,
		40.632427, 36.000488, 27.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.299110, 41.565819, 25.003735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952393, 41.372307, 24.955360>,  <40.744362, 41.256199, 24.926336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952393, 41.372307, 24.955360>,  <41.299110, 41.565819, 25.003735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952393, 41.372307, 24.955360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099898, 0.069141, -0.992593,
		0.488555, -0.872456, -0.011602,
		-0.866796, -0.483777, -0.120935,
		40.692352, 41.227173, 24.919081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437893, 40.969486, 24.637070>,  <41.299110, 41.565819, 25.003735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437893, 40.969486, 24.637070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.050045, 41.046368, 24.576546>,  <40.817337, 41.092495, 24.540232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.050045, 41.046368, 24.576546>,  <41.437893, 40.969486, 24.637070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050045, 41.046368, 24.576546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169872, 0.083978, -0.981882,
		-0.176016, -0.977755, -0.114077,
		-0.969620, 0.192205, -0.151311,
		40.759159, 41.104031, 24.531153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330067, 40.633404, 24.001575>,  <41.437893, 40.969486, 24.637070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330067, 40.633404, 24.001575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.072632, 40.930611, 24.075026>,  <40.918171, 41.108936, 24.119095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.072632, 40.930611, 24.075026>,  <41.330067, 40.633404, 24.001575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072632, 40.930611, 24.075026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028794, 0.263250, -0.964298,
		-0.764831, -0.615322, -0.190819,
		-0.643587, 0.743020, 0.183625,
		40.879555, 41.153515, 24.130114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930099, 40.628971, 23.443632>,  <41.330067, 40.633404, 24.001575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930099, 40.628971, 23.443632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.855682, 40.993042, 23.591671>,  <40.811031, 41.211483, 23.680494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.855682, 40.993042, 23.591671>,  <40.930099, 40.628971, 23.443632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855682, 40.993042, 23.591671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132394, 0.396459, -0.908456,
		-0.973582, -0.120010, -0.194259,
		-0.186039, 0.910175, 0.370097,
		40.799870, 41.266094, 23.702700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426674, 40.940708, 22.952669>,  <40.930099, 40.628971, 23.443632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426674, 40.940708, 22.952669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595085, 41.238815, 23.159477>,  <40.696133, 41.417679, 23.283562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595085, 41.238815, 23.159477>,  <40.426674, 40.940708, 22.952669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595085, 41.238815, 23.159477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137999, 0.510739, -0.848588,
		-0.896489, 0.428628, 0.112189,
		0.421028, 0.745268, 0.517022,
		40.721394, 41.462395, 23.314583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951881, 41.538784, 22.703112>,  <40.426674, 40.940708, 22.952669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951881, 41.538784, 22.703112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284363, 41.698994, 22.857349>,  <40.483852, 41.795120, 22.949892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284363, 41.698994, 22.857349>,  <39.951881, 41.538784, 22.703112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284363, 41.698994, 22.857349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135795, 0.526290, -0.839392,
		-0.539135, 0.750064, 0.383063,
		0.831200, 0.400528, 0.385596,
		40.533722, 41.819153, 22.973028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836147, 42.278633, 22.724073>,  <39.951881, 41.538784, 22.703112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836147, 42.278633, 22.724073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228844, 42.202709, 22.729143>,  <40.464462, 42.157154, 22.732185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228844, 42.202709, 22.729143>,  <39.836147, 42.278633, 22.724073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228844, 42.202709, 22.729143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102774, 0.473139, -0.874973,
		0.160086, 0.860297, 0.484007,
		0.981738, -0.189814, 0.012673,
		40.523365, 42.145763, 22.732944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047077, 42.858887, 22.555498>,  <39.836147, 42.278633, 22.724073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047077, 42.858887, 22.555498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.343052, 42.605732, 22.464333>,  <40.520638, 42.453838, 22.409634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.343052, 42.605732, 22.464333>,  <40.047077, 42.858887, 22.555498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343052, 42.605732, 22.464333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160873, 0.495479, -0.853593,
		0.653157, 0.594939, 0.468438,
		0.739937, -0.632889, -0.227916,
		40.565033, 42.415867, 22.395958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459686, 43.342426, 22.258566>,  <40.047077, 42.858887, 22.555498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459686, 43.342426, 22.258566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.616276, 42.988403, 22.157831>,  <40.710228, 42.775990, 22.097391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.616276, 42.988403, 22.157831>,  <40.459686, 43.342426, 22.258566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616276, 42.988403, 22.157831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094255, 0.310808, -0.945788,
		0.915349, 0.346515, 0.205095,
		0.391474, -0.885057, -0.251837,
		40.733719, 42.722885, 22.082279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985973, 43.466991, 21.855724>,  <40.459686, 43.342426, 22.258566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985973, 43.466991, 21.855724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.903423, 43.087368, 21.760487>,  <40.853893, 42.859592, 21.703344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.903423, 43.087368, 21.760487>,  <40.985973, 43.466991, 21.855724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903423, 43.087368, 21.760487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076841, 0.258301, -0.963004,
		0.975451, -0.180444, -0.126233,
		-0.206374, -0.949063, -0.238095,
		40.841511, 42.802650, 21.689058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450893, 43.279301, 21.224937>,  <40.985973, 43.466991, 21.855724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450893, 43.279301, 21.224937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156582, 43.008472, 21.230762>,  <40.979996, 42.845978, 21.234259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156582, 43.008472, 21.230762>,  <41.450893, 43.279301, 21.224937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156582, 43.008472, 21.230762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176395, 0.170838, -0.969381,
		0.653849, -0.715816, -0.245130,
		-0.735776, -0.677068, 0.014564,
		40.935848, 42.805351, 21.235132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600109, 42.884708, 20.612015>,  <41.450893, 43.279301, 21.224937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600109, 42.884708, 20.612015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.218510, 42.799911, 20.696814>,  <40.989552, 42.749031, 20.747694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.218510, 42.799911, 20.696814>,  <41.600109, 42.884708, 20.612015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218510, 42.799911, 20.696814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240022, 0.116337, -0.963771,
		0.179653, -0.970321, -0.161869,
		-0.953999, -0.211996, 0.211998,
		40.932308, 42.736313, 20.760414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297081, 42.355297, 20.152227>,  <41.600109, 42.884708, 20.612015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297081, 42.355297, 20.152227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.990005, 42.570011, 20.292236>,  <40.805759, 42.698841, 20.376242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.990005, 42.570011, 20.292236>,  <41.297081, 42.355297, 20.152227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990005, 42.570011, 20.292236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383963, 0.052006, -0.921883,
		-0.513058, -0.842114, 0.166181,
		-0.767687, 0.536787, 0.350023,
		40.759701, 42.731049, 20.397243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664700, 42.103374, 19.766699>,  <41.297081, 42.355297, 20.152227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664700, 42.103374, 19.766699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568806, 42.464043, 19.910658>,  <40.511269, 42.680443, 19.997034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568806, 42.464043, 19.910658>,  <40.664700, 42.103374, 19.766699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568806, 42.464043, 19.910658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650230, 0.126155, -0.749190,
		-0.720922, -0.413621, 0.556047,
		-0.239732, 0.901667, 0.359897,
		40.496887, 42.734543, 20.018627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137665, 42.115219, 19.186598>,  <40.664700, 42.103374, 19.766699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137665, 42.115219, 19.186598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.103241, 41.930958, 18.833239>,  <41.082588, 41.820400, 18.621223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.103241, 41.930958, 18.833239>,  <41.137665, 42.115219, 19.186598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103241, 41.930958, 18.833239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082336, -0.886944, 0.454479,
		-0.992882, -0.033624, 0.114258,
		-0.086059, -0.460652, -0.883399,
		41.077423, 41.792763, 18.568218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688038, 41.584713, 19.206459>,  <41.137665, 42.115219, 19.186598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688038, 41.584713, 19.206459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.939129, 41.491848, 18.909256>,  <41.089783, 41.436127, 18.730934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.939129, 41.491848, 18.909256>,  <40.688038, 41.584713, 19.206459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939129, 41.491848, 18.909256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160767, -0.895247, 0.415557,
		-0.761652, -0.380307, -0.524645,
		0.627726, -0.232164, -0.743008,
		41.127445, 41.422199, 18.686354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279354, 41.165306, 18.903406>,  <40.688038, 41.584713, 19.206459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279354, 41.165306, 18.903406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660385, 41.090679, 18.807253>,  <40.889004, 41.045902, 18.749561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660385, 41.090679, 18.807253>,  <40.279354, 41.165306, 18.903406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660385, 41.090679, 18.807253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027769, -0.733388, 0.679243,
		-0.303019, -0.653708, -0.693430,
		0.952580, -0.186568, -0.240384,
		40.946159, 41.034710, 18.735138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366936, 40.467888, 18.694765>,  <40.279354, 41.165306, 18.903406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366936, 40.467888, 18.694765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.726997, 40.581909, 18.826509>,  <40.943035, 40.650322, 18.905556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.726997, 40.581909, 18.826509>,  <40.366936, 40.467888, 18.694765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726997, 40.581909, 18.826509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070606, -0.841625, 0.535427,
		0.429821, -0.458710, -0.777714,
		0.900149, 0.285049, 0.329360,
		40.997044, 40.667423, 18.925318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759598, 39.876106, 18.616604>,  <40.366936, 40.467888, 18.694765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759598, 39.876106, 18.616604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961842, 40.106548, 18.873497>,  <41.083187, 40.244812, 19.027634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961842, 40.106548, 18.873497>,  <40.759598, 39.876106, 18.616604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961842, 40.106548, 18.873497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245774, -0.809726, 0.532859,
		0.827014, -0.111576, -0.550998,
		0.505611, 0.576103, 0.642232,
		41.113525, 40.279381, 19.066166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257629, 39.458057, 18.788031>,  <40.759598, 39.876106, 18.616604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257629, 39.458057, 18.788031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.297604, 39.734268, 19.074577>,  <41.321590, 39.899994, 19.246506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.297604, 39.734268, 19.074577>,  <41.257629, 39.458057, 18.788031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297604, 39.734268, 19.074577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344894, -0.699378, 0.626034,
		0.933306, 0.184506, -0.308054,
		0.099939, 0.690528, 0.716369,
		41.327587, 39.941425, 19.289488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961582, 39.273182, 19.130491>,  <41.257629, 39.458057, 18.788031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961582, 39.273182, 19.130491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.740433, 39.489101, 19.384405>,  <41.607742, 39.618652, 19.536755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.740433, 39.489101, 19.384405>,  <41.961582, 39.273182, 19.130491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740433, 39.489101, 19.384405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156293, -0.681105, 0.715310,
		0.818479, 0.494685, 0.292195,
		-0.552869, 0.539798, 0.634786,
		41.574574, 39.651039, 19.574841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299633, 39.137192, 19.857845>,  <41.961582, 39.273182, 19.130491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299633, 39.137192, 19.857845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.931343, 39.279442, 19.922098>,  <41.710369, 39.364792, 19.960649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.931343, 39.279442, 19.922098>,  <42.299633, 39.137192, 19.857845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931343, 39.279442, 19.922098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063483, -0.542666, 0.837546,
		0.385020, 0.760950, 0.522221,
		-0.920722, 0.355624, 0.160631,
		41.655125, 39.386127, 19.970287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263176, 39.266903, 20.630041>,  <42.299633, 39.137192, 19.857845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263176, 39.266903, 20.630041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.877205, 39.289902, 20.527578>,  <41.645622, 39.303703, 20.466101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.877205, 39.289902, 20.527578>,  <42.263176, 39.266903, 20.630041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877205, 39.289902, 20.527578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257316, -0.400693, 0.879337,
		-0.052079, 0.914406, 0.401433,
		-0.964923, 0.057500, -0.256159,
		41.587727, 39.307152, 20.450731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838203, 39.646561, 21.044006>,  <42.263176, 39.266903, 20.630041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838203, 39.646561, 21.044006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.545612, 39.418522, 20.894379>,  <41.370060, 39.281696, 20.804602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.545612, 39.418522, 20.894379>,  <41.838203, 39.646561, 21.044006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545612, 39.418522, 20.894379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284446, -0.243459, 0.927264,
		-0.619705, 0.784673, 0.015921,
		-0.731475, -0.570101, -0.374070,
		41.326168, 39.247490, 20.782158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241459, 39.837509, 21.412256>,  <41.838203, 39.646561, 21.044006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241459, 39.837509, 21.412256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.179775, 39.470123, 21.266581>,  <41.142765, 39.249691, 21.179176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.179775, 39.470123, 21.266581>,  <41.241459, 39.837509, 21.412256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179775, 39.470123, 21.266581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526658, -0.235454, 0.816819,
		-0.835972, 0.317767, -0.447408,
		-0.154214, -0.918469, -0.364187,
		41.133511, 39.194584, 21.157324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470982, 39.803032, 21.646212>,  <41.241459, 39.837509, 21.412256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470982, 39.803032, 21.646212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.638447, 39.456825, 21.536236>,  <40.738926, 39.249100, 21.470249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.638447, 39.456825, 21.536236>,  <40.470982, 39.803032, 21.646212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638447, 39.456825, 21.536236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343182, -0.431091, 0.834498,
		-0.840800, -0.255022, -0.477514,
		0.418667, -0.865520, -0.274942,
		40.764046, 39.197170, 21.453753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039635, 39.267258, 21.716833>,  <40.470982, 39.803032, 21.646212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039635, 39.267258, 21.716833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384094, 39.063984, 21.711662>,  <40.590771, 38.942020, 21.708559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384094, 39.063984, 21.711662>,  <40.039635, 39.267258, 21.716833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384094, 39.063984, 21.711662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299156, -0.527165, 0.795363,
		-0.411007, -0.681060, -0.605995,
		0.861149, -0.508187, -0.012926,
		40.642441, 38.911526, 21.707785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769135, 38.621136, 21.767578>,  <40.039635, 39.267258, 21.716833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769135, 38.621136, 21.767578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150616, 38.619217, 21.887863>,  <40.379505, 38.618065, 21.960033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150616, 38.619217, 21.887863>,  <39.769135, 38.621136, 21.767578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150616, 38.619217, 21.887863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268775, -0.462250, 0.845035,
		0.134947, -0.886737, -0.442140,
		0.953703, -0.004801, 0.300712,
		40.436726, 38.617775, 21.978077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259567, 38.079491, 21.669992>,  <39.769135, 38.621136, 21.767578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259567, 38.079491, 21.669992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.867451, 38.157978, 21.679251>,  <38.632183, 38.205070, 21.684807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.867451, 38.157978, 21.679251>,  <39.259567, 38.079491, 21.669992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867451, 38.157978, 21.679251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025182, 0.240283, -0.970376,
		-0.195964, -0.950665, -0.240487,
		-0.980287, 0.196215, 0.023147,
		38.573364, 38.216843, 21.686195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949333, 37.860138, 21.018427>,  <39.259567, 38.079491, 21.669992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949333, 37.860138, 21.018427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681477, 38.126209, 21.150555>,  <38.520763, 38.285854, 21.229832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681477, 38.126209, 21.150555>,  <38.949333, 37.860138, 21.018427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681477, 38.126209, 21.150555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049097, 0.404142, -0.913378,
		-0.741057, -0.627856, -0.237974,
		-0.669645, 0.665181, 0.330318,
		38.480583, 38.325764, 21.249651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455677, 37.796432, 20.568016>,  <38.949333, 37.860138, 21.018427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455677, 37.796432, 20.568016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.382919, 38.141327, 20.757099>,  <38.339264, 38.348263, 20.870550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.382919, 38.141327, 20.757099>,  <38.455677, 37.796432, 20.568016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382919, 38.141327, 20.757099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146760, 0.451540, -0.880099,
		-0.972304, -0.229462, 0.044408,
		-0.181897, 0.862241, 0.472710,
		38.328350, 38.399998, 20.898912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748230, 38.024704, 20.377985>,  <38.455677, 37.796432, 20.568016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748230, 38.024704, 20.377985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.947121, 38.358540, 20.472830>,  <38.066456, 38.558842, 20.529737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.947121, 38.358540, 20.472830>,  <37.748230, 38.024704, 20.377985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947121, 38.358540, 20.472830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188441, 0.370647, -0.909456,
		-0.846911, 0.407522, 0.341566,
		0.497224, 0.834594, 0.237112,
		38.096287, 38.608917, 20.543962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339706, 38.563740, 20.085428>,  <37.748230, 38.024704, 20.377985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339706, 38.563740, 20.085428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.690609, 38.744614, 20.149858>,  <37.901150, 38.853138, 20.188517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.690609, 38.744614, 20.149858>,  <37.339706, 38.563740, 20.085428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690609, 38.744614, 20.149858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083183, 0.473697, -0.876751,
		-0.472752, 0.755740, 0.453169,
		0.877261, 0.452181, 0.161076,
		37.953789, 38.880268, 20.198181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131866, 39.283783, 19.968973>,  <37.339706, 38.563740, 20.085428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131866, 39.283783, 19.968973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531441, 39.269264, 19.957535>,  <37.771183, 39.260551, 19.950672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531441, 39.269264, 19.957535>,  <37.131866, 39.283783, 19.968973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531441, 39.269264, 19.957535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004389, 0.541507, -0.840685,
		0.046004, 0.839912, 0.540769,
		0.998932, -0.036301, -0.028598,
		37.831120, 39.258373, 19.948956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349503, 39.966675, 19.907385>,  <37.131866, 39.283783, 19.968973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349503, 39.966675, 19.907385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629375, 39.722256, 19.759293>,  <37.797298, 39.575603, 19.670437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629375, 39.722256, 19.759293>,  <37.349503, 39.966675, 19.907385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629375, 39.722256, 19.759293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054442, 0.562290, -0.825146,
		0.712380, 0.557181, 0.426689,
		0.699679, -0.611047, -0.370230,
		37.839279, 39.538940, 19.648224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626667, 40.521015, 20.475382>,  <37.349503, 39.966675, 19.907385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626667, 40.521015, 20.475382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.260067, 40.679901, 20.456427>,  <37.040108, 40.775230, 20.445053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.260067, 40.679901, 20.456427>,  <37.626667, 40.521015, 20.475382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260067, 40.679901, 20.456427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355654, -0.754869, 0.551074,
		0.183122, 0.521915, 0.833109,
		-0.916502, 0.397212, -0.047387,
		36.985115, 40.799065, 20.442211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365158, 40.578938, 21.107588>,  <37.626667, 40.521015, 20.475382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365158, 40.578938, 21.107588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.038197, 40.570721, 20.877310>,  <36.842018, 40.565788, 20.739143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.038197, 40.570721, 20.877310>,  <37.365158, 40.578938, 21.107588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038197, 40.570721, 20.877310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405093, -0.690026, 0.599803,
		-0.409568, 0.723493, 0.555708,
		-0.817406, -0.020547, -0.575695,
		36.792976, 40.564556, 20.704601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830658, 40.654251, 21.502462>,  <37.365158, 40.578938, 21.107588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830658, 40.654251, 21.502462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642120, 40.490978, 21.189739>,  <36.528999, 40.393017, 21.002106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642120, 40.490978, 21.189739>,  <36.830658, 40.654251, 21.502462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642120, 40.490978, 21.189739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528798, -0.578650, 0.620916,
		-0.705838, 0.706085, 0.056900,
		-0.471344, -0.408178, -0.781809,
		36.500717, 40.368526, 20.955196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099270, 40.609116, 21.682570>,  <36.830658, 40.654251, 21.502462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099270, 40.609116, 21.682570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.163471, 40.340866, 21.392879>,  <36.201992, 40.179916, 21.219065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.163471, 40.340866, 21.392879>,  <36.099270, 40.609116, 21.682570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163471, 40.340866, 21.392879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655584, -0.620942, 0.429697,
		-0.737868, 0.405826, -0.539311,
		0.160499, -0.670624, -0.724226,
		36.211620, 40.139679, 21.175611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403236, 40.327255, 21.578945>,  <36.099270, 40.609116, 21.682570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403236, 40.327255, 21.578945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667515, 40.061909, 21.438419>,  <35.826084, 39.902702, 21.354103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667515, 40.061909, 21.438419>,  <35.403236, 40.327255, 21.578945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667515, 40.061909, 21.438419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494762, -0.736807, 0.460789,
		-0.564523, -0.130626, -0.815016,
		0.660700, -0.663365, -0.351316,
		35.865726, 39.862900, 21.333025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997360, 39.628716, 21.428984>,  <35.403236, 40.327255, 21.578945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997360, 39.628716, 21.428984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389408, 39.549370, 21.427027>,  <35.624638, 39.501762, 21.425852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389408, 39.549370, 21.427027>,  <34.997360, 39.628716, 21.428984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389408, 39.549370, 21.427027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168850, -0.846746, 0.504492,
		-0.104215, -0.493634, -0.863403,
		0.980117, -0.198362, -0.004893,
		35.683445, 39.489861, 21.425558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951096, 38.980122, 21.284794>,  <34.997360, 39.628716, 21.428984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951096, 38.980122, 21.284794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.304462, 39.062313, 21.453243>,  <35.516483, 39.111629, 21.554314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.304462, 39.062313, 21.453243>,  <34.951096, 38.980122, 21.284794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304462, 39.062313, 21.453243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123913, -0.764288, 0.632859,
		0.451901, -0.611263, -0.649725,
		0.883420, 0.205481, 0.421126,
		35.569489, 39.123959, 21.579580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.105267, 43.394218, 21.061079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.483143, 43.380913, 21.191586>,  <38.709869, 43.372929, 21.269890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.483143, 43.380913, 21.191586>,  <38.105267, 43.394218, 21.061079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483143, 43.380913, 21.191586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327838, -0.122604, 0.936745,
		0.008844, -0.991898, -0.126727,
		0.944693, -0.033261, 0.326267,
		38.766552, 43.370934, 21.289465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951462, 43.158031, 21.720913>,  <38.105267, 43.394218, 21.061079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951462, 43.158031, 21.720913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323803, 43.293839, 21.774946>,  <38.547207, 43.375320, 21.807367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323803, 43.293839, 21.774946>,  <37.951462, 43.158031, 21.720913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323803, 43.293839, 21.774946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083408, -0.162503, 0.983176,
		0.355753, -0.926458, -0.122948,
		0.930851, 0.339513, 0.135085,
		38.603058, 43.395691, 21.815472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352341, 42.612801, 22.082529>,  <37.951462, 43.158031, 21.720913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352341, 42.612801, 22.082529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549728, 42.954552, 22.147690>,  <38.668159, 43.159603, 22.186787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549728, 42.954552, 22.147690>,  <38.352341, 42.612801, 22.082529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549728, 42.954552, 22.147690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108443, -0.246271, 0.963115,
		0.862978, -0.457599, -0.214177,
		0.493466, 0.854374, 0.162903,
		38.697769, 43.210865, 22.196560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819538, 42.393383, 22.482962>,  <38.352341, 42.612801, 22.082529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819538, 42.393383, 22.482962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.834122, 42.784821, 22.563972>,  <38.842873, 43.019684, 22.612579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.834122, 42.784821, 22.563972>,  <38.819538, 42.393383, 22.482962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834122, 42.784821, 22.563972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045609, -0.200823, 0.978565,
		0.998294, -0.044914, 0.037311,
		0.036458, 0.978597, 0.202529,
		38.845058, 43.078400, 22.624731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222244, 42.543186, 23.175087>,  <38.819538, 42.393383, 22.482962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222244, 42.543186, 23.175087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982990, 42.859375, 23.122345>,  <38.839436, 43.049088, 23.090700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982990, 42.859375, 23.122345>,  <39.222244, 42.543186, 23.175087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982990, 42.859375, 23.122345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398069, -0.150258, 0.904966,
		0.695537, 0.593783, 0.404537,
		-0.598138, 0.790471, -0.131856,
		38.803547, 43.096516, 23.082788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256977, 42.870308, 23.782602>,  <39.222244, 42.543186, 23.175087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256977, 42.870308, 23.782602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.921551, 43.033882, 23.638617>,  <38.720295, 43.132027, 23.552225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.921551, 43.033882, 23.638617>,  <39.256977, 42.870308, 23.782602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921551, 43.033882, 23.638617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380124, 0.034137, 0.924305,
		0.390273, 0.911922, 0.126822,
		-0.838566, 0.408940, -0.359966,
		38.669983, 43.156563, 23.530626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093117, 43.411152, 24.319807>,  <39.256977, 42.870308, 23.782602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093117, 43.411152, 24.319807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750954, 43.407215, 24.112661>,  <38.545654, 43.404854, 23.988375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750954, 43.407215, 24.112661>,  <39.093117, 43.411152, 24.319807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750954, 43.407215, 24.112661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514201, 0.136295, 0.846771,
		0.062247, 0.990619, -0.121649,
		-0.855408, -0.009844, -0.517862,
		38.494331, 43.404263, 23.957302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691460, 44.017071, 24.449757>,  <39.093117, 43.411152, 24.319807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691460, 44.017071, 24.449757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.444542, 43.725216, 24.332060>,  <38.296391, 43.550102, 24.261442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.444542, 43.725216, 24.332060>,  <38.691460, 44.017071, 24.449757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444542, 43.725216, 24.332060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505401, 0.081154, 0.859060,
		-0.602922, 0.679004, -0.418854,
		-0.617297, -0.729635, -0.294240,
		38.259354, 43.506325, 24.243788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065403, 44.250378, 24.623432>,  <38.691460, 44.017071, 24.449757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065403, 44.250378, 24.623432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.993984, 43.857468, 24.600580>,  <37.951134, 43.621723, 24.586870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.993984, 43.857468, 24.600580>,  <38.065403, 44.250378, 24.623432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993984, 43.857468, 24.600580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554091, 0.052399, 0.830805,
		-0.813083, 0.179993, -0.553624,
		-0.178549, -0.982271, -0.057128,
		37.940418, 43.562786, 24.583443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327084, 44.175735, 24.859631>,  <38.065403, 44.250378, 24.623432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327084, 44.175735, 24.859631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.492023, 43.812088, 24.883171>,  <37.590988, 43.593899, 24.897295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.492023, 43.812088, 24.883171>,  <37.327084, 44.175735, 24.859631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492023, 43.812088, 24.883171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404189, -0.124669, 0.906140,
		-0.816454, -0.397437, -0.418864,
		0.412353, -0.909121, 0.058853,
		37.615730, 43.539352, 24.900827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842827, 43.835281, 25.188490>,  <37.327084, 44.175735, 24.859631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842827, 43.835281, 25.188490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.167912, 43.608349, 25.241613>,  <37.362961, 43.472191, 25.273487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.167912, 43.608349, 25.241613>,  <36.842827, 43.835281, 25.188490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167912, 43.608349, 25.241613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365798, -0.319368, 0.874183,
		-0.453538, -0.759037, -0.467082,
		0.812709, -0.567333, 0.132809,
		37.411724, 43.438148, 25.281456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638153, 43.164860, 25.267107>,  <36.842827, 43.835281, 25.188490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638153, 43.164860, 25.267107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.994106, 43.160057, 25.449518>,  <37.207680, 43.157177, 25.558964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.994106, 43.160057, 25.449518>,  <36.638153, 43.164860, 25.267107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994106, 43.160057, 25.449518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400861, -0.497735, 0.769136,
		0.217749, -0.867246, -0.447739,
		0.889886, -0.012002, 0.456027,
		37.261070, 43.156456, 25.586327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314697, 42.581570, 24.832100>,  <36.638153, 43.164860, 25.267107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314697, 42.581570, 24.832100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.941906, 42.622089, 24.692869>,  <35.718231, 42.646400, 24.609331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.941906, 42.622089, 24.692869>,  <36.314697, 42.581570, 24.832100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941906, 42.622089, 24.692869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352774, 0.474547, -0.806446,
		0.083484, -0.874382, -0.478004,
		-0.931977, 0.101302, -0.348076,
		35.662312, 42.652481, 24.588446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381775, 42.531830, 24.136309>,  <36.314697, 42.581570, 24.832100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381775, 42.531830, 24.136309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.026424, 42.712555, 24.168932>,  <35.813213, 42.820992, 24.188505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.026424, 42.712555, 24.168932>,  <36.381775, 42.531830, 24.136309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026424, 42.712555, 24.168932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143217, 0.441485, -0.885765,
		-0.436210, -0.775211, -0.456912,
		-0.888375, 0.451817, 0.081557,
		35.759911, 42.848099, 24.193399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018169, 42.505432, 23.463812>,  <36.381775, 42.531830, 24.136309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018169, 42.505432, 23.463812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.875584, 42.826134, 23.655697>,  <35.790031, 43.018555, 23.770828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.875584, 42.826134, 23.655697>,  <36.018169, 42.505432, 23.463812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875584, 42.826134, 23.655697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026512, 0.521917, -0.852584,
		-0.933931, -0.291201, -0.207303,
		-0.356468, 0.801751, 0.479714,
		35.768642, 43.066658, 23.799612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625385, 42.782711, 22.969057>,  <36.018169, 42.505432, 23.463812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625385, 42.782711, 22.969057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.656387, 43.076176, 23.239090>,  <35.674988, 43.252254, 23.401110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.656387, 43.076176, 23.239090>,  <35.625385, 42.782711, 22.969057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656387, 43.076176, 23.239090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151322, 0.660618, -0.735313,
		-0.985441, 0.159145, -0.059818,
		0.077504, 0.733660, 0.675082,
		35.679638, 43.296272, 23.441614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160969, 43.269958, 22.868683>,  <35.625385, 42.782711, 22.969057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160969, 43.269958, 22.868683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.431816, 43.478096, 23.076820>,  <35.594322, 43.602978, 23.201704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.431816, 43.478096, 23.076820>,  <35.160969, 43.269958, 22.868683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431816, 43.478096, 23.076820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059840, 0.665832, -0.743698,
		-0.733440, 0.534707, 0.419708,
		0.677115, 0.520342, 0.520345,
		35.634953, 43.634197, 23.232924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943783, 44.000275, 22.809181>,  <35.160969, 43.269958, 22.868683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943783, 44.000275, 22.809181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.331821, 43.987629, 22.905447>,  <35.564644, 43.980042, 22.963207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.331821, 43.987629, 22.905447>,  <34.943783, 44.000275, 22.809181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331821, 43.987629, 22.905447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182558, 0.748470, -0.637546,
		-0.159976, 0.662414, 0.731857,
		0.970093, -0.031615, 0.240667,
		35.622849, 43.978146, 22.977648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210239, 44.682697, 22.863169>,  <34.943783, 44.000275, 22.809181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210239, 44.682697, 22.863169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.547470, 44.472931, 22.815477>,  <35.749809, 44.347073, 22.786863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.547470, 44.472931, 22.815477>,  <35.210239, 44.682697, 22.863169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547470, 44.472931, 22.815477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340412, 0.692000, -0.636596,
		0.416343, 0.496113, 0.761925,
		0.843076, -0.524411, -0.119227,
		35.800392, 44.315609, 22.779709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758102, 45.150036, 22.895296>,  <35.210239, 44.682697, 22.863169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758102, 45.150036, 22.895296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.875492, 44.831062, 22.684406>,  <35.945927, 44.639679, 22.557873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.875492, 44.831062, 22.684406>,  <35.758102, 45.150036, 22.895296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875492, 44.831062, 22.684406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410024, 0.603205, -0.684123,
		0.863569, -0.015400, 0.503996,
		0.293477, -0.797438, -0.527223,
		35.963535, 44.591831, 22.526239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409489, 45.343487, 22.609991>,  <35.758102, 45.150036, 22.895296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409489, 45.343487, 22.609991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.361488, 45.019474, 22.380402>,  <36.332687, 44.825066, 22.242647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.361488, 45.019474, 22.380402>,  <36.409489, 45.343487, 22.609991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361488, 45.019474, 22.380402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451458, 0.470389, -0.758234,
		0.884187, -0.350113, 0.309249,
		-0.120000, -0.810034, -0.573973,
		36.325489, 44.776463, 22.208210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017883, 45.203716, 22.228901>,  <36.409489, 45.343487, 22.609991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017883, 45.203716, 22.228901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.740124, 45.026039, 22.002447>,  <36.573467, 44.919434, 21.866575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.740124, 45.026039, 22.002447>,  <37.017883, 45.203716, 22.228901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740124, 45.026039, 22.002447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478232, 0.302993, -0.824311,
		0.537687, -0.843142, 0.002030,
		-0.694397, -0.444192, -0.566133,
		36.531803, 44.892780, 21.832607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424911, 44.879829, 21.717894>,  <37.017883, 45.203716, 22.228901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424911, 44.879829, 21.717894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052914, 44.900719, 21.572351>,  <36.829716, 44.913250, 21.485027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052914, 44.900719, 21.572351>,  <37.424911, 44.879829, 21.717894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052914, 44.900719, 21.572351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361847, 0.304234, -0.881197,
		0.064679, -0.951165, -0.301831,
		-0.929991, 0.052221, -0.363853,
		36.773918, 44.916386, 21.463196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539917, 44.541599, 21.117861>,  <37.424911, 44.879829, 21.717894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539917, 44.541599, 21.117861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.203468, 44.754990, 21.082260>,  <37.001598, 44.883022, 21.060900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.203468, 44.754990, 21.082260>,  <37.539917, 44.541599, 21.117861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203468, 44.754990, 21.082260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375585, 0.457736, -0.805862,
		-0.389169, -0.711254, -0.585376,
		-0.841120, 0.533475, -0.089000,
		36.951134, 44.915031, 21.055559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440506, 44.521881, 20.448870>,  <37.539917, 44.541599, 21.117861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440506, 44.521881, 20.448870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207745, 44.817841, 20.583891>,  <37.068089, 44.995415, 20.664904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207745, 44.817841, 20.583891>,  <37.440506, 44.521881, 20.448870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207745, 44.817841, 20.583891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299633, 0.580920, -0.756804,
		-0.756046, -0.339246, -0.559737,
		-0.581905, 0.739895, 0.337553,
		37.033173, 45.039810, 20.685156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365070, 44.197720, 19.805546>,  <37.440506, 44.521881, 20.448870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365070, 44.197720, 19.805546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177448, 43.993786, 19.517088>,  <37.064873, 43.871426, 19.344013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177448, 43.993786, 19.517088>,  <37.365070, 44.197720, 19.805546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177448, 43.993786, 19.517088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096462, -0.782087, 0.615659,
		-0.877883, 0.358344, 0.317666,
		-0.469060, -0.509834, -0.721147,
		37.036732, 43.840836, 19.300743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743950, 43.931465, 20.112278>,  <37.365070, 44.197720, 19.805546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743950, 43.931465, 20.112278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.830204, 43.704750, 19.794222>,  <36.881954, 43.568718, 19.603388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.830204, 43.704750, 19.794222>,  <36.743950, 43.931465, 20.112278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830204, 43.704750, 19.794222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004867, -0.814911, 0.579565,
		-0.976462, -0.121104, -0.178480,
		0.215633, -0.566793, -0.795141,
		36.894894, 43.534714, 19.555679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251453, 43.400185, 20.040701>,  <36.743950, 43.931465, 20.112278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251453, 43.400185, 20.040701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583286, 43.260780, 19.866192>,  <36.782387, 43.177135, 19.761486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583286, 43.260780, 19.866192>,  <36.251453, 43.400185, 20.040701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583286, 43.260780, 19.866192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108540, -0.867053, 0.486249,
		-0.547737, -0.356029, -0.757118,
		0.829580, -0.348514, -0.436274,
		36.832161, 43.156227, 19.735310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058113, 42.701641, 19.753660>,  <36.251453, 43.400185, 20.040701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058113, 42.701641, 19.753660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.457970, 42.704712, 19.763895>,  <36.697884, 42.706554, 19.770035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.457970, 42.704712, 19.763895>,  <36.058113, 42.701641, 19.753660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457970, 42.704712, 19.763895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002763, -0.922944, 0.384924,
		0.026570, -0.384857, -0.922593,
		0.999643, 0.007678, 0.025586,
		36.757862, 42.707016, 19.771570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358009, 42.206131, 19.288622>,  <36.058113, 42.701641, 19.753660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358009, 42.206131, 19.288622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.635994, 42.284210, 19.565441>,  <36.802784, 42.331059, 19.731533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.635994, 42.284210, 19.565441>,  <36.358009, 42.206131, 19.288622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635994, 42.284210, 19.565441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078241, -0.936207, 0.342630,
		0.714781, -0.292260, -0.635352,
		0.694958, 0.195195, 0.692050,
		36.844482, 42.342770, 19.773056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893463, 41.845963, 19.094847>,  <36.358009, 42.206131, 19.288622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893463, 41.845963, 19.094847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.898777, 41.926033, 19.486713>,  <36.901966, 41.974075, 19.721834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.898777, 41.926033, 19.486713>,  <36.893463, 41.845963, 19.094847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898777, 41.926033, 19.486713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026198, -0.979489, 0.199789,
		0.999569, 0.023011, -0.018259,
		0.013287, 0.200181, 0.979669,
		36.902763, 41.986088, 19.780615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142971, 41.245617, 19.254400>,  <36.893463, 41.845963, 19.094847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142971, 41.245617, 19.254400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065926, 41.417240, 19.607401>,  <37.019699, 41.520214, 19.819201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065926, 41.417240, 19.607401>,  <37.142971, 41.245617, 19.254400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065926, 41.417240, 19.607401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023424, -0.901094, 0.432990,
		0.980995, 0.062728, 0.183613,
		-0.192613, 0.429062, 0.882500,
		37.008141, 41.545959, 19.872150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681953, 41.009666, 19.777412>,  <37.142971, 41.245617, 19.254400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681953, 41.009666, 19.777412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.344147, 41.092842, 19.974813>,  <37.141460, 41.142746, 20.093254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.344147, 41.092842, 19.974813>,  <37.681953, 41.009666, 19.777412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344147, 41.092842, 19.974813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050562, -0.948382, 0.313073,
		0.533131, 0.239444, 0.811442,
		-0.844521, 0.207936, 0.493505,
		37.090790, 41.155224, 20.122866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832508, 40.403397, 19.394493>,  <37.681953, 41.009666, 19.777412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832508, 40.403397, 19.394493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976864, 40.039963, 19.310364>,  <38.063477, 39.821903, 19.259886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976864, 40.039963, 19.310364>,  <37.832508, 40.403397, 19.394493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976864, 40.039963, 19.310364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075402, 0.196356, -0.977629,
		0.929556, 0.368672, 0.002353,
		0.360887, -0.908584, -0.210322,
		38.085129, 39.767387, 19.247267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369152, 40.535957, 18.902637>,  <37.832508, 40.403397, 19.394493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369152, 40.535957, 18.902637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.237209, 40.159985, 18.867498>,  <38.158043, 39.934399, 18.846415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.237209, 40.159985, 18.867498>,  <38.369152, 40.535957, 18.902637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237209, 40.159985, 18.867498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210255, 0.017572, -0.977489,
		0.920319, -0.340903, 0.191830,
		-0.329858, -0.939934, -0.087848,
		38.138252, 39.878006, 18.841145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916981, 40.103848, 18.678288>,  <38.369152, 40.535957, 18.902637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916981, 40.103848, 18.678288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.573715, 39.927261, 18.573473>,  <38.367756, 39.821308, 18.510584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.573715, 39.927261, 18.573473>,  <38.916981, 40.103848, 18.678288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573715, 39.927261, 18.573473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269218, 0.047619, -0.961901,
		0.437128, -0.896012, 0.077987,
		-0.858161, -0.441469, -0.262038,
		38.316265, 39.794819, 18.494862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026196, 39.725060, 18.122503>,  <38.916981, 40.103848, 18.678288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026196, 39.725060, 18.122503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629280, 39.693779, 18.084040>,  <38.391132, 39.675011, 18.060961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629280, 39.693779, 18.084040>,  <39.026196, 39.725060, 18.122503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629280, 39.693779, 18.084040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108635, -0.175238, -0.978514,
		0.059670, -0.981415, 0.182382,
		-0.992289, -0.078201, -0.096160,
		38.331593, 39.670319, 18.055191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834251, 39.050068, 17.606977>,  <39.026196, 39.725060, 18.122503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834251, 39.050068, 17.606977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.533909, 39.314098, 17.597973>,  <38.353703, 39.472515, 17.592569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.533909, 39.314098, 17.597973>,  <38.834251, 39.050068, 17.606977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533909, 39.314098, 17.597973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039855, 0.011259, -0.999142,
		-0.659257, -0.751114, -0.034761,
		-0.750861, 0.660077, -0.022513,
		38.308651, 39.512123, 17.591219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352032, 38.818626, 17.159540>,  <38.834251, 39.050068, 17.606977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352032, 38.818626, 17.159540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278679, 39.211491, 17.176216>,  <38.234669, 39.447208, 17.186222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278679, 39.211491, 17.176216>,  <38.352032, 38.818626, 17.159540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278679, 39.211491, 17.176216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150477, 0.013864, -0.988516,
		-0.971457, -0.187545, 0.145249,
		-0.183378, 0.982158, 0.041689,
		38.223667, 39.506138, 17.188723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791084, 38.972000, 16.809887>,  <38.352032, 38.818626, 17.159540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791084, 38.972000, 16.809887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.960640, 39.333527, 16.833328>,  <38.062374, 39.550442, 16.847393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.960640, 39.333527, 16.833328>,  <37.791084, 38.972000, 16.809887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960640, 39.333527, 16.833328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002151, 0.065707, -0.997837,
		-0.905712, 0.422846, 0.029797,
		0.423889, 0.903816, 0.058601,
		38.087807, 39.604671, 16.850908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502014, 39.295708, 16.218897>,  <37.791084, 38.972000, 16.809887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502014, 39.295708, 16.218897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.807526, 39.533058, 16.320520>,  <37.990833, 39.675468, 16.381495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.807526, 39.533058, 16.320520>,  <37.502014, 39.295708, 16.218897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807526, 39.533058, 16.320520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163056, 0.203468, -0.965409,
		-0.624542, 0.778786, 0.058652,
		0.763781, 0.593374, 0.254060,
		38.036659, 39.711071, 16.396738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363079, 39.856724, 15.898622>,  <37.502014, 39.295708, 16.218897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363079, 39.856724, 15.898622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.756561, 39.839653, 15.968476>,  <37.992653, 39.829411, 16.010389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.756561, 39.839653, 15.968476>,  <37.363079, 39.856724, 15.898622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756561, 39.839653, 15.968476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178076, 0.098016, -0.979123,
		0.024669, 0.994269, 0.104019,
		0.983707, -0.042677, 0.174638,
		38.051674, 39.826851, 16.020868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.516411, 32.820477, 30.396540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757801, 33.127384, 30.483366>,  <36.902634, 33.311527, 30.535461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757801, 33.127384, 30.483366>,  <36.516411, 32.820477, 30.396540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757801, 33.127384, 30.483366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156966, 0.381208, -0.911067,
		-0.781779, 0.515734, 0.350484,
		0.603476, 0.767267, 0.217068,
		36.938843, 33.357563, 30.548487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048939, 33.449036, 30.267998>,  <36.516411, 32.820477, 30.396540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048939, 33.449036, 30.267998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438236, 33.540947, 30.267941>,  <36.671814, 33.596096, 30.267906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438236, 33.540947, 30.267941>,  <36.048939, 33.449036, 30.267998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438236, 33.540947, 30.267941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096731, 0.409152, -0.907324,
		-0.208428, 0.883060, 0.420431,
		0.973243, 0.229780, -0.000141,
		36.730209, 33.609882, 30.267899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057053, 34.127380, 30.032915>,  <36.048939, 33.449036, 30.267998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057053, 34.127380, 30.032915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433197, 33.998009, 29.990759>,  <36.658886, 33.920383, 29.965466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433197, 33.998009, 29.990759>,  <36.057053, 34.127380, 30.032915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433197, 33.998009, 29.990759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041800, 0.417339, -0.907789,
		0.337592, 0.849247, 0.405970,
		0.940364, -0.323432, -0.105392,
		36.715305, 33.900978, 29.959141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431465, 34.690151, 29.837791>,  <36.057053, 34.127380, 30.032915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431465, 34.690151, 29.837791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645267, 34.377079, 29.710222>,  <36.773548, 34.189236, 29.633680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645267, 34.377079, 29.710222>,  <36.431465, 34.690151, 29.837791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645267, 34.377079, 29.710222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149693, 0.459053, -0.875707,
		0.831803, 0.420329, 0.362528,
		0.534505, -0.782684, -0.318922,
		36.805618, 34.142273, 29.614546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030846, 34.959076, 29.675186>,  <36.431465, 34.690151, 29.837791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030846, 34.959076, 29.675186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015102, 34.606838, 29.486292>,  <37.005657, 34.395496, 29.372955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015102, 34.606838, 29.486292>,  <37.030846, 34.959076, 29.675186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015102, 34.606838, 29.486292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366588, 0.426926, -0.826648,
		0.929551, -0.205649, 0.306013,
		-0.039355, -0.880592, -0.472238,
		37.003296, 34.342659, 29.344620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705025, 34.796345, 29.522953>,  <37.030846, 34.959076, 29.675186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705025, 34.796345, 29.522953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.478691, 34.594513, 29.262115>,  <37.342892, 34.473415, 29.105614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.478691, 34.594513, 29.262115>,  <37.705025, 34.796345, 29.522953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478691, 34.594513, 29.262115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408748, 0.515190, -0.753329,
		0.716067, -0.692804, -0.085268,
		-0.565838, -0.504581, -0.652093,
		37.308941, 34.443138, 29.066488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119770, 34.779125, 28.978266>,  <37.705025, 34.796345, 29.522953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119770, 34.779125, 28.978266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767254, 34.667797, 28.825500>,  <37.555744, 34.601002, 28.733841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767254, 34.667797, 28.825500>,  <38.119770, 34.779125, 28.978266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767254, 34.667797, 28.825500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221812, 0.469984, -0.854350,
		0.417273, -0.837648, -0.352461,
		-0.881296, -0.278317, -0.381913,
		37.502865, 34.584301, 28.710926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171089, 34.505981, 28.259501>,  <38.119770, 34.779125, 28.978266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171089, 34.505981, 28.259501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777870, 34.579205, 28.263653>,  <37.541939, 34.623138, 28.266144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777870, 34.579205, 28.263653>,  <38.171089, 34.505981, 28.259501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777870, 34.579205, 28.263653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062341, 0.386937, -0.919996,
		-0.172431, -0.903753, -0.391789,
		-0.983047, 0.183060, 0.010379,
		37.482956, 34.634121, 28.266768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906467, 34.357136, 27.621857>,  <38.171089, 34.505981, 28.259501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906467, 34.357136, 27.621857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.619511, 34.596424, 27.764677>,  <37.447338, 34.739998, 27.850368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.619511, 34.596424, 27.764677>,  <37.906467, 34.357136, 27.621857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619511, 34.596424, 27.764677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025086, 0.534360, -0.844885,
		-0.696217, -0.597157, -0.398353,
		-0.717393, 0.598216, 0.357050,
		37.404293, 34.775890, 27.871792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457363, 34.338917, 27.090429>,  <37.906467, 34.357136, 27.621857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457363, 34.338917, 27.090429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382347, 34.662102, 27.313866>,  <37.337337, 34.856014, 27.447927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382347, 34.662102, 27.313866>,  <37.457363, 34.338917, 27.090429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382347, 34.662102, 27.313866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158822, 0.586140, -0.794491,
		-0.969333, -0.060279, -0.238244,
		-0.187535, 0.807965, 0.558591,
		37.326088, 34.904491, 27.481443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940483, 34.698174, 26.777235>,  <37.457363, 34.338917, 27.090429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940483, 34.698174, 26.777235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081226, 34.981606, 27.021896>,  <37.165672, 35.151665, 27.168694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081226, 34.981606, 27.021896>,  <36.940483, 34.698174, 26.777235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081226, 34.981606, 27.021896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005621, 0.655023, -0.755588,
		-0.936037, 0.262420, 0.234457,
		0.351856, 0.708576, 0.611651,
		37.186783, 35.194180, 27.205391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537296, 35.284092, 26.647608>,  <36.940483, 34.698174, 26.777235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537296, 35.284092, 26.647608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881912, 35.421665, 26.796984>,  <37.088680, 35.504211, 26.886610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881912, 35.421665, 26.796984>,  <36.537296, 35.284092, 26.647608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881912, 35.421665, 26.796984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116096, 0.582611, -0.804417,
		-0.494239, 0.736391, 0.462012,
		0.861539, 0.343936, 0.373441,
		37.140373, 35.524845, 26.909016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002735, 35.491844, 27.197001>,  <36.537296, 35.284092, 26.647608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002735, 35.491844, 27.197001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664349, 35.697968, 27.142151>,  <35.461315, 35.821640, 27.109241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664349, 35.697968, 27.142151>,  <36.002735, 35.491844, 27.197001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664349, 35.697968, 27.142151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326070, -0.296433, 0.897667,
		0.421925, 0.804107, 0.418797,
		-0.845966, 0.515305, -0.137123,
		35.410561, 35.852558, 27.101013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969387, 36.030300, 27.697023>,  <36.002735, 35.491844, 27.197001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969387, 36.030300, 27.697023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.603271, 35.919136, 27.580399>,  <35.383602, 35.852436, 27.510424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.603271, 35.919136, 27.580399>,  <35.969387, 36.030300, 27.697023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603271, 35.919136, 27.580399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190580, -0.338900, 0.921318,
		-0.354858, 0.898838, 0.257227,
		-0.915290, -0.277915, -0.291562,
		35.328686, 35.835762, 27.492929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503548, 36.218689, 28.157457>,  <35.969387, 36.030300, 27.697023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503548, 36.218689, 28.157457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273449, 35.937386, 27.990355>,  <35.135391, 35.768604, 27.890093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273449, 35.937386, 27.990355>,  <35.503548, 36.218689, 28.157457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273449, 35.937386, 27.990355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306991, -0.287775, 0.907162,
		-0.758188, 0.650089, -0.050352,
		-0.575246, -0.703257, -0.417759,
		35.100876, 35.726410, 27.865026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883762, 36.316959, 28.515127>,  <35.503548, 36.218689, 28.157457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883762, 36.316959, 28.515127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855877, 35.953407, 28.350653>,  <34.839146, 35.735275, 28.251968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855877, 35.953407, 28.350653>,  <34.883762, 36.316959, 28.515127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855877, 35.953407, 28.350653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436665, -0.342800, 0.831752,
		-0.896919, 0.237534, -0.372979,
		-0.069712, -0.908882, -0.411187,
		34.834965, 35.680744, 28.227297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248901, 36.013504, 28.717213>,  <34.883762, 36.316959, 28.515127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248901, 36.013504, 28.717213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442730, 35.679092, 28.614262>,  <34.559029, 35.478447, 28.552490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442730, 35.679092, 28.614262>,  <34.248901, 36.013504, 28.717213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442730, 35.679092, 28.614262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562383, -0.523109, 0.640377,
		-0.670010, -0.165565, -0.723654,
		0.484574, -0.836029, -0.257378,
		34.588100, 35.428284, 28.537048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623814, 35.442986, 28.537996>,  <34.248901, 36.013504, 28.717213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623814, 35.442986, 28.537996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951729, 35.222485, 28.600044>,  <34.148479, 35.090183, 28.637274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951729, 35.222485, 28.600044>,  <33.623814, 35.442986, 28.537996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951729, 35.222485, 28.600044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557399, -0.705974, 0.436930,
		-0.131349, -0.444654, -0.886019,
		0.819789, -0.551256, 0.155120,
		34.197666, 35.057106, 28.646580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434441, 34.756721, 28.586996>,  <33.623814, 35.442986, 28.537996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434441, 34.756721, 28.586996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796612, 34.716614, 28.751993>,  <34.013912, 34.692547, 28.850992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796612, 34.716614, 28.751993>,  <33.434441, 34.756721, 28.586996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796612, 34.716614, 28.751993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335956, -0.763252, 0.551887,
		0.259496, -0.638272, -0.724756,
		0.905426, -0.100274, 0.412492,
		34.068241, 34.686531, 28.875740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657375, 34.058727, 28.508751>,  <33.434441, 34.756721, 28.586996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657375, 34.058727, 28.508751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832897, 34.229240, 28.825165>,  <33.938210, 34.331551, 29.015013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832897, 34.229240, 28.825165>,  <33.657375, 34.058727, 28.508751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832897, 34.229240, 28.825165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284235, -0.769264, 0.572227,
		0.852446, -0.475933, -0.216389,
		0.438802, 0.426287, 0.791032,
		33.964539, 34.357128, 29.062475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801399, 33.467648, 28.953995>,  <33.657375, 34.058727, 28.508751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801399, 33.467648, 28.953995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801170, 33.803143, 29.171806>,  <33.801033, 34.004440, 29.302494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801170, 33.803143, 29.171806>,  <33.801399, 33.467648, 28.953995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801170, 33.803143, 29.171806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499489, -0.471978, 0.726462,
		0.866320, -0.271572, 0.419212,
		-0.000572, 0.838740, 0.544531,
		33.800999, 34.054764, 29.335165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779598, 33.188099, 29.689466>,  <33.801399, 33.467648, 28.953995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779598, 33.188099, 29.689466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659809, 33.567165, 29.733738>,  <33.587936, 33.794605, 29.760302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659809, 33.567165, 29.733738>,  <33.779598, 33.188099, 29.689466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659809, 33.567165, 29.733738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565120, -0.269646, 0.779699,
		0.768737, 0.170951, 0.616295,
		-0.299471, 0.947664, 0.110679,
		33.569969, 33.851463, 29.766941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772427, 33.320889, 30.397846>,  <33.779598, 33.188099, 29.689466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772427, 33.320889, 30.397846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522156, 33.592323, 30.243937>,  <33.371994, 33.755184, 30.151590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522156, 33.592323, 30.243937>,  <33.772427, 33.320889, 30.397846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522156, 33.592323, 30.243937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578867, -0.073242, 0.812127,
		0.522913, 0.730864, 0.438635,
		-0.625680, 0.678582, -0.384773,
		33.334454, 33.795898, 30.128504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399883, 33.565250, 31.094139>,  <33.772427, 33.320889, 30.397846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399883, 33.565250, 31.094139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202030, 33.770741, 30.813734>,  <33.083317, 33.894035, 30.645491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202030, 33.770741, 30.813734>,  <33.399883, 33.565250, 31.094139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202030, 33.770741, 30.813734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694842, 0.250743, 0.674035,
		0.522044, 0.820495, 0.232933,
		-0.494636, 0.513727, -0.701013,
		33.053638, 33.924858, 30.603430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239666, 34.229061, 31.390612>,  <33.399883, 33.565250, 31.094139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239666, 34.229061, 31.390612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981251, 34.126194, 31.103140>,  <32.826202, 34.064472, 30.930656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981251, 34.126194, 31.103140>,  <33.239666, 34.229061, 31.390612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981251, 34.126194, 31.103140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753718, 0.363672, 0.547405,
		0.120588, 0.895325, -0.428778,
		-0.646040, -0.257168, -0.718677,
		32.787437, 34.049046, 30.887537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798035, 34.780228, 31.233196>,  <33.239666, 34.229061, 31.390612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798035, 34.780228, 31.233196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607822, 34.451492, 31.107691>,  <32.493694, 34.254250, 31.032387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607822, 34.451492, 31.107691>,  <32.798035, 34.780228, 31.233196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607822, 34.451492, 31.107691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756988, 0.200584, 0.621880,
		-0.448149, 0.533241, -0.717507,
		-0.475533, -0.821839, -0.313765,
		32.465164, 34.204941, 31.013561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421726, 34.554024, 31.781210>,  <32.798035, 34.780228, 31.233196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421726, 34.554024, 31.781210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577053, 34.847878, 32.003746>,  <32.670250, 35.024189, 32.137268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577053, 34.847878, 32.003746>,  <32.421726, 34.554024, 31.781210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577053, 34.847878, 32.003746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323305, 0.673951, -0.664277,
		-0.862949, 0.078085, 0.499222,
		0.388321, 0.734638, 0.556340,
		32.693550, 35.068268, 32.170647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084717, 35.155781, 31.578722>,  <32.421726, 34.554024, 31.781210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084717, 35.155781, 31.578722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394646, 35.291103, 31.792337>,  <32.580605, 35.372295, 31.920506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394646, 35.291103, 31.792337>,  <32.084717, 35.155781, 31.578722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394646, 35.291103, 31.792337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018984, 0.856830, -0.515250,
		-0.631892, 0.389090, 0.670315,
		0.774824, 0.338308, 0.534037,
		32.627094, 35.392597, 31.952549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977369, 35.844444, 31.874756>,  <32.084717, 35.155781, 31.578722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977369, 35.844444, 31.874756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364670, 35.764797, 31.814299>,  <32.597050, 35.717010, 31.778025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364670, 35.764797, 31.814299>,  <31.977369, 35.844444, 31.874756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364670, 35.764797, 31.814299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115091, 0.891795, -0.437557,
		0.221914, 0.406269, 0.886397,
		0.968250, -0.199117, -0.151144,
		32.655144, 35.705063, 31.768955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346813, 36.509922, 31.946781>,  <31.977369, 35.844444, 31.874756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346813, 36.509922, 31.946781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629879, 36.296112, 31.761955>,  <32.799717, 36.167828, 31.651060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629879, 36.296112, 31.761955>,  <32.346813, 36.509922, 31.946781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629879, 36.296112, 31.761955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200683, 0.779094, -0.593917,
		0.677452, 0.327564, 0.658604,
		0.707661, -0.534522, -0.462063,
		32.842178, 36.135757, 31.623337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940849, 36.964783, 31.953545>,  <32.346813, 36.509922, 31.946781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940849, 36.964783, 31.953545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974819, 36.675488, 31.679403>,  <32.995201, 36.501911, 31.514917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974819, 36.675488, 31.679403>,  <32.940849, 36.964783, 31.953545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974819, 36.675488, 31.679403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377306, 0.659959, -0.649687,
		0.922186, -0.203414, 0.328930,
		0.084925, -0.723240, -0.685355,
		33.000298, 36.458515, 31.473797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660328, 36.898987, 31.814245>,  <32.940849, 36.964783, 31.953545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660328, 36.898987, 31.814245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474781, 36.805676, 31.472389>,  <33.363453, 36.749687, 31.267275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474781, 36.805676, 31.472389>,  <33.660328, 36.898987, 31.814245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474781, 36.805676, 31.472389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589469, 0.638882, -0.494324,
		0.661330, -0.733083, -0.158844,
		-0.463864, -0.233278, -0.854641,
		33.335621, 36.735691, 31.215996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213539, 37.000919, 31.329779>,  <33.660328, 36.898987, 31.814245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213539, 37.000919, 31.329779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873356, 36.987526, 31.119785>,  <33.669247, 36.979488, 30.993790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873356, 36.987526, 31.119785>,  <34.213539, 37.000919, 31.329779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873356, 36.987526, 31.119785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390318, 0.628894, -0.672417,
		0.352675, -0.776770, -0.521775,
		-0.850454, -0.033487, -0.524982,
		33.618221, 36.977478, 30.962290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437256, 36.913288, 30.639364>,  <34.213539, 37.000919, 31.329779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437256, 36.913288, 30.639364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055748, 37.031017, 30.615019>,  <33.826843, 37.101654, 30.600412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055748, 37.031017, 30.615019>,  <34.437256, 36.913288, 30.639364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055748, 37.031017, 30.615019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250956, 0.668468, -0.700123,
		-0.165375, -0.683028, -0.711424,
		-0.953767, 0.294319, -0.060862,
		33.769619, 37.119312, 30.596760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260014, 36.970692, 29.860823>,  <34.437256, 36.913288, 30.639364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260014, 36.970692, 29.860823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980099, 37.176476, 30.059071>,  <33.812149, 37.299946, 30.178020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980099, 37.176476, 30.059071>,  <34.260014, 36.970692, 29.860823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980099, 37.176476, 30.059071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029608, 0.714093, -0.699425,
		-0.713742, -0.474771, -0.514942,
		-0.699783, 0.514455, 0.495621,
		33.770164, 37.330811, 30.207756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699306, 37.105133, 29.388235>,  <34.260014, 36.970692, 29.860823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699306, 37.105133, 29.388235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.687401, 37.383827, 29.674919>,  <33.680256, 37.551044, 29.846930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.687401, 37.383827, 29.674919>,  <33.699306, 37.105133, 29.388235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687401, 37.383827, 29.674919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028301, 0.717326, -0.696163,
		-0.999156, -0.000437, -0.041069,
		-0.029764, 0.696738, 0.716709,
		33.678471, 37.592850, 29.889931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178753, 37.552742, 29.173885>,  <33.699306, 37.105133, 29.388235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178753, 37.552742, 29.173885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381306, 37.778160, 29.434959>,  <33.502838, 37.913410, 29.591604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381306, 37.778160, 29.434959>,  <33.178753, 37.552742, 29.173885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381306, 37.778160, 29.434959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009356, 0.753268, -0.657647,
		-0.862261, 0.339124, 0.376165,
		0.506377, 0.563544, 0.652687,
		33.533218, 37.947224, 29.630766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918148, 38.220394, 29.069296>,  <33.178753, 37.552742, 29.173885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918148, 38.220394, 29.069296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251926, 38.319668, 29.266111>,  <33.452194, 38.379230, 29.384201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251926, 38.319668, 29.266111>,  <32.918148, 38.220394, 29.069296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251926, 38.319668, 29.266111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210388, 0.681759, -0.700673,
		-0.509345, 0.688194, 0.516678,
		0.834448, 0.248182, 0.492038,
		33.502262, 38.394123, 29.413723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920185, 38.980652, 29.288612>,  <32.918148, 38.220394, 29.069296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920185, 38.980652, 29.288612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296356, 38.848721, 29.255617>,  <33.522060, 38.769562, 29.235821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296356, 38.848721, 29.255617>,  <32.920185, 38.980652, 29.288612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296356, 38.848721, 29.255617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211900, 0.758351, -0.616443,
		0.265876, 0.562242, 0.783067,
		0.940430, -0.329829, -0.082489,
		33.578484, 38.749771, 29.230871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261337, 39.583744, 29.073811>,  <32.920185, 38.980652, 29.288612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261337, 39.583744, 29.073811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540371, 39.305237, 29.006182>,  <33.707790, 39.138134, 28.965605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540371, 39.305237, 29.006182>,  <33.261337, 39.583744, 29.073811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540371, 39.305237, 29.006182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399591, 0.573922, -0.714801,
		0.594725, 0.431076, 0.678583,
		0.697587, -0.696266, -0.169072,
		33.749649, 39.096355, 28.955460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887623, 39.949100, 29.181423>,  <33.261337, 39.583744, 29.073811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887623, 39.949100, 29.181423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945213, 39.627800, 28.950232>,  <33.979767, 39.435020, 28.811516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945213, 39.627800, 28.950232>,  <33.887623, 39.949100, 29.181423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945213, 39.627800, 28.950232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356249, 0.586978, -0.727010,
		0.923232, -0.101229, 0.370670,
		0.143980, -0.803249, -0.577979,
		33.988407, 39.386826, 28.776838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624821, 39.945190, 29.080938>,  <33.887623, 39.949100, 29.181423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624821, 39.945190, 29.080938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434643, 39.746490, 28.790506>,  <34.320538, 39.627270, 28.616247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434643, 39.746490, 28.790506>,  <34.624821, 39.945190, 29.080938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434643, 39.746490, 28.790506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559815, 0.465837, -0.685276,
		0.678647, -0.732280, 0.056611,
		-0.475443, -0.496752, -0.726080,
		34.292011, 39.597466, 28.572681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119194, 39.985680, 28.556715>,  <34.624821, 39.945190, 29.080938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119194, 39.985680, 28.556715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784595, 39.865211, 28.373602>,  <34.583836, 39.792931, 28.263735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784595, 39.865211, 28.373602>,  <35.119194, 39.985680, 28.556715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784595, 39.865211, 28.373602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324481, 0.400960, -0.856705,
		0.441571, -0.865174, -0.237676,
		-0.836497, -0.301174, -0.457784,
		34.533646, 39.774860, 28.236267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248268, 39.649578, 27.984108>,  <35.119194, 39.985680, 28.556715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248268, 39.649578, 27.984108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874401, 39.769077, 27.907007>,  <34.650082, 39.840778, 27.860746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874401, 39.769077, 27.907007>,  <35.248268, 39.649578, 27.984108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874401, 39.769077, 27.907007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307801, 0.408607, -0.859243,
		-0.177940, -0.862432, -0.473866,
		-0.934664, 0.298750, -0.192750,
		34.594002, 39.858704, 27.849182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293751, 39.849171, 27.291630>,  <35.248268, 39.649578, 27.984108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293751, 39.849171, 27.291630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928829, 39.986168, 27.381424>,  <34.709877, 40.068367, 27.435301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928829, 39.986168, 27.381424>,  <35.293751, 39.849171, 27.291630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928829, 39.986168, 27.381424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025540, 0.499529, -0.865920,
		-0.408708, -0.795719, -0.446977,
		-0.912308, 0.342493, 0.224484,
		34.655136, 40.088917, 27.448769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851913, 39.713520, 26.740585>,  <35.293751, 39.849171, 27.291630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851913, 39.713520, 26.740585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715351, 40.030239, 26.943169>,  <34.633415, 40.220268, 27.064718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715351, 40.030239, 26.943169>,  <34.851913, 39.713520, 26.740585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715351, 40.030239, 26.943169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009869, 0.541825, -0.840433,
		-0.939865, -0.281929, -0.192795,
		-0.341404, 0.791796, 0.506460,
		34.612930, 40.267776, 27.095106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509819, 40.008003, 26.287426>,  <34.851913, 39.713520, 26.740585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509819, 40.008003, 26.287426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542988, 40.308800, 26.549002>,  <34.562889, 40.489277, 26.705948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542988, 40.308800, 26.549002>,  <34.509819, 40.008003, 26.287426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542988, 40.308800, 26.549002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274100, 0.613682, -0.740449,
		-0.958120, 0.240642, -0.155234,
		0.082919, 0.751988, 0.653941,
		34.567863, 40.534397, 26.745184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076458, 40.509781, 26.057699>,  <34.509819, 40.008003, 26.287426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076458, 40.509781, 26.057699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313274, 40.727470, 26.295458>,  <34.455364, 40.858082, 26.438114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313274, 40.727470, 26.295458>,  <34.076458, 40.509781, 26.057699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313274, 40.727470, 26.295458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242750, 0.582873, -0.775456,
		-0.768478, 0.603392, 0.212976,
		0.592042, 0.544221, 0.594398,
		34.490887, 40.890736, 26.473778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903938, 41.171436, 25.940592>,  <34.076458, 40.509781, 26.057699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903938, 41.171436, 25.940592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264153, 41.188354, 26.113678>,  <34.480282, 41.198505, 26.217529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264153, 41.188354, 26.113678>,  <33.903938, 41.171436, 25.940592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264153, 41.188354, 26.113678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229914, 0.798387, -0.556524,
		-0.369013, 0.600658, 0.709253,
		0.900538, 0.042297, 0.432715,
		34.534313, 41.201042, 26.243492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914459, 41.879314, 26.128660>,  <33.903938, 41.171436, 25.940592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914459, 41.879314, 26.128660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288273, 41.738461, 26.108114>,  <34.512562, 41.653946, 26.095787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288273, 41.738461, 26.108114>,  <33.914459, 41.879314, 26.128660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288273, 41.738461, 26.108114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251160, 0.754925, -0.605811,
		0.252106, 0.553253, 0.793949,
		0.934538, -0.352136, -0.051366,
		34.568634, 41.632820, 26.092705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246372, 42.461838, 26.100842>,  <33.914459, 41.879314, 26.128660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246372, 42.461838, 26.100842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.488029, 42.176605, 25.958561>,  <34.633022, 42.005466, 25.873192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.488029, 42.176605, 25.958561>,  <34.246372, 42.461838, 26.100842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488029, 42.176605, 25.958561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353924, 0.640036, -0.681976,
		0.713968, 0.286119, 0.639050,
		0.604142, -0.713084, -0.355701,
		34.669273, 41.962681, 25.851851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748180, 42.930901, 25.877119>,  <34.246372, 42.461838, 26.100842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748180, 42.930901, 25.877119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858932, 42.577148, 25.726810>,  <34.925385, 42.364895, 25.636625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858932, 42.577148, 25.726810>,  <34.748180, 42.930901, 25.877119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858932, 42.577148, 25.726810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499169, 0.466533, -0.730190,
		0.821076, 0.014604, 0.570632,
		0.276883, -0.884383, -0.375769,
		34.941998, 42.311832, 25.614080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356205, 42.980740, 25.760059>,  <34.748180, 42.930901, 25.877119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356205, 42.980740, 25.760059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236214, 42.691563, 25.511103>,  <35.164219, 42.518055, 25.361729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236214, 42.691563, 25.511103>,  <35.356205, 42.980740, 25.760059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236214, 42.691563, 25.511103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356261, 0.520331, -0.776101,
		0.884925, -0.454545, 0.101468,
		-0.299976, -0.722941, -0.622391,
		35.146221, 42.474682, 25.324385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982220, 42.900860, 25.445873>,  <35.356205, 42.980740, 25.760059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982220, 42.900860, 25.445873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682674, 42.767834, 25.216576>,  <35.502949, 42.688019, 25.078997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682674, 42.767834, 25.216576>,  <35.982220, 42.900860, 25.445873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682674, 42.767834, 25.216576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396263, 0.468629, -0.789533,
		0.531212, -0.818404, -0.219153,
		-0.748859, -0.332567, -0.573245,
		35.458015, 42.668064, 25.044601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739269, 42.492329, 25.661116>,  <35.982220, 42.900860, 25.445873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739269, 42.492329, 25.661116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063992, 42.658806, 25.824945>,  <37.258827, 42.758690, 25.923244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063992, 42.658806, 25.824945>,  <36.739269, 42.492329, 25.661116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063992, 42.658806, 25.824945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161043, -0.514639, 0.842147,
		0.561276, -0.749622, -0.350764,
		0.811809, 0.416189, 0.409576,
		37.307533, 42.783661, 25.947819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057388, 42.029549, 26.040134>,  <36.739269, 42.492329, 25.661116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057388, 42.029549, 26.040134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.193726, 42.377605, 26.182508>,  <37.275528, 42.586437, 26.267933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.193726, 42.377605, 26.182508>,  <37.057388, 42.029549, 26.040134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193726, 42.377605, 26.182508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161810, -0.318656, 0.933957,
		0.926092, -0.375922, 0.032186,
		0.340839, 0.870138, 0.355933,
		37.295979, 42.638645, 26.289288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693321, 41.850922, 26.482021>,  <37.057388, 42.029549, 26.040134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693321, 41.850922, 26.482021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529675, 42.198456, 26.593563>,  <37.431488, 42.406975, 26.660488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529675, 42.198456, 26.593563>,  <37.693321, 41.850922, 26.482021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529675, 42.198456, 26.593563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046470, -0.325042, 0.944557,
		0.911300, 0.373471, 0.173354,
		-0.409112, 0.868831, 0.278856,
		37.406940, 42.459106, 26.677219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106274, 42.126354, 26.999151>,  <37.693321, 41.850922, 26.482021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106274, 42.126354, 26.999151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742989, 42.285725, 27.050392>,  <37.525017, 42.381348, 27.081137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742989, 42.285725, 27.050392>,  <38.106274, 42.126354, 26.999151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742989, 42.285725, 27.050392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038820, -0.384970, 0.922112,
		0.416712, 0.832498, 0.365100,
		-0.908209, 0.398428, 0.128104,
		37.470524, 42.405254, 27.088823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190975, 42.285042, 27.752634>,  <38.106274, 42.126354, 26.999151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190975, 42.285042, 27.752634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805984, 42.320061, 27.649895>,  <37.574989, 42.341072, 27.588251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805984, 42.320061, 27.649895>,  <38.190975, 42.285042, 27.752634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805984, 42.320061, 27.649895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257945, -0.589045, 0.765827,
		-0.084251, 0.803344, 0.589525,
		-0.962479, 0.087543, -0.256846,
		37.517242, 42.346325, 27.572842>
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
