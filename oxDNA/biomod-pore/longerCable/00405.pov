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
	<24.138725, 34.789543, 34.735729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288176, 35.120579, 34.903301>,  <24.377846, 35.319199, 35.003845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288176, 35.120579, 34.903301>,  <24.138725, 34.789543, 34.735729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.288176, 35.120579, 34.903301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778861, -0.034623, -0.626241,
		-0.503765, 0.560267, -0.657512,
		0.373627, 0.827588, 0.418928,
		24.400263, 35.368855, 35.028980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885569, 34.748211, 34.797325>,  <24.138725, 34.789543, 34.735729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885569, 34.748211, 34.797325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.142580, 34.450176, 34.725765>,  <25.296787, 34.271355, 34.682831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.142580, 34.450176, 34.725765>,  <24.885569, 34.748211, 34.797325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.142580, 34.450176, 34.725765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052821, -0.189848, 0.980392,
		-0.764437, -0.639381, -0.082627,
		0.642531, -0.745084, -0.178899,
		25.335339, 34.226650, 34.672096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503731, 34.748787, 35.138927>,  <24.885569, 34.748211, 34.797325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503731, 34.748787, 35.138927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857983, 34.919792, 35.211472>,  <26.070534, 35.022396, 35.254997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857983, 34.919792, 35.211472>,  <25.503731, 34.748787, 35.138927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857983, 34.919792, 35.211472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124546, -0.157563, 0.979623,
		0.447378, -0.890172, -0.086298,
		0.885630, 0.427514, 0.181357,
		26.123672, 35.048046, 35.265881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905144, 34.378410, 35.600746>,  <25.503731, 34.748787, 35.138927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905144, 34.378410, 35.600746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041243, 34.752083, 35.643711>,  <26.122902, 34.976288, 35.669491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041243, 34.752083, 35.643711>,  <25.905144, 34.378410, 35.600746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041243, 34.752083, 35.643711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362322, -0.235653, 0.901771,
		0.867729, -0.267908, -0.418655,
		0.340249, 0.934180, 0.107414,
		26.143318, 35.032337, 35.675934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664711, 34.388916, 35.728378>,  <25.905144, 34.378410, 35.600746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664711, 34.388916, 35.728378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486021, 34.717464, 35.870243>,  <26.378807, 34.914593, 35.955360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486021, 34.717464, 35.870243>,  <26.664711, 34.388916, 35.728378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486021, 34.717464, 35.870243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297858, -0.237263, 0.924655,
		0.843635, 0.518704, -0.138661,
		-0.446723, 0.821373, 0.354663,
		26.352005, 34.963875, 35.976643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130102, 34.725094, 36.254921>,  <26.664711, 34.388916, 35.728378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130102, 34.725094, 36.254921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764332, 34.873489, 36.319660>,  <26.544870, 34.962524, 36.358505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764332, 34.873489, 36.319660>,  <27.130102, 34.725094, 36.254921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764332, 34.873489, 36.319660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185468, 0.028634, 0.982233,
		0.359760, 0.928197, -0.094990,
		-0.914426, 0.370986, 0.161850,
		26.490004, 34.984783, 36.368214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136185, 35.448620, 36.458767>,  <27.130102, 34.725094, 36.254921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136185, 35.448620, 36.458767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828672, 35.236435, 36.601643>,  <26.644165, 35.109123, 36.687366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828672, 35.236435, 36.601643>,  <27.136185, 35.448620, 36.458767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828672, 35.236435, 36.601643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483444, -0.116434, 0.867597,
		-0.418642, 0.839672, 0.345963,
		-0.768779, -0.530466, 0.357190,
		26.598040, 35.077293, 36.708801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837885, 35.746571, 37.127220>,  <27.136185, 35.448620, 36.458767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837885, 35.746571, 37.127220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771023, 35.352444, 37.113300>,  <26.730906, 35.115967, 37.104950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771023, 35.352444, 37.113300>,  <26.837885, 35.746571, 37.127220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771023, 35.352444, 37.113300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305218, -0.085278, 0.948457,
		-0.937497, 0.147919, 0.314991,
		-0.167157, -0.985316, -0.034800,
		26.720877, 35.056850, 37.102859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583702, 35.625786, 37.801636>,  <26.837885, 35.746571, 37.127220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583702, 35.625786, 37.801636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741926, 35.311714, 37.611046>,  <26.836861, 35.123272, 37.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741926, 35.311714, 37.611046>,  <26.583702, 35.625786, 37.801636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741926, 35.311714, 37.611046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451962, -0.285214, 0.845212,
		-0.799540, -0.549679, 0.242052,
		0.395559, -0.785180, -0.476473,
		26.860594, 35.076160, 37.468105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350607, 35.114349, 38.214169>,  <26.583702, 35.625786, 37.801636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350607, 35.114349, 38.214169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670401, 34.978146, 38.016228>,  <26.862276, 34.896423, 37.897465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670401, 34.978146, 38.016228>,  <26.350607, 35.114349, 38.214169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670401, 34.978146, 38.016228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315486, -0.463010, 0.828306,
		-0.511175, -0.818333, -0.262739,
		0.799481, -0.340519, -0.494852,
		26.910246, 34.875992, 37.867771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439211, 34.409866, 38.372925>,  <26.350607, 35.114349, 38.214169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439211, 34.409866, 38.372925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786409, 34.593739, 38.297794>,  <26.994728, 34.704063, 38.252716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786409, 34.593739, 38.297794>,  <26.439211, 34.409866, 38.372925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786409, 34.593739, 38.297794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379361, -0.369782, 0.848143,
		0.320420, -0.807438, -0.495353,
		0.867996, 0.459679, -0.187825,
		27.046808, 34.731644, 38.241447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059801, 33.936634, 38.573277>,  <26.439211, 34.409866, 38.372925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059801, 33.936634, 38.573277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157764, 34.323196, 38.604481>,  <27.216541, 34.555134, 38.623203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157764, 34.323196, 38.604481>,  <27.059801, 33.936634, 38.573277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157764, 34.323196, 38.604481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528554, -0.200532, 0.824874,
		0.812805, -0.160784, -0.559908,
		0.244906, 0.966403, 0.078010,
		27.231236, 34.613117, 38.627884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863882, 34.194092, 38.399902>,  <27.059801, 33.936634, 38.573277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863882, 34.194092, 38.399902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627840, 34.363316, 38.674942>,  <27.486214, 34.464851, 38.839966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627840, 34.363316, 38.674942>,  <27.863882, 34.194092, 38.399902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627840, 34.363316, 38.674942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568322, -0.387229, 0.725991,
		0.573398, 0.819190, -0.011928,
		-0.590106, 0.423061, 0.687600,
		27.450808, 34.490234, 38.881222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276325, 34.444767, 38.898304>,  <27.863882, 34.194092, 38.399902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276325, 34.444767, 38.898304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930449, 34.458008, 39.098789>,  <27.722923, 34.465954, 39.219078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930449, 34.458008, 39.098789>,  <28.276325, 34.444767, 38.898304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930449, 34.458008, 39.098789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492470, -0.140599, 0.858898,
		0.098902, 0.989513, 0.105273,
		-0.864692, 0.033103, 0.501211,
		27.671041, 34.467937, 39.249153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672031, 35.119701, 38.699127>,  <28.276325, 34.444767, 38.898304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672031, 35.119701, 38.699127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930849, 35.243011, 38.420185>,  <29.086140, 35.316998, 38.252823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930849, 35.243011, 38.420185>,  <28.672031, 35.119701, 38.699127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930849, 35.243011, 38.420185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629543, 0.299955, 0.716730,
		0.430126, -0.902769, 0.000010,
		0.647045, 0.308278, -0.697350,
		29.124962, 35.335495, 38.210979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069818, 35.396652, 38.332302>,  <28.672031, 35.119701, 38.699127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069818, 35.396652, 38.332302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808067, 35.095108, 38.355919>,  <27.651016, 34.914181, 38.370087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808067, 35.095108, 38.355919>,  <28.069818, 35.396652, 38.332302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808067, 35.095108, 38.355919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060222, -0.129783, -0.989712,
		0.753767, -0.644089, 0.130326,
		-0.654376, -0.753861, 0.059037,
		27.611753, 34.868950, 38.373631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193047, 34.877438, 37.752796>,  <28.069818, 35.396652, 38.332302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193047, 34.877438, 37.752796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829617, 34.777016, 37.886341>,  <27.611559, 34.716763, 37.966469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829617, 34.777016, 37.886341>,  <28.193047, 34.877438, 37.752796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829617, 34.777016, 37.886341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344157, -0.003084, -0.938907,
		0.236743, -0.967969, -0.083599,
		-0.908575, -0.251051, 0.333863,
		27.557043, 34.701702, 37.986500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883121, 34.343414, 37.219769>,  <28.193047, 34.877438, 37.752796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883121, 34.343414, 37.219769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602989, 34.531609, 37.434498>,  <27.434910, 34.644527, 37.563335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602989, 34.531609, 37.434498>,  <27.883121, 34.343414, 37.219769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602989, 34.531609, 37.434498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580364, 0.062547, -0.811952,
		-0.415591, -0.880186, 0.229252,
		-0.700330, 0.470489, 0.536822,
		27.392891, 34.672756, 37.595543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338022, 33.971939, 37.017563>,  <27.883121, 34.343414, 37.219769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338022, 33.971939, 37.017563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188143, 34.301838, 37.186981>,  <27.098215, 34.499779, 37.288631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188143, 34.301838, 37.186981>,  <27.338022, 33.971939, 37.017563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188143, 34.301838, 37.186981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757069, -0.008462, -0.653281,
		-0.535210, -0.565433, 0.627564,
		-0.374697, 0.824751, 0.423542,
		27.075733, 34.549263, 37.314045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696693, 33.798378, 37.084240>,  <27.338022, 33.971939, 37.017563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696693, 33.798378, 37.084240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710701, 34.198097, 37.078957>,  <26.719107, 34.437927, 37.075787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710701, 34.198097, 37.078957>,  <26.696693, 33.798378, 37.084240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710701, 34.198097, 37.078957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669603, 0.013650, -0.742594,
		-0.741894, 0.034852, 0.669611,
		0.035021, 0.999299, -0.013211,
		26.721207, 34.497887, 37.074993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054827, 34.008095, 36.882870>,  <26.696693, 33.798378, 37.084240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054827, 34.008095, 36.882870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312067, 34.300961, 36.793110>,  <26.466412, 34.476681, 36.739254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312067, 34.300961, 36.793110>,  <26.054827, 34.008095, 36.882870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312067, 34.300961, 36.793110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412943, 0.084789, -0.906801,
		-0.644901, 0.675831, 0.356870,
		0.643103, 0.732164, -0.224399,
		26.504997, 34.520611, 36.725792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028795, 34.628860, 37.340137>,  <26.054827, 34.008095, 36.882870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028795, 34.628860, 37.340137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052593, 35.015755, 37.438869>,  <26.066872, 35.247890, 37.498108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052593, 35.015755, 37.438869>,  <26.028795, 34.628860, 37.340137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052593, 35.015755, 37.438869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004672, 0.246991, -0.969006,
		-0.998218, 0.058806, 0.010176,
		0.059496, 0.967232, 0.246826,
		26.070442, 35.305923, 37.512917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411909, 35.054306, 37.153786>,  <26.028795, 34.628860, 37.340137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411909, 35.054306, 37.153786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770479, 35.231583, 37.153576>,  <25.985622, 35.337948, 37.153450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770479, 35.231583, 37.153576>,  <25.411909, 35.054306, 37.153786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770479, 35.231583, 37.153576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033292, 0.066153, -0.997254,
		-0.441940, 0.893983, 0.074056,
		0.896427, 0.443192, -0.000527,
		26.039408, 35.364540, 37.153419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388462, 35.528355, 36.655613>,  <25.411909, 35.054306, 37.153786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388462, 35.528355, 36.655613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780758, 35.464802, 36.701050>,  <26.016136, 35.426670, 36.728310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780758, 35.464802, 36.701050>,  <25.388462, 35.528355, 36.655613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780758, 35.464802, 36.701050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105478, -0.058603, -0.992693,
		0.164379, 0.985556, -0.040715,
		0.980741, -0.158884, 0.113588,
		26.074980, 35.417137, 36.735126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829075, 36.058174, 36.404221>,  <25.388462, 35.528355, 36.655613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829075, 36.058174, 36.404221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993900, 35.716488, 36.277405>,  <26.092796, 35.511475, 36.201313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993900, 35.716488, 36.277405>,  <25.829075, 36.058174, 36.404221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993900, 35.716488, 36.277405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064672, 0.319661, -0.945323,
		0.908857, 0.410037, 0.076476,
		0.412064, -0.854217, -0.317044,
		26.117519, 35.460224, 36.182293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452927, 36.281029, 35.942398>,  <25.829075, 36.058174, 36.404221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452927, 36.281029, 35.942398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344461, 35.903744, 35.865643>,  <26.279383, 35.677372, 35.819588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344461, 35.903744, 35.865643>,  <26.452927, 36.281029, 35.942398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344461, 35.903744, 35.865643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041952, 0.187591, -0.981351,
		0.961618, -0.274158, -0.011298,
		-0.271165, -0.943211, -0.191892,
		26.263111, 35.620781, 35.808075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960854, 35.920635, 35.598904>,  <26.452927, 36.281029, 35.942398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960854, 35.920635, 35.598904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581533, 35.817448, 35.524952>,  <26.353941, 35.755535, 35.480579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581533, 35.817448, 35.524952>,  <26.960854, 35.920635, 35.598904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581533, 35.817448, 35.524952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097483, 0.317616, -0.943195,
		0.302016, -0.912459, -0.276051,
		-0.948306, -0.257950, -0.184874,
		26.297043, 35.740059, 35.469486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874708, 35.450012, 34.964180>,  <26.960854, 35.920635, 35.598904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874708, 35.450012, 34.964180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554310, 35.678303, 35.036484>,  <26.362070, 35.815277, 35.079865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554310, 35.678303, 35.036484>,  <26.874708, 35.450012, 34.964180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554310, 35.678303, 35.036484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182751, 0.520627, -0.833996,
		-0.570092, -0.634995, -0.521322,
		-0.800997, 0.570727, 0.180759,
		26.314011, 35.849522, 35.090710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549332, 35.521626, 34.381599>,  <26.874708, 35.450012, 34.964180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549332, 35.521626, 34.381599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407677, 35.840824, 34.576653>,  <26.322683, 36.032345, 34.693684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407677, 35.840824, 34.576653>,  <26.549332, 35.521626, 34.381599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407677, 35.840824, 34.576653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099346, 0.550578, -0.828851,
		-0.929902, -0.245081, -0.274257,
		-0.354136, 0.797997, 0.487636,
		26.301435, 36.080223, 34.722942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926689, 36.067795, 34.508282>,  <26.549332, 35.521626, 34.381599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926689, 36.067795, 34.508282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314003, 35.977959, 34.552067>,  <27.546391, 35.924057, 34.578339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314003, 35.977959, 34.552067>,  <26.926689, 36.067795, 34.508282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314003, 35.977959, 34.552067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202901, -0.962505, -0.180046,
		0.145792, 0.152126, -0.977549,
		0.968285, -0.224595, 0.109459,
		27.604488, 35.910580, 34.584904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123453, 35.676517, 33.876022>,  <26.926689, 36.067795, 34.508282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123453, 35.676517, 33.876022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416235, 35.582603, 34.131870>,  <27.591904, 35.526257, 34.285381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416235, 35.582603, 34.131870>,  <27.123453, 35.676517, 33.876022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416235, 35.582603, 34.131870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071600, -0.907055, -0.414880,
		0.677580, 0.349470, -0.647114,
		0.731956, -0.234781, 0.639624,
		27.635822, 35.512169, 34.323757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755787, 35.368042, 33.506130>,  <27.123453, 35.676517, 33.876022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755787, 35.368042, 33.506130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744762, 35.233707, 33.882736>,  <27.738148, 35.153107, 34.108700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744762, 35.233707, 33.882736>,  <27.755787, 35.368042, 33.506130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744762, 35.233707, 33.882736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382266, -0.873826, -0.300502,
		0.923641, 0.351627, 0.152465,
		-0.027563, -0.335838, 0.941516,
		27.736494, 35.132957, 34.165192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392767, 34.987713, 33.523304>,  <27.755787, 35.368042, 33.506130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392767, 34.987713, 33.523304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187721, 34.877541, 33.848602>,  <28.064693, 34.811440, 34.043781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187721, 34.877541, 33.848602>,  <28.392767, 34.987713, 33.523304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187721, 34.877541, 33.848602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193838, -0.959825, -0.202887,
		0.836453, 0.053636, 0.545407,
		-0.512614, -0.275426, 0.813245,
		28.033937, 34.794914, 34.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772821, 34.520813, 33.792160>,  <28.392767, 34.987713, 33.523304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772821, 34.520813, 33.792160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404715, 34.451031, 33.932259>,  <28.183851, 34.409161, 34.016319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404715, 34.451031, 33.932259>,  <28.772821, 34.520813, 33.792160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404715, 34.451031, 33.932259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159416, -0.984615, -0.071554,
		0.357344, -0.010013, 0.933919,
		-0.920267, -0.174452, 0.350250,
		28.128633, 34.398697, 34.037334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814091, 33.917484, 34.326702>,  <28.772821, 34.520813, 33.792160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814091, 33.917484, 34.326702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443560, 33.964966, 34.183693>,  <28.221241, 33.993454, 34.097889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443560, 33.964966, 34.183693>,  <28.814091, 33.917484, 34.326702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443560, 33.964966, 34.183693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071551, -0.987220, -0.142397,
		-0.369856, -0.106325, 0.922985,
		-0.926330, 0.118707, -0.357522,
		28.165661, 34.000580, 34.076435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312075, 33.598206, 34.803299>,  <28.814091, 33.917484, 34.326702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312075, 33.598206, 34.803299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956573, 33.695309, 34.647766>,  <27.743273, 33.753571, 34.554447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956573, 33.695309, 34.647766>,  <28.312075, 33.598206, 34.803299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956573, 33.695309, 34.647766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150276, -0.955679, -0.253170,
		-0.433056, -0.166574, 0.885842,
		-0.888752, 0.242757, -0.388830,
		27.689947, 33.768135, 34.531116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842987, 33.102474, 34.949322>,  <28.312075, 33.598206, 34.803299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842987, 33.102474, 34.949322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713774, 33.285286, 34.617836>,  <27.636246, 33.394974, 34.418945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713774, 33.285286, 34.617836>,  <27.842987, 33.102474, 34.949322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713774, 33.285286, 34.617836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256744, -0.885145, -0.388074,
		-0.910897, 0.087408, 0.403270,
		-0.323032, 0.457033, -0.828717,
		27.616865, 33.422398, 34.369221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096951, 32.884567, 34.826611>,  <27.842987, 33.102474, 34.949322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096951, 32.884567, 34.826611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270628, 33.005798, 34.487289>,  <27.374834, 33.078537, 34.283695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270628, 33.005798, 34.487289>,  <27.096951, 32.884567, 34.826611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270628, 33.005798, 34.487289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154504, -0.902692, -0.401592,
		-0.887470, 0.305435, -0.345118,
		0.434195, 0.303079, -0.848303,
		27.400887, 33.096722, 34.232800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797636, 32.574253, 34.264774>,  <27.096951, 32.884567, 34.826611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797636, 32.574253, 34.264774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169203, 32.664944, 34.147671>,  <27.392143, 32.719360, 34.077408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169203, 32.664944, 34.147671>,  <26.797636, 32.574253, 34.264774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169203, 32.664944, 34.147671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152118, -0.954486, -0.256548,
		-0.337600, 0.193778, -0.921128,
		0.928917, 0.226730, -0.292757,
		27.447878, 32.732964, 34.059845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477161, 32.046574, 33.884407>,  <26.797636, 32.574253, 34.264774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477161, 32.046574, 33.884407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616394, 32.038803, 33.509502>,  <26.699934, 32.034142, 33.284557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616394, 32.038803, 33.509502>,  <26.477161, 32.046574, 33.884407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616394, 32.038803, 33.509502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675977, 0.697915, 0.236578,
		0.649534, -0.715917, 0.256062,
		0.348080, -0.019426, -0.937264,
		26.720818, 32.032974, 33.228325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243910, 31.956495, 33.963852>,  <26.477161, 32.046574, 33.884407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243910, 31.956495, 33.963852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154013, 32.113861, 33.607265>,  <27.100075, 32.208282, 33.393314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154013, 32.113861, 33.607265>,  <27.243910, 31.956495, 33.963852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154013, 32.113861, 33.607265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748188, 0.655788, 0.100784,
		0.624264, -0.644335, -0.441733,
		-0.224744, 0.393415, -0.891468,
		27.086590, 32.231884, 33.339825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905003, 32.087395, 33.607704>,  <27.243910, 31.956495, 33.963852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905003, 32.087395, 33.607704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607569, 32.342552, 33.527534>,  <27.429110, 32.495647, 33.479431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607569, 32.342552, 33.527534>,  <27.905003, 32.087395, 33.607704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607569, 32.342552, 33.527534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515607, 0.737874, 0.435536,
		0.425715, 0.220518, -0.877575,
		-0.743584, 0.637898, -0.200423,
		27.384493, 32.533920, 33.467407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142809, 32.841839, 33.348812>,  <27.905003, 32.087395, 33.607704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142809, 32.841839, 33.348812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772951, 32.873306, 33.497860>,  <27.551037, 32.892185, 33.587288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772951, 32.873306, 33.497860>,  <28.142809, 32.841839, 33.348812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772951, 32.873306, 33.497860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161702, 0.966954, 0.197108,
		-0.344801, 0.242508, -0.906809,
		-0.924643, 0.078670, 0.372621,
		27.495558, 32.896908, 33.609646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884195, 33.444523, 33.115379>,  <28.142809, 32.841839, 33.348812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884195, 33.444523, 33.115379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742290, 33.346397, 33.476257>,  <27.657148, 33.287521, 33.692783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742290, 33.346397, 33.476257>,  <27.884195, 33.444523, 33.115379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742290, 33.346397, 33.476257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005743, 0.964374, 0.264482,
		-0.934939, 0.099009, -0.340714,
		-0.354762, -0.245318, 0.902199,
		27.635862, 33.272800, 33.746918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390928, 33.939560, 33.240551>,  <27.884195, 33.444523, 33.115379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390928, 33.939560, 33.240551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513075, 33.786716, 33.589432>,  <27.586363, 33.695011, 33.798759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513075, 33.786716, 33.589432>,  <27.390928, 33.939560, 33.240551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513075, 33.786716, 33.589432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059607, 0.906490, 0.417998,
		-0.950368, -0.179632, 0.254035,
		0.305366, -0.382110, 0.872206,
		27.604685, 33.672085, 33.851093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944168, 34.178368, 33.772518>,  <27.390928, 33.939560, 33.240551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944168, 34.178368, 33.772518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307959, 34.100964, 33.919708>,  <27.526234, 34.054523, 34.008022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307959, 34.100964, 33.919708>,  <26.944168, 34.178368, 33.772518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307959, 34.100964, 33.919708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017202, 0.901841, 0.431725,
		-0.415401, -0.386314, 0.823532,
		0.909476, -0.193506, 0.367980,
		27.580801, 34.042912, 34.030102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963579, 34.298157, 34.549412>,  <26.944168, 34.178368, 33.772518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963579, 34.298157, 34.549412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345278, 34.302597, 34.429886>,  <27.574297, 34.305260, 34.358170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345278, 34.302597, 34.429886>,  <26.963579, 34.298157, 34.549412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345278, 34.302597, 34.429886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123111, 0.896104, 0.426429,
		0.272502, -0.443706, 0.853738,
		0.954247, 0.011098, -0.298815,
		27.631552, 34.305927, 34.340240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259239, 34.489147, 35.104076>,  <26.963579, 34.298157, 34.549412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259239, 34.489147, 35.104076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493908, 34.578728, 34.792782>,  <27.634710, 34.632477, 34.606003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493908, 34.578728, 34.792782>,  <27.259239, 34.489147, 35.104076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493908, 34.578728, 34.792782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169896, 0.905576, 0.388674,
		0.791801, -0.360245, 0.493230,
		0.586675, 0.223954, -0.778240,
		27.669910, 34.645912, 34.559311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848242, 34.812038, 35.385456>,  <27.259239, 34.489147, 35.104076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848242, 34.812038, 35.385456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834789, 34.908749, 34.997555>,  <27.826717, 34.966774, 34.764816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834789, 34.908749, 34.997555>,  <27.848242, 34.812038, 35.385456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834789, 34.908749, 34.997555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273860, 0.935390, 0.223708,
		0.961181, -0.258051, -0.097672,
		-0.033633, 0.241772, -0.969750,
		27.824699, 34.981281, 34.706631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460260, 35.021358, 35.105106>,  <27.848242, 34.812038, 35.385456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460260, 35.021358, 35.105106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201242, 35.197033, 34.856010>,  <28.045832, 35.302437, 34.706554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201242, 35.197033, 34.856010>,  <28.460260, 35.021358, 35.105106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201242, 35.197033, 34.856010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397423, 0.891908, 0.215766,
		0.650185, -0.107771, -0.752094,
		-0.647545, 0.439187, -0.622736,
		28.006979, 35.328789, 34.669189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824631, 35.462605, 34.746273>,  <28.460260, 35.021358, 35.105106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824631, 35.462605, 34.746273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451811, 35.604301, 34.715809>,  <28.228119, 35.689320, 34.697533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451811, 35.604301, 34.715809>,  <28.824631, 35.462605, 34.746273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451811, 35.604301, 34.715809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296162, 0.865903, 0.403112,
		0.208742, 0.353165, -0.911976,
		-0.932049, 0.354239, -0.076156,
		28.172195, 35.710571, 34.692963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578985, 35.742569, 34.734283>,  <28.824631, 35.462605, 34.746273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578985, 35.742569, 34.734283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763798, 35.566238, 34.426464>,  <29.874685, 35.460442, 34.241772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763798, 35.566238, 34.426464>,  <29.578985, 35.742569, 34.734283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763798, 35.566238, 34.426464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807642, -0.567622, -0.159748,
		-0.366392, 0.695327, -0.618285,
		0.462030, -0.440823, -0.769548,
		29.902407, 35.433990, 34.195599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211739, 35.740772, 35.096397>,  <29.578985, 35.742569, 34.734283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211739, 35.740772, 35.096397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595854, 35.706810, 35.202709>,  <30.826323, 35.686432, 35.266495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595854, 35.706810, 35.202709>,  <30.211739, 35.740772, 35.096397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595854, 35.706810, 35.202709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161777, -0.606657, -0.778328,
		0.227321, 0.790416, -0.568830,
		0.960288, -0.084906, 0.265777,
		30.883940, 35.681339, 35.282444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748604, 35.996731, 34.633663>,  <30.211739, 35.740772, 35.096397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748604, 35.996731, 34.633663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877262, 35.678692, 34.839329>,  <30.954456, 35.487869, 34.962727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877262, 35.678692, 34.839329>,  <30.748604, 35.996731, 34.633663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877262, 35.678692, 34.839329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091306, -0.514442, -0.852650,
		0.942448, 0.321196, -0.092870,
		0.321645, -0.795099, 0.514162,
		30.973755, 35.440163, 34.993576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469450, 35.797047, 34.445595>,  <30.748604, 35.996731, 34.633663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469450, 35.797047, 34.445595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296415, 35.457367, 34.566738>,  <31.192595, 35.253559, 34.639423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296415, 35.457367, 34.566738>,  <31.469450, 35.797047, 34.445595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296415, 35.457367, 34.566738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325220, -0.460274, -0.826063,
		0.840894, -0.258846, 0.475285,
		-0.432585, -0.849203, 0.302860,
		31.166639, 35.202606, 34.657597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794062, 35.412163, 34.074829>,  <31.469450, 35.797047, 34.445595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794062, 35.412163, 34.074829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537163, 35.168556, 34.260994>,  <31.383022, 35.022392, 34.372692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537163, 35.168556, 34.260994>,  <31.794062, 35.412163, 34.074829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537163, 35.168556, 34.260994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272618, -0.748992, -0.603896,
		0.716377, -0.260970, 0.647069,
		-0.642248, -0.609020, 0.465415,
		31.344488, 34.985851, 34.400620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819849, 34.710636, 34.409397>,  <31.794062, 35.412163, 34.074829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819849, 34.710636, 34.409397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966814, 34.432659, 34.656643>,  <32.054993, 34.265873, 34.804989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966814, 34.432659, 34.656643>,  <31.819849, 34.710636, 34.409397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966814, 34.432659, 34.656643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852682, -0.517088, -0.074518,
		0.371405, -0.499675, -0.782549,
		0.367412, -0.694942, 0.618113,
		32.077038, 34.224178, 34.842075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442230, 34.403011, 33.974003>,  <31.819849, 34.710636, 34.409397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442230, 34.403011, 33.974003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406879, 34.515099, 34.356346>,  <32.385670, 34.582352, 34.585751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406879, 34.515099, 34.356346>,  <32.442230, 34.403011, 33.974003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406879, 34.515099, 34.356346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920002, -0.344876, 0.186162,
		0.381819, 0.895844, -0.227326,
		-0.088373, 0.280221, 0.955859,
		32.380367, 34.599167, 34.643105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019741, 34.813255, 34.325672>,  <32.442230, 34.403011, 33.974003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019741, 34.813255, 34.325672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874039, 34.601383, 34.632072>,  <32.786617, 34.474258, 34.815914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874039, 34.601383, 34.632072>,  <33.019741, 34.813255, 34.325672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874039, 34.601383, 34.632072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930148, -0.247811, 0.270952,
		0.046306, 0.811190, 0.582946,
		-0.364254, -0.529679, 0.766002,
		32.764763, 34.442478, 34.861874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295792, 35.000057, 35.055614>,  <33.019741, 34.813255, 34.325672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295792, 35.000057, 35.055614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240253, 34.614532, 34.964581>,  <33.206932, 34.383217, 34.909958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240253, 34.614532, 34.964581>,  <33.295792, 35.000057, 35.055614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240253, 34.614532, 34.964581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987311, -0.152600, 0.043925,
		-0.077065, -0.218601, 0.972767,
		-0.138842, -0.963809, -0.227587,
		33.198601, 34.325390, 34.896305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415768, 34.441402, 35.608982>,  <33.295792, 35.000057, 35.055614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415768, 34.441402, 35.608982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518784, 34.325066, 35.240398>,  <33.580593, 34.255264, 35.019249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518784, 34.325066, 35.240398>,  <33.415768, 34.441402, 35.608982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518784, 34.325066, 35.240398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958128, -0.046643, 0.282515,
		-0.125148, -0.955633, 0.266654,
		0.257543, -0.290845, -0.921456,
		33.596046, 34.237812, 34.963963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859901, 33.736805, 35.646599>,  <33.415768, 34.441402, 35.608982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859901, 33.736805, 35.646599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917004, 33.953632, 35.315350>,  <33.951263, 34.083729, 35.116600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917004, 33.953632, 35.315350>,  <33.859901, 33.736805, 35.646599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917004, 33.953632, 35.315350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989184, -0.106626, 0.100728,
		-0.033698, -0.833545, -0.551423,
		0.142757, 0.542064, -0.828122,
		33.959831, 34.116253, 35.066914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426231, 33.430435, 35.266827>,  <33.859901, 33.736805, 35.646599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426231, 33.430435, 35.266827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406395, 33.787922, 35.088474>,  <34.394493, 34.002415, 34.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406395, 33.787922, 35.088474>,  <34.426231, 33.430435, 35.266827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406395, 33.787922, 35.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996942, 0.071283, 0.032004,
		0.060386, -0.442933, -0.894519,
		-0.049588, 0.893716, -0.445883,
		34.391518, 34.056038, 34.954708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746044, 33.356911, 34.675117>,  <34.426231, 33.430435, 35.266827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746044, 33.356911, 34.675117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641426, 33.066803, 34.929855>,  <34.578655, 32.892738, 35.082699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641426, 33.066803, 34.929855>,  <34.746044, 33.356911, 34.675117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641426, 33.066803, 34.929855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453984, -0.674710, -0.581949,
		0.851759, 0.136915, 0.505727,
		-0.261542, -0.725273, 0.636848,
		34.562965, 32.849220, 35.120911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410713, 32.971436, 34.882130>,  <34.746044, 33.356911, 34.675117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410713, 32.971436, 34.882130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072857, 32.758823, 34.907616>,  <34.870144, 32.631256, 34.922909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072857, 32.758823, 34.907616>,  <35.410713, 32.971436, 34.882130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072857, 32.758823, 34.907616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413526, -0.723404, -0.552886,
		0.339964, -0.440644, 0.830817,
		-0.844642, -0.531526, 0.063714,
		34.819466, 32.599365, 34.926731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494560, 32.218185, 35.122570>,  <35.410713, 32.971436, 34.882130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494560, 32.218185, 35.122570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194279, 32.257549, 34.861259>,  <35.014111, 32.281166, 34.704475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194279, 32.257549, 34.861259>,  <35.494560, 32.218185, 35.122570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194279, 32.257549, 34.861259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485335, -0.588740, -0.646402,
		-0.448218, -0.802310, 0.394207,
		-0.750700, 0.098407, -0.653273,
		34.969070, 32.287071, 34.665276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217705, 31.658598, 34.674511>,  <35.494560, 32.218185, 35.122570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217705, 31.658598, 34.674511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120853, 31.946335, 34.414074>,  <35.062740, 32.118977, 34.257812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120853, 31.946335, 34.414074>,  <35.217705, 31.658598, 34.674511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120853, 31.946335, 34.414074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387795, -0.543373, -0.744554,
		-0.889374, -0.432770, -0.147390,
		-0.242133, 0.719344, -0.651088,
		35.048214, 32.162140, 34.218746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424213, 31.383722, 34.098740>,  <35.217705, 31.658598, 34.674511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424213, 31.383722, 34.098740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278633, 31.720741, 33.939919>,  <35.191284, 31.922953, 33.844624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278633, 31.720741, 33.939919>,  <35.424213, 31.383722, 34.098740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278633, 31.720741, 33.939919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279947, -0.307628, -0.909392,
		-0.888352, -0.442129, -0.123907,
		-0.363952, 0.842548, -0.397055,
		35.169449, 31.973505, 33.820801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967995, 31.190540, 33.497238>,  <35.424213, 31.383722, 34.098740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967995, 31.190540, 33.497238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044720, 31.573839, 33.412415>,  <35.090755, 31.803818, 33.361519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044720, 31.573839, 33.412415>,  <34.967995, 31.190540, 33.497238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044720, 31.573839, 33.412415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213318, -0.251612, -0.944027,
		-0.957968, 0.135841, -0.252674,
		0.191813, 0.958248, -0.212059,
		35.102264, 31.861313, 33.348797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562126, 31.269520, 32.968674>,  <34.967995, 31.190540, 33.497238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562126, 31.269520, 32.968674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799660, 31.588768, 32.927944>,  <34.942181, 31.780317, 32.903507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799660, 31.588768, 32.927944>,  <34.562126, 31.269520, 32.968674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799660, 31.588768, 32.927944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238924, -0.295762, -0.924900,
		-0.768297, 0.524906, -0.366323,
		0.593830, 0.798122, -0.101820,
		34.977810, 31.828205, 32.897400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383598, 31.581390, 32.433426>,  <34.562126, 31.269520, 32.968674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383598, 31.581390, 32.433426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757599, 31.716660, 32.476154>,  <34.981998, 31.797821, 32.501789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757599, 31.716660, 32.476154>,  <34.383598, 31.581390, 32.433426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757599, 31.716660, 32.476154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182805, -0.201483, -0.962282,
		-0.303896, 0.919263, -0.250207,
		0.935003, 0.338173, 0.106816,
		35.038101, 31.818111, 32.508198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424335, 32.181454, 31.936453>,  <34.383598, 31.581390, 32.433426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424335, 32.181454, 31.936453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801697, 32.063004, 31.996189>,  <35.028114, 31.991934, 32.032032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801697, 32.063004, 31.996189>,  <34.424335, 32.181454, 31.936453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801697, 32.063004, 31.996189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175353, 0.063163, -0.982477,
		0.281502, 0.953059, 0.111515,
		0.943402, -0.296124, 0.149341,
		35.084717, 31.974167, 32.040993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740574, 32.623669, 31.609808>,  <34.424335, 32.181454, 31.936453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740574, 32.623669, 31.609808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998116, 32.318954, 31.638470>,  <35.152641, 32.136127, 31.655666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998116, 32.318954, 31.638470>,  <34.740574, 32.623669, 31.609808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998116, 32.318954, 31.638470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163243, 0.045268, -0.985547,
		0.747531, 0.646246, 0.153502,
		0.643854, -0.761785, 0.071656,
		35.191273, 32.090420, 31.659966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322472, 32.888474, 31.255621>,  <34.740574, 32.623669, 31.609808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322472, 32.888474, 31.255621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351887, 32.491364, 31.293549>,  <35.369537, 32.253098, 31.316305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351887, 32.491364, 31.293549>,  <35.322472, 32.888474, 31.255621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351887, 32.491364, 31.293549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163816, -0.081761, -0.983097,
		0.983746, 0.087827, 0.156620,
		0.073537, -0.992775, 0.094820,
		35.373947, 32.193531, 31.321995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065628, 32.689732, 31.073044>,  <35.322472, 32.888474, 31.255621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065628, 32.689732, 31.073044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807835, 32.386993, 31.029549>,  <35.653156, 32.205349, 31.003452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807835, 32.386993, 31.029549>,  <36.065628, 32.689732, 31.073044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807835, 32.386993, 31.029549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219111, -0.046563, -0.974588,
		0.732550, -0.651933, 0.195842,
		-0.644485, -0.756846, -0.108736,
		35.614491, 32.159939, 30.996927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408981, 32.278801, 30.589497>,  <36.065628, 32.689732, 31.073044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408981, 32.278801, 30.589497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025043, 32.166618, 30.586908>,  <35.794682, 32.099308, 30.585356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025043, 32.166618, 30.586908>,  <36.408981, 32.278801, 30.589497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025043, 32.166618, 30.586908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100690, -0.322899, -0.941062,
		0.261835, -0.903926, 0.338172,
		-0.959846, -0.280454, -0.006470,
		35.737091, 32.082481, 30.584967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387020, 31.616898, 30.340445>,  <36.408981, 32.278801, 30.589497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387020, 31.616898, 30.340445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005672, 31.731695, 30.303095>,  <35.776863, 31.800573, 30.280685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005672, 31.731695, 30.303095>,  <36.387020, 31.616898, 30.340445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005672, 31.731695, 30.303095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010173, -0.339765, -0.940455,
		-0.301627, -0.895653, 0.326842,
		-0.953372, 0.286991, -0.093371,
		35.719662, 31.817793, 30.275084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204342, 31.264957, 29.876415>,  <36.387020, 31.616898, 30.340445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204342, 31.264957, 29.876415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913925, 31.535278, 29.825583>,  <35.739674, 31.697472, 29.795082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913925, 31.535278, 29.825583>,  <36.204342, 31.264957, 29.876415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913925, 31.535278, 29.825583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018049, -0.166017, -0.985958,
		-0.687412, -0.718142, 0.108338,
		-0.726044, 0.675804, -0.127084,
		35.696114, 31.738020, 29.787457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699570, 30.980562, 29.545504>,  <36.204342, 31.264957, 29.876415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699570, 30.980562, 29.545504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568501, 31.352379, 29.477882>,  <35.489857, 31.575470, 29.437309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568501, 31.352379, 29.477882>,  <35.699570, 30.980562, 29.545504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568501, 31.352379, 29.477882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146064, -0.226620, -0.962969,
		-0.933432, -0.290848, 0.210030,
		-0.327675, 0.929544, -0.169052,
		35.470200, 31.631243, 29.427166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130772, 30.975245, 29.060692>,  <35.699570, 30.980562, 29.545504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130772, 30.975245, 29.060692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263351, 31.351395, 29.030121>,  <35.342899, 31.577084, 29.011778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263351, 31.351395, 29.030121>,  <35.130772, 30.975245, 29.060692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263351, 31.351395, 29.030121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054457, -0.099941, -0.993502,
		-0.941901, 0.325131, -0.084334,
		0.331447, 0.940373, -0.076429,
		35.362785, 31.633507, 29.007193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718273, 31.410513, 28.581509>,  <35.130772, 30.975245, 29.060692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718273, 31.410513, 28.581509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062740, 31.613762, 28.587162>,  <35.269421, 31.735710, 28.590553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062740, 31.613762, 28.587162>,  <34.718273, 31.410513, 28.581509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062740, 31.613762, 28.587162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095362, -0.134189, -0.986357,
		-0.499292, 0.850768, -0.164015,
		0.861170, 0.508121, 0.014132,
		35.321091, 31.766197, 28.591402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694271, 31.827745, 28.014566>,  <34.718273, 31.410513, 28.581509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694271, 31.827745, 28.014566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086132, 31.836399, 28.094385>,  <35.321247, 31.841591, 28.142277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086132, 31.836399, 28.094385>,  <34.694271, 31.827745, 28.014566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086132, 31.836399, 28.094385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199283, 0.013779, -0.979845,
		-0.023947, 0.999671, 0.009187,
		0.979649, 0.021633, 0.199547,
		35.380028, 31.842890, 28.154249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989922, 32.432388, 27.609341>,  <34.694271, 31.827745, 28.014566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989922, 32.432388, 27.609341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278446, 32.170467, 27.699617>,  <35.451561, 32.013313, 27.753782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278446, 32.170467, 27.699617>,  <34.989922, 32.432388, 27.609341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278446, 32.170467, 27.699617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366019, 0.083746, -0.926831,
		0.587995, 0.751142, 0.300079,
		0.721312, -0.654807, 0.225691,
		35.494839, 31.974026, 27.767324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568039, 32.755726, 27.465031>,  <34.989922, 32.432388, 27.609341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568039, 32.755726, 27.465031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670921, 32.369301, 27.455521>,  <35.732651, 32.137447, 27.449814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670921, 32.369301, 27.455521>,  <35.568039, 32.755726, 27.465031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670921, 32.369301, 27.455521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329331, 0.110758, -0.937696,
		0.908508, 0.233352, 0.346642,
		0.257206, -0.966064, -0.023774,
		35.748085, 32.079483, 27.448389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140774, 32.728741, 27.029280>,  <35.568039, 32.755726, 27.465031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140774, 32.728741, 27.029280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033531, 32.344242, 27.054987>,  <35.969185, 32.113544, 27.070412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033531, 32.344242, 27.054987>,  <36.140774, 32.728741, 27.029280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033531, 32.344242, 27.054987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379731, -0.166749, -0.909944,
		0.885396, -0.219554, 0.409720,
		-0.268102, -0.961244, 0.064268,
		35.953102, 32.055870, 27.074266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610981, 32.315643, 26.806309>,  <36.140774, 32.728741, 27.029280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610981, 32.315643, 26.806309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318932, 32.049004, 26.746227>,  <36.143700, 31.889021, 26.710178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318932, 32.049004, 26.746227>,  <36.610981, 32.315643, 26.806309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318932, 32.049004, 26.746227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366811, -0.196896, -0.909221,
		0.576509, -0.718944, 0.388274,
		-0.730128, -0.666597, -0.150204,
		36.099892, 31.849024, 26.701166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910175, 31.765156, 26.446032>,  <36.610981, 32.315643, 26.806309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910175, 31.765156, 26.446032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516239, 31.756407, 26.377209>,  <36.279877, 31.751158, 26.335915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516239, 31.756407, 26.377209>,  <36.910175, 31.765156, 26.446032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516239, 31.756407, 26.377209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173005, -0.194204, -0.965585,
		-0.012292, -0.980717, 0.195045,
		-0.984844, -0.021875, -0.172056,
		36.220787, 31.749844, 26.325592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854115, 31.349064, 25.923510>,  <36.910175, 31.765156, 26.446032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854115, 31.349064, 25.923510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501774, 31.538074, 25.912092>,  <36.290367, 31.651482, 25.905241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501774, 31.538074, 25.912092>,  <36.854115, 31.349064, 25.923510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501774, 31.538074, 25.912092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013002, -0.036127, -0.999263,
		-0.473210, -0.880575, 0.025679,
		-0.880854, 0.472527, -0.028545,
		36.237518, 31.679832, 25.903528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560616, 31.108948, 25.348148>,  <36.854115, 31.349064, 25.923510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560616, 31.108948, 25.348148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331039, 31.429840, 25.413902>,  <36.193295, 31.622375, 25.453356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331039, 31.429840, 25.413902>,  <36.560616, 31.108948, 25.348148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331039, 31.429840, 25.413902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007955, 0.206193, -0.978479,
		-0.818861, -0.560278, -0.124723,
		-0.573937, 0.802230, 0.164386,
		36.158859, 31.670509, 25.463219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943771, 30.995550, 24.987181>,  <36.560616, 31.108948, 25.348148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943771, 30.995550, 24.987181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985046, 31.391375, 25.027428>,  <36.009811, 31.628868, 25.051575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985046, 31.391375, 25.027428>,  <35.943771, 30.995550, 24.987181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985046, 31.391375, 25.027428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022950, 0.103497, -0.994365,
		-0.994397, 0.100300, 0.033391,
		0.103191, 0.989560, 0.100615,
		36.016003, 31.688242, 25.057611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360359, 31.323460, 24.759682>,  <35.943771, 30.995550, 24.987181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360359, 31.323460, 24.759682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655312, 31.593124, 24.742825>,  <35.832283, 31.754923, 24.732710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655312, 31.593124, 24.742825>,  <35.360359, 31.323460, 24.759682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655312, 31.593124, 24.742825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030746, -0.028826, -0.999111,
		-0.674779, 0.738019, -0.000528,
		0.737379, 0.674164, -0.042143,
		35.876526, 31.795374, 24.730183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127911, 31.776522, 24.242683>,  <35.360359, 31.323460, 24.759682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127911, 31.776522, 24.242683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516090, 31.863678, 24.284159>,  <35.748997, 31.915972, 24.309044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516090, 31.863678, 24.284159>,  <35.127911, 31.776522, 24.242683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516090, 31.863678, 24.284159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096225, 0.044624, -0.994359,
		-0.221288, 0.974953, 0.022339,
		0.970450, 0.217890, 0.103690,
		35.807224, 31.929045, 24.315266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218349, 32.393120, 23.801008>,  <35.127911, 31.776522, 24.242683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218349, 32.393120, 23.801008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584724, 32.242409, 23.856276>,  <35.804550, 32.151981, 23.889437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584724, 32.242409, 23.856276>,  <35.218349, 32.393120, 23.801008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584724, 32.242409, 23.856276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192131, 0.109428, -0.975249,
		0.352336, 0.919816, 0.172620,
		0.915940, -0.376781, 0.138169,
		35.859505, 32.129375, 23.897726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601936, 32.854996, 23.328247>,  <35.218349, 32.393120, 23.801008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601936, 32.854996, 23.328247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835270, 32.543274, 23.419809>,  <35.975269, 32.356239, 23.474747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835270, 32.543274, 23.419809>,  <35.601936, 32.854996, 23.328247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835270, 32.543274, 23.419809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402941, 0.032960, -0.914632,
		0.705235, 0.625774, 0.333242,
		0.583337, -0.779307, 0.228905,
		36.010269, 32.309483, 23.488482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251362, 33.112244, 23.321178>,  <35.601936, 32.854996, 23.328247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251362, 33.112244, 23.321178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207909, 32.725712, 23.227875>,  <36.181835, 32.493793, 23.171892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207909, 32.725712, 23.227875>,  <36.251362, 33.112244, 23.321178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207909, 32.725712, 23.227875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459352, 0.159296, -0.873854,
		0.881586, -0.202082, 0.426579,
		-0.108637, -0.966327, -0.233260,
		36.175316, 32.435814, 23.157896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828163, 32.974667, 22.980112>,  <36.251362, 33.112244, 23.321178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828163, 32.974667, 22.980112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590714, 32.674290, 22.864393>,  <36.448242, 32.494064, 22.794962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590714, 32.674290, 22.864393>,  <36.828163, 32.974667, 22.980112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590714, 32.674290, 22.864393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373492, 0.061337, -0.925603,
		0.712818, -0.657515, 0.244059,
		-0.593628, -0.750941, -0.289298,
		36.412624, 32.449009, 22.777603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287216, 32.482861, 22.679571>,  <36.828163, 32.974667, 22.980112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287216, 32.482861, 22.679571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933022, 32.364006, 22.536676>,  <36.720505, 32.292694, 22.450939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933022, 32.364006, 22.536676>,  <37.287216, 32.482861, 22.679571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933022, 32.364006, 22.536676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375112, -0.003389, -0.926973,
		0.274224, -0.954830, 0.114459,
		-0.885489, -0.297133, -0.357239,
		36.667374, 32.274868, 22.429504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455578, 32.114685, 22.130247>,  <37.287216, 32.482861, 22.679571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455578, 32.114685, 22.130247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069370, 32.189297, 22.057600>,  <36.837646, 32.234062, 22.014011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069370, 32.189297, 22.057600>,  <37.455578, 32.114685, 22.130247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069370, 32.189297, 22.057600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196396, 0.063922, -0.978439,
		-0.170897, -0.980368, -0.098351,
		-0.965517, 0.186528, -0.181616,
		36.779716, 32.245255, 22.003115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238617, 31.675629, 21.544098>,  <37.455578, 32.114685, 22.130247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238617, 31.675629, 21.544098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932262, 31.932709, 21.536583>,  <36.748451, 32.086956, 21.532074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932262, 31.932709, 21.536583>,  <37.238617, 31.675629, 21.544098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932262, 31.932709, 21.536583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103116, 0.093931, -0.990224,
		-0.634653, -0.760337, -0.138213,
		-0.765887, 0.642701, -0.018789,
		36.702496, 32.125519, 21.530947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742855, 31.357964, 20.941284>,  <37.238617, 31.675629, 21.544098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742855, 31.357964, 20.941284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722218, 31.743713, 21.045071>,  <36.709835, 31.975163, 21.107342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722218, 31.743713, 21.045071>,  <36.742855, 31.357964, 20.941284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722218, 31.743713, 21.045071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062603, 0.256177, -0.964601,
		-0.996704, -0.066009, 0.047156,
		-0.051592, 0.964374, 0.259465,
		36.706741, 32.033024, 21.122910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212891, 31.565247, 20.502628>,  <36.742855, 31.357964, 20.941284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212891, 31.565247, 20.502628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352295, 31.921391, 20.619797>,  <36.435936, 32.135078, 20.690098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352295, 31.921391, 20.619797>,  <36.212891, 31.565247, 20.502628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352295, 31.921391, 20.619797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050284, 0.294302, -0.954389,
		-0.935955, 0.347343, 0.057797,
		0.348510, 0.890359, 0.292920,
		36.456848, 32.188499, 20.707672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797421, 32.123825, 20.253004>,  <36.212891, 31.565247, 20.502628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797421, 32.123825, 20.253004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147560, 32.310005, 20.305338>,  <36.357643, 32.421715, 20.336739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147560, 32.310005, 20.305338>,  <35.797421, 32.123825, 20.253004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147560, 32.310005, 20.305338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215072, 0.617211, -0.756832,
		-0.433023, 0.634353, 0.640381,
		0.875349, 0.465454, 0.130835,
		36.410164, 32.449642, 20.344589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680279, 32.785065, 20.039112>,  <35.797421, 32.123825, 20.253004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680279, 32.785065, 20.039112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074837, 32.719299, 20.038689>,  <36.311569, 32.679840, 20.038435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074837, 32.719299, 20.038689>,  <35.680279, 32.785065, 20.039112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074837, 32.719299, 20.038689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090210, 0.546584, -0.832531,
		0.137458, 0.821106, 0.553977,
		0.986391, -0.164412, -0.001060,
		36.370754, 32.669975, 20.038370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955742, 33.390659, 19.755964>,  <35.680279, 32.785065, 20.039112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955742, 33.390659, 19.755964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269653, 33.144764, 19.724426>,  <36.458000, 32.997227, 19.705503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269653, 33.144764, 19.724426>,  <35.955742, 33.390659, 19.755964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269653, 33.144764, 19.724426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327528, 0.519358, -0.789299,
		0.526164, 0.593600, 0.608926,
		0.784778, -0.614741, -0.078847,
		36.505085, 32.960342, 19.700771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615669, 33.797409, 19.687439>,  <35.955742, 33.390659, 19.755964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615669, 33.797409, 19.687439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715946, 33.442253, 19.533138>,  <36.776112, 33.229160, 19.440557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715946, 33.442253, 19.533138>,  <36.615669, 33.797409, 19.687439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715946, 33.442253, 19.533138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087000, 0.417529, -0.904489,
		0.964148, 0.193192, 0.181919,
		0.250696, -0.887889, -0.385752,
		36.791157, 33.175888, 19.417412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242905, 33.864872, 19.378061>,  <36.615669, 33.797409, 19.687439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242905, 33.864872, 19.378061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093918, 33.529816, 19.218246>,  <37.004524, 33.328781, 19.122358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093918, 33.529816, 19.218246>,  <37.242905, 33.864872, 19.378061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093918, 33.529816, 19.218246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290835, 0.303474, -0.907369,
		0.881295, -0.454168, 0.130579,
		-0.372470, -0.837637, -0.399538,
		36.982178, 33.278526, 19.098385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696838, 33.638508, 18.884151>,  <37.242905, 33.864872, 19.378061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696838, 33.638508, 18.884151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355751, 33.479141, 18.749016>,  <37.151100, 33.383522, 18.667934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355751, 33.479141, 18.749016>,  <37.696838, 33.638508, 18.884151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355751, 33.479141, 18.749016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288886, 0.179166, -0.940449,
		0.435217, -0.899537, -0.037682,
		-0.852719, -0.398414, -0.337840,
		37.099934, 33.359615, 18.647663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820953, 33.200157, 18.349392>,  <37.696838, 33.638508, 18.884151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820953, 33.200157, 18.349392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436169, 33.288681, 18.285328>,  <37.205299, 33.341797, 18.246889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436169, 33.288681, 18.285328>,  <37.820953, 33.200157, 18.349392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436169, 33.288681, 18.285328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217155, 0.263768, -0.939825,
		-0.165748, -0.938855, -0.301793,
		-0.961962, 0.221310, -0.160158,
		37.147579, 33.355076, 18.237280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681358, 32.875965, 17.763468>,  <37.820953, 33.200157, 18.349392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681358, 32.875965, 17.763468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419472, 33.174690, 17.810143>,  <37.262341, 33.353928, 17.838148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419472, 33.174690, 17.810143>,  <37.681358, 32.875965, 17.763468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419472, 33.174690, 17.810143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227105, 0.341595, -0.911996,
		-0.720953, -0.570596, -0.393252,
		-0.654714, 0.746815, 0.116688,
		37.223057, 33.398735, 17.845148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211571, 33.020420, 17.145908>,  <37.681358, 32.875965, 17.763468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211571, 33.020420, 17.145908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277882, 33.352932, 17.358131>,  <37.317669, 33.552441, 17.485466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277882, 33.352932, 17.358131>,  <37.211571, 33.020420, 17.145908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277882, 33.352932, 17.358131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229849, 0.490616, -0.840515,
		-0.959004, 0.261285, -0.109737,
		0.165776, 0.831280, 0.530559,
		37.327614, 33.602318, 17.517300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694813, 33.524628, 16.963198>,  <37.211571, 33.020420, 17.145908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694813, 33.524628, 16.963198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746254, 33.838116, 17.206259>,  <37.777119, 34.026211, 17.352095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746254, 33.838116, 17.206259>,  <37.694813, 33.524628, 16.963198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746254, 33.838116, 17.206259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991536, -0.112636, -0.064571,
		0.017838, 0.610812, -0.791575,
		0.128601, 0.783723, 0.607651,
		37.784836, 34.073231, 17.388554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048294, 34.079857, 16.538343>,  <37.694813, 33.524628, 16.963198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048294, 34.079857, 16.538343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138973, 34.100544, 16.927380>,  <38.193382, 34.112957, 17.160801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138973, 34.100544, 16.927380>,  <38.048294, 34.079857, 16.538343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138973, 34.100544, 16.927380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948057, -0.240511, -0.208189,
		0.223152, 0.969267, -0.103555,
		0.226697, 0.051719, 0.972591,
		38.206982, 34.116058, 17.219156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625740, 34.572525, 16.678219>,  <38.048294, 34.079857, 16.538343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625740, 34.572525, 16.678219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596718, 34.325298, 16.991325>,  <38.579304, 34.176960, 17.179190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596718, 34.325298, 16.991325>,  <38.625740, 34.572525, 16.678219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596718, 34.325298, 16.991325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948454, -0.285517, -0.137529,
		0.308496, 0.732441, 0.606927,
		-0.072556, -0.618070, 0.782768,
		38.574951, 34.139877, 17.226156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220818, 34.889904, 17.360292>,  <38.625740, 34.572525, 16.678219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220818, 34.889904, 17.360292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081547, 35.261189, 17.412760>,  <37.997986, 35.483959, 17.444241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081547, 35.261189, 17.412760>,  <38.220818, 34.889904, 17.360292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081547, 35.261189, 17.412760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546344, -0.087220, -0.833007,
		-0.761763, -0.361696, 0.537488,
		-0.348175, 0.928207, 0.131170,
		37.977093, 35.539650, 17.452110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442577, 34.955532, 17.426311>,  <38.220818, 34.889904, 17.360292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442577, 34.955532, 17.426311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548080, 35.305229, 17.263277>,  <37.611382, 35.515049, 17.165457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548080, 35.305229, 17.263277>,  <37.442577, 34.955532, 17.426311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548080, 35.305229, 17.263277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617241, -0.171738, -0.767801,
		-0.741245, 0.454092, 0.494323,
		0.263758, 0.874246, -0.407585,
		37.627209, 35.567505, 17.141001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798138, 35.443951, 17.351866>,  <37.442577, 34.955532, 17.426311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798138, 35.443951, 17.351866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094990, 35.496185, 17.088900>,  <37.273102, 35.527527, 16.931120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094990, 35.496185, 17.088900>,  <36.798138, 35.443951, 17.351866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094990, 35.496185, 17.088900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622746, -0.228377, -0.748353,
		-0.247861, 0.964776, -0.088164,
		0.742127, 0.130584, -0.657416,
		37.317627, 35.535362, 16.891674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522671, 36.083591, 16.861811>,  <36.798138, 35.443951, 17.351866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522671, 36.083591, 16.861811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728214, 35.781109, 16.699778>,  <36.851540, 35.599617, 16.602558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728214, 35.781109, 16.699778>,  <36.522671, 36.083591, 16.861811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728214, 35.781109, 16.699778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769369, -0.197352, -0.607555,
		0.379495, 0.623859, -0.683216,
		0.513862, -0.756209, -0.405084,
		36.882374, 35.554245, 16.578253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285431, 36.829967, 16.586382>,  <36.522671, 36.083591, 16.861811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285431, 36.829967, 16.586382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891663, 36.876263, 16.639339>,  <35.655403, 36.904041, 16.671114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891663, 36.876263, 16.639339>,  <36.285431, 36.829967, 16.586382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891663, 36.876263, 16.639339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026704, -0.842522, 0.538000,
		0.173815, 0.526080, 0.832483,
		-0.984416, 0.115742, 0.132394,
		35.596336, 36.910984, 16.679058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705173, 36.515686, 17.016973>,  <36.285431, 36.829967, 16.586382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705173, 36.515686, 17.016973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541351, 36.150837, 17.023754>,  <35.443058, 35.931927, 17.027822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541351, 36.150837, 17.023754>,  <35.705173, 36.515686, 17.016973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541351, 36.150837, 17.023754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373334, 0.184527, 0.909159,
		-0.832396, 0.366026, -0.416103,
		-0.409558, -0.912126, 0.016950,
		35.418484, 35.877197, 17.028839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028374, 36.527939, 17.266932>,  <35.705173, 36.515686, 17.016973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028374, 36.527939, 17.266932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172577, 36.160610, 17.332325>,  <35.259098, 35.940212, 17.371561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172577, 36.160610, 17.332325>,  <35.028374, 36.527939, 17.266932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172577, 36.160610, 17.332325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408833, 0.001971, 0.912607,
		-0.838386, -0.395837, -0.374729,
		0.360505, -0.918319, 0.163484,
		35.280727, 35.885113, 17.381371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536491, 36.314831, 17.634945>,  <35.028374, 36.527939, 17.266932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536491, 36.314831, 17.634945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845417, 36.069668, 17.701736>,  <35.030773, 35.922569, 17.741812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845417, 36.069668, 17.701736>,  <34.536491, 36.314831, 17.634945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845417, 36.069668, 17.701736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148194, 0.081770, 0.985572,
		-0.617715, -0.785915, -0.027677,
		0.772313, -0.612904, 0.166979,
		35.077110, 35.885796, 17.751829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297070, 35.866882, 18.123777>,  <34.536491, 36.314831, 17.634945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297070, 35.866882, 18.123777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694996, 35.865547, 18.164423>,  <34.933754, 35.864746, 18.188810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694996, 35.865547, 18.164423>,  <34.297070, 35.866882, 18.123777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694996, 35.865547, 18.164423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101492, 0.026217, 0.994491,
		-0.005989, -0.999651, 0.025742,
		0.994819, -0.003344, 0.101614,
		34.993443, 35.864548, 18.194906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543045, 35.317665, 18.475916>,  <34.297070, 35.866882, 18.123777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543045, 35.317665, 18.475916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852665, 35.565849, 18.526327>,  <35.038437, 35.714760, 18.556574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852665, 35.565849, 18.526327>,  <34.543045, 35.317665, 18.475916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852665, 35.565849, 18.526327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061276, -0.271538, 0.960475,
		0.630158, -0.735729, -0.248202,
		0.774045, 0.620459, 0.126029,
		35.084877, 35.751987, 18.564137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114212, 34.955261, 18.863607>,  <34.543045, 35.317665, 18.475916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114212, 34.955261, 18.863607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201023, 35.343246, 18.907545>,  <35.253109, 35.576038, 18.933908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201023, 35.343246, 18.907545>,  <35.114212, 34.955261, 18.863607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201023, 35.343246, 18.907545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283069, -0.170224, 0.943873,
		0.934223, -0.173748, -0.311510,
		0.217023, 0.969967, 0.109845,
		35.266129, 35.634235, 18.940498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759377, 35.002682, 19.295631>,  <35.114212, 34.955261, 18.863607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759377, 35.002682, 19.295631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606007, 35.371105, 19.322874>,  <35.513985, 35.592159, 19.339220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606007, 35.371105, 19.322874>,  <35.759377, 35.002682, 19.295631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606007, 35.371105, 19.322874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161854, -0.005589, 0.986799,
		0.909280, 0.389384, -0.146934,
		-0.383423, 0.921059, 0.068105,
		35.490978, 35.647423, 19.343306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943508, 35.170067, 19.949938>,  <35.759377, 35.002682, 19.295631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943508, 35.170067, 19.949938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715099, 35.491177, 19.881250>,  <35.578053, 35.683842, 19.840038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715099, 35.491177, 19.881250>,  <35.943508, 35.170067, 19.949938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715099, 35.491177, 19.881250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103838, 0.136867, 0.985132,
		0.814341, 0.580363, 0.005204,
		-0.571022, 0.802774, -0.171721,
		35.543793, 35.732010, 19.829735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283611, 35.933243, 20.234730>,  <35.943508, 35.170067, 19.949938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283611, 35.933243, 20.234730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883987, 35.928345, 20.218081>,  <35.644215, 35.925407, 20.208092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883987, 35.928345, 20.218081>,  <36.283611, 35.933243, 20.234730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883987, 35.928345, 20.218081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043192, 0.189795, 0.980873,
		-0.004109, 0.981747, -0.190145,
		-0.999058, -0.012243, -0.041624,
		35.584270, 35.924671, 20.205593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082504, 36.479656, 20.684881>,  <36.283611, 35.933243, 20.234730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082504, 36.479656, 20.684881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758728, 36.246456, 20.656801>,  <35.564465, 36.106537, 20.639954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758728, 36.246456, 20.656801>,  <36.082504, 36.479656, 20.684881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758728, 36.246456, 20.656801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093693, 0.010207, 0.995549,
		-0.579684, 0.812411, -0.062884,
		-0.809437, -0.582995, -0.070200,
		35.515896, 36.071556, 20.635740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762463, 36.699860, 21.219391>,  <36.082504, 36.479656, 20.684881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762463, 36.699860, 21.219391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551056, 36.367050, 21.151976>,  <35.424213, 36.167362, 21.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551056, 36.367050, 21.151976>,  <35.762463, 36.699860, 21.219391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551056, 36.367050, 21.151976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196487, -0.073247, 0.977766,
		-0.825873, 0.549878, -0.124771,
		-0.528513, -0.832027, -0.168537,
		35.392502, 36.117443, 21.101414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060394, 36.808414, 21.423931>,  <35.762463, 36.699860, 21.219391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060394, 36.808414, 21.423931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107487, 36.411476, 21.438807>,  <35.135742, 36.173313, 21.447733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107487, 36.411476, 21.438807>,  <35.060394, 36.808414, 21.423931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107487, 36.411476, 21.438807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325794, -0.003219, 0.945436,
		-0.938082, -0.123423, -0.323680,
		0.117731, -0.992349, 0.037191,
		35.142807, 36.113773, 21.449965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416428, 36.477272, 21.730040>,  <35.060394, 36.808414, 21.423931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416428, 36.477272, 21.730040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695717, 36.195988, 21.783693>,  <34.863289, 36.027218, 21.815886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695717, 36.195988, 21.783693>,  <34.416428, 36.477272, 21.730040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695717, 36.195988, 21.783693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304896, -0.122583, 0.944464,
		-0.647711, -0.700338, -0.299994,
		0.698218, -0.703207, 0.134132,
		34.905182, 35.985027, 21.823933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075642, 35.848461, 22.109146>,  <34.416428, 36.477272, 21.730040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075642, 35.848461, 22.109146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472412, 35.815628, 22.147823>,  <34.710472, 35.795929, 22.171030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472412, 35.815628, 22.147823>,  <34.075642, 35.848461, 22.109146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472412, 35.815628, 22.147823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118782, -0.333857, 0.935110,
		-0.044470, -0.939044, -0.340910,
		0.991924, -0.082079, 0.096695,
		34.769989, 35.791004, 22.176832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202919, 35.140633, 22.455341>,  <34.075642, 35.848461, 22.109146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202919, 35.140633, 22.455341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517059, 35.383743, 22.502390>,  <34.705544, 35.529610, 22.530619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517059, 35.383743, 22.502390>,  <34.202919, 35.140633, 22.455341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517059, 35.383743, 22.502390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004607, -0.184254, 0.982868,
		0.619036, -0.772436, -0.141904,
		0.785349, 0.607777, 0.117619,
		34.752663, 35.566078, 22.537676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530106, 34.896873, 23.043722>,  <34.202919, 35.140633, 22.455341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530106, 34.896873, 23.043722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695564, 35.260410, 23.022182>,  <34.794838, 35.478535, 23.009258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695564, 35.260410, 23.022182>,  <34.530106, 34.896873, 23.043722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695564, 35.260410, 23.022182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002946, 0.060481, 0.998165,
		0.910434, -0.412727, 0.027695,
		0.413645, 0.908845, -0.053848,
		34.819656, 35.533062, 23.006027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168995, 34.769817, 23.326269>,  <34.530106, 34.896873, 23.043722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168995, 34.769817, 23.326269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100273, 35.162151, 23.363026>,  <35.059040, 35.397552, 23.385080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100273, 35.162151, 23.363026>,  <35.168995, 34.769817, 23.326269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100273, 35.162151, 23.363026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145261, -0.067037, 0.987120,
		0.974362, 0.182942, -0.130959,
		-0.171806, 0.980836, 0.091893,
		35.048733, 35.456402, 23.390593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742470, 34.935394, 23.676729>,  <35.168995, 34.769817, 23.326269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742470, 34.935394, 23.676729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464813, 35.218338, 23.730112>,  <35.298218, 35.388103, 23.762142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464813, 35.218338, 23.730112>,  <35.742470, 34.935394, 23.676729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464813, 35.218338, 23.730112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098147, -0.090667, 0.991033,
		0.713113, 0.701018, -0.006489,
		-0.694144, 0.707356, 0.133459,
		35.256569, 35.430546, 23.770149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014286, 35.402367, 24.305674>,  <35.742470, 34.935394, 23.676729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014286, 35.402367, 24.305674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618797, 35.433159, 24.254299>,  <35.381504, 35.451633, 24.223475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618797, 35.433159, 24.254299>,  <36.014286, 35.402367, 24.305674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618797, 35.433159, 24.254299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139752, -0.166368, 0.976110,
		0.053773, 0.983054, 0.175250,
		-0.988725, 0.076980, -0.128437,
		35.322178, 35.456253, 24.215769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841770, 35.795578, 24.901054>,  <36.014286, 35.402367, 24.305674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841770, 35.795578, 24.901054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487076, 35.670982, 24.764425>,  <35.274258, 35.596226, 24.682447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487076, 35.670982, 24.764425>,  <35.841770, 35.795578, 24.901054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487076, 35.670982, 24.764425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320534, -0.118131, 0.939842,
		-0.333100, 0.942879, 0.004909,
		-0.886737, -0.311488, -0.341574,
		35.221054, 35.577538, 24.661953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282127, 36.163307, 25.377010>,  <35.841770, 35.795578, 24.901054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282127, 36.163307, 25.377010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100658, 35.849659, 25.207615>,  <34.991779, 35.661472, 25.105978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100658, 35.849659, 25.207615>,  <35.282127, 36.163307, 25.377010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100658, 35.849659, 25.207615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513110, -0.158703, 0.843523,
		-0.728630, 0.599978, -0.330340,
		-0.453669, -0.784117, -0.423491,
		34.964558, 35.614426, 25.080568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574776, 36.276325, 25.556395>,  <35.282127, 36.163307, 25.377010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574776, 36.276325, 25.556395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636639, 35.886383, 25.492214>,  <34.673756, 35.652420, 25.453707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636639, 35.886383, 25.492214>,  <34.574776, 36.276325, 25.556395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636639, 35.886383, 25.492214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651323, -0.222723, 0.725377,
		-0.742871, -0.007683, -0.669390,
		0.154662, -0.974851, -0.160450,
		34.683037, 35.593929, 25.444078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943977, 35.986286, 25.614838>,  <34.574776, 36.276325, 25.556395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943977, 35.986286, 25.614838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196487, 35.679649, 25.661869>,  <34.347996, 35.495667, 25.690088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196487, 35.679649, 25.661869>,  <33.943977, 35.986286, 25.614838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196487, 35.679649, 25.661869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527976, -0.313735, 0.789184,
		-0.568094, -0.560272, -0.602797,
		0.631277, -0.766593, 0.117580,
		34.385872, 35.449673, 25.697144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445518, 35.306793, 25.774857>,  <33.943977, 35.986286, 25.614838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445518, 35.306793, 25.774857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812958, 35.231667, 25.913940>,  <34.033421, 35.186588, 25.997391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812958, 35.231667, 25.913940>,  <33.445518, 35.306793, 25.774857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812958, 35.231667, 25.913940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394320, -0.377114, 0.838032,
		-0.026273, -0.906922, -0.420477,
		0.918598, -0.187820, 0.347710,
		34.088535, 35.175320, 26.018253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368546, 34.752972, 26.100811>,  <33.445518, 35.306793, 25.774857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368546, 34.752972, 26.100811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721786, 34.860786, 26.254427>,  <33.933731, 34.925476, 26.346596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721786, 34.860786, 26.254427>,  <33.368546, 34.752972, 26.100811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721786, 34.860786, 26.254427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208127, -0.508539, 0.835506,
		0.420500, -0.817763, -0.392992,
		0.883098, 0.269538, 0.384039,
		33.986717, 34.941647, 26.369638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642601, 34.152824, 26.340183>,  <33.368546, 34.752972, 26.100811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642601, 34.152824, 26.340183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787674, 34.464718, 26.544333>,  <33.874718, 34.651852, 26.666822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787674, 34.464718, 26.544333>,  <33.642601, 34.152824, 26.340183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787674, 34.464718, 26.544333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286532, -0.427832, 0.857239,
		0.886771, -0.457142, 0.068252,
		0.362680, 0.779731, 0.510375,
		33.896477, 34.698639, 26.697445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083008, 33.878677, 26.887491>,  <33.642601, 34.152824, 26.340183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083008, 33.878677, 26.887491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040257, 34.250160, 27.029524>,  <34.014606, 34.473049, 27.114744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040257, 34.250160, 27.029524>,  <34.083008, 33.878677, 26.887491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040257, 34.250160, 27.029524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081477, -0.347746, 0.934042,
		0.990928, 0.128756, -0.038503,
		-0.106874, 0.928706, 0.355082,
		34.008194, 34.528770, 27.136049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471062, 33.785507, 27.554924>,  <34.083008, 33.878677, 26.887491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471062, 33.785507, 27.554924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257500, 34.123104, 27.575430>,  <34.129364, 34.325661, 27.587732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257500, 34.123104, 27.575430>,  <34.471062, 33.785507, 27.554924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257500, 34.123104, 27.575430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091006, -0.117633, 0.988878,
		0.840636, 0.523297, 0.139613,
		-0.533900, 0.843992, 0.051263,
		34.097328, 34.376301, 27.590809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747280, 34.276436, 28.033283>,  <34.471062, 33.785507, 27.554924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747280, 34.276436, 28.033283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367641, 34.399700, 28.007202>,  <34.139858, 34.473660, 27.991554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367641, 34.399700, 28.007202>,  <34.747280, 34.276436, 28.033283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367641, 34.399700, 28.007202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033735, 0.106365, 0.993755,
		0.313170, 0.945370, -0.090555,
		-0.949098, 0.308159, -0.065203,
		34.082912, 34.492149, 27.987640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715256, 34.778072, 28.630457>,  <34.747280, 34.276436, 28.033283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715256, 34.778072, 28.630457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334553, 34.696381, 28.538858>,  <34.106129, 34.647366, 28.483900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334553, 34.696381, 28.538858>,  <34.715256, 34.778072, 28.630457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334553, 34.696381, 28.538858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195114, -0.173157, 0.965374,
		-0.236812, 0.963487, 0.124955,
		-0.951762, -0.204231, -0.228996,
		34.049023, 34.635113, 28.470160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296108, 35.248379, 29.037863>,  <34.715256, 34.778072, 28.630457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296108, 35.248379, 29.037863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046673, 34.958469, 28.920666>,  <33.897011, 34.784523, 28.850348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046673, 34.958469, 28.920666>,  <34.296108, 35.248379, 29.037863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046673, 34.958469, 28.920666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280932, -0.141994, 0.949165,
		-0.729529, 0.674202, -0.115065,
		-0.623590, -0.724769, -0.292994,
		33.859596, 34.741039, 28.832767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750015, 35.340508, 29.473871>,  <34.296108, 35.248379, 29.037863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750015, 35.340508, 29.473871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702469, 34.964256, 29.346687>,  <33.673943, 34.738506, 29.270378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702469, 34.964256, 29.346687>,  <33.750015, 35.340508, 29.473871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702469, 34.964256, 29.346687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362837, -0.256932, 0.895732,
		-0.924240, 0.221839, -0.310753,
		-0.118866, -0.940624, -0.317959,
		33.666809, 34.682068, 29.251299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064560, 35.140465, 29.531160>,  <33.750015, 35.340508, 29.473871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064560, 35.140465, 29.531160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281754, 34.805763, 29.559444>,  <33.412071, 34.604942, 29.576414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281754, 34.805763, 29.559444>,  <33.064560, 35.140465, 29.531160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281754, 34.805763, 29.559444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445541, -0.215696, 0.868889,
		-0.711799, -0.503299, -0.489930,
		0.542987, -0.836759, 0.070708,
		33.444649, 34.554737, 29.580658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743553, 34.796543, 30.058634>,  <33.064560, 35.140465, 29.531160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743553, 34.796543, 30.058634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070587, 34.571930, 30.007656>,  <33.266808, 34.437164, 29.977070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070587, 34.571930, 30.007656>,  <32.743553, 34.796543, 30.058634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070587, 34.571930, 30.007656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130370, -0.396104, 0.908903,
		-0.560861, -0.726487, -0.397054,
		0.817581, -0.561532, -0.127447,
		33.315861, 34.403469, 29.969421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590908, 34.094269, 30.348787>,  <32.743553, 34.796543, 30.058634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590908, 34.094269, 30.348787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983837, 34.163502, 30.320284>,  <33.219597, 34.205040, 30.303183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983837, 34.163502, 30.320284>,  <32.590908, 34.094269, 30.348787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983837, 34.163502, 30.320284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122808, -0.308671, 0.943208,
		0.141256, -0.935289, -0.324471,
		0.982326, 0.173081, -0.071259,
		33.278534, 34.215427, 30.298906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976734, 33.491589, 30.520378>,  <32.590908, 34.094269, 30.348787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976734, 33.491589, 30.520378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216808, 33.802799, 30.594633>,  <33.360851, 33.989525, 30.639185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216808, 33.802799, 30.594633>,  <32.976734, 33.491589, 30.520378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216808, 33.802799, 30.594633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027612, -0.252100, 0.967307,
		0.799386, -0.575435, -0.172789,
		0.600183, 0.778023, 0.185636,
		33.396862, 34.036205, 30.650324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535423, 33.120693, 30.939348>,  <32.976734, 33.491589, 30.520378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535423, 33.120693, 30.939348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595093, 33.512272, 30.995085>,  <33.630894, 33.747219, 31.028526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595093, 33.512272, 30.995085>,  <33.535423, 33.120693, 30.939348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595093, 33.512272, 30.995085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328090, -0.181939, 0.926960,
		0.932793, -0.092561, -0.348323,
		0.149174, 0.978943, 0.139343,
		33.639847, 33.805954, 31.036888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050308, 33.111599, 31.335054>,  <33.535423, 33.120693, 30.939348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050308, 33.111599, 31.335054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926579, 33.490223, 31.371593>,  <33.852341, 33.717396, 31.393517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926579, 33.490223, 31.371593>,  <34.050308, 33.111599, 31.335054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926579, 33.490223, 31.371593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328829, 0.016331, 0.944248,
		0.892296, 0.322114, -0.316308,
		-0.309321, 0.946560, 0.091348,
		33.833782, 33.774193, 31.398998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570705, 33.536907, 31.675510>,  <34.050308, 33.111599, 31.335054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570705, 33.536907, 31.675510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217220, 33.717880, 31.723446>,  <34.005131, 33.826462, 31.752207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217220, 33.717880, 31.723446>,  <34.570705, 33.536907, 31.675510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217220, 33.717880, 31.723446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203352, 0.140541, 0.968967,
		0.421547, 0.880656, -0.216200,
		-0.883712, 0.452429, 0.119839,
		33.952106, 33.853611, 31.759398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802509, 34.122772, 32.084702>,  <34.570705, 33.536907, 31.675510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802509, 34.122772, 32.084702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406090, 34.091728, 32.128155>,  <34.168240, 34.073101, 32.154228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406090, 34.091728, 32.128155>,  <34.802509, 34.122772, 32.084702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406090, 34.091728, 32.128155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073419, 0.362787, 0.928975,
		-0.111504, 0.928635, -0.353842,
		-0.991048, -0.077606, 0.108632,
		34.108776, 34.068447, 32.160744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734631, 34.677544, 32.453674>,  <34.802509, 34.122772, 32.084702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734631, 34.677544, 32.453674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419422, 34.440586, 32.520725>,  <34.230297, 34.298412, 32.560955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419422, 34.440586, 32.520725>,  <34.734631, 34.677544, 32.453674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419422, 34.440586, 32.520725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065514, 0.190038, 0.979588,
		-0.612154, 0.782917, -0.110944,
		-0.788020, -0.592391, 0.167625,
		34.183018, 34.262871, 32.571014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306671, 35.039631, 31.873205>,  <34.734631, 34.677544, 32.453674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306671, 35.039631, 31.873205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633610, 35.201206, 32.037537>,  <34.829773, 35.298153, 32.136135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633610, 35.201206, 32.037537>,  <34.306671, 35.039631, 31.873205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633610, 35.201206, 32.037537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016475, 0.729156, -0.684150,
		-0.575915, 0.552417, 0.602625,
		0.817343, 0.403940, 0.410831,
		34.878811, 35.322388, 32.160786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262680, 35.761372, 31.898857>,  <34.306671, 35.039631, 31.873205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262680, 35.761372, 31.898857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651104, 35.665974, 31.893637>,  <34.884159, 35.608734, 31.890505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651104, 35.665974, 31.893637>,  <34.262680, 35.761372, 31.898857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651104, 35.665974, 31.893637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181723, 0.773149, -0.607633,
		0.155010, 0.587674, 0.794111,
		0.971056, -0.238497, -0.013052,
		34.942421, 35.594425, 31.889721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612183, 36.317604, 31.948956>,  <34.262680, 35.761372, 31.898857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612183, 36.317604, 31.948956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899681, 36.079418, 31.805389>,  <35.072182, 35.936504, 31.719250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899681, 36.079418, 31.805389>,  <34.612183, 36.317604, 31.948956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899681, 36.079418, 31.805389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283325, 0.722264, -0.630921,
		0.634924, 0.351784, 0.687837,
		0.718748, -0.595468, -0.358914,
		35.115307, 35.900776, 31.697716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079262, 36.859882, 31.769539>,  <34.612183, 36.317604, 31.948956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079262, 36.859882, 31.769539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234318, 36.529240, 31.606342>,  <35.327351, 36.330853, 31.508425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234318, 36.529240, 31.606342>,  <35.079262, 36.859882, 31.769539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234318, 36.529240, 31.606342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424135, 0.552900, -0.717225,
		0.818442, 0.104979, 0.564918,
		0.387636, -0.826608, -0.407991,
		35.350609, 36.281258, 31.483946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815662, 36.912804, 31.744843>,  <35.079262, 36.859882, 31.769539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815662, 36.912804, 31.744843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708248, 36.651291, 31.461870>,  <35.643799, 36.494381, 31.292088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708248, 36.651291, 31.461870>,  <35.815662, 36.912804, 31.744843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708248, 36.651291, 31.461870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462198, 0.556889, -0.690107,
		0.845140, -0.512290, 0.152634,
		-0.268534, -0.653784, -0.707428,
		35.627689, 36.455154, 31.249641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357029, 36.885021, 31.240717>,  <35.815662, 36.912804, 31.744843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357029, 36.885021, 31.240717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042320, 36.731407, 31.047428>,  <35.853493, 36.639240, 30.931454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042320, 36.731407, 31.047428>,  <36.357029, 36.885021, 31.240717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042320, 36.731407, 31.047428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371734, 0.330164, -0.867644,
		0.492747, -0.862270, -0.117006,
		-0.786774, -0.384033, -0.483223,
		35.806290, 36.616196, 30.902462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695843, 36.597679, 30.619753>,  <36.357029, 36.885021, 31.240717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695843, 36.597679, 30.619753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304653, 36.647736, 30.552937>,  <36.069939, 36.677769, 30.512846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304653, 36.647736, 30.552937>,  <36.695843, 36.597679, 30.619753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304653, 36.647736, 30.552937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192254, 0.228567, -0.954356,
		-0.081254, -0.965451, -0.247593,
		-0.977976, 0.125146, -0.167040,
		36.011261, 36.685280, 30.502825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536293, 36.216091, 29.999374>,  <36.695843, 36.597679, 30.619753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536293, 36.216091, 29.999374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253174, 36.494793, 30.045942>,  <36.083302, 36.662014, 30.073883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253174, 36.494793, 30.045942>,  <36.536293, 36.216091, 29.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253174, 36.494793, 30.045942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058364, 0.221922, -0.973316,
		-0.703999, -0.682117, -0.197741,
		-0.707798, 0.696754, 0.116422,
		36.040833, 36.703819, 30.080870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089184, 36.054173, 29.469006>,  <36.536293, 36.216091, 29.999374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089184, 36.054173, 29.469006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968590, 36.423721, 29.563295>,  <35.896233, 36.645451, 29.619869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968590, 36.423721, 29.563295>,  <36.089184, 36.054173, 29.469006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968590, 36.423721, 29.563295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020533, 0.253462, -0.967127,
		-0.953251, -0.286731, -0.095384,
		-0.301482, 0.923873, 0.235725,
		35.878143, 36.700882, 29.634012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406708, 36.287014, 29.212465>,  <36.089184, 36.054173, 29.469006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406708, 36.287014, 29.212465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611443, 36.627541, 29.258566>,  <35.734283, 36.831856, 29.286226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611443, 36.627541, 29.258566>,  <35.406708, 36.287014, 29.212465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611443, 36.627541, 29.258566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116926, 0.201941, -0.972393,
		-0.851088, 0.484231, 0.202902,
		0.511837, 0.851317, 0.115250,
		35.764996, 36.882935, 29.293140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116470, 36.790421, 28.685135>,  <35.406708, 36.287014, 29.212465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116470, 36.790421, 28.685135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472885, 36.943733, 28.782415>,  <35.686733, 37.035721, 28.840784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472885, 36.943733, 28.782415>,  <35.116470, 36.790421, 28.685135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472885, 36.943733, 28.782415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127958, 0.301962, -0.944694,
		-0.435523, 0.872876, 0.220015,
		0.891037, 0.383283, 0.243203,
		35.740196, 37.058720, 28.855377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148293, 37.409607, 28.324947>,  <35.116470, 36.790421, 28.685135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148293, 37.409607, 28.324947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528091, 37.340904, 28.429981>,  <35.755970, 37.299683, 28.493002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528091, 37.340904, 28.429981>,  <35.148293, 37.409607, 28.324947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528091, 37.340904, 28.429981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293334, 0.188842, -0.937173,
		0.111375, 0.966871, 0.229687,
		0.949500, -0.171753, 0.262584,
		35.812943, 37.289379, 28.508757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533642, 37.926529, 27.974220>,  <35.148293, 37.409607, 28.324947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533642, 37.926529, 27.974220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800137, 37.641354, 28.061718>,  <35.960033, 37.470249, 28.114216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800137, 37.641354, 28.061718>,  <35.533642, 37.926529, 27.974220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800137, 37.641354, 28.061718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459075, 0.160937, -0.873699,
		0.587686, 0.682512, 0.434513,
		0.666240, -0.712935, 0.218744,
		36.000008, 37.427475, 28.127340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197685, 38.245338, 27.836523>,  <35.533642, 37.926529, 27.974220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197685, 38.245338, 27.836523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228584, 37.846649, 27.826979>,  <36.247124, 37.607433, 27.821253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228584, 37.846649, 27.826979>,  <36.197685, 38.245338, 27.836523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228584, 37.846649, 27.826979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411229, 0.053653, -0.909952,
		0.908253, 0.060481, 0.414028,
		0.077249, -0.996726, -0.023859,
		36.251759, 37.547630, 27.819820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794922, 38.238010, 27.537029>,  <36.197685, 38.245338, 27.836523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794922, 38.238010, 27.537029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622108, 37.877934, 27.515097>,  <36.518421, 37.661888, 27.501938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622108, 37.877934, 27.515097>,  <36.794922, 38.238010, 27.537029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622108, 37.877934, 27.515097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473724, -0.174782, -0.863156,
		0.767420, -0.398886, 0.501953,
		-0.432033, -0.900190, -0.054831,
		36.492500, 37.607876, 27.498648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297535, 37.797409, 27.257992>,  <36.794922, 38.238010, 27.537029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297535, 37.797409, 27.257992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971760, 37.585625, 27.163029>,  <36.776295, 37.458553, 27.106050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971760, 37.585625, 27.163029>,  <37.297535, 37.797409, 27.257992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971760, 37.585625, 27.163029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374793, -0.167665, -0.911822,
		0.442972, -0.831599, 0.334992,
		-0.814436, -0.529464, -0.237406,
		36.727428, 37.426785, 27.091806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545956, 37.098446, 27.026854>,  <37.297535, 37.797409, 27.257992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545956, 37.098446, 27.026854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181541, 37.165443, 26.876143>,  <36.962894, 37.205643, 26.785715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181541, 37.165443, 26.876143>,  <37.545956, 37.098446, 27.026854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181541, 37.165443, 26.876143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375511, -0.040405, -0.925937,
		-0.170316, -0.985044, -0.026087,
		-0.911034, 0.167497, -0.376777,
		36.908230, 37.215691, 26.763109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414974, 36.558605, 26.520737>,  <37.545956, 37.098446, 27.026854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414974, 36.558605, 26.520737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174088, 36.863499, 26.425797>,  <37.029556, 37.046436, 26.368834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174088, 36.863499, 26.425797>,  <37.414974, 36.558605, 26.520737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174088, 36.863499, 26.425797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081122, -0.237340, -0.968033,
		-0.794200, -0.602221, 0.081096,
		-0.602217, 0.762233, -0.237349,
		36.993423, 37.092167, 26.354591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108822, 36.223907, 26.019003>,  <37.414974, 36.558605, 26.520737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108822, 36.223907, 26.019003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996479, 36.604729, 25.970486>,  <36.929073, 36.833221, 25.941376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996479, 36.604729, 25.970486>,  <37.108822, 36.223907, 26.019003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996479, 36.604729, 25.970486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042783, -0.138672, -0.989414,
		-0.958796, -0.272694, 0.079679,
		-0.280857, 0.952055, -0.121291,
		36.912224, 36.890347, 25.934099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412815, 36.298622, 25.566637>,  <37.108822, 36.223907, 26.019003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412815, 36.298622, 25.566637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630478, 36.633053, 25.538731>,  <36.761074, 36.833710, 25.521986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630478, 36.633053, 25.538731>,  <36.412815, 36.298622, 25.566637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630478, 36.633053, 25.538731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241965, 0.076770, -0.967243,
		-0.803335, 0.543212, 0.244076,
		0.544156, 0.836078, -0.069767,
		36.793724, 36.883877, 25.517801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951054, 36.822136, 25.190994>,  <36.412815, 36.298622, 25.566637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951054, 36.822136, 25.190994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325531, 36.962383, 25.181087>,  <36.550217, 37.046532, 25.175144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325531, 36.962383, 25.181087>,  <35.951054, 36.822136, 25.190994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325531, 36.962383, 25.181087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104058, 0.209165, -0.972328,
		-0.335740, 0.912860, 0.232304,
		0.936190, 0.350622, -0.024765,
		36.606388, 37.067570, 25.173658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896339, 37.287590, 24.666002>,  <35.951054, 36.822136, 25.190994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896339, 37.287590, 24.666002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290413, 37.227802, 24.699659>,  <36.526855, 37.191929, 24.719852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290413, 37.227802, 24.699659>,  <35.896339, 37.287590, 24.666002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290413, 37.227802, 24.699659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109610, 0.171290, -0.979104,
		0.131933, 0.973817, 0.185135,
		0.985180, -0.149468, 0.084142,
		36.585968, 37.182961, 24.724901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381088, 37.732353, 24.197252>,  <35.896339, 37.287590, 24.666002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381088, 37.732353, 24.197252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603832, 37.409073, 24.273899>,  <36.737476, 37.215103, 24.319887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603832, 37.409073, 24.273899>,  <36.381088, 37.732353, 24.197252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603832, 37.409073, 24.273899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336089, 0.008278, -0.941794,
		0.759575, 0.588845, 0.276238,
		0.556858, -0.808203, 0.191616,
		36.770889, 37.166611, 24.331385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107666, 37.902451, 24.057364>,  <36.381088, 37.732353, 24.197252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107666, 37.902451, 24.057364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087730, 37.504005, 24.028330>,  <37.075768, 37.264938, 24.010910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087730, 37.504005, 24.028330>,  <37.107666, 37.902451, 24.057364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087730, 37.504005, 24.028330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292960, 0.054898, -0.954547,
		0.954825, -0.068837, 0.289086,
		-0.049838, -0.996116, -0.072584,
		37.072781, 37.205170, 24.006554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695183, 37.663845, 23.702747>,  <37.107666, 37.902451, 24.057364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695183, 37.663845, 23.702747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431866, 37.363682, 23.678930>,  <37.273876, 37.183582, 23.664640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431866, 37.363682, 23.678930>,  <37.695183, 37.663845, 23.702747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431866, 37.363682, 23.678930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281616, -0.172145, -0.943959,
		0.698104, -0.638165, 0.324647,
		-0.658288, -0.750408, -0.059542,
		37.234379, 37.138561, 23.661068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024513, 37.078545, 23.310850>,  <37.695183, 37.663845, 23.702747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024513, 37.078545, 23.310850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637253, 36.984501, 23.276438>,  <37.404896, 36.928074, 23.255791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637253, 36.984501, 23.276438>,  <38.024513, 37.078545, 23.310850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637253, 36.984501, 23.276438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185289, -0.441805, -0.877768,
		0.168366, -0.865754, 0.471298,
		-0.968153, -0.235113, -0.086030,
		37.346806, 36.913967, 23.250629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054604, 36.446739, 23.236912>,  <38.024513, 37.078545, 23.310850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054604, 36.446739, 23.236912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689903, 36.545395, 23.105530>,  <37.471085, 36.604588, 23.026701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689903, 36.545395, 23.105530>,  <38.054604, 36.446739, 23.236912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689903, 36.545395, 23.105530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186057, -0.464921, -0.865581,
		-0.366193, -0.850304, 0.378002,
		-0.911749, 0.246640, -0.328456,
		37.416378, 36.619389, 23.006992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829041, 35.844994, 22.843672>,  <38.054604, 36.446739, 23.236912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829041, 35.844994, 22.843672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602386, 36.150299, 22.719513>,  <37.466393, 36.333485, 22.645018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602386, 36.150299, 22.719513>,  <37.829041, 35.844994, 22.843672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602386, 36.150299, 22.719513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019777, -0.364004, -0.931187,
		-0.823729, -0.533785, 0.191163,
		-0.566638, 0.763265, -0.310398,
		37.432396, 36.379280, 22.626394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330151, 35.570164, 22.396666>,  <37.829041, 35.844994, 22.843672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330151, 35.570164, 22.396666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351463, 35.953743, 22.285248>,  <37.364250, 36.183891, 22.218397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351463, 35.953743, 22.285248>,  <37.330151, 35.570164, 22.396666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351463, 35.953743, 22.285248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067754, -0.281771, -0.957086,
		-0.996279, 0.032118, -0.079985,
		0.053278, 0.958944, -0.278546,
		37.367447, 36.241425, 22.201683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935101, 35.623405, 21.787544>,  <37.330151, 35.570164, 22.396666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935101, 35.623405, 21.787544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183090, 35.937241, 21.784576>,  <37.331882, 36.125542, 21.782795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183090, 35.937241, 21.784576>,  <36.935101, 35.623405, 21.787544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183090, 35.937241, 21.784576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366356, -0.297828, -0.881522,
		-0.693843, 0.543800, -0.472084,
		0.619972, 0.784589, -0.007421,
		37.369083, 36.172619, 21.782351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930046, 35.889366, 21.119446>,  <36.935101, 35.623405, 21.787544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930046, 35.889366, 21.119446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251064, 36.081539, 21.260929>,  <37.443676, 36.196842, 21.345819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251064, 36.081539, 21.260929>,  <36.930046, 35.889366, 21.119446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251064, 36.081539, 21.260929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426026, -0.046460, -0.903517,
		-0.417645, 0.875801, -0.241962,
		0.802543, 0.480431, 0.353710,
		37.491829, 36.225670, 21.367043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027664, 36.450310, 20.650969>,  <36.930046, 35.889366, 21.119446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027664, 36.450310, 20.650969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377453, 36.408379, 20.840418>,  <37.587326, 36.383221, 20.954086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377453, 36.408379, 20.840418>,  <37.027664, 36.450310, 20.650969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377453, 36.408379, 20.840418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483666, 0.113788, -0.867825,
		0.037081, 0.987959, 0.150207,
		0.874467, -0.104830, 0.473622,
		37.639793, 36.376930, 20.982504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525764, 37.009281, 20.290714>,  <37.027664, 36.450310, 20.650969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525764, 37.009281, 20.290714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740005, 36.732307, 20.484070>,  <37.868549, 36.566124, 20.600084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740005, 36.732307, 20.484070>,  <37.525764, 37.009281, 20.290714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740005, 36.732307, 20.484070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734876, 0.100168, -0.670763,
		0.416040, 0.714493, 0.562504,
		0.535600, -0.692435, 0.483390,
		37.900684, 36.524578, 20.629087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164333, 37.430611, 20.374344>,  <37.525764, 37.009281, 20.290714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164333, 37.430611, 20.374344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227875, 37.035812, 20.384106>,  <38.265999, 36.798931, 20.389963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227875, 37.035812, 20.384106>,  <38.164333, 37.430611, 20.374344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227875, 37.035812, 20.384106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580137, 0.073315, -0.811213,
		0.798878, 0.143024, 0.584241,
		0.158856, -0.987000, 0.024404,
		38.275532, 36.739712, 20.391426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913506, 37.271267, 20.333330>,  <38.164333, 37.430611, 20.374344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913506, 37.271267, 20.333330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734978, 36.934422, 20.212234>,  <38.627861, 36.732315, 20.139578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734978, 36.934422, 20.212234>,  <38.913506, 37.271267, 20.333330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734978, 36.934422, 20.212234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589304, -0.021992, -0.807612,
		0.673442, -0.538854, 0.506075,
		-0.446315, -0.842112, -0.302738,
		38.601082, 36.681789, 20.121412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423306, 36.993786, 19.856657>,  <38.913506, 37.271267, 20.333330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423306, 36.993786, 19.856657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100803, 36.765228, 19.795393>,  <38.907303, 36.628094, 19.758635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100803, 36.765228, 19.795393>,  <39.423306, 36.993786, 19.856657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100803, 36.765228, 19.795393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401509, -0.338433, -0.851031,
		0.434437, -0.747647, 0.502283,
		-0.806259, -0.571391, -0.153159,
		38.858925, 36.593811, 19.749445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758938, 36.380322, 19.627083>,  <39.423306, 36.993786, 19.856657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758938, 36.380322, 19.627083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379166, 36.380463, 19.501492>,  <39.151302, 36.380547, 19.426138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379166, 36.380463, 19.501492>,  <39.758938, 36.380322, 19.627083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379166, 36.380463, 19.501492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278250, -0.462345, -0.841911,
		-0.145460, -0.886700, 0.438867,
		-0.949430, 0.000349, -0.313977,
		39.094337, 36.380566, 19.407299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567207, 35.706627, 19.397442>,  <39.758938, 36.380322, 19.627083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567207, 35.706627, 19.397442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282101, 35.922791, 19.218592>,  <39.111034, 36.052490, 19.111282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282101, 35.922791, 19.218592>,  <39.567207, 35.706627, 19.397442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282101, 35.922791, 19.218592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126829, -0.527663, -0.839932,
		-0.689838, -0.655385, 0.307562,
		-0.712768, 0.540409, -0.447124,
		39.068272, 36.084911, 19.084455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322609, 35.650738, 19.130865>,  <39.567207, 35.706627, 19.397442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322609, 35.650738, 19.130865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710861, 35.639660, 19.226452>,  <40.943813, 35.633015, 19.283804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710861, 35.639660, 19.226452>,  <40.322609, 35.650738, 19.130865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710861, 35.639660, 19.226452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234261, 0.117176, 0.965086,
		-0.054728, -0.992725, 0.107248,
		0.970632, -0.027693, 0.238969,
		41.002052, 35.631351, 19.298143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234997, 35.317844, 19.692532>,  <40.322609, 35.650738, 19.130865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234997, 35.317844, 19.692532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623722, 35.399319, 19.740023>,  <40.856956, 35.448204, 19.768517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623722, 35.399319, 19.740023>,  <40.234997, 35.317844, 19.692532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623722, 35.399319, 19.740023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067695, -0.241308, 0.968085,
		0.225832, -0.948833, -0.220718,
		0.971812, 0.203683, 0.118727,
		40.915264, 35.460423, 19.775640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653316, 34.720474, 20.036428>,  <40.234997, 35.317844, 19.692532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653316, 34.720474, 20.036428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795841, 35.089058, 20.098345>,  <40.881355, 35.310207, 20.135494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795841, 35.089058, 20.098345>,  <40.653316, 34.720474, 20.036428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795841, 35.089058, 20.098345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012556, -0.160926, 0.986887,
		0.934281, -0.353587, -0.045770,
		0.356316, 0.921455, 0.154789,
		40.902737, 35.365494, 20.144781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967430, 34.568405, 20.690090>,  <40.653316, 34.720474, 20.036428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967430, 34.568405, 20.690090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974319, 34.963474, 20.627848>,  <40.978455, 35.200516, 20.590502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974319, 34.963474, 20.627848>,  <40.967430, 34.568405, 20.690090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974319, 34.963474, 20.627848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168581, 0.156271, 0.973221,
		0.985537, 0.009466, 0.169194,
		0.017228, 0.987669, -0.155607,
		40.979488, 35.259773, 20.581165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383858, 34.762650, 21.188017>,  <40.967430, 34.568405, 20.690090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383858, 34.762650, 21.188017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170147, 35.086338, 21.090275>,  <41.041920, 35.280552, 21.031630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170147, 35.086338, 21.090275>,  <41.383858, 34.762650, 21.188017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170147, 35.086338, 21.090275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234822, 0.135611, 0.962532,
		0.812041, 0.571635, 0.117570,
		-0.534273, 0.809224, -0.244354,
		41.009865, 35.329105, 21.016968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532845, 35.321190, 21.661337>,  <41.383858, 34.762650, 21.188017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532845, 35.321190, 21.661337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171776, 35.390308, 21.503691>,  <40.955135, 35.431778, 21.409103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171776, 35.390308, 21.503691>,  <41.532845, 35.321190, 21.661337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171776, 35.390308, 21.503691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360546, 0.196303, 0.911851,
		0.234929, 0.965198, -0.114897,
		-0.902671, 0.172794, -0.394116,
		40.900974, 35.442146, 21.385456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305264, 35.914940, 21.922012>,  <41.532845, 35.321190, 21.661337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305264, 35.914940, 21.922012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962948, 35.744358, 21.804867>,  <40.757561, 35.642010, 21.734579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962948, 35.744358, 21.804867>,  <41.305264, 35.914940, 21.922012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962948, 35.744358, 21.804867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402759, 0.193932, 0.894525,
		-0.324677, 0.883475, -0.337722,
		-0.855786, -0.426452, -0.292862,
		40.706211, 35.616421, 21.717009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783077, 36.308609, 22.258572>,  <41.305264, 35.914940, 21.922012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783077, 36.308609, 22.258572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590729, 35.972397, 22.158760>,  <40.475319, 35.770668, 22.098873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590729, 35.972397, 22.158760>,  <40.783077, 36.308609, 22.258572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590729, 35.972397, 22.158760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611258, 0.117345, 0.782684,
		-0.628591, 0.528898, -0.570211,
		-0.480871, -0.840534, -0.249531,
		40.446468, 35.720238, 22.083900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027466, 36.471767, 22.349773>,  <40.783077, 36.308609, 22.258572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027466, 36.471767, 22.349773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057861, 36.073116, 22.337442>,  <40.076099, 35.833923, 22.330044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057861, 36.073116, 22.337442>,  <40.027466, 36.471767, 22.349773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057861, 36.073116, 22.337442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612743, -0.071065, 0.787081,
		-0.786620, -0.040924, -0.616079,
		0.075992, -0.996632, -0.030825,
		40.080658, 35.774128, 22.328196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366055, 36.230263, 22.356707>,  <40.027466, 36.471767, 22.349773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366055, 36.230263, 22.356707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565220, 35.918510, 22.508837>,  <39.684719, 35.731461, 22.600115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565220, 35.918510, 22.508837>,  <39.366055, 36.230263, 22.356707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565220, 35.918510, 22.508837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694403, -0.095591, 0.713209,
		-0.519506, -0.619215, -0.588801,
		0.497914, -0.779381, 0.380325,
		39.714596, 35.684696, 22.622934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921051, 35.604908, 22.505890>,  <39.366055, 36.230263, 22.356707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921051, 35.604908, 22.505890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228916, 35.517841, 22.745970>,  <39.413635, 35.465599, 22.890018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228916, 35.517841, 22.745970>,  <38.921051, 35.604908, 22.505890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228916, 35.517841, 22.745970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629605, -0.414735, 0.656958,
		0.105925, -0.883525, -0.456250,
		0.769661, -0.217669, 0.600202,
		39.459816, 35.452541, 22.926031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728683, 35.021297, 23.030359>,  <38.921051, 35.604908, 22.505890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728683, 35.021297, 23.030359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059940, 35.168793, 23.199221>,  <39.258694, 35.257290, 23.300537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059940, 35.168793, 23.199221>,  <38.728683, 35.021297, 23.030359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059940, 35.168793, 23.199221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347297, -0.253603, 0.902812,
		0.439958, -0.894271, -0.081959,
		0.828144, 0.368735, 0.422152,
		39.308384, 35.279415, 23.325867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852982, 34.530777, 23.523834>,  <38.728683, 35.021297, 23.030359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852982, 34.530777, 23.523834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070496, 34.852299, 23.620335>,  <39.201004, 35.045212, 23.678234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070496, 34.852299, 23.620335>,  <38.852982, 34.530777, 23.523834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070496, 34.852299, 23.620335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197039, -0.157149, 0.967719,
		0.815766, -0.573767, 0.072924,
		0.543785, 0.803801, 0.241251,
		39.233631, 35.093437, 23.692711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314602, 34.314884, 24.114355>,  <38.852982, 34.530777, 23.523834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314602, 34.314884, 24.114355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270298, 34.712196, 24.100971>,  <39.243717, 34.950584, 24.092941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270298, 34.712196, 24.100971>,  <39.314602, 34.314884, 24.114355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270298, 34.712196, 24.100971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212573, 0.009210, 0.977102,
		0.970847, 0.115338, 0.210126,
		-0.110761, 0.993283, -0.033459,
		39.237068, 35.010181, 24.090933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691071, 34.555786, 24.595844>,  <39.314602, 34.314884, 24.114355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691071, 34.555786, 24.595844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426113, 34.851376, 24.546612>,  <39.267139, 35.028728, 24.517073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426113, 34.851376, 24.546612>,  <39.691071, 34.555786, 24.595844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426113, 34.851376, 24.546612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155216, 0.025356, 0.987555,
		0.732901, 0.673254, 0.097905,
		-0.662393, 0.738976, -0.123083,
		39.227394, 35.073067, 24.509687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830788, 35.010983, 25.139479>,  <39.691071, 34.555786, 24.595844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830788, 35.010983, 25.139479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465202, 35.110817, 25.011492>,  <39.245850, 35.170715, 24.934700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465202, 35.110817, 25.011492>,  <39.830788, 35.010983, 25.139479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465202, 35.110817, 25.011492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268116, 0.220458, 0.937823,
		0.304604, 0.942924, -0.134573,
		-0.913964, 0.249584, -0.319966,
		39.191013, 35.185692, 24.915503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685921, 35.600002, 25.365904>,  <39.830788, 35.010983, 25.139479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685921, 35.600002, 25.365904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310902, 35.488811, 25.282257>,  <39.085892, 35.422096, 25.232069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310902, 35.488811, 25.282257>,  <39.685921, 35.600002, 25.365904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310902, 35.488811, 25.282257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284742, 0.267973, 0.920387,
		-0.199813, 0.922451, -0.330391,
		-0.937548, -0.277981, -0.209116,
		39.029636, 35.405418, 25.219522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231544, 36.182846, 25.488247>,  <39.685921, 35.600002, 25.365904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231544, 36.182846, 25.488247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040333, 35.832592, 25.515797>,  <38.925606, 35.622440, 25.532328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040333, 35.832592, 25.515797>,  <39.231544, 36.182846, 25.488247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040333, 35.832592, 25.515797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322814, 0.248075, 0.913373,
		-0.816871, 0.414386, -0.401256,
		-0.478030, -0.875639, 0.068875,
		38.896923, 35.569901, 25.536459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541035, 36.255024, 25.551121>,  <39.231544, 36.182846, 25.488247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541035, 36.255024, 25.551121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634727, 35.910950, 25.732327>,  <38.690941, 35.704506, 25.841049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634727, 35.910950, 25.732327>,  <38.541035, 36.255024, 25.551121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634727, 35.910950, 25.732327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415726, 0.332599, 0.846493,
		-0.878811, -0.386603, -0.279696,
		0.234230, -0.860183, 0.453013,
		38.704998, 35.652893, 25.868231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097958, 36.297497, 26.100544>,  <38.541035, 36.255024, 25.551121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097958, 36.297497, 26.100544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313713, 35.968712, 26.173695>,  <38.443165, 35.771442, 26.217587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313713, 35.968712, 26.173695>,  <38.097958, 36.297497, 26.100544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313713, 35.968712, 26.173695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170550, 0.106040, 0.979627,
		-0.824606, -0.559586, -0.082989,
		0.539385, -0.821960, 0.182879,
		38.475529, 35.722122, 26.228558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703285, 35.893280, 26.600124>,  <38.097958, 36.297497, 26.100544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703285, 35.893280, 26.600124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075726, 35.754608, 26.645485>,  <38.299191, 35.671406, 26.672701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075726, 35.754608, 26.645485>,  <37.703285, 35.893280, 26.600124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075726, 35.754608, 26.645485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035498, 0.223293, 0.974105,
		-0.363028, -0.911016, 0.195602,
		0.931102, -0.346684, 0.113400,
		38.355057, 35.650604, 26.679504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695492, 35.576817, 27.171713>,  <37.703285, 35.893280, 26.600124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695492, 35.576817, 27.171713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095020, 35.566753, 27.155073>,  <38.334736, 35.560715, 27.145088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095020, 35.566753, 27.155073>,  <37.695492, 35.576817, 27.171713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095020, 35.566753, 27.155073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042839, 0.050884, 0.997786,
		-0.022987, -0.998388, 0.051902,
		0.998818, -0.025159, -0.041600,
		38.394665, 35.559204, 27.142593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826294, 35.157310, 27.703016>,  <37.695492, 35.576817, 27.171713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826294, 35.157310, 27.703016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151249, 35.378738, 27.629705>,  <38.346222, 35.511597, 27.585720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151249, 35.378738, 27.629705>,  <37.826294, 35.157310, 27.703016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151249, 35.378738, 27.629705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216691, 0.005206, 0.976226,
		0.541365, -0.832786, -0.115724,
		0.812385, 0.553571, -0.183276,
		38.394966, 35.544811, 27.574722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313335, 34.910919, 28.238678>,  <37.826294, 35.157310, 27.703016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313335, 34.910919, 28.238678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437004, 35.269398, 28.111403>,  <38.511204, 35.484486, 28.035036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437004, 35.269398, 28.111403>,  <38.313335, 34.910919, 28.238678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437004, 35.269398, 28.111403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118020, 0.295839, 0.947919,
		0.943656, -0.330619, -0.014305,
		0.309168, 0.896197, -0.318189,
		38.529755, 35.538258, 28.015945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811630, 35.146488, 28.726700>,  <38.313335, 34.910919, 28.238678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811630, 35.146488, 28.726700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686783, 35.486523, 28.557024>,  <38.611874, 35.690544, 28.455219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686783, 35.486523, 28.557024>,  <38.811630, 35.146488, 28.726700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686783, 35.486523, 28.557024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075691, 0.422823, 0.903046,
		0.947024, 0.313963, -0.067627,
		-0.312117, 0.850087, -0.424188,
		38.593147, 35.741550, 28.429768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166565, 35.768410, 29.055332>,  <38.811630, 35.146488, 28.726700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166565, 35.768410, 29.055332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830498, 35.933022, 28.914043>,  <38.628857, 36.031788, 28.829269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830498, 35.933022, 28.914043>,  <39.166565, 35.768410, 29.055332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830498, 35.933022, 28.914043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084338, 0.544241, 0.834679,
		0.535732, 0.731059, -0.422545,
		-0.840166, 0.411527, -0.353224,
		38.578449, 36.056480, 28.808077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217842, 36.477066, 29.251129>,  <39.166565, 35.768410, 29.055332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217842, 36.477066, 29.251129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828220, 36.429192, 29.174294>,  <38.594448, 36.400467, 29.128191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828220, 36.429192, 29.174294>,  <39.217842, 36.477066, 29.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828220, 36.429192, 29.174294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225985, 0.560777, 0.796530,
		0.012389, 0.819271, -0.573272,
		-0.974052, -0.119682, -0.192091,
		38.536003, 36.393288, 29.116667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051731, 37.116512, 29.283037>,  <39.217842, 36.477066, 29.251129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051731, 37.116512, 29.283037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713749, 36.904377, 29.310741>,  <38.510960, 36.777096, 29.327364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713749, 36.904377, 29.310741>,  <39.051731, 37.116512, 29.283037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713749, 36.904377, 29.310741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257268, 0.516550, 0.816694,
		-0.468899, 0.672251, -0.572899,
		-0.844954, -0.530335, 0.069261,
		38.460262, 36.745277, 29.331520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483253, 37.664722, 29.310183>,  <39.051731, 37.116512, 29.283037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483253, 37.664722, 29.310183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409798, 37.306499, 29.472294>,  <38.365723, 37.091564, 29.569561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409798, 37.306499, 29.472294>,  <38.483253, 37.664722, 29.310183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409798, 37.306499, 29.472294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169634, 0.434975, 0.884320,
		-0.968246, 0.093649, -0.231797,
		-0.183642, -0.895559, 0.405277,
		38.354706, 37.037830, 29.593878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837105, 37.740654, 29.617285>,  <38.483253, 37.664722, 29.310183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837105, 37.740654, 29.617285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954170, 37.406902, 29.804111>,  <38.024410, 37.206650, 29.916208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954170, 37.406902, 29.804111>,  <37.837105, 37.740654, 29.617285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954170, 37.406902, 29.804111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216147, 0.418087, 0.882317,
		-0.931465, -0.359181, -0.057988,
		0.292667, -0.834381, 0.467069,
		38.041969, 37.156590, 29.944233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440857, 37.750008, 30.225529>,  <37.837105, 37.740654, 29.617285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440857, 37.750008, 30.225529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701527, 37.462788, 30.323280>,  <37.857929, 37.290455, 30.381931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701527, 37.462788, 30.323280>,  <37.440857, 37.750008, 30.225529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701527, 37.462788, 30.323280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021147, 0.304865, 0.952161,
		-0.758205, -0.625666, 0.183488,
		0.651674, -0.718053, 0.244381,
		37.897030, 37.247372, 30.396595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129345, 37.407066, 30.744463>,  <37.440857, 37.750008, 30.225529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129345, 37.407066, 30.744463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524143, 37.359161, 30.787350>,  <37.761021, 37.330418, 30.813082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524143, 37.359161, 30.787350>,  <37.129345, 37.407066, 30.744463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524143, 37.359161, 30.787350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087539, 0.158941, 0.983400,
		-0.134818, -0.979997, 0.146390,
		0.986996, -0.119766, 0.107216,
		37.820244, 37.323231, 30.819515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147812, 37.076176, 31.289288>,  <37.129345, 37.407066, 30.744463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147812, 37.076176, 31.289288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511711, 37.236958, 31.247732>,  <37.730049, 37.333427, 31.222799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511711, 37.236958, 31.247732>,  <37.147812, 37.076176, 31.289288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511711, 37.236958, 31.247732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073701, 0.089900, 0.993220,
		0.408573, -0.911234, 0.052161,
		0.909745, 0.401959, -0.103890,
		37.784634, 37.357544, 31.216566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666119, 36.839832, 31.753716>,  <37.147812, 37.076176, 31.289288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666119, 36.839832, 31.753716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855125, 37.181522, 31.666967>,  <37.968529, 37.386536, 31.614920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855125, 37.181522, 31.666967>,  <37.666119, 36.839832, 31.753716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855125, 37.181522, 31.666967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216940, 0.125765, 0.968050,
		0.854203, -0.504470, -0.125889,
		0.472519, 0.854221, -0.216868,
		37.996880, 37.437790, 31.601908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281620, 36.809708, 32.075233>,  <37.666119, 36.839832, 31.753716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281620, 36.809708, 32.075233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276833, 37.206860, 32.027821>,  <38.273960, 37.445152, 31.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276833, 37.206860, 32.027821>,  <38.281620, 36.809708, 32.075233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276833, 37.206860, 32.027821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376072, 0.114305, 0.919513,
		0.926513, -0.033568, -0.374762,
		-0.011971, 0.992878, -0.118529,
		38.273243, 37.504723, 31.992262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977337, 37.009296, 32.210667>,  <38.281620, 36.809708, 32.075233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977337, 37.009296, 32.210667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759548, 37.340797, 32.262390>,  <38.628876, 37.539700, 32.293423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759548, 37.340797, 32.262390>,  <38.977337, 37.009296, 32.210667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759548, 37.340797, 32.262390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336012, 0.074257, 0.938926,
		0.768534, 0.554668, -0.318902,
		-0.544473, 0.828752, 0.129306,
		38.596207, 37.589424, 32.301182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475922, 37.483341, 32.430946>,  <38.977337, 37.009296, 32.210667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475922, 37.483341, 32.430946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112072, 37.598412, 32.550823>,  <38.893761, 37.667454, 32.622749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112072, 37.598412, 32.550823>,  <39.475922, 37.483341, 32.430946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112072, 37.598412, 32.550823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387872, 0.329782, 0.860697,
		0.148770, 0.899158, -0.411561,
		-0.909628, 0.287679, 0.299696,
		38.839184, 37.684715, 32.640732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662819, 37.858944, 32.922142>,  <39.475922, 37.483341, 32.430946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662819, 37.858944, 32.922142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268215, 37.854374, 32.987457>,  <39.031452, 37.851631, 33.026646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268215, 37.854374, 32.987457>,  <39.662819, 37.858944, 32.922142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268215, 37.854374, 32.987457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151053, 0.320802, 0.935024,
		-0.063062, 0.947077, -0.314750,
		-0.986512, -0.011421, 0.163289,
		38.972263, 37.850948, 33.036446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525578, 38.495274, 33.263180>,  <39.662819, 37.858944, 32.922142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525578, 38.495274, 33.263180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231499, 38.245029, 33.367569>,  <39.055054, 38.094883, 33.430202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231499, 38.245029, 33.367569>,  <39.525578, 38.495274, 33.263180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231499, 38.245029, 33.367569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204588, 0.162251, 0.965307,
		-0.646245, 0.763080, 0.008706,
		-0.735194, -0.625606, 0.260971,
		39.010941, 38.057346, 33.445862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113342, 38.819683, 33.909996>,  <39.525578, 38.495274, 33.263180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113342, 38.819683, 33.909996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037357, 38.426971, 33.911495>,  <38.991764, 38.191345, 33.912395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037357, 38.426971, 33.911495>,  <39.113342, 38.819683, 33.909996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037357, 38.426971, 33.911495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187391, -0.032511, 0.981747,
		-0.963742, 0.187200, 0.190153,
		-0.189965, -0.981784, 0.003747,
		38.980370, 38.132435, 33.912621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638424, 38.651276, 34.488773>,  <39.113342, 38.819683, 33.909996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638424, 38.651276, 34.488773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863239, 38.326969, 34.423332>,  <38.998127, 38.132385, 34.384068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863239, 38.326969, 34.423332>,  <38.638424, 38.651276, 34.488773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863239, 38.326969, 34.423332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181699, -0.071939, 0.980719,
		-0.806908, -0.580926, 0.106884,
		0.562036, -0.810771, -0.163601,
		39.031849, 38.083736, 34.374252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551846, 38.312862, 35.049274>,  <38.638424, 38.651276, 34.488773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551846, 38.312862, 35.049274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877312, 38.120224, 34.919033>,  <39.072590, 38.004642, 34.840889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877312, 38.120224, 34.919033>,  <38.551846, 38.312862, 35.049274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877312, 38.120224, 34.919033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247518, -0.219798, 0.943623,
		-0.526010, -0.848385, -0.059639,
		0.813664, -0.481593, -0.325606,
		39.121410, 37.975746, 34.821350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497055, 37.667210, 35.136665>,  <38.551846, 38.312862, 35.049274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497055, 37.667210, 35.136665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879395, 37.784187, 35.148190>,  <39.108799, 37.854374, 35.155106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879395, 37.784187, 35.148190>,  <38.497055, 37.667210, 35.136665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879395, 37.784187, 35.148190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031684, -0.200028, 0.979278,
		0.292149, -0.935128, -0.200462,
		0.955848, 0.292446, 0.028810,
		39.166149, 37.871922, 35.156834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003788, 37.068577, 35.365299>,  <38.497055, 37.667210, 35.136665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003788, 37.068577, 35.365299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151424, 37.424042, 35.474148>,  <39.240005, 37.637321, 35.539455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151424, 37.424042, 35.474148>,  <39.003788, 37.068577, 35.365299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151424, 37.424042, 35.474148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090472, -0.325756, 0.941115,
		0.924978, -0.322740, -0.200633,
		0.369093, 0.888663, 0.272118,
		39.262154, 37.690639, 35.555782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389549, 36.904285, 36.026020>,  <39.003788, 37.068577, 35.365299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389549, 36.904285, 36.026020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426697, 37.301239, 35.993664>,  <39.448986, 37.539413, 35.974251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426697, 37.301239, 35.993664>,  <39.389549, 36.904285, 36.026020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426697, 37.301239, 35.993664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291330, 0.050604, 0.955283,
		0.952104, -0.112285, -0.284413,
		0.092872, 0.992387, -0.080892,
		39.454559, 37.598953, 35.969395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037373, 37.025234, 36.419804>,  <39.389549, 36.904285, 36.026020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037373, 37.025234, 36.419804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835434, 37.368919, 36.386620>,  <39.714272, 37.575130, 36.366707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835434, 37.368919, 36.386620>,  <40.037373, 37.025234, 36.419804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835434, 37.368919, 36.386620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203721, 0.211990, 0.955803,
		0.838823, 0.465636, -0.282062,
		-0.504851, 0.859211, -0.082962,
		39.683979, 37.626682, 36.361732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440372, 37.592239, 36.804489>,  <40.037373, 37.025234, 36.419804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440372, 37.592239, 36.804489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063999, 37.724342, 36.774643>,  <39.838173, 37.803604, 36.756737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063999, 37.724342, 36.774643>,  <40.440372, 37.592239, 36.804489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063999, 37.724342, 36.774643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026378, 0.291203, 0.956297,
		0.337555, 0.897846, -0.282715,
		-0.940936, 0.330261, -0.074614,
		39.781719, 37.823421, 36.752258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424355, 38.228603, 37.204525>,  <40.440372, 37.592239, 36.804489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424355, 38.228603, 37.204525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040062, 38.121017, 37.177216>,  <39.809486, 38.056465, 37.160828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040062, 38.121017, 37.177216>,  <40.424355, 38.228603, 37.204525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040062, 38.121017, 37.177216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172568, 0.386412, 0.906039,
		-0.217308, 0.882238, -0.417651,
		-0.960728, -0.268963, -0.068276,
		39.751842, 38.040329, 37.156734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014683, 38.823086, 37.521011>,  <40.424355, 38.228603, 37.204525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014683, 38.823086, 37.521011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770756, 38.506527, 37.538074>,  <39.624401, 38.316593, 37.548313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770756, 38.506527, 37.538074>,  <40.014683, 38.823086, 37.521011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770756, 38.506527, 37.538074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240884, 0.236356, 0.941334,
		-0.755047, 0.563768, -0.334768,
		-0.609818, -0.791392, 0.042657,
		39.587811, 38.269108, 37.550873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346508, 39.060146, 37.804169>,  <40.014683, 38.823086, 37.521011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346508, 39.060146, 37.804169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331654, 38.664059, 37.857960>,  <39.322742, 38.426407, 37.890232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331654, 38.664059, 37.857960>,  <39.346508, 39.060146, 37.804169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331654, 38.664059, 37.857960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394746, 0.138159, 0.908343,
		-0.918039, -0.019351, -0.396017,
		-0.037136, -0.990221, 0.134474,
		39.320515, 38.366993, 37.898300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682270, 38.850739, 38.011391>,  <39.346508, 39.060146, 37.804169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682270, 38.850739, 38.011391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942463, 38.591560, 38.169907>,  <39.098579, 38.436054, 38.265015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942463, 38.591560, 38.169907>,  <38.682270, 38.850739, 38.011391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942463, 38.591560, 38.169907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328878, 0.230023, 0.915930,
		-0.684630, -0.726122, -0.063471,
		0.650477, -0.647948, 0.396287,
		39.137608, 38.397175, 38.288792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294518, 38.473003, 38.351212>,  <38.682270, 38.850739, 38.011391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294518, 38.473003, 38.351212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655357, 38.387821, 38.501343>,  <38.871861, 38.336712, 38.591423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655357, 38.387821, 38.501343>,  <38.294518, 38.473003, 38.351212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655357, 38.387821, 38.501343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378980, 0.025013, 0.925067,
		-0.206386, -0.976742, -0.058141,
		0.902097, -0.212955, 0.375328,
		38.925987, 38.323936, 38.613941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167847, 37.958084, 38.849415>,  <38.294518, 38.473003, 38.351212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167847, 37.958084, 38.849415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529804, 38.118099, 38.907558>,  <38.746979, 38.214108, 38.942444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529804, 38.118099, 38.907558>,  <38.167847, 37.958084, 38.849415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529804, 38.118099, 38.907558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154405, -0.009728, 0.987960,
		0.396636, -0.916447, 0.052965,
		0.904897, 0.400039, 0.145363,
		38.801273, 38.238110, 38.951168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440014, 37.675709, 39.638611>,  <38.167847, 37.958084, 38.849415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440014, 37.675709, 39.638611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678867, 37.973217, 39.518452>,  <38.822178, 38.151722, 39.446358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678867, 37.973217, 39.518452>,  <38.440014, 37.675709, 39.638611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678867, 37.973217, 39.518452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141302, 0.271102, 0.952123,
		0.789598, -0.610992, 0.056788,
		0.597135, 0.743769, -0.300396,
		38.858009, 38.196346, 39.428333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187054, 37.627628, 39.657913>,  <38.440014, 37.675709, 39.638611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187054, 37.627628, 39.657913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123199, 38.021008, 39.692177>,  <39.084888, 38.257034, 39.712734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123199, 38.021008, 39.692177>,  <39.187054, 37.627628, 39.657913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123199, 38.021008, 39.692177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542969, 0.015007, 0.839619,
		0.824440, 0.180542, -0.536380,
		-0.159636, 0.983453, 0.085656,
		39.075310, 38.316044, 39.717873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840054, 37.922863, 39.792400>,  <39.187054, 37.627628, 39.657913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840054, 37.922863, 39.792400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568516, 38.184433, 39.926003>,  <39.405594, 38.341373, 40.006165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568516, 38.184433, 39.926003>,  <39.840054, 37.922863, 39.792400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568516, 38.184433, 39.926003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587222, 0.210369, 0.781611,
		0.440847, 0.726726, -0.526804,
		-0.678840, 0.653922, 0.334009,
		39.364864, 38.380611, 40.026207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026272, 38.634357, 39.996246>,  <39.840054, 37.922863, 39.792400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026272, 38.634357, 39.996246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710922, 38.589348, 40.238174>,  <39.521713, 38.562344, 40.383331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710922, 38.589348, 40.238174>,  <40.026272, 38.634357, 39.996246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710922, 38.589348, 40.238174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573498, 0.221386, 0.788725,
		-0.222651, 0.968672, -0.110001,
		-0.788369, -0.112525, 0.604824,
		39.474411, 38.555592, 40.419621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007847, 39.220448, 40.473400>,  <40.026272, 38.634357, 39.996246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007847, 39.220448, 40.473400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804695, 38.918621, 40.639626>,  <39.682804, 38.737526, 40.739361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804695, 38.918621, 40.639626>,  <40.007847, 39.220448, 40.473400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804695, 38.918621, 40.639626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688946, -0.066204, 0.721782,
		-0.517121, 0.652876, 0.553479,
		-0.507877, -0.754566, 0.415561,
		39.652332, 38.692249, 40.764294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909054, 39.442764, 41.229984>,  <40.007847, 39.220448, 40.473400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909054, 39.442764, 41.229984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865311, 39.047264, 41.189178>,  <39.839066, 38.809963, 41.164696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865311, 39.047264, 41.189178>,  <39.909054, 39.442764, 41.229984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865311, 39.047264, 41.189178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729996, -0.149544, 0.666890,
		-0.674645, -0.001537, 0.738140,
		-0.109359, -0.988754, -0.102011,
		39.832504, 38.750637, 41.158577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840183, 39.122929, 41.952835>,  <39.909054, 39.442764, 41.229984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840183, 39.122929, 41.952835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976269, 38.848164, 41.695957>,  <40.057919, 38.683304, 41.541832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976269, 38.848164, 41.695957>,  <39.840183, 39.122929, 41.952835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976269, 38.848164, 41.695957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758315, -0.203435, 0.619332,
		-0.556071, -0.697686, 0.451685,
		0.340211, -0.686912, -0.642190,
		40.078331, 38.642090, 41.503300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394783, 38.718708, 42.280640>,  <39.840183, 39.122929, 41.952835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394783, 38.718708, 42.280640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438000, 38.537960, 41.926434>,  <40.463928, 38.429512, 41.713909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438000, 38.537960, 41.926434>,  <40.394783, 38.718708, 42.280640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438000, 38.537960, 41.926434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949667, -0.216544, 0.226365,
		-0.294042, -0.865402, 0.405732,
		0.108038, -0.451872, -0.885517,
		40.470409, 38.402397, 41.660778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717068, 38.028282, 42.348896>,  <40.394783, 38.718708, 42.280640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717068, 38.028282, 42.348896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780968, 38.107414, 41.962044>,  <40.819309, 38.154892, 41.729931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780968, 38.107414, 41.962044>,  <40.717068, 38.028282, 42.348896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780968, 38.107414, 41.962044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957561, -0.269156, 0.103114,
		-0.239910, -0.942560, -0.232432,
		0.159751, 0.197830, -0.967131,
		40.828892, 38.166763, 41.671906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982723, 37.474571, 42.035522>,  <40.717068, 38.028282, 42.348896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982723, 37.474571, 42.035522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083595, 37.782738, 41.801304>,  <41.144119, 37.967636, 41.660774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083595, 37.782738, 41.801304>,  <40.982723, 37.474571, 42.035522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083595, 37.782738, 41.801304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940967, -0.336426, -0.037387,
		-0.225796, -0.541550, -0.809777,
		0.252183, 0.770416, -0.585545,
		41.159252, 38.013863, 41.625641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062687, 37.384575, 41.328400>,  <40.982723, 37.474571, 42.035522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062687, 37.384575, 41.328400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293522, 37.636906, 41.535870>,  <41.432022, 37.788303, 41.660351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293522, 37.636906, 41.535870>,  <41.062687, 37.384575, 41.328400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293522, 37.636906, 41.535870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768773, -0.633935, -0.084346,
		0.275598, 0.447417, -0.850802,
		0.577091, 0.630828, 0.518674,
		41.466648, 37.826153, 41.691471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858315, 38.080433, 40.859371>,  <41.062687, 37.384575, 41.328400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858315, 38.080433, 40.859371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669365, 38.006207, 41.204029>,  <40.555996, 37.961670, 41.410824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669365, 38.006207, 41.204029>,  <40.858315, 38.080433, 40.859371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669365, 38.006207, 41.204029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879408, 0.164865, -0.446611,
		-0.059181, -0.968703, -0.241063,
		-0.472377, -0.185562, 0.861642,
		40.527653, 37.950539, 41.462521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345104, 37.720303, 40.646618>,  <40.858315, 38.080433, 40.859371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345104, 37.720303, 40.646618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229401, 37.889561, 40.990078>,  <40.159981, 37.991116, 41.196152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229401, 37.889561, 40.990078>,  <40.345104, 37.720303, 40.646618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229401, 37.889561, 40.990078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861733, 0.275485, -0.426057,
		-0.416829, -0.863165, 0.284954,
		-0.289256, 0.423147, 0.858648,
		40.142624, 38.016506, 41.247673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614761, 37.496929, 40.973625>,  <40.345104, 37.720303, 40.646618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614761, 37.496929, 40.973625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691345, 37.876705, 41.073151>,  <39.737293, 38.104572, 41.132866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691345, 37.876705, 41.073151>,  <39.614761, 37.496929, 40.973625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691345, 37.876705, 41.073151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870782, 0.281277, -0.403264,
		-0.452861, -0.139457, 0.880607,
		0.191457, 0.949439, 0.248816,
		39.748783, 38.161537, 41.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023434, 37.759243, 41.383564>,  <39.614761, 37.496929, 40.973625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023434, 37.759243, 41.383564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210350, 38.036514, 41.164059>,  <39.322502, 38.202877, 41.032356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210350, 38.036514, 41.164059>,  <39.023434, 37.759243, 41.383564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210350, 38.036514, 41.164059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843991, 0.164922, -0.510372,
		-0.263278, 0.701641, 0.662106,
		0.467294, 0.693181, -0.548759,
		39.350536, 38.244469, 40.999432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538605, 38.347572, 41.270214>,  <39.023434, 37.759243, 41.383564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538605, 38.347572, 41.270214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831753, 38.384380, 41.000568>,  <39.007641, 38.406467, 40.838779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831753, 38.384380, 41.000568>,  <38.538605, 38.347572, 41.270214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831753, 38.384380, 41.000568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679157, 0.158111, -0.716761,
		0.040627, 0.983124, 0.178373,
		0.732868, 0.092023, -0.674119,
		39.051613, 38.411987, 40.798332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412907, 38.904827, 40.810207>,  <38.538605, 38.347572, 41.270214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412907, 38.904827, 40.810207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656719, 38.657063, 40.612301>,  <38.803009, 38.508404, 40.493557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656719, 38.657063, 40.612301>,  <38.412907, 38.904827, 40.810207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656719, 38.657063, 40.612301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688077, -0.103404, -0.718232,
		0.393723, 0.778224, -0.489233,
		0.609534, -0.619415, -0.494766,
		38.839581, 38.471237, 40.463871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521561, 39.052532, 40.000141>,  <38.412907, 38.904827, 40.810207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521561, 39.052532, 40.000141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547970, 38.659042, 40.066986>,  <38.563816, 38.422947, 40.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547970, 38.659042, 40.066986>,  <38.521561, 39.052532, 40.000141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547970, 38.659042, 40.066986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510383, -0.177207, -0.841491,
		0.857409, -0.029731, -0.513776,
		0.066026, -0.983724, 0.167113,
		38.567776, 38.363926, 40.117119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867157, 39.498550, 39.477482>,  <38.521561, 39.052532, 40.000141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867157, 39.498550, 39.477482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004215, 39.141186, 39.593689>,  <39.086452, 38.926765, 39.663414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004215, 39.141186, 39.593689>,  <38.867157, 39.498550, 39.477482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004215, 39.141186, 39.593689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211340, -0.228012, -0.950445,
		0.915383, 0.387069, 0.110686,
		0.342650, -0.893414, 0.290521,
		39.107010, 38.873161, 39.680847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517616, 39.325043, 39.086575>,  <38.867157, 39.498550, 39.477482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517616, 39.325043, 39.086575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347412, 38.977173, 39.186661>,  <39.245289, 38.768452, 39.246712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347412, 38.977173, 39.186661>,  <39.517616, 39.325043, 39.086575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347412, 38.977173, 39.186661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175544, -0.350564, -0.919940,
		0.887764, -0.347521, 0.301835,
		-0.425511, -0.869674, 0.250213,
		39.219757, 38.716270, 39.261726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999653, 38.728584, 38.927727>,  <39.517616, 39.325043, 39.086575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999653, 38.728584, 38.927727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618027, 38.610622, 38.948887>,  <39.389053, 38.539845, 38.961582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618027, 38.610622, 38.948887>,  <39.999653, 38.728584, 38.927727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618027, 38.610622, 38.948887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008544, -0.203285, -0.979082,
		0.299491, -0.933652, 0.196466,
		-0.954061, -0.294905, 0.052904,
		39.331810, 38.522152, 38.964760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147705, 37.953835, 38.839466>,  <39.999653, 38.728584, 38.927727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147705, 37.953835, 38.839466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754623, 38.025223, 38.819687>,  <39.518776, 38.068054, 38.807819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754623, 38.025223, 38.819687>,  <40.147705, 37.953835, 38.839466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754623, 38.025223, 38.819687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008103, -0.225303, -0.974255,
		-0.185010, -0.957804, 0.219960,
		-0.982703, 0.178464, -0.049445,
		39.459812, 38.078762, 38.804852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874836, 37.389042, 38.465275>,  <40.147705, 37.953835, 38.839466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874836, 37.389042, 38.465275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644909, 37.714756, 38.432983>,  <39.506950, 37.910183, 38.413609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644909, 37.714756, 38.432983>,  <39.874836, 37.389042, 38.465275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644909, 37.714756, 38.432983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126829, -0.186125, -0.974306,
		-0.808390, -0.549813, 0.210264,
		-0.574822, 0.814287, -0.080729,
		39.472462, 37.959042, 38.408764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290348, 37.123085, 38.144745>,  <39.874836, 37.389042, 38.465275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290348, 37.123085, 38.144745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322636, 37.514301, 38.067894>,  <39.342007, 37.749031, 38.021782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322636, 37.514301, 38.067894>,  <39.290348, 37.123085, 38.144745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322636, 37.514301, 38.067894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181369, -0.175127, -0.967696,
		-0.980097, 0.112958, 0.163251,
		0.080719, 0.978045, -0.192128,
		39.346851, 37.807716, 38.010254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755680, 37.281750, 37.585857>,  <39.290348, 37.123085, 38.144745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755680, 37.281750, 37.585857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044102, 37.558025, 37.563850>,  <39.217155, 37.723793, 37.550648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044102, 37.558025, 37.563850>,  <38.755680, 37.281750, 37.585857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044102, 37.558025, 37.563850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075813, -0.000275, -0.997122,
		-0.688719, 0.723149, 0.052166,
		0.721053, 0.690692, -0.055013,
		39.260418, 37.765232, 37.547348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523090, 37.847221, 37.066589>,  <38.755680, 37.281750, 37.585857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523090, 37.847221, 37.066589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916645, 37.912735, 37.095261>,  <39.152779, 37.952042, 37.112461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916645, 37.912735, 37.095261>,  <38.523090, 37.847221, 37.066589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916645, 37.912735, 37.095261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016899, 0.313925, -0.949298,
		-0.177976, 0.935215, 0.306100,
		0.983890, 0.163780, 0.071675,
		39.211811, 37.961868, 37.116764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589024, 38.371616, 36.598198>,  <38.523090, 37.847221, 37.066589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589024, 38.371616, 36.598198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946457, 38.199814, 36.650410>,  <39.160915, 38.096733, 36.681736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946457, 38.199814, 36.650410>,  <38.589024, 38.371616, 36.598198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946457, 38.199814, 36.650410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174212, 0.063825, -0.982638,
		0.413715, 0.900807, 0.131857,
		0.893583, -0.429503, 0.130526,
		39.214531, 38.070961, 36.689568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981911, 38.823864, 36.367157>,  <38.589024, 38.371616, 36.598198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981911, 38.823864, 36.367157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147408, 38.460083, 36.350586>,  <39.246704, 38.241814, 36.340641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147408, 38.460083, 36.350586>,  <38.981911, 38.823864, 36.367157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147408, 38.460083, 36.350586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039190, 0.063260, -0.997227,
		0.909551, 0.410970, 0.061815,
		0.413741, -0.909451, -0.041432,
		39.271530, 38.187248, 36.338158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643845, 38.915947, 35.975616>,  <38.981911, 38.823864, 36.367157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643845, 38.915947, 35.975616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546276, 38.528030, 35.976082>,  <39.487736, 38.295280, 35.976360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546276, 38.528030, 35.976082>,  <39.643845, 38.915947, 35.975616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546276, 38.528030, 35.976082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049862, -0.013735, -0.998662,
		0.968512, -0.243537, 0.051706,
		-0.243921, -0.969794, 0.001159,
		39.473099, 38.237091, 35.976429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001106, 38.744671, 35.448311>,  <39.643845, 38.915947, 35.975616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001106, 38.744671, 35.448311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818947, 38.391727, 35.495747>,  <39.709652, 38.179962, 35.524208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818947, 38.391727, 35.495747>,  <40.001106, 38.744671, 35.448311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818947, 38.391727, 35.495747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012152, -0.139353, -0.990168,
		0.890205, -0.449479, 0.074184,
		-0.455397, -0.882355, 0.118591,
		39.682327, 38.127022, 35.531322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358318, 38.294193, 35.004303>,  <40.001106, 38.744671, 35.448311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358318, 38.294193, 35.004303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990528, 38.156433, 35.080151>,  <39.769855, 38.073776, 35.125660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990528, 38.156433, 35.080151>,  <40.358318, 38.294193, 35.004303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990528, 38.156433, 35.080151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114814, -0.226064, -0.967323,
		0.376011, -0.911200, 0.168318,
		-0.919475, -0.344398, 0.189621,
		39.714687, 38.053112, 35.137035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288498, 37.643902, 34.699863>,  <40.358318, 38.294193, 35.004303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288498, 37.643902, 34.699863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925316, 37.810932, 34.713997>,  <39.707409, 37.911152, 34.722477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925316, 37.810932, 34.713997>,  <40.288498, 37.643902, 34.699863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925316, 37.810932, 34.713997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162012, -0.272009, -0.948559,
		-0.386490, -0.866970, 0.314624,
		-0.907953, 0.417581, 0.035330,
		39.652931, 37.936207, 34.724598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794518, 37.156708, 34.851952>,  <40.288498, 37.643902, 34.699863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794518, 37.156708, 34.851952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070702, 37.432678, 34.764996>,  <41.236412, 37.598263, 34.712822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070702, 37.432678, 34.764996>,  <40.794518, 37.156708, 34.851952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070702, 37.432678, 34.764996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466320, 0.194785, -0.862905,
		-0.553000, 0.697176, 0.456220,
		0.690461, 0.689930, -0.217391,
		41.277840, 37.639656, 34.699780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010536, 36.392162, 34.906002>,  <40.794518, 37.156708, 34.851952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010536, 36.392162, 34.906002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316044, 36.275188, 35.136185>,  <41.499348, 36.205006, 35.274292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316044, 36.275188, 35.136185>,  <41.010536, 36.392162, 34.906002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316044, 36.275188, 35.136185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228022, -0.711786, -0.664355,
		0.603878, 0.638627, -0.476956,
		0.763765, -0.292433, 0.575453,
		41.545174, 36.187458, 35.308819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719887, 36.308720, 34.543720>,  <41.010536, 36.392162, 34.906002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719887, 36.308720, 34.543720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644409, 36.050903, 34.840088>,  <41.599121, 35.896214, 35.017906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644409, 36.050903, 34.840088>,  <41.719887, 36.308720, 34.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644409, 36.050903, 34.840088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198408, -0.763933, -0.614037,
		0.961784, 0.031137, 0.272034,
		-0.188696, -0.644544, 0.740916,
		41.587799, 35.857540, 35.062363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328121, 36.348846, 34.825401>,  <41.719887, 36.308720, 34.543720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328121, 36.348846, 34.825401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650875, 36.152660, 34.957088>,  <42.844528, 36.034946, 35.036102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650875, 36.152660, 34.957088>,  <42.328121, 36.348846, 34.825401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650875, 36.152660, 34.957088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480785, 0.221469, -0.848409,
		0.343206, 0.842848, 0.414509,
		0.806880, -0.490469, 0.329219,
		42.892941, 36.005520, 35.055855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945778, 36.760353, 34.741192>,  <42.328121, 36.348846, 34.825401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945778, 36.760353, 34.741192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053513, 36.375908, 34.716812>,  <43.118153, 36.145241, 34.702183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053513, 36.375908, 34.716812>,  <42.945778, 36.760353, 34.741192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053513, 36.375908, 34.716812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307580, 0.145824, -0.940282,
		0.912607, 0.234507, 0.334896,
		0.269339, -0.961115, -0.060950,
		43.134315, 36.087574, 34.698528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669231, 36.596626, 34.572578>,  <42.945778, 36.760353, 34.741192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669231, 36.596626, 34.572578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465942, 36.284035, 34.427799>,  <43.343967, 36.096481, 34.340931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465942, 36.284035, 34.427799>,  <43.669231, 36.596626, 34.572578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465942, 36.284035, 34.427799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419452, 0.142453, -0.896531,
		0.752177, -0.607457, 0.255394,
		-0.508223, -0.781475, -0.361948,
		43.313477, 36.049591, 34.319214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182232, 36.164539, 34.194122>,  <43.669231, 36.596626, 34.572578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182232, 36.164539, 34.194122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809216, 36.099659, 34.065094>,  <43.585407, 36.060730, 33.987675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809216, 36.099659, 34.065094>,  <44.182232, 36.164539, 34.194122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809216, 36.099659, 34.065094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271730, 0.273014, -0.922836,
		0.237747, -0.948238, -0.210524,
		-0.932545, -0.162196, -0.322573,
		43.529453, 36.050999, 33.968323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047928, 35.708839, 33.685146>,  <44.182232, 36.164539, 34.194122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047928, 35.708839, 33.685146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763618, 35.987221, 33.644257>,  <43.593033, 36.154251, 33.619724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763618, 35.987221, 33.644257>,  <44.047928, 35.708839, 33.685146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763618, 35.987221, 33.644257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458752, 0.348458, -0.817389,
		-0.533247, -0.627871, -0.566945,
		-0.710771, 0.695957, -0.102223,
		43.550388, 36.196007, 33.613590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344063, 35.116978, 34.084618>,  <44.047928, 35.708839, 33.685146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344063, 35.116978, 34.084618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699318, 35.103817, 33.901260>,  <44.912472, 35.095921, 33.791245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699318, 35.103817, 33.901260>,  <44.344063, 35.116978, 34.084618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699318, 35.103817, 33.901260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457589, 0.155899, 0.875390,
		0.042664, -0.987225, 0.153514,
		0.888140, -0.032899, -0.458394,
		44.965759, 35.093948, 33.763741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709148, 35.136761, 34.616287>,  <44.344063, 35.116978, 34.084618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709148, 35.136761, 34.616287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994183, 35.132412, 34.335686>,  <45.165203, 35.129803, 34.167324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994183, 35.132412, 34.335686>,  <44.709148, 35.136761, 34.616287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994183, 35.132412, 34.335686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698023, 0.111632, 0.707320,
		0.070617, -0.993690, 0.087138,
		0.712584, -0.010875, -0.701502,
		45.207958, 35.129150, 34.125237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286118, 34.902702, 34.927303>,  <44.709148, 35.136761, 34.616287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286118, 34.902702, 34.927303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457592, 35.089359, 34.617859>,  <45.560474, 35.201355, 34.432194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457592, 35.089359, 34.617859>,  <45.286118, 34.902702, 34.927303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457592, 35.089359, 34.617859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798420, 0.205040, 0.566113,
		0.422795, -0.860348, -0.284684,
		0.428683, 0.466647, -0.773609,
		45.586197, 35.229355, 34.385777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279659, 35.402683, 35.503708>,  <45.286118, 34.902702, 34.927303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279659, 35.402683, 35.503708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448956, 35.232693, 35.823772>,  <45.550533, 35.130699, 36.015812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448956, 35.232693, 35.823772>,  <45.279659, 35.402683, 35.503708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448956, 35.232693, 35.823772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247267, 0.903820, 0.349239,
		-0.871622, 0.050040, 0.487618,
		0.423243, -0.424976, 0.800163,
		45.575928, 35.105202, 36.063820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970604, 35.635056, 36.175148>,  <45.279659, 35.402683, 35.503708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970604, 35.635056, 36.175148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365002, 35.570004, 36.189968>,  <45.601639, 35.530972, 36.198860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365002, 35.570004, 36.189968>,  <44.970604, 35.635056, 36.175148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365002, 35.570004, 36.189968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143440, 0.940112, 0.309215,
		-0.085119, -0.299569, 0.950270,
		0.985992, -0.162627, 0.037051,
		45.660801, 35.521217, 36.201084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254768, 35.767708, 36.867405>,  <44.970604, 35.635056, 36.175148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254768, 35.767708, 36.867405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575184, 35.798717, 36.629974>,  <45.767433, 35.817322, 36.487514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575184, 35.798717, 36.629974>,  <45.254768, 35.767708, 36.867405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575184, 35.798717, 36.629974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081557, 0.968201, 0.236506,
		0.593034, -0.237860, 0.769242,
		0.801037, 0.077519, -0.593575,
		45.815495, 35.821972, 36.451900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573376, 35.107124, 36.939892>,  <45.254768, 35.767708, 36.867405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573376, 35.107124, 36.939892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825928, 34.843857, 37.103928>,  <45.977459, 34.685898, 37.202351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825928, 34.843857, 37.103928>,  <45.573376, 35.107124, 36.939892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825928, 34.843857, 37.103928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745690, 0.370135, -0.554028,
		0.212852, 0.655605, 0.724484,
		0.631380, -0.658166, 0.410093,
		46.015343, 34.646408, 37.226955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267723, 35.417072, 36.945107>,  <45.573376, 35.107124, 36.939892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267723, 35.417072, 36.945107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.385796, 35.042419, 37.020565>,  <46.456638, 34.817627, 37.065838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.385796, 35.042419, 37.020565>,  <46.267723, 35.417072, 36.945107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385796, 35.042419, 37.020565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812690, 0.142314, -0.565050,
		0.502398, 0.320100, 0.803201,
		0.295180, -0.936633, 0.188644,
		46.474350, 34.761429, 37.077160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993263, 35.147800, 37.244560>,  <46.267723, 35.417072, 36.945107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993263, 35.147800, 37.244560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.862183, 34.854481, 37.006271>,  <46.783535, 34.678490, 36.863297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.862183, 34.854481, 37.006271>,  <46.993263, 35.147800, 37.244560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.862183, 34.854481, 37.006271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755084, 0.175701, -0.631646,
		0.567853, -0.656813, 0.496124,
		-0.327704, -0.733298, -0.595721,
		46.763870, 34.634491, 36.827557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442802, 34.659275, 37.169876>,  <46.993263, 35.147800, 37.244560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442802, 34.659275, 37.169876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.245789, 34.641624, 36.822205>,  <47.127583, 34.631035, 36.613602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.245789, 34.641624, 36.822205>,  <47.442802, 34.659275, 37.169876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.245789, 34.641624, 36.822205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866655, 0.066386, -0.494472,
		0.079521, -0.996818, 0.005545,
		-0.492530, -0.044127, -0.869176,
		47.098030, 34.628387, 36.561451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484406, 34.014202, 36.710289>,  <47.442802, 34.659275, 37.169876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484406, 34.014202, 36.710289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455585, 34.376980, 36.544277>,  <47.438293, 34.594646, 36.444668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455585, 34.376980, 36.544277>,  <47.484406, 34.014202, 36.710289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.455585, 34.376980, 36.544277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953218, -0.059866, -0.296297,
		-0.293572, -0.416965, -0.860207,
		-0.072048, 0.906949, -0.415034,
		47.433971, 34.649063, 36.419765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.438366, 34.208549, 35.930553>,  <47.484406, 34.014202, 36.710289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.438366, 34.208549, 35.930553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643543, 34.484772, 36.134521>,  <47.766651, 34.650505, 36.256905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643543, 34.484772, 36.134521>,  <47.438366, 34.208549, 35.930553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.643543, 34.484772, 36.134521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853378, -0.345914, -0.389988,
		-0.092918, 0.635200, -0.766738,
		0.512945, 0.690554, 0.509924,
		47.797428, 34.691936, 36.287498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.754482, 34.627155, 35.532600>,  <47.438366, 34.208549, 35.930553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.754482, 34.627155, 35.532600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820572, 34.951466, 35.307980>,  <47.860226, 35.146053, 35.173206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820572, 34.951466, 35.307980>,  <47.754482, 34.627155, 35.532600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.820572, 34.951466, 35.307980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446825, -0.446059, -0.775486,
		-0.879232, 0.379044, 0.288576,
		0.165222, 0.810776, -0.561556,
		47.870140, 35.194698, 35.139511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.103760, 34.981586, 35.287670>,  <47.754482, 34.627155, 35.532600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.103760, 34.981586, 35.287670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421356, 35.006927, 35.045826>,  <47.611916, 35.022133, 34.900719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421356, 35.006927, 35.045826>,  <47.103760, 34.981586, 35.287670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421356, 35.006927, 35.045826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540654, -0.381160, -0.749940,
		-0.277968, 0.922335, -0.268385,
		0.793994, 0.063356, -0.604615,
		47.659554, 35.025936, 34.864441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.811047, 31.339468, 25.155872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416294, 31.283400, 25.123808>,  <39.179443, 31.249758, 25.104568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416294, 31.283400, 25.123808>,  <39.811047, 31.339468, 25.155872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416294, 31.283400, 25.123808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115589, 0.266593, 0.956853,
		-0.112752, 0.953562, -0.279296,
		-0.986877, -0.140171, -0.080163,
		39.120232, 31.241348, 25.099760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516914, 31.941360, 25.372871>,  <39.811047, 31.339468, 25.155872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516914, 31.941360, 25.372871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247211, 31.649536, 25.418676>,  <39.085388, 31.474442, 25.446159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247211, 31.649536, 25.418676>,  <39.516914, 31.941360, 25.372871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247211, 31.649536, 25.418676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140600, 0.279045, 0.949929,
		-0.724985, 0.624400, -0.290725,
		-0.674261, -0.729561, 0.114513,
		39.044933, 31.430668, 25.453030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877937, 32.249695, 25.737192>,  <39.516914, 31.941360, 25.372871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877937, 32.249695, 25.737192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854843, 31.857346, 25.811556>,  <38.840984, 31.621937, 25.856174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854843, 31.857346, 25.811556>,  <38.877937, 32.249695, 25.737192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854843, 31.857346, 25.811556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331736, 0.194488, 0.923106,
		-0.941603, -0.008373, -0.336619,
		-0.057740, -0.980869, 0.185908,
		38.837521, 31.563086, 25.867329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289654, 32.196419, 26.168232>,  <38.877937, 32.249695, 25.737192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289654, 32.196419, 26.168232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.422779, 31.822330, 26.216553>,  <38.502655, 31.597878, 26.245544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.422779, 31.822330, 26.216553>,  <38.289654, 32.196419, 26.168232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422779, 31.822330, 26.216553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435341, -0.038746, 0.899431,
		-0.836488, -0.351934, -0.420036,
		0.332815, -0.935222, 0.120801,
		38.522625, 31.541763, 26.252792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624363, 31.780594, 26.389820>,  <38.289654, 32.196419, 26.168232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624363, 31.780594, 26.389820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957878, 31.602602, 26.520540>,  <38.157986, 31.495808, 26.598972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957878, 31.602602, 26.520540>,  <37.624363, 31.780594, 26.389820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957878, 31.602602, 26.520540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403501, -0.087142, 0.910820,
		-0.376820, -0.891290, -0.252208,
		0.833782, -0.444981, 0.326800,
		38.208012, 31.469109, 26.618580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476723, 31.210426, 26.886999>,  <37.624363, 31.780594, 26.389820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476723, 31.210426, 26.886999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849415, 31.324892, 26.976427>,  <38.073032, 31.393572, 27.030085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849415, 31.324892, 26.976427>,  <37.476723, 31.210426, 26.886999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849415, 31.324892, 26.976427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282911, 0.186019, 0.940935,
		0.227674, -0.939950, 0.254280,
		0.931733, 0.286165, 0.223571,
		38.128933, 31.410742, 27.043499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584858, 30.836578, 27.540812>,  <37.476723, 31.210426, 26.886999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584858, 30.836578, 27.540812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854321, 31.131245, 27.517111>,  <38.015999, 31.308044, 27.502892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854321, 31.131245, 27.517111>,  <37.584858, 30.836578, 27.540812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854321, 31.131245, 27.517111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050681, 0.126031, 0.990731,
		0.737306, -0.664408, 0.122237,
		0.673655, 0.736667, -0.059250,
		38.056416, 31.352245, 27.499336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991657, 30.684389, 28.126839>,  <37.584858, 30.836578, 27.540812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991657, 30.684389, 28.126839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047081, 31.070599, 28.038689>,  <38.080338, 31.302324, 27.985800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047081, 31.070599, 28.038689>,  <37.991657, 30.684389, 28.126839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047081, 31.070599, 28.038689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106224, 0.206747, 0.972611,
		0.984641, -0.158175, -0.073915,
		0.138561, 0.965524, -0.220373,
		38.088650, 31.360256, 27.972576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490517, 30.978420, 28.664337>,  <37.991657, 30.684389, 28.126839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490517, 30.978420, 28.664337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316154, 31.304647, 28.512108>,  <38.211536, 31.500383, 28.420771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316154, 31.304647, 28.512108>,  <38.490517, 30.978420, 28.664337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316154, 31.304647, 28.512108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056414, 0.397271, 0.915966,
		0.898221, 0.420747, -0.127165,
		-0.435909, 0.815566, -0.380573,
		38.185383, 31.549316, 28.397936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919128, 31.456812, 29.065254>,  <38.490517, 30.978420, 28.664337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919128, 31.456812, 29.065254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588177, 31.633541, 28.926558>,  <38.389606, 31.739578, 28.843340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588177, 31.633541, 28.926558>,  <38.919128, 31.456812, 29.065254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588177, 31.633541, 28.926558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073789, 0.697539, 0.712738,
		0.556769, 0.564122, -0.609733,
		-0.827383, 0.441822, -0.346742,
		38.339962, 31.766088, 28.822535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078098, 32.152580, 29.026527>,  <38.919128, 31.456812, 29.065254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078098, 32.152580, 29.026527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.680443, 32.115421, 29.048656>,  <38.441849, 32.093124, 29.061934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.680443, 32.115421, 29.048656>,  <39.078098, 32.152580, 29.026527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680443, 32.115421, 29.048656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027094, 0.709360, 0.704325,
		-0.104676, 0.698697, -0.707718,
		-0.994137, -0.092901, 0.055323,
		38.382202, 32.087551, 29.065254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758446, 32.826962, 29.389942>,  <39.078098, 32.152580, 29.026527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758446, 32.826962, 29.389942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449085, 32.575451, 29.422148>,  <38.263470, 32.424545, 29.441471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449085, 32.575451, 29.422148>,  <38.758446, 32.826962, 29.389942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449085, 32.575451, 29.422148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071244, 0.212426, 0.974576,
		-0.629898, 0.748005, -0.209088,
		-0.773404, -0.628780, 0.080516,
		38.217064, 32.386818, 29.446302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322842, 33.251423, 29.701408>,  <38.758446, 32.826962, 29.389942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322842, 33.251423, 29.701408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212097, 32.871750, 29.761288>,  <38.145649, 32.643948, 29.797216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212097, 32.871750, 29.761288>,  <38.322842, 33.251423, 29.701408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212097, 32.871750, 29.761288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273185, 0.227111, 0.934768,
		-0.921259, 0.217904, -0.322179,
		-0.276860, -0.949178, 0.149700,
		38.129040, 32.586998, 29.806198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716442, 33.306454, 30.008812>,  <38.322842, 33.251423, 29.701408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716442, 33.306454, 30.008812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827839, 32.933414, 30.100643>,  <37.894676, 32.709591, 30.155741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827839, 32.933414, 30.100643>,  <37.716442, 33.306454, 30.008812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827839, 32.933414, 30.100643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197049, 0.178468, 0.964013,
		-0.940009, -0.313704, -0.134066,
		0.278488, -0.932598, 0.229576,
		37.911385, 32.653637, 30.169516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437241, 33.281227, 30.657515>,  <37.716442, 33.306454, 30.008812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437241, 33.281227, 30.657515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696579, 32.979759, 30.614386>,  <37.852184, 32.798878, 30.588509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696579, 32.979759, 30.614386>,  <37.437241, 33.281227, 30.657515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696579, 32.979759, 30.614386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077323, -0.075704, 0.994128,
		-0.757406, -0.652880, 0.009193,
		0.648350, -0.753669, -0.107821,
		37.891083, 32.753658, 30.582039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182148, 32.728966, 31.117546>,  <37.437241, 33.281227, 30.657515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182148, 32.728966, 31.117546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571785, 32.672268, 31.047064>,  <37.805569, 32.638248, 31.004774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571785, 32.672268, 31.047064>,  <37.182148, 32.728966, 31.117546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571785, 32.672268, 31.047064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197929, 0.157488, 0.967482,
		-0.109389, -0.977294, 0.181464,
		0.974093, -0.141749, -0.176208,
		37.864014, 32.629742, 30.994202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455677, 32.382122, 31.682339>,  <37.182148, 32.728966, 31.117546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455677, 32.382122, 31.682339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755032, 32.568184, 31.493216>,  <37.934643, 32.679821, 31.379742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755032, 32.568184, 31.493216>,  <37.455677, 32.382122, 31.682339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755032, 32.568184, 31.493216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360347, 0.313322, 0.878624,
		0.556840, -0.827924, 0.066867,
		0.748385, 0.465157, -0.472810,
		37.979546, 32.707729, 31.351372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039268, 32.144417, 32.031651>,  <37.455677, 32.382122, 31.682339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039268, 32.144417, 32.031651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180752, 32.476131, 31.858597>,  <38.265640, 32.675159, 31.754765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180752, 32.476131, 31.858597>,  <38.039268, 32.144417, 32.031651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180752, 32.476131, 31.858597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309051, 0.332939, 0.890864,
		0.882824, -0.448811, -0.138529,
		0.353708, 0.829289, -0.432633,
		38.286865, 32.724918, 31.728807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666416, 32.210312, 32.264690>,  <38.039268, 32.144417, 32.031651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666416, 32.210312, 32.264690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538097, 32.574791, 32.161297>,  <38.461105, 32.793476, 32.099262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538097, 32.574791, 32.161297>,  <38.666416, 32.210312, 32.264690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538097, 32.574791, 32.161297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330248, 0.363386, 0.871141,
		0.887708, 0.194096, -0.417494,
		-0.320797, 0.911196, -0.258480,
		38.441860, 32.848148, 32.083752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050602, 32.700321, 32.732849>,  <38.666416, 32.210312, 32.264690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050602, 32.700321, 32.732849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755962, 32.936291, 32.600533>,  <38.579178, 33.077873, 32.521145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755962, 32.936291, 32.600533>,  <39.050602, 32.700321, 32.732849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755962, 32.936291, 32.600533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026826, 0.514188, 0.857258,
		0.675801, 0.622579, -0.394574,
		-0.736596, 0.589921, -0.330788,
		38.534985, 33.113266, 32.501297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255978, 33.521935, 32.829117>,  <39.050602, 32.700321, 32.732849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255978, 33.521935, 32.829117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857281, 33.503975, 32.802326>,  <38.618061, 33.493198, 32.786251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857281, 33.503975, 32.802326>,  <39.255978, 33.521935, 32.829117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857281, 33.503975, 32.802326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080162, 0.641434, 0.762978,
		0.008704, 0.765863, -0.642945,
		-0.996744, -0.044899, -0.066977,
		38.558258, 33.490505, 32.782234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023666, 34.191681, 32.622547>,  <39.255978, 33.521935, 32.829117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023666, 34.191681, 32.622547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744305, 34.001316, 32.836369>,  <38.576687, 33.887096, 32.964661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744305, 34.001316, 32.836369>,  <39.023666, 34.191681, 32.622547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744305, 34.001316, 32.836369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035906, 0.769246, 0.637943,
		-0.714806, 0.426346, -0.554330,
		-0.698400, -0.475909, 0.534553,
		38.534786, 33.858543, 32.996735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966625, 35.013660, 32.455456>,  <39.023666, 34.191681, 32.622547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966625, 35.013660, 32.455456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193649, 35.321434, 32.572651>,  <39.329865, 35.506100, 32.642967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193649, 35.321434, 32.572651>,  <38.966625, 35.013660, 32.455456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193649, 35.321434, 32.572651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384228, 0.067197, -0.920790,
		-0.728179, 0.635176, -0.257502,
		0.567560, 0.769439, 0.292984,
		39.363918, 35.552265, 32.660545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840649, 35.595154, 31.945147>,  <38.966625, 35.013660, 32.455456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840649, 35.595154, 31.945147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185120, 35.645889, 32.142036>,  <39.391804, 35.676331, 32.260170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185120, 35.645889, 32.142036>,  <38.840649, 35.595154, 31.945147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185120, 35.645889, 32.142036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480636, 0.111923, -0.869748,
		-0.165406, 0.985589, 0.035425,
		0.861179, 0.126835, 0.492223,
		39.443474, 35.683941, 32.289703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194118, 36.145409, 31.537853>,  <38.840649, 35.595154, 31.945147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194118, 36.145409, 31.537853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473156, 35.949013, 31.746582>,  <39.640579, 35.831177, 31.871820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473156, 35.949013, 31.746582>,  <39.194118, 36.145409, 31.537853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473156, 35.949013, 31.746582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522114, -0.150415, -0.839507,
		0.490676, 0.858084, 0.151421,
		0.697592, -0.490985, 0.521823,
		39.682434, 35.801716, 31.903130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785450, 36.467175, 31.428053>,  <39.194118, 36.145409, 31.537853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785450, 36.467175, 31.428053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.860008, 36.080761, 31.499641>,  <39.904743, 35.848911, 31.542595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.860008, 36.080761, 31.499641>,  <39.785450, 36.467175, 31.428053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860008, 36.080761, 31.499641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403300, -0.090873, -0.910544,
		0.895883, 0.241898, 0.372665,
		0.186394, -0.966037, 0.178969,
		39.915928, 35.790951, 31.553331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474007, 36.302921, 30.992695>,  <39.785450, 36.467175, 31.428053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474007, 36.302921, 30.992695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.331673, 35.946251, 31.104624>,  <40.246273, 35.732250, 31.171782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.331673, 35.946251, 31.104624>,  <40.474007, 36.302921, 30.992695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331673, 35.946251, 31.104624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353153, -0.405515, -0.843114,
		0.865253, -0.201192, 0.459194,
		-0.355838, -0.891672, 0.279822,
		40.224922, 35.678749, 31.188570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045937, 35.865368, 30.770559>,  <40.474007, 36.302921, 30.992695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045937, 35.865368, 30.770559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.745701, 35.609631, 30.837326>,  <40.565559, 35.456188, 30.877386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.745701, 35.609631, 30.837326>,  <41.045937, 35.865368, 30.770559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745701, 35.609631, 30.837326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337398, -0.588027, -0.735110,
		0.568136, -0.495449, 0.657078,
		-0.750589, -0.639340, 0.166916,
		40.520523, 35.417828, 30.887402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296375, 35.129707, 30.576815>,  <41.045937, 35.865368, 30.770559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296375, 35.129707, 30.576815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897686, 35.097904, 30.570801>,  <40.658474, 35.078823, 30.567192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897686, 35.097904, 30.570801>,  <41.296375, 35.129707, 30.576815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897686, 35.097904, 30.570801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061247, -0.619905, -0.782283,
		0.052877, -0.780639, 0.622741,
		-0.996721, -0.079505, -0.015033,
		40.598671, 35.074051, 30.566290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241959, 34.422558, 30.567513>,  <41.296375, 35.129707, 30.576815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241959, 34.422558, 30.567513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.882141, 34.562428, 30.462782>,  <40.666252, 34.646347, 30.399944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.882141, 34.562428, 30.462782>,  <41.241959, 34.422558, 30.567513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882141, 34.562428, 30.462782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011634, -0.618338, -0.785826,
		-0.436675, -0.703839, 0.560291,
		-0.899544, 0.349669, -0.261825,
		40.612278, 34.667328, 30.384233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917362, 33.851303, 30.423134>,  <41.241959, 34.422558, 30.567513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917362, 33.851303, 30.423134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.717556, 34.142811, 30.235779>,  <40.597672, 34.317715, 30.123365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.717556, 34.142811, 30.235779>,  <40.917362, 33.851303, 30.423134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717556, 34.142811, 30.235779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169149, -0.448222, -0.877773,
		-0.849633, -0.517686, 0.100622,
		-0.499511, 0.728765, -0.468390,
		40.567703, 34.361439, 30.095263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438400, 33.531219, 30.033533>,  <40.917362, 33.851303, 30.423134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438400, 33.531219, 30.033533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484142, 33.885090, 29.852751>,  <40.511585, 34.097412, 29.744282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484142, 33.885090, 29.852751>,  <40.438400, 33.531219, 30.033533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484142, 33.885090, 29.852751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047659, -0.449530, -0.891993,
		-0.992296, 0.123541, -0.009242,
		0.114352, 0.884681, -0.451955,
		40.518448, 34.150494, 29.717165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870281, 33.633175, 29.647346>,  <40.438400, 33.531219, 30.033533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870281, 33.633175, 29.647346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136627, 33.894447, 29.503134>,  <40.296436, 34.051208, 29.416607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136627, 33.894447, 29.503134>,  <39.870281, 33.633175, 29.647346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136627, 33.894447, 29.503134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200882, -0.308429, -0.929795,
		-0.718518, 0.691543, -0.074161,
		0.665867, 0.653177, -0.360530,
		40.336388, 34.090401, 29.394976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621628, 33.784241, 29.003302>,  <39.870281, 33.633175, 29.647346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621628, 33.784241, 29.003302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.997360, 33.917461, 28.970499>,  <40.222801, 33.997395, 28.950817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.997360, 33.917461, 28.970499>,  <39.621628, 33.784241, 29.003302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997360, 33.917461, 28.970499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036379, -0.334473, -0.941703,
		-0.341068, 0.881590, -0.326298,
		0.939334, 0.333056, -0.082007,
		40.279160, 34.017380, 28.945896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726658, 34.164497, 28.343769>,  <39.621628, 33.784241, 29.003302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726658, 34.164497, 28.343769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.084393, 34.024456, 28.455183>,  <40.299034, 33.940430, 28.522032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.084393, 34.024456, 28.455183>,  <39.726658, 34.164497, 28.343769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084393, 34.024456, 28.455183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176803, -0.295319, -0.938897,
		0.410969, 0.888939, -0.202216,
		0.894341, -0.350105, 0.278534,
		40.352695, 33.919426, 28.538744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982388, 34.288788, 27.741869>,  <39.726658, 34.164497, 28.343769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982388, 34.288788, 27.741869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271702, 34.066914, 27.906399>,  <40.445290, 33.933788, 28.005116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271702, 34.066914, 27.906399>,  <39.982388, 34.288788, 27.741869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271702, 34.066914, 27.906399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336881, -0.236530, -0.911353,
		0.602801, 0.797736, 0.015783,
		0.723286, -0.554681, 0.411322,
		40.488689, 33.900509, 28.029795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514645, 34.383621, 27.315544>,  <39.982388, 34.288788, 27.741869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514645, 34.383621, 27.315544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.608868, 34.047108, 27.510172>,  <40.665401, 33.845200, 27.626947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.608868, 34.047108, 27.510172>,  <40.514645, 34.383621, 27.315544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608868, 34.047108, 27.510172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568012, -0.287068, -0.771333,
		0.788591, 0.458068, 0.410241,
		0.235556, -0.841288, 0.486568,
		40.679535, 33.794720, 27.656143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254513, 34.231922, 27.243294>,  <40.514645, 34.383621, 27.315544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254513, 34.231922, 27.243294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.064594, 33.882900, 27.289265>,  <40.950642, 33.673485, 27.316847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.064594, 33.882900, 27.289265>,  <41.254513, 34.231922, 27.243294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064594, 33.882900, 27.289265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370636, -0.316681, -0.873122,
		0.798246, -0.371960, 0.473761,
		-0.474797, -0.872559, 0.114928,
		40.922153, 33.621132, 27.323744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767170, 33.655914, 27.191446>,  <41.254513, 34.231922, 27.243294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767170, 33.655914, 27.191446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.414677, 33.480343, 27.121271>,  <41.203182, 33.375000, 27.079166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.414677, 33.480343, 27.121271>,  <41.767170, 33.655914, 27.191446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414677, 33.480343, 27.121271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326342, -0.296434, -0.897567,
		0.341961, -0.848215, 0.404467,
		-0.881228, -0.438927, -0.175440,
		41.150307, 33.348663, 27.068640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889927, 32.955853, 27.013470>,  <41.767170, 33.655914, 27.191446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889927, 32.955853, 27.013470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.537159, 33.058472, 26.855278>,  <41.325500, 33.120045, 26.760363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.537159, 33.058472, 26.855278>,  <41.889927, 32.955853, 27.013470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537159, 33.058472, 26.855278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282168, -0.384756, -0.878831,
		-0.377613, -0.886652, 0.266939,
		-0.881924, 0.256536, -0.395474,
		41.272583, 33.135437, 26.736635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.483021, 32.007023, 26.267973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.255657, 32.336067, 26.273951>,  <41.119240, 32.533493, 26.277538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.255657, 32.336067, 26.273951>,  <41.483021, 32.007023, 26.267973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255657, 32.336067, 26.273951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110174, -0.058101, -0.992213,
		-0.815339, -0.565625, 0.123656,
		-0.568405, 0.822613, 0.014945,
		41.085136, 32.582851, 26.278435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908726, 31.830025, 25.796978>,  <41.483021, 32.007023, 26.267973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908726, 31.830025, 25.796978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910217, 32.228867, 25.827358>,  <40.911110, 32.468170, 25.845587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910217, 32.228867, 25.827358>,  <40.908726, 31.830025, 25.796978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910217, 32.228867, 25.827358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169239, 0.075485, -0.982680,
		-0.985568, -0.009191, 0.169030,
		0.003727, 0.997105, 0.075951,
		40.911335, 32.528000, 25.850143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229252, 32.080658, 25.540895>,  <40.908726, 31.830025, 25.796978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229252, 32.080658, 25.540895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.496964, 32.374260, 25.494778>,  <40.657593, 32.550423, 25.467106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.496964, 32.374260, 25.494778>,  <40.229252, 32.080658, 25.540895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496964, 32.374260, 25.494778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259656, 0.085667, -0.961894,
		-0.696162, 0.673715, 0.247925,
		0.669282, 0.734009, -0.115296,
		40.697746, 32.594463, 25.460190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900188, 32.447338, 24.946491>,  <40.229252, 32.080658, 25.540895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900188, 32.447338, 24.946491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283508, 32.554211, 24.987053>,  <40.513500, 32.618332, 25.011391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283508, 32.554211, 24.987053>,  <39.900188, 32.447338, 24.946491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283508, 32.554211, 24.987053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050841, 0.189790, -0.980507,
		-0.281214, 0.944773, 0.168292,
		0.958297, 0.267177, 0.101405,
		40.570999, 32.634365, 25.017475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967197, 32.972298, 24.443207>,  <39.900188, 32.447338, 24.946491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967197, 32.972298, 24.443207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337124, 32.855022, 24.540169>,  <40.559078, 32.784657, 24.598347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337124, 32.855022, 24.540169>,  <39.967197, 32.972298, 24.443207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337124, 32.855022, 24.540169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253379, -0.000570, -0.967367,
		0.283760, 0.956054, 0.073760,
		0.924813, -0.293190, 0.242406,
		40.614567, 32.767067, 24.612890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475807, 33.397881, 23.965958>,  <39.967197, 32.972298, 24.443207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475807, 33.397881, 23.965958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676041, 33.073078, 24.085997>,  <40.796181, 32.878197, 24.158020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676041, 33.073078, 24.085997>,  <40.475807, 33.397881, 23.965958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676041, 33.073078, 24.085997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317023, -0.150628, -0.936380,
		0.805551, 0.563875, 0.182023,
		0.500584, -0.812007, 0.300099,
		40.826218, 32.829475, 24.176027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278435, 33.491959, 23.856131>,  <40.475807, 33.397881, 23.965958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278435, 33.491959, 23.856131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.192329, 33.101349, 23.859154>,  <41.140667, 32.866982, 23.860968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.192329, 33.101349, 23.859154>,  <41.278435, 33.491959, 23.856131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192329, 33.101349, 23.859154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422937, -0.100204, -0.900602,
		0.880218, -0.190674, 0.434580,
		-0.215268, -0.976526, 0.007559,
		41.127750, 32.808392, 23.861422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880627, 33.255795, 23.513540>,  <41.278435, 33.491959, 23.856131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880627, 33.255795, 23.513540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602486, 32.968658, 23.527390>,  <41.435600, 32.796379, 23.535700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602486, 32.968658, 23.527390>,  <41.880627, 33.255795, 23.513540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602486, 32.968658, 23.527390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179227, -0.219866, -0.958925,
		0.695966, -0.660581, 0.281540,
		-0.695348, -0.717839, 0.034626,
		41.393883, 32.753307, 23.537777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184944, 32.669930, 23.240040>,  <41.880627, 33.255795, 23.513540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184944, 32.669930, 23.240040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.791382, 32.615726, 23.193436>,  <41.555244, 32.583206, 23.165472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.791382, 32.615726, 23.193436>,  <42.184944, 32.669930, 23.240040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791382, 32.615726, 23.193436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163044, -0.413703, -0.895694,
		0.073172, -0.900271, 0.429136,
		-0.983902, -0.135508, -0.116512,
		41.496212, 32.575073, 23.158482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104694, 32.042042, 22.925144>,  <42.184944, 32.669930, 23.240040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104694, 32.042042, 22.925144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.769356, 32.243431, 22.841537>,  <41.568153, 32.364265, 22.791372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.769356, 32.243431, 22.841537>,  <42.104694, 32.042042, 22.925144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769356, 32.243431, 22.841537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071592, -0.278418, -0.957788,
		-0.540419, -0.817921, 0.197365,
		-0.838345, 0.503477, -0.209019,
		41.517853, 32.394474, 22.778831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652157, 31.628878, 22.558071>,  <42.104694, 32.042042, 22.925144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652157, 31.628878, 22.558071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.525833, 31.990700, 22.443497>,  <41.450039, 32.207794, 22.374752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.525833, 31.990700, 22.443497>,  <41.652157, 31.628878, 22.558071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525833, 31.990700, 22.443497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008864, -0.299058, -0.954194,
		-0.948781, -0.303883, 0.086427,
		-0.315810, 0.904555, -0.286434,
		41.431091, 32.262066, 22.357567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555084, 31.493160, 21.873148>,  <41.652157, 31.628878, 22.558071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555084, 31.493160, 21.873148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.479935, 31.885654, 21.890495>,  <41.434845, 32.121151, 21.900904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.479935, 31.885654, 21.890495>,  <41.555084, 31.493160, 21.873148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479935, 31.885654, 21.890495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124776, 0.067642, -0.989877,
		-0.974234, -0.180565, -0.135143,
		-0.187878, 0.981234, 0.043369,
		41.423573, 32.180023, 21.903505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134041, 31.618340, 21.308819>,  <41.555084, 31.493160, 21.873148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134041, 31.618340, 21.308819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276184, 31.987234, 21.369753>,  <41.361469, 32.208572, 21.406313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276184, 31.987234, 21.369753>,  <41.134041, 31.618340, 21.308819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276184, 31.987234, 21.369753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158655, 0.101096, -0.982145,
		-0.921169, 0.373178, -0.110392,
		0.355354, 0.922235, 0.152333,
		41.382790, 32.263905, 21.415453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932320, 32.038643, 20.780931>,  <41.134041, 31.618340, 21.308819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932320, 32.038643, 20.780931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.221413, 32.285255, 20.905863>,  <41.394867, 32.433224, 20.980822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.221413, 32.285255, 20.905863>,  <40.932320, 32.038643, 20.780931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221413, 32.285255, 20.905863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300536, 0.126591, -0.945332,
		-0.622368, 0.777084, -0.093801,
		0.722728, 0.616535, 0.312328,
		41.438232, 32.470215, 20.999561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858433, 32.697525, 20.306126>,  <40.932320, 32.038643, 20.780931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858433, 32.697525, 20.306126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.231930, 32.683113, 20.448578>,  <41.456028, 32.674465, 20.534048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.231930, 32.683113, 20.448578>,  <40.858433, 32.697525, 20.306126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231930, 32.683113, 20.448578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354277, -0.049088, -0.933851,
		0.051129, 0.998144, -0.033071,
		0.933742, -0.036031, 0.356130,
		41.512051, 32.672302, 20.555416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157074, 33.329292, 20.181973>,  <40.858433, 32.697525, 20.306126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157074, 33.329292, 20.181973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516109, 33.170914, 20.259499>,  <41.731529, 33.075886, 20.306015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516109, 33.170914, 20.259499>,  <41.157074, 33.329292, 20.181973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516109, 33.170914, 20.259499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263976, 0.130631, -0.955642,
		0.353061, 0.908936, 0.221772,
		0.897588, -0.395943, 0.193817,
		41.785385, 33.052132, 20.317644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680584, 33.792084, 20.055901>,  <41.157074, 33.329292, 20.181973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680584, 33.792084, 20.055901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.828175, 33.422607, 20.014608>,  <41.916729, 33.200920, 19.989834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.828175, 33.422607, 20.014608>,  <41.680584, 33.792084, 20.055901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828175, 33.422607, 20.014608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139658, 0.164905, -0.976372,
		0.918887, 0.345839, 0.189847,
		0.368974, -0.923689, -0.103230,
		41.938866, 33.145500, 19.983639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362492, 33.863808, 19.642099>,  <41.680584, 33.792084, 20.055901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362492, 33.863808, 19.642099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.206264, 33.495670, 19.633837>,  <42.112530, 33.274788, 19.628880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.206264, 33.495670, 19.633837>,  <42.362492, 33.863808, 19.642099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206264, 33.495670, 19.633837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081784, -0.012339, -0.996574,
		0.916936, -0.390915, 0.080088,
		-0.390564, -0.920344, -0.020656,
		42.089096, 33.219566, 19.627640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539448, 33.722157, 19.096972>,  <42.362492, 33.863808, 19.642099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539448, 33.722157, 19.096972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.280571, 33.422848, 19.155256>,  <42.125244, 33.243263, 19.190228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.280571, 33.422848, 19.155256>,  <42.539448, 33.722157, 19.096972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280571, 33.422848, 19.155256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155512, -0.057530, -0.986157,
		0.746298, -0.660891, -0.079133,
		-0.647190, -0.748274, 0.145710,
		42.086414, 33.198364, 19.198969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825851, 33.194668, 18.696543>,  <42.539448, 33.722157, 19.096972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825851, 33.194668, 18.696543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.437805, 33.122089, 18.760973>,  <42.204975, 33.078545, 18.799631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.437805, 33.122089, 18.760973>,  <42.825851, 33.194668, 18.696543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437805, 33.122089, 18.760973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136045, -0.142902, -0.980342,
		0.200895, -0.972963, 0.113947,
		-0.970120, -0.181444, 0.161075,
		42.146770, 33.067657, 18.809296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579750, 32.594349, 18.281931>,  <42.825851, 33.194668, 18.696543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579750, 32.594349, 18.281931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.248173, 32.797016, 18.376709>,  <42.049225, 32.918617, 18.433577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.248173, 32.797016, 18.376709>,  <42.579750, 32.594349, 18.281931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248173, 32.797016, 18.376709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330146, -0.101257, -0.938483,
		-0.451505, -0.856176, 0.251211,
		-0.828943, 0.506666, 0.236945,
		41.999489, 32.949017, 18.447792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035183, 32.304821, 17.791834>,  <42.579750, 32.594349, 18.281931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035183, 32.304821, 17.791834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.908417, 32.664326, 17.913021>,  <41.832355, 32.880028, 17.985733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.908417, 32.664326, 17.913021>,  <42.035183, 32.304821, 17.791834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908417, 32.664326, 17.913021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244019, 0.231417, -0.941754,
		-0.916526, -0.372386, 0.145975,
		-0.316915, 0.898763, 0.302969,
		41.813343, 32.933956, 18.003912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318939, 32.433540, 17.516581>,  <42.035183, 32.304821, 17.791834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318939, 32.433540, 17.516581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.543568, 32.758564, 17.579048>,  <41.678345, 32.953579, 17.616529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.543568, 32.758564, 17.579048>,  <41.318939, 32.433540, 17.516581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543568, 32.758564, 17.579048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231018, 0.335206, -0.913383,
		-0.794527, 0.476848, 0.375957,
		0.561567, 0.812560, 0.156169,
		41.712036, 33.002331, 17.625898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944328, 32.768768, 17.070139>,  <41.318939, 32.433540, 17.516581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944328, 32.768768, 17.070139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.573132, 32.917572, 17.078547>,  <40.350414, 33.006855, 17.083591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.573132, 32.917572, 17.078547>,  <40.944328, 32.768768, 17.070139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573132, 32.917572, 17.078547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114778, -0.339078, 0.933730,
		0.354483, 0.864080, 0.357360,
		-0.927991, 0.372009, 0.021020,
		40.294735, 33.029175, 17.084852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853489, 33.077942, 17.705372>,  <40.944328, 32.768768, 17.070139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853489, 33.077942, 17.705372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.479790, 33.015247, 17.577242>,  <40.255569, 32.977631, 17.500364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.479790, 33.015247, 17.577242>,  <40.853489, 33.077942, 17.705372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479790, 33.015247, 17.577242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290132, -0.188243, 0.938290,
		-0.207361, 0.969535, 0.130393,
		-0.934251, -0.156733, -0.320327,
		40.199512, 32.968227, 17.481144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504360, 33.418312, 18.152126>,  <40.853489, 33.077942, 17.705372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504360, 33.418312, 18.152126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.218624, 33.193256, 17.985682>,  <40.047180, 33.058224, 17.885815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.218624, 33.193256, 17.985682>,  <40.504360, 33.418312, 18.152126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218624, 33.193256, 17.985682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332343, -0.250522, 0.909278,
		-0.615841, 0.787830, -0.008030,
		-0.714345, -0.562639, -0.416111,
		40.004322, 33.024464, 17.860847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763096, 33.559399, 18.508976>,  <40.504360, 33.418312, 18.152126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763096, 33.559399, 18.508976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.718880, 33.209793, 18.319708>,  <39.692348, 33.000031, 18.206148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.718880, 33.209793, 18.319708>,  <39.763096, 33.559399, 18.508976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718880, 33.209793, 18.319708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513532, -0.357380, 0.780106,
		-0.850920, 0.329223, -0.409325,
		-0.110544, -0.874009, -0.473168,
		39.685715, 32.947590, 18.177757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057114, 33.438442, 18.441608>,  <39.763096, 33.559399, 18.508976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057114, 33.438442, 18.441608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264275, 33.096279, 18.444525>,  <39.388569, 32.890980, 18.446276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264275, 33.096279, 18.444525>,  <39.057114, 33.438442, 18.441608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264275, 33.096279, 18.444525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398463, -0.233685, 0.886915,
		-0.756973, -0.462238, -0.461875,
		0.517899, -0.855410, 0.007292,
		39.419643, 32.839657, 18.446712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574635, 33.023865, 18.771048>,  <39.057114, 33.438442, 18.441608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574635, 33.023865, 18.771048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933620, 32.848587, 18.791254>,  <39.149010, 32.743420, 18.803379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933620, 32.848587, 18.791254>,  <38.574635, 33.023865, 18.771048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933620, 32.848587, 18.791254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233295, -0.374348, 0.897462,
		-0.374348, -0.817223, -0.438190,
		-0.897462, 0.438190, -0.050518,
		39.202858, 32.717129, 18.806410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381397, 32.230640, 18.870033>,  <38.574635, 33.023865, 18.771048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381397, 32.230640, 18.870033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741581, 32.332867, 19.010811>,  <38.957691, 32.394203, 19.095278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741581, 32.332867, 19.010811>,  <38.381397, 32.230640, 18.870033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741581, 32.332867, 19.010811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176614, -0.524610, 0.832822,
		0.397477, -0.812077, -0.427251,
		0.900455, 0.255569, 0.351944,
		39.011719, 32.409538, 19.116394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733120, 31.612511, 19.049118>,  <38.381397, 32.230640, 18.870033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733120, 31.612511, 19.049118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.912865, 31.907265, 19.251137>,  <39.020714, 32.084118, 19.372347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.912865, 31.907265, 19.251137>,  <38.733120, 31.612511, 19.049118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912865, 31.907265, 19.251137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248647, -0.439832, 0.862973,
		0.858047, -0.513369, -0.014421,
		0.449366, 0.736885, 0.505045,
		39.047676, 32.128330, 19.402651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973232, 31.252953, 19.605227>,  <38.733120, 31.612511, 19.049118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973232, 31.252953, 19.605227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995022, 31.634842, 19.722212>,  <39.008095, 31.863976, 19.792402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995022, 31.634842, 19.722212>,  <38.973232, 31.252953, 19.605227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995022, 31.634842, 19.722212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080967, -0.287709, 0.954289,
		0.995227, -0.075661, 0.061629,
		0.054472, 0.954725, 0.292462,
		39.011364, 31.921259, 19.809950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472923, 31.301573, 20.100128>,  <38.973232, 31.252953, 19.605227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472923, 31.301573, 20.100128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247337, 31.627748, 20.152285>,  <39.111984, 31.823454, 20.183578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247337, 31.627748, 20.152285>,  <39.472923, 31.301573, 20.100128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247337, 31.627748, 20.152285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018426, -0.170282, 0.985223,
		0.825592, 0.553230, 0.111059,
		-0.563967, 0.815439, 0.130390,
		39.078148, 31.872379, 20.191402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761562, 31.640371, 20.683760>,  <39.472923, 31.301573, 20.100128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761562, 31.640371, 20.683760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402172, 31.815887, 20.689442>,  <39.186539, 31.921198, 20.692850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402172, 31.815887, 20.689442>,  <39.761562, 31.640371, 20.683760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402172, 31.815887, 20.689442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146579, -0.330322, 0.932417,
		0.413827, 0.835674, 0.361104,
		-0.898477, 0.438790, 0.014204,
		39.132629, 31.947525, 20.693703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871849, 32.137486, 21.242805>,  <39.761562, 31.640371, 20.683760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871849, 32.137486, 21.242805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495438, 32.032146, 21.157839>,  <39.269592, 31.968943, 21.106859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495438, 32.032146, 21.157839>,  <39.871849, 32.137486, 21.242805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495438, 32.032146, 21.157839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182289, -0.134286, 0.974032,
		-0.285033, 0.955309, 0.078361,
		-0.941024, -0.263347, -0.212419,
		39.213131, 31.953142, 21.094112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516773, 32.496181, 21.742399>,  <39.871849, 32.137486, 21.242805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516773, 32.496181, 21.742399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.259045, 32.210354, 21.633411>,  <39.104408, 32.038857, 21.568018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.259045, 32.210354, 21.633411>,  <39.516773, 32.496181, 21.742399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259045, 32.210354, 21.633411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200713, -0.185786, 0.961872,
		-0.737949, 0.674440, -0.023719,
		-0.644318, -0.714573, -0.272469,
		39.065750, 31.995981, 21.551670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947826, 32.662937, 22.112661>,  <39.516773, 32.496181, 21.742399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947826, 32.662937, 22.112661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902161, 32.277809, 22.014727>,  <38.874763, 32.046734, 21.955967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902161, 32.277809, 22.014727>,  <38.947826, 32.662937, 22.112661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902161, 32.277809, 22.014727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376754, -0.186078, 0.907431,
		-0.919251, 0.195837, -0.341503,
		-0.114163, -0.962820, -0.244835,
		38.867912, 31.988962, 21.941277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337894, 32.427120, 22.498238>,  <38.947826, 32.662937, 22.112661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337894, 32.427120, 22.498238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.529327, 32.086670, 22.411932>,  <38.644188, 31.882401, 22.360149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.529327, 32.086670, 22.411932>,  <38.337894, 32.427120, 22.498238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529327, 32.086670, 22.411932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116250, -0.304989, 0.945234,
		-0.870316, -0.427286, -0.244904,
		0.478578, -0.851122, -0.215765,
		38.672901, 31.831333, 22.347202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939793, 31.902508, 22.764463>,  <38.337894, 32.427120, 22.498238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939793, 31.902508, 22.764463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318634, 31.777323, 22.736040>,  <38.545940, 31.702211, 22.718987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318634, 31.777323, 22.736040>,  <37.939793, 31.902508, 22.764463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318634, 31.777323, 22.736040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052864, -0.370521, 0.927318,
		-0.316542, -0.874511, -0.367467,
		0.947104, -0.312961, -0.071056,
		38.602764, 31.683434, 22.714724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973984, 31.382908, 23.239389>,  <37.939793, 31.902508, 22.764463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973984, 31.382908, 23.239389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366005, 31.438284, 23.182344>,  <38.601215, 31.471510, 23.148117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366005, 31.438284, 23.182344>,  <37.973984, 31.382908, 23.239389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366005, 31.438284, 23.182344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184729, -0.369677, 0.910612,
		0.073344, -0.918789, -0.387875,
		0.980049, 0.138440, -0.142613,
		38.660019, 31.479816, 23.139561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239582, 30.748163, 23.359009>,  <37.973984, 31.382908, 23.239389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239582, 30.748163, 23.359009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.546444, 31.001909, 23.397070>,  <38.730560, 31.154156, 23.419907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.546444, 31.001909, 23.397070>,  <38.239582, 30.748163, 23.359009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546444, 31.001909, 23.397070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106771, -0.272551, 0.956199,
		0.632511, -0.723395, -0.276821,
		0.767157, 0.634363, 0.095154,
		38.776592, 31.192219, 23.425615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773758, 30.350143, 23.696962>,  <38.239582, 30.748163, 23.359009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773758, 30.350143, 23.696962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871780, 30.731071, 23.769663>,  <38.930595, 30.959629, 23.813284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871780, 30.731071, 23.769663>,  <38.773758, 30.350143, 23.696962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871780, 30.731071, 23.769663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066557, -0.203550, 0.976800,
		0.967221, -0.227275, -0.113265,
		0.245057, 0.952320, 0.181751,
		38.945297, 31.016768, 23.824188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413204, 30.294523, 24.247997>,  <38.773758, 30.350143, 23.696962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413204, 30.294523, 24.247997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198566, 30.631750, 24.262411>,  <39.069782, 30.834087, 24.271059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198566, 30.631750, 24.262411>,  <39.413204, 30.294523, 24.247997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198566, 30.631750, 24.262411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039314, -0.067632, 0.996936,
		0.842922, 0.533536, 0.069436,
		-0.536597, 0.843069, 0.036033,
		39.037586, 30.884670, 24.273222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699993, 30.744223, 24.738579>,  <39.413204, 30.294523, 24.247997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699993, 30.744223, 24.738579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.346523, 30.926659, 24.696428>,  <39.134441, 31.036121, 24.671139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.346523, 30.926659, 24.696428>,  <39.699993, 30.744223, 24.738579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346523, 30.926659, 24.696428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074328, 0.085539, 0.993558,
		0.462167, 0.885812, -0.041688,
		-0.883672, 0.456091, -0.105374,
		39.081421, 31.063486, 24.664816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.520725, 34.300587, 28.774010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137505, 34.207886, 28.841457>,  <40.907574, 34.152267, 28.881926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137505, 34.207886, 28.841457>,  <41.520725, 34.300587, 28.774010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137505, 34.207886, 28.841457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032127, 0.671475, 0.740331,
		-0.284796, 0.703856, -0.650751,
		-0.958050, -0.231750, 0.168620,
		40.850090, 34.138359, 28.892044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272388, 34.968597, 28.969145>,  <41.520725, 34.300587, 28.774010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272388, 34.968597, 28.969145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.992004, 34.709263, 29.088015>,  <40.823772, 34.553661, 29.159336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.992004, 34.709263, 29.088015>,  <41.272388, 34.968597, 28.969145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992004, 34.709263, 29.088015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110728, 0.510553, 0.852687,
		-0.704552, 0.564794, -0.429667,
		-0.700960, -0.648339, 0.297172,
		40.781715, 34.514763, 29.177166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684223, 35.305855, 29.073038>,  <41.272388, 34.968597, 28.969145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684223, 35.305855, 29.073038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616165, 34.972523, 29.283415>,  <40.575329, 34.772526, 29.409641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616165, 34.972523, 29.283415>,  <40.684223, 35.305855, 29.073038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616165, 34.972523, 29.283415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396605, 0.546499, 0.737593,
		-0.902084, -0.083092, -0.423487,
		-0.170147, -0.833328, 0.525942,
		40.565121, 34.722523, 29.441198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083675, 35.360088, 29.482302>,  <40.684223, 35.305855, 29.073038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083675, 35.360088, 29.482302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221291, 35.029873, 29.661245>,  <40.303860, 34.831745, 29.768612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221291, 35.029873, 29.661245>,  <40.083675, 35.360088, 29.482302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221291, 35.029873, 29.661245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312651, 0.348536, 0.883613,
		-0.885374, -0.443863, -0.138195,
		0.344038, -0.825535, 0.447360,
		40.324501, 34.782211, 29.795454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499355, 35.047215, 29.875793>,  <40.083675, 35.360088, 29.482302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499355, 35.047215, 29.875793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.851116, 34.933517, 30.028559>,  <40.062172, 34.865299, 30.120218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.851116, 34.933517, 30.028559>,  <39.499355, 35.047215, 29.875793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851116, 34.933517, 30.028559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266597, 0.370604, 0.889707,
		-0.394435, -0.884226, 0.250130,
		0.879402, -0.284247, 0.381911,
		40.114937, 34.848244, 30.143131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315048, 34.741360, 30.500248>,  <39.499355, 35.047215, 29.875793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315048, 34.741360, 30.500248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697895, 34.856155, 30.516018>,  <39.927605, 34.925034, 30.525480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697895, 34.856155, 30.516018>,  <39.315048, 34.741360, 30.500248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697895, 34.856155, 30.516018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106224, 0.221081, 0.969453,
		0.269514, -0.932071, 0.242087,
		0.957120, 0.286997, 0.039424,
		39.985031, 34.942253, 30.527845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470917, 34.565575, 31.119835>,  <39.315048, 34.741360, 30.500248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470917, 34.565575, 31.119835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.770340, 34.816856, 31.034969>,  <39.949993, 34.967625, 30.984049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.770340, 34.816856, 31.034969>,  <39.470917, 34.565575, 31.119835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770340, 34.816856, 31.034969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070289, 0.393353, 0.916696,
		0.659331, -0.671290, 0.338605,
		0.748560, 0.628206, -0.212166,
		39.994907, 35.005318, 30.971319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993660, 34.483753, 31.730654>,  <39.470917, 34.565575, 31.119835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993660, 34.483753, 31.730654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046429, 34.835171, 31.547020>,  <40.078091, 35.046021, 31.436840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046429, 34.835171, 31.547020>,  <39.993660, 34.483753, 31.730654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046429, 34.835171, 31.547020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076288, 0.470755, 0.878960,
		0.988321, -0.080929, 0.129124,
		0.131919, 0.878545, -0.459083,
		40.086006, 35.098736, 31.409296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478851, 34.803715, 32.003490>,  <39.993660, 34.483753, 31.730654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478851, 34.803715, 32.003490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.262562, 35.104988, 31.853642>,  <40.132790, 35.285751, 31.763733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.262562, 35.104988, 31.853642>,  <40.478851, 34.803715, 32.003490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262562, 35.104988, 31.853642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126300, 0.367599, 0.921368,
		0.831666, 0.545519, -0.103643,
		-0.540722, 0.753180, -0.374618,
		40.100346, 35.330944, 31.741257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725582, 35.353077, 32.451591>,  <40.478851, 34.803715, 32.003490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725582, 35.353077, 32.451591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.379692, 35.470715, 32.288734>,  <40.172157, 35.541298, 32.191021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.379692, 35.470715, 32.288734>,  <40.725582, 35.353077, 32.451591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379692, 35.470715, 32.288734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287699, 0.374432, 0.881493,
		0.411687, 0.879381, -0.239170,
		-0.864722, 0.294090, -0.407146,
		40.120277, 35.558941, 32.166592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627659, 35.975979, 32.780010>,  <40.725582, 35.353077, 32.451591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627659, 35.975979, 32.780010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.275764, 35.872143, 32.620674>,  <40.064629, 35.809841, 32.525074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.275764, 35.872143, 32.620674>,  <40.627659, 35.975979, 32.780010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275764, 35.872143, 32.620674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453412, 0.205866, 0.867201,
		-0.143113, 0.943521, -0.298810,
		-0.879737, -0.259592, -0.398341,
		40.011845, 35.794266, 32.501171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198956, 36.350285, 33.179043>,  <40.627659, 35.975979, 32.780010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198956, 36.350285, 33.179043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934502, 36.107986, 33.001968>,  <39.775829, 35.962608, 32.895721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934502, 36.107986, 33.001968>,  <40.198956, 36.350285, 33.179043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934502, 36.107986, 33.001968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604465, 0.080526, 0.792551,
		-0.444438, 0.791572, -0.419392,
		-0.661133, -0.605747, -0.442689,
		39.736160, 35.926262, 32.869164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464951, 36.737972, 33.116089>,  <40.198956, 36.350285, 33.179043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464951, 36.737972, 33.116089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.447144, 36.340321, 33.155521>,  <39.436459, 36.101730, 33.179180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.447144, 36.340321, 33.155521>,  <39.464951, 36.737972, 33.116089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447144, 36.340321, 33.155521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660144, 0.103339, 0.743996,
		-0.749818, -0.031958, -0.660871,
		-0.044517, -0.994133, 0.098582,
		39.433788, 36.042080, 33.185097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786907, 36.880894, 33.340527>,  <39.464951, 36.737972, 33.116089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786907, 36.880894, 33.340527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.545620, 37.193439, 33.276527>,  <38.400848, 37.380966, 33.238129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.545620, 37.193439, 33.276527>,  <38.786907, 36.880894, 33.340527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545620, 37.193439, 33.276527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318093, -0.419646, -0.850126,
		-0.731403, -0.461913, 0.501683,
		-0.603214, 0.781366, -0.159999,
		38.364655, 37.427849, 33.228527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808205, 36.877396, 34.060806>,  <38.786907, 36.880894, 33.340527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808205, 36.877396, 34.060806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842239, 37.274166, 34.023201>,  <38.862659, 37.512230, 34.000637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842239, 37.274166, 34.023201>,  <38.808205, 36.877396, 34.060806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842239, 37.274166, 34.023201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318518, -0.062327, -0.945865,
		-0.944090, 0.110429, 0.310643,
		0.085090, 0.991928, -0.094016,
		38.867767, 37.571743, 33.994995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168350, 37.104630, 33.764030>,  <38.808205, 36.877396, 34.060806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168350, 37.104630, 33.764030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424015, 37.399410, 33.676048>,  <38.577412, 37.576279, 33.623260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424015, 37.399410, 33.676048>,  <38.168350, 37.104630, 33.764030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424015, 37.399410, 33.676048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390314, 0.064405, -0.918426,
		-0.662668, 0.672872, 0.328807,
		0.639160, 0.736950, -0.219952,
		38.615765, 37.620495, 33.610062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766575, 37.743786, 33.492062>,  <38.168350, 37.104630, 33.764030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766575, 37.743786, 33.492062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.137230, 37.781269, 33.346420>,  <38.359623, 37.803761, 33.259037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.137230, 37.781269, 33.346420>,  <37.766575, 37.743786, 33.492062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137230, 37.781269, 33.346420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374923, 0.302394, -0.876351,
		0.027980, 0.948565, 0.315342,
		0.926633, 0.093709, -0.364100,
		38.415218, 37.809383, 33.237190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697235, 38.197506, 32.927670>,  <37.766575, 37.743786, 33.492062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697235, 38.197506, 32.927670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067577, 38.075668, 32.838219>,  <38.289783, 38.002563, 32.784546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067577, 38.075668, 32.838219>,  <37.697235, 38.197506, 32.927670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067577, 38.075668, 32.838219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214499, 0.063579, -0.974653,
		0.311094, 0.950357, -0.006471,
		0.925857, -0.304597, -0.223629,
		38.345333, 37.984291, 32.771130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903797, 38.657833, 32.405403>,  <37.697235, 38.197506, 32.927670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903797, 38.657833, 32.405403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128494, 38.328323, 32.374844>,  <38.263313, 38.130615, 32.356506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128494, 38.328323, 32.374844>,  <37.903797, 38.657833, 32.405403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128494, 38.328323, 32.374844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045078, 0.061735, -0.997074,
		0.826083, 0.563544, -0.002456,
		0.561743, -0.823776, -0.076401,
		38.297016, 38.081192, 32.351925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172009, 38.743561, 31.723574>,  <37.903797, 38.657833, 32.405403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172009, 38.743561, 31.723574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219948, 38.356899, 31.814095>,  <38.248711, 38.124901, 31.868406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219948, 38.356899, 31.814095>,  <38.172009, 38.743561, 31.723574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219948, 38.356899, 31.814095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131423, -0.241385, -0.961489,
		0.984055, 0.085490, -0.155970,
		0.119847, -0.966656, 0.226301,
		38.255901, 38.066902, 31.881985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586113, 38.497784, 31.243725>,  <38.172009, 38.743561, 31.723574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586113, 38.497784, 31.243725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.416924, 38.158726, 31.371847>,  <38.315411, 37.955292, 31.448721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.416924, 38.158726, 31.371847>,  <38.586113, 38.497784, 31.243725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416924, 38.158726, 31.371847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134834, -0.290672, -0.947275,
		0.896055, -0.443859, 0.008655,
		-0.422972, -0.847643, 0.320305,
		38.290031, 37.904434, 31.467939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928154, 37.957355, 30.936998>,  <38.586113, 38.497784, 31.243725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928154, 37.957355, 30.936998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595493, 37.761322, 31.041435>,  <38.395897, 37.643703, 31.104097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595493, 37.761322, 31.041435>,  <38.928154, 37.957355, 30.936998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595493, 37.761322, 31.041435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008808, -0.458486, -0.888658,
		0.555221, -0.741357, 0.376986,
		-0.831656, -0.490081, 0.261091,
		38.345997, 37.614296, 31.119762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117538, 37.233936, 30.943188>,  <38.928154, 37.957355, 30.936998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117538, 37.233936, 30.943188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721794, 37.270340, 30.897772>,  <38.484348, 37.292183, 30.870522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721794, 37.270340, 30.897772>,  <39.117538, 37.233936, 30.943188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721794, 37.270340, 30.897772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062734, -0.437279, -0.897135,
		-0.131296, -0.894709, 0.426915,
		-0.989356, 0.091008, -0.113541,
		38.424988, 37.297642, 30.863708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869083, 36.565685, 30.766340>,  <39.117538, 37.233936, 30.943188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869083, 36.565685, 30.766340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580967, 36.815212, 30.644989>,  <38.408096, 36.964928, 30.572178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580967, 36.815212, 30.644989>,  <38.869083, 36.565685, 30.766340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580967, 36.815212, 30.644989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046448, -0.479740, -0.876181,
		-0.692118, -0.617011, 0.374526,
		-0.720288, 0.623816, -0.303378,
		38.364880, 37.002357, 30.553976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499447, 36.059307, 30.509851>,  <38.869083, 36.565685, 30.766340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499447, 36.059307, 30.509851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388828, 36.408649, 30.349464>,  <38.322456, 36.618256, 30.253233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388828, 36.408649, 30.349464>,  <38.499447, 36.059307, 30.509851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388828, 36.408649, 30.349464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082247, -0.437217, -0.895587,
		-0.957474, -0.214696, 0.192743,
		-0.276550, 0.873354, -0.400966,
		38.305862, 36.670654, 30.229174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918377, 35.912392, 30.110106>,  <38.499447, 36.059307, 30.509851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918377, 35.912392, 30.110106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.075329, 36.251324, 29.966959>,  <38.169498, 36.454681, 29.881071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.075329, 36.251324, 29.966959>,  <37.918377, 35.912392, 30.110106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075329, 36.251324, 29.966959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162016, -0.319319, -0.933695,
		-0.905424, 0.424340, 0.011988,
		0.392377, 0.847332, -0.357868,
		38.193043, 36.505524, 29.859598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497955, 35.991383, 29.492952>,  <37.918377, 35.912392, 30.110106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497955, 35.991383, 29.492952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.823437, 36.222565, 29.468107>,  <38.018726, 36.361275, 29.453201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.823437, 36.222565, 29.468107>,  <37.497955, 35.991383, 29.492952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823437, 36.222565, 29.468107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061281, -0.191547, -0.979569,
		-0.578046, 0.793268, -0.191279,
		0.813699, 0.577958, -0.062111,
		38.067547, 36.395950, 29.449474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278126, 36.298580, 28.870939>,  <37.497955, 35.991383, 29.492952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278126, 36.298580, 28.870939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671696, 36.331760, 28.934202>,  <37.907837, 36.351669, 28.972160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671696, 36.331760, 28.934202>,  <37.278126, 36.298580, 28.870939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671696, 36.331760, 28.934202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176878, -0.330288, -0.927159,
		-0.024675, 0.940228, -0.339651,
		0.983923, 0.082954, 0.158156,
		37.966873, 36.356647, 28.981649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041557, 37.039883, 28.830009>,  <37.278126, 36.298580, 28.870939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041557, 37.039883, 28.830009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.673286, 37.148212, 28.717573>,  <36.452324, 37.213211, 28.650112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.673286, 37.148212, 28.717573>,  <37.041557, 37.039883, 28.830009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673286, 37.148212, 28.717573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231866, 0.199847, 0.951998,
		0.314001, 0.941655, -0.121199,
		-0.920675, 0.270826, -0.281090,
		36.397083, 37.229462, 28.633245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796577, 37.685848, 29.249710>,  <37.041557, 37.039883, 28.830009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796577, 37.685848, 29.249710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.460388, 37.507072, 29.127172>,  <36.258675, 37.399807, 29.053650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.460388, 37.507072, 29.127172>,  <36.796577, 37.685848, 29.249710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460388, 37.507072, 29.127172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389580, 0.105489, 0.914932,
		-0.376602, 0.888323, -0.262778,
		-0.840475, -0.446938, -0.306346,
		36.208244, 37.372990, 29.035269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275528, 38.038425, 29.644407>,  <36.796577, 37.685848, 29.249710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275528, 38.038425, 29.644407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.139469, 37.684193, 29.517891>,  <36.057835, 37.471653, 29.441980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.139469, 37.684193, 29.517891>,  <36.275528, 38.038425, 29.644407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139469, 37.684193, 29.517891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386293, -0.175071, 0.905609,
		-0.857367, 0.430222, -0.282545,
		-0.340148, -0.885584, -0.316291,
		36.037426, 37.418518, 29.423004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750404, 37.962883, 30.078178>,  <36.275528, 38.038425, 29.644407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750404, 37.962883, 30.078178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.766811, 37.581848, 29.957584>,  <35.776657, 37.353226, 29.885227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.766811, 37.581848, 29.957584>,  <35.750404, 37.962883, 30.078178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766811, 37.581848, 29.957584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315113, -0.298674, 0.900832,
		-0.948168, 0.058054, -0.312423,
		0.041016, -0.952588, -0.301486,
		35.779118, 37.296070, 29.867138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128704, 37.522106, 30.338083>,  <35.750404, 37.962883, 30.078178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128704, 37.522106, 30.338083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.392574, 37.247101, 30.216660>,  <35.550896, 37.082096, 30.143805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.392574, 37.247101, 30.216660>,  <35.128704, 37.522106, 30.338083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392574, 37.247101, 30.216660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244512, -0.578276, 0.778339,
		-0.710660, -0.439230, -0.549581,
		0.659679, -0.687513, -0.303561,
		35.590477, 37.040848, 30.125591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672268, 36.941238, 30.281437>,  <35.128704, 37.522106, 30.338083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672268, 36.941238, 30.281437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.054321, 36.829781, 30.321602>,  <35.283554, 36.762905, 30.345701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.054321, 36.829781, 30.321602>,  <34.672268, 36.941238, 30.281437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054321, 36.829781, 30.321602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273683, -0.700660, 0.658918,
		-0.113249, -0.656834, -0.745483,
		0.955130, -0.278648, 0.100415,
		35.340858, 36.746185, 30.351727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748325, 36.178947, 30.292015>,  <34.672268, 36.941238, 30.281437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748325, 36.178947, 30.292015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.068115, 36.327496, 30.480877>,  <35.259991, 36.416622, 30.594194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.068115, 36.327496, 30.480877>,  <34.748325, 36.178947, 30.292015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068115, 36.327496, 30.480877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120573, -0.670803, 0.731769,
		0.588477, -0.641959, -0.491512,
		0.799473, 0.371366, 0.472155,
		35.307957, 36.438904, 30.622524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280930, 35.613010, 30.331409>,  <34.748325, 36.178947, 30.292015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280930, 35.613010, 30.331409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.344425, 35.880104, 30.622318>,  <35.382523, 36.040359, 30.796864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.344425, 35.880104, 30.622318>,  <35.280930, 35.613010, 30.331409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344425, 35.880104, 30.622318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161534, -0.709123, 0.686332,
		0.974017, -0.226427, -0.004704,
		0.158739, 0.667739, 0.727273,
		35.392048, 36.080425, 30.840500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694866, 35.314819, 30.696226>,  <35.280930, 35.613010, 30.331409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694866, 35.314819, 30.696226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603100, 35.608929, 30.951334>,  <35.548038, 35.785393, 31.104399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603100, 35.608929, 30.951334>,  <35.694866, 35.314819, 30.696226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603100, 35.608929, 30.951334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105399, -0.632624, 0.767253,
		0.967604, 0.243242, 0.067639,
		-0.229419, 0.735269, 0.637767,
		35.534275, 35.829510, 31.142664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880234, 34.968239, 31.244968>,  <35.694866, 35.314819, 30.696226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880234, 34.968239, 31.244968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682915, 35.291512, 31.373655>,  <35.564522, 35.485474, 31.450867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682915, 35.291512, 31.373655>,  <35.880234, 34.968239, 31.244968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682915, 35.291512, 31.373655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036853, -0.388936, 0.920528,
		0.869079, 0.442239, 0.221645,
		-0.493299, 0.808179, 0.321718,
		35.534924, 35.533966, 31.470171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234467, 35.232010, 31.812815>,  <35.880234, 34.968239, 31.244968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234467, 35.232010, 31.812815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848171, 35.331043, 31.843950>,  <35.616394, 35.390465, 31.862631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848171, 35.331043, 31.843950>,  <36.234467, 35.232010, 31.812815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848171, 35.331043, 31.843950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115448, -0.678422, 0.725545,
		0.232442, 0.691697, 0.683759,
		-0.965734, 0.247586, 0.077839,
		35.558453, 35.405319, 31.867302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053555, 35.093784, 32.503574>,  <36.234467, 35.232010, 31.812815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053555, 35.093784, 32.503574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.697598, 35.115280, 32.322372>,  <35.484024, 35.128178, 32.213654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.697598, 35.115280, 32.322372>,  <36.053555, 35.093784, 32.503574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697598, 35.115280, 32.322372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328946, -0.763604, 0.555611,
		-0.316059, 0.643445, 0.697198,
		-0.889889, 0.053735, -0.453002,
		35.430630, 35.131401, 32.186470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.824696, 37.667076, 25.176826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469200, 37.483894, 25.168552>,  <37.255905, 37.373985, 25.163588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469200, 37.483894, 25.168552>,  <37.824696, 37.667076, 25.176826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469200, 37.483894, 25.168552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118561, 0.186035, 0.975364,
		-0.442823, 0.869293, -0.219631,
		-0.888736, -0.457953, -0.020684,
		37.202579, 37.346508, 25.162348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384354, 38.081432, 25.484138>,  <37.824696, 37.667076, 25.176826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384354, 38.081432, 25.484138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201130, 37.726074, 25.496397>,  <37.091194, 37.512859, 25.503752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201130, 37.726074, 25.496397>,  <37.384354, 38.081432, 25.484138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201130, 37.726074, 25.496397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233107, 0.153319, 0.960289,
		-0.857811, 0.432728, -0.277320,
		-0.458062, -0.888392, 0.030647,
		37.063713, 37.459557, 25.505590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666878, 38.165115, 25.780500>,  <37.384354, 38.081432, 25.484138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666878, 38.165115, 25.780500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735474, 37.774223, 25.830494>,  <36.776630, 37.539688, 25.860491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735474, 37.774223, 25.830494>,  <36.666878, 38.165115, 25.780500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735474, 37.774223, 25.830494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476819, 0.028688, 0.878533,
		-0.862111, -0.210250, -0.461041,
		0.171486, -0.977227, 0.124983,
		36.786919, 37.481056, 25.867989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071301, 37.882931, 25.894911>,  <36.666878, 38.165115, 25.780500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071301, 37.882931, 25.894911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338913, 37.629524, 26.050373>,  <36.499481, 37.477482, 26.143650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338913, 37.629524, 26.050373>,  <36.071301, 37.882931, 25.894911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338913, 37.629524, 26.050373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486363, 0.022239, 0.873474,
		-0.562000, -0.773413, -0.293238,
		0.669035, -0.633512, 0.388658,
		36.539623, 37.439472, 26.166971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680759, 37.473629, 26.343199>,  <36.071301, 37.882931, 25.894911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680759, 37.473629, 26.343199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054543, 37.388161, 26.457134>,  <36.278812, 37.336880, 26.525496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054543, 37.388161, 26.457134>,  <35.680759, 37.473629, 26.343199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054543, 37.388161, 26.457134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310498, -0.097393, 0.945571,
		-0.174303, -0.972038, -0.157355,
		0.934457, -0.213674, 0.284840,
		36.334881, 37.324059, 26.542585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734501, 36.766808, 26.675934>,  <35.680759, 37.473629, 26.343199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734501, 36.766808, 26.675934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035496, 36.986515, 26.821302>,  <36.216091, 37.118340, 26.908524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035496, 36.986515, 26.821302>,  <35.734501, 36.766808, 26.675934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035496, 36.986515, 26.821302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210033, -0.322862, 0.922847,
		0.624222, -0.770759, -0.127585,
		0.752484, 0.549265, 0.363422,
		36.261242, 37.151295, 26.930328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953079, 36.470089, 27.242521>,  <35.734501, 36.766808, 26.675934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953079, 36.470089, 27.242521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135994, 36.815620, 27.327087>,  <36.245743, 37.022938, 27.377827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135994, 36.815620, 27.327087>,  <35.953079, 36.470089, 27.242521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135994, 36.815620, 27.327087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165204, -0.151078, 0.974619,
		0.873842, -0.480604, 0.073622,
		0.457283, 0.863826, 0.211417,
		36.273178, 37.074768, 27.390512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432693, 36.281963, 27.737560>,  <35.953079, 36.470089, 27.242521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432693, 36.281963, 27.737560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350800, 36.671982, 27.771894>,  <36.301662, 36.905994, 27.792494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350800, 36.671982, 27.771894>,  <36.432693, 36.281963, 27.737560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350800, 36.671982, 27.771894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143518, -0.116646, 0.982749,
		0.968239, 0.188881, 0.163818,
		-0.204731, 0.975048, 0.085833,
		36.289379, 36.964497, 27.797644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796593, 36.395466, 28.363106>,  <36.432693, 36.281963, 27.737560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796593, 36.395466, 28.363106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558556, 36.706741, 28.282827>,  <36.415733, 36.893509, 28.234661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558556, 36.706741, 28.282827>,  <36.796593, 36.395466, 28.363106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558556, 36.706741, 28.282827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242995, 0.063807, 0.967927,
		0.766040, 0.624775, 0.151126,
		-0.595094, 0.778193, -0.200696,
		36.380028, 36.940201, 28.222618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530872, 36.595821, 28.253941>,  <36.796593, 36.395466, 28.363106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530872, 36.595821, 28.253941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858074, 36.432442, 28.415949>,  <38.054394, 36.334415, 28.513155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858074, 36.432442, 28.415949>,  <37.530872, 36.595821, 28.253941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858074, 36.432442, 28.415949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306352, -0.286602, -0.907749,
		0.486848, 0.866620, -0.109312,
		0.818002, -0.408448, 0.405022,
		38.103474, 36.309906, 28.537455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134563, 36.822636, 27.934698>,  <37.530872, 36.595821, 28.253941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134563, 36.822636, 27.934698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287411, 36.479061, 28.071058>,  <38.379120, 36.272915, 28.152874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287411, 36.479061, 28.071058>,  <38.134563, 36.822636, 27.934698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287411, 36.479061, 28.071058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305186, -0.230902, -0.923876,
		0.872264, 0.457070, 0.173903,
		0.382121, -0.858936, 0.340899,
		38.402046, 36.221378, 28.173328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782639, 36.731033, 27.498476>,  <38.134563, 36.822636, 27.934698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782639, 36.731033, 27.498476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692642, 36.373592, 27.653833>,  <38.638645, 36.159126, 27.747047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692642, 36.373592, 27.653833>,  <38.782639, 36.731033, 27.498476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692642, 36.373592, 27.653833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460532, -0.448806, -0.765822,
		0.858655, 0.006563, 0.512512,
		-0.224992, -0.893605, 0.388392,
		38.625145, 36.105511, 27.770351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364258, 36.387932, 27.438065>,  <38.782639, 36.731033, 27.498476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364258, 36.387932, 27.438065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067158, 36.120628, 27.454809>,  <38.888897, 35.960247, 27.464855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067158, 36.120628, 27.454809>,  <39.364258, 36.387932, 27.438065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067158, 36.120628, 27.454809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410332, -0.503696, -0.760209,
		0.529101, -0.547469, 0.648328,
		-0.742752, -0.668257, 0.041862,
		38.844334, 35.920151, 27.467367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611183, 35.714886, 27.137321>,  <39.364258, 36.387932, 27.438065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611183, 35.714886, 27.137321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214272, 35.669632, 27.116968>,  <38.976124, 35.642479, 27.104757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214272, 35.669632, 27.116968>,  <39.611183, 35.714886, 27.137321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214272, 35.669632, 27.116968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092544, -0.401970, -0.910964,
		0.082613, -0.908636, 0.409335,
		-0.992276, -0.113139, -0.050881,
		38.916588, 35.635689, 27.101704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585873, 35.143379, 26.690804>,  <39.611183, 35.714886, 27.137321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585873, 35.143379, 26.690804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215107, 35.293274, 26.682739>,  <38.992649, 35.383209, 26.677900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215107, 35.293274, 26.682739>,  <39.585873, 35.143379, 26.690804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215107, 35.293274, 26.682739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093330, -0.282224, -0.954798,
		-0.363488, -0.883132, 0.296571,
		-0.926913, 0.374736, -0.020162,
		38.937035, 35.405693, 26.676691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198116, 34.605080, 26.446751>,  <39.585873, 35.143379, 26.690804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198116, 34.605080, 26.446751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986977, 34.937355, 26.375944>,  <38.860294, 35.136719, 26.333460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986977, 34.937355, 26.375944>,  <39.198116, 34.605080, 26.446751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986977, 34.937355, 26.375944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198482, -0.323288, -0.925251,
		-0.825821, -0.453258, 0.335524,
		-0.527849, 0.830688, -0.177014,
		38.828621, 35.186562, 26.322840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646420, 34.398598, 26.052406>,  <39.198116, 34.605080, 26.446751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646420, 34.398598, 26.052406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663620, 34.793331, 25.990044>,  <38.673939, 35.030170, 25.952627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663620, 34.793331, 25.990044>,  <38.646420, 34.398598, 26.052406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663620, 34.793331, 25.990044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281134, -0.137792, -0.949725,
		-0.958705, 0.084666, 0.271509,
		0.042998, 0.986836, -0.155905,
		38.676517, 35.089382, 25.943272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173557, 34.490196, 25.488379>,  <38.646420, 34.398598, 26.052406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173557, 34.490196, 25.488379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372196, 34.837162, 25.500940>,  <38.491379, 35.045341, 25.508478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372196, 34.837162, 25.500940>,  <38.173557, 34.490196, 25.488379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372196, 34.837162, 25.500940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153263, 0.123241, -0.980470,
		-0.854344, 0.482084, 0.194143,
		0.496596, 0.867414, 0.031404,
		38.521175, 35.097385, 25.510361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880177, 34.889885, 24.944445>,  <38.173557, 34.490196, 25.488379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880177, 34.889885, 24.944445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232952, 35.059494, 25.026793>,  <38.444618, 35.161259, 25.076202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232952, 35.059494, 25.026793>,  <37.880177, 34.889885, 24.944445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232952, 35.059494, 25.026793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139960, 0.181490, -0.973382,
		-0.450099, 0.887281, 0.100718,
		0.881942, 0.424022, 0.205872,
		38.497536, 35.186699, 25.088554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978165, 35.468616, 24.514441>,  <37.880177, 34.889885, 24.944445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978165, 35.468616, 24.514441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353012, 35.414288, 24.643038>,  <38.577923, 35.381691, 24.720196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353012, 35.414288, 24.643038>,  <37.978165, 35.468616, 24.514441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353012, 35.414288, 24.643038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348200, 0.301273, -0.887689,
		0.023707, 0.943816, 0.329621,
		0.937121, -0.135818, 0.321494,
		38.634148, 35.373543, 24.739487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402557, 36.024242, 24.214069>,  <37.978165, 35.468616, 24.514441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402557, 36.024242, 24.214069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654209, 35.735363, 24.329050>,  <38.805199, 35.562035, 24.398039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654209, 35.735363, 24.329050>,  <38.402557, 36.024242, 24.214069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654209, 35.735363, 24.329050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486723, 0.077680, -0.870095,
		0.606053, 0.687309, 0.400382,
		0.629127, -0.722199, 0.287451,
		38.842949, 35.518703, 24.415285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058056, 36.289619, 24.013226>,  <38.402557, 36.024242, 24.214069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058056, 36.289619, 24.013226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108425, 35.894787, 24.052839>,  <39.138649, 35.657887, 24.076607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108425, 35.894787, 24.052839>,  <39.058056, 36.289619, 24.013226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108425, 35.894787, 24.052839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448391, -0.032417, -0.893249,
		0.884923, 0.156889, 0.438518,
		0.125925, -0.987084, 0.099034,
		39.146202, 35.598663, 24.082550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762535, 36.252075, 24.028942>,  <39.058056, 36.289619, 24.013226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762535, 36.252075, 24.028942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618095, 35.897171, 23.914141>,  <39.531429, 35.684227, 23.845261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618095, 35.897171, 23.914141>,  <39.762535, 36.252075, 24.028942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618095, 35.897171, 23.914141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437050, 0.110849, -0.892580,
		0.823767, -0.447746, 0.347751,
		-0.361102, -0.887263, -0.287001,
		39.509766, 35.630993, 23.828041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.292442, 31.129726, 22.979269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264900, 31.524611, 23.036785>,  <36.248375, 31.761541, 23.071295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264900, 31.524611, 23.036785>,  <36.292442, 31.129726, 22.979269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264900, 31.524611, 23.036785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142823, -0.152403, 0.977944,
		0.987351, 0.046797, 0.151490,
		-0.068853, 0.987210, 0.143792,
		36.244244, 31.820774, 23.079924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708996, 31.176641, 23.493708>,  <36.292442, 31.129726, 22.979269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708996, 31.176641, 23.493708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.509624, 31.522532, 23.518429>,  <36.390003, 31.730066, 23.533262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.509624, 31.522532, 23.518429>,  <36.708996, 31.176641, 23.493708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509624, 31.522532, 23.518429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005902, -0.067906, 0.997674,
		0.866911, 0.497634, 0.028743,
		-0.498428, 0.864725, 0.061805,
		36.360096, 31.781950, 23.536970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011654, 31.585403, 24.069366>,  <36.708996, 31.176641, 23.493708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011654, 31.585403, 24.069366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.649193, 31.748007, 24.022650>,  <36.431717, 31.845570, 23.994619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.649193, 31.748007, 24.022650>,  <37.011654, 31.585403, 24.069366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649193, 31.748007, 24.022650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076422, 0.114231, 0.990510,
		0.415994, 0.906477, -0.072444,
		-0.906150, 0.406510, -0.116794,
		36.377346, 31.869961, 23.987612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038643, 32.166286, 24.480207>,  <37.011654, 31.585403, 24.069366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038643, 32.166286, 24.480207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.643929, 32.124821, 24.430401>,  <36.407101, 32.099941, 24.400517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.643929, 32.124821, 24.430401>,  <37.038643, 32.166286, 24.480207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643929, 32.124821, 24.430401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129087, 0.038575, 0.990883,
		-0.097917, 0.993864, -0.051448,
		-0.986787, -0.103665, -0.124518,
		36.347893, 32.093719, 24.393045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758537, 32.710289, 24.772615>,  <37.038643, 32.166286, 24.480207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758537, 32.710289, 24.772615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.496792, 32.407974, 24.762848>,  <36.339745, 32.226585, 24.756989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.496792, 32.407974, 24.762848>,  <36.758537, 32.710289, 24.772615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496792, 32.407974, 24.762848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026450, -0.055147, 0.998128,
		-0.755718, 0.652492, 0.056077,
		-0.654363, -0.755786, -0.024417,
		36.300484, 32.181240, 24.755522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337685, 32.908413, 25.223957>,  <36.758537, 32.710289, 24.772615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337685, 32.908413, 25.223957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234787, 32.525860, 25.168591>,  <36.173050, 32.296329, 25.135370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234787, 32.525860, 25.168591>,  <36.337685, 32.908413, 25.223957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234787, 32.525860, 25.168591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231696, -0.078014, 0.969655,
		-0.938159, 0.281510, -0.201521,
		-0.257246, -0.956382, -0.138415,
		36.157612, 32.238945, 25.127066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608173, 32.825623, 25.542767>,  <36.337685, 32.908413, 25.223957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608173, 32.825623, 25.542767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777412, 32.463341, 25.532286>,  <35.878956, 32.245972, 25.525997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777412, 32.463341, 25.532286>,  <35.608173, 32.825623, 25.542767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777412, 32.463341, 25.532286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307654, -0.170799, 0.936043,
		-0.852253, -0.387980, -0.350909,
		0.423100, -0.905704, -0.026200,
		35.904343, 32.191631, 25.524426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102406, 32.295330, 25.828255>,  <35.608173, 32.825623, 25.542767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102406, 32.295330, 25.828255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454647, 32.109089, 25.863462>,  <35.665993, 31.997345, 25.884586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454647, 32.109089, 25.863462>,  <35.102406, 32.295330, 25.828255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454647, 32.109089, 25.863462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283119, -0.368046, 0.885655,
		-0.379992, -0.804821, -0.455927,
		0.880597, -0.465623, 0.088005,
		35.718830, 31.969408, 25.889868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949352, 31.645414, 26.027687>,  <35.102406, 32.295330, 25.828255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949352, 31.645414, 26.027687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336483, 31.685518, 26.119997>,  <35.568760, 31.709581, 26.175383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336483, 31.685518, 26.119997>,  <34.949352, 31.645414, 26.027687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336483, 31.685518, 26.119997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208769, -0.191952, 0.958942,
		0.140444, -0.976269, -0.164845,
		0.967828, 0.100263, 0.230773,
		35.626831, 31.715597, 26.189228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113880, 31.067751, 26.511307>,  <34.949352, 31.645414, 26.027687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113880, 31.067751, 26.511307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387798, 31.349613, 26.585621>,  <35.552151, 31.518730, 26.630209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387798, 31.349613, 26.585621>,  <35.113880, 31.067751, 26.511307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387798, 31.349613, 26.585621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080351, -0.326399, 0.941811,
		0.724291, -0.630021, -0.280137,
		0.684796, 0.704654, 0.185785,
		35.593239, 31.561010, 26.641356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569729, 30.840252, 26.964746>,  <35.113880, 31.067751, 26.511307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569729, 30.840252, 26.964746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.649155, 31.226967, 27.029112>,  <35.696812, 31.458996, 27.067730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.649155, 31.226967, 27.029112>,  <35.569729, 30.840252, 26.964746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649155, 31.226967, 27.029112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055481, -0.175005, 0.983003,
		0.978515, -0.186266, -0.088389,
		0.198568, 0.966788, 0.160911,
		35.708725, 31.517004, 27.077385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128780, 30.827744, 27.497757>,  <35.569729, 30.840252, 26.964746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128780, 30.827744, 27.497757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.017647, 31.211945, 27.491554>,  <35.950966, 31.442465, 27.487833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.017647, 31.211945, 27.491554>,  <36.128780, 30.827744, 27.497757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017647, 31.211945, 27.491554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058762, 0.033106, 0.997723,
		0.958829, 0.276293, -0.065640,
		-0.277837, 0.960503, -0.015508,
		35.934296, 31.500095, 27.486902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561588, 31.192001, 27.984947>,  <36.128780, 30.827744, 27.497757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561588, 31.192001, 27.984947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252647, 31.436110, 27.914467>,  <36.067284, 31.582575, 27.872179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252647, 31.436110, 27.914467>,  <36.561588, 31.192001, 27.984947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252647, 31.436110, 27.914467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105204, 0.150661, 0.982972,
		0.626427, 0.777733, -0.052160,
		-0.772348, 0.610272, -0.176199,
		36.020943, 31.619192, 27.861607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659576, 31.786043, 28.495079>,  <36.561588, 31.192001, 27.984947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659576, 31.786043, 28.495079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.277157, 31.796406, 28.378256>,  <36.047707, 31.802624, 28.308161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.277157, 31.796406, 28.378256>,  <36.659576, 31.786043, 28.495079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277157, 31.796406, 28.378256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285021, 0.151600, 0.946457,
		0.068796, 0.988102, -0.137553,
		-0.956049, 0.025907, -0.292059,
		35.990341, 31.804178, 28.290638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180710, 32.287888, 28.370642>,  <36.659576, 31.786043, 28.495079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180710, 32.287888, 28.370642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.540489, 32.165104, 28.495068>,  <37.756359, 32.091434, 28.569723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.540489, 32.165104, 28.495068>,  <37.180710, 32.287888, 28.370642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540489, 32.165104, 28.495068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268373, -0.173794, -0.947508,
		0.344907, 0.935720, -0.073940,
		0.899453, -0.306958, 0.311065,
		37.810326, 32.073017, 28.588387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694363, 32.638618, 28.032848>,  <37.180710, 32.287888, 28.370642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694363, 32.638618, 28.032848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848843, 32.287788, 28.147106>,  <37.941532, 32.077290, 28.215660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848843, 32.287788, 28.147106>,  <37.694363, 32.638618, 28.032848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848843, 32.287788, 28.147106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300629, -0.173078, -0.937905,
		0.872049, 0.448095, 0.196829,
		0.386204, -0.877072, 0.285643,
		37.964703, 32.024666, 28.232800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288551, 32.613869, 27.626934>,  <37.694363, 32.638618, 28.032848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288551, 32.613869, 27.626934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240082, 32.232872, 27.738707>,  <38.211002, 32.004276, 27.805771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240082, 32.232872, 27.738707>,  <38.288551, 32.613869, 27.626934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240082, 32.232872, 27.738707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253926, -0.301883, -0.918906,
		0.959604, -0.040389, 0.278441,
		-0.121171, -0.952489, 0.279432,
		38.203732, 31.947124, 27.822536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952057, 32.216072, 27.410803>,  <38.288551, 32.613869, 27.626934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952057, 32.216072, 27.410803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.664619, 31.939297, 27.438648>,  <38.492157, 31.773232, 27.455357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.664619, 31.939297, 27.438648>,  <38.952057, 32.216072, 27.410803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664619, 31.939297, 27.438648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332966, -0.430210, -0.839079,
		0.610541, -0.579775, 0.539538,
		-0.718591, -0.691940, 0.069615,
		38.449043, 31.731714, 27.459532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315933, 31.514221, 27.481621>,  <38.952057, 32.216072, 27.410803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315933, 31.514221, 27.481621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.950638, 31.501181, 27.319172>,  <38.731461, 31.493357, 27.221703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.950638, 31.501181, 27.319172>,  <39.315933, 31.514221, 27.481621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950638, 31.501181, 27.319172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378335, -0.437765, -0.815613,
		-0.151196, -0.898498, 0.412117,
		-0.913237, -0.032601, -0.406121,
		38.676666, 31.491400, 27.197336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226986, 30.833469, 27.216537>,  <39.315933, 31.514221, 27.481621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226986, 30.833469, 27.216537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945156, 31.052053, 27.035448>,  <38.776058, 31.183205, 26.926794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945156, 31.052053, 27.035448>,  <39.226986, 30.833469, 27.216537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945156, 31.052053, 27.035448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268173, -0.385627, -0.882822,
		-0.657011, -0.743419, 0.125156,
		-0.704571, 0.546461, -0.452726,
		38.733784, 31.215992, 26.899630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091805, 30.381592, 26.557344>,  <39.226986, 30.833469, 27.216537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091805, 30.381592, 26.557344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908497, 30.723526, 26.459980>,  <38.798512, 30.928686, 26.401562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908497, 30.723526, 26.459980>,  <39.091805, 30.381592, 26.557344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908497, 30.723526, 26.459980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158493, -0.190880, -0.968734,
		-0.874569, -0.482518, -0.048011,
		-0.458268, 0.854834, -0.243413,
		38.771015, 30.979977, 26.386955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494450, 30.239193, 26.121675>,  <39.091805, 30.381592, 26.557344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494450, 30.239193, 26.121675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594982, 30.618055, 26.041946>,  <38.655300, 30.845373, 25.994110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594982, 30.618055, 26.041946>,  <38.494450, 30.239193, 26.121675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594982, 30.618055, 26.041946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015947, -0.209956, -0.977581,
		-0.967770, 0.242518, -0.067872,
		0.251331, 0.947155, -0.199321,
		38.670380, 30.902203, 25.982149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131420, 30.485741, 25.530195>,  <38.494450, 30.239193, 26.121675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131420, 30.485741, 25.530195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398098, 30.783825, 25.524801>,  <38.558105, 30.962675, 25.521564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398098, 30.783825, 25.524801>,  <38.131420, 30.485741, 25.530195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398098, 30.783825, 25.524801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003335, -0.021075, -0.999772,
		-0.745324, 0.666498, -0.016536,
		0.666694, 0.745209, -0.013485,
		38.598106, 31.007387, 25.520756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863579, 31.079372, 25.060331>,  <38.131420, 30.485741, 25.530195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863579, 31.079372, 25.060331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260841, 31.126019, 25.062731>,  <38.499199, 31.154005, 25.064171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260841, 31.126019, 25.062731>,  <37.863579, 31.079372, 25.060331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260841, 31.126019, 25.062731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025959, 0.270601, -0.962342,
		-0.113846, 0.955603, 0.271777,
		0.993159, 0.116614, 0.006000,
		38.558788, 31.161003, 25.064531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991348, 31.671062, 24.698225>,  <37.863579, 31.079372, 25.060331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991348, 31.671062, 24.698225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317932, 31.441776, 24.670464>,  <38.513882, 31.304205, 24.653807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317932, 31.441776, 24.670464>,  <37.991348, 31.671062, 24.698225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317932, 31.441776, 24.670464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035460, 0.169751, -0.984849,
		0.576314, 0.801628, 0.158921,
		0.816459, -0.573217, -0.069404,
		38.562870, 31.269812, 24.649643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530685, 32.085022, 24.301956>,  <37.991348, 31.671062, 24.698225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530685, 32.085022, 24.301956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666065, 31.709072, 24.283678>,  <38.747292, 31.483501, 24.272711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666065, 31.709072, 24.283678>,  <38.530685, 32.085022, 24.301956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666065, 31.709072, 24.283678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233256, 0.130845, -0.963572,
		0.911617, 0.315459, 0.263516,
		0.338447, -0.939875, -0.045698,
		38.767601, 31.427109, 24.269968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128574, 32.245800, 24.034647>,  <38.530685, 32.085022, 24.301956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128574, 32.245800, 24.034647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106670, 31.848093, 23.997929>,  <39.093529, 31.609468, 23.975899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106670, 31.848093, 23.997929>,  <39.128574, 32.245800, 24.034647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106670, 31.848093, 23.997929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166232, 0.081570, -0.982707,
		0.984565, -0.069074, 0.160813,
		-0.054762, -0.994271, -0.091794,
		39.090240, 31.549812, 23.970390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687229, 32.073002, 23.526005>,  <39.128574, 32.245800, 24.034647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687229, 32.073002, 23.526005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388100, 31.808197, 23.506023>,  <39.208622, 31.649313, 23.494034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388100, 31.808197, 23.506023>,  <39.687229, 32.073002, 23.526005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388100, 31.808197, 23.506023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005014, 0.080875, -0.996712,
		0.663879, -0.745114, -0.063799,
		-0.747824, -0.662015, -0.049955,
		39.163754, 31.609592, 23.491037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417767, 31.946980, 23.576666>,  <39.687229, 32.073002, 23.526005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417767, 31.946980, 23.576666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724380, 32.203094, 23.556864>,  <40.908348, 32.356762, 23.544983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724380, 32.203094, 23.556864>,  <40.417767, 31.946980, 23.576666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724380, 32.203094, 23.556864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045137, 0.023182, 0.998712,
		0.640609, -0.767786, -0.011131,
		0.766539, 0.640286, -0.049507,
		40.954342, 32.395180, 23.542011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880161, 31.549637, 23.995161>,  <40.417767, 31.946980, 23.576666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880161, 31.549637, 23.995161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.935181, 31.944036, 23.957447>,  <40.968193, 32.180676, 23.934818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.935181, 31.944036, 23.957447>,  <40.880161, 31.549637, 23.995161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935181, 31.944036, 23.957447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060333, 0.103354, 0.992813,
		0.988656, -0.130873, 0.073704,
		0.137550, 0.985997, -0.094286,
		40.976444, 32.239834, 23.929161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314224, 31.697357, 24.555918>,  <40.880161, 31.549637, 23.995161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314224, 31.697357, 24.555918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.164753, 32.050465, 24.442015>,  <41.075069, 32.262329, 24.373672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.164753, 32.050465, 24.442015>,  <41.314224, 31.697357, 24.555918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164753, 32.050465, 24.442015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041876, 0.290630, 0.955919,
		0.926614, 0.369127, -0.071634,
		-0.373674, 0.882768, -0.284759,
		41.052650, 32.315296, 24.356586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720181, 32.228050, 24.938219>,  <41.314224, 31.697357, 24.555918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720181, 32.228050, 24.938219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.367344, 32.384556, 24.833279>,  <41.155643, 32.478458, 24.770315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.367344, 32.384556, 24.833279>,  <41.720181, 32.228050, 24.938219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367344, 32.384556, 24.833279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067345, 0.446458, 0.892267,
		0.466237, 0.804730, -0.367468,
		-0.882093, 0.391260, -0.262350,
		41.102715, 32.501934, 24.754574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813465, 33.036030, 25.011497>,  <41.720181, 32.228050, 24.938219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813465, 33.036030, 25.011497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.438778, 32.905941, 25.063337>,  <41.213966, 32.827888, 25.094440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.438778, 32.905941, 25.063337>,  <41.813465, 33.036030, 25.011497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438778, 32.905941, 25.063337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047547, 0.484933, 0.873258,
		-0.346850, 0.811832, -0.469707,
		-0.936715, -0.325222, 0.129599,
		41.157764, 32.808372, 25.102217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484535, 33.561760, 25.369175>,  <41.813465, 33.036030, 25.011497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484535, 33.561760, 25.369175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.251659, 33.239258, 25.411165>,  <41.111935, 33.045757, 25.436359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.251659, 33.239258, 25.411165>,  <41.484535, 33.561760, 25.369175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251659, 33.239258, 25.411165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039239, 0.156823, 0.986847,
		-0.812108, 0.570409, -0.122936,
		-0.582186, -0.806251, 0.104975,
		41.077003, 32.997383, 25.442657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980480, 33.809765, 25.838879>,  <41.484535, 33.561760, 25.369175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980480, 33.809765, 25.838879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967033, 33.410294, 25.823320>,  <40.958965, 33.170612, 25.813986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967033, 33.410294, 25.823320>,  <40.980480, 33.809765, 25.838879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967033, 33.410294, 25.823320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151579, -0.033371, 0.987882,
		-0.987873, 0.039101, -0.150257,
		-0.033613, -0.998678, -0.038894,
		40.956951, 33.110691, 25.811653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335327, 33.643635, 26.185320>,  <40.980480, 33.809765, 25.838879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335327, 33.643635, 26.185320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.585060, 33.333134, 26.220263>,  <40.734901, 33.146832, 26.241228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.585060, 33.333134, 26.220263>,  <40.335327, 33.643635, 26.185320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585060, 33.333134, 26.220263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094172, 0.036220, 0.994897,
		-0.775458, -0.629377, -0.050488,
		0.624337, -0.776255, 0.087357,
		40.772362, 33.100258, 26.246469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941063, 33.178310, 26.541245>,  <40.335327, 33.643635, 26.185320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941063, 33.178310, 26.541245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329433, 33.092098, 26.582895>,  <40.562458, 33.040371, 26.607885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329433, 33.092098, 26.582895>,  <39.941063, 33.178310, 26.541245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329433, 33.092098, 26.582895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081300, 0.112207, 0.990353,
		-0.225133, -0.970029, 0.091423,
		0.970930, -0.215528, 0.104125,
		40.620712, 33.027439, 26.614132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018291, 32.670303, 26.981197>,  <39.941063, 33.178310, 26.541245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018291, 32.670303, 26.981197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.368141, 32.862556, 27.006590>,  <40.578049, 32.977909, 27.021826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.368141, 32.862556, 27.006590>,  <40.018291, 32.670303, 26.981197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368141, 32.862556, 27.006590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169100, 0.179726, 0.969074,
		0.454359, -0.858307, 0.238467,
		0.874622, 0.480632, 0.063480,
		40.630527, 33.006744, 27.025635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338524, 32.441227, 27.530575>,  <40.018291, 32.670303, 26.981197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338524, 32.441227, 27.530575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.492176, 32.806030, 27.473047>,  <40.584366, 33.024914, 27.438530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.492176, 32.806030, 27.473047>,  <40.338524, 32.441227, 27.530575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492176, 32.806030, 27.473047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039797, 0.171983, 0.984296,
		0.922420, -0.372375, 0.102360,
		0.384131, 0.912008, -0.143821,
		40.607414, 33.079632, 27.429901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636803, 32.641899, 28.202885>,  <40.338524, 32.441227, 27.530575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636803, 32.641899, 28.202885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663025, 32.996975, 28.020584>,  <40.678757, 33.210022, 27.911203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663025, 32.996975, 28.020584>,  <40.636803, 32.641899, 28.202885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663025, 32.996975, 28.020584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228657, 0.457943, 0.859072,
		0.971297, 0.047895, 0.232997,
		0.065554, 0.887690, -0.455750,
		40.682690, 33.263283, 27.883860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178246, 32.972233, 28.552572>,  <40.636803, 32.641899, 28.202885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178246, 32.972233, 28.552572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956017, 33.266125, 28.396873>,  <40.822681, 33.442459, 28.303453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956017, 33.266125, 28.396873>,  <41.178246, 32.972233, 28.552572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956017, 33.266125, 28.396873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198698, 0.337262, 0.920203,
		0.807381, 0.588578, -0.041382,
		-0.555568, 0.734732, -0.389248,
		40.789345, 33.486546, 28.280100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525188, 33.583183, 28.915588>,  <41.178246, 32.972233, 28.552572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525188, 33.583183, 28.915588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.158325, 33.689941, 28.797203>,  <40.938210, 33.753998, 28.726171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.158325, 33.689941, 28.797203>,  <41.525188, 33.583183, 28.915588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158325, 33.689941, 28.797203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139261, 0.481186, 0.865487,
		0.373408, 0.835001, -0.404154,
		-0.917155, 0.266897, -0.295961,
		40.883179, 33.770012, 28.708414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.369286, 35.843761, 23.783991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049263, 35.646786, 23.646927>,  <39.857250, 35.528603, 23.564690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049263, 35.646786, 23.646927>,  <40.369286, 35.843761, 23.783991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049263, 35.646786, 23.646927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481783, -0.187043, -0.856095,
		0.357480, -0.850013, 0.386892,
		-0.800058, -0.492435, -0.342658,
		39.809246, 35.499054, 23.544130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645058, 35.273979, 23.421164>,  <40.369286, 35.843761, 23.783991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645058, 35.273979, 23.421164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.277142, 35.340973, 23.279215>,  <40.056393, 35.381168, 23.194046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.277142, 35.340973, 23.279215>,  <40.645058, 35.273979, 23.421164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277142, 35.340973, 23.279215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359674, -0.001784, -0.933076,
		-0.156913, -0.985872, -0.058600,
		-0.919789, 0.167489, -0.354872,
		40.001205, 35.391220, 23.172752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545197, 34.800518, 22.935200>,  <40.645058, 35.273979, 23.421164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545197, 34.800518, 22.935200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.256145, 35.056503, 22.830700>,  <40.082714, 35.210094, 22.768000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.256145, 35.056503, 22.830700>,  <40.545197, 34.800518, 22.935200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256145, 35.056503, 22.830700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344174, 0.005349, -0.938891,
		-0.599459, -0.768386, -0.224125,
		-0.722629, 0.639964, -0.261251,
		40.039356, 35.248493, 22.752325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094357, 34.447563, 22.392410>,  <40.545197, 34.800518, 22.935200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094357, 34.447563, 22.392410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091541, 34.847233, 22.376389>,  <40.089851, 35.087036, 22.366776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091541, 34.847233, 22.376389>,  <40.094357, 34.447563, 22.392410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091541, 34.847233, 22.376389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341490, -0.035245, -0.939224,
		-0.939859, -0.020285, -0.340960,
		-0.007035, 0.999173, -0.040053,
		40.089432, 35.146984, 22.364372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846348, 34.604939, 21.785660>,  <40.094357, 34.447563, 22.392410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846348, 34.604939, 21.785660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.035240, 34.945843, 21.875679>,  <40.148575, 35.150387, 21.929689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.035240, 34.945843, 21.875679>,  <39.846348, 34.604939, 21.785660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035240, 34.945843, 21.875679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307548, 0.079960, -0.948167,
		-0.826080, 0.516970, -0.224351,
		0.472235, 0.852261, 0.225047,
		40.176910, 35.201523, 21.943193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622604, 35.095852, 21.238197>,  <39.846348, 34.604939, 21.785660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622604, 35.095852, 21.238197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.954803, 35.255856, 21.393251>,  <40.154125, 35.351860, 21.486284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.954803, 35.255856, 21.393251>,  <39.622604, 35.095852, 21.238197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954803, 35.255856, 21.393251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373654, 0.116030, -0.920282,
		-0.413102, 0.909135, -0.053104,
		0.830500, 0.400013, 0.387634,
		40.203953, 35.375858, 21.509542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762245, 35.771072, 20.902155>,  <39.622604, 35.095852, 21.238197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762245, 35.771072, 20.902155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.114048, 35.657162, 21.054667>,  <40.325130, 35.588814, 21.146173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.114048, 35.657162, 21.054667>,  <39.762245, 35.771072, 20.902155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114048, 35.657162, 21.054667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424301, 0.106436, -0.899244,
		0.215504, 0.952666, 0.214443,
		0.879504, -0.284780, 0.381279,
		40.377899, 35.571728, 21.169050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168392, 36.294651, 20.652178>,  <39.762245, 35.771072, 20.902155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168392, 36.294651, 20.652178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.420425, 35.999187, 20.747993>,  <40.571648, 35.821911, 20.805483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.420425, 35.999187, 20.747993>,  <40.168392, 36.294651, 20.652178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420425, 35.999187, 20.747993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485572, 0.134063, -0.863855,
		0.605980, 0.660616, 0.443143,
		0.630086, -0.738657, 0.239537,
		40.609451, 35.777592, 20.819855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831738, 36.554443, 20.478165>,  <40.168392, 36.294651, 20.652178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831738, 36.554443, 20.478165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.897339, 36.163116, 20.528772>,  <40.936699, 35.928322, 20.559137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.897339, 36.163116, 20.528772>,  <40.831738, 36.554443, 20.478165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897339, 36.163116, 20.528772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515299, -0.024406, -0.856663,
		0.841173, 0.205688, 0.500121,
		0.163999, -0.978313, 0.126520,
		40.946537, 35.869621, 20.566729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612717, 36.450733, 20.397284>,  <40.831738, 36.554443, 20.478165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612717, 36.450733, 20.397284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.389996, 36.126484, 20.324778>,  <41.256363, 35.931934, 20.281273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.389996, 36.126484, 20.324778>,  <41.612717, 36.450733, 20.397284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389996, 36.126484, 20.324778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347816, -0.029360, -0.937103,
		0.754315, -0.584832, 0.298295,
		-0.556806, -0.810623, -0.181267,
		41.222954, 35.883297, 20.270397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051182, 36.048294, 19.969994>,  <41.612717, 36.450733, 20.397284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051182, 36.048294, 19.969994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.707561, 35.853554, 19.906738>,  <41.501389, 35.736710, 19.868786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.707561, 35.853554, 19.906738>,  <42.051182, 36.048294, 19.969994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707561, 35.853554, 19.906738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298243, -0.224948, -0.927604,
		0.416035, -0.844021, 0.338442,
		-0.859049, -0.486854, -0.158137,
		41.449848, 35.707497, 19.859297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188686, 35.443394, 19.765739>,  <42.051182, 36.048294, 19.969994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188686, 35.443394, 19.765739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.832355, 35.540825, 19.612329>,  <41.618557, 35.599281, 19.520283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.832355, 35.540825, 19.612329>,  <42.188686, 35.443394, 19.765739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832355, 35.540825, 19.612329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385005, -0.043494, -0.921889,
		-0.241230, -0.968906, -0.055032,
		-0.890831, 0.243575, -0.383526,
		41.565105, 35.613895, 19.497272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863964, 34.985138, 19.275196>,  <42.188686, 35.443394, 19.765739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863964, 34.985138, 19.275196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.732700, 35.348351, 19.171055>,  <41.653942, 35.566280, 19.108570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.732700, 35.348351, 19.171055>,  <41.863964, 34.985138, 19.275196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732700, 35.348351, 19.171055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190779, -0.206228, -0.959726,
		-0.925158, -0.364611, -0.105559,
		-0.328157, 0.908036, -0.260353,
		41.634254, 35.620762, 19.092949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441307, 34.851475, 18.645292>,  <41.863964, 34.985138, 19.275196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441307, 34.851475, 18.645292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.587372, 35.222462, 18.677437>,  <41.675011, 35.445053, 18.696724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.587372, 35.222462, 18.677437>,  <41.441307, 34.851475, 18.645292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587372, 35.222462, 18.677437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195266, 0.008096, -0.980717,
		-0.910233, 0.373817, -0.178146,
		0.365167, 0.927467, 0.080363,
		41.696922, 35.500702, 18.701546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257519, 34.052376, 18.359488>,  <41.441307, 34.851475, 18.645292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257519, 34.052376, 18.359488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.407936, 33.698536, 18.249165>,  <41.498184, 33.486233, 18.182970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.407936, 33.698536, 18.249165>,  <41.257519, 34.052376, 18.359488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407936, 33.698536, 18.249165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154542, -0.233613, 0.959970,
		-0.913625, -0.403611, 0.048861,
		0.376040, -0.884604, -0.275809,
		41.520748, 33.433155, 18.166422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907787, 33.525707, 18.728794>,  <41.257519, 34.052376, 18.359488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907787, 33.525707, 18.728794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.247719, 33.334862, 18.639215>,  <41.451679, 33.220352, 18.585468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.247719, 33.334862, 18.639215>,  <40.907787, 33.525707, 18.728794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247719, 33.334862, 18.639215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156565, -0.177193, 0.971643,
		-0.503269, -0.860791, -0.075884,
		0.849828, -0.477117, -0.223946,
		41.502666, 33.191727, 18.572031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882675, 32.863117, 18.975378>,  <40.907787, 33.525707, 18.728794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882675, 32.863117, 18.975378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.274208, 32.927704, 18.925072>,  <41.509129, 32.966457, 18.894888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.274208, 32.927704, 18.925072>,  <40.882675, 32.863117, 18.975378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274208, 32.927704, 18.925072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178701, -0.374707, 0.909759,
		0.099774, -0.912974, -0.395630,
		0.978831, 0.161470, -0.125763,
		41.567856, 32.976143, 18.887342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125896, 32.336639, 19.363161>,  <40.882675, 32.863117, 18.975378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125896, 32.336639, 19.363161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.420574, 32.601944, 19.310455>,  <41.597382, 32.761127, 19.278831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.420574, 32.601944, 19.310455>,  <41.125896, 32.336639, 19.363161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420574, 32.601944, 19.310455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271395, -0.111524, 0.955985,
		0.619375, -0.740030, -0.262166,
		0.736695, 0.663264, -0.131765,
		41.641582, 32.800922, 19.270926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768768, 31.923336, 19.455605>,  <41.125896, 32.336639, 19.363161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768768, 31.923336, 19.455605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.818764, 32.315685, 19.515289>,  <41.848763, 32.551094, 19.551100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.818764, 32.315685, 19.515289>,  <41.768768, 31.923336, 19.455605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818764, 32.315685, 19.515289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271419, -0.178458, 0.945772,
		0.954311, -0.077713, -0.288534,
		0.124990, 0.980874, 0.149211,
		41.856262, 32.609947, 19.560053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310585, 31.926773, 19.972757>,  <41.768768, 31.923336, 19.455605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310585, 31.926773, 19.972757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.203907, 32.312275, 19.975544>,  <42.139900, 32.543575, 19.977217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.203907, 32.312275, 19.975544>,  <42.310585, 31.926773, 19.972757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203907, 32.312275, 19.975544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158411, 0.036703, 0.986691,
		0.950672, 0.264253, -0.162458,
		-0.266699, 0.963755, 0.006968,
		42.123898, 32.601402, 19.977634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662964, 32.160511, 20.481388>,  <42.310585, 31.926773, 19.972757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662964, 32.160511, 20.481388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.380520, 32.437088, 20.420307>,  <42.211052, 32.603035, 20.383659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.380520, 32.437088, 20.420307>,  <42.662964, 32.160511, 20.481388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380520, 32.437088, 20.420307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208977, 0.002558, 0.977917,
		0.676560, 0.722431, 0.142688,
		-0.706113, 0.691438, -0.152702,
		42.168686, 32.644520, 20.374496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726639, 32.522743, 21.004829>,  <42.662964, 32.160511, 20.481388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726639, 32.522743, 21.004829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.353767, 32.585838, 20.874496>,  <42.130047, 32.623695, 20.796297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.353767, 32.585838, 20.874496>,  <42.726639, 32.522743, 21.004829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353767, 32.585838, 20.874496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343972, -0.105400, 0.933045,
		0.112833, 0.981840, 0.152508,
		-0.932176, 0.157737, -0.325833,
		42.074116, 32.633160, 20.776747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496086, 32.972958, 21.541174>,  <42.726639, 32.522743, 21.004829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496086, 32.972958, 21.541174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.163601, 32.831280, 21.369768>,  <41.964108, 32.746273, 21.266924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.163601, 32.831280, 21.369768>,  <42.496086, 32.972958, 21.541174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163601, 32.831280, 21.369768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437767, -0.058128, 0.897207,
		-0.342698, 0.933362, -0.106739,
		-0.831215, -0.354198, -0.428515,
		41.914238, 32.725021, 21.241213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990883, 33.376019, 21.683121>,  <42.496086, 32.972958, 21.541174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990883, 33.376019, 21.683121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.809753, 33.024624, 21.622181>,  <41.701073, 32.813786, 21.585617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.809753, 33.024624, 21.622181>,  <41.990883, 33.376019, 21.683121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809753, 33.024624, 21.622181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342447, 0.013599, 0.939439,
		-0.823211, 0.477576, -0.306993,
		-0.452828, -0.878485, -0.152349,
		41.673904, 32.761078, 21.576477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271378, 33.494457, 21.911280>,  <41.990883, 33.376019, 21.683121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271378, 33.494457, 21.911280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.316563, 33.097153, 21.921682>,  <41.343674, 32.858772, 21.927925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.316563, 33.097153, 21.921682>,  <41.271378, 33.494457, 21.911280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316563, 33.097153, 21.921682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556808, -0.041604, 0.829599,
		-0.822924, -0.108197, -0.557754,
		0.112964, -0.993259, 0.026008,
		41.350452, 32.799175, 21.929485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635498, 33.128136, 21.929325>,  <41.271378, 33.494457, 21.911280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635498, 33.128136, 21.929325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.897362, 32.877373, 22.098282>,  <41.054478, 32.726913, 22.199656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.897362, 32.877373, 22.098282>,  <40.635498, 33.128136, 21.929325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897362, 32.877373, 22.098282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517451, 0.035698, 0.854968,
		-0.551063, -0.778276, -0.301024,
		0.654655, -0.626907, 0.422392,
		41.093758, 32.689301, 22.224998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342392, 32.947277, 22.555237>,  <40.635498, 33.128136, 21.929325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342392, 32.947277, 22.555237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.710594, 32.802845, 22.614969>,  <40.931515, 32.716187, 22.650808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.710594, 32.802845, 22.614969>,  <40.342392, 32.947277, 22.555237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710594, 32.802845, 22.614969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154112, 0.015699, 0.987929,
		-0.359066, -0.932403, -0.041196,
		0.920501, -0.361080, 0.149331,
		40.986744, 32.694523, 22.659769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187832, 32.390297, 23.020828>,  <40.342392, 32.947277, 22.555237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187832, 32.390297, 23.020828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.582947, 32.445412, 23.049931>,  <40.820015, 32.478481, 23.067392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.582947, 32.445412, 23.049931>,  <40.187832, 32.390297, 23.020828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582947, 32.445412, 23.049931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066153, -0.051922, 0.996458,
		0.141074, -0.989100, -0.042173,
		0.987786, 0.137785, 0.072756,
		40.879284, 32.486748, 23.071758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907345, 31.624924, 22.976736>,  <40.187832, 32.390297, 23.020828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907345, 31.624924, 22.976736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.512600, 31.584324, 23.027023>,  <39.275753, 31.559963, 23.057196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.512600, 31.584324, 23.027023>,  <39.907345, 31.624924, 22.976736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512600, 31.584324, 23.027023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129148, 0.027944, -0.991232,
		0.097101, -0.994443, -0.040686,
		-0.986860, -0.101504, 0.125717,
		39.216541, 31.553873, 23.064739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719410, 31.100243, 22.510281>,  <39.907345, 31.624924, 22.976736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719410, 31.100243, 22.510281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.380054, 31.298580, 22.584450>,  <39.176441, 31.417582, 22.628952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.380054, 31.298580, 22.584450>,  <39.719410, 31.100243, 22.510281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380054, 31.298580, 22.584450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204025, 0.016953, -0.978819,
		-0.488484, -0.868247, 0.086782,
		-0.848385, 0.495843, 0.185425,
		39.125538, 31.447332, 22.640078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306335, 30.753819, 22.130878>,  <39.719410, 31.100243, 22.510281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306335, 30.753819, 22.130878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118446, 31.103237, 22.181906>,  <39.005711, 31.312889, 22.212523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118446, 31.103237, 22.181906>,  <39.306335, 30.753819, 22.130878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118446, 31.103237, 22.181906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096910, 0.092606, -0.990975,
		-0.877477, -0.477849, 0.041157,
		-0.469725, 0.873547, 0.127568,
		38.977528, 31.365301, 22.220177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707886, 30.697287, 21.673229>,  <39.306335, 30.753819, 22.130878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707886, 30.697287, 21.673229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.763115, 31.087561, 21.741312>,  <38.796253, 31.321726, 21.782162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.763115, 31.087561, 21.741312>,  <38.707886, 30.697287, 21.673229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763115, 31.087561, 21.741312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014883, 0.173876, -0.984655,
		-0.990310, 0.133422, 0.038528,
		0.138074, 0.975687, 0.170206,
		38.804539, 31.380266, 21.792374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262333, 31.030815, 21.278605>,  <38.707886, 30.697287, 21.673229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262333, 31.030815, 21.278605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517548, 31.327930, 21.359764>,  <38.670677, 31.506201, 21.408461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517548, 31.327930, 21.359764>,  <38.262333, 31.030815, 21.278605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517548, 31.327930, 21.359764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111944, 0.350185, -0.929967,
		-0.761822, 0.570643, 0.306583,
		0.638041, 0.742790, 0.202899,
		38.708961, 31.550768, 21.420633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941315, 31.606277, 21.040991>,  <38.262333, 31.030815, 21.278605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941315, 31.606277, 21.040991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327549, 31.708382, 21.021029>,  <38.559288, 31.769644, 21.009050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327549, 31.708382, 21.021029>,  <37.941315, 31.606277, 21.040991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327549, 31.708382, 21.021029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177350, 0.505814, -0.844216,
		-0.190250, 0.824012, 0.533676,
		0.965584, 0.255260, -0.049907,
		38.617226, 31.784960, 21.006056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926888, 32.366829, 20.788658>,  <37.941315, 31.606277, 21.040991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926888, 32.366829, 20.788658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296978, 32.224632, 20.735619>,  <38.519032, 32.139313, 20.703794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296978, 32.224632, 20.735619>,  <37.926888, 32.366829, 20.788658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296978, 32.224632, 20.735619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036521, 0.431302, -0.901468,
		0.377658, 0.829217, 0.412035,
		0.925224, -0.355495, -0.132601,
		38.574547, 32.117985, 20.695839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528912, 33.022034, 20.691725>,  <37.926888, 32.366829, 20.788658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528912, 33.022034, 20.691725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195202, 32.838741, 20.569084>,  <36.994976, 32.728764, 20.495499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195202, 32.838741, 20.569084>,  <37.528912, 33.022034, 20.691725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195202, 32.838741, 20.569084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273725, -0.138483, 0.951786,
		-0.478600, 0.877977, -0.009896,
		-0.834276, -0.458233, -0.306602,
		36.944920, 32.701271, 20.477104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970200, 33.357906, 21.043198>,  <37.528912, 33.022034, 20.691725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970200, 33.357906, 21.043198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835239, 32.995380, 20.941402>,  <36.754265, 32.777866, 20.880325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835239, 32.995380, 20.941402>,  <36.970200, 33.357906, 21.043198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835239, 32.995380, 20.941402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359759, -0.125681, 0.924542,
		-0.869906, 0.403492, -0.283649,
		-0.337396, -0.906310, -0.254490,
		36.734020, 32.723488, 20.865055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436852, 33.342861, 21.378759>,  <36.970200, 33.357906, 21.043198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436852, 33.342861, 21.378759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.471050, 32.958282, 21.274221>,  <36.491570, 32.727535, 21.211498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.471050, 32.958282, 21.274221>,  <36.436852, 33.342861, 21.378759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471050, 32.958282, 21.274221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335910, -0.274765, 0.900927,
		-0.938006, 0.010763, -0.346452,
		0.085496, -0.961451, -0.261347,
		36.496700, 32.669846, 21.195818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829273, 33.068565, 21.493120>,  <36.436852, 33.342861, 21.378759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829273, 33.068565, 21.493120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107059, 32.780762, 21.491127>,  <36.273731, 32.608078, 21.489931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107059, 32.780762, 21.491127>,  <35.829273, 33.068565, 21.493120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107059, 32.780762, 21.491127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292670, -0.288796, 0.911560,
		-0.657314, -0.631588, -0.411138,
		0.694465, -0.719509, -0.004982,
		36.315399, 32.564911, 21.489632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491024, 32.426975, 21.719315>,  <35.829273, 33.068565, 21.493120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491024, 32.426975, 21.719315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879181, 32.401146, 21.812408>,  <36.112076, 32.385647, 21.868265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879181, 32.401146, 21.812408>,  <35.491024, 32.426975, 21.719315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879181, 32.401146, 21.812408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240704, -0.338057, 0.909823,
		0.019926, -0.938907, -0.343592,
		0.970394, -0.064574, 0.232735,
		36.170300, 32.381775, 21.882229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514137, 31.846300, 22.024826>,  <35.491024, 32.426975, 21.719315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514137, 31.846300, 22.024826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864468, 31.996777, 22.145763>,  <36.074665, 32.087063, 22.218325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864468, 31.996777, 22.145763>,  <35.514137, 31.846300, 22.024826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864468, 31.996777, 22.145763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222211, -0.241785, 0.944544,
		0.428433, -0.894438, -0.128167,
		0.875824, 0.376193, 0.302342,
		36.127216, 32.109634, 22.236465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751068, 31.361057, 22.495855>,  <35.514137, 31.846300, 22.024826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751068, 31.361057, 22.495855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975727, 31.682642, 22.574039>,  <36.110523, 31.875593, 22.620949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975727, 31.682642, 22.574039>,  <35.751068, 31.361057, 22.495855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975727, 31.682642, 22.574039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045381, -0.205950, 0.977510,
		0.826133, -0.557884, -0.079186,
		0.561645, 0.803959, 0.195459,
		36.144222, 31.923830, 22.632677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.198166, 36.915485, 18.585329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460400, 36.642834, 18.715307>,  <38.617741, 36.479240, 18.793295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460400, 36.642834, 18.715307>,  <38.198166, 36.915485, 18.585329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460400, 36.642834, 18.715307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421742, 0.026439, 0.906330,
		-0.626375, -0.731218, -0.270140,
		0.655582, -0.681631, 0.324946,
		38.657074, 36.438343, 18.812792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894489, 36.314526, 18.877098>,  <38.198166, 36.915485, 18.585329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894489, 36.314526, 18.877098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.251633, 36.339191, 19.055538>,  <38.465919, 36.353992, 19.162601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.251633, 36.339191, 19.055538>,  <37.894489, 36.314526, 18.877098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251633, 36.339191, 19.055538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447747, 0.015396, 0.894028,
		0.048274, -0.997977, 0.041363,
		0.892856, 0.061679, 0.446098,
		38.519489, 36.357693, 19.189367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856724, 35.814075, 19.364071>,  <37.894489, 36.314526, 18.877098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856724, 35.814075, 19.364071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.173294, 36.028702, 19.481201>,  <38.363235, 36.157478, 19.551479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.173294, 36.028702, 19.481201>,  <37.856724, 35.814075, 19.364071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173294, 36.028702, 19.481201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305590, -0.067581, 0.949762,
		0.529398, -0.841149, 0.110484,
		0.791425, 0.536565, 0.292824,
		38.410721, 36.189671, 19.569048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170826, 35.479973, 19.911482>,  <37.856724, 35.814075, 19.364071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170826, 35.479973, 19.911482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288239, 35.859940, 19.954365>,  <38.358685, 36.087921, 19.980095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288239, 35.859940, 19.954365>,  <38.170826, 35.479973, 19.911482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288239, 35.859940, 19.954365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317637, -0.008859, 0.948171,
		0.901637, -0.312367, 0.299129,
		0.293527, 0.949920, 0.107207,
		38.376297, 36.144917, 19.986526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447609, 35.410583, 20.583281>,  <38.170826, 35.479973, 19.911482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447609, 35.410583, 20.583281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.400501, 35.803478, 20.524857>,  <38.372238, 36.039215, 20.489801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.400501, 35.803478, 20.524857>,  <38.447609, 35.410583, 20.583281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400501, 35.803478, 20.524857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298426, 0.105279, 0.948608,
		0.947139, 0.155306, 0.280728,
		-0.117770, 0.982240, -0.146061,
		38.365170, 36.098152, 20.481039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750824, 35.659573, 21.187893>,  <38.447609, 35.410583, 20.583281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750824, 35.659573, 21.187893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523804, 35.956219, 21.044846>,  <38.387592, 36.134209, 20.959017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523804, 35.956219, 21.044846>,  <38.750824, 35.659573, 21.187893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523804, 35.956219, 21.044846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483088, 0.051777, 0.874040,
		0.666720, 0.668821, 0.328881,
		-0.567547, 0.741618, -0.357620,
		38.353539, 36.178703, 20.937559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725449, 36.182232, 21.655382>,  <38.750824, 35.659573, 21.187893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725449, 36.182232, 21.655382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.396896, 36.257519, 21.440010>,  <38.199764, 36.302689, 21.310787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.396896, 36.257519, 21.440010>,  <38.725449, 36.182232, 21.655382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396896, 36.257519, 21.440010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491707, 0.244745, 0.835658,
		0.289061, 0.951144, -0.108483,
		-0.821382, 0.188214, -0.538431,
		38.150482, 36.313984, 21.278481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568039, 36.829731, 21.738411>,  <38.725449, 36.182232, 21.655382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568039, 36.829731, 21.738411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.238888, 36.624336, 21.641085>,  <38.041397, 36.501099, 21.582689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.238888, 36.624336, 21.641085>,  <38.568039, 36.829731, 21.738411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238888, 36.624336, 21.641085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413176, 0.246765, 0.876580,
		-0.390067, 0.821853, -0.415217,
		-0.822881, -0.513483, -0.243315,
		37.992023, 36.470291, 21.568090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992363, 37.276093, 21.790411>,  <38.568039, 36.829731, 21.738411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992363, 37.276093, 21.790411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813751, 36.918201, 21.793827>,  <37.706585, 36.703465, 21.795876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813751, 36.918201, 21.793827>,  <37.992363, 37.276093, 21.790411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813751, 36.918201, 21.793827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403547, 0.209894, 0.890558,
		-0.798602, 0.394211, -0.454789,
		-0.446526, -0.894730, 0.008539,
		37.679794, 36.649784, 21.796389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381706, 37.477009, 21.846621>,  <37.992363, 37.276093, 21.790411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381706, 37.477009, 21.846621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.365360, 37.092846, 21.956860>,  <37.355553, 36.862350, 22.023003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.365360, 37.092846, 21.956860>,  <37.381706, 37.477009, 21.846621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365360, 37.092846, 21.956860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460617, 0.262878, 0.847778,
		-0.886658, -0.092303, -0.453120,
		-0.040862, -0.960403, 0.275600,
		37.353100, 36.804726, 22.039539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756542, 37.414948, 22.192753>,  <37.381706, 37.477009, 21.846621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756542, 37.414948, 22.192753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.971081, 37.101238, 22.317488>,  <37.099804, 36.913013, 22.392328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.971081, 37.101238, 22.317488>,  <36.756542, 37.414948, 22.192753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971081, 37.101238, 22.317488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290324, 0.175491, 0.940699,
		-0.792494, -0.595073, -0.133571,
		0.536345, -0.784277, 0.311839,
		37.131985, 36.865955, 22.411039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207020, 37.069782, 22.607502>,  <36.756542, 37.414948, 22.192753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207020, 37.069782, 22.607502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.582924, 36.964787, 22.695093>,  <36.808468, 36.901787, 22.747648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.582924, 36.964787, 22.695093>,  <36.207020, 37.069782, 22.607502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582924, 36.964787, 22.695093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210550, 0.060173, 0.975729,
		-0.269298, -0.963056, 0.001281,
		0.939759, -0.262493, 0.218976,
		36.864853, 36.886040, 22.760786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870770, 36.316055, 22.573082>,  <36.207020, 37.069782, 22.607502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870770, 36.316055, 22.573082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.538784, 36.093014, 22.567005>,  <35.339592, 35.959190, 22.563358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.538784, 36.093014, 22.567005>,  <35.870770, 36.316055, 22.573082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538784, 36.093014, 22.567005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042267, 0.090026, -0.995042,
		0.556207, -0.825211, -0.098287,
		-0.829968, -0.557604, -0.015194,
		35.289795, 35.925732, 22.562447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115131, 35.730545, 22.388376>,  <35.870770, 36.316055, 22.573082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115131, 35.730545, 22.388376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.719147, 35.725525, 22.332064>,  <35.481556, 35.722511, 22.298277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.719147, 35.725525, 22.332064>,  <36.115131, 35.730545, 22.388376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719147, 35.725525, 22.332064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141309, -0.108256, -0.984029,
		-0.002888, -0.994044, 0.108943,
		-0.989961, -0.012553, -0.140780,
		35.422157, 35.721760, 22.289829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952362, 35.206299, 21.936369>,  <36.115131, 35.730545, 22.388376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952362, 35.206299, 21.936369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.622299, 35.431454, 21.917282>,  <35.424263, 35.566547, 21.905830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.622299, 35.431454, 21.917282>,  <35.952362, 35.206299, 21.936369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622299, 35.431454, 21.917282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049239, -0.155818, -0.986558,
		-0.562753, -0.811716, 0.156290,
		-0.825157, 0.562884, -0.047719,
		35.374752, 35.600319, 21.902966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460072, 34.825832, 21.473093>,  <35.952362, 35.206299, 21.936369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460072, 34.825832, 21.473093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.369705, 35.215477, 21.469530>,  <35.315487, 35.449265, 21.467392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.369705, 35.215477, 21.469530>,  <35.460072, 34.825832, 21.473093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369705, 35.215477, 21.469530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058149, -0.022610, -0.998052,
		-0.972411, -0.224954, 0.061751,
		-0.225912, 0.974107, -0.008906,
		35.301933, 35.507710, 21.466858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984566, 34.877014, 20.966793>,  <35.460072, 34.825832, 21.473093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984566, 34.877014, 20.966793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.105793, 35.256374, 21.004065>,  <35.178528, 35.483990, 21.026428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.105793, 35.256374, 21.004065>,  <34.984566, 34.877014, 20.966793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105793, 35.256374, 21.004065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227367, 0.166916, -0.959397,
		-0.925448, 0.269577, 0.266222,
		0.303069, 0.948402, 0.093179,
		35.196712, 35.540894, 21.032019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430801, 35.386826, 20.655228>,  <34.984566, 34.877014, 20.966793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430801, 35.386826, 20.655228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.786251, 35.570095, 20.646969>,  <34.999519, 35.680058, 20.642014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.786251, 35.570095, 20.646969>,  <34.430801, 35.386826, 20.655228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786251, 35.570095, 20.646969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127851, 0.204223, -0.970540,
		-0.440460, 0.865083, 0.240055,
		0.888622, 0.458176, -0.020649,
		35.052837, 35.707546, 20.640774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326065, 36.011711, 20.247021>,  <34.430801, 35.386826, 20.655228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326065, 36.011711, 20.247021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.723499, 35.966900, 20.240871>,  <34.961960, 35.940014, 20.237181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.723499, 35.966900, 20.240871>,  <34.326065, 36.011711, 20.247021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723499, 35.966900, 20.240871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001691, 0.150674, -0.988582,
		0.113062, 0.982216, 0.149897,
		0.993586, -0.112025, -0.015374,
		35.021576, 35.933292, 20.236259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612812, 36.579350, 19.842453>,  <34.326065, 36.011711, 20.247021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612812, 36.579350, 19.842453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.886353, 36.289055, 19.812349>,  <35.050476, 36.114880, 19.794287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.886353, 36.289055, 19.812349>,  <34.612812, 36.579350, 19.842453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886353, 36.289055, 19.812349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064401, 0.162781, -0.984558,
		0.726778, 0.668441, 0.158056,
		0.683847, -0.725734, -0.075257,
		35.091507, 36.071335, 19.789772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188480, 36.856644, 19.508802>,  <34.612812, 36.579350, 19.842453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188480, 36.856644, 19.508802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.260544, 36.470909, 19.431232>,  <35.303783, 36.239468, 19.384691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.260544, 36.470909, 19.431232>,  <35.188480, 36.856644, 19.508802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260544, 36.470909, 19.431232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215630, 0.231074, -0.948741,
		0.959712, 0.129108, 0.249569,
		0.180159, -0.964332, -0.193925,
		35.314590, 36.181610, 19.373055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607395, 36.877590, 18.956219>,  <35.188480, 36.856644, 19.508802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607395, 36.877590, 18.956219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506878, 36.490440, 18.959684>,  <35.446568, 36.258152, 18.961763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506878, 36.490440, 18.959684>,  <35.607395, 36.877590, 18.956219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506878, 36.490440, 18.959684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086930, -0.031481, -0.995717,
		0.963999, -0.249465, 0.092048,
		-0.251295, -0.967872, 0.008662,
		35.431488, 36.200077, 18.962282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093239, 36.465546, 18.663588>,  <35.607395, 36.877590, 18.956219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093239, 36.465546, 18.663588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.761425, 36.244034, 18.634747>,  <35.562336, 36.111126, 18.617441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.761425, 36.244034, 18.634747>,  <36.093239, 36.465546, 18.663588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761425, 36.244034, 18.634747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269054, -0.283171, -0.920556,
		0.489365, -0.783036, 0.383897,
		-0.829537, -0.553777, -0.072105,
		35.512566, 36.077900, 18.613115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270851, 35.938290, 18.228132>,  <36.093239, 36.465546, 18.663588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270851, 35.938290, 18.228132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.871460, 35.916229, 18.229324>,  <35.631824, 35.902992, 18.230040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.871460, 35.916229, 18.229324>,  <36.270851, 35.938290, 18.228132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871460, 35.916229, 18.229324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024356, -0.488060, -0.872470,
		0.049574, -0.871066, 0.488658,
		-0.998473, -0.055154, 0.002980,
		35.571918, 35.899685, 18.230219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103523, 35.189701, 18.124485>,  <36.270851, 35.938290, 18.228132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103523, 35.189701, 18.124485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.801437, 35.419853, 17.998890>,  <35.620186, 35.557945, 17.923532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.801437, 35.419853, 17.998890>,  <36.103523, 35.189701, 18.124485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801437, 35.419853, 17.998890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107127, -0.364234, -0.925126,
		-0.646665, -0.732304, 0.213435,
		-0.755214, 0.575382, -0.313987,
		35.574875, 35.592468, 17.904694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802521, 34.733559, 17.538542>,  <36.103523, 35.189701, 18.124485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802521, 34.733559, 17.538542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.659885, 35.105629, 17.503616>,  <35.574303, 35.328869, 17.482660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.659885, 35.105629, 17.503616>,  <35.802521, 34.733559, 17.538542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659885, 35.105629, 17.503616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115472, -0.048861, -0.992109,
		-0.927098, -0.363856, -0.089985,
		-0.356588, 0.930173, -0.087314,
		35.552910, 35.384682, 17.477423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173008, 34.218853, 18.101084>,  <35.802521, 34.733559, 17.538542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173008, 34.218853, 18.101084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.484535, 33.985336, 18.009327>,  <36.671452, 33.845226, 17.954273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.484535, 33.985336, 18.009327>,  <36.173008, 34.218853, 18.101084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484535, 33.985336, 18.009327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161505, -0.540027, 0.826007,
		-0.606099, -0.606261, -0.514870,
		0.778820, -0.583797, -0.229396,
		36.718182, 33.810200, 17.940510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858822, 33.527184, 18.126717>,  <36.173008, 34.218853, 18.101084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858822, 33.527184, 18.126717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.251492, 33.456535, 18.155319>,  <36.487095, 33.414146, 18.172480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.251492, 33.456535, 18.155319>,  <35.858822, 33.527184, 18.126717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251492, 33.456535, 18.155319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179328, -0.729494, 0.660060,
		-0.064418, -0.660789, -0.747802,
		0.981678, -0.176621, 0.071505,
		36.545994, 33.403549, 18.176771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958302, 32.864250, 18.435411>,  <35.858822, 33.527184, 18.126717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958302, 32.864250, 18.435411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.331238, 33.004242, 18.471735>,  <36.555000, 33.088238, 18.493528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.331238, 33.004242, 18.471735>,  <35.958302, 32.864250, 18.435411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331238, 33.004242, 18.471735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144805, -0.591554, 0.793155,
		0.331307, -0.726345, -0.602211,
		0.932345, 0.349981, 0.090807,
		36.610943, 33.109238, 18.498978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548870, 32.264496, 18.513340>,  <35.958302, 32.864250, 18.435411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548870, 32.264496, 18.513340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.666840, 32.603508, 18.689840>,  <36.737621, 32.806915, 18.795740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.666840, 32.603508, 18.689840>,  <36.548870, 32.264496, 18.513340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666840, 32.603508, 18.689840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046237, -0.473909, 0.879359,
		0.954400, -0.238945, -0.178957,
		0.294928, 0.847535, 0.441251,
		36.755318, 32.857769, 18.822216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974773, 31.980118, 18.999334>,  <36.548870, 32.264496, 18.513340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974773, 31.980118, 18.999334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.931961, 32.356335, 19.128283>,  <36.906273, 32.582066, 19.205652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.931961, 32.356335, 19.128283>,  <36.974773, 31.980118, 18.999334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931961, 32.356335, 19.128283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023119, -0.326499, 0.944915,
		0.993987, 0.093678, 0.056689,
		-0.107027, 0.940544, 0.322370,
		36.899853, 32.638496, 19.224993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507973, 32.146305, 19.486019>,  <36.974773, 31.980118, 18.999334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507973, 32.146305, 19.486019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.190926, 32.380543, 19.553942>,  <37.000698, 32.521088, 19.594696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.190926, 32.380543, 19.553942>,  <37.507973, 32.146305, 19.486019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190926, 32.380543, 19.553942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009888, -0.290808, 0.956730,
		0.609641, 0.756641, 0.236289,
		-0.792616, 0.585599, 0.169807,
		36.953140, 32.556221, 19.604883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674820, 32.558914, 20.140842>,  <37.507973, 32.146305, 19.486019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674820, 32.558914, 20.140842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.277966, 32.549557, 20.091658>,  <37.039852, 32.543941, 20.062147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.277966, 32.549557, 20.091658>,  <37.674820, 32.558914, 20.140842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277966, 32.549557, 20.091658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100531, -0.436350, 0.894143,
		-0.074570, 0.899473, 0.430567,
		-0.992136, -0.023390, -0.122964,
		36.980324, 32.542542, 20.054768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283272, 32.929909, 20.400280>,  <37.674820, 32.558914, 20.140842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283272, 32.929909, 20.400280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523209, 32.612549, 20.358898>,  <38.667171, 32.422134, 20.334068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523209, 32.612549, 20.358898>,  <38.283272, 32.929909, 20.400280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523209, 32.612549, 20.358898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339087, 0.369194, -0.865284,
		0.724710, 0.483957, 0.490491,
		0.599847, -0.793399, -0.103454,
		38.703163, 32.374531, 20.327862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071316, 33.100510, 20.260355>,  <38.283272, 32.929909, 20.400280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071316, 33.100510, 20.260355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.014172, 32.729408, 20.122450>,  <38.979885, 32.506748, 20.039707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.014172, 32.729408, 20.122450>,  <39.071316, 33.100510, 20.260355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014172, 32.729408, 20.122450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549223, 0.215474, -0.807419,
		0.823375, -0.304700, 0.478761,
		-0.142860, -0.927755, -0.344764,
		38.971313, 32.451080, 20.019020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698807, 32.952587, 20.126583>,  <39.071316, 33.100510, 20.260355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698807, 32.952587, 20.126583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489040, 32.704533, 19.893202>,  <39.363182, 32.555698, 19.753172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489040, 32.704533, 19.893202>,  <39.698807, 32.952587, 20.126583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489040, 32.704533, 19.893202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509463, 0.320513, -0.798573,
		0.682231, -0.716030, 0.147857,
		-0.524413, -0.620139, -0.583455,
		39.331715, 32.518490, 19.718166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233746, 32.678219, 19.620071>,  <39.698807, 32.952587, 20.126583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233746, 32.678219, 19.620071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.868057, 32.606434, 19.474743>,  <39.648643, 32.563362, 19.387547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.868057, 32.606434, 19.474743>,  <40.233746, 32.678219, 19.620071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868057, 32.606434, 19.474743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339272, 0.151295, -0.928442,
		0.221592, -0.972060, -0.077429,
		-0.914216, -0.179466, -0.363319,
		39.593792, 32.552593, 19.365747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351475, 32.198795, 19.061947>,  <40.233746, 32.678219, 19.620071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351475, 32.198795, 19.061947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.994801, 32.361736, 18.982990>,  <39.780796, 32.459503, 18.935616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.994801, 32.361736, 18.982990>,  <40.351475, 32.198795, 19.061947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994801, 32.361736, 18.982990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298667, 0.201766, -0.932785,
		-0.340149, -0.890703, -0.301575,
		-0.891682, 0.407356, -0.197393,
		39.727295, 32.483944, 18.923773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144089, 31.755980, 18.509489>,  <40.351475, 32.198795, 19.061947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144089, 31.755980, 18.509489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.941059, 32.100414, 18.497524>,  <39.819241, 32.307076, 18.490345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.941059, 32.100414, 18.497524>,  <40.144089, 31.755980, 18.509489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941059, 32.100414, 18.497524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367692, 0.185081, -0.911344,
		-0.779209, -0.473578, -0.410558,
		-0.507579, 0.861086, -0.029914,
		39.788784, 32.358742, 18.488550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808910, 31.746677, 17.807980>,  <40.144089, 31.755980, 18.509489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808910, 31.746677, 17.807980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.850536, 32.116531, 17.954523>,  <39.875511, 32.338444, 18.042450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.850536, 32.116531, 17.954523>,  <39.808910, 31.746677, 17.807980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850536, 32.116531, 17.954523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047808, 0.363282, -0.930452,
		-0.993421, 0.114344, -0.006399,
		0.104067, 0.924636, 0.366358,
		39.881756, 32.393921, 18.064430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252316, 32.045841, 17.446978>,  <39.808910, 31.746677, 17.807980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252316, 32.045841, 17.446978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.463112, 32.364483, 17.565437>,  <39.589588, 32.555668, 17.636513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.463112, 32.364483, 17.565437>,  <39.252316, 32.045841, 17.446978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463112, 32.364483, 17.565437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203018, 0.456374, -0.866318,
		-0.825268, 0.396415, 0.402229,
		0.526988, 0.796604, 0.296152,
		39.621208, 32.603462, 17.654284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948284, 32.727135, 17.097025>,  <39.252316, 32.045841, 17.446978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948284, 32.727135, 17.097025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326984, 32.797928, 17.204607>,  <39.554203, 32.840405, 17.269156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326984, 32.797928, 17.204607>,  <38.948284, 32.727135, 17.097025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326984, 32.797928, 17.204607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158844, 0.469851, -0.868337,
		-0.280053, 0.864822, 0.416719,
		0.946752, 0.176987, 0.268955,
		39.611012, 32.851025, 17.285294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.529999, 33.133846, 33.405891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.807735, 33.385025, 33.265285>,  <37.974377, 33.535732, 33.180920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.807735, 33.385025, 33.265285>,  <37.529999, 33.133846, 33.405891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807735, 33.385025, 33.265285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011621, -0.498182, -0.866994,
		-0.719548, 0.597909, -0.353208,
		0.694346, 0.627949, -0.351518,
		38.016041, 33.573410, 33.159832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231186, 33.421528, 32.719833>,  <37.529999, 33.133846, 33.405891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231186, 33.421528, 32.719833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.629623, 33.452568, 32.736725>,  <37.868687, 33.471191, 32.746861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.629623, 33.452568, 32.736725>,  <37.231186, 33.421528, 32.719833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629623, 33.452568, 32.736725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067405, -0.358498, -0.931094,
		-0.057110, 0.930300, -0.362327,
		0.996090, 0.077597, 0.042233,
		37.928452, 33.475849, 32.749393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446960, 33.710655, 32.073631>,  <37.231186, 33.421528, 32.719833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446960, 33.710655, 32.073631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791580, 33.544327, 32.190136>,  <37.998352, 33.444530, 32.260040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791580, 33.544327, 32.190136>,  <37.446960, 33.710655, 32.073631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791580, 33.544327, 32.190136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191411, -0.265317, -0.944970,
		0.470214, 0.869885, -0.148990,
		0.861545, -0.415820, 0.291261,
		38.050045, 33.419582, 32.277515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990345, 33.949989, 31.587757>,  <37.446960, 33.710655, 32.073631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990345, 33.949989, 31.587757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137524, 33.610580, 31.739878>,  <38.225830, 33.406937, 31.831150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137524, 33.610580, 31.739878>,  <37.990345, 33.949989, 31.587757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137524, 33.610580, 31.739878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142640, -0.352648, -0.924821,
		0.918842, 0.394529, -0.008722,
		0.367944, -0.848520, 0.380304,
		38.247906, 33.356026, 31.853970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476658, 33.823792, 31.153244>,  <37.990345, 33.949989, 31.587757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476658, 33.823792, 31.153244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431629, 33.469898, 31.334167>,  <38.404610, 33.257565, 31.442720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431629, 33.469898, 31.334167>,  <38.476658, 33.823792, 31.153244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431629, 33.469898, 31.334167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023966, -0.452651, -0.891366,
		0.993354, -0.111185, 0.029753,
		-0.112574, -0.884729, 0.452307,
		38.397858, 33.204479, 31.469860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935604, 33.347813, 30.728411>,  <38.476658, 33.823792, 31.153244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935604, 33.347813, 30.728411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677082, 33.127281, 30.939438>,  <38.521969, 32.994965, 31.066053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677082, 33.127281, 30.939438>,  <38.935604, 33.347813, 30.728411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677082, 33.127281, 30.939438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084865, -0.635146, -0.767715,
		0.758342, -0.540953, 0.363713,
		-0.646309, -0.551324, 0.527566,
		38.483189, 32.961884, 31.097708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215557, 32.678581, 30.723007>,  <38.935604, 33.347813, 30.728411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215557, 32.678581, 30.723007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827129, 32.633831, 30.807386>,  <38.594070, 32.606983, 30.858015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827129, 32.633831, 30.807386>,  <39.215557, 32.678581, 30.723007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827129, 32.633831, 30.807386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069950, -0.711407, -0.699290,
		0.228303, -0.693819, 0.683003,
		-0.971074, -0.111874, 0.210949,
		38.535809, 32.600269, 30.870670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970165, 31.923252, 30.824844>,  <39.215557, 32.678581, 30.723007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970165, 31.923252, 30.824844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.628922, 32.110855, 30.733421>,  <38.424175, 32.223415, 30.678568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.628922, 32.110855, 30.733421>,  <38.970165, 31.923252, 30.824844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628922, 32.110855, 30.733421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201446, -0.700208, -0.684930,
		-0.481274, -0.538278, 0.691832,
		-0.853109, 0.469006, -0.228558,
		38.372990, 32.251556, 30.664854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500446, 31.490580, 30.416363>,  <38.970165, 31.923252, 30.824844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500446, 31.490580, 30.416363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286697, 31.823198, 30.355724>,  <38.158447, 32.022770, 30.319342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286697, 31.823198, 30.355724>,  <38.500446, 31.490580, 30.416363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286697, 31.823198, 30.355724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246402, -0.324811, -0.913118,
		-0.808539, -0.450588, 0.378463,
		-0.534369, 0.831546, -0.151597,
		38.126389, 32.072662, 30.310246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845047, 31.370258, 30.121103>,  <38.500446, 31.490580, 30.416363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845047, 31.370258, 30.121103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.900177, 31.751335, 30.012747>,  <37.933254, 31.979980, 29.947733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.900177, 31.751335, 30.012747>,  <37.845047, 31.370258, 30.121103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900177, 31.751335, 30.012747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128154, -0.254049, -0.958663,
		-0.982130, 0.166845, 0.087076,
		0.137827, 0.952692, -0.270891,
		37.941525, 32.037144, 29.931480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294510, 31.509928, 29.667355>,  <37.845047, 31.370258, 30.121103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294510, 31.509928, 29.667355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581249, 31.778072, 29.590679>,  <37.753292, 31.938959, 29.544674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581249, 31.778072, 29.590679>,  <37.294510, 31.509928, 29.667355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581249, 31.778072, 29.590679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083109, -0.190813, -0.978102,
		-0.692256, 0.717084, -0.081071,
		0.716850, 0.670360, -0.191687,
		37.796303, 31.979179, 29.533173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081367, 31.980995, 29.032154>,  <37.294510, 31.509928, 29.667355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081367, 31.980995, 29.032154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479176, 32.017509, 29.052523>,  <37.717861, 32.039417, 29.064745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479176, 32.017509, 29.052523>,  <37.081367, 31.980995, 29.032154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479176, 32.017509, 29.052523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069152, -0.209270, -0.975410,
		-0.078385, 0.973588, -0.214436,
		0.994522, 0.091286, 0.050922,
		37.777531, 32.044895, 29.067799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420940, 32.432800, 28.685518>,  <37.081367, 31.980995, 29.032154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420940, 32.432800, 28.685518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.085018, 32.219196, 28.646395>,  <35.883465, 32.091034, 28.622921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.085018, 32.219196, 28.646395>,  <36.420940, 32.432800, 28.685518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085018, 32.219196, 28.646395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236013, 0.196871, 0.951599,
		-0.488905, 0.822239, -0.291366,
		-0.839803, -0.534008, -0.097808,
		35.833076, 32.058994, 28.617052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938232, 32.842995, 28.947472>,  <36.420940, 32.432800, 28.685518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938232, 32.842995, 28.947472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.777542, 32.478085, 28.979387>,  <35.681126, 32.259140, 28.998537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.777542, 32.478085, 28.979387>,  <35.938232, 32.842995, 28.947472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777542, 32.478085, 28.979387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263103, 0.198434, 0.944140,
		-0.877150, 0.358295, -0.319739,
		-0.401728, -0.912277, 0.079787,
		35.657024, 32.204403, 29.003323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389366, 32.937649, 29.350622>,  <35.938232, 32.842995, 28.947472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389366, 32.937649, 29.350622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411205, 32.538715, 29.369993>,  <35.424309, 32.299355, 29.381615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411205, 32.538715, 29.369993>,  <35.389366, 32.937649, 29.350622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411205, 32.538715, 29.369993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311564, 0.029061, 0.949781,
		-0.948655, -0.066943, -0.309147,
		0.054597, -0.997333, 0.048426,
		35.427586, 32.239517, 29.384521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743820, 32.583981, 29.618050>,  <35.389366, 32.937649, 29.350622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743820, 32.583981, 29.618050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033794, 32.317635, 29.688581>,  <35.207779, 32.157825, 29.730900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033794, 32.317635, 29.688581>,  <34.743820, 32.583981, 29.618050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033794, 32.317635, 29.688581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274197, -0.044128, 0.960661,
		-0.631888, -0.744767, -0.214568,
		0.724936, -0.665864, 0.176329,
		35.251274, 32.117874, 29.741480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451141, 32.264591, 30.147739>,  <34.743820, 32.583981, 29.618050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451141, 32.264591, 30.147739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833260, 32.153194, 30.187456>,  <35.062531, 32.086357, 30.211287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833260, 32.153194, 30.187456>,  <34.451141, 32.264591, 30.147739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833260, 32.153194, 30.187456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125461, -0.077738, 0.989048,
		-0.267729, -0.957286, -0.109203,
		0.955291, -0.278498, 0.099290,
		35.119846, 32.069645, 30.217243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513500, 31.706593, 30.663034>,  <34.451141, 32.264591, 30.147739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513500, 31.706593, 30.663034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905247, 31.778629, 30.626371>,  <35.140297, 31.821852, 30.604374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905247, 31.778629, 30.626371>,  <34.513500, 31.706593, 30.663034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905247, 31.778629, 30.626371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145460, -0.313436, 0.938403,
		0.140270, -0.932376, -0.333166,
		0.979370, 0.180092, -0.091658,
		35.199059, 31.832657, 30.598873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802170, 31.122648, 30.904585>,  <34.513500, 31.706593, 30.663034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802170, 31.122648, 30.904585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060604, 31.427259, 30.925156>,  <35.215664, 31.610027, 30.937498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060604, 31.427259, 30.925156>,  <34.802170, 31.122648, 30.904585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060604, 31.427259, 30.925156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171332, -0.210357, 0.962495,
		0.743786, -0.613044, -0.266383,
		0.646087, 0.761530, 0.051426,
		35.254429, 31.655718, 30.940584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588615, 30.915873, 31.203255>,  <34.802170, 31.122648, 30.904585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588615, 30.915873, 31.203255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524998, 31.306192, 31.263287>,  <35.486828, 31.540384, 31.299305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524998, 31.306192, 31.263287>,  <35.588615, 30.915873, 31.203255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524998, 31.306192, 31.263287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082212, -0.138394, 0.986959,
		0.983842, 0.169312, -0.058211,
		-0.159048, 0.975797, 0.150078,
		35.477283, 31.598932, 31.308310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954830, 31.023920, 31.780346>,  <35.588615, 30.915873, 31.203255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954830, 31.023920, 31.780346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717789, 31.342773, 31.734049>,  <35.575562, 31.534084, 31.706270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717789, 31.342773, 31.734049>,  <35.954830, 31.023920, 31.780346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717789, 31.342773, 31.734049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061657, 0.098383, 0.993237,
		0.803128, 0.595737, -0.009154,
		-0.592608, 0.797131, -0.115745,
		35.540005, 31.581913, 31.699326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293678, 31.532314, 32.217617>,  <35.954830, 31.023920, 31.780346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293678, 31.532314, 32.217617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923870, 31.668257, 32.148624>,  <35.701984, 31.749823, 32.107227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923870, 31.668257, 32.148624>,  <36.293678, 31.532314, 32.217617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923870, 31.668257, 32.148624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062547, 0.311134, 0.948306,
		0.375955, 0.887520, -0.266394,
		-0.924525, 0.339858, -0.172484,
		35.646511, 31.770214, 32.096878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281536, 32.221638, 32.514648>,  <36.293678, 31.532314, 32.217617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281536, 32.221638, 32.514648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898869, 32.105179, 32.516369>,  <35.669270, 32.035305, 32.517399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898869, 32.105179, 32.516369>,  <36.281536, 32.221638, 32.514648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898869, 32.105179, 32.516369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139792, 0.472180, 0.870347,
		-0.255429, 0.832033, -0.492420,
		-0.956668, -0.291148, 0.004297,
		35.611870, 32.017834, 32.517658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921112, 32.716202, 32.845699>,  <36.281536, 32.221638, 32.514648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921112, 32.716202, 32.845699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607113, 32.468475, 32.839684>,  <35.418713, 32.319839, 32.836075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607113, 32.468475, 32.839684>,  <35.921112, 32.716202, 32.845699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607113, 32.468475, 32.839684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368279, 0.447007, 0.815203,
		-0.498143, 0.645473, -0.578981,
		-0.784999, -0.619314, -0.015040,
		35.371613, 32.282681, 32.835171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269096, 33.095879, 33.017418>,  <35.921112, 32.716202, 32.845699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269096, 33.095879, 33.017418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213692, 32.710747, 33.110172>,  <35.180447, 32.479668, 33.165825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213692, 32.710747, 33.110172>,  <35.269096, 33.095879, 33.017418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213692, 32.710747, 33.110172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366687, 0.267365, 0.891099,
		-0.919975, 0.038401, -0.390091,
		-0.138516, -0.962830, 0.231888,
		35.172138, 32.421898, 33.179737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616879, 33.024677, 33.251122>,  <35.269096, 33.095879, 33.017418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616879, 33.024677, 33.251122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827820, 32.734497, 33.428036>,  <34.954384, 32.560387, 33.534184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827820, 32.734497, 33.428036>,  <34.616879, 33.024677, 33.251122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827820, 32.734497, 33.428036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424566, 0.225898, 0.876763,
		-0.735963, -0.650142, -0.188876,
		0.527354, -0.725455, 0.442281,
		34.986027, 32.516861, 33.560719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171440, 33.574085, 33.594742>,  <34.616879, 33.024677, 33.251122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171440, 33.574085, 33.594742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058464, 33.889019, 33.375534>,  <33.990681, 34.077980, 33.244007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058464, 33.889019, 33.375534>,  <34.171440, 33.574085, 33.594742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058464, 33.889019, 33.375534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841170, -0.477899, -0.253073,
		-0.461152, 0.389499, 0.797264,
		-0.282440, 0.787339, -0.548018,
		33.973732, 34.125221, 33.211128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725811, 33.132767, 33.031368>,  <34.171440, 33.574085, 33.594742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725811, 33.132767, 33.031368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787601, 33.527718, 33.017338>,  <33.824677, 33.764687, 33.008919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787601, 33.527718, 33.017338>,  <33.725811, 33.132767, 33.031368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787601, 33.527718, 33.017338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302001, 0.013389, -0.953213,
		-0.940709, 0.157837, 0.300257,
		0.154472, 0.987375, -0.035072,
		33.833942, 33.823929, 33.006817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110748, 33.502747, 32.844162>,  <33.725811, 33.132767, 33.031368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110748, 33.502747, 32.844162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435246, 33.716858, 32.750046>,  <33.629944, 33.845325, 32.693577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435246, 33.716858, 32.750046>,  <33.110748, 33.502747, 32.844162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435246, 33.716858, 32.750046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291062, 0.020691, -0.956480,
		-0.507116, 0.844421, 0.172585,
		0.811243, 0.535280, -0.235286,
		33.678619, 33.877441, 32.679459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863480, 34.105858, 32.531288>,  <33.110748, 33.502747, 32.844162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863480, 34.105858, 32.531288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242687, 34.075085, 32.407776>,  <33.470211, 34.056622, 32.333668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242687, 34.075085, 32.407776>,  <32.863480, 34.105858, 32.531288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242687, 34.075085, 32.407776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283497, 0.236560, -0.929338,
		0.144543, 0.968566, 0.202452,
		0.948017, -0.076935, -0.308779,
		33.527092, 34.052006, 32.315144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923054, 34.597202, 31.969995>,  <32.863480, 34.105858, 32.531288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923054, 34.597202, 31.969995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233173, 34.354839, 31.898682>,  <33.419247, 34.209423, 31.855894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233173, 34.354839, 31.898682>,  <32.923054, 34.597202, 31.969995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233173, 34.354839, 31.898682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139234, 0.111367, -0.983977,
		0.616055, 0.787701, 0.001980,
		0.775300, -0.605908, -0.178283,
		33.465763, 34.173065, 31.845196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267727, 34.996426, 31.594000>,  <32.923054, 34.597202, 31.969995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267727, 34.996426, 31.594000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428558, 34.634060, 31.540869>,  <33.525059, 34.416641, 31.508989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428558, 34.634060, 31.540869>,  <33.267727, 34.996426, 31.594000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428558, 34.634060, 31.540869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118255, 0.195237, -0.973601,
		0.907935, 0.375761, 0.185631,
		0.402083, -0.905917, -0.132827,
		33.549183, 34.362286, 31.501020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865440, 35.089821, 31.206602>,  <33.267727, 34.996426, 31.594000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865440, 35.089821, 31.206602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804317, 34.696911, 31.163181>,  <33.767643, 34.461166, 31.137129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804317, 34.696911, 31.163181>,  <33.865440, 35.089821, 31.206602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804317, 34.696911, 31.163181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007883, 0.111048, -0.993784,
		0.988224, -0.151005, -0.024713,
		-0.152811, -0.982276, -0.108550,
		33.758472, 34.402229, 31.130617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371365, 34.815742, 30.771547>,  <33.865440, 35.089821, 31.206602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371365, 34.815742, 30.771547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068256, 34.559387, 30.722481>,  <33.886391, 34.405575, 30.693041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068256, 34.559387, 30.722481>,  <34.371365, 34.815742, 30.771547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068256, 34.559387, 30.722481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149455, 0.012527, -0.988689,
		0.635176, -0.767532, 0.086291,
		-0.757770, -0.640888, -0.122668,
		33.840927, 34.367123, 30.685680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562916, 34.318367, 30.292364>,  <34.371365, 34.815742, 30.771547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562916, 34.318367, 30.292364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164284, 34.286499, 30.283514>,  <33.925106, 34.267380, 30.278204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164284, 34.286499, 30.283514>,  <34.562916, 34.318367, 30.292364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164284, 34.286499, 30.283514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024763, -0.032289, -0.999172,
		0.078886, -0.996299, 0.034151,
		-0.996576, -0.079666, -0.022124,
		33.865311, 34.262600, 30.276876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515553, 33.844406, 29.757254>,  <34.562916, 34.318367, 30.292364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515553, 33.844406, 29.757254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153107, 33.997486, 29.829353>,  <33.935638, 34.089333, 29.872614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153107, 33.997486, 29.829353>,  <34.515553, 33.844406, 29.757254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153107, 33.997486, 29.829353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225316, -0.075991, -0.971318,
		-0.358026, -0.920742, 0.155085,
		-0.906118, 0.382700, 0.180251,
		33.881271, 34.112297, 29.883429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003052, 33.365185, 29.418901>,  <34.515553, 33.844406, 29.757254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003052, 33.365185, 29.418901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829357, 33.723480, 29.457031>,  <33.725140, 33.938457, 29.479908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829357, 33.723480, 29.457031>,  <34.003052, 33.365185, 29.418901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829357, 33.723480, 29.457031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163306, 0.025786, -0.986238,
		-0.885872, -0.443829, 0.135083,
		-0.434238, 0.895741, 0.095323,
		33.699085, 33.992203, 29.485628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612206, 33.427895, 28.854689>,  <34.003052, 33.365185, 29.418901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612206, 33.427895, 28.854689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597496, 33.808826, 28.975830>,  <33.588673, 34.037384, 29.048515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597496, 33.808826, 28.975830>,  <33.612206, 33.427895, 28.854689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597496, 33.808826, 28.975830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279132, 0.281208, -0.918155,
		-0.959549, -0.118296, 0.255485,
		-0.036770, 0.952328, 0.302853,
		33.586464, 34.094524, 29.066687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037983, 33.781204, 28.535149>,  <33.612206, 33.427895, 28.854689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037983, 33.781204, 28.535149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304924, 34.062210, 28.634031>,  <33.465088, 34.230812, 28.693361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304924, 34.062210, 28.634031>,  <33.037983, 33.781204, 28.535149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304924, 34.062210, 28.634031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040194, 0.365430, -0.929971,
		-0.743654, 0.610685, 0.272109,
		0.667356, 0.702513, 0.247207,
		33.505131, 34.272964, 28.708193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902092, 34.239185, 28.110523>,  <33.037983, 33.781204, 28.535149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902092, 34.239185, 28.110523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241791, 34.409473, 28.235453>,  <33.445610, 34.511646, 28.310411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241791, 34.409473, 28.235453>,  <32.902092, 34.239185, 28.110523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241791, 34.409473, 28.235453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027007, 0.555730, -0.830924,
		-0.527308, 0.714093, 0.460454,
		0.849245, 0.425717, 0.312326,
		33.496563, 34.537189, 28.329151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911388, 35.048798, 27.954901>,  <32.902092, 34.239185, 28.110523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911388, 35.048798, 27.954901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270176, 34.872028, 27.949942>,  <33.485447, 34.765965, 27.946966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270176, 34.872028, 27.949942>,  <32.911388, 35.048798, 27.954901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270176, 34.872028, 27.949942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179561, 0.389791, -0.903228,
		0.403994, 0.807938, 0.428982,
		0.896965, -0.441927, -0.012399,
		33.539265, 34.739449, 27.946222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350727, 35.497921, 27.631439>,  <32.911388, 35.048798, 27.954901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350727, 35.497921, 27.631439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565495, 35.160538, 27.624590>,  <33.694355, 34.958107, 27.620480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565495, 35.160538, 27.624590>,  <33.350727, 35.497921, 27.631439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565495, 35.160538, 27.624590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422752, 0.286562, -0.859746,
		0.730070, 0.454372, 0.510435,
		0.536916, -0.843462, -0.017124,
		33.726570, 34.907497, 27.619453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986351, 35.770370, 27.554079>,  <33.350727, 35.497921, 27.631439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986351, 35.770370, 27.554079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.007954, 35.391403, 27.427914>,  <34.020916, 35.164024, 27.352215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.007954, 35.391403, 27.427914>,  <33.986351, 35.770370, 27.554079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007954, 35.391403, 27.427914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386404, 0.311095, -0.868281,
		0.920747, -0.074982, 0.382887,
		0.054009, -0.947416, -0.315413,
		34.024155, 35.107178, 27.333290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618549, 35.598331, 27.288649>,  <33.986351, 35.770370, 27.554079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618549, 35.598331, 27.288649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370644, 35.341225, 27.108540>,  <34.221901, 35.186962, 27.000475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370644, 35.341225, 27.108540>,  <34.618549, 35.598331, 27.288649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370644, 35.341225, 27.108540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232945, 0.397222, -0.887666,
		0.749420, -0.655032, -0.096454,
		-0.619763, -0.642766, -0.450273,
		34.184715, 35.148396, 26.973457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088837, 35.262081, 26.931255>,  <34.618549, 35.598331, 27.288649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088837, 35.262081, 26.931255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751148, 35.170311, 26.737488>,  <34.548534, 35.115250, 26.621227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751148, 35.170311, 26.737488>,  <35.088837, 35.262081, 26.931255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751148, 35.170311, 26.737488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413369, 0.296639, -0.860890,
		0.341205, -0.927022, -0.155592,
		-0.844219, -0.229423, -0.484417,
		34.497883, 35.101482, 26.592163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334652, 34.892128, 26.393824>,  <35.088837, 35.262081, 26.931255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334652, 34.892128, 26.393824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958969, 34.968910, 26.279953>,  <34.733559, 35.014980, 26.211630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958969, 34.968910, 26.279953>,  <35.334652, 34.892128, 26.393824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958969, 34.968910, 26.279953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330325, 0.278986, -0.901694,
		-0.093666, -0.940914, -0.325434,
		-0.939209, 0.191957, -0.284676,
		34.677208, 35.026497, 26.194550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215046, 34.521198, 25.780542>,  <35.334652, 34.892128, 26.393824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215046, 34.521198, 25.780542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916035, 34.782745, 25.733789>,  <34.736629, 34.939674, 25.705738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916035, 34.782745, 25.733789>,  <35.215046, 34.521198, 25.780542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916035, 34.782745, 25.733789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346681, 0.233971, -0.908334,
		-0.566579, -0.719527, -0.401583,
		-0.747530, 0.653864, -0.116883,
		34.691776, 34.978905, 25.698725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825352, 34.400196, 25.126595>,  <35.215046, 34.521198, 25.780542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825352, 34.400196, 25.126595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765820, 34.781853, 25.230490>,  <34.730103, 35.010845, 25.292828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765820, 34.781853, 25.230490>,  <34.825352, 34.400196, 25.126595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765820, 34.781853, 25.230490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324948, 0.295266, -0.898458,
		-0.933949, -0.049313, -0.353990,
		-0.148827, 0.954142, 0.259739,
		34.721172, 35.068096, 25.308411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414089, 34.628342, 24.537680>,  <34.825352, 34.400196, 25.126595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414089, 34.628342, 24.537680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551418, 34.948769, 24.733810>,  <34.633816, 35.141026, 24.851488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551418, 34.948769, 24.733810>,  <34.414089, 34.628342, 24.537680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551418, 34.948769, 24.733810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208101, 0.444200, -0.871424,
		-0.915875, 0.401213, -0.014202,
		0.343319, 0.801070, 0.490325,
		34.654415, 35.189091, 24.880907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001598, 35.214035, 24.307936>,  <34.414089, 34.628342, 24.537680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001598, 35.214035, 24.307936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.364620, 35.333492, 24.426020>,  <34.582436, 35.405167, 24.496870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.364620, 35.333492, 24.426020>,  <34.001598, 35.214035, 24.307936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364620, 35.333492, 24.426020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146128, 0.434461, -0.888758,
		-0.393683, 0.849737, 0.350658,
		0.907557, 0.298648, 0.295210,
		34.636887, 35.423088, 24.514582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068230, 35.827679, 23.975666>,  <34.001598, 35.214035, 24.307936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068230, 35.827679, 23.975666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440392, 35.724621, 24.079945>,  <34.663689, 35.662785, 24.142511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440392, 35.724621, 24.079945>,  <34.068230, 35.827679, 23.975666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440392, 35.724621, 24.079945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342365, 0.356924, -0.869133,
		0.130878, 0.897900, 0.420292,
		0.930407, -0.257643, 0.260696,
		34.719513, 35.647327, 24.158154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437523, 36.399445, 24.012821>,  <34.068230, 35.827679, 23.975666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437523, 36.399445, 24.012821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666866, 36.082748, 23.928534>,  <34.804470, 35.892731, 23.877960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666866, 36.082748, 23.928534>,  <34.437523, 36.399445, 24.012821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666866, 36.082748, 23.928534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219718, 0.396359, -0.891417,
		0.789295, 0.464801, 0.401216,
		0.573357, -0.791745, -0.210719,
		34.838875, 35.845226, 23.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731941, 36.692272, 23.426620>,  <34.437523, 36.399445, 24.012821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731941, 36.692272, 23.426620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834385, 36.305679, 23.419363>,  <34.895851, 36.073723, 23.415009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834385, 36.305679, 23.419363>,  <34.731941, 36.692272, 23.426620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834385, 36.305679, 23.419363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423412, 0.129032, -0.896701,
		0.868984, 0.221969, 0.442264,
		0.256106, -0.966479, -0.018142,
		34.911217, 36.015736, 23.413919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362919, 36.695362, 23.126398>,  <34.731941, 36.692272, 23.426620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362919, 36.695362, 23.126398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195614, 36.335480, 23.076448>,  <35.095230, 36.119553, 23.046478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195614, 36.335480, 23.076448>,  <35.362919, 36.695362, 23.126398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195614, 36.335480, 23.076448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137302, 0.073275, -0.987815,
		0.897891, -0.430308, 0.092883,
		-0.418259, -0.899703, -0.124876,
		35.070137, 36.065567, 23.038986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133495, 36.599533, 23.191139>,  <35.362919, 36.695362, 23.126398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133495, 36.599533, 23.191139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521400, 36.694424, 23.214067>,  <36.754143, 36.751358, 23.227823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521400, 36.694424, 23.214067>,  <36.133495, 36.599533, 23.191139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521400, 36.694424, 23.214067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013321, -0.183059, 0.983012,
		0.243690, -0.954050, -0.174364,
		0.969762, 0.237227, 0.057318,
		36.812328, 36.765591, 23.231262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386982, 36.066593, 23.612152>,  <36.133495, 36.599533, 23.191139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386982, 36.066593, 23.612152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629314, 36.384708, 23.620964>,  <36.774712, 36.575577, 23.626251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629314, 36.384708, 23.620964>,  <36.386982, 36.066593, 23.612152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629314, 36.384708, 23.620964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009356, -0.020565, 0.999745,
		0.795542, -0.605878, -0.005019,
		0.605827, 0.795291, 0.022029,
		36.811062, 36.623295, 23.627573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894527, 35.906086, 24.232904>,  <36.386982, 36.066593, 23.612152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894527, 35.906086, 24.232904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943260, 36.292194, 24.140465>,  <36.972500, 36.523861, 24.085001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943260, 36.292194, 24.140465>,  <36.894527, 35.906086, 24.232904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943260, 36.292194, 24.140465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091222, 0.220957, 0.971008,
		0.988350, -0.139377, -0.061135,
		0.121828, 0.965273, -0.231097,
		36.979809, 36.581776, 24.071136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543438, 36.172207, 24.581165>,  <36.894527, 35.906086, 24.232904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543438, 36.172207, 24.581165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284657, 36.465694, 24.498117>,  <37.129387, 36.641788, 24.448288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284657, 36.465694, 24.498117>,  <37.543438, 36.172207, 24.581165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284657, 36.465694, 24.498117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042437, 0.237211, 0.970531,
		0.761349, 0.636698, -0.122327,
		-0.646952, 0.733721, -0.207620,
		37.090572, 36.685810, 24.435831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806313, 36.831654, 24.860668>,  <37.543438, 36.172207, 24.581165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806313, 36.831654, 24.860668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430725, 36.959503, 24.809784>,  <37.205372, 37.036213, 24.779253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430725, 36.959503, 24.809784>,  <37.806313, 36.831654, 24.860668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430725, 36.959503, 24.809784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013276, 0.335849, 0.941822,
		0.343753, 0.886028, -0.311108,
		-0.938966, 0.319624, -0.127212,
		37.149036, 37.055389, 24.771620>
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
