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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.506277, 16.853638, -2.254614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.905605, 16.839729, -2.236065>,  <23.145203, 16.831385, -2.224936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.905605, 16.839729, -2.236065>,  <22.506277, 16.853638, -2.254614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.905605, 16.839729, -2.236065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008750, -0.881320, -0.472439,
		0.057294, 0.471239, -0.880143,
		0.998319, -0.034770, 0.046371,
		23.205101, 16.829298, -2.222154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.824554, 16.702396, -1.589725>,  <22.506277, 16.853638, -2.254614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.824554, 16.702396, -1.589725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.188503, 16.861977, -1.635276>,  <23.406874, 16.957726, -1.662607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.188503, 16.861977, -1.635276>,  <22.824554, 16.702396, -1.589725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.188503, 16.861977, -1.635276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344372, 0.573145, -0.743581,
		-0.231386, 0.715781, 0.658877,
		0.909873, 0.398953, -0.113877,
		23.461466, 16.981663, -1.669439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.759628, 17.355316, -1.764251>,  <22.824554, 16.702396, -1.589725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.759628, 17.355316, -1.764251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.142666, 17.315311, -1.872332>,  <23.372488, 17.291307, -1.937181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.142666, 17.315311, -1.872332>,  <22.759628, 17.355316, -1.764251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.142666, 17.315311, -1.872332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154563, 0.613135, -0.774710,
		0.243153, 0.783621, 0.571677,
		0.957594, -0.100013, -0.270204,
		23.429945, 17.285307, -1.953393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.071682, 18.032425, -1.892890>,  <22.759628, 17.355316, -1.764251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.071682, 18.032425, -1.892890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.304104, 17.817940, -2.137790>,  <23.443558, 17.689249, -2.284731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.304104, 17.817940, -2.137790>,  <23.071682, 18.032425, -1.892890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.304104, 17.817940, -2.137790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055055, 0.776451, -0.627768,
		0.812000, 0.331060, 0.480682,
		0.581055, -0.536212, -0.612252,
		23.478420, 17.657076, -2.321466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.973721, 18.129023, -2.662317>,  <23.071682, 18.032425, -1.892890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.973721, 18.129023, -2.662317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.754459, 18.422844, -2.822295>,  <22.622902, 18.599136, -2.918282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.754459, 18.422844, -2.822295>,  <22.973721, 18.129023, -2.662317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.754459, 18.422844, -2.822295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825366, -0.552421, 0.116623,
		-0.135272, 0.394029, 0.909089,
		-0.548153, 0.734555, -0.399946,
		22.590014, 18.643211, -2.942279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.407095, 17.919458, -2.564700>,  <22.973721, 18.129023, -2.662317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.407095, 17.919458, -2.564700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.254196, 18.223938, -2.774256>,  <22.162457, 18.406626, -2.899990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.254196, 18.223938, -2.774256>,  <22.407095, 17.919458, -2.564700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.254196, 18.223938, -2.774256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912287, -0.401079, 0.082874,
		-0.147038, 0.509618, 0.847744,
		-0.382247, 0.761199, -0.523892,
		22.139523, 18.452297, -2.931424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029247, 18.304314, -2.132891>,  <22.407095, 17.919458, -2.564700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029247, 18.304314, -2.132891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.904694, 18.314861, -2.512858>,  <21.829962, 18.321190, -2.740839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.904694, 18.314861, -2.512858>,  <22.029247, 18.304314, -2.132891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904694, 18.314861, -2.512858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943578, -0.127132, 0.305775,
		-0.112702, 0.991535, 0.064467,
		-0.311383, 0.026368, -0.949919,
		21.811279, 18.322771, -2.797834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.686001, 18.974346, -2.188420>,  <22.029247, 18.304314, -2.132891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.686001, 18.974346, -2.188420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.565464, 18.679878, -2.430825>,  <21.493143, 18.503199, -2.576267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.565464, 18.679878, -2.430825>,  <21.686001, 18.974346, -2.188420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.565464, 18.679878, -2.430825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796456, -0.155112, 0.584465,
		-0.524264, 0.658785, -0.539584,
		-0.301340, -0.736168, -0.606013,
		21.475061, 18.459028, -2.612628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.044470, 18.991596, -2.105458>,  <21.686001, 18.974346, -2.188420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.044470, 18.991596, -2.105458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681114, 19.047760, -2.262998>,  <20.463100, 19.081459, -2.357522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681114, 19.047760, -2.262998>,  <21.044470, 18.991596, -2.105458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681114, 19.047760, -2.262998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405213, -0.063310, 0.912027,
		0.103122, 0.988067, 0.114406,
		-0.908388, 0.140409, -0.393849,
		20.408598, 19.089882, -2.381153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.642197, 19.591780, -1.838393>,  <21.044470, 18.991596, -2.105458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.642197, 19.591780, -1.838393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379173, 19.311424, -1.948935>,  <20.221359, 19.143211, -2.015260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379173, 19.311424, -1.948935>,  <20.642197, 19.591780, -1.838393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379173, 19.311424, -1.948935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268165, -0.125049, 0.955223,
		-0.704064, 0.702222, -0.105727,
		-0.657557, -0.700890, -0.276354,
		20.181906, 19.101158, -2.031841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.011261, 19.701376, -1.468222>,  <20.642197, 19.591780, -1.838393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.011261, 19.701376, -1.468222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098270, 19.316544, -1.534054>,  <20.150476, 19.085644, -1.573553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098270, 19.316544, -1.534054>,  <20.011261, 19.701376, -1.468222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098270, 19.316544, -1.534054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114922, -0.192690, 0.974507,
		-0.969266, -0.193066, -0.152479,
		0.217525, -0.962079, -0.164580,
		20.163528, 19.027920, -1.583428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.480650, 19.346844, -1.057488>,  <20.011261, 19.701376, -1.468222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.480650, 19.346844, -1.057488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.815144, 19.143726, -1.140299>,  <20.015841, 19.021856, -1.189986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.815144, 19.143726, -1.140299>,  <19.480650, 19.346844, -1.057488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.815144, 19.143726, -1.140299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026498, -0.339672, 0.940170,
		-0.547733, -0.791688, -0.270590,
		0.836234, -0.507792, -0.207027,
		20.066013, 18.991388, -1.202407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417845, 18.600260, -0.938284>,  <19.480650, 19.346844, -1.057488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417845, 18.600260, -0.938284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.808376, 18.670750, -0.888120>,  <20.042696, 18.713043, -0.858022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.808376, 18.670750, -0.888120>,  <19.417845, 18.600260, -0.938284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808376, 18.670750, -0.888120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013107, -0.626949, 0.778949,
		0.215896, -0.758867, -0.614418,
		0.976328, 0.176225, 0.125409,
		20.101274, 18.723618, -0.850498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.817883, 18.025246, -0.839307>,  <19.417845, 18.600260, -0.938284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.817883, 18.025246, -0.839307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028416, 18.313766, -0.659219>,  <20.154736, 18.486879, -0.551166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028416, 18.313766, -0.659219>,  <19.817883, 18.025246, -0.839307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028416, 18.313766, -0.659219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118354, -0.586492, 0.801261,
		0.842003, -0.368443, -0.394058,
		0.526331, 0.721302, 0.450221,
		20.186316, 18.530157, -0.524152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.384365, 17.667864, -0.505444>,  <19.817883, 18.025246, -0.839307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.384365, 17.667864, -0.505444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.382175, 18.021748, -0.318999>,  <20.380861, 18.234077, -0.207132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.382175, 18.021748, -0.318999>,  <20.384365, 17.667864, -0.505444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382175, 18.021748, -0.318999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342303, -0.436302, 0.832147,
		0.939574, 0.164108, -0.300450,
		-0.005475, 0.884709, 0.466113,
		20.380533, 18.287161, -0.179166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.037878, 17.772268, -0.068287>,  <20.384365, 17.667864, -0.505444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.037878, 17.772268, -0.068287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.730610, 17.986897, 0.071431>,  <20.546249, 18.115673, 0.155263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.730610, 17.986897, 0.071431>,  <21.037878, 17.772268, -0.068287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.730610, 17.986897, 0.071431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145222, -0.385323, 0.911283,
		0.623558, 0.750746, 0.218073,
		-0.768171, 0.536569, 0.349296,
		20.500158, 18.147867, 0.176220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243792, 18.242210, 0.399344>,  <21.037878, 17.772268, -0.068287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243792, 18.242210, 0.399344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872623, 18.107628, 0.463549>,  <20.649923, 18.026878, 0.502072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872623, 18.107628, 0.463549>,  <21.243792, 18.242210, 0.399344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872623, 18.107628, 0.463549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283566, -0.357560, 0.889798,
		-0.241984, 0.871176, 0.427195,
		-0.927919, -0.336455, 0.160512,
		20.594248, 18.006691, 0.511703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824293, 18.459097, 1.031103>,  <21.243792, 18.242210, 0.399344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.824293, 18.459097, 1.031103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756550, 18.073105, 0.950970>,  <20.715904, 17.841511, 0.902891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756550, 18.073105, 0.950970>,  <20.824293, 18.459097, 1.031103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756550, 18.073105, 0.950970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217545, -0.234857, 0.947374,
		-0.961244, 0.116867, 0.249702,
		-0.169361, -0.964979, -0.200331,
		20.705742, 17.783611, 0.890871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129084, 18.066050, 1.232470>,  <20.824293, 18.459097, 1.031103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.129084, 18.066050, 1.232470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.465656, 17.849926, 1.229300>,  <20.667599, 17.720253, 1.227398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.465656, 17.849926, 1.229300>,  <20.129084, 18.066050, 1.232470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465656, 17.849926, 1.229300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079959, -0.138999, 0.987059,
		-0.534418, -0.829908, -0.160161,
		0.841430, -0.540308, -0.007925,
		20.718086, 17.687834, 1.226923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041586, 17.324450, 1.504893>,  <20.129084, 18.066050, 1.232470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041586, 17.324450, 1.504893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.430962, 17.409233, 1.539504>,  <20.664587, 17.460102, 1.560270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.430962, 17.409233, 1.539504>,  <20.041586, 17.324450, 1.504893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430962, 17.409233, 1.539504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087246, -0.005975, 0.996169,
		0.211662, -0.977261, 0.012676,
		0.973441, 0.211957, 0.086527,
		20.722994, 17.472820, 1.565462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.225891, 16.886917, 2.027741>,  <20.041586, 17.324450, 1.504893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.225891, 16.886917, 2.027741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446487, 17.219925, 2.006687>,  <20.578846, 17.419729, 1.994055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446487, 17.219925, 2.006687>,  <20.225891, 16.886917, 2.027741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446487, 17.219925, 2.006687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226454, 0.210142, 0.951083,
		0.802855, -0.512594, 0.304419,
		0.551490, 0.832519, -0.052634,
		20.611935, 17.469681, 1.990897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673546, 16.964781, 2.748342>,  <20.225891, 16.886917, 2.027741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673546, 16.964781, 2.748342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.561073, 17.310162, 2.580826>,  <20.493589, 17.517391, 2.480316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.561073, 17.310162, 2.580826>,  <20.673546, 16.964781, 2.748342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.561073, 17.310162, 2.580826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385510, 0.298005, 0.873256,
		0.878817, 0.406991, 0.249077,
		-0.281181, 0.863454, -0.418790,
		20.476719, 17.569199, 2.455189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400873, 17.335575, 3.320518>,  <20.673546, 16.964781, 2.748342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.400873, 17.335575, 3.320518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.316891, 17.615757, 3.047672>,  <20.266500, 17.783867, 2.883965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.316891, 17.615757, 3.047672>,  <20.400873, 17.335575, 3.320518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.316891, 17.615757, 3.047672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520131, 0.510728, 0.684558,
		0.827878, 0.498517, 0.257098,
		-0.209957, 0.700455, -0.682115,
		20.253904, 17.825893, 2.843038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670944, 17.967300, 3.404774>,  <20.400873, 17.335575, 3.320518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670944, 17.967300, 3.404774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.314732, 17.994457, 3.224842>,  <20.101004, 18.010752, 3.116882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.314732, 17.994457, 3.224842>,  <20.670944, 17.967300, 3.404774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.314732, 17.994457, 3.224842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382355, 0.424079, 0.820952,
		0.246499, 0.903077, -0.351697,
		-0.890530, 0.067890, -0.449831,
		20.047573, 18.014824, 3.089892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302017, 18.703594, 3.529420>,  <20.670944, 17.967300, 3.404774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302017, 18.703594, 3.529420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.025352, 18.420334, 3.472672>,  <19.859354, 18.250378, 3.438623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.025352, 18.420334, 3.472672>,  <20.302017, 18.703594, 3.529420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025352, 18.420334, 3.472672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534351, 0.369622, 0.760163,
		-0.485871, 0.601585, -0.634054,
		-0.691663, -0.708149, -0.141869,
		19.817854, 18.207890, 3.430111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564070, 19.018436, 3.408408>,  <20.302017, 18.703594, 3.529420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564070, 19.018436, 3.408408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.569988, 18.645035, 3.551711>,  <19.573540, 18.420994, 3.637692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.569988, 18.645035, 3.551711>,  <19.564070, 19.018436, 3.408408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.569988, 18.645035, 3.551711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377634, 0.326541, 0.866466,
		-0.925837, -0.148111, -0.347691,
		0.014798, -0.933506, 0.358256,
		19.574429, 18.364983, 3.659187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878115, 18.902290, 3.734202>,  <19.564070, 19.018436, 3.408408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878115, 18.902290, 3.734202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171021, 18.669006, 3.874859>,  <19.346764, 18.529036, 3.959254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171021, 18.669006, 3.874859>,  <18.878115, 18.902290, 3.734202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171021, 18.669006, 3.874859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412743, 0.030649, 0.910332,
		-0.541693, -0.811742, -0.218273,
		0.732265, -0.583211, 0.351643,
		19.390699, 18.494043, 3.980352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407734, 18.501223, 3.863106>,  <18.878115, 18.902290, 3.734202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407734, 18.501223, 3.863106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.748852, 18.502979, 4.071999>,  <18.953522, 18.504034, 4.197334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.748852, 18.502979, 4.071999>,  <18.407734, 18.501223, 3.863106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.748852, 18.502979, 4.071999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515842, -0.149078, 0.843613,
		0.081558, -0.988816, -0.124867,
		0.852793, 0.004392, 0.522231,
		19.004690, 18.504297, 4.228668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506918, 17.840313, 4.179138>,  <18.407734, 18.501223, 3.863106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506918, 17.840313, 4.179138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629757, 18.166428, 4.375502>,  <18.703461, 18.362097, 4.493321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629757, 18.166428, 4.375502>,  <18.506918, 17.840313, 4.179138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629757, 18.166428, 4.375502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687314, -0.166785, 0.706953,
		0.658248, -0.554515, 0.509140,
		0.307099, 0.815289, 0.490911,
		18.721886, 18.411015, 4.522776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408585, 17.744307, 4.825329>,  <18.506918, 17.840313, 4.179138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408585, 17.744307, 4.825329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516926, 18.074123, 5.024033>,  <18.581930, 18.272013, 5.143255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516926, 18.074123, 5.024033>,  <18.408585, 17.744307, 4.825329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.516926, 18.074123, 5.024033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859445, -0.439572, 0.261019,
		0.433583, 0.356240, -0.827707,
		0.270852, 0.824542, 0.496760,
		18.598181, 18.321486, 5.173060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.120010, 17.926458, 4.717589>,  <18.408585, 17.744307, 4.825329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.120010, 17.926458, 4.717589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.043625, 18.141479, 5.046118>,  <18.997793, 18.270493, 5.243235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.043625, 18.141479, 5.046118>,  <19.120010, 17.926458, 4.717589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.043625, 18.141479, 5.046118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751390, -0.458345, 0.474693,
		0.631621, 0.707782, -0.316385,
		-0.190966, 0.537554, 0.821321,
		18.986336, 18.302746, 5.292514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711012, 18.133036, 4.862988>,  <19.120010, 17.926458, 4.717589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.711012, 18.133036, 4.862988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.491592, 18.143711, 5.197266>,  <19.359941, 18.150116, 5.397832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.491592, 18.143711, 5.197266>,  <19.711012, 18.133036, 4.862988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491592, 18.143711, 5.197266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648121, -0.617878, 0.445157,
		0.528236, 0.785821, 0.321640,
		-0.548548, 0.026687, 0.835693,
		19.327028, 18.151716, 5.447974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.160385, 18.307270, 5.395814>,  <19.711012, 18.133036, 4.862988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.160385, 18.307270, 5.395814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865841, 18.066563, 5.519521>,  <19.689114, 17.922138, 5.593745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865841, 18.066563, 5.519521>,  <20.160385, 18.307270, 5.395814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.865841, 18.066563, 5.519521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676423, -0.664881, 0.316835,
		0.014965, 0.442501, 0.896643,
		-0.736361, -0.601769, 0.309267,
		19.644932, 17.886032, 5.612301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937918, 18.290451, 5.338861>,  <20.160385, 18.307270, 5.395814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937918, 18.290451, 5.338861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131409, 18.548203, 5.575768>,  <21.247503, 18.702854, 5.717914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131409, 18.548203, 5.575768>,  <20.937918, 18.290451, 5.338861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131409, 18.548203, 5.575768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062475, -0.700407, 0.711004,
		0.872986, -0.306930, -0.379063,
		0.483727, 0.644379, 0.592271,
		21.276527, 18.741516, 5.753449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557718, 17.977766, 5.720040>,  <20.937918, 18.290451, 5.338861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557718, 17.977766, 5.720040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.414932, 18.298302, 5.912053>,  <21.329262, 18.490623, 6.027261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.414932, 18.298302, 5.912053>,  <21.557718, 17.977766, 5.720040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.414932, 18.298302, 5.912053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318794, -0.378529, 0.868957,
		0.878036, 0.463217, -0.120342,
		-0.356963, 0.801340, 0.480033,
		21.307844, 18.538704, 6.056063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953154, 18.133148, 6.252146>,  <21.557718, 17.977766, 5.720040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953154, 18.133148, 6.252146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.656464, 18.359722, 6.395809>,  <21.478449, 18.495667, 6.482007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.656464, 18.359722, 6.395809>,  <21.953154, 18.133148, 6.252146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.656464, 18.359722, 6.395809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439082, 0.005294, 0.898432,
		0.507002, 0.824089, -0.252638,
		-0.741725, 0.566435, 0.359159,
		21.433947, 18.529654, 6.503557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.328920, 18.589317, 6.675277>,  <21.953154, 18.133148, 6.252146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.328920, 18.589317, 6.675277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.953667, 18.539246, 6.804417>,  <21.728514, 18.509203, 6.881901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.953667, 18.539246, 6.804417>,  <22.328920, 18.589317, 6.675277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.953667, 18.539246, 6.804417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344706, -0.249145, 0.905044,
		-0.032857, 0.960342, 0.276882,
		-0.938135, -0.125180, 0.322850,
		21.672226, 18.501692, 6.901271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.297764, 19.107470, 7.169497>,  <22.328920, 18.589317, 6.675277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.297764, 19.107470, 7.169497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033707, 18.818092, 7.250339>,  <21.875273, 18.644466, 7.298843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033707, 18.818092, 7.250339>,  <22.297764, 19.107470, 7.169497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033707, 18.818092, 7.250339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356318, -0.064740, 0.932119,
		-0.661250, 0.687343, 0.300513,
		-0.660141, -0.723442, 0.202103,
		21.835665, 18.601059, 7.310969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.001566, 19.234430, 7.812220>,  <22.297764, 19.107470, 7.169497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.001566, 19.234430, 7.812220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.879303, 18.855194, 7.777120>,  <21.805944, 18.627653, 7.756060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.879303, 18.855194, 7.777120>,  <22.001566, 19.234430, 7.812220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.879303, 18.855194, 7.777120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027344, -0.083382, 0.996142,
		-0.951749, 0.306878, -0.000438,
		-0.305658, -0.948089, -0.087750,
		21.787605, 18.570766, 7.750795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.478354, 19.193068, 8.188524>,  <22.001566, 19.234430, 7.812220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.478354, 19.193068, 8.188524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591370, 18.811817, 8.145216>,  <21.659180, 18.583067, 8.119231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591370, 18.811817, 8.145216>,  <21.478354, 19.193068, 8.188524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591370, 18.811817, 8.145216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084846, -0.087596, 0.992536,
		-0.955496, -0.289616, 0.056119,
		0.282539, -0.953126, -0.108270,
		21.676132, 18.525879, 8.112735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.047695, 18.811092, 8.587034>,  <21.478354, 19.193068, 8.188524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.047695, 18.811092, 8.587034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387806, 18.602142, 8.561247>,  <21.591871, 18.476772, 8.545774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387806, 18.602142, 8.561247>,  <21.047695, 18.811092, 8.587034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387806, 18.602142, 8.561247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029242, -0.169178, 0.985152,
		-0.525527, -0.835764, -0.159123,
		0.850274, -0.522377, -0.064468,
		21.642889, 18.445429, 8.541906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.910292, 18.226229, 8.909085>,  <21.047695, 18.811092, 8.587034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.910292, 18.226229, 8.909085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.309521, 18.217155, 8.885984>,  <21.549059, 18.211712, 8.872124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.309521, 18.217155, 8.885984>,  <20.910292, 18.226229, 8.909085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309521, 18.217155, 8.885984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049262, -0.276215, 0.959833,
		-0.037726, -0.960828, -0.274565,
		0.998073, -0.022685, -0.057753,
		21.608942, 18.210350, 8.868658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.015734, 17.597019, 9.249202>,  <20.910292, 18.226229, 8.909085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.015734, 17.597019, 9.249202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350777, 17.815464, 9.254553>,  <21.551802, 17.946531, 9.257763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350777, 17.815464, 9.254553>,  <21.015734, 17.597019, 9.249202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350777, 17.815464, 9.254553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122571, -0.211746, 0.969608,
		0.532346, -0.810510, -0.244297,
		0.837606, 0.546111, 0.013377,
		21.602058, 17.979298, 9.258566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.387716, 17.311558, 9.804740>,  <21.015734, 17.597019, 9.249202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.387716, 17.311558, 9.804740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.548157, 17.668945, 9.723911>,  <21.644421, 17.883377, 9.675414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.548157, 17.668945, 9.723911>,  <21.387716, 17.311558, 9.804740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.548157, 17.668945, 9.723911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045029, 0.201098, 0.978536,
		0.914926, -0.401592, 0.040429,
		0.401102, 0.893467, -0.202073,
		21.668488, 17.936985, 9.663289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.969732, 17.458799, 10.337146>,  <21.387716, 17.311558, 9.804740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.969732, 17.458799, 10.337146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844528, 17.800491, 10.171103>,  <21.769405, 18.005507, 10.071476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844528, 17.800491, 10.171103>,  <21.969732, 17.458799, 10.337146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844528, 17.800491, 10.171103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127599, 0.395286, 0.909653,
		0.941139, 0.337698, -0.014730,
		-0.313011, 0.854230, -0.415109,
		21.750626, 18.056761, 10.046570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.443834, 18.042967, 10.516216>,  <21.969732, 17.458799, 10.337146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.443834, 18.042967, 10.516216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085102, 18.197144, 10.429382>,  <21.869862, 18.289650, 10.377282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085102, 18.197144, 10.429382>,  <22.443834, 18.042967, 10.516216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.085102, 18.197144, 10.429382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011625, 0.470029, 0.882575,
		0.442218, 0.794045, -0.417056,
		-0.896832, 0.385442, -0.217086,
		21.816051, 18.312777, 10.364257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.399172, 18.631887, 10.928265>,  <22.443834, 18.042967, 10.516216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.399172, 18.631887, 10.928265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.018745, 18.630062, 10.804684>,  <21.790489, 18.628967, 10.730535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.018745, 18.630062, 10.804684>,  <22.399172, 18.631887, 10.928265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.018745, 18.630062, 10.804684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298080, 0.276875, 0.913503,
		0.081372, 0.960895, -0.264687,
		-0.951066, -0.004564, -0.308953,
		21.733425, 18.628693, 10.711998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.150234, 19.348705, 11.042773>,  <22.399172, 18.631887, 10.928265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.150234, 19.348705, 11.042773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.856194, 19.078491, 11.019873>,  <21.679770, 18.916363, 11.006132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.856194, 19.078491, 11.019873>,  <22.150234, 19.348705, 11.042773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.856194, 19.078491, 11.019873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421750, 0.389546, 0.818768,
		-0.530805, 0.626023, -0.571263,
		-0.735101, -0.675536, -0.057253,
		21.635664, 18.875830, 11.002697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477867, 19.717318, 11.044642>,  <22.150234, 19.348705, 11.042773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477867, 19.717318, 11.044642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403461, 19.343075, 11.164670>,  <21.358818, 19.118530, 11.236687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403461, 19.343075, 11.164670>,  <21.477867, 19.717318, 11.044642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403461, 19.343075, 11.164670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631843, 0.347783, 0.692692,
		-0.752445, -0.060746, -0.655848,
		-0.186014, -0.935605, 0.300070,
		21.347656, 19.062393, 11.254691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712730, 19.735266, 11.126752>,  <21.477867, 19.717318, 11.044642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712730, 19.735266, 11.126752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.855606, 19.421078, 11.328920>,  <20.941332, 19.232565, 11.450222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.855606, 19.421078, 11.328920>,  <20.712730, 19.735266, 11.126752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.855606, 19.421078, 11.328920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592766, 0.227557, 0.772558,
		-0.721835, -0.575545, -0.384321,
		0.357187, -0.785472, 0.505422,
		20.962763, 19.185436, 11.480547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.137804, 19.566504, 11.511433>,  <20.712730, 19.735266, 11.126752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.137804, 19.566504, 11.511433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.451328, 19.405674, 11.700738>,  <20.639442, 19.309177, 11.814322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.451328, 19.405674, 11.700738>,  <20.137804, 19.566504, 11.511433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.451328, 19.405674, 11.700738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404269, 0.248125, 0.880341,
		-0.471390, -0.881347, 0.031937,
		0.783810, -0.402073, 0.473264,
		20.686472, 19.285051, 11.842717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.837307, 19.108234, 12.049706>,  <20.137804, 19.566504, 11.511433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.837307, 19.108234, 12.049706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215927, 19.180367, 12.156680>,  <20.443100, 19.223646, 12.220864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215927, 19.180367, 12.156680>,  <19.837307, 19.108234, 12.049706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215927, 19.180367, 12.156680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288640, 0.103474, 0.951830,
		0.143967, -0.978149, 0.149993,
		0.946552, 0.180326, 0.267436,
		20.499893, 19.234465, 12.236911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839819, 18.874411, 12.704549>,  <19.837307, 19.108234, 12.049706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839819, 18.874411, 12.704549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.170677, 19.097504, 12.676930>,  <20.369192, 19.231359, 12.660359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.170677, 19.097504, 12.676930>,  <19.839819, 18.874411, 12.704549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.170677, 19.097504, 12.676930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084914, 0.245479, 0.965676,
		0.555539, -0.792889, 0.250406,
		0.827143, 0.557734, -0.069046,
		20.418819, 19.264824, 12.656217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.318243, 18.703991, 13.269376>,  <19.839819, 18.874411, 12.704549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.318243, 18.703991, 13.269376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433491, 19.067608, 13.148954>,  <20.502640, 19.285778, 13.076701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433491, 19.067608, 13.148954>,  <20.318243, 18.703991, 13.269376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.433491, 19.067608, 13.148954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006218, 0.316155, 0.948687,
		0.957574, -0.271463, 0.096743,
		0.288119, 0.909040, -0.301054,
		20.519926, 19.340321, 13.058639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.842169, 18.961000, 13.745459>,  <20.318243, 18.703991, 13.269376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.842169, 18.961000, 13.745459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.749569, 19.309795, 13.572927>,  <20.694010, 19.519073, 13.469409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.749569, 19.309795, 13.572927>,  <20.842169, 18.961000, 13.745459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.749569, 19.309795, 13.572927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079061, 0.425043, 0.901714,
		0.969617, 0.242847, -0.029457,
		-0.231499, 0.871988, -0.431329,
		20.680119, 19.571392, 13.443529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.354076, 19.397381, 13.921124>,  <20.842169, 18.961000, 13.745459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.354076, 19.397381, 13.921124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.031261, 19.619839, 13.841732>,  <20.837572, 19.753313, 13.794097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.031261, 19.619839, 13.841732>,  <21.354076, 19.397381, 13.921124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031261, 19.619839, 13.841732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025843, 0.369066, 0.929044,
		0.589933, 0.744645, -0.312223,
		-0.807039, 0.556142, -0.198480,
		20.789150, 19.786682, 13.782187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505308, 20.042933, 14.394772>,  <21.354076, 19.397381, 13.921124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505308, 20.042933, 14.394772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129177, 20.075214, 14.262547>,  <20.903498, 20.094584, 14.183211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129177, 20.075214, 14.262547>,  <21.505308, 20.042933, 14.394772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129177, 20.075214, 14.262547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193958, 0.671063, 0.715580,
		0.279579, 0.736994, -0.615366,
		-0.940328, 0.080706, -0.330561,
		20.847078, 20.099426, 14.163378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.386208, 20.739695, 14.231455>,  <21.505308, 20.042933, 14.394772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.386208, 20.739695, 14.231455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.029305, 20.573441, 14.302019>,  <20.815163, 20.473688, 14.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.029305, 20.573441, 14.302019>,  <21.386208, 20.739695, 14.231455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.029305, 20.573441, 14.302019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132048, 0.613820, 0.778324,
		-0.431784, 0.671172, -0.602570,
		-0.892259, -0.415636, 0.176411,
		20.761627, 20.448750, 14.354942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946426, 21.337538, 14.453710>,  <21.386208, 20.739695, 14.231455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946426, 21.337538, 14.453710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.761898, 20.998913, 14.559927>,  <20.651182, 20.795738, 14.623657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.761898, 20.998913, 14.559927>,  <20.946426, 21.337538, 14.453710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.761898, 20.998913, 14.559927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282062, 0.423703, 0.860765,
		-0.841204, 0.322188, -0.434246,
		-0.461320, -0.846564, 0.265544,
		20.623503, 20.744944, 14.639590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.288689, 21.564182, 14.752587>,  <20.946426, 21.337538, 14.453710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.288689, 21.564182, 14.752587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.385601, 21.203110, 14.894836>,  <20.443748, 20.986465, 14.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.385601, 21.203110, 14.894836>,  <20.288689, 21.564182, 14.752587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.385601, 21.203110, 14.894836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168029, 0.321963, 0.931722,
		-0.955545, -0.285492, -0.073672,
		0.242279, -0.902681, 0.355622,
		20.458284, 20.932304, 15.001523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.780704, 21.504827, 15.201294>,  <20.288689, 21.564182, 14.752587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.780704, 21.504827, 15.201294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028431, 21.221413, 15.336601>,  <20.177067, 21.051365, 15.417786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028431, 21.221413, 15.336601>,  <19.780704, 21.504827, 15.201294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028431, 21.221413, 15.336601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133981, 0.329145, 0.934726,
		-0.773625, -0.624213, 0.108914,
		0.619316, -0.708535, 0.338268,
		20.214226, 21.008852, 15.438082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466974, 21.102354, 15.687976>,  <19.780704, 21.504827, 15.201294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466974, 21.102354, 15.687976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.859592, 21.100811, 15.764452>,  <20.095163, 21.099886, 15.810338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.859592, 21.100811, 15.764452>,  <19.466974, 21.102354, 15.687976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859592, 21.100811, 15.764452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170470, 0.435411, 0.883944,
		-0.086655, -0.900223, 0.426719,
		0.981545, -0.003856, 0.191191,
		20.154057, 21.099655, 15.821810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397022, 21.157986, 16.422239>,  <19.466974, 21.102354, 15.687976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397022, 21.157986, 16.422239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792515, 21.174252, 16.364614>,  <20.029810, 21.184011, 16.330040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792515, 21.174252, 16.364614>,  <19.397022, 21.157986, 16.422239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.792515, 21.174252, 16.364614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129613, 0.248918, 0.959813,
		0.074888, -0.967671, 0.240843,
		0.988733, 0.040662, -0.144064,
		20.089134, 21.186451, 16.321396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.717648, 20.787573, 16.953669>,  <19.397022, 21.157986, 16.422239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.717648, 20.787573, 16.953669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.994259, 21.040710, 16.814358>,  <20.160225, 21.192593, 16.730772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.994259, 21.040710, 16.814358>,  <19.717648, 20.787573, 16.953669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994259, 21.040710, 16.814358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141472, 0.354151, 0.924426,
		0.708360, -0.688538, 0.155376,
		0.691528, 0.632845, -0.348275,
		20.201717, 21.230564, 16.709875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320221, 20.649656, 17.277649>,  <19.717648, 20.787573, 16.953669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320221, 20.649656, 17.277649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335903, 21.036697, 17.177881>,  <20.345312, 21.268921, 17.118021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335903, 21.036697, 17.177881>,  <20.320221, 20.649656, 17.277649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.335903, 21.036697, 17.177881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207588, 0.236278, 0.949253,
		0.977431, -0.088992, -0.191599,
		0.039206, 0.967602, -0.249419,
		20.347666, 21.326979, 17.103056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893139, 20.858448, 17.655296>,  <20.320221, 20.649656, 17.277649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893139, 20.858448, 17.655296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.674416, 21.178192, 17.555677>,  <20.543180, 21.370039, 17.495907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.674416, 21.178192, 17.555677>,  <20.893139, 20.858448, 17.655296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.674416, 21.178192, 17.555677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160227, 0.391864, 0.905964,
		0.821782, 0.455487, -0.342354,
		-0.546811, 0.799359, -0.249045,
		20.510372, 21.417999, 17.480965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.087425, 21.400133, 18.138384>,  <20.893139, 20.858448, 17.655296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.087425, 21.400133, 18.138384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765594, 21.572536, 17.974979>,  <20.572496, 21.675980, 17.876936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765594, 21.572536, 17.974979>,  <21.087425, 21.400133, 18.138384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765594, 21.572536, 17.974979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069776, 0.614531, 0.785801,
		0.589732, 0.660744, -0.464364,
		-0.804579, 0.431010, -0.408513,
		20.524221, 21.701839, 17.852427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.225611, 22.141356, 18.143776>,  <21.087425, 21.400133, 18.138384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.225611, 22.141356, 18.143776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831455, 22.073925, 18.153475>,  <20.594961, 22.033466, 18.159294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831455, 22.073925, 18.153475>,  <21.225611, 22.141356, 18.143776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831455, 22.073925, 18.153475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099791, 0.686872, 0.719895,
		-0.138013, 0.706957, -0.693660,
		-0.985390, -0.168576, 0.024249,
		20.535837, 22.023352, 18.160749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.956360, 22.733860, 18.366375>,  <21.225611, 22.141356, 18.143776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.956360, 22.733860, 18.366375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622471, 22.522011, 18.426687>,  <20.422138, 22.394901, 18.462875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622471, 22.522011, 18.426687>,  <20.956360, 22.733860, 18.366375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622471, 22.522011, 18.426687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178287, 0.518991, 0.835979,
		-0.521010, 0.670929, -0.527640,
		-0.834723, -0.529625, 0.150781,
		20.372053, 22.363123, 18.471922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.495628, 23.172909, 18.656197>,  <20.956360, 22.733860, 18.366375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.495628, 23.172909, 18.656197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351089, 22.813091, 18.754381>,  <20.264366, 22.597200, 18.813292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351089, 22.813091, 18.754381>,  <20.495628, 23.172909, 18.656197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351089, 22.813091, 18.754381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257372, 0.349242, 0.900994,
		-0.896208, 0.262395, -0.357714,
		-0.361345, -0.899544, 0.245460,
		20.242685, 22.543228, 18.828020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.831627, 23.267790, 18.959990>,  <20.495628, 23.172909, 18.656197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.831627, 23.267790, 18.959990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950783, 22.903896, 19.075672>,  <20.022276, 22.685560, 19.145082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950783, 22.903896, 19.075672>,  <19.831627, 23.267790, 18.959990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950783, 22.903896, 19.075672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187592, 0.241267, 0.952155,
		-0.935986, -0.337891, -0.098788,
		0.297891, -0.909736, 0.289209,
		20.040150, 22.630976, 19.162436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220812, 22.988956, 19.309904>,  <19.831627, 23.267790, 18.959990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.220812, 22.988956, 19.309904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.541893, 22.790081, 19.441645>,  <19.734541, 22.670755, 19.520689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.541893, 22.790081, 19.441645>,  <19.220812, 22.988956, 19.309904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.541893, 22.790081, 19.441645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347241, 0.059348, 0.935896,
		-0.484864, -0.865610, -0.125005,
		0.802702, -0.497189, 0.329350,
		19.782703, 22.640924, 19.540449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972523, 22.533081, 19.808241>,  <19.220812, 22.988956, 19.309904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.972523, 22.533081, 19.808241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357182, 22.610397, 19.886084>,  <19.587976, 22.656786, 19.932789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357182, 22.610397, 19.886084>,  <18.972523, 22.533081, 19.808241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357182, 22.610397, 19.886084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235026, 0.214917, 0.947931,
		0.141396, -0.957315, 0.252102,
		0.961649, 0.193285, 0.194606,
		19.645676, 22.668385, 19.944466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.056767, 22.219992, 20.454161>,  <18.972523, 22.533081, 19.808241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.056767, 22.219992, 20.454161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361042, 22.476208, 20.412085>,  <19.543608, 22.629936, 20.386839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361042, 22.476208, 20.412085>,  <19.056767, 22.219992, 20.454161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361042, 22.476208, 20.412085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118926, 0.296830, 0.947496,
		0.638130, -0.708239, 0.301972,
		0.760688, 0.640538, -0.105188,
		19.589249, 22.668369, 20.380527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.337231, 22.231020, 21.085758>,  <19.056767, 22.219992, 20.454161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.337231, 22.231020, 21.085758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.499863, 22.574612, 20.961275>,  <19.597443, 22.780766, 20.886585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.499863, 22.574612, 20.961275>,  <19.337231, 22.231020, 21.085758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.499863, 22.574612, 20.961275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089065, 0.301745, 0.949219,
		0.909264, -0.413652, 0.046179,
		0.406580, 0.858978, -0.311208,
		19.621838, 22.832304, 20.867912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.877253, 22.310179, 21.394133>,  <19.337231, 22.231020, 21.085758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.877253, 22.310179, 21.394133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807808, 22.688934, 21.285868>,  <19.766140, 22.916187, 21.220909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807808, 22.688934, 21.285868>,  <19.877253, 22.310179, 21.394133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.807808, 22.688934, 21.285868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077157, 0.260912, 0.962274,
		0.981787, 0.187947, 0.027762,
		-0.173613, 0.946890, -0.270661,
		19.755724, 22.973001, 21.204670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233028, 22.708858, 21.828777>,  <19.877253, 22.310179, 21.394133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233028, 22.708858, 21.828777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973202, 22.990891, 21.714989>,  <19.817307, 23.160110, 21.646715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973202, 22.990891, 21.714989>,  <20.233028, 22.708858, 21.828777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.973202, 22.990891, 21.714989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125337, 0.269733, 0.954743,
		0.749903, 0.655824, -0.086837,
		-0.649567, 0.705081, -0.284473,
		19.778332, 23.202415, 21.629646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352947, 23.380114, 22.108311>,  <20.233028, 22.708858, 21.828777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352947, 23.380114, 22.108311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.960255, 23.367096, 22.033321>,  <19.724640, 23.359285, 21.988327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.960255, 23.367096, 22.033321>,  <20.352947, 23.380114, 22.108311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960255, 23.367096, 22.033321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189288, 0.267348, 0.944825,
		0.019371, 0.963050, -0.268624,
		-0.981730, -0.032545, -0.187473,
		19.665735, 23.357332, 21.977079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118807, 24.034826, 22.376627>,  <20.352947, 23.380114, 22.108311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118807, 24.034826, 22.376627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.836025, 23.752129, 22.387434>,  <19.666355, 23.582510, 22.393919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.836025, 23.752129, 22.387434>,  <20.118807, 24.034826, 22.376627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.836025, 23.752129, 22.387434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326499, 0.360007, 0.873953,
		-0.627385, 0.609024, -0.485259,
		-0.706955, -0.706742, 0.027017,
		19.623940, 23.540106, 22.395538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.909599, 23.900362, 23.136496>,  <20.118807, 24.034826, 22.376627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.909599, 23.900362, 23.136496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.533630, 23.839828, 23.014088>,  <19.308050, 23.803509, 22.940643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.533630, 23.839828, 23.014088>,  <19.909599, 23.900362, 23.136496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.533630, 23.839828, 23.014088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269787, 0.878548, 0.394167,
		0.209201, 0.453046, -0.866594,
		-0.939920, -0.151336, -0.306019,
		19.251654, 23.794428, 22.922281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636770, 24.542025, 22.793715>,  <19.909599, 23.900362, 23.136496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.636770, 24.542025, 22.793715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.302708, 24.337559, 22.874933>,  <19.102270, 24.214880, 22.923664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.302708, 24.337559, 22.874933>,  <19.636770, 24.542025, 22.793715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.302708, 24.337559, 22.874933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435351, 0.839963, 0.323933,
		-0.336135, 0.182138, -0.924034,
		-0.835155, -0.511164, 0.203047,
		19.052162, 24.184210, 22.935848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.043734, 24.866501, 22.532558>,  <19.636770, 24.542025, 22.793715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.043734, 24.866501, 22.532558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876778, 24.654270, 22.827658>,  <18.776604, 24.526932, 23.004717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876778, 24.654270, 22.827658>,  <19.043734, 24.866501, 22.532558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876778, 24.654270, 22.827658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467017, 0.821677, 0.326715,
		-0.779539, -0.208175, -0.590747,
		-0.417389, -0.530576, 0.737750,
		18.751560, 24.495098, 23.048983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.320425, 24.900852, 22.430973>,  <19.043734, 24.866501, 22.532558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.320425, 24.900852, 22.430973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.462559, 24.871559, 22.803720>,  <18.547838, 24.853983, 23.027369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.462559, 24.871559, 22.803720>,  <18.320425, 24.900852, 22.430973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.462559, 24.871559, 22.803720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529817, 0.805538, 0.265333,
		-0.770086, -0.588001, 0.247434,
		0.355334, -0.073234, 0.931866,
		18.569159, 24.849588, 23.083281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.036247, 24.351608, 22.856024>,  <18.320425, 24.900852, 22.430973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.036247, 24.351608, 22.856024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.645645, 24.422073, 22.905666>,  <17.411283, 24.464354, 22.935452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.645645, 24.422073, 22.905666>,  <18.036247, 24.351608, 22.856024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.645645, 24.422073, 22.905666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102478, 0.127004, -0.986594,
		-0.189566, -0.976133, -0.105967,
		-0.976505, 0.176166, 0.124108,
		17.352694, 24.474922, 22.942898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409039, 23.957466, 22.557331>,  <18.036247, 24.351608, 22.856024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409039, 23.957466, 22.557331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304462, 24.341156, 22.600288>,  <17.241716, 24.571371, 22.626062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304462, 24.341156, 22.600288>,  <17.409039, 23.957466, 22.557331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304462, 24.341156, 22.600288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015307, 0.107128, -0.994127,
		-0.965098, -0.261550, -0.013325,
		-0.261442, 0.959226, 0.107393,
		17.226030, 24.628923, 22.632505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.874590, 24.042118, 22.092024>,  <17.409039, 23.957466, 22.557331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.874590, 24.042118, 22.092024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987236, 24.415443, 22.181128>,  <17.054823, 24.639439, 22.234591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987236, 24.415443, 22.181128>,  <16.874590, 24.042118, 22.092024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987236, 24.415443, 22.181128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164360, 0.275646, -0.947104,
		-0.945346, 0.230105, 0.231025,
		0.281615, 0.933312, 0.222761,
		17.071720, 24.695436, 22.247955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439629, 24.715763, 22.023417>,  <16.874590, 24.042118, 22.092024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.439629, 24.715763, 22.023417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.822701, 24.741314, 21.911156>,  <17.052544, 24.756645, 21.843800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.822701, 24.741314, 21.911156>,  <16.439629, 24.715763, 22.023417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822701, 24.741314, 21.911156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287612, 0.174506, -0.941715,
		-0.011180, 0.982582, 0.185493,
		0.957682, 0.063878, -0.280651,
		17.110004, 24.760477, 21.826960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447680, 25.227709, 21.386694>,  <16.439629, 24.715763, 22.023417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447680, 25.227709, 21.386694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.789135, 25.019375, 21.384521>,  <16.994009, 24.894375, 21.383219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.789135, 25.019375, 21.384521>,  <16.447680, 25.227709, 21.386694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789135, 25.019375, 21.384521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164075, -0.258989, -0.951843,
		0.494346, 0.813422, -0.306539,
		0.853640, -0.520835, -0.005432,
		17.045227, 24.863125, 21.382893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798092, 25.326290, 20.773052>,  <16.447680, 25.227709, 21.386694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798092, 25.326290, 20.773052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963844, 24.983448, 20.895466>,  <17.063295, 24.777742, 20.968914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963844, 24.983448, 20.895466>,  <16.798092, 25.326290, 20.773052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963844, 24.983448, 20.895466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083570, -0.370676, -0.924995,
		0.906258, 0.357726, -0.225230,
		0.414382, -0.857107, 0.306033,
		17.088160, 24.726316, 20.987276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279594, 25.252789, 20.239687>,  <16.798092, 25.326290, 20.773052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279594, 25.252789, 20.239687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.206406, 24.899765, 20.412943>,  <17.162493, 24.687950, 20.516897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.206406, 24.899765, 20.412943>,  <17.279594, 25.252789, 20.239687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206406, 24.899765, 20.412943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003564, -0.439979, -0.898001,
		0.983112, -0.165853, 0.077359,
		-0.182972, -0.882560, 0.433139,
		17.151514, 24.634996, 20.542885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825951, 24.798256, 19.980202>,  <17.279594, 25.252789, 20.239687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825951, 24.798256, 19.980202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517826, 24.575031, 20.103613>,  <17.332952, 24.441097, 20.177660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517826, 24.575031, 20.103613>,  <17.825951, 24.798256, 19.980202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517826, 24.575031, 20.103613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005568, -0.477930, -0.878380,
		0.637645, -0.678343, 0.365047,
		-0.770310, -0.558062, 0.308526,
		17.286734, 24.407612, 20.196171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.053591, 24.216738, 19.648932>,  <17.825951, 24.798256, 19.980202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.053591, 24.216738, 19.648932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673740, 24.172001, 19.766031>,  <17.445831, 24.145159, 19.836292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673740, 24.172001, 19.766031>,  <18.053591, 24.216738, 19.648932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673740, 24.172001, 19.766031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227642, -0.395843, -0.889656,
		0.215386, -0.911482, 0.350442,
		-0.949625, -0.111844, 0.292751,
		17.388853, 24.138449, 19.853857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838816, 23.604677, 19.345018>,  <18.053591, 24.216738, 19.648932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838816, 23.604677, 19.345018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493420, 23.785740, 19.434000>,  <17.286182, 23.894377, 19.487389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493420, 23.785740, 19.434000>,  <17.838816, 23.604677, 19.345018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493420, 23.785740, 19.434000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366155, -0.259281, -0.893703,
		-0.346864, -0.853156, 0.389629,
		-0.863491, 0.452658, 0.222452,
		17.234373, 23.921537, 19.500736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289150, 23.121458, 19.083126>,  <17.838816, 23.604677, 19.345018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289150, 23.121458, 19.083126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.147713, 23.494518, 19.111797>,  <17.062851, 23.718353, 19.129000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.147713, 23.494518, 19.111797>,  <17.289150, 23.121458, 19.083126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147713, 23.494518, 19.111797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470644, -0.111164, -0.875293,
		-0.808373, -0.343232, 0.478252,
		-0.353593, 0.932649, 0.071678,
		17.041636, 23.774313, 19.133301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683699, 23.077541, 19.101986>,  <17.289150, 23.121458, 19.083126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683699, 23.077541, 19.101986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712597, 23.454792, 18.972189>,  <16.729935, 23.681143, 18.894310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712597, 23.454792, 18.972189>,  <16.683699, 23.077541, 19.101986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712597, 23.454792, 18.972189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532777, -0.238545, -0.811939,
		-0.843166, 0.231539, 0.485242,
		0.072243, 0.943125, -0.324492,
		16.734270, 23.737730, 18.874842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.092329, 23.124207, 18.775604>,  <16.683699, 23.077541, 19.101986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.092329, 23.124207, 18.775604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305874, 23.439137, 18.652246>,  <16.434002, 23.628096, 18.578232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305874, 23.439137, 18.652246>,  <16.092329, 23.124207, 18.775604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305874, 23.439137, 18.652246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371461, -0.109268, -0.921996,
		-0.759609, 0.606777, 0.234127,
		0.533864, 0.787326, -0.308395,
		16.466034, 23.675335, 18.559729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637141, 23.470116, 18.429489>,  <16.092329, 23.124207, 18.775604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.637141, 23.470116, 18.429489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993649, 23.587646, 18.291330>,  <16.207554, 23.658165, 18.208435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993649, 23.587646, 18.291330>,  <15.637141, 23.470116, 18.429489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993649, 23.587646, 18.291330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310895, -0.158560, -0.937125,
		-0.330121, 0.942615, -0.049970,
		0.891271, 0.293829, -0.345399,
		16.261030, 23.675795, 18.187710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418612, 23.752975, 17.787121>,  <15.637141, 23.470116, 18.429489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.418612, 23.752975, 17.787121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.810067, 23.679890, 17.749418>,  <16.044941, 23.636038, 17.726797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.810067, 23.679890, 17.749418>,  <15.418612, 23.752975, 17.787121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810067, 23.679890, 17.749418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134331, -0.221203, -0.965932,
		0.155642, 0.957958, -0.241022,
		0.978637, -0.182716, -0.094255,
		16.103659, 23.625074, 17.721142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620022, 24.182304, 17.233561>,  <15.418612, 23.752975, 17.787121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620022, 24.182304, 17.233561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891288, 23.891171, 17.274246>,  <16.054049, 23.716490, 17.298658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891288, 23.891171, 17.274246>,  <15.620022, 24.182304, 17.233561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891288, 23.891171, 17.274246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000652, -0.139002, -0.990292,
		0.734908, 0.671516, -0.094740,
		0.678166, -0.727836, 0.101716,
		16.094738, 23.672819, 17.304762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015978, 24.334932, 16.657482>,  <15.620022, 24.182304, 17.233561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015978, 24.334932, 16.657482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103024, 23.956226, 16.752373>,  <16.155251, 23.729002, 16.809307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103024, 23.956226, 16.752373>,  <16.015978, 24.334932, 16.657482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103024, 23.956226, 16.752373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014248, -0.239943, -0.970683,
		0.975931, 0.214615, -0.038726,
		0.217615, -0.946767, 0.237226,
		16.168308, 23.672195, 16.823540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574543, 24.161781, 16.189724>,  <16.015978, 24.334932, 16.657482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574543, 24.161781, 16.189724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.420414, 23.819424, 16.327690>,  <16.327936, 23.614008, 16.410471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.420414, 23.819424, 16.327690>,  <16.574543, 24.161781, 16.189724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420414, 23.819424, 16.327690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235187, -0.452524, -0.860180,
		0.892307, -0.250328, 0.375664,
		-0.385325, -0.855896, 0.344917,
		16.304817, 23.562654, 16.431166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.052010, 23.579679, 16.304871>,  <16.574543, 24.161781, 16.189724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.052010, 23.579679, 16.304871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692234, 23.428093, 16.217791>,  <16.476368, 23.337141, 16.165543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692234, 23.428093, 16.217791>,  <17.052010, 23.579679, 16.304871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692234, 23.428093, 16.217791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335518, -0.279531, -0.899606,
		0.280065, -0.882183, 0.378571,
		-0.899440, -0.378966, -0.217701,
		16.422401, 23.314404, 16.152481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270401, 23.165724, 15.873625>,  <17.052010, 23.579679, 16.304871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270401, 23.165724, 15.873625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.881680, 23.176323, 15.779909>,  <16.648447, 23.182682, 15.723680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.881680, 23.176323, 15.779909>,  <17.270401, 23.165724, 15.873625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.881680, 23.176323, 15.779909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211349, -0.342590, -0.915403,
		-0.104522, -0.939111, 0.327331,
		-0.971806, 0.026498, -0.234288,
		16.590137, 23.184273, 15.709622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081825, 22.485510, 15.548853>,  <17.270401, 23.165724, 15.873625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081825, 22.485510, 15.548853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812885, 22.759190, 15.435844>,  <16.651522, 22.923397, 15.368039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812885, 22.759190, 15.435844>,  <17.081825, 22.485510, 15.548853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812885, 22.759190, 15.435844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016390, -0.367810, -0.929757,
		-0.740054, -0.629751, 0.236082,
		-0.672348, 0.684200, -0.282521,
		16.611181, 22.964449, 15.351089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792963, 22.236553, 14.900132>,  <17.081825, 22.485510, 15.548853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792963, 22.236553, 14.900132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.642403, 22.606354, 14.876080>,  <16.552067, 22.828234, 14.861648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.642403, 22.606354, 14.876080>,  <16.792963, 22.236553, 14.900132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.642403, 22.606354, 14.876080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029500, -0.076832, -0.996608,
		-0.925986, -0.373352, 0.056192,
		-0.376403, 0.924503, -0.060132,
		16.529482, 22.883705, 14.858040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218670, 22.197124, 14.454188>,  <16.792963, 22.236553, 14.900132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218670, 22.197124, 14.454188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.296635, 22.589417, 14.448832>,  <16.343414, 22.824791, 14.445618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.296635, 22.589417, 14.448832>,  <16.218670, 22.197124, 14.454188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.296635, 22.589417, 14.448832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173351, 0.021007, -0.984636,
		-0.965380, 0.194240, 0.174105,
		0.194914, 0.980729, -0.013392,
		16.355108, 22.883635, 14.444814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787135, 22.479122, 13.979134>,  <16.218670, 22.197124, 14.454188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787135, 22.479122, 13.979134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061272, 22.769913, 13.996161>,  <16.225754, 22.944387, 14.006376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061272, 22.769913, 13.996161>,  <15.787135, 22.479122, 13.979134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061272, 22.769913, 13.996161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105172, -0.040969, -0.993610,
		-0.720587, 0.685439, -0.104536,
		0.685341, 0.726977, 0.042567,
		16.266874, 22.988007, 14.008931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597385, 23.057579, 13.491911>,  <15.787135, 22.479122, 13.979134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597385, 23.057579, 13.491911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987622, 23.089146, 13.573877>,  <16.221764, 23.108086, 13.623057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987622, 23.089146, 13.573877>,  <15.597385, 23.057579, 13.491911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.987622, 23.089146, 13.573877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198140, 0.085888, -0.976404,
		-0.094653, 0.993175, 0.068156,
		0.975593, 0.078915, 0.204917,
		16.280300, 23.112820, 13.635352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833971, 23.514071, 12.962280>,  <15.597385, 23.057579, 13.491911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.833971, 23.514071, 12.962280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.167652, 23.347565, 13.106962>,  <16.367861, 23.247662, 13.193771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.167652, 23.347565, 13.106962>,  <15.833971, 23.514071, 12.962280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167652, 23.347565, 13.106962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325417, -0.157947, -0.932286,
		0.445208, 0.895419, 0.003700,
		0.834202, -0.416265, 0.361704,
		16.417913, 23.222685, 13.215473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460184, 23.761702, 12.600698>,  <15.833971, 23.514071, 12.962280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460184, 23.761702, 12.600698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555019, 23.410683, 12.767407>,  <16.611919, 23.200071, 12.867434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555019, 23.410683, 12.767407>,  <16.460184, 23.761702, 12.600698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555019, 23.410683, 12.767407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469861, -0.271915, -0.839817,
		0.850307, 0.394935, 0.347858,
		0.237086, -0.877547, 0.416776,
		16.626144, 23.147419, 12.892440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143160, 23.574368, 12.518380>,  <16.460184, 23.761702, 12.600698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143160, 23.574368, 12.518380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012138, 23.198322, 12.556105>,  <16.933525, 22.972694, 12.578739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012138, 23.198322, 12.556105>,  <17.143160, 23.574368, 12.518380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.012138, 23.198322, 12.556105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556183, -0.272544, -0.785099,
		0.763787, -0.204707, 0.612148,
		-0.327552, -0.940114, 0.094311,
		16.913872, 22.916288, 12.584398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747583, 23.133041, 12.315413>,  <17.143160, 23.574368, 12.518380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.747583, 23.133041, 12.315413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439102, 22.878777, 12.301676>,  <17.254013, 22.726217, 12.293433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439102, 22.878777, 12.301676>,  <17.747583, 23.133041, 12.315413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439102, 22.878777, 12.301676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467369, -0.528743, -0.708518,
		0.432219, -0.562463, 0.704857,
		-0.771203, -0.635663, -0.034345,
		17.207741, 22.688078, 12.291372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052683, 22.479481, 12.238111>,  <17.747583, 23.133041, 12.315413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052683, 22.479481, 12.238111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.672501, 22.410145, 12.134894>,  <17.444391, 22.368544, 12.072964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.672501, 22.410145, 12.134894>,  <18.052683, 22.479481, 12.238111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672501, 22.410145, 12.134894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309394, -0.446983, -0.839334,
		0.030151, -0.877587, 0.478469,
		-0.950456, -0.173343, -0.258043,
		17.387363, 22.358143, 12.057481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064857, 21.810211, 12.098855>,  <18.052683, 22.479481, 12.238111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064857, 21.810211, 12.098855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.750374, 21.962864, 11.904441>,  <17.561684, 22.054455, 11.787792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.750374, 21.962864, 11.904441>,  <18.064857, 21.810211, 12.098855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750374, 21.962864, 11.904441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286048, -0.472430, -0.833659,
		-0.547770, -0.794460, 0.262263,
		-0.786209, 0.381633, -0.486036,
		17.514511, 22.077353, 11.758630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837873, 21.238388, 11.677805>,  <18.064857, 21.810211, 12.098855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837873, 21.238388, 11.677805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638916, 21.546440, 11.518055>,  <17.519543, 21.731272, 11.422205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638916, 21.546440, 11.518055>,  <17.837873, 21.238388, 11.677805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638916, 21.546440, 11.518055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087964, -0.413215, -0.906375,
		-0.863055, -0.485954, 0.137786,
		-0.497392, 0.770131, -0.399374,
		17.489698, 21.777479, 11.398243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.283113, 20.973074, 11.349864>,  <17.837873, 21.238388, 11.677805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.283113, 20.973074, 11.349864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383404, 21.319096, 11.176050>,  <17.443579, 21.526709, 11.071762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383404, 21.319096, 11.176050>,  <17.283113, 20.973074, 11.349864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.383404, 21.319096, 11.176050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217684, -0.487758, -0.845403,
		-0.943265, 0.117375, -0.310603,
		0.250728, 0.865052, -0.434534,
		17.458622, 21.578611, 11.045690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916363, 20.972143, 10.692533>,  <17.283113, 20.973074, 11.349864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916363, 20.972143, 10.692533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.190289, 21.258938, 10.640440>,  <17.354645, 21.431015, 10.609184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.190289, 21.258938, 10.640440>,  <16.916363, 20.972143, 10.692533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.190289, 21.258938, 10.640440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316167, -0.453354, -0.833372,
		-0.656557, 0.529530, -0.537150,
		0.684815, 0.716985, -0.130233,
		17.395733, 21.474033, 10.601370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.820229, 21.329845, 10.068280>,  <16.916363, 20.972143, 10.692533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.820229, 21.329845, 10.068280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200085, 21.440742, 10.126691>,  <17.427998, 21.507280, 10.161737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200085, 21.440742, 10.126691>,  <16.820229, 21.329845, 10.068280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200085, 21.440742, 10.126691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253507, -0.405848, -0.878078,
		-0.184174, 0.870876, -0.455692,
		0.949639, 0.277241, 0.146027,
		17.484976, 21.523914, 10.170499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.060665, 21.750168, 9.562783>,  <16.820229, 21.329845, 10.068280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.060665, 21.750168, 9.562783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.387009, 21.568611, 9.706089>,  <17.582815, 21.459677, 9.792072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.387009, 21.568611, 9.706089>,  <17.060665, 21.750168, 9.562783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.387009, 21.568611, 9.706089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287562, -0.219052, -0.932376,
		0.501677, 0.863712, -0.048194,
		0.815861, -0.453892, 0.358264,
		17.631767, 21.432444, 9.813568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522528, 21.894760, 9.059704>,  <17.060665, 21.750168, 9.562783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522528, 21.894760, 9.059704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.704857, 21.607227, 9.269657>,  <17.814255, 21.434708, 9.395629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.704857, 21.607227, 9.269657>,  <17.522528, 21.894760, 9.059704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.704857, 21.607227, 9.269657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499107, -0.281842, -0.819425,
		0.736964, 0.635488, 0.230304,
		0.455825, -0.718833, 0.524884,
		17.841604, 21.391577, 9.427122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.113646, 21.828882, 8.758172>,  <17.522528, 21.894760, 9.059704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.113646, 21.828882, 8.758172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.134830, 21.490734, 8.970793>,  <18.147541, 21.287846, 9.098365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.134830, 21.490734, 8.970793>,  <18.113646, 21.828882, 8.758172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.134830, 21.490734, 8.970793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537164, -0.424607, -0.728809,
		0.841813, 0.324130, 0.431613,
		0.052963, -0.845369, 0.531551,
		18.150719, 21.237123, 9.130259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780430, 21.686798, 9.049529>,  <18.113646, 21.828882, 8.758172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780430, 21.686798, 9.049529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584164, 21.343430, 8.989717>,  <18.466404, 21.137409, 8.953829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584164, 21.343430, 8.989717>,  <18.780430, 21.686798, 9.049529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584164, 21.343430, 8.989717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690359, -0.278277, -0.667807,
		0.531648, -0.430902, 0.729160,
		-0.490668, -0.858420, -0.149531,
		18.436964, 21.085903, 8.944857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.297007, 21.261717, 8.947349>,  <18.780430, 21.686798, 9.049529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.297007, 21.261717, 8.947349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.994453, 21.025925, 8.833933>,  <18.812922, 20.884449, 8.765883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.994453, 21.025925, 8.833933>,  <19.297007, 21.261717, 8.947349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.994453, 21.025925, 8.833933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529527, -0.297309, -0.794487,
		0.384036, -0.751079, 0.537026,
		-0.756384, -0.589481, -0.283539,
		18.767538, 20.849081, 8.748871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.546886, 20.552290, 8.650677>,  <19.297007, 21.261717, 8.947349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.546886, 20.552290, 8.650677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.178993, 20.536396, 8.494466>,  <18.958258, 20.526859, 8.400740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.178993, 20.536396, 8.494466>,  <19.546886, 20.552290, 8.650677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.178993, 20.536396, 8.494466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368122, -0.432734, -0.822938,
		-0.136295, -0.900646, 0.412627,
		-0.919733, -0.039735, -0.390527,
		18.903072, 20.524475, 8.377308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445427, 19.884768, 8.364930>,  <19.546886, 20.552290, 8.650677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445427, 19.884768, 8.364930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.193535, 20.119843, 8.161730>,  <19.042400, 20.260887, 8.039810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.193535, 20.119843, 8.161730>,  <19.445427, 19.884768, 8.364930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193535, 20.119843, 8.161730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279297, -0.438932, -0.854009,
		-0.724868, -0.679677, 0.112269,
		-0.629729, 0.587688, -0.508000,
		19.004616, 20.296148, 8.009330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001696, 19.431858, 8.080429>,  <19.445427, 19.884768, 8.364930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001696, 19.431858, 8.080429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988724, 19.748043, 7.835770>,  <18.980940, 19.937754, 7.688974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988724, 19.748043, 7.835770>,  <19.001696, 19.431858, 8.080429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988724, 19.748043, 7.835770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157963, -0.600226, -0.784077,
		-0.986912, -0.122046, -0.105398,
		-0.032431, 0.790464, -0.611649,
		18.978994, 19.985182, 7.652275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662991, 19.093206, 7.607987>,  <19.001696, 19.431858, 8.080429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662991, 19.093206, 7.607987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.794472, 19.444241, 7.468390>,  <18.873360, 19.654861, 7.384631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.794472, 19.444241, 7.468390>,  <18.662991, 19.093206, 7.607987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.794472, 19.444241, 7.468390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338605, -0.454469, -0.823896,
		-0.881646, 0.152646, -0.446541,
		0.328703, 0.877586, -0.348994,
		18.893084, 19.707516, 7.363691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.061266, 18.701942, 7.697277>,  <18.662991, 19.093206, 7.607987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.061266, 18.701942, 7.697277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682785, 18.575874, 7.667962>,  <17.455696, 18.500235, 7.650373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682785, 18.575874, 7.667962>,  <18.061266, 18.701942, 7.697277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682785, 18.575874, 7.667962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213293, 0.437184, 0.873714,
		-0.243328, 0.842341, -0.480888,
		-0.946202, -0.315169, -0.073287,
		17.398924, 18.481323, 7.645976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787064, 19.233387, 7.949685>,  <18.061266, 18.701942, 7.697277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.787064, 19.233387, 7.949685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.490845, 18.965031, 7.965134>,  <17.313114, 18.804016, 7.974403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.490845, 18.965031, 7.965134>,  <17.787064, 19.233387, 7.949685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.490845, 18.965031, 7.965134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328414, 0.411456, 0.850205,
		-0.586287, 0.616933, -0.525034,
		-0.740548, -0.670893, 0.038622,
		17.268681, 18.763763, 7.976720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250973, 19.563892, 8.174026>,  <17.787064, 19.233387, 7.949685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250973, 19.563892, 8.174026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157513, 19.183937, 8.257088>,  <17.101437, 18.955963, 8.306925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157513, 19.183937, 8.257088>,  <17.250973, 19.563892, 8.174026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157513, 19.183937, 8.257088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417163, 0.290841, 0.861038,
		-0.878284, 0.114555, -0.464213,
		-0.233649, -0.949889, 0.207653,
		17.087418, 18.898970, 8.319384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523466, 19.675564, 8.442289>,  <17.250973, 19.563892, 8.174026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523466, 19.675564, 8.442289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643639, 19.311707, 8.557034>,  <16.715742, 19.093391, 8.625880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643639, 19.311707, 8.557034>,  <16.523466, 19.675564, 8.442289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643639, 19.311707, 8.557034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429487, 0.139522, 0.892230,
		-0.851635, -0.391257, -0.348764,
		0.300431, -0.909644, 0.286861,
		16.733768, 19.038813, 8.643092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.966743, 19.368406, 8.841259>,  <16.523466, 19.675564, 8.442289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.966743, 19.368406, 8.841259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274780, 19.143837, 8.962427>,  <16.459602, 19.009096, 9.035128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274780, 19.143837, 8.962427>,  <15.966743, 19.368406, 8.841259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274780, 19.143837, 8.962427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279088, 0.130491, 0.951358,
		-0.573642, -0.817176, -0.056196,
		0.770094, -0.561423, 0.302919,
		16.505808, 18.975410, 9.053303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.655731, 18.896868, 9.322548>,  <15.966743, 19.368406, 8.841259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.655731, 18.896868, 9.322548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043468, 18.929871, 9.415127>,  <16.276112, 18.949673, 9.470675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043468, 18.929871, 9.415127>,  <15.655731, 18.896868, 9.322548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043468, 18.929871, 9.415127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238422, 0.088045, 0.967162,
		0.059412, -0.992694, 0.105015,
		0.969343, 0.082499, 0.231449,
		16.334270, 18.954622, 9.484561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.757108, 18.403666, 9.914133>,  <15.655731, 18.896868, 9.322548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.757108, 18.403666, 9.914133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040527, 18.685211, 9.894009>,  <16.210579, 18.854139, 9.881934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040527, 18.685211, 9.894009>,  <15.757108, 18.403666, 9.914133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040527, 18.685211, 9.894009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076200, 0.147196, 0.986168,
		0.701536, -0.694914, 0.157931,
		0.708548, 0.703866, -0.050311,
		16.253092, 18.896372, 9.878916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268253, 18.316542, 10.480810>,  <15.757108, 18.403666, 9.914133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268253, 18.316542, 10.480810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.303215, 18.699017, 10.369050>,  <16.324192, 18.928501, 10.301994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.303215, 18.699017, 10.369050>,  <16.268253, 18.316542, 10.480810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.303215, 18.699017, 10.369050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185452, 0.291188, 0.938518,
		0.978758, -0.030216, 0.202779,
		0.087405, 0.956188, -0.279399,
		16.329437, 18.985872, 10.285231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564148, 18.509970, 11.088388>,  <16.268253, 18.316542, 10.480810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564148, 18.509970, 11.088388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.442825, 18.840038, 10.897768>,  <16.370031, 19.038078, 10.783396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.442825, 18.840038, 10.897768>,  <16.564148, 18.509970, 11.088388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442825, 18.840038, 10.897768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116442, 0.464265, 0.878008,
		0.945751, 0.321797, -0.044731,
		-0.303307, 0.825169, -0.476550,
		16.351833, 19.087589, 10.754803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784142, 19.134609, 11.459044>,  <16.564148, 18.509970, 11.088388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784142, 19.134609, 11.459044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494408, 19.289864, 11.231118>,  <16.320568, 19.383017, 11.094362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494408, 19.289864, 11.231118>,  <16.784142, 19.134609, 11.459044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494408, 19.289864, 11.231118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397750, 0.439826, 0.805201,
		0.563147, 0.809879, -0.164201,
		-0.724335, 0.388135, -0.569816,
		16.277107, 19.406303, 11.060173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826262, 19.889896, 11.395785>,  <16.784142, 19.134609, 11.459044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826262, 19.889896, 11.395785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.445412, 19.775158, 11.353493>,  <16.216902, 19.706314, 11.328117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.445412, 19.775158, 11.353493>,  <16.826262, 19.889896, 11.395785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.445412, 19.775158, 11.353493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262952, 0.591990, 0.761843,
		-0.155941, 0.753171, -0.639074,
		-0.952123, -0.286848, -0.105732,
		16.159775, 19.689104, 11.321774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423588, 20.542877, 11.560489>,  <16.826262, 19.889896, 11.395785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423588, 20.542877, 11.560489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134590, 20.268253, 11.527903>,  <15.961191, 20.103479, 11.508350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134590, 20.268253, 11.527903>,  <16.423588, 20.542877, 11.560489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134590, 20.268253, 11.527903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521417, 0.463711, 0.716307,
		-0.454012, 0.560006, -0.693013,
		-0.722494, -0.686561, -0.081466,
		15.917842, 20.062284, 11.503463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907639, 20.891090, 11.550995>,  <16.423588, 20.542877, 11.560489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907639, 20.891090, 11.550995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.754092, 20.536255, 11.653540>,  <15.661964, 20.323353, 11.715067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.754092, 20.536255, 11.653540>,  <15.907639, 20.891090, 11.550995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754092, 20.536255, 11.653540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594894, 0.449920, 0.666088,
		-0.706221, 0.103180, -0.700432,
		-0.383865, -0.887088, 0.256362,
		15.638932, 20.270128, 11.730448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152626, 20.942419, 11.474034>,  <15.907639, 20.891090, 11.550995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.152626, 20.942419, 11.474034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236346, 20.644176, 11.727100>,  <15.286578, 20.465231, 11.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236346, 20.644176, 11.727100>,  <15.152626, 20.942419, 11.474034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236346, 20.644176, 11.727100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470839, 0.490213, 0.733486,
		-0.857032, -0.451402, -0.248459,
		0.209300, -0.745605, 0.632666,
		15.299136, 20.420494, 11.916901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462261, 20.811558, 11.797868>,  <15.152626, 20.942419, 11.474034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462261, 20.811558, 11.797868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744025, 20.666607, 12.041996>,  <14.913083, 20.579636, 12.188473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744025, 20.666607, 12.041996>,  <14.462261, 20.811558, 11.797868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744025, 20.666607, 12.041996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547827, 0.269176, 0.792105,
		-0.451325, -0.892315, -0.008910,
		0.704409, -0.362378, 0.610320,
		14.955348, 20.557894, 12.225092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.189211, 20.268593, 12.317231>,  <14.462261, 20.811558, 11.797868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.189211, 20.268593, 12.317231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.503205, 20.448849, 12.487276>,  <14.691602, 20.557003, 12.589303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.503205, 20.448849, 12.487276>,  <14.189211, 20.268593, 12.317231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.503205, 20.448849, 12.487276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536378, 0.151019, 0.830357,
		0.309992, -0.879839, 0.360261,
		0.784987, 0.450641, 0.425111,
		14.738701, 20.584042, 12.614809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.097980, 20.014690, 13.089780>,  <14.189211, 20.268593, 12.317231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.097980, 20.014690, 13.089780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.372283, 20.304108, 13.121326>,  <14.536865, 20.477758, 13.140254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.372283, 20.304108, 13.121326>,  <14.097980, 20.014690, 13.089780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.372283, 20.304108, 13.121326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387997, 0.271739, 0.880691,
		0.615787, -0.634541, 0.467080,
		0.685758, 0.723544, 0.078866,
		14.578011, 20.521172, 13.144986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.280255, 19.962496, 13.764721>,  <14.097980, 20.014690, 13.089780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.280255, 19.962496, 13.764721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396297, 20.323711, 13.638004>,  <14.465921, 20.540442, 13.561975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396297, 20.323711, 13.638004>,  <14.280255, 19.962496, 13.764721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396297, 20.323711, 13.638004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225712, 0.386253, 0.894350,
		0.929997, -0.187949, 0.315880,
		0.290102, 0.903042, -0.316792,
		14.483327, 20.594624, 13.542967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792238, 20.293373, 14.248328>,  <14.280255, 19.962496, 13.764721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.792238, 20.293373, 14.248328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600913, 20.591438, 14.062447>,  <14.486118, 20.770277, 13.950917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600913, 20.591438, 14.062447>,  <14.792238, 20.293373, 14.248328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600913, 20.591438, 14.062447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229312, 0.404826, 0.885173,
		0.847722, 0.529952, -0.022759,
		-0.478313, 0.745162, -0.464704,
		14.457419, 20.814987, 13.923036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007591, 20.787651, 14.590261>,  <14.792238, 20.293373, 14.248328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007591, 20.787651, 14.590261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.709584, 20.952892, 14.380768>,  <14.530780, 21.052036, 14.255072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.709584, 20.952892, 14.380768>,  <15.007591, 20.787651, 14.590261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709584, 20.952892, 14.380768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229060, 0.578970, 0.782512,
		0.626484, 0.702951, -0.336717,
		-0.745017, 0.413102, -0.523733,
		14.486079, 21.076822, 14.223648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243198, 21.608681, 14.597384>,  <15.007591, 20.787651, 14.590261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243198, 21.608681, 14.597384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.848359, 21.584198, 14.538202>,  <14.611456, 21.569508, 14.502693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.848359, 21.584198, 14.538202>,  <15.243198, 21.608681, 14.597384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848359, 21.584198, 14.538202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151433, 0.657034, 0.738494,
		0.052011, 0.751372, -0.657826,
		-0.987098, -0.061207, -0.147956,
		14.552230, 21.565836, 14.493815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891175, 22.288671, 14.576921>,  <15.243198, 21.608681, 14.597384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891175, 22.288671, 14.576921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.626267, 22.012863, 14.694199>,  <14.467323, 21.847378, 14.764565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.626267, 22.012863, 14.694199>,  <14.891175, 22.288671, 14.576921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.626267, 22.012863, 14.694199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146298, 0.502776, 0.851947,
		-0.734845, 0.521324, -0.433848,
		-0.662269, -0.689520, 0.293193,
		14.427587, 21.806007, 14.782157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.346950, 22.692019, 14.999078>,  <14.891175, 22.288671, 14.576921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.346950, 22.692019, 14.999078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.320382, 22.307453, 15.105867>,  <14.304441, 22.076714, 15.169941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.320382, 22.307453, 15.105867>,  <14.346950, 22.692019, 14.999078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320382, 22.307453, 15.105867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258895, 0.275006, 0.925929,
		-0.963619, -0.007619, -0.267171,
		-0.066419, -0.961412, 0.266974,
		14.300456, 22.019030, 15.185960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.745998, 22.642515, 15.374711>,  <14.346950, 22.692019, 14.999078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.745998, 22.642515, 15.374711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.986138, 22.340305, 15.479599>,  <14.130222, 22.158979, 15.542532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.986138, 22.340305, 15.479599>,  <13.745998, 22.642515, 15.374711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.986138, 22.340305, 15.479599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213646, 0.164451, 0.962970,
		-0.770672, -0.634142, -0.062687,
		0.600351, -0.755527, 0.262220,
		14.166244, 22.113647, 15.558265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352630, 22.234585, 15.866906>,  <13.745998, 22.642515, 15.374711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352630, 22.234585, 15.866906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738475, 22.146107, 15.924311>,  <13.969982, 22.093019, 15.958754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738475, 22.146107, 15.924311>,  <13.352630, 22.234585, 15.866906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738475, 22.146107, 15.924311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084193, 0.257400, 0.962630,
		-0.249870, -0.940647, 0.229668,
		0.964612, -0.221196, 0.143513,
		14.027859, 22.079748, 15.967364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355790, 21.812994, 16.319336>,  <13.352630, 22.234585, 15.866906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355790, 21.812994, 16.319336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.743102, 21.909805, 16.344168>,  <13.975490, 21.967892, 16.359066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.743102, 21.909805, 16.344168>,  <13.355790, 21.812994, 16.319336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.743102, 21.909805, 16.344168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071074, 0.028602, 0.997061,
		0.239544, -0.969847, 0.044897,
		0.968281, 0.242031, 0.062079,
		14.033587, 21.982414, 16.362791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.521334, 21.498749, 16.961315>,  <13.355790, 21.812994, 16.319336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.521334, 21.498749, 16.961315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.829831, 21.740906, 16.882643>,  <14.014930, 21.886200, 16.835440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.829831, 21.740906, 16.882643>,  <13.521334, 21.498749, 16.961315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.829831, 21.740906, 16.882643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116057, 0.170072, 0.978574,
		0.625870, -0.777546, 0.060907,
		0.771244, 0.605391, -0.196682,
		14.061205, 21.922523, 16.823639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136520, 21.209202, 17.284575>,  <13.521334, 21.498749, 16.961315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.136520, 21.209202, 17.284575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.205602, 21.599670, 17.232012>,  <14.247050, 21.833952, 17.200474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.205602, 21.599670, 17.232012>,  <14.136520, 21.209202, 17.284575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.205602, 21.599670, 17.232012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132107, 0.109248, 0.985197,
		0.976075, -0.187505, -0.110091,
		0.172702, 0.976169, -0.131405,
		14.257413, 21.892521, 17.192591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579187, 21.309008, 17.853109>,  <14.136520, 21.209202, 17.284575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579187, 21.309008, 17.853109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.471450, 21.674149, 17.730373>,  <14.406807, 21.893234, 17.656733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.471450, 21.674149, 17.730373>,  <14.579187, 21.309008, 17.853109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471450, 21.674149, 17.730373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079973, 0.338716, 0.937484,
		0.959718, 0.227967, -0.164235,
		-0.269344, 0.912854, -0.306841,
		14.390647, 21.948006, 17.638321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073971, 21.699142, 17.997524>,  <14.579187, 21.309008, 17.853109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073971, 21.699142, 17.997524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740140, 21.919106, 17.984350>,  <14.539842, 22.051083, 17.976446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740140, 21.919106, 17.984350>,  <15.073971, 21.699142, 17.997524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.740140, 21.919106, 17.984350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191275, 0.345316, 0.918787,
		0.516619, 0.760499, -0.393376,
		-0.834577, 0.549906, -0.032933,
		14.489767, 22.084078, 17.974470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268796, 22.358603, 18.184622>,  <15.073971, 21.699142, 17.997524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.268796, 22.358603, 18.184622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872582, 22.337086, 18.235140>,  <14.634854, 22.324175, 18.265451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872582, 22.337086, 18.235140>,  <15.268796, 22.358603, 18.184622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872582, 22.337086, 18.235140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088962, 0.449146, 0.889018,
		-0.104548, 0.891838, -0.440108,
		-0.990533, -0.053792, 0.126297,
		14.575422, 22.320948, 18.273029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162082, 22.930853, 18.510935>,  <15.268796, 22.358603, 18.184622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162082, 22.930853, 18.510935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807496, 22.755016, 18.568813>,  <14.594745, 22.649513, 18.603540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807496, 22.755016, 18.568813>,  <15.162082, 22.930853, 18.510935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807496, 22.755016, 18.568813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087054, 0.465468, 0.880773,
		-0.454534, 0.768178, -0.450889,
		-0.886465, -0.439593, 0.144698,
		14.541556, 22.623138, 18.612223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.761754, 23.462677, 18.878702>,  <15.162082, 22.930853, 18.510935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.761754, 23.462677, 18.878702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582986, 23.112370, 18.951685>,  <14.475725, 22.902185, 18.995474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582986, 23.112370, 18.951685>,  <14.761754, 23.462677, 18.878702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582986, 23.112370, 18.951685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026534, 0.216846, 0.975845,
		-0.894180, 0.431284, -0.120151,
		-0.446920, -0.875769, 0.182456,
		14.448910, 22.849638, 19.006422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.066358, 23.673111, 19.238810>,  <14.761754, 23.462677, 18.878702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.066358, 23.673111, 19.238810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186645, 23.301479, 19.324955>,  <14.258817, 23.078501, 19.376642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186645, 23.301479, 19.324955>,  <14.066358, 23.673111, 19.238810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186645, 23.301479, 19.324955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133682, 0.182526, 0.974070,
		-0.944298, -0.321709, -0.069312,
		0.300716, -0.929079, 0.215366,
		14.276859, 23.022757, 19.389565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599504, 23.381105, 19.711901>,  <14.066358, 23.673111, 19.238810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.599504, 23.381105, 19.711901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.920423, 23.153824, 19.785074>,  <14.112974, 23.017454, 19.828978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.920423, 23.153824, 19.785074>,  <13.599504, 23.381105, 19.711901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920423, 23.153824, 19.785074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164780, 0.083734, 0.982770,
		-0.573732, -0.818616, -0.026449,
		0.802296, -0.568204, 0.182933,
		14.161112, 22.983362, 19.839954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.398113, 22.857988, 20.250551>,  <13.599504, 23.381105, 19.711901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.398113, 22.857988, 20.250551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.797250, 22.884262, 20.250404>,  <14.036732, 22.900026, 20.250317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.797250, 22.884262, 20.250404>,  <13.398113, 22.857988, 20.250551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797250, 22.884262, 20.250404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008529, -0.124014, 0.992244,
		0.065129, -0.990104, -0.124307,
		0.997840, 0.065684, -0.000368,
		14.096601, 22.903967, 20.250294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.685524, 22.252102, 20.610115>,  <13.398113, 22.857988, 20.250551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.685524, 22.252102, 20.610115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.963626, 22.539204, 20.625324>,  <14.130487, 22.711466, 20.634451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.963626, 22.539204, 20.625324>,  <13.685524, 22.252102, 20.610115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.963626, 22.539204, 20.625324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119721, 0.063478, 0.990776,
		0.708722, -0.693394, 0.130064,
		0.695255, 0.717757, 0.038025,
		14.172202, 22.754530, 20.636732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.139254, 22.047489, 21.166853>,  <13.685524, 22.252102, 20.610115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.139254, 22.047489, 21.166853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210155, 22.440147, 21.138699>,  <14.252695, 22.675743, 21.121807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210155, 22.440147, 21.138699>,  <14.139254, 22.047489, 21.166853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210155, 22.440147, 21.138699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146747, 0.097080, 0.984399,
		0.973163, -0.164157, 0.161261,
		0.177251, 0.981645, -0.070385,
		14.263330, 22.734642, 21.117582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.916753, 21.755522, 21.173956>,  <14.139254, 22.047489, 21.166853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.916753, 21.755522, 21.173956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103534, 21.465843, 21.376930>,  <15.215602, 21.292036, 21.498714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103534, 21.465843, 21.376930>,  <14.916753, 21.755522, 21.173956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103534, 21.465843, 21.376930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098871, -0.527484, -0.843792,
		0.878738, 0.444181, -0.174708,
		0.466952, -0.724199, 0.507437,
		15.243620, 21.248583, 21.529161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569586, 21.588657, 20.791178>,  <14.916753, 21.755522, 21.173956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.569586, 21.588657, 20.791178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461816, 21.278831, 21.020073>,  <15.397154, 21.092936, 21.157410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461816, 21.278831, 21.020073>,  <15.569586, 21.588657, 20.791178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.461816, 21.278831, 21.020073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359001, -0.632162, -0.686651,
		0.893604, 0.020433, 0.448390,
		-0.269425, -0.774567, 0.572238,
		15.380988, 21.046461, 21.191744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139612, 21.031364, 20.756027>,  <15.569586, 21.588657, 20.791178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139612, 21.031364, 20.756027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.817122, 20.834297, 20.887043>,  <15.623630, 20.716057, 20.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.817122, 20.834297, 20.887043>,  <16.139612, 21.031364, 20.756027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.817122, 20.834297, 20.887043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198873, -0.747109, -0.634254,
		0.557185, -0.446211, 0.700315,
		-0.806222, -0.492670, 0.327539,
		15.575255, 20.686497, 20.985304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331203, 20.332010, 20.800428>,  <16.139612, 21.031364, 20.756027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331203, 20.332010, 20.800428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.931895, 20.315109, 20.784090>,  <15.692310, 20.304968, 20.774288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.931895, 20.315109, 20.784090>,  <16.331203, 20.332010, 20.800428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.931895, 20.315109, 20.784090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058723, -0.690584, -0.720864,
		0.002252, -0.722017, 0.691872,
		-0.998271, -0.042252, -0.040844,
		15.632414, 20.302433, 20.771837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162540, 19.672667, 20.707952>,  <16.331203, 20.332010, 20.800428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162540, 19.672667, 20.707952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828549, 19.867985, 20.606461>,  <15.628155, 19.985176, 20.545567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828549, 19.867985, 20.606461>,  <16.162540, 19.672667, 20.707952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828549, 19.867985, 20.606461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211616, -0.710559, -0.671062,
		-0.507964, -0.506631, 0.696633,
		-0.834980, 0.488294, -0.253727,
		15.578055, 20.014473, 20.530342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678518, 19.193172, 20.705046>,  <16.162540, 19.672667, 20.707952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678518, 19.193172, 20.705046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520791, 19.479847, 20.474958>,  <15.426155, 19.651852, 20.336906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520791, 19.479847, 20.474958>,  <15.678518, 19.193172, 20.705046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520791, 19.479847, 20.474958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199684, -0.677801, -0.707609,
		-0.897017, -0.164160, 0.410379,
		-0.394317, 0.716684, -0.575219,
		15.402495, 19.694853, 20.302393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978109, 18.903139, 20.414356>,  <15.678518, 19.193172, 20.705046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978109, 18.903139, 20.414356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.075364, 19.221970, 20.193249>,  <15.133717, 19.413267, 20.060583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.075364, 19.221970, 20.193249>,  <14.978109, 18.903139, 20.414356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075364, 19.221970, 20.193249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217449, -0.510578, -0.831880,
		-0.945305, 0.322459, 0.049183,
		0.243136, 0.797075, -0.552771,
		15.148305, 19.461092, 20.027418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.419834, 18.950161, 19.976135>,  <14.978109, 18.903139, 20.414356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.419834, 18.950161, 19.976135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.733968, 19.142605, 19.820297>,  <14.922448, 19.258072, 19.726795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.733968, 19.142605, 19.820297>,  <14.419834, 18.950161, 19.976135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.733968, 19.142605, 19.820297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263181, -0.310162, -0.913529,
		-0.560345, 0.819960, -0.116961,
		0.785334, 0.481109, -0.389595,
		14.969568, 19.286938, 19.703419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.100012, 19.115685, 19.413204>,  <14.419834, 18.950161, 19.976135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.100012, 19.115685, 19.413204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.493451, 19.160713, 19.356831>,  <14.729515, 19.187731, 19.323006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.493451, 19.160713, 19.356831>,  <14.100012, 19.115685, 19.413204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.493451, 19.160713, 19.356831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092401, -0.356573, -0.929687,
		-0.154908, 0.927461, -0.340323,
		0.983598, 0.112570, -0.140935,
		14.788530, 19.194485, 19.314550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178259, 19.534107, 18.760675>,  <14.100012, 19.115685, 19.413204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178259, 19.534107, 18.760675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506600, 19.315903, 18.828341>,  <14.703606, 19.184980, 18.868940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506600, 19.315903, 18.828341>,  <14.178259, 19.534107, 18.760675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.506600, 19.315903, 18.828341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045439, -0.357625, -0.932759,
		0.569327, 0.757973, -0.318345,
		0.820854, -0.545510, 0.169164,
		14.752856, 19.152250, 18.879089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.543008, 19.768700, 18.285761>,  <14.178259, 19.534107, 18.760675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.543008, 19.768700, 18.285761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.775132, 19.458519, 18.385290>,  <14.914407, 19.272411, 18.445007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.775132, 19.458519, 18.385290>,  <14.543008, 19.768700, 18.285761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.775132, 19.458519, 18.385290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137210, -0.208067, -0.968443,
		0.802753, 0.596139, -0.014344,
		0.580311, -0.775452, 0.248823,
		14.949225, 19.225883, 18.459936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.300442, 19.815369, 17.948879>,  <14.543008, 19.768700, 18.285761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.300442, 19.815369, 17.948879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178857, 19.438435, 18.004898>,  <15.105906, 19.212275, 18.038509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178857, 19.438435, 18.004898>,  <15.300442, 19.815369, 17.948879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178857, 19.438435, 18.004898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162130, -0.196027, -0.967103,
		0.938787, -0.271255, 0.212365,
		-0.303961, -0.942334, 0.140049,
		15.087668, 19.155735, 18.046913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.844316, 19.423351, 17.642670>,  <15.300442, 19.815369, 17.948879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.844316, 19.423351, 17.642670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527244, 19.180962, 17.669348>,  <15.337000, 19.035528, 17.685354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527244, 19.180962, 17.669348>,  <15.844316, 19.423351, 17.642670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527244, 19.180962, 17.669348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104665, -0.243054, -0.964349,
		0.600582, -0.757442, 0.256090,
		-0.792683, -0.605975, 0.066696,
		15.289439, 18.999168, 17.689356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006571, 18.929722, 17.204176>,  <15.844316, 19.423351, 17.642670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006571, 18.929722, 17.204176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.613267, 18.866898, 17.241125>,  <15.377285, 18.829203, 17.263294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.613267, 18.866898, 17.241125>,  <16.006571, 18.929722, 17.204176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.613267, 18.866898, 17.241125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049702, -0.256531, -0.965257,
		0.175301, -0.953689, 0.244430,
		-0.983260, -0.157062, 0.092371,
		15.318289, 18.819778, 17.268837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837687, 18.336494, 16.864098>,  <16.006571, 18.929722, 17.204176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837687, 18.336494, 16.864098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477954, 18.510582, 16.880999>,  <15.262115, 18.615034, 16.891138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477954, 18.510582, 16.880999>,  <15.837687, 18.336494, 16.864098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477954, 18.510582, 16.880999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138352, -0.191559, -0.971681,
		-0.414802, -0.879709, 0.232489,
		-0.899332, 0.435220, 0.042250,
		15.208155, 18.641148, 16.893673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333856, 17.845844, 16.537155>,  <15.837687, 18.336494, 16.864098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.333856, 17.845844, 16.537155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.170739, 18.210228, 16.512314>,  <15.072869, 18.428858, 16.497408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.170739, 18.210228, 16.512314>,  <15.333856, 17.845844, 16.537155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170739, 18.210228, 16.512314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161466, -0.138892, -0.977056,
		-0.898685, -0.388407, 0.203728,
		-0.407792, 0.910961, -0.062105,
		15.048402, 18.483517, 16.493683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.709746, 17.788086, 16.199945>,  <15.333856, 17.845844, 16.537155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.709746, 17.788086, 16.199945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.767903, 18.177330, 16.128489>,  <14.802797, 18.410877, 16.085615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.767903, 18.177330, 16.128489>,  <14.709746, 17.788086, 16.199945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.767903, 18.177330, 16.128489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272738, -0.134144, -0.952691,
		-0.951039, 0.187237, 0.245901,
		0.145393, 0.973112, -0.178643,
		14.811522, 18.469263, 16.074896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136731, 17.935072, 15.736842>,  <14.709746, 17.788086, 16.199945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.136731, 17.935072, 15.736842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.416566, 18.216431, 15.686548>,  <14.584467, 18.385246, 15.656372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.416566, 18.216431, 15.686548>,  <14.136731, 17.935072, 15.736842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.416566, 18.216431, 15.686548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137977, -0.039671, -0.989641,
		-0.701099, 0.709689, 0.069299,
		0.699588, 0.703397, -0.125734,
		14.626442, 18.427450, 15.648828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851267, 18.374468, 15.162921>,  <14.136731, 17.935072, 15.736842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851267, 18.374468, 15.162921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241153, 18.460808, 15.186037>,  <14.475084, 18.512611, 15.199907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241153, 18.460808, 15.186037>,  <13.851267, 18.374468, 15.162921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241153, 18.460808, 15.186037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056194, 0.013532, -0.998328,
		-0.216271, 0.976333, 0.001060,
		0.974715, 0.215850, 0.057791,
		14.533567, 18.525562, 15.203374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.933606, 18.960272, 14.750324>,  <13.851267, 18.374468, 15.162921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.933606, 18.960272, 14.750324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.298076, 18.795471, 14.748627>,  <14.516757, 18.696590, 14.747608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.298076, 18.795471, 14.748627>,  <13.933606, 18.960272, 14.750324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.298076, 18.795471, 14.748627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004022, 0.019192, -0.999808,
		0.412004, 0.910981, 0.019145,
		0.911173, -0.412002, -0.004243,
		14.571427, 18.671871, 14.747354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.263425, 19.187788, 14.161880>,  <13.933606, 18.960272, 14.750324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.263425, 19.187788, 14.161880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496724, 18.871468, 14.236130>,  <14.636703, 18.681675, 14.280680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496724, 18.871468, 14.236130>,  <14.263425, 19.187788, 14.161880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496724, 18.871468, 14.236130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217221, -0.068356, -0.973726,
		0.782711, 0.608245, 0.131911,
		0.583248, -0.790800, 0.185627,
		14.671699, 18.634228, 14.291818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730595, 19.282324, 13.606027>,  <14.263425, 19.187788, 14.161880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730595, 19.282324, 13.606027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800740, 18.914665, 13.747118>,  <14.842828, 18.694071, 13.831773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800740, 18.914665, 13.747118>,  <14.730595, 19.282324, 13.606027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800740, 18.914665, 13.747118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358092, -0.274190, -0.892519,
		0.917070, 0.282825, 0.281056,
		0.175364, -0.919146, 0.352729,
		14.853350, 18.638922, 13.852937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.497464, 19.043821, 13.461483>,  <14.730595, 19.282324, 13.606027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.497464, 19.043821, 13.461483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264634, 18.719128, 13.480570>,  <15.124936, 18.524311, 13.492022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264634, 18.719128, 13.480570>,  <15.497464, 19.043821, 13.461483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264634, 18.719128, 13.480570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314451, -0.278826, -0.907401,
		0.749872, -0.513172, 0.417548,
		-0.582076, -0.811733, 0.047716,
		15.090012, 18.475607, 13.494884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957710, 18.419706, 13.190204>,  <15.497464, 19.043821, 13.461483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.957710, 18.419706, 13.190204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.570785, 18.331024, 13.140968>,  <15.338630, 18.277815, 13.111427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.570785, 18.331024, 13.140968>,  <15.957710, 18.419706, 13.190204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.570785, 18.331024, 13.140968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228116, -0.548773, -0.804245,
		0.110760, -0.806036, 0.581411,
		-0.967313, -0.221707, -0.123088,
		15.280591, 18.264511, 13.104042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065092, 17.697107, 12.983267>,  <15.957710, 18.419706, 13.190204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065092, 17.697107, 12.983267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.709275, 17.844009, 12.874573>,  <15.495786, 17.932150, 12.809357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.709275, 17.844009, 12.874573>,  <16.065092, 17.697107, 12.983267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.709275, 17.844009, 12.874573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036281, -0.536128, -0.843357,
		-0.455410, -0.760060, 0.463584,
		-0.889542, 0.367254, -0.271733,
		15.442412, 17.954185, 12.793053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652559, 17.117126, 12.823126>,  <16.065092, 17.697107, 12.983267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652559, 17.117126, 12.823126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.492772, 17.432491, 12.636007>,  <15.396900, 17.621710, 12.523736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.492772, 17.432491, 12.636007>,  <15.652559, 17.117126, 12.823126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492772, 17.432491, 12.636007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092372, -0.542298, -0.835093,
		-0.912082, -0.290381, 0.289457,
		-0.399468, 0.788411, -0.467797,
		15.372931, 17.669014, 12.495668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038865, 16.848007, 12.413024>,  <15.652559, 17.117126, 12.823126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038865, 16.848007, 12.413024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.136296, 17.201286, 12.252710>,  <15.194755, 17.413254, 12.156523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.136296, 17.201286, 12.252710>,  <15.038865, 16.848007, 12.413024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136296, 17.201286, 12.252710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109924, -0.385427, -0.916167,
		-0.963632, 0.267214, 0.003204,
		0.243578, 0.883200, -0.400783,
		15.209370, 17.466246, 12.132475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393763, 16.995869, 12.046261>,  <15.038865, 16.848007, 12.413024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393763, 16.995869, 12.046261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.700339, 17.212963, 11.908853>,  <14.884285, 17.343220, 11.826407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.700339, 17.212963, 11.908853>,  <14.393763, 16.995869, 12.046261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.700339, 17.212963, 11.908853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090477, -0.438259, -0.894283,
		-0.635910, 0.716496, -0.286795,
		0.766441, 0.542736, -0.343520,
		14.930271, 17.375784, 11.805797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.043683, 17.283184, 11.409425>,  <14.393763, 16.995869, 12.046261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.043683, 17.283184, 11.409425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439277, 17.300694, 11.352864>,  <14.676633, 17.311199, 11.318928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439277, 17.300694, 11.352864>,  <14.043683, 17.283184, 11.409425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.439277, 17.300694, 11.352864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108369, -0.436588, -0.893111,
		-0.100829, 0.898596, -0.427035,
		0.988984, 0.043774, -0.141400,
		14.735972, 17.313826, 11.310444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.174041, 17.547508, 10.651205>,  <14.043683, 17.283184, 11.409425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.174041, 17.547508, 10.651205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535687, 17.400352, 10.738134>,  <14.752675, 17.312059, 10.790292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535687, 17.400352, 10.738134>,  <14.174041, 17.547508, 10.651205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.535687, 17.400352, 10.738134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011833, -0.486862, -0.873399,
		0.427123, 0.792225, -0.435827,
		0.904116, -0.367891, 0.217324,
		14.806922, 17.289986, 10.803331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576303, 17.782724, 10.100644>,  <14.174041, 17.547508, 10.651205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576303, 17.782724, 10.100644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.739495, 17.442608, 10.233644>,  <14.837411, 17.238539, 10.313443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.739495, 17.442608, 10.233644>,  <14.576303, 17.782724, 10.100644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.739495, 17.442608, 10.233644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050070, -0.342801, -0.938073,
		0.911616, 0.399365, -0.097282,
		0.407982, -0.850291, 0.332499,
		14.861890, 17.187521, 10.333393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345349, 17.705784, 9.777892>,  <14.576303, 17.782724, 10.100644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345349, 17.705784, 9.777892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210124, 17.346146, 9.889136>,  <15.128989, 17.130363, 9.955883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210124, 17.346146, 9.889136>,  <15.345349, 17.705784, 9.777892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210124, 17.346146, 9.889136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275724, -0.377162, -0.884152,
		0.899828, -0.222217, 0.375406,
		-0.338063, -0.899093, 0.278110,
		15.108706, 17.076418, 9.972569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920136, 17.260408, 9.528185>,  <15.345349, 17.705784, 9.777892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920136, 17.260408, 9.528185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.614142, 17.011124, 9.593181>,  <15.430546, 16.861553, 9.632178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.614142, 17.011124, 9.593181>,  <15.920136, 17.260408, 9.528185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.614142, 17.011124, 9.593181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330705, -0.596590, -0.731242,
		0.552659, -0.505653, 0.662482,
		-0.764985, -0.623214, 0.162489,
		15.384647, 16.824160, 9.641927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199856, 16.705212, 9.321019>,  <15.920136, 17.260408, 9.528185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.199856, 16.705212, 9.321019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815982, 16.592911, 9.315654>,  <15.585657, 16.525530, 9.312434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815982, 16.592911, 9.315654>,  <16.199856, 16.705212, 9.321019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815982, 16.592911, 9.315654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180209, -0.577971, -0.795911,
		0.215703, -0.766242, 0.605265,
		-0.959686, -0.280755, -0.013414,
		15.528076, 16.508684, 9.311629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.250263, 15.968736, 9.216502>,  <16.199856, 16.705212, 9.321019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.250263, 15.968736, 9.216502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875718, 16.077263, 9.127406>,  <15.650991, 16.142380, 9.073948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875718, 16.077263, 9.127406>,  <16.250263, 15.968736, 9.216502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875718, 16.077263, 9.127406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118061, -0.354158, -0.927703,
		-0.330584, -0.894964, 0.299589,
		-0.936363, 0.271314, -0.222740,
		15.594810, 16.158659, 9.060584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972806, 15.483639, 8.984321>,  <16.250263, 15.968736, 9.216502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.972806, 15.483639, 8.984321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.743943, 15.766319, 8.817846>,  <15.606626, 15.935927, 8.717962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.743943, 15.766319, 8.817846>,  <15.972806, 15.483639, 8.984321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743943, 15.766319, 8.817846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148140, -0.410054, -0.899950,
		-0.806655, -0.576565, 0.129923,
		-0.572156, 0.706703, -0.416185,
		15.572296, 15.978330, 8.692991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.392261, 15.241486, 8.718340>,  <15.972806, 15.483639, 8.984321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.392261, 15.241486, 8.718340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.446872, 15.566887, 8.492217>,  <15.479638, 15.762128, 8.356544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.446872, 15.566887, 8.492217>,  <15.392261, 15.241486, 8.718340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446872, 15.566887, 8.492217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053618, -0.575884, -0.815772,
		-0.989184, 0.081065, -0.122243,
		0.136528, 0.813503, -0.565308,
		15.487830, 15.810938, 8.322624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051048, 15.043245, 8.107991>,  <15.392261, 15.241486, 8.718340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051048, 15.043245, 8.107991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235068, 15.372982, 7.976042>,  <15.345480, 15.570824, 7.896872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235068, 15.372982, 7.976042>,  <15.051048, 15.043245, 8.107991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.235068, 15.372982, 7.976042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034107, -0.354843, -0.934303,
		-0.887238, 0.441077, -0.135130,
		0.460049, 0.824341, -0.329874,
		15.373083, 15.620284, 7.877079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729575, 15.426168, 7.476121>,  <15.051048, 15.043245, 8.107991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.729575, 15.426168, 7.476121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121867, 15.504295, 7.474277>,  <15.357243, 15.551171, 7.473172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121867, 15.504295, 7.474277>,  <14.729575, 15.426168, 7.476121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121867, 15.504295, 7.474277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060542, -0.326252, -0.943342,
		-0.185755, 0.924884, -0.331789,
		0.980729, 0.195317, -0.004608,
		15.416086, 15.562891, 7.472895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858830, 15.824859, 6.856399>,  <14.729575, 15.426168, 7.476121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.858830, 15.824859, 6.856399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159682, 15.593063, 6.981935>,  <15.340194, 15.453986, 7.057256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159682, 15.593063, 6.981935>,  <14.858830, 15.824859, 6.856399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159682, 15.593063, 6.981935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192160, -0.262685, -0.945553,
		0.630377, 0.771486, -0.086220,
		0.752130, -0.579487, 0.313839,
		15.385322, 15.419217, 7.076087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526573, 16.057619, 6.699490>,  <14.858830, 15.824859, 6.856399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526573, 16.057619, 6.699490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536218, 15.659943, 6.657535>,  <15.542005, 15.421336, 6.632361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536218, 15.659943, 6.657535>,  <15.526573, 16.057619, 6.699490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536218, 15.659943, 6.657535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399683, 0.105755, -0.910533,
		0.916336, -0.019969, 0.399912,
		0.024110, -0.994192, -0.104888,
		15.543450, 15.361685, 6.626068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091646, 15.924541, 6.278216>,  <15.526573, 16.057619, 6.699490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091646, 15.924541, 6.278216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.897403, 15.588612, 6.181155>,  <15.780857, 15.387053, 6.122919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.897403, 15.588612, 6.181155>,  <16.091646, 15.924541, 6.278216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897403, 15.588612, 6.181155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503802, -0.042022, -0.862797,
		0.714401, -0.541230, 0.443511,
		-0.485608, -0.839824, -0.242652,
		15.751720, 15.336664, 6.108359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142914, 15.531343, 5.517157>,  <16.091646, 15.924541, 6.278216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.142914, 15.531343, 5.517157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417034, 15.249966, 5.441764>,  <16.581507, 15.081139, 5.396528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417034, 15.249966, 5.441764>,  <16.142914, 15.531343, 5.517157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417034, 15.249966, 5.441764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166816, 0.100305, -0.980873,
		0.708896, 0.703637, -0.048606,
		0.685303, -0.703445, -0.188483,
		16.622625, 15.038932, 5.385219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688654, 15.839519, 5.078568>,  <16.142914, 15.531343, 5.517157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688654, 15.839519, 5.078568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.638691, 15.448318, 5.011740>,  <16.608713, 15.213598, 4.971643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.638691, 15.448318, 5.011740>,  <16.688654, 15.839519, 5.078568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.638691, 15.448318, 5.011740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199675, 0.189723, -0.961320,
		0.971868, -0.086718, -0.218980,
		-0.124909, -0.978001, -0.167070,
		16.601217, 15.154919, 4.961619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305676, 15.442572, 4.717513>,  <16.688654, 15.839519, 5.078568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305676, 15.442572, 4.717513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928745, 15.327675, 4.648798>,  <16.702587, 15.258737, 4.607568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928745, 15.327675, 4.648798>,  <17.305676, 15.442572, 4.717513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928745, 15.327675, 4.648798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072167, 0.326819, -0.942328,
		0.326819, -0.900379, -0.287241,
		0.942328, 0.287241, 0.171789,
		16.646048, 15.241503, 4.597261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069147, 14.968624, 4.171540>,  <17.305676, 15.442572, 4.717513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.069147, 14.968624, 4.171540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.805859, 15.266327, 4.216838>,  <16.647884, 15.444948, 4.244017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.805859, 15.266327, 4.216838>,  <17.069147, 14.968624, 4.171540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805859, 15.266327, 4.216838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129352, 0.260001, -0.956905,
		-0.741628, -0.615208, -0.267409,
		-0.658222, 0.744258, 0.113246,
		16.608393, 15.489604, 4.250812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386469, 14.816063, 3.759829>,  <17.069147, 14.968624, 4.171540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.386469, 14.816063, 3.759829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475735, 15.199986, 3.827910>,  <16.529295, 15.430339, 3.868760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475735, 15.199986, 3.827910>,  <16.386469, 14.816063, 3.759829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475735, 15.199986, 3.827910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104532, 0.150038, -0.983139,
		-0.969160, 0.237194, -0.066847,
		0.223165, 0.959806, 0.170205,
		16.542685, 15.487927, 3.878972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.930412, 15.243301, 3.278793>,  <16.386469, 14.816063, 3.759829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.930412, 15.243301, 3.278793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.264359, 15.437157, 3.383196>,  <16.464725, 15.553470, 3.445838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.264359, 15.437157, 3.383196>,  <15.930412, 15.243301, 3.278793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.264359, 15.437157, 3.383196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109545, 0.318404, -0.941604,
		-0.539444, 0.814705, 0.212735,
		0.834865, 0.484639, 0.261008,
		16.514818, 15.582548, 3.461498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.850568, 15.991064, 3.320725>,  <15.930412, 15.243301, 3.278793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.850568, 15.991064, 3.320725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233746, 15.918484, 3.231807>,  <16.463652, 15.874935, 3.178456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233746, 15.918484, 3.231807>,  <15.850568, 15.991064, 3.320725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233746, 15.918484, 3.231807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022969, 0.723714, -0.689718,
		0.286029, 0.665817, 0.689111,
		0.957945, -0.181451, -0.222297,
		16.521130, 15.864048, 3.165118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201344, 16.611740, 3.149452>,  <15.850568, 15.991064, 3.320725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201344, 16.611740, 3.149452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435841, 16.332706, 2.984675>,  <16.576540, 16.165287, 2.885809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435841, 16.332706, 2.984675>,  <16.201344, 16.611740, 3.149452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435841, 16.332706, 2.984675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083268, 0.557678, -0.825870,
		0.805844, 0.449860, 0.385021,
		0.586244, -0.697583, -0.411943,
		16.611713, 16.123432, 2.861092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720490, 16.901087, 2.787165>,  <16.201344, 16.611740, 3.149452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.720490, 16.901087, 2.787165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689175, 16.537922, 2.622451>,  <16.670385, 16.320023, 2.523622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689175, 16.537922, 2.622451>,  <16.720490, 16.901087, 2.787165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689175, 16.537922, 2.622451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210733, 0.388650, -0.896963,
		0.974404, -0.156996, 0.160901,
		-0.078285, -0.907912, -0.411786,
		16.665689, 16.265549, 2.498915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074923, 16.888691, 2.171732>,  <16.720490, 16.901087, 2.787165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074923, 16.888691, 2.171732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.837383, 16.577965, 2.087917>,  <16.694860, 16.391529, 2.037628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.837383, 16.577965, 2.087917>,  <17.074923, 16.888691, 2.171732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.837383, 16.577965, 2.087917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143076, 0.154323, -0.977606,
		0.791755, -0.610527, 0.019500,
		-0.593846, -0.776814, -0.209538,
		16.659229, 16.344921, 2.025055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469942, 16.594721, 1.828588>,  <17.074923, 16.888691, 2.171732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.469942, 16.594721, 1.828588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.085651, 16.530552, 1.738015>,  <16.855078, 16.492050, 1.683671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.085651, 16.530552, 1.738015>,  <17.469942, 16.594721, 1.828588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085651, 16.530552, 1.738015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205697, 0.136022, -0.969116,
		0.186273, -0.977630, -0.097681,
		-0.960724, -0.160427, -0.226433,
		16.797434, 16.482426, 1.670085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377405, 15.974902, 1.376197>,  <17.469942, 16.594721, 1.828588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377405, 15.974902, 1.376197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.079151, 16.233555, 1.311824>,  <16.900200, 16.388746, 1.273200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.079151, 16.233555, 1.311824>,  <17.377405, 15.974902, 1.376197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079151, 16.233555, 1.311824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137001, -0.087591, -0.986691,
		-0.652122, -0.757757, -0.023279,
		-0.745633, 0.646632, -0.160934,
		16.855461, 16.427544, 1.263544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869326, 15.605234, 0.923402>,  <17.377405, 15.974902, 1.376197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869326, 15.605234, 0.923402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.758152, 15.988243, 0.892674>,  <16.691448, 16.218048, 0.874237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.758152, 15.988243, 0.892674>,  <16.869326, 15.605234, 0.923402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.758152, 15.988243, 0.892674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127511, -0.116038, -0.985026,
		-0.952100, -0.263977, 0.154345,
		-0.277934, 0.957523, -0.076820,
		16.674772, 16.275499, 0.869628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265917, 15.624853, 0.445689>,  <16.869326, 15.605234, 0.923402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265917, 15.624853, 0.445689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.460781, 15.974174, 0.447313>,  <16.577700, 16.183767, 0.448287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.460781, 15.974174, 0.447313>,  <16.265917, 15.624853, 0.445689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.460781, 15.974174, 0.447313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077546, -0.038627, -0.996240,
		-0.869862, 0.485645, -0.086539,
		0.487162, 0.873302, 0.004060,
		16.606930, 16.236166, 0.448531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.929526, 16.202972, 0.060882>,  <16.265917, 15.624853, 0.445689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.929526, 16.202972, 0.060882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.324059, 16.267414, 0.074721>,  <16.560778, 16.306080, 0.083025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.324059, 16.267414, 0.074721>,  <15.929526, 16.202972, 0.060882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324059, 16.267414, 0.074721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018361, 0.316109, -0.948545,
		-0.163754, 0.934944, 0.314746,
		0.986330, 0.161107, 0.034598,
		16.619957, 16.315746, 0.085100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074080, 16.843462, -0.140964>,  <15.929526, 16.202972, 0.060882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.074080, 16.843462, -0.140964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393970, 16.623310, -0.236895>,  <16.585905, 16.491219, -0.294454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393970, 16.623310, -0.236895>,  <16.074080, 16.843462, -0.140964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393970, 16.623310, -0.236895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067941, 0.313940, -0.947009,
		0.596507, 0.773643, 0.213673,
		0.799727, -0.550381, -0.239829,
		16.633888, 16.458197, -0.308844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.545465, 17.239767, -0.550616>,  <16.074080, 16.843462, -0.140964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.545465, 17.239767, -0.550616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.304573, 17.492035, -0.354832>,  <16.160038, 17.643396, -0.237361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.304573, 17.492035, -0.354832>,  <16.545465, 17.239767, -0.550616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.304573, 17.492035, -0.354832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413135, 0.278419, -0.867065,
		-0.683106, -0.724389, 0.092879,
		-0.602233, 0.630669, 0.489460,
		16.123903, 17.681236, -0.207994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793644, 17.998934, -0.410916>,  <16.545465, 17.239767, -0.550616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793644, 17.998934, -0.410916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.878204, 18.025471, -0.800974>,  <16.928940, 18.041393, -1.035009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.878204, 18.025471, -0.800974>,  <16.793644, 17.998934, -0.410916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.878204, 18.025471, -0.800974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666856, -0.719619, -0.193523,
		-0.714572, 0.691193, -0.107886,
		0.211399, 0.066342, -0.975146,
		16.941624, 18.045374, -1.093518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113682, 18.126883, -0.875733>,  <16.793644, 17.998934, -0.410916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113682, 18.126883, -0.875733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.407883, 17.937962, -1.070037>,  <16.584404, 17.824608, -1.186619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.407883, 17.937962, -1.070037>,  <16.113682, 18.126883, -0.875733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407883, 17.937962, -1.070037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656423, -0.674283, -0.338306,
		-0.167755, 0.567689, -0.805969,
		0.735504, -0.472305, -0.485759,
		16.628534, 17.796270, -1.215765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038532, 18.048964, -1.581480>,  <16.113682, 18.126883, -0.875733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038532, 18.048964, -1.581480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.201302, 17.714169, -1.435128>,  <16.298964, 17.513292, -1.347317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.201302, 17.714169, -1.435128>,  <16.038532, 18.048964, -1.581480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.201302, 17.714169, -1.435128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773498, -0.528793, -0.349398,
		0.485916, -0.140828, -0.862585,
		0.406924, -0.836986, 0.365879,
		16.323380, 17.463074, -1.325364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664297, 18.336590, -2.071435>,  <16.038532, 18.048964, -1.581480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664297, 18.336590, -2.071435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891178, 18.288471, -2.397333>,  <17.027308, 18.259600, -2.592871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891178, 18.288471, -2.397333>,  <16.664297, 18.336590, -2.071435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891178, 18.288471, -2.397333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459880, 0.774416, -0.434500,
		0.683221, 0.621134, 0.383929,
		0.567204, -0.120298, -0.814744,
		17.061338, 18.252382, -2.641756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272667, 18.796469, -2.276878>,  <16.664297, 18.336590, -2.071435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.272667, 18.796469, -2.276878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.106812, 18.699455, -2.627707>,  <17.007299, 18.641247, -2.838204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.106812, 18.699455, -2.627707>,  <17.272667, 18.796469, -2.276878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.106812, 18.699455, -2.627707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167316, 0.967715, -0.188500,
		0.894472, 0.068589, -0.441831,
		-0.414638, -0.242533, -0.877071,
		16.982420, 18.626696, -2.890828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.590406, 19.178202, -2.893263>,  <17.272667, 18.796469, -2.276878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.590406, 19.178202, -2.893263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207188, 19.116329, -2.989778>,  <16.977257, 19.079205, -3.047687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207188, 19.116329, -2.989778>,  <17.590406, 19.178202, -2.893263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207188, 19.116329, -2.989778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056639, 0.927437, -0.369665,
		0.280961, -0.340490, -0.897289,
		-0.958047, -0.154683, -0.241288,
		16.919773, 19.069923, -3.062165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.511734, 19.386452, -3.602440>,  <17.590406, 19.178202, -2.893263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.511734, 19.386452, -3.602440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163704, 19.432751, -3.410786>,  <16.954885, 19.460529, -3.295794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163704, 19.432751, -3.410786>,  <17.511734, 19.386452, -3.602440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163704, 19.432751, -3.410786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090352, 0.918120, -0.385866,
		-0.484564, -0.379024, -0.788377,
		-0.870077, 0.115746, 0.479134,
		16.902681, 19.467474, -3.267046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908625, 19.630980, -4.058551>,  <17.511734, 19.386452, -3.602440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908625, 19.630980, -4.058551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.888016, 19.792938, -3.693387>,  <16.875650, 19.890114, -3.474289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.888016, 19.792938, -3.693387>,  <16.908625, 19.630980, -4.058551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888016, 19.792938, -3.693387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130731, 0.908992, -0.395782,
		-0.990078, 0.098954, -0.099766,
		-0.051523, 0.404898, 0.912909,
		16.872559, 19.914408, -3.419514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407150, 20.090899, -3.944846>,  <16.908625, 19.630980, -4.058551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.407150, 20.090899, -3.944846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685204, 20.227402, -3.691760>,  <16.852036, 20.309303, -3.539909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685204, 20.227402, -3.691760>,  <16.407150, 20.090899, -3.944846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.685204, 20.227402, -3.691760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109543, 0.920147, -0.375938,
		-0.710484, 0.192019, 0.677010,
		0.695136, 0.341260, 0.632715,
		16.893744, 20.329781, -3.501946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213203, 20.586575, -3.463882>,  <16.407150, 20.090899, -3.944846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213203, 20.586575, -3.463882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.603832, 20.642262, -3.529517>,  <16.838209, 20.675674, -3.568898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.603832, 20.642262, -3.529517>,  <16.213203, 20.586575, -3.463882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.603832, 20.642262, -3.529517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173721, 0.960054, -0.219358,
		0.126993, 0.242724, 0.961747,
		0.976572, 0.139219, -0.164087,
		16.896805, 20.684027, -3.578743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627556, 21.019421, -3.010816>,  <16.213203, 20.586575, -3.463882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.627556, 21.019421, -3.010816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760109, 21.033348, -3.387958>,  <16.839640, 21.041704, -3.614243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760109, 21.033348, -3.387958>,  <16.627556, 21.019421, -3.010816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760109, 21.033348, -3.387958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333148, 0.939266, -0.082407,
		0.882722, 0.341418, 0.322855,
		0.331382, 0.034816, -0.942854,
		16.859524, 21.043793, -3.670814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.933430, 21.615868, -3.259242>,  <16.627556, 21.019421, -3.010816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.933430, 21.615868, -3.259242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.767872, 21.531086, -3.613365>,  <16.668537, 21.480217, -3.825839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.767872, 21.531086, -3.613365>,  <16.933430, 21.615868, -3.259242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.767872, 21.531086, -3.613365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162520, 0.974098, -0.157229,
		0.895701, 0.078804, -0.437619,
		-0.413894, -0.211952, -0.885307,
		16.643703, 21.467501, -3.878957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.261127, 21.889151, -3.726790>,  <16.933430, 21.615868, -3.259242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.261127, 21.889151, -3.726790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.889816, 21.858089, -3.872267>,  <16.667030, 21.839453, -3.959553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.889816, 21.858089, -3.872267>,  <17.261127, 21.889151, -3.726790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889816, 21.858089, -3.872267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011143, 0.983326, -0.181510,
		0.371723, -0.164439, -0.913664,
		-0.928277, -0.077653, -0.363693,
		16.611334, 21.834793, -3.981375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.214596, 22.631130, -4.017650>,  <17.261127, 21.889151, -3.726790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.214596, 22.631130, -4.017650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265209, 23.027645, -4.002994>,  <17.295578, 23.265554, -3.994200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265209, 23.027645, -4.002994>,  <17.214596, 22.631130, -4.017650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.265209, 23.027645, -4.002994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965906, -0.131535, 0.222991,
		0.225867, 0.007175, -0.974132,
		0.126533, 0.991286, 0.036640,
		17.303169, 23.325031, -3.992002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716288, 23.044390, -3.490120>,  <17.214596, 22.631130, -4.017650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716288, 23.044390, -3.490120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.753597, 23.401726, -3.314281>,  <17.775982, 23.616127, -3.208777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.753597, 23.401726, -3.314281>,  <17.716288, 23.044390, -3.490120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.753597, 23.401726, -3.314281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933453, -0.075134, 0.350744,
		0.346361, -0.443058, 0.826881,
		0.093273, 0.893339, 0.439598,
		17.781580, 23.669727, -3.182402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.606890, 23.073574, -2.765852>,  <17.716288, 23.044390, -3.490120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.606890, 23.073574, -2.765852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.483990, 23.395355, -2.969207>,  <17.410250, 23.588423, -3.091220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.483990, 23.395355, -2.969207>,  <17.606890, 23.073574, -2.765852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483990, 23.395355, -2.969207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898302, -0.068851, 0.433951,
		0.314089, 0.590016, 0.743794,
		-0.307249, 0.804451, -0.508387,
		17.391815, 23.636690, -3.121723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.984259, 17.575825, 16.056906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.348335, 17.731606, 16.000515>,  <19.566782, 17.825073, 15.966681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.348335, 17.731606, 16.000515>,  <18.984259, 17.575825, 16.056906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.348335, 17.731606, 16.000515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045928, -0.243372, -0.968845,
		-0.411629, 0.888311, -0.203628,
		0.910193, 0.389453, -0.140977,
		19.621393, 17.848442, 15.958221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954142, 18.037338, 15.424494>,  <18.984259, 17.575825, 16.056906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954142, 18.037338, 15.424494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.335281, 17.924953, 15.470350>,  <19.563965, 17.857523, 15.497864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.335281, 17.924953, 15.470350>,  <18.954142, 18.037338, 15.424494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335281, 17.924953, 15.470350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056694, -0.206307, -0.976844,
		0.298108, 0.937282, -0.180650,
		0.952847, -0.280963, 0.114640,
		19.621136, 17.840664, 15.504743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.401344, 18.444675, 14.883204>,  <18.954142, 18.037338, 15.424494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.401344, 18.444675, 14.883204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.592731, 18.116352, 15.007999>,  <19.707563, 17.919357, 15.082877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.592731, 18.116352, 15.007999>,  <19.401344, 18.444675, 14.883204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592731, 18.116352, 15.007999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186257, -0.252347, -0.949542,
		0.858123, 0.512437, 0.032141,
		0.478470, -0.820810, 0.311990,
		19.736273, 17.870110, 15.101597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.963432, 18.466549, 14.421496>,  <19.401344, 18.444675, 14.883204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.963432, 18.466549, 14.421496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.937706, 18.095402, 14.568422>,  <19.922270, 17.872713, 14.656578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.937706, 18.095402, 14.568422>,  <19.963432, 18.466549, 14.421496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.937706, 18.095402, 14.568422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246973, -0.371427, -0.895012,
		0.966886, 0.033152, 0.253048,
		-0.064317, -0.927870, 0.367316,
		19.918411, 17.817041, 14.678617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.556862, 18.170219, 14.140620>,  <19.963432, 18.466549, 14.421496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.556862, 18.170219, 14.140620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.319996, 17.863354, 14.239250>,  <20.177877, 17.679234, 14.298429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.319996, 17.863354, 14.239250>,  <20.556862, 18.170219, 14.140620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.319996, 17.863354, 14.239250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120155, -0.386634, -0.914372,
		0.796809, -0.511831, 0.321130,
		-0.592164, -0.767166, 0.246575,
		20.142347, 17.633204, 14.313223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.925920, 17.578291, 14.024055>,  <20.556862, 18.170219, 14.140620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.925920, 17.578291, 14.024055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.542297, 17.465103, 14.028753>,  <20.312124, 17.397190, 14.031572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.542297, 17.465103, 14.028753>,  <20.925920, 17.578291, 14.024055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542297, 17.465103, 14.028753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115540, -0.428786, -0.895987,
		0.258575, -0.857945, 0.443925,
		-0.959057, -0.282971, 0.011747,
		20.254580, 17.380213, 14.032277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.856462, 16.901711, 13.745008>,  <20.925920, 17.578291, 14.024055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.856462, 16.901711, 13.745008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.503517, 17.084511, 13.700136>,  <20.291750, 17.194191, 13.673213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.503517, 17.084511, 13.700136>,  <20.856462, 16.901711, 13.745008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503517, 17.084511, 13.700136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069072, -0.361594, -0.929773,
		-0.465473, -0.812649, 0.350623,
		-0.882363, 0.457003, -0.112181,
		20.238808, 17.221611, 13.666482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491640, 16.383204, 13.495129>,  <20.856462, 16.901711, 13.745008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491640, 16.383204, 13.495129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.292587, 16.719982, 13.411715>,  <20.173155, 16.922049, 13.361666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.292587, 16.719982, 13.411715>,  <20.491640, 16.383204, 13.495129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292587, 16.719982, 13.411715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050791, -0.268290, -0.961998,
		-0.865899, -0.468131, 0.176273,
		-0.497634, 0.841946, -0.208535,
		20.143297, 16.972567, 13.349154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925756, 16.172251, 13.065648>,  <20.491640, 16.383204, 13.495129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.925756, 16.172251, 13.065648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.004440, 16.559761, 13.005281>,  <20.051651, 16.792267, 12.969062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.004440, 16.559761, 13.005281>,  <19.925756, 16.172251, 13.065648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004440, 16.559761, 13.005281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022829, -0.149357, -0.988520,
		-0.980196, 0.197896, -0.007263,
		0.196709, 0.968778, -0.150917,
		20.063454, 16.850395, 12.960007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490103, 16.258522, 12.566939>,  <19.925756, 16.172251, 13.065648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490103, 16.258522, 12.566939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.714024, 16.589802, 12.556279>,  <19.848375, 16.788570, 12.549883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.714024, 16.589802, 12.556279>,  <19.490103, 16.258522, 12.566939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714024, 16.589802, 12.556279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006871, -0.027520, -0.999598,
		-0.828599, 0.559758, -0.009715,
		0.559800, 0.828199, -0.026649,
		19.881964, 16.838261, 12.548285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208220, 16.715157, 12.058618>,  <19.490103, 16.258522, 12.566939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208220, 16.715157, 12.058618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.589832, 16.831223, 12.088633>,  <19.818800, 16.900862, 12.106642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.589832, 16.831223, 12.088633>,  <19.208220, 16.715157, 12.058618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.589832, 16.831223, 12.088633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079817, -0.004659, -0.996799,
		-0.288888, 0.956965, -0.027605,
		0.954030, 0.290167, 0.075036,
		19.876041, 16.918272, 12.111143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222061, 17.293882, 11.563815>,  <19.208220, 16.715157, 12.058618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222061, 17.293882, 11.563815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.593258, 17.161301, 11.631897>,  <19.815975, 17.081753, 11.672746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.593258, 17.161301, 11.631897>,  <19.222061, 17.293882, 11.563815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.593258, 17.161301, 11.631897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154149, -0.074353, -0.985246,
		0.339218, 0.940537, -0.017905,
		0.927992, -0.331453, 0.170204,
		19.871656, 17.061865, 11.682959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574570, 17.563963, 11.085296>,  <19.222061, 17.293882, 11.563815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574570, 17.563963, 11.085296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.802456, 17.255707, 11.199514>,  <19.939188, 17.070753, 11.268045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.802456, 17.255707, 11.199514>,  <19.574570, 17.563963, 11.085296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.802456, 17.255707, 11.199514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140449, -0.251039, -0.957733,
		0.809752, 0.585740, -0.034785,
		0.569715, -0.770641, 0.285546,
		19.973370, 17.024515, 11.285178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.160442, 17.511406, 10.636480>,  <19.574570, 17.563963, 11.085296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.160442, 17.511406, 10.636480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.136059, 17.147758, 10.801301>,  <20.121429, 16.929569, 10.900193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.136059, 17.147758, 10.801301>,  <20.160442, 17.511406, 10.636480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136059, 17.147758, 10.801301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088861, -0.416124, -0.904955,
		0.994177, -0.018549, 0.106152,
		-0.060958, -0.909118, 0.412053,
		20.117771, 16.875023, 10.924917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712179, 17.231819, 10.282466>,  <20.160442, 17.511406, 10.636480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712179, 17.231819, 10.282466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.469246, 16.953476, 10.435789>,  <20.323486, 16.786470, 10.527783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.469246, 16.953476, 10.435789>,  <20.712179, 17.231819, 10.282466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.469246, 16.953476, 10.435789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035561, -0.505812, -0.861911,
		0.793651, -0.509836, 0.331942,
		-0.607333, -0.695860, 0.383308,
		20.287046, 16.744719, 10.550781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.007044, 16.707933, 10.001760>,  <20.712179, 17.231819, 10.282466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.007044, 16.707933, 10.001760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.640587, 16.585045, 10.104753>,  <20.420713, 16.511311, 10.166550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.640587, 16.585045, 10.104753>,  <21.007044, 16.707933, 10.001760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640587, 16.585045, 10.104753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007002, -0.629979, -0.776581,
		0.400794, -0.713261, 0.574998,
		-0.916142, -0.307223, 0.257486,
		20.365744, 16.492878, 10.181999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.028200, 15.938772, 10.044348>,  <21.007044, 16.707933, 10.001760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.028200, 15.938772, 10.044348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.639679, 16.027626, 10.010334>,  <20.406567, 16.080938, 9.989925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.639679, 16.027626, 10.010334>,  <21.028200, 15.938772, 10.044348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.639679, 16.027626, 10.010334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055841, -0.560478, -0.826284,
		-0.231206, -0.797822, 0.556798,
		-0.971301, 0.222134, -0.085034,
		20.348289, 16.094267, 9.984823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753468, 15.285604, 9.884931>,  <21.028200, 15.938772, 10.044348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753468, 15.285604, 9.884931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.465572, 15.538040, 9.769205>,  <20.292835, 15.689503, 9.699770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.465572, 15.538040, 9.769205>,  <20.753468, 15.285604, 9.884931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465572, 15.538040, 9.769205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225304, -0.606502, -0.762492,
		-0.656672, -0.483609, 0.578709,
		-0.719736, 0.631092, -0.289314,
		20.249651, 15.727367, 9.682411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.236767, 14.873310, 9.622248>,  <20.753468, 15.285604, 9.884931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.236767, 14.873310, 9.622248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.118687, 15.224911, 9.472467>,  <20.047838, 15.435871, 9.382599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.118687, 15.224911, 9.472467>,  <20.236767, 14.873310, 9.622248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.118687, 15.224911, 9.472467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400200, -0.469635, -0.786945,
		-0.867582, -0.082450, 0.490412,
		-0.295198, 0.879002, -0.374451,
		20.030127, 15.488611, 9.360132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476357, 14.812219, 9.557898>,  <20.236767, 14.873310, 9.622248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476357, 14.812219, 9.557898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.613575, 15.100826, 9.317322>,  <19.695906, 15.273991, 9.172976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.613575, 15.100826, 9.317322>,  <19.476357, 14.812219, 9.557898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.613575, 15.100826, 9.317322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369473, -0.485033, -0.792611,
		-0.863602, 0.494118, 0.100193,
		0.343046, 0.721519, -0.601439,
		19.716490, 15.317282, 9.136890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.932131, 14.952229, 9.091450>,  <19.476357, 14.812219, 9.557898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.932131, 14.952229, 9.091450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.252502, 15.086586, 8.893183>,  <19.444725, 15.167200, 8.774222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.252502, 15.086586, 8.893183>,  <18.932131, 14.952229, 9.091450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.252502, 15.086586, 8.893183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186153, -0.647115, -0.739317,
		-0.569085, 0.684411, -0.455767,
		0.800930, 0.335892, -0.495668,
		19.492781, 15.187353, 8.744482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705383, 15.308921, 8.403014>,  <18.932131, 14.952229, 9.091450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.705383, 15.308921, 8.403014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.085011, 15.194942, 8.349242>,  <19.312788, 15.126555, 8.316978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.085011, 15.194942, 8.349242>,  <18.705383, 15.308921, 8.403014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.085011, 15.194942, 8.349242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258452, -0.460092, -0.849422,
		0.180188, 0.840905, -0.510305,
		0.949070, -0.284945, -0.134430,
		19.369732, 15.109459, 8.308913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.392111, 15.008979, 7.796451>,  <18.705383, 15.308921, 8.403014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.392111, 15.008979, 7.796451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.064774, 14.820843, 7.928569>,  <17.868372, 14.707961, 8.007840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.064774, 14.820843, 7.928569>,  <18.392111, 15.008979, 7.796451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.064774, 14.820843, 7.928569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003383, 0.570743, 0.821122,
		-0.574721, 0.673076, -0.465472,
		-0.818342, -0.470341, 0.330295,
		17.819271, 14.679740, 8.027658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888783, 15.484340, 8.157286>,  <18.392111, 15.008979, 7.796451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888783, 15.484340, 8.157286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.741825, 15.134975, 8.285144>,  <17.653650, 14.925357, 8.361858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.741825, 15.134975, 8.285144>,  <17.888783, 15.484340, 8.157286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.741825, 15.134975, 8.285144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067096, 0.367674, 0.927531,
		-0.927641, 0.319324, -0.193684,
		-0.367395, -0.873412, 0.319644,
		17.631607, 14.872952, 8.381037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276541, 15.609836, 8.588892>,  <17.888783, 15.484340, 8.157286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276541, 15.609836, 8.588892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.390785, 15.242191, 8.697453>,  <17.459332, 15.021605, 8.762589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.390785, 15.242191, 8.697453>,  <17.276541, 15.609836, 8.588892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.390785, 15.242191, 8.697453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217742, 0.213556, 0.952356,
		-0.933281, -0.331101, -0.139135,
		0.285613, -0.919112, 0.271402,
		17.476469, 14.966458, 8.778873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747597, 15.338017, 8.936719>,  <17.276541, 15.609836, 8.588892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747597, 15.338017, 8.936719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.069664, 15.132301, 9.054843>,  <17.262905, 15.008872, 9.125717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.069664, 15.132301, 9.054843>,  <16.747597, 15.338017, 8.936719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069664, 15.132301, 9.054843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236410, 0.178334, 0.955148,
		-0.543886, -0.838870, 0.022006,
		0.805169, -0.514290, 0.295311,
		17.311214, 14.978015, 9.143436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538124, 14.846542, 9.483113>,  <16.747597, 15.338017, 8.936719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538124, 14.846542, 9.483113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.932934, 14.890923, 9.529543>,  <17.169819, 14.917551, 9.557401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.932934, 14.890923, 9.529543>,  <16.538124, 14.846542, 9.483113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932934, 14.890923, 9.529543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132182, 0.150998, 0.979657,
		0.091163, -0.982288, 0.163704,
		0.987024, 0.110947, 0.116076,
		17.229040, 14.924208, 9.564365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.601320, 14.674645, 10.230133>,  <16.538124, 14.846542, 9.483113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.601320, 14.674645, 10.230133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.956547, 14.816772, 10.113455>,  <17.169683, 14.902048, 10.043447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.956547, 14.816772, 10.113455>,  <16.601320, 14.674645, 10.230133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956547, 14.816772, 10.113455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196551, 0.280128, 0.939626,
		0.415577, -0.891784, 0.178934,
		0.888067, 0.355317, -0.291695,
		17.222967, 14.923368, 10.025947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166777, 14.407101, 10.670364>,  <16.601320, 14.674645, 10.230133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.166777, 14.407101, 10.670364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.299526, 14.746937, 10.506386>,  <17.379175, 14.950838, 10.407998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.299526, 14.746937, 10.506386>,  <17.166777, 14.407101, 10.670364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.299526, 14.746937, 10.506386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204957, 0.359254, 0.910455,
		0.920789, -0.386178, -0.054903,
		0.331874, 0.849590, -0.409947,
		17.399088, 15.001814, 10.383402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813589, 14.586725, 10.883475>,  <17.166777, 14.407101, 10.670364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813589, 14.586725, 10.883475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.661716, 14.943844, 10.786514>,  <17.570593, 15.158114, 10.728337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.661716, 14.943844, 10.786514>,  <17.813589, 14.586725, 10.883475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.661716, 14.943844, 10.786514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297661, 0.365985, 0.881733,
		0.875923, 0.262623, -0.404708,
		-0.379680, 0.892796, -0.242402,
		17.547812, 15.211682, 10.713794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.232515, 15.008037, 11.167168>,  <17.813589, 14.586725, 10.883475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.232515, 15.008037, 11.167168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.892105, 15.210796, 11.112309>,  <17.687859, 15.332452, 11.079394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.892105, 15.210796, 11.112309>,  <18.232515, 15.008037, 11.167168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892105, 15.210796, 11.112309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029179, 0.306410, 0.951452,
		0.524313, 0.805709, -0.275554,
		-0.851026, 0.506899, -0.137145,
		17.636797, 15.362866, 11.071166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311153, 15.460855, 11.509788>,  <18.232515, 15.008037, 11.167168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.311153, 15.460855, 11.509788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.915508, 15.513138, 11.482744>,  <17.678122, 15.544508, 11.466518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.915508, 15.513138, 11.482744>,  <18.311153, 15.460855, 11.509788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915508, 15.513138, 11.482744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016950, 0.355181, 0.934644,
		0.146178, 0.925614, -0.349099,
		-0.989113, 0.130707, -0.067609,
		17.618774, 15.552350, 11.462461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309509, 16.107965, 11.848566>,  <18.311153, 15.460855, 11.509788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.309509, 16.107965, 11.848566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.956196, 15.923546, 11.882617>,  <17.744207, 15.812894, 11.903048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.956196, 15.923546, 11.882617>,  <18.309509, 16.107965, 11.848566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.956196, 15.923546, 11.882617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066123, 0.302259, 0.950930,
		-0.464157, 0.834310, -0.297466,
		-0.883282, -0.461050, 0.085128,
		17.691212, 15.785231, 11.908155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074827, 16.489132, 12.340510>,  <18.309509, 16.107965, 11.848566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074827, 16.489132, 12.340510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.780952, 16.218456, 12.321194>,  <17.604628, 16.056051, 12.309604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.780952, 16.218456, 12.321194>,  <18.074827, 16.489132, 12.340510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780952, 16.218456, 12.321194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369234, 0.339132, 0.865249,
		-0.569126, 0.653517, -0.499011,
		-0.734685, -0.676687, -0.048292,
		17.560547, 16.015450, 12.306706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.493792, 16.870417, 12.499473>,  <18.074827, 16.489132, 12.340510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.493792, 16.870417, 12.499473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.419331, 16.487499, 12.587956>,  <17.374653, 16.257748, 12.641047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.419331, 16.487499, 12.587956>,  <17.493792, 16.870417, 12.499473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419331, 16.487499, 12.587956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424265, 0.281393, 0.860708,
		-0.886198, 0.066372, -0.458529,
		-0.186154, -0.957295, 0.221210,
		17.363485, 16.200312, 12.654320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812153, 16.872009, 12.718977>,  <17.493792, 16.870417, 12.499473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812153, 16.872009, 12.718977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.927895, 16.508614, 12.839588>,  <16.997339, 16.290575, 12.911955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.927895, 16.508614, 12.839588>,  <16.812153, 16.872009, 12.718977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927895, 16.508614, 12.839588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406878, 0.168399, 0.897826,
		-0.866444, -0.382475, -0.320918,
		0.289354, -0.908490, 0.301529,
		17.014700, 16.236067, 12.930047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.296593, 16.446901, 13.071095>,  <16.812153, 16.872009, 12.718977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.296593, 16.446901, 13.071095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.641167, 16.312855, 13.223738>,  <16.847912, 16.232428, 13.315323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.641167, 16.312855, 13.223738>,  <16.296593, 16.446901, 13.071095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641167, 16.312855, 13.223738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401152, 0.011813, 0.915935,
		-0.311454, -0.942102, -0.124257,
		0.861437, -0.335117, 0.381606,
		16.899597, 16.212320, 13.338220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065178, 16.011835, 13.641334>,  <16.296593, 16.446901, 13.071095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065178, 16.011835, 13.641334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.450775, 16.102516, 13.696932>,  <16.682135, 16.156925, 13.730290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.450775, 16.102516, 13.696932>,  <16.065178, 16.011835, 13.641334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450775, 16.102516, 13.696932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163020, 0.090855, 0.982431,
		0.210091, -0.969717, 0.124541,
		0.963995, 0.226703, 0.138996,
		16.739973, 16.170527, 13.738630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.271469, 15.784307, 14.275393>,  <16.065178, 16.011835, 13.641334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.271469, 15.784307, 14.275393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.555008, 16.062172, 14.226433>,  <16.725130, 16.228891, 14.197056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.555008, 16.062172, 14.226433>,  <16.271469, 15.784307, 14.275393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555008, 16.062172, 14.226433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005444, 0.178915, 0.983849,
		0.705343, -0.696730, 0.130605,
		0.708845, 0.694662, -0.122403,
		16.767662, 16.270571, 14.189712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860851, 15.581948, 14.774197>,  <16.271469, 15.784307, 14.275393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860851, 15.581948, 14.774197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.886005, 15.969425, 14.678127>,  <16.901098, 16.201912, 14.620486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.886005, 15.969425, 14.678127>,  <16.860851, 15.581948, 14.774197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886005, 15.969425, 14.678127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118838, 0.231669, 0.965509,
		0.990920, -0.089256, -0.100549,
		0.062883, 0.968691, -0.240172,
		16.904871, 16.260033, 14.606075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.818604, 16.055632, 14.878152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.582973, 16.376366, 14.838049>,  <17.441595, 16.568806, 14.813987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.582973, 16.376366, 14.838049>,  <17.818604, 16.055632, 14.878152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.582973, 16.376366, 14.838049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392211, 0.392182, 0.832084,
		0.706512, 0.450839, -0.545513,
		-0.589076, 0.801834, -0.100257,
		17.406250, 16.616917, 14.807972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134941, 16.607077, 15.138165>,  <17.818604, 16.055632, 14.878152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134941, 16.607077, 15.138165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.763424, 16.754501, 15.153692>,  <17.540514, 16.842957, 15.163009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.763424, 16.754501, 15.153692>,  <18.134941, 16.607077, 15.138165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763424, 16.754501, 15.153692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254490, 0.558143, 0.789754,
		0.269407, 0.743396, -0.612194,
		-0.928792, 0.368563, 0.038819,
		17.484787, 16.865070, 15.165338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072481, 17.326233, 15.012786>,  <18.134941, 16.607077, 15.138165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072481, 17.326233, 15.012786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.723549, 17.250816, 15.193228>,  <17.514191, 17.205566, 15.301493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.723549, 17.250816, 15.193228>,  <18.072481, 17.326233, 15.012786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.723549, 17.250816, 15.193228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247074, 0.626178, 0.739497,
		-0.421897, 0.756540, -0.499650,
		-0.872329, -0.188541, 0.451104,
		17.461851, 17.194254, 15.328559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721115, 17.915447, 15.211779>,  <18.072481, 17.326233, 15.012786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721115, 17.915447, 15.211779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.542282, 17.661091, 15.463417>,  <17.434982, 17.508478, 15.614400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.542282, 17.661091, 15.463417>,  <17.721115, 17.915447, 15.211779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542282, 17.661091, 15.463417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092662, 0.666592, 0.739641,
		-0.889681, 0.388974, -0.239098,
		-0.447082, -0.635889, 0.629097,
		17.408157, 17.470324, 15.652146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463415, 18.314100, 15.675229>,  <17.721115, 17.915447, 15.211779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463415, 18.314100, 15.675229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.481472, 17.971657, 15.881157>,  <17.492306, 17.766190, 16.004713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.481472, 17.971657, 15.881157>,  <17.463415, 18.314100, 15.675229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481472, 17.971657, 15.881157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085970, 0.516762, 0.851802,
		-0.995275, 0.005808, 0.096927,
		0.045141, -0.856109, 0.514819,
		17.495014, 17.714825, 16.035603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930275, 18.197273, 16.278166>,  <17.463415, 18.314100, 15.675229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.930275, 18.197273, 16.278166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.218681, 17.931240, 16.355934>,  <17.391726, 17.771620, 16.402596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.218681, 17.931240, 16.355934>,  <16.930275, 18.197273, 16.278166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218681, 17.931240, 16.355934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001480, 0.279102, 0.960260,
		-0.692916, -0.692651, 0.200253,
		0.721017, -0.665084, 0.194419,
		17.434986, 17.731714, 16.414261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643147, 17.912142, 16.849508>,  <16.930275, 18.197273, 16.278166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.643147, 17.912142, 16.849508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.026623, 17.807335, 16.893806>,  <17.256708, 17.744452, 16.920385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.026623, 17.807335, 16.893806>,  <16.643147, 17.912142, 16.849508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026623, 17.807335, 16.893806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014803, 0.434743, 0.900433,
		-0.284073, -0.861595, 0.420662,
		0.958688, -0.262016, 0.110745,
		17.314230, 17.728729, 16.927031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705687, 17.555759, 17.508120>,  <16.643147, 17.912142, 16.849508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705687, 17.555759, 17.508120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081856, 17.660801, 17.421730>,  <17.307556, 17.723825, 17.369896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081856, 17.660801, 17.421730>,  <16.705687, 17.555759, 17.508120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081856, 17.660801, 17.421730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169595, 0.188254, 0.967367,
		0.294693, -0.946361, 0.132501,
		0.940422, 0.262605, -0.215975,
		17.363983, 17.739582, 17.356937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274866, 17.076397, 17.746824>,  <16.705687, 17.555759, 17.508120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274866, 17.076397, 17.746824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.417347, 17.449810, 17.730665>,  <17.502836, 17.673859, 17.720970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.417347, 17.449810, 17.730665>,  <17.274866, 17.076397, 17.746824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417347, 17.449810, 17.730665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093835, 0.007276, 0.995561,
		0.929685, -0.358412, -0.085006,
		0.356203, 0.933535, -0.040396,
		17.524208, 17.729870, 17.718546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677147, 17.075468, 18.307384>,  <17.274866, 17.076397, 17.746824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.677147, 17.075468, 18.307384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.643646, 17.466007, 18.227657>,  <17.623547, 17.700331, 18.179821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.643646, 17.466007, 18.227657>,  <17.677147, 17.075468, 18.307384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643646, 17.466007, 18.227657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028210, 0.202263, 0.978925,
		0.996087, 0.076364, -0.044483,
		-0.083752, 0.976349, -0.199318,
		17.618521, 17.758911, 18.167862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207811, 17.389534, 18.659294>,  <17.677147, 17.075468, 18.307384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207811, 17.389534, 18.659294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.945930, 17.684742, 18.593943>,  <17.788801, 17.861866, 18.554731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.945930, 17.684742, 18.593943>,  <18.207811, 17.389534, 18.659294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.945930, 17.684742, 18.593943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164900, 0.350385, 0.921975,
		0.737679, 0.576680, -0.351097,
		-0.654704, 0.738018, -0.163377,
		17.749519, 17.906147, 18.544930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432680, 17.924429, 19.114315>,  <18.207811, 17.389534, 18.659294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.432680, 17.924429, 19.114315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.075989, 18.048954, 18.982922>,  <17.861973, 18.123669, 18.904085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.075989, 18.048954, 18.982922>,  <18.432680, 17.924429, 19.114315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075989, 18.048954, 18.982922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150839, 0.479875, 0.864273,
		0.426691, 0.820246, -0.380960,
		-0.891730, 0.311314, -0.328483,
		17.808470, 18.142349, 18.884377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403017, 18.623554, 19.283813>,  <18.432680, 17.924429, 19.114315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403017, 18.623554, 19.283813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.023434, 18.505768, 19.238619>,  <17.795683, 18.435095, 19.211502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.023434, 18.505768, 19.238619>,  <18.403017, 18.623554, 19.283813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023434, 18.505768, 19.238619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192744, 0.257870, 0.946759,
		-0.249653, 0.920213, -0.301465,
		-0.948959, -0.294467, -0.112988,
		17.738747, 18.417427, 19.204723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086733, 19.175385, 19.483692>,  <18.403017, 18.623554, 19.283813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086733, 19.175385, 19.483692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.797588, 18.903355, 19.532631>,  <17.624102, 18.740137, 19.561995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.797588, 18.903355, 19.532631>,  <18.086733, 19.175385, 19.483692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797588, 18.903355, 19.532631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079865, 0.258104, 0.962810,
		-0.686363, 0.686206, -0.240888,
		-0.722860, -0.680076, 0.122349,
		17.580730, 18.699331, 19.569336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666029, 19.453819, 19.980707>,  <18.086733, 19.175385, 19.483692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666029, 19.453819, 19.980707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.563522, 19.067181, 19.978951>,  <17.502018, 18.835197, 19.977898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.563522, 19.067181, 19.978951>,  <17.666029, 19.453819, 19.980707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563522, 19.067181, 19.978951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162290, 0.038549, 0.985990,
		-0.952884, 0.253390, -0.166748,
		-0.256267, -0.966596, -0.004390,
		17.486643, 18.777203, 19.977633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002369, 19.353010, 20.292124>,  <17.666029, 19.453819, 19.980707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002369, 19.353010, 20.292124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.227482, 19.025841, 20.339922>,  <17.362549, 18.829540, 20.368601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.227482, 19.025841, 20.339922>,  <17.002369, 19.353010, 20.292124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227482, 19.025841, 20.339922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214571, -0.004946, 0.976696,
		-0.798271, -0.575307, -0.178286,
		0.562782, -0.817923, 0.119496,
		17.396317, 18.780464, 20.375771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636976, 19.134077, 20.791016>,  <17.002369, 19.353010, 20.292124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636976, 19.134077, 20.791016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.963043, 18.902439, 20.786121>,  <17.158684, 18.763456, 20.783184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.963043, 18.902439, 20.786121>,  <16.636976, 19.134077, 20.791016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963043, 18.902439, 20.786121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066403, 0.072446, 0.995159,
		-0.575407, -0.812034, 0.097510,
		0.815167, -0.579097, -0.012235,
		17.207594, 18.728710, 20.782452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589195, 18.562513, 21.297388>,  <16.636976, 19.134077, 20.791016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589195, 18.562513, 21.297388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.979424, 18.606750, 21.221458>,  <17.213560, 18.633293, 21.175900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.979424, 18.606750, 21.221458>,  <16.589195, 18.562513, 21.297388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979424, 18.606750, 21.221458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186574, 0.039141, 0.981661,
		0.115997, -0.993095, 0.017551,
		0.975569, 0.110595, -0.189826,
		17.272095, 18.639929, 21.164511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799583, 18.551016, 22.009033>,  <16.589195, 18.562513, 21.297388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799583, 18.551016, 22.009033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.156425, 18.638397, 21.850828>,  <17.370531, 18.690826, 21.755905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.156425, 18.638397, 21.850828>,  <16.799583, 18.551016, 22.009033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156425, 18.638397, 21.850828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352425, 0.211357, 0.911660,
		0.282753, -0.952683, 0.111563,
		0.892102, 0.218457, -0.395511,
		17.424057, 18.703934, 21.732174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293207, 18.214348, 22.374046>,  <16.799583, 18.551016, 22.009033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293207, 18.214348, 22.374046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.486618, 18.517563, 22.198967>,  <17.602665, 18.699492, 22.093920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.486618, 18.517563, 22.198967>,  <17.293207, 18.214348, 22.374046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486618, 18.517563, 22.198967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296953, 0.328330, 0.896671,
		0.823421, -0.563540, -0.066345,
		0.483526, 0.758039, -0.437699,
		17.631676, 18.744974, 22.067657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973839, 18.198986, 22.658773>,  <17.293207, 18.214348, 22.374046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973839, 18.198986, 22.658773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.894039, 18.564777, 22.517962>,  <17.846159, 18.784252, 22.433474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.894039, 18.564777, 22.517962>,  <17.973839, 18.198986, 22.658773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894039, 18.564777, 22.517962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091596, 0.375083, 0.922455,
		0.975608, 0.151784, -0.158591,
		-0.199499, 0.914480, -0.352031,
		17.834190, 18.839121, 22.412352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458923, 18.589046, 22.941118>,  <17.973839, 18.198986, 22.658773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.458923, 18.589046, 22.941118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.157784, 18.842953, 22.871504>,  <17.977100, 18.995296, 22.829735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.157784, 18.842953, 22.871504>,  <18.458923, 18.589046, 22.941118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157784, 18.842953, 22.871504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103482, 0.375280, 0.921117,
		0.650006, 0.675453, -0.348217,
		-0.752850, 0.634766, -0.174037,
		17.931929, 19.033382, 22.819292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.678350, 19.289221, 23.088051>,  <18.458923, 18.589046, 22.941118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.678350, 19.289221, 23.088051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.289986, 19.226234, 23.160198>,  <18.056967, 19.188442, 23.203487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.289986, 19.226234, 23.160198>,  <18.678350, 19.289221, 23.088051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289986, 19.226234, 23.160198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100157, 0.417134, 0.903309,
		-0.217477, 0.895100, -0.389229,
		-0.970913, -0.157465, 0.180368,
		17.998713, 19.178995, 23.214308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326023, 19.867428, 23.428087>,  <18.678350, 19.289221, 23.088051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326023, 19.867428, 23.428087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.121120, 19.564735, 23.590544>,  <17.998178, 19.383120, 23.688017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.121120, 19.564735, 23.590544>,  <18.326023, 19.867428, 23.428087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121120, 19.564735, 23.590544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308325, 0.279331, 0.909346,
		-0.801578, 0.591042, 0.090230,
		-0.512258, -0.756732, 0.406139,
		17.967443, 19.337715, 23.712385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.891958, 20.492586, 23.405331>,  <18.326023, 19.867428, 23.428087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.891958, 20.492586, 23.405331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.262115, 20.643303, 23.388954>,  <19.484209, 20.733732, 23.379129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.262115, 20.643303, 23.388954>,  <18.891958, 20.492586, 23.405331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262115, 20.643303, 23.388954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054182, 0.024611, -0.998228,
		-0.375115, 0.925971, 0.043191,
		0.925393, 0.376790, -0.040939,
		19.539734, 20.756340, 23.376673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.014530, 21.079105, 22.950361>,  <18.891958, 20.492586, 23.405331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.014530, 21.079105, 22.950361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.376308, 20.910000, 22.973177>,  <19.593374, 20.808537, 22.986866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.376308, 20.910000, 22.973177>,  <19.014530, 21.079105, 22.950361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376308, 20.910000, 22.973177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070435, 0.016122, -0.997386,
		0.420738, 0.906097, 0.044358,
		0.904444, -0.422762, 0.057038,
		19.647642, 20.783171, 22.990288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.442213, 21.519400, 22.402294>,  <19.014530, 21.079105, 22.950361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.442213, 21.519400, 22.402294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.597439, 21.155201, 22.459429>,  <19.690575, 20.936682, 22.493710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.597439, 21.155201, 22.459429>,  <19.442213, 21.519400, 22.402294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.597439, 21.155201, 22.459429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171283, -0.081035, -0.981884,
		0.905576, 0.405499, 0.124506,
		0.388064, -0.910496, 0.142839,
		19.713858, 20.882051, 22.502281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.001457, 21.636415, 21.946741>,  <19.442213, 21.519400, 22.402294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.001457, 21.636415, 21.946741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.994915, 21.242653, 22.016794>,  <19.990990, 21.006395, 22.058826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.994915, 21.242653, 22.016794>,  <20.001457, 21.636415, 21.946741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994915, 21.242653, 22.016794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114296, -0.175851, -0.977759,
		0.993312, 0.004027, 0.115390,
		-0.016354, -0.984409, 0.175135,
		19.990009, 20.947330, 22.069334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.458681, 21.431135, 21.459970>,  <20.001457, 21.636415, 21.946741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.458681, 21.431135, 21.459970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.291504, 21.074005, 21.527126>,  <20.191198, 20.859728, 21.567419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.291504, 21.074005, 21.527126>,  <20.458681, 21.431135, 21.459970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291504, 21.074005, 21.527126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091089, -0.225056, -0.970079,
		0.903895, -0.390144, 0.175387,
		-0.417943, -0.892825, 0.167889,
		20.166121, 20.806158, 21.577494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996918, 20.835024, 21.294460>,  <20.458681, 21.431135, 21.459970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996918, 20.835024, 21.294460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.614746, 20.720669, 21.265013>,  <20.385443, 20.652056, 21.247345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.614746, 20.720669, 21.265013>,  <20.996918, 20.835024, 21.294460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.614746, 20.720669, 21.265013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134308, -0.198876, -0.970778,
		0.262893, -0.937399, 0.228410,
		-0.955431, -0.285888, -0.073617,
		20.328117, 20.634903, 21.242928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946188, 20.212502, 20.925135>,  <20.996918, 20.835024, 21.294460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946188, 20.212502, 20.925135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.570309, 20.338371, 20.871553>,  <20.344780, 20.413893, 20.839405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.570309, 20.338371, 20.871553>,  <20.946188, 20.212502, 20.925135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.570309, 20.338371, 20.871553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024796, -0.327952, -0.944369,
		-0.341107, -0.890742, 0.300373,
		-0.939697, 0.314683, -0.133954,
		20.288399, 20.432774, 20.831367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787310, 19.745975, 20.530796>,  <20.946188, 20.212502, 20.925135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787310, 19.745975, 20.530796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.464962, 19.980400, 20.497076>,  <20.271553, 20.121056, 20.476843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.464962, 19.980400, 20.497076>,  <20.787310, 19.745975, 20.530796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.464962, 19.980400, 20.497076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230640, -0.441846, -0.866936,
		-0.545329, -0.679192, 0.491239,
		-0.805867, 0.586064, -0.084303,
		20.223202, 20.156219, 20.471785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096199, 19.294050, 20.347486>,  <20.787310, 19.745975, 20.530796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096199, 19.294050, 20.347486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.031208, 19.672165, 20.234324>,  <19.992214, 19.899033, 20.166426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.031208, 19.672165, 20.234324>,  <20.096199, 19.294050, 20.347486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031208, 19.672165, 20.234324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303028, -0.320666, -0.897411,
		-0.939029, -0.060079, 0.338549,
		-0.162477, 0.945285, -0.282909,
		19.982466, 19.955750, 20.149450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388344, 19.355057, 20.042727>,  <20.096199, 19.294050, 20.347486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388344, 19.355057, 20.042727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.612415, 19.652145, 19.895996>,  <19.746859, 19.830399, 19.807957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.612415, 19.652145, 19.895996>,  <19.388344, 19.355057, 20.042727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.612415, 19.652145, 19.895996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244568, -0.274804, -0.929876,
		-0.791445, 0.610613, 0.027706,
		0.560180, 0.742721, -0.366828,
		19.780470, 19.874962, 19.785948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.003107, 19.582968, 19.472616>,  <19.388344, 19.355057, 20.042727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.003107, 19.582968, 19.472616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.371193, 19.725178, 19.407122>,  <19.592045, 19.810505, 19.367825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.371193, 19.725178, 19.407122>,  <19.003107, 19.582968, 19.472616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.371193, 19.725178, 19.407122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116530, -0.150508, -0.981717,
		-0.373670, 0.922468, -0.097070,
		0.920213, 0.355527, -0.163736,
		19.647257, 19.831837, 19.358002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.920866, 20.111332, 18.943911>,  <19.003107, 19.582968, 19.472616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.920866, 20.111332, 18.943911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.296310, 19.973354, 18.945749>,  <19.521578, 19.890568, 18.946852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.296310, 19.973354, 18.945749>,  <18.920866, 20.111332, 18.943911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.296310, 19.973354, 18.945749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063121, -0.184824, -0.980743,
		0.339151, 0.920246, -0.195251,
		0.938612, -0.344944, 0.004597,
		19.577894, 19.869871, 18.947128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.305815, 20.276930, 18.280960>,  <18.920866, 20.111332, 18.943911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.305815, 20.276930, 18.280960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.518013, 19.961708, 18.405891>,  <19.645332, 19.772575, 18.480850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.518013, 19.961708, 18.405891>,  <19.305815, 20.276930, 18.280960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518013, 19.961708, 18.405891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118676, -0.433861, -0.893130,
		0.839339, 0.436735, -0.323684,
		0.530495, -0.788053, 0.312327,
		19.677162, 19.725292, 18.499590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710176, 20.075129, 17.680510>,  <19.305815, 20.276930, 18.280960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.710176, 20.075129, 17.680510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.740582, 19.751358, 17.913422>,  <19.758825, 19.557096, 18.053169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.740582, 19.751358, 17.913422>,  <19.710176, 20.075129, 17.680510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.740582, 19.751358, 17.913422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135481, -0.570170, -0.810279,
		0.987860, 0.140481, 0.066320,
		0.076015, -0.809427, 0.582280,
		19.763386, 19.508530, 18.088106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276995, 19.752159, 17.343853>,  <19.710176, 20.075129, 17.680510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276995, 19.752159, 17.343853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.127232, 19.471909, 17.586815>,  <20.037374, 19.303759, 17.732592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.127232, 19.471909, 17.586815>,  <20.276995, 19.752159, 17.343853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.127232, 19.471909, 17.586815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157847, -0.693648, -0.702806,
		0.913730, -0.167259, 0.370299,
		-0.374408, -0.700626, 0.607406,
		20.014910, 19.261721, 17.769037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609102, 19.137392, 17.264555>,  <20.276995, 19.752159, 17.343853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609102, 19.137392, 17.264555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.260418, 19.022671, 17.423485>,  <20.051208, 18.953838, 17.518843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.260418, 19.022671, 17.423485>,  <20.609102, 19.137392, 17.264555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.260418, 19.022671, 17.423485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018613, -0.829620, -0.558018,
		0.489670, -0.479033, 0.728526,
		-0.871709, -0.286805, 0.397324,
		19.998905, 18.936630, 17.542683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.723351, 18.502487, 17.542580>,  <20.609102, 19.137392, 17.264555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.723351, 18.502487, 17.542580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.327831, 18.528454, 17.488825>,  <20.090519, 18.544033, 17.456572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.327831, 18.528454, 17.488825>,  <20.723351, 18.502487, 17.542580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327831, 18.528454, 17.488825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044943, -0.729138, -0.682889,
		-0.142316, -0.681281, 0.718055,
		-0.988801, 0.064915, -0.134386,
		20.031191, 18.547928, 17.448509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483816, 17.806845, 17.501476>,  <20.723351, 18.502487, 17.542580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483816, 17.806845, 17.501476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.193996, 18.032379, 17.342924>,  <20.020103, 18.167700, 17.247793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.193996, 18.032379, 17.342924>,  <20.483816, 17.806845, 17.501476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193996, 18.032379, 17.342924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025069, -0.553172, -0.832690,
		-0.688765, -0.613263, 0.386667,
		-0.724551, 0.563834, -0.396379,
		19.976631, 18.201529, 17.224010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994390, 17.363323, 17.164471>,  <20.483816, 17.806845, 17.501476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994390, 17.363323, 17.164471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.887325, 17.713707, 17.003944>,  <19.823086, 17.923937, 16.907629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.887325, 17.713707, 17.003944>,  <19.994390, 17.363323, 17.164471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887325, 17.713707, 17.003944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091449, -0.437727, -0.894445,
		-0.959163, -0.202710, 0.197269,
		-0.267663, 0.875959, -0.401314,
		19.807026, 17.976494, 16.883551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371532, 17.273209, 16.839067>,  <19.994390, 17.363323, 17.164471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371532, 17.273209, 16.839067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.569389, 17.559109, 16.641294>,  <19.688103, 17.730648, 16.522631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.569389, 17.559109, 16.641294>,  <19.371532, 17.273209, 16.839067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.569389, 17.559109, 16.641294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326077, -0.374716, -0.867907,
		-0.805608, 0.590525, 0.047713,
		0.494641, 0.714751, -0.494431,
		19.717781, 17.773535, 16.492966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.751425, 14.989084, 12.432955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.962799, 15.324730, 12.381352>,  <17.089624, 15.526117, 12.350390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.962799, 15.324730, 12.381352>,  <16.751425, 14.989084, 12.432955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962799, 15.324730, 12.381352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022885, -0.165980, -0.985864,
		-0.848665, 0.518013, -0.106913,
		0.528436, 0.839114, -0.129007,
		17.121330, 15.576465, 12.342650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409660, 15.477057, 12.012016>,  <16.751425, 14.989084, 12.432955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409660, 15.477057, 12.012016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.798016, 15.551556, 11.951765>,  <17.031029, 15.596255, 11.915614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.798016, 15.551556, 11.951765>,  <16.409660, 15.477057, 12.012016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798016, 15.551556, 11.951765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119923, -0.166410, -0.978737,
		-0.207354, 0.968307, -0.139230,
		0.970888, 0.186248, -0.150628,
		17.089281, 15.607430, 11.906577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382513, 15.776070, 11.368129>,  <16.409660, 15.477057, 12.012016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382513, 15.776070, 11.368129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.779072, 15.728191, 11.389311>,  <17.017008, 15.699465, 11.402020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.779072, 15.728191, 11.389311>,  <16.382513, 15.776070, 11.368129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.779072, 15.728191, 11.389311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034999, -0.147430, -0.988453,
		0.126121, 0.981803, -0.141973,
		0.991397, -0.119696, 0.052956,
		17.076490, 15.692283, 11.405198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.615868, 16.048872, 10.805712>,  <16.382513, 15.776070, 11.368129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.615868, 16.048872, 10.805712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.935970, 15.832790, 10.909842>,  <17.128031, 15.703141, 10.972322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.935970, 15.832790, 10.909842>,  <16.615868, 16.048872, 10.805712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935970, 15.832790, 10.909842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129144, -0.268682, -0.954532,
		0.585588, 0.797489, -0.145250,
		0.800255, -0.540205, 0.260328,
		17.176046, 15.670729, 10.987941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088612, 16.368977, 10.230910>,  <16.615868, 16.048872, 10.805712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.088612, 16.368977, 10.230910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.216530, 16.019596, 10.377777>,  <17.293282, 15.809968, 10.465898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.216530, 16.019596, 10.377777>,  <17.088612, 16.368977, 10.230910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216530, 16.019596, 10.377777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031020, -0.396962, -0.917311,
		0.946978, 0.281965, -0.154041,
		0.319798, -0.873451, 0.367168,
		17.312469, 15.757561, 10.487927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807858, 16.153255, 9.920014>,  <17.088612, 16.368977, 10.230910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807858, 16.153255, 9.920014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.679077, 15.796169, 10.046133>,  <17.601809, 15.581918, 10.121804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.679077, 15.796169, 10.046133>,  <17.807858, 16.153255, 9.920014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679077, 15.796169, 10.046133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252665, -0.401965, -0.880105,
		0.912419, -0.203685, 0.354969,
		-0.321949, -0.892713, 0.315296,
		17.582493, 15.528356, 10.140722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242414, 15.680405, 9.655438>,  <17.807858, 16.153255, 9.920014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.242414, 15.680405, 9.655438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.946476, 15.445152, 9.786115>,  <17.768913, 15.304001, 9.864521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.946476, 15.445152, 9.786115>,  <18.242414, 15.680405, 9.655438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.946476, 15.445152, 9.786115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232276, -0.679026, -0.696399,
		0.631406, -0.439346, 0.638984,
		-0.739847, -0.588132, 0.326691,
		17.724522, 15.268713, 9.884122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.559156, 14.922887, 9.708165>,  <18.242414, 15.680405, 9.655438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.559156, 14.922887, 9.708165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.163357, 14.940735, 9.653174>,  <17.925877, 14.951444, 9.620180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.163357, 14.940735, 9.653174>,  <18.559156, 14.922887, 9.708165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.163357, 14.940735, 9.653174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103737, -0.443079, -0.890460,
		-0.100644, -0.895372, 0.433798,
		-0.989500, 0.044619, -0.137476,
		17.866507, 14.954121, 9.611932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400328, 14.287534, 9.376868>,  <18.559156, 14.922887, 9.708165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400328, 14.287534, 9.376868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.072781, 14.509476, 9.318090>,  <17.876253, 14.642641, 9.282824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.072781, 14.509476, 9.318090>,  <18.400328, 14.287534, 9.376868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072781, 14.509476, 9.318090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011984, -0.272479, -0.962087,
		-0.573857, -0.786061, 0.229774,
		-0.818867, 0.554855, -0.146944,
		17.827120, 14.675932, 9.274008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.853857, 13.741655, 9.063943>,  <18.400328, 14.287534, 9.376868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.853857, 13.741655, 9.063943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.735767, 14.115337, 8.983840>,  <17.664913, 14.339547, 8.935778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.735767, 14.115337, 8.983840>,  <17.853857, 13.741655, 9.063943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.735767, 14.115337, 8.983840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113207, -0.242327, -0.963567,
		-0.948698, -0.261796, 0.177299,
		-0.295222, 0.934205, -0.200258,
		17.647202, 14.395599, 8.923762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189844, 13.764083, 8.866385>,  <17.853857, 13.741655, 9.063943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.189844, 13.764083, 8.866385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.334118, 14.102257, 8.708829>,  <17.420681, 14.305161, 8.614295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.334118, 14.102257, 8.708829>,  <17.189844, 13.764083, 8.866385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.334118, 14.102257, 8.708829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240541, -0.323712, -0.915069,
		-0.901137, 0.424797, 0.086604,
		0.360684, 0.845434, -0.393889,
		17.442324, 14.355887, 8.590662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807278, 13.835485, 8.282903>,  <17.189844, 13.764083, 8.866385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807278, 13.835485, 8.282903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.110405, 14.090096, 8.225566>,  <17.292282, 14.242862, 8.191164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.110405, 14.090096, 8.225566>,  <16.807278, 13.835485, 8.282903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110405, 14.090096, 8.225566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099045, -0.104920, -0.989536,
		-0.644905, 0.764085, -0.016465,
		0.757817, 0.636526, -0.143342,
		17.337749, 14.281054, 8.182563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626291, 14.468253, 7.852546>,  <16.807278, 13.835485, 8.282903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.626291, 14.468253, 7.852546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.012131, 14.373703, 7.805763>,  <17.243633, 14.316973, 7.777694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.012131, 14.373703, 7.805763>,  <16.626291, 14.468253, 7.852546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.012131, 14.373703, 7.805763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163761, -0.189226, -0.968182,
		0.206722, 0.953058, -0.221236,
		0.964597, -0.236375, -0.116957,
		17.301510, 14.302791, 7.770676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068781, 14.837767, 7.312482>,  <16.626291, 14.468253, 7.852546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068781, 14.837767, 7.312482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.108173, 14.446270, 7.384447>,  <17.131809, 14.211372, 7.427626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.108173, 14.446270, 7.384447>,  <17.068781, 14.837767, 7.312482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.108173, 14.446270, 7.384447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064342, -0.186676, -0.980312,
		0.993057, 0.084965, -0.081358,
		0.098480, -0.978741, 0.179913,
		17.137718, 14.152648, 7.438421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693022, 15.512808, 6.953628>,  <17.068781, 14.837767, 7.312482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693022, 15.512808, 6.953628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.302662, 15.599003, 6.967383>,  <16.068445, 15.650720, 6.975636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.302662, 15.599003, 6.967383>,  <16.693022, 15.512808, 6.953628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.302662, 15.599003, 6.967383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087284, 0.241043, 0.966582,
		0.199997, 0.946289, -0.254042,
		-0.975901, 0.215487, 0.034388,
		16.009892, 15.663649, 6.977700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573303, 16.095409, 7.371559>,  <16.693022, 15.512808, 6.953628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573303, 16.095409, 7.371559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.202389, 15.946217, 7.384353>,  <15.979839, 15.856701, 7.392029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.202389, 15.946217, 7.384353>,  <16.573303, 16.095409, 7.371559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202389, 15.946217, 7.384353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079783, 0.280379, 0.956568,
		-0.365749, 0.884462, -0.289750,
		-0.927288, -0.372981, 0.031983,
		15.924203, 15.834322, 7.393948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087622, 16.691927, 7.496326>,  <16.573303, 16.095409, 7.371559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.087622, 16.691927, 7.496326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.866780, 16.374672, 7.599177>,  <15.734275, 16.184319, 7.660888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.866780, 16.374672, 7.599177>,  <16.087622, 16.691927, 7.496326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866780, 16.374672, 7.599177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287152, 0.470401, 0.834426,
		-0.782767, 0.386855, -0.487461,
		-0.552104, -0.793137, 0.257128,
		15.701149, 16.136730, 7.676316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359363, 16.893543, 7.653342>,  <16.087622, 16.691927, 7.496326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359363, 16.893543, 7.653342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.420331, 16.563717, 7.871283>,  <15.456912, 16.365822, 8.002047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.420331, 16.563717, 7.871283>,  <15.359363, 16.893543, 7.653342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420331, 16.563717, 7.871283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428120, 0.441797, 0.788371,
		-0.890776, -0.353425, -0.285674,
		0.152420, -0.824564, 0.544851,
		15.466057, 16.316347, 8.034738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.808653, 16.860785, 8.159898>,  <15.359363, 16.893543, 7.653342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.808653, 16.860785, 8.159898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.037807, 16.588348, 8.342293>,  <15.175299, 16.424887, 8.451730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.037807, 16.588348, 8.342293>,  <14.808653, 16.860785, 8.159898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.037807, 16.588348, 8.342293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302586, 0.341287, 0.889924,
		-0.761739, -0.647798, -0.010570,
		0.572883, -0.681088, 0.455986,
		15.209672, 16.384022, 8.479089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386296, 16.551521, 8.674240>,  <14.808653, 16.860785, 8.159898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386296, 16.551521, 8.674240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.750564, 16.443073, 8.798932>,  <14.969124, 16.378004, 8.873748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.750564, 16.443073, 8.798932>,  <14.386296, 16.551521, 8.674240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750564, 16.443073, 8.798932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279297, 0.151980, 0.948101,
		-0.304425, -0.950472, 0.062681,
		0.910669, -0.271119, 0.311731,
		15.023765, 16.361738, 8.892451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.283944, 16.079033, 9.141662>,  <14.386296, 16.551521, 8.674240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.283944, 16.079033, 9.141662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.651994, 16.218906, 9.212194>,  <14.872824, 16.302832, 9.254515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.651994, 16.218906, 9.212194>,  <14.283944, 16.079033, 9.141662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.651994, 16.218906, 9.212194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289146, 0.302909, 0.908097,
		0.264125, -0.886551, 0.379822,
		0.920126, 0.349675, 0.176337,
		14.928031, 16.323812, 9.265094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.389524, 16.027948, 9.799459>,  <14.283944, 16.079033, 9.141662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.389524, 16.027948, 9.799459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.709065, 16.265480, 9.761089>,  <14.900790, 16.407999, 9.738068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.709065, 16.265480, 9.761089>,  <14.389524, 16.027948, 9.799459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709065, 16.265480, 9.761089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050288, 0.224836, 0.973098,
		0.599421, -0.772538, 0.209474,
		0.798853, 0.593830, -0.095922,
		14.948721, 16.443628, 9.732313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789154, 15.889109, 10.404197>,  <14.389524, 16.027948, 9.799459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789154, 15.889109, 10.404197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.883492, 16.250095, 10.260013>,  <14.940096, 16.466686, 10.173502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.883492, 16.250095, 10.260013>,  <14.789154, 15.889109, 10.404197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883492, 16.250095, 10.260013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032557, 0.378053, 0.925211,
		0.971245, -0.206472, 0.118544,
		0.235847, 0.902466, -0.360460,
		14.954247, 16.520836, 10.151875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360781, 16.122503, 10.795747>,  <14.789154, 15.889109, 10.404197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360781, 16.122503, 10.795747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.205806, 16.463879, 10.656301>,  <15.112821, 16.668705, 10.572633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.205806, 16.463879, 10.656301>,  <15.360781, 16.122503, 10.795747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205806, 16.463879, 10.656301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145335, 0.429965, 0.891072,
		0.910369, 0.294568, -0.290618,
		-0.387436, 0.853440, -0.348615,
		15.089575, 16.719912, 10.551716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900229, 16.711855, 11.009039>,  <15.360781, 16.122503, 10.795747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900229, 16.711855, 11.009039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.540601, 16.883152, 10.972642>,  <15.324823, 16.985929, 10.950804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.540601, 16.883152, 10.972642>,  <15.900229, 16.711855, 11.009039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.540601, 16.883152, 10.972642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210259, 0.604661, 0.768229,
		0.384007, 0.671561, -0.633675,
		-0.899072, 0.428241, -0.090992,
		15.270879, 17.011623, 10.945344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.032217, 17.377193, 11.214603>,  <15.900229, 16.711855, 11.009039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.032217, 17.377193, 11.214603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.633586, 17.361046, 11.243460>,  <15.394407, 17.351358, 11.260774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.633586, 17.361046, 11.243460>,  <16.032217, 17.377193, 11.214603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633586, 17.361046, 11.243460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030785, 0.628679, 0.777055,
		-0.076722, 0.776616, -0.625285,
		-0.996577, -0.040368, 0.072141,
		15.334613, 17.348936, 11.265102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834049, 18.104755, 11.236430>,  <16.032217, 17.377193, 11.214603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834049, 18.104755, 11.236430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.551370, 17.879490, 11.407742>,  <15.381762, 17.744331, 11.510529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.551370, 17.879490, 11.407742>,  <15.834049, 18.104755, 11.236430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551370, 17.879490, 11.407742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002112, 0.603647, 0.797249,
		-0.707511, 0.564320, -0.425408,
		-0.706699, -0.563164, 0.428279,
		15.339360, 17.710541, 11.536225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377521, 18.573425, 11.498937>,  <15.834049, 18.104755, 11.236430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377521, 18.573425, 11.498937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.322522, 18.231853, 11.699696>,  <15.289523, 18.026911, 11.820150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.322522, 18.231853, 11.699696>,  <15.377521, 18.573425, 11.498937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322522, 18.231853, 11.699696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125875, 0.517665, 0.846273,
		-0.982471, 0.053184, -0.178665,
		-0.137497, -0.853929, 0.501897,
		15.281273, 17.975676, 11.850265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938391, 19.183390, 11.516374>,  <15.377521, 18.573425, 11.498937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.938391, 19.183390, 11.516374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.238442, 19.447868, 11.520810>,  <15.418473, 19.606556, 11.523472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.238442, 19.447868, 11.520810>,  <14.938391, 19.183390, 11.516374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.238442, 19.447868, 11.520810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270472, -0.291458, -0.917549,
		-0.603449, 0.691281, -0.397467,
		0.750130, 0.661198, 0.011092,
		15.463481, 19.646227, 11.524137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.993066, 19.620291, 10.898623>,  <14.938391, 19.183390, 11.516374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.993066, 19.620291, 10.898623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.371938, 19.635418, 11.026010>,  <15.599260, 19.644493, 11.102442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.371938, 19.635418, 11.026010>,  <14.993066, 19.620291, 10.898623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371938, 19.635418, 11.026010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315509, -0.287898, -0.904195,
		0.057492, 0.956914, -0.284622,
		0.947179, 0.037817, 0.318467,
		15.656092, 19.646763, 11.121550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364627, 19.946753, 10.363576>,  <14.993066, 19.620291, 10.898623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364627, 19.946753, 10.363576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.653367, 19.763348, 10.570919>,  <15.826612, 19.653305, 10.695325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.653367, 19.763348, 10.570919>,  <15.364627, 19.946753, 10.363576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653367, 19.763348, 10.570919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449189, -0.259375, -0.854959,
		0.526460, 0.849994, 0.018729,
		0.721851, -0.458514, 0.518358,
		15.869923, 19.625793, 10.726426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962156, 20.163403, 10.112810>,  <15.364627, 19.946753, 10.363576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962156, 20.163403, 10.112810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.093266, 19.848171, 10.321233>,  <16.171930, 19.659033, 10.446286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.093266, 19.848171, 10.321233>,  <15.962156, 20.163403, 10.112810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093266, 19.848171, 10.321233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568926, -0.275662, -0.774812,
		0.754247, 0.550405, 0.358002,
		0.327773, -0.788076, 0.521057,
		16.191597, 19.611748, 10.477550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772505, 20.146572, 10.006504>,  <15.962156, 20.163403, 10.112810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772505, 20.146572, 10.006504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.630337, 19.782776, 10.092765>,  <16.545036, 19.564499, 10.144521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.630337, 19.782776, 10.092765>,  <16.772505, 20.146572, 10.006504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630337, 19.782776, 10.092765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561013, -0.392105, -0.729053,
		0.747625, -0.138136, 0.649597,
		-0.355418, -0.909490, 0.215651,
		16.523712, 19.509930, 10.157460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323133, 19.722670, 9.929164>,  <16.772505, 20.146572, 10.006504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323133, 19.722670, 9.929164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.994396, 19.495354, 9.913050>,  <16.797153, 19.358965, 9.903381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.994396, 19.495354, 9.913050>,  <17.323133, 19.722670, 9.929164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.994396, 19.495354, 9.913050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338485, -0.430184, -0.836881,
		0.458260, -0.701420, 0.545901,
		-0.821842, -0.568289, -0.040284,
		16.747843, 19.324867, 9.900965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.654114, 19.120352, 9.712179>,  <17.323133, 19.722670, 9.929164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.654114, 19.120352, 9.712179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.261497, 19.081257, 9.646424>,  <17.025927, 19.057800, 9.606972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.261497, 19.081257, 9.646424>,  <17.654114, 19.120352, 9.712179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.261497, 19.081257, 9.646424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190088, -0.404045, -0.894771,
		0.021035, -0.909503, 0.415166,
		-0.981541, -0.097739, -0.164387,
		16.967035, 19.051935, 9.597108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651184, 18.382795, 9.399363>,  <17.654114, 19.120352, 9.712179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651184, 18.382795, 9.399363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.287678, 18.523861, 9.310123>,  <17.069574, 18.608501, 9.256579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.287678, 18.523861, 9.310123>,  <17.651184, 18.382795, 9.399363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287678, 18.523861, 9.310123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087598, -0.361491, -0.928251,
		-0.408013, -0.863105, 0.297617,
		-0.908764, 0.352668, -0.223100,
		17.015049, 18.629662, 9.243194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191179, 17.873871, 8.984706>,  <17.651184, 18.382795, 9.399363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191179, 17.873871, 8.984706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.050903, 18.234291, 8.882628>,  <16.966738, 18.450542, 8.821382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.050903, 18.234291, 8.882628>,  <17.191179, 17.873871, 8.984706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050903, 18.234291, 8.882628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001528, -0.271950, -0.962310,
		-0.936491, -0.337861, 0.093993,
		-0.350688, 0.901051, -0.255195,
		16.945696, 18.504606, 8.806070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584793, 17.732084, 8.547816>,  <17.191179, 17.873871, 8.984706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.584793, 17.732084, 8.547816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.715324, 18.104980, 8.485280>,  <16.793642, 18.328718, 8.447759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.715324, 18.104980, 8.485280>,  <16.584793, 17.732084, 8.547816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715324, 18.104980, 8.485280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058984, -0.185154, -0.980938,
		-0.943415, 0.310884, -0.115408,
		0.326326, 0.932239, -0.156340,
		16.813223, 18.384651, 8.438378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256432, 17.801907, 8.002751>,  <16.584793, 17.732084, 8.547816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256432, 17.801907, 8.002751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.544861, 18.078987, 7.996824>,  <16.717918, 18.245235, 7.993268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.544861, 18.078987, 7.996824>,  <16.256432, 17.801907, 8.002751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544861, 18.078987, 7.996824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153634, -0.180708, -0.971463,
		-0.675612, 0.698219, -0.236726,
		0.721072, 0.692701, -0.014818,
		16.761183, 18.286798, 7.992379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160336, 18.231556, 7.473275>,  <16.256432, 17.801907, 8.002751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.160336, 18.231556, 7.473275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.547672, 18.297813, 7.547974>,  <16.780075, 18.337568, 7.592793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.547672, 18.297813, 7.547974>,  <16.160336, 18.231556, 7.473275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547672, 18.297813, 7.547974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241892, -0.437888, -0.865877,
		-0.061653, 0.883638, -0.464094,
		0.968343, 0.165644, 0.186747,
		16.838175, 18.347507, 7.603998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.301605, 21.410963, 14.276200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690862, 21.424576, 14.367271>,  <13.924416, 21.432743, 14.421914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690862, 21.424576, 14.367271>,  <13.301605, 21.410963, 14.276200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690862, 21.424576, 14.367271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229115, -0.239411, -0.943498,
		0.022401, 0.970322, -0.240778,
		0.973142, 0.034030, 0.227678,
		13.982804, 21.434786, 14.435575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513211, 21.728493, 13.598731>,  <13.301605, 21.410963, 14.276200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513211, 21.728493, 13.598731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816628, 21.535141, 13.773525>,  <13.998679, 21.419130, 13.878402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816628, 21.535141, 13.773525>,  <13.513211, 21.728493, 13.598731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816628, 21.535141, 13.773525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373901, -0.226355, -0.899423,
		0.533676, 0.845641, 0.009035,
		0.758544, -0.483379, 0.436986,
		14.044191, 21.390127, 13.904621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.013851, 21.775541, 13.140501>,  <13.513211, 21.728493, 13.598731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.013851, 21.775541, 13.140501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171592, 21.503613, 13.387831>,  <14.266236, 21.340454, 13.536229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171592, 21.503613, 13.387831>,  <14.013851, 21.775541, 13.140501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.171592, 21.503613, 13.387831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577494, -0.340064, -0.742198,
		0.714834, 0.649766, 0.258489,
		0.394352, -0.679824, 0.618325,
		14.289898, 21.299665, 13.573328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722439, 21.862091, 13.161778>,  <14.013851, 21.775541, 13.140501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.722439, 21.862091, 13.161778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.660457, 21.477962, 13.254534>,  <14.623267, 21.247486, 13.310186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.660457, 21.477962, 13.254534>,  <14.722439, 21.862091, 13.161778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.660457, 21.477962, 13.254534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680660, -0.273901, -0.679471,
		0.716025, 0.052548, 0.696095,
		-0.154956, -0.960321, 0.231887,
		14.613970, 21.189867, 13.324100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.376535, 21.526150, 13.217137>,  <14.722439, 21.862091, 13.161778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.376535, 21.526150, 13.217137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125546, 21.219585, 13.162159>,  <14.974953, 21.035646, 13.129172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125546, 21.219585, 13.162159>,  <15.376535, 21.526150, 13.217137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125546, 21.219585, 13.162159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623693, -0.389042, -0.677977,
		0.466138, -0.511136, 0.722119,
		-0.627473, -0.766412, -0.137445,
		14.937304, 20.989662, 13.120926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841446, 20.931482, 13.073206>,  <15.376535, 21.526150, 13.217137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841446, 20.931482, 13.073206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480714, 20.817642, 12.943157>,  <15.264275, 20.749338, 12.865129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480714, 20.817642, 12.943157>,  <15.841446, 20.931482, 13.073206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.480714, 20.817642, 12.943157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429127, -0.501970, -0.750917,
		0.050511, -0.816718, 0.574822,
		-0.901831, -0.284601, -0.325121,
		15.210165, 20.732262, 12.845621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924536, 20.087543, 12.982904>,  <15.841446, 20.931482, 13.073206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924536, 20.087543, 12.982904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637368, 20.230667, 12.744052>,  <15.465068, 20.316542, 12.600740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637368, 20.230667, 12.744052>,  <15.924536, 20.087543, 12.982904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637368, 20.230667, 12.744052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231362, -0.686388, -0.689452,
		-0.656552, -0.633125, 0.409991,
		-0.717922, 0.357805, -0.597130,
		15.421992, 20.338009, 12.564913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581555, 19.464630, 12.726884>,  <15.924536, 20.087543, 12.982904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581555, 19.464630, 12.726884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463754, 19.755341, 12.478670>,  <15.393073, 19.929768, 12.329742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463754, 19.755341, 12.478670>,  <15.581555, 19.464630, 12.726884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463754, 19.755341, 12.478670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337295, -0.528491, -0.779056,
		-0.894147, -0.438738, -0.089496,
		-0.294504, 0.726778, -0.620534,
		15.375402, 19.973373, 12.292510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179205, 19.168924, 12.187662>,  <15.581555, 19.464630, 12.726884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179205, 19.168924, 12.187662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320279, 19.506985, 12.026998>,  <15.404923, 19.709822, 11.930599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320279, 19.506985, 12.026998>,  <15.179205, 19.168924, 12.187662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.320279, 19.506985, 12.026998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233032, -0.495047, -0.837033,
		-0.906261, 0.201609, -0.371543,
		0.352685, 0.845152, -0.401661,
		15.426085, 19.760530, 11.906500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667590, 18.602552, 11.947309>,  <15.179205, 19.168924, 12.187662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667590, 18.602552, 11.947309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908395, 18.331303, 12.115942>,  <15.052877, 18.168552, 12.217121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908395, 18.331303, 12.115942>,  <14.667590, 18.602552, 11.947309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908395, 18.331303, 12.115942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129063, 0.438394, 0.889468,
		-0.787987, -0.589881, 0.176398,
		0.602012, -0.678123, 0.421581,
		15.088999, 18.127865, 12.242416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222149, 18.272648, 12.498880>,  <14.667590, 18.602552, 11.947309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222149, 18.272648, 12.498880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601241, 18.185764, 12.592370>,  <14.828696, 18.133635, 12.648464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601241, 18.185764, 12.592370>,  <14.222149, 18.272648, 12.498880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.601241, 18.185764, 12.592370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183240, 0.229160, 0.955986,
		-0.261210, -0.948844, 0.177381,
		0.947730, -0.217210, 0.233725,
		14.885560, 18.120602, 12.662488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110813, 17.786968, 13.015608>,  <14.222149, 18.272648, 12.498880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.110813, 17.786968, 13.015608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472445, 17.955669, 13.043209>,  <14.689425, 18.056890, 13.059770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472445, 17.955669, 13.043209>,  <14.110813, 17.786968, 13.015608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472445, 17.955669, 13.043209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148365, 0.158327, 0.976177,
		0.400784, -0.892779, 0.205714,
		0.904080, 0.421756, 0.069002,
		14.743670, 18.082195, 13.063910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.333405, 17.497314, 13.646748>,  <14.110813, 17.786968, 13.015608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.333405, 17.497314, 13.646748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.574405, 17.809811, 13.581436>,  <14.719005, 17.997309, 13.542250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.574405, 17.809811, 13.581436>,  <14.333405, 17.497314, 13.646748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.574405, 17.809811, 13.581436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011448, 0.213017, 0.976981,
		0.798038, -0.586760, 0.137286,
		0.602498, 0.781240, -0.163278,
		14.755155, 18.044182, 13.532453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.886909, 17.396078, 14.107261>,  <14.333405, 17.497314, 13.646748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.886909, 17.396078, 14.107261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.916049, 17.786228, 14.023993>,  <14.933533, 18.020319, 13.974031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.916049, 17.786228, 14.023993>,  <14.886909, 17.396078, 14.107261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.916049, 17.786228, 14.023993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105417, 0.200025, 0.974104,
		0.991756, -0.092907, -0.088249,
		0.072849, 0.975376, -0.208170,
		14.937903, 18.078840, 13.961541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421059, 17.585632, 14.495087>,  <14.886909, 17.396078, 14.107261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.421059, 17.585632, 14.495087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.202453, 17.915470, 14.436617>,  <15.071289, 18.113373, 14.401535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.202453, 17.915470, 14.436617>,  <15.421059, 17.585632, 14.495087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.202453, 17.915470, 14.436617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232383, 0.317017, 0.919510,
		0.804562, 0.468557, -0.364876,
		-0.546515, 0.824593, -0.146175,
		15.038498, 18.162848, 14.392764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731179, 18.102200, 14.789454>,  <15.421059, 17.585632, 14.495087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.731179, 18.102200, 14.789454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364320, 18.261036, 14.803045>,  <15.144204, 18.356339, 14.811200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364320, 18.261036, 14.803045>,  <15.731179, 18.102200, 14.789454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364320, 18.261036, 14.803045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132868, 0.224267, 0.965428,
		0.375743, 0.889956, -0.258447,
		-0.917150, 0.397092, 0.033980,
		15.089175, 18.380163, 14.813239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797007, 18.818064, 15.125874>,  <15.731179, 18.102200, 14.789454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.797007, 18.818064, 15.125874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415755, 18.703003, 15.163399>,  <15.187004, 18.633966, 15.185914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415755, 18.703003, 15.163399>,  <15.797007, 18.818064, 15.125874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415755, 18.703003, 15.163399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032898, 0.406748, 0.912948,
		-0.300769, 0.867071, -0.397146,
		-0.953129, -0.287652, 0.093813,
		15.129816, 18.616707, 15.191543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.512777, 19.397047, 15.504646>,  <15.797007, 18.818064, 15.125874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.512777, 19.397047, 15.504646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228776, 19.120438, 15.557848>,  <15.058375, 18.954472, 15.589769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228776, 19.120438, 15.557848>,  <15.512777, 19.397047, 15.504646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228776, 19.120438, 15.557848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024899, 0.213408, 0.976646,
		-0.703757, 0.690111, -0.168739,
		-0.710004, -0.691523, 0.133005,
		15.015775, 18.912981, 15.597750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.079292, 19.710070, 16.055624>,  <15.512777, 19.397047, 15.504646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.079292, 19.710070, 16.055624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972928, 19.324718, 16.041815>,  <14.909109, 19.093508, 16.033529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972928, 19.324718, 16.041815>,  <15.079292, 19.710070, 16.055624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.972928, 19.324718, 16.041815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030985, -0.027254, 0.999148,
		-0.963499, 0.266755, -0.022603,
		-0.265912, -0.963379, -0.034525,
		14.893154, 19.035706, 16.031458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.428242, 19.592377, 16.514887>,  <15.079292, 19.710070, 16.055624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.428242, 19.592377, 16.514887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.624421, 19.243984, 16.503202>,  <14.742128, 19.034948, 16.496193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.624421, 19.243984, 16.503202>,  <14.428242, 19.592377, 16.514887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.624421, 19.243984, 16.503202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131218, -0.106941, 0.985569,
		-0.861535, -0.479538, -0.166737,
		0.490448, -0.870981, -0.029210,
		14.771556, 18.982691, 16.494440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085860, 19.194872, 17.005636>,  <14.428242, 19.592377, 16.514887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085860, 19.194872, 17.005636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.430823, 18.994720, 16.974976>,  <14.637801, 18.874630, 16.956579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.430823, 18.994720, 16.974976>,  <14.085860, 19.194872, 17.005636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.430823, 18.994720, 16.974976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033595, -0.094512, 0.994957,
		-0.505100, -0.860632, -0.064697,
		0.862407, -0.500380, -0.076650,
		14.689546, 18.844606, 16.951981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060920, 18.600784, 17.409977>,  <14.085860, 19.194872, 17.005636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060920, 18.600784, 17.409977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450700, 18.684658, 17.377771>,  <14.684567, 18.734982, 17.358448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450700, 18.684658, 17.377771>,  <14.060920, 18.600784, 17.409977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450700, 18.684658, 17.377771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090928, -0.040501, 0.995034,
		0.205381, -0.976930, -0.058532,
		0.974449, 0.209683, -0.080512,
		14.743034, 18.747562, 17.353619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.411668, 18.088812, 17.780766>,  <14.060920, 18.600784, 17.409977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.411668, 18.088812, 17.780766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654723, 18.405518, 17.755835>,  <14.800556, 18.595541, 17.740877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654723, 18.405518, 17.755835>,  <14.411668, 18.088812, 17.780766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.654723, 18.405518, 17.755835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208054, -0.082952, 0.974594,
		0.766480, -0.605166, -0.215135,
		0.607637, 0.791766, -0.062326,
		14.837014, 18.643047, 17.737137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<21.295197, 21.565908, 16.142008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.914730, 21.452686, 16.191261>,  <20.686451, 21.384752, 16.220814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.914730, 21.452686, 16.191261>,  <21.295197, 21.565908, 16.142008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.914730, 21.452686, 16.191261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095557, -0.649324, -0.754484,
		0.293516, -0.705873, 0.644663,
		-0.951166, -0.283056, 0.123136,
		20.629379, 21.367769, 16.228203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.432959, 20.863676, 15.940682>,  <21.295197, 21.565908, 16.142008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.432959, 20.863676, 15.940682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.036888, 20.915180, 15.918873>,  <20.799246, 20.946083, 15.905787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.036888, 20.915180, 15.918873>,  <21.432959, 20.863676, 15.940682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036888, 20.915180, 15.918873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062037, -0.753976, -0.653966,
		-0.125315, -0.644159, 0.754557,
		-0.990176, 0.128763, -0.054523,
		20.739836, 20.953810, 15.902516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103912, 20.186188, 15.835536>,  <21.432959, 20.863676, 15.940682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103912, 20.186188, 15.835536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.831116, 20.452057, 15.713490>,  <20.667437, 20.611578, 15.640262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.831116, 20.452057, 15.713490>,  <21.103912, 20.186188, 15.835536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831116, 20.452057, 15.713490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167081, -0.547755, -0.819786,
		-0.712018, -0.508109, 0.484619,
		-0.681993, 0.664673, -0.305116,
		20.626518, 20.651459, 15.621955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.658285, 19.750410, 15.502396>,  <21.103912, 20.186188, 15.835536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.658285, 19.750410, 15.502396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.610031, 20.124226, 15.368479>,  <20.581078, 20.348515, 15.288129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.610031, 20.124226, 15.368479>,  <20.658285, 19.750410, 15.502396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.610031, 20.124226, 15.368479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000761, -0.337341, -0.941382,
		-0.992696, -0.113310, 0.041406,
		-0.120636, 0.934538, -0.334791,
		20.573841, 20.404587, 15.268042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.208735, 19.616093, 15.042589>,  <20.658285, 19.750410, 15.502396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.208735, 19.616093, 15.042589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.334602, 19.974979, 14.918661>,  <20.410124, 20.190311, 14.844304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.334602, 19.974979, 14.918661>,  <20.208735, 19.616093, 15.042589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.334602, 19.974979, 14.918661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012198, -0.322551, -0.946474,
		-0.949123, 0.301606, -0.090552,
		0.314670, 0.897215, -0.309819,
		20.429003, 20.244144, 14.825715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.724648, 19.697840, 14.536322>,  <20.208735, 19.616093, 15.042589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.724648, 19.697840, 14.536322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.051922, 19.922676, 14.487947>,  <20.248287, 20.057579, 14.458923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.051922, 19.922676, 14.487947>,  <19.724648, 19.697840, 14.536322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.051922, 19.922676, 14.487947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002647, -0.206653, -0.978411,
		-0.574948, 0.800841, -0.167593,
		0.818185, 0.562092, -0.120934,
		20.297377, 20.091303, 14.451667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590923, 20.069485, 14.035207>,  <19.724648, 19.697840, 14.536322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590923, 20.069485, 14.035207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.989677, 20.095997, 14.052290>,  <20.228930, 20.111904, 14.062540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.989677, 20.095997, 14.052290>,  <19.590923, 20.069485, 14.035207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989677, 20.095997, 14.052290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051094, -0.130494, -0.990132,
		-0.060054, 0.989231, -0.133474,
		0.996887, 0.066281, 0.042707,
		20.288744, 20.115881, 14.065102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.674768, 20.421225, 13.457982>,  <19.590923, 20.069485, 14.035207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.674768, 20.421225, 13.457982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.004169, 20.221684, 13.566048>,  <20.201811, 20.101959, 13.630887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.004169, 20.221684, 13.566048>,  <19.674768, 20.421225, 13.457982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004169, 20.221684, 13.566048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150002, -0.267805, -0.951725,
		0.547120, 0.824274, -0.145710,
		0.823504, -0.498851, 0.270164,
		20.251221, 20.072027, 13.647097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175606, 20.628763, 12.960689>,  <19.674768, 20.421225, 13.457982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175606, 20.628763, 12.960689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.324802, 20.289810, 13.111856>,  <20.414320, 20.086439, 13.202557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.324802, 20.289810, 13.111856>,  <20.175606, 20.628763, 12.960689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324802, 20.289810, 13.111856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351570, -0.247863, -0.902753,
		0.858647, 0.469585, 0.205462,
		0.372993, -0.847381, 0.377919,
		20.436701, 20.035597, 13.225232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.954531, 20.505074, 12.764940>,  <20.175606, 20.628763, 12.960689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.954531, 20.505074, 12.764940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.771996, 20.158157, 12.844503>,  <20.662476, 19.950008, 12.892241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.771996, 20.158157, 12.844503>,  <20.954531, 20.505074, 12.764940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.771996, 20.158157, 12.844503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401490, -0.400185, -0.823807,
		0.794080, -0.296073, 0.530828,
		-0.456336, -0.867290, 0.198908,
		20.635094, 19.897970, 12.904176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434874, 20.059961, 12.542825>,  <20.954531, 20.505074, 12.764940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434874, 20.059961, 12.542825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.136909, 19.797192, 12.589402>,  <20.958132, 19.639530, 12.617349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.136909, 19.797192, 12.589402>,  <21.434874, 20.059961, 12.542825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136909, 19.797192, 12.589402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334996, -0.519228, -0.786244,
		0.576966, -0.546672, 0.606845,
		-0.744908, -0.656927, 0.116444,
		20.913437, 19.600113, 12.624335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.804438, 19.363842, 12.591393>,  <21.434874, 20.059961, 12.542825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.804438, 19.363842, 12.591393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.420425, 19.340263, 12.481949>,  <21.190018, 19.326117, 12.416282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.420425, 19.340263, 12.481949>,  <21.804438, 19.363842, 12.591393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.420425, 19.340263, 12.481949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264509, -0.510663, -0.818082,
		-0.091502, -0.857758, 0.505844,
		-0.960032, -0.058945, -0.273612,
		21.132416, 19.322580, 12.399865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.711321, 18.704813, 12.401907>,  <21.804438, 19.363842, 12.591393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.711321, 18.704813, 12.401907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.395267, 18.887760, 12.238685>,  <21.205635, 18.997528, 12.140752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.395267, 18.887760, 12.238685>,  <21.711321, 18.704813, 12.401907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395267, 18.887760, 12.238685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180147, -0.463050, -0.867832,
		-0.585867, -0.759210, 0.283476,
		-0.790131, 0.457367, -0.408055,
		21.158228, 19.024969, 12.116268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.356777, 18.117849, 12.149884>,  <21.711321, 18.704813, 12.401907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.356777, 18.117849, 12.149884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.236908, 18.440704, 11.946423>,  <21.164988, 18.634417, 11.824346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.236908, 18.440704, 11.946423>,  <21.356777, 18.117849, 12.149884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.236908, 18.440704, 11.946423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213155, -0.463034, -0.860328,
		-0.929926, -0.366237, -0.033287,
		-0.299671, 0.807137, -0.508653,
		21.147007, 18.682846, 11.793827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.710991, 17.855391, 12.558207>,  <21.356777, 18.117849, 12.149884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.710991, 17.855391, 12.558207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.485146, 17.525288, 12.563313>,  <20.349638, 17.327227, 12.566378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.485146, 17.525288, 12.563313>,  <20.710991, 17.855391, 12.558207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.485146, 17.525288, 12.563313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341488, 0.247662, 0.906670,
		-0.751397, 0.507559, -0.421648,
		-0.564614, -0.825256, 0.012767,
		20.315762, 17.277710, 12.567143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.077768, 18.173065, 12.643347>,  <20.710991, 17.855391, 12.558207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.077768, 18.173065, 12.643347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.073845, 17.789078, 12.755318>,  <20.071491, 17.558685, 12.822500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.073845, 17.789078, 12.755318>,  <20.077768, 18.173065, 12.643347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.073845, 17.789078, 12.755318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484722, 0.249418, 0.838353,
		-0.874613, -0.127463, -0.467766,
		-0.009810, -0.959971, 0.279928,
		20.070902, 17.501087, 12.839296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555651, 18.102316, 13.144327>,  <20.077768, 18.173065, 12.643347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555651, 18.102316, 13.144327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.748985, 17.755363, 13.191721>,  <19.864986, 17.547192, 13.220158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.748985, 17.755363, 13.191721>,  <19.555651, 18.102316, 13.144327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748985, 17.755363, 13.191721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287797, -0.029612, 0.957233,
		-0.826777, -0.496763, -0.263943,
		0.483335, -0.867381, 0.118484,
		19.893986, 17.495150, 13.227266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.063923, 17.753344, 13.501942>,  <19.555651, 18.102316, 13.144327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.063923, 17.753344, 13.501942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.417248, 17.574646, 13.558764>,  <19.629242, 17.467428, 13.592856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.417248, 17.574646, 13.558764>,  <19.063923, 17.753344, 13.501942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.417248, 17.574646, 13.558764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212545, -0.111570, 0.970761,
		-0.417831, -0.887679, -0.193504,
		0.883313, -0.446743, 0.142055,
		19.682241, 17.440622, 13.601380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986530, 17.181915, 13.985147>,  <19.063923, 17.753344, 13.501942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.986530, 17.181915, 13.985147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.383900, 17.225117, 14.000368>,  <19.622320, 17.251038, 14.009501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.383900, 17.225117, 14.000368>,  <18.986530, 17.181915, 13.985147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383900, 17.225117, 14.000368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053775, 0.146631, 0.987728,
		0.101089, -0.983278, 0.151474,
		0.993423, 0.107994, 0.038053,
		19.681927, 17.257517, 14.011784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240995, 16.748346, 14.559731>,  <18.986530, 17.181915, 13.985147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.240995, 16.748346, 14.559731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.543461, 16.999195, 14.484964>,  <19.724939, 17.149704, 14.440104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.543461, 16.999195, 14.484964>,  <19.240995, 16.748346, 14.559731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543461, 16.999195, 14.484964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063289, 0.214213, 0.974734,
		0.651317, -0.748887, 0.122290,
		0.756162, 0.627121, -0.186917,
		19.770309, 17.187332, 14.428889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.794867, 16.631824, 15.101463>,  <19.240995, 16.748346, 14.559731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.794867, 16.631824, 15.101463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.851131, 17.001553, 14.959566>,  <19.884892, 17.223391, 14.874428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.851131, 17.001553, 14.959566>,  <19.794867, 16.631824, 15.101463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.851131, 17.001553, 14.959566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182786, 0.327901, 0.926861,
		0.973038, -0.195217, -0.122830,
		0.140663, 0.924322, -0.354743,
		19.893330, 17.278849, 14.853144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.467844, 16.904263, 15.410503>,  <19.794867, 16.631824, 15.101463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.467844, 16.904263, 15.410503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.214146, 17.197887, 15.313438>,  <20.061926, 17.374062, 15.255199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.214146, 17.197887, 15.313438>,  <20.467844, 16.904263, 15.410503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.214146, 17.197887, 15.313438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167269, 0.436722, 0.883909,
		0.754819, 0.520027, -0.399775,
		-0.634247, 0.734061, -0.242662,
		20.023870, 17.418106, 15.240640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.855392, 17.482502, 15.618564>,  <20.467844, 16.904263, 15.410503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.855392, 17.482502, 15.618564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.468166, 17.580414, 15.596922>,  <20.235830, 17.639162, 15.583937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.468166, 17.580414, 15.596922>,  <20.855392, 17.482502, 15.618564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.468166, 17.580414, 15.596922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090126, 0.541225, 0.836034,
		0.233928, 0.804461, -0.546003,
		-0.968068, 0.244781, -0.054104,
		20.177746, 17.653849, 15.580690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761583, 18.298019, 15.670899>,  <20.855392, 17.482502, 15.618564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761583, 18.298019, 15.670899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.425579, 18.113285, 15.784801>,  <20.223976, 18.002443, 15.853143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.425579, 18.113285, 15.784801>,  <20.761583, 18.298019, 15.670899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.425579, 18.113285, 15.784801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074254, 0.617746, 0.782864,
		-0.537462, 0.636471, -0.553208,
		-0.840012, -0.461838, 0.284755,
		20.173574, 17.974733, 15.870228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248962, 18.857857, 15.890043>,  <20.761583, 18.298019, 15.670899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248962, 18.857857, 15.890043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.121025, 18.531456, 16.082644>,  <20.044262, 18.335615, 16.198204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.121025, 18.531456, 16.082644>,  <20.248962, 18.857857, 15.890043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121025, 18.531456, 16.082644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205692, 0.555877, 0.805414,
		-0.924874, 0.158566, -0.345638,
		-0.319843, -0.816001, 0.481500,
		20.025072, 18.286655, 16.227093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713694, 19.176020, 16.314915>,  <20.248962, 18.857857, 15.890043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713694, 19.176020, 16.314915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.747086, 18.806435, 16.464222>,  <19.767120, 18.584684, 16.553806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.747086, 18.806435, 16.464222>,  <19.713694, 19.176020, 16.314915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.747086, 18.806435, 16.464222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255016, 0.342295, 0.904324,
		-0.963327, -0.170680, -0.207051,
		0.083478, -0.923960, 0.373268,
		19.772129, 18.529247, 16.576202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.089228, 18.873352, 16.622244>,  <19.713694, 19.176020, 16.314915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.089228, 18.873352, 16.622244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.385887, 18.691570, 16.819597>,  <19.563883, 18.582500, 16.938009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.385887, 18.691570, 16.819597>,  <19.089228, 18.873352, 16.622244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385887, 18.691570, 16.819597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239158, 0.508045, 0.827462,
		-0.626706, -0.731683, 0.268104,
		0.741649, -0.454457, 0.493382,
		19.608381, 18.555233, 16.967611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.772015, 18.880400, 17.168564>,  <19.089228, 18.873352, 16.622244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.772015, 18.880400, 17.168564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.153137, 18.782581, 17.240511>,  <19.381811, 18.723890, 17.283680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.153137, 18.782581, 17.240511>,  <18.772015, 18.880400, 17.168564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153137, 18.782581, 17.240511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046141, 0.468957, 0.882015,
		-0.300045, -0.848691, 0.435543,
		0.952808, -0.244548, 0.179867,
		19.438980, 18.709217, 17.294472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.673180, 18.151859, 17.239525>,  <18.772015, 18.880400, 17.168564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.673180, 18.151859, 17.239525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.288532, 18.042572, 17.249676>,  <18.057743, 17.976999, 17.255766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.288532, 18.042572, 17.249676>,  <18.673180, 18.151859, 17.239525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.288532, 18.042572, 17.249676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118978, -0.498513, -0.858679,
		0.247256, -0.822702, 0.511886,
		-0.961618, -0.273216, 0.025376,
		18.000048, 17.960608, 17.257288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614775, 17.454357, 16.830648>,  <18.673180, 18.151859, 17.239525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.614775, 17.454357, 16.830648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.223095, 17.529037, 16.862425>,  <17.988087, 17.573845, 16.881491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.223095, 17.529037, 16.862425>,  <18.614775, 17.454357, 16.830648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223095, 17.529037, 16.862425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171956, -0.555806, -0.813334,
		-0.107695, -0.810077, 0.576349,
		-0.979200, 0.186698, 0.079440,
		17.929335, 17.585047, 16.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264599, 16.810890, 16.739862>,  <18.614775, 17.454357, 16.830648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264599, 16.810890, 16.739862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.012661, 17.104923, 16.639505>,  <17.861498, 17.281343, 16.579290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.012661, 17.104923, 16.639505>,  <18.264599, 16.810890, 16.739862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012661, 17.104923, 16.639505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239328, -0.490967, -0.837659,
		-0.738930, -0.467550, 0.485160,
		-0.629845, 0.735084, -0.250893,
		17.823708, 17.325449, 16.564238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622494, 16.522722, 16.523766>,  <18.264599, 16.810890, 16.739862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622494, 16.522722, 16.523766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.537670, 16.886929, 16.381784>,  <17.486776, 17.105453, 16.296597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.537670, 16.886929, 16.381784>,  <17.622494, 16.522722, 16.523766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537670, 16.886929, 16.381784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313788, -0.407418, -0.857641,
		-0.925510, -0.070490, 0.372105,
		-0.212057, 0.910517, -0.354951,
		17.474052, 17.160084, 16.275299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941370, 16.523643, 16.396885>,  <17.622494, 16.522722, 16.523766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941370, 16.523643, 16.396885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.073444, 16.817825, 16.160213>,  <17.152689, 16.994335, 16.018211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.073444, 16.817825, 16.160213>,  <16.941370, 16.523643, 16.396885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073444, 16.817825, 16.160213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437461, -0.436221, -0.786345,
		-0.836425, 0.518475, 0.177700,
		0.330184, 0.735456, -0.591679,
		17.172499, 17.038462, 15.982710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.399582, 16.755661, 15.892019>,  <16.941370, 16.523643, 16.396885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.399582, 16.755661, 15.892019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.725613, 16.900688, 15.711269>,  <16.921232, 16.987705, 15.602819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.725613, 16.900688, 15.711269>,  <16.399582, 16.755661, 15.892019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725613, 16.900688, 15.711269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373131, -0.268138, -0.888187,
		-0.443194, 0.892550, -0.083268,
		0.815078, 0.362569, -0.451875,
		16.970137, 17.009459, 15.575706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286297, 17.155394, 15.217734>,  <16.399582, 16.755661, 15.892019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286297, 17.155394, 15.217734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.681316, 17.100792, 15.186470>,  <16.918329, 17.068031, 15.167711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.681316, 17.100792, 15.186470>,  <16.286297, 17.155394, 15.217734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.681316, 17.100792, 15.186470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110463, -0.248076, -0.962422,
		0.111985, 0.959075, -0.260066,
		0.987551, -0.136504, -0.078162,
		16.977581, 17.059841, 15.163021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.515957, 17.464031, 14.607497>,  <16.286297, 17.155394, 15.217734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.515957, 17.464031, 14.607497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.803143, 17.193665, 14.674030>,  <16.975454, 17.031445, 14.713950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.803143, 17.193665, 14.674030>,  <16.515957, 17.464031, 14.607497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.803143, 17.193665, 14.674030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118767, -0.354405, -0.927519,
		0.685873, 0.646171, -0.334727,
		0.717964, -0.675914, 0.166333,
		17.018532, 16.990891, 14.723930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014069, 17.511650, 14.077826>,  <16.515957, 17.464031, 14.607497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.014069, 17.511650, 14.077826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.992077, 17.153324, 14.254230>,  <16.978882, 16.938328, 14.360073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.992077, 17.153324, 14.254230>,  <17.014069, 17.511650, 14.077826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.992077, 17.153324, 14.254230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148266, -0.444107, -0.883621,
		0.987418, 0.016807, 0.157235,
		-0.054978, -0.895816, 0.441011,
		16.975584, 16.884579, 14.386534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601276, 17.230562, 13.860193>,  <17.014069, 17.511650, 14.077826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.601276, 17.230562, 13.860193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.335430, 16.954182, 13.973946>,  <17.175922, 16.788353, 14.042197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.335430, 16.954182, 13.973946>,  <17.601276, 17.230562, 13.860193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.335430, 16.954182, 13.973946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182343, -0.519082, -0.835048,
		0.724595, -0.503130, 0.470981,
		-0.664616, -0.690951, 0.284382,
		17.136045, 16.746897, 14.059260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984858, 16.530170, 13.843726>,  <17.601276, 17.230562, 13.860193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984858, 16.530170, 13.843726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.606125, 16.401783, 13.834881>,  <17.378885, 16.324751, 13.829574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.606125, 16.401783, 13.834881>,  <17.984858, 16.530170, 13.843726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.606125, 16.401783, 13.834881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164344, -0.423424, -0.890900,
		0.276590, -0.847166, 0.453660,
		-0.946831, -0.320970, -0.022112,
		17.322075, 16.305492, 13.828247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.032867, 15.776085, 13.711952>,  <17.984858, 16.530170, 13.843726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.032867, 15.776085, 13.711952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.667507, 15.904148, 13.611399>,  <17.448290, 15.980986, 13.551066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.667507, 15.904148, 13.611399>,  <18.032867, 15.776085, 13.711952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667507, 15.904148, 13.611399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150382, -0.308466, -0.939273,
		-0.378263, -0.895737, 0.233607,
		-0.913402, 0.320162, -0.251384,
		17.393486, 16.000196, 13.535984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.579832, 15.236988, 13.521527>,  <18.032867, 15.776085, 13.711952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.579832, 15.236988, 13.521527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.399097, 15.541046, 13.334755>,  <17.290657, 15.723481, 13.222692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.399097, 15.541046, 13.334755>,  <17.579832, 15.236988, 13.521527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399097, 15.541046, 13.334755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115481, -0.469165, -0.875527,
		-0.884596, -0.449516, 0.124203,
		-0.451835, 0.760144, -0.466932,
		17.263546, 15.769090, 13.194675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.254068, 14.925179, 12.933907>,  <17.579832, 15.236988, 13.521527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.254068, 14.925179, 12.933907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.252335, 15.318222, 12.859653>,  <17.251295, 15.554049, 12.815102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.252335, 15.318222, 12.859653>,  <17.254068, 14.925179, 12.933907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.252335, 15.318222, 12.859653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063810, -0.184984, -0.980668,
		-0.997953, -0.016094, -0.061899,
		-0.004333, 0.982610, -0.185632,
		17.251036, 15.613005, 12.803964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.948417, 17.890606, 18.306549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.967767, 18.283558, 18.234344>,  <14.979377, 18.519329, 18.191021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.967767, 18.283558, 18.234344>,  <14.948417, 17.890606, 18.306549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.967767, 18.283558, 18.234344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173111, 0.169744, 0.970165,
		0.983714, -0.078181, -0.161850,
		0.048375, 0.982382, -0.180514,
		14.982280, 18.578272, 18.180191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.475829, 18.054003, 18.770199>,  <14.948417, 17.890606, 18.306549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.475829, 18.054003, 18.770199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.296174, 18.395729, 18.665571>,  <15.188381, 18.600765, 18.602795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.296174, 18.395729, 18.665571>,  <15.475829, 18.054003, 18.770199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296174, 18.395729, 18.665571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253946, 0.402748, 0.879377,
		0.856613, 0.328538, -0.397840,
		-0.449139, 0.854316, -0.261568,
		15.161432, 18.652023, 18.587101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.940482, 18.602478, 18.980736>,  <15.475829, 18.054003, 18.770199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.940482, 18.602478, 18.980736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.587600, 18.787163, 18.943779>,  <15.375871, 18.897974, 18.921604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.587600, 18.787163, 18.943779>,  <15.940482, 18.602478, 18.980736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587600, 18.787163, 18.943779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117568, 0.405999, 0.906280,
		0.455950, 0.788663, -0.412457,
		-0.882206, 0.461709, -0.092394,
		15.322938, 18.925676, 18.916061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.072044, 19.313709, 19.127630>,  <15.940482, 18.602478, 18.980736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.072044, 19.313709, 19.127630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.676925, 19.291893, 19.185980>,  <15.439853, 19.278803, 19.220989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.676925, 19.291893, 19.185980>,  <16.072044, 19.313709, 19.127630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676925, 19.291893, 19.185980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065034, 0.706636, 0.704583,
		-0.141509, 0.705472, -0.694467,
		-0.987799, -0.054540, 0.145875,
		15.380585, 19.275532, 19.229742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.877494, 19.958944, 19.043615>,  <16.072044, 19.313709, 19.127630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.877494, 19.958944, 19.043615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.597018, 19.767475, 19.254976>,  <15.428733, 19.652594, 19.381792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.597018, 19.767475, 19.254976>,  <15.877494, 19.958944, 19.043615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597018, 19.767475, 19.254976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088629, 0.676852, 0.730764,
		-0.707445, 0.559236, -0.432177,
		-0.701189, -0.478672, 0.528400,
		15.386662, 19.623873, 19.413496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341969, 20.466307, 19.252705>,  <15.877494, 19.958944, 19.043615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341969, 20.466307, 19.252705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.284019, 20.157196, 19.499874>,  <15.249249, 19.971729, 19.648176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.284019, 20.157196, 19.499874>,  <15.341969, 20.466307, 19.252705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.284019, 20.157196, 19.499874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005348, 0.623892, 0.781492,
		-0.989436, 0.116523, -0.086253,
		-0.144874, -0.772775, 0.617924,
		15.240557, 19.925364, 19.685251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958337, 20.750887, 19.721037>,  <15.341969, 20.466307, 19.252705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958337, 20.750887, 19.721037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.061334, 20.403378, 19.890236>,  <15.123132, 20.194872, 19.991755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.061334, 20.403378, 19.890236>,  <14.958337, 20.750887, 19.721037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061334, 20.403378, 19.890236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268350, 0.356246, 0.895029,
		-0.928271, -0.343974, -0.141406,
		0.257492, -0.868775, 0.422998,
		15.138581, 20.142744, 20.017136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.418535, 20.427988, 20.171753>,  <14.958337, 20.750887, 19.721037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.418535, 20.427988, 20.171753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.776187, 20.294769, 20.291494>,  <14.990778, 20.214838, 20.363340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.776187, 20.294769, 20.291494>,  <14.418535, 20.427988, 20.171753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.776187, 20.294769, 20.291494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171270, 0.363330, 0.915783,
		-0.413763, -0.870098, 0.267823,
		0.894129, -0.333047, 0.299354,
		15.044426, 20.194855, 20.381300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293646, 20.351963, 20.798164>,  <14.418535, 20.427988, 20.171753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293646, 20.351963, 20.798164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.693341, 20.338009, 20.791170>,  <14.933159, 20.329636, 20.786974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.693341, 20.338009, 20.791170>,  <14.293646, 20.351963, 20.798164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693341, 20.338009, 20.791170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025203, 0.234865, 0.971701,
		-0.029793, -0.971402, 0.235566,
		0.999238, -0.034887, -0.017485,
		14.993113, 20.327543, 20.785925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.532411, 20.011530, 21.487591>,  <14.293646, 20.351963, 20.798164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.532411, 20.011530, 21.487591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.829991, 20.226601, 21.328876>,  <15.008540, 20.355642, 21.233648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.829991, 20.226601, 21.328876>,  <14.532411, 20.011530, 21.487591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.829991, 20.226601, 21.328876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122285, 0.474217, 0.871874,
		0.656950, -0.697153, 0.287044,
		0.743951, 0.537677, -0.396788,
		15.053177, 20.387903, 21.209841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007106, 20.066496, 21.973089>,  <14.532411, 20.011530, 21.487591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007106, 20.066496, 21.973089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.128875, 20.359791, 21.729879>,  <15.201936, 20.535767, 21.583954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.128875, 20.359791, 21.729879>,  <15.007106, 20.066496, 21.973089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.128875, 20.359791, 21.729879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073644, 0.618292, 0.782490,
		0.949687, -0.282983, 0.134223,
		0.304421, 0.733236, -0.608024,
		15.220201, 20.579762, 21.547472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769237, 20.203547, 21.993635>,  <15.007106, 20.066496, 21.973089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769237, 20.203547, 21.993635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.606307, 20.546436, 21.867619>,  <15.508550, 20.752171, 21.792009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.606307, 20.546436, 21.867619>,  <15.769237, 20.203547, 21.993635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606307, 20.546436, 21.867619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198476, 0.419798, 0.885651,
		0.891456, 0.298218, -0.341132,
		-0.407323, 0.857226, -0.315042,
		15.484110, 20.803604, 21.773106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148880, 20.699844, 22.276772>,  <15.769237, 20.203547, 21.993635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148880, 20.699844, 22.276772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.858823, 20.931110, 22.127161>,  <15.684789, 21.069870, 22.037395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.858823, 20.931110, 22.127161>,  <16.148880, 20.699844, 22.276772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.858823, 20.931110, 22.127161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302745, 0.755537, 0.580955,
		0.618477, 0.308041, -0.722909,
		-0.725142, 0.578164, -0.374025,
		15.641280, 21.104559, 22.014954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328848, 19.995152, 22.426844>,  <16.148880, 20.699844, 22.276772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328848, 19.995152, 22.426844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.089031, 19.690243, 22.329279>,  <15.945142, 19.507298, 22.270741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.089031, 19.690243, 22.329279>,  <16.328848, 19.995152, 22.426844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089031, 19.690243, 22.329279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600518, 0.226984, 0.766718,
		-0.529085, 0.606150, -0.593844,
		-0.599539, -0.762273, -0.243910,
		15.909169, 19.461561, 22.256105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048615, 19.915575, 22.350649>,  <16.328848, 19.995152, 22.426844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048615, 19.915575, 22.350649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.328747, 19.673843, 22.502611>,  <17.496826, 19.528805, 22.593788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.328747, 19.673843, 22.502611>,  <17.048615, 19.915575, 22.350649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.328747, 19.673843, 22.502611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210240, -0.333979, -0.918835,
		0.682158, 0.723357, -0.106841,
		0.700328, -0.604328, 0.379905,
		17.538845, 19.492544, 22.616583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631548, 20.032732, 22.012045>,  <17.048615, 19.915575, 22.350649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631548, 20.032732, 22.012045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.694599, 19.661770, 22.147732>,  <17.732430, 19.439192, 22.229145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.694599, 19.661770, 22.147732>,  <17.631548, 20.032732, 22.012045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694599, 19.661770, 22.147732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112589, -0.324395, -0.939197,
		0.981059, 0.186237, 0.053282,
		0.157629, -0.927407, 0.339219,
		17.741888, 19.383549, 22.249498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.235241, 19.750265, 21.546740>,  <17.631548, 20.032732, 22.012045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.235241, 19.750265, 21.546740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.051521, 19.437035, 21.714472>,  <17.941290, 19.249096, 21.815111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.051521, 19.437035, 21.714472>,  <18.235241, 19.750265, 21.546740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051521, 19.437035, 21.714472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030952, -0.485890, -0.873471,
		0.887741, -0.388207, 0.247408,
		-0.459301, -0.783075, 0.419329,
		17.913731, 19.202112, 21.840271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586704, 19.155725, 21.327971>,  <18.235241, 19.750265, 21.546740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586704, 19.155725, 21.327971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.225117, 19.017292, 21.428421>,  <18.008163, 18.934231, 21.488691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.225117, 19.017292, 21.428421>,  <18.586704, 19.155725, 21.327971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225117, 19.017292, 21.428421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047813, -0.501801, -0.863661,
		0.424915, -0.792730, 0.437065,
		-0.903970, -0.346085, 0.251126,
		17.953926, 18.913465, 21.503759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509893, 18.693464, 20.955584>,  <18.586704, 19.155725, 21.327971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509893, 18.693464, 20.955584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.121773, 18.672962, 21.050144>,  <17.888901, 18.660660, 21.106880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.121773, 18.672962, 21.050144>,  <18.509893, 18.693464, 20.955584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121773, 18.672962, 21.050144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196446, -0.403264, -0.893749,
		0.141143, -0.913647, 0.381219,
		-0.970303, -0.051258, 0.236400,
		17.830683, 18.657585, 21.121063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.314302, 18.085398, 20.807486>,  <18.509893, 18.693464, 20.955584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.314302, 18.085398, 20.807486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.964214, 18.278782, 20.801123>,  <17.754162, 18.394812, 20.797304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.964214, 18.278782, 20.801123>,  <18.314302, 18.085398, 20.807486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964214, 18.278782, 20.801123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178945, -0.354152, -0.917908,
		-0.449408, -0.800525, 0.396475,
		-0.875221, 0.483462, -0.015909,
		17.701649, 18.423820, 20.796350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.769068, 17.597157, 20.605381>,  <18.314302, 18.085398, 20.807486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.769068, 17.597157, 20.605381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.652382, 17.967655, 20.509907>,  <17.582371, 18.189955, 20.452623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.652382, 17.967655, 20.509907>,  <17.769068, 17.597157, 20.605381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.652382, 17.967655, 20.509907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071881, -0.270061, -0.960157,
		-0.953801, -0.262936, 0.145361,
		-0.291716, 0.926246, -0.238684,
		17.564867, 18.245529, 20.438301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352457, 17.476295, 20.038286>,  <17.769068, 17.597157, 20.605381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352457, 17.476295, 20.038286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.360001, 17.876163, 20.045233>,  <17.364527, 18.116085, 20.049400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.360001, 17.876163, 20.045233>,  <17.352457, 17.476295, 20.038286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360001, 17.876163, 20.045233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106748, 0.019282, -0.994099,
		-0.994107, 0.016894, 0.107077,
		0.018859, 0.999671, 0.017365,
		17.365658, 18.176065, 20.050442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.717422, 17.760824, 19.605690>,  <17.352457, 17.476295, 20.038286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.717422, 17.760824, 19.605690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.013031, 18.030266, 19.609812>,  <17.190395, 18.191931, 19.612286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.013031, 18.030266, 19.609812>,  <16.717422, 17.760824, 19.605690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.013031, 18.030266, 19.609812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049325, 0.069357, -0.996372,
		-0.671876, 0.735830, 0.084482,
		0.739020, 0.673605, 0.010305,
		17.234737, 18.232347, 19.612904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475513, 18.096411, 18.994743>,  <16.717422, 17.760824, 19.605690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475513, 18.096411, 18.994743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.857315, 18.193802, 19.063610>,  <17.086395, 18.252237, 19.104931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.857315, 18.193802, 19.063610>,  <16.475513, 18.096411, 18.994743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.857315, 18.193802, 19.063610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199879, -0.093928, -0.975308,
		-0.221295, 0.965348, -0.138320,
		0.954503, 0.243478, 0.172167,
		17.143665, 18.266846, 19.115261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619219, 18.657503, 18.641174>,  <16.475513, 18.096411, 18.994743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619219, 18.657503, 18.641174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.988247, 18.514881, 18.700140>,  <17.209663, 18.429308, 18.735519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.988247, 18.514881, 18.700140>,  <16.619219, 18.657503, 18.641174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988247, 18.514881, 18.700140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147511, -0.027082, -0.988690,
		0.356512, 0.933883, 0.027610,
		0.922572, -0.356553, 0.147413,
		17.265018, 18.407915, 18.744364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075401, 18.995260, 18.200409>,  <16.619219, 18.657503, 18.641174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075401, 18.995260, 18.200409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.283863, 18.668449, 18.299091>,  <17.408939, 18.472363, 18.358301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.283863, 18.668449, 18.299091>,  <17.075401, 18.995260, 18.200409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.283863, 18.668449, 18.299091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161183, -0.189639, -0.968533,
		0.838104, 0.544520, 0.032860,
		0.521155, -0.817028, 0.246705,
		17.440210, 18.423342, 18.373102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679255, 19.059885, 17.938148>,  <17.075401, 18.995260, 18.200409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.679255, 19.059885, 17.938148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.657467, 18.666340, 18.006319>,  <17.644394, 18.430212, 18.047222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.657467, 18.666340, 18.006319>,  <17.679255, 19.059885, 17.938148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.657467, 18.666340, 18.006319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057107, -0.173470, -0.983182,
		0.996881, -0.043821, 0.065634,
		-0.054470, -0.983864, 0.170427,
		17.641127, 18.371181, 18.057447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126795, 18.841278, 17.508516>,  <17.679255, 19.059885, 17.938148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126795, 18.841278, 17.508516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.926075, 18.505180, 17.590673>,  <17.805643, 18.303522, 17.639967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.926075, 18.505180, 17.590673>,  <18.126795, 18.841278, 17.508516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.926075, 18.505180, 17.590673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096666, -0.181491, -0.978630,
		0.859566, -0.510929, 0.009849,
		-0.501798, -0.840245, 0.205393,
		17.775536, 18.253107, 17.652292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808798, 18.519554, 17.892475>,  <18.126795, 18.841278, 17.508516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808798, 18.519554, 17.892475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.180866, 18.637131, 17.804489>,  <19.404106, 18.707676, 17.751698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.180866, 18.637131, 17.804489>,  <18.808798, 18.519554, 17.892475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.180866, 18.637131, 17.804489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016961, 0.564099, 0.825533,
		0.366739, -0.771616, 0.519722,
		0.930169, 0.293940, -0.219965,
		19.459917, 18.725313, 17.738499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.270205, 18.399895, 18.446777>,  <18.808798, 18.519554, 17.892475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.270205, 18.399895, 18.446777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.503765, 18.657993, 18.249714>,  <19.643902, 18.812853, 18.131475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.503765, 18.657993, 18.249714>,  <19.270205, 18.399895, 18.446777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.503765, 18.657993, 18.249714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250354, 0.434160, 0.865348,
		0.772256, -0.628619, 0.091968,
		0.583903, 0.645246, -0.492661,
		19.678936, 18.851566, 18.101915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954113, 18.480484, 18.818592>,  <19.270205, 18.399895, 18.446777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954113, 18.480484, 18.818592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.908703, 18.811737, 18.599026>,  <19.881456, 19.010489, 18.467285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.908703, 18.811737, 18.599026>,  <19.954113, 18.480484, 18.818592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908703, 18.811737, 18.599026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262440, 0.557860, 0.787349,
		0.958247, -0.054673, -0.280667,
		-0.113526, 0.828133, -0.548916,
		19.874645, 19.060177, 18.434351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.573776, 18.920809, 18.948587>,  <19.954113, 18.480484, 18.818592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.573776, 18.920809, 18.948587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.286343, 19.168964, 18.822889>,  <20.113882, 19.317858, 18.747471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.286343, 19.168964, 18.822889>,  <20.573776, 18.920809, 18.948587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286343, 19.168964, 18.822889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204869, 0.620659, 0.756843,
		0.664577, 0.479477, -0.573095,
		-0.718586, 0.620390, -0.314246,
		20.070766, 19.355082, 18.728615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.868052, 19.555559, 19.041172>,  <20.573776, 18.920809, 18.948587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.868052, 19.555559, 19.041172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.481426, 19.651283, 19.004328>,  <20.249451, 19.708717, 18.982222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.481426, 19.651283, 19.004328>,  <20.868052, 19.555559, 19.041172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.481426, 19.651283, 19.004328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057527, 0.552423, 0.831576,
		0.249890, 0.798473, -0.547719,
		-0.966564, 0.239311, -0.092111,
		20.191458, 19.723076, 18.976694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.828365, 20.294703, 19.020872>,  <20.868052, 19.555559, 19.041172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.828365, 20.294703, 19.020872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.470127, 20.159809, 19.136927>,  <20.255184, 20.078873, 19.206560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.470127, 20.159809, 19.136927>,  <20.828365, 20.294703, 19.020872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470127, 20.159809, 19.136927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081937, 0.515985, 0.852670,
		-0.437255, 0.787422, -0.434483,
		-0.895597, -0.337234, 0.290136,
		20.201448, 20.058640, 19.223967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419418, 20.888569, 19.280668>,  <20.828365, 20.294703, 19.020872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419418, 20.888569, 19.280668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.245621, 20.569790, 19.448521>,  <20.141342, 20.378523, 19.549232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.245621, 20.569790, 19.448521>,  <20.419418, 20.888569, 19.280668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245621, 20.569790, 19.448521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050164, 0.443770, 0.894736,
		-0.899277, 0.409807, -0.152837,
		-0.434493, -0.796948, 0.419629,
		20.115273, 20.330706, 19.574409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.878786, 21.358585, 19.188339>,  <20.419418, 20.888569, 19.280668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.878786, 21.358585, 19.188339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.009201, 21.716221, 19.065500>,  <20.087450, 21.930801, 18.991796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.009201, 21.716221, 19.065500>,  <19.878786, 21.358585, 19.188339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009201, 21.716221, 19.065500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139075, -0.275951, -0.951057,
		-0.935071, 0.352789, 0.034375,
		0.326036, 0.894087, -0.307098,
		20.107012, 21.984447, 18.973372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.374632, 21.453779, 18.679289>,  <19.878786, 21.358585, 19.188339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.374632, 21.453779, 18.679289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.656033, 21.729626, 18.610567>,  <19.824873, 21.895134, 18.569334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.656033, 21.729626, 18.610567>,  <19.374632, 21.453779, 18.679289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656033, 21.729626, 18.610567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007256, -0.234763, -0.972026,
		-0.710656, 0.685068, -0.160152,
		0.703502, 0.689614, -0.171806,
		19.867083, 21.936510, 18.559025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238104, 21.820194, 18.051878>,  <19.374632, 21.453779, 18.679289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238104, 21.820194, 18.051878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.633335, 21.875679, 18.078587>,  <19.870474, 21.908970, 18.094612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.633335, 21.875679, 18.078587>,  <19.238104, 21.820194, 18.051878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.633335, 21.875679, 18.078587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109901, -0.331859, -0.936905,
		-0.107799, 0.933075, -0.343148,
		0.988079, 0.138710, 0.066772,
		19.929758, 21.917292, 18.098618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.429775, 22.177523, 17.455120>,  <19.238104, 21.820194, 18.051878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.429775, 22.177523, 17.455120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.781429, 22.039059, 17.586143>,  <19.992422, 21.955980, 17.664759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.781429, 22.039059, 17.586143>,  <19.429775, 22.177523, 17.455120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781429, 22.039059, 17.586143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204703, -0.346406, -0.915478,
		0.430371, 0.871881, -0.233677,
		0.879135, -0.346161, 0.327559,
		20.045170, 21.935211, 17.684412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908073, 22.453442, 17.070620>,  <19.429775, 22.177523, 17.455120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.908073, 22.453442, 17.070620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.106415, 22.135239, 17.209929>,  <20.225420, 21.944317, 17.293514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.106415, 22.135239, 17.209929>,  <19.908073, 22.453442, 17.070620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.106415, 22.135239, 17.209929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169888, -0.304438, -0.937260,
		0.851626, 0.523912, -0.015810,
		0.495854, -0.795509, 0.348274,
		20.255171, 21.896585, 17.314411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417295, 22.512243, 16.631662>,  <19.908073, 22.453442, 17.070620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417295, 22.512243, 16.631662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.384701, 22.141331, 16.777817>,  <20.365145, 21.918783, 16.865509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.384701, 22.141331, 16.777817>,  <20.417295, 22.512243, 16.631662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.384701, 22.141331, 16.777817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271742, -0.373387, -0.886983,
		0.958914, 0.027016, 0.282407,
		-0.081484, -0.927282, 0.365387,
		20.360256, 21.863146, 16.887432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937855, 22.200584, 16.293701>,  <20.417295, 22.512243, 16.631662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937855, 22.200584, 16.293701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.707214, 21.902241, 16.427101>,  <20.568830, 21.723234, 16.507141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.707214, 21.902241, 16.427101>,  <20.937855, 22.200584, 16.293701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.707214, 21.902241, 16.427101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144847, -0.495039, -0.856712,
		0.804083, -0.445676, 0.393477,
		-0.576602, -0.745861, 0.333498,
		20.534233, 21.678482, 16.527151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.566986, 24.013130, 20.897778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.488111, 23.630890, 20.985363>,  <14.440785, 23.401546, 21.037914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.488111, 23.630890, 20.985363>,  <14.566986, 24.013130, 20.897778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.488111, 23.630890, 20.985363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408043, -0.283081, -0.867967,
		0.891413, -0.081807, 0.445746,
		-0.197188, -0.955601, 0.218962,
		14.428954, 23.344210, 21.051052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.106492, 23.645079, 20.624317>,  <14.566986, 24.013130, 20.897778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.106492, 23.645079, 20.624317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.826484, 23.361275, 20.656727>,  <14.658479, 23.190992, 20.676172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.826484, 23.361275, 20.656727>,  <15.106492, 23.645079, 20.624317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826484, 23.361275, 20.656727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232131, -0.333379, -0.913769,
		0.675341, -0.620849, 0.398072,
		-0.700021, -0.709511, 0.081026,
		14.616477, 23.148422, 20.681034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.405843, 22.974131, 20.338146>,  <15.106492, 23.645079, 20.624317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.405843, 22.974131, 20.338146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.007636, 22.967842, 20.300837>,  <14.768712, 22.964069, 20.278450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.007636, 22.967842, 20.300837>,  <15.405843, 22.974131, 20.338146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007636, 22.967842, 20.300837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092652, -0.360680, -0.928076,
		-0.019053, -0.932557, 0.360519,
		-0.995516, -0.015720, -0.093275,
		14.708982, 22.963127, 20.272854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180114, 22.205832, 20.014668>,  <15.405843, 22.974131, 20.338146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180114, 22.205832, 20.014668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.869554, 22.452858, 19.964367>,  <14.683217, 22.601074, 19.934187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.869554, 22.452858, 19.964367>,  <15.180114, 22.205832, 20.014668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.869554, 22.452858, 19.964367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071576, -0.284644, -0.955957,
		-0.626161, -0.733206, 0.265201,
		-0.776401, 0.617566, -0.125754,
		14.636633, 22.638128, 19.926641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705682, 21.808432, 19.671482>,  <15.180114, 22.205832, 20.014668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705682, 21.808432, 19.671482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.565089, 22.175297, 19.596354>,  <14.480734, 22.395416, 19.551277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.565089, 22.175297, 19.596354>,  <14.705682, 21.808432, 19.671482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565089, 22.175297, 19.596354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278468, -0.293963, -0.914353,
		-0.893821, -0.269076, 0.358723,
		-0.351482, 0.917161, -0.187821,
		14.459644, 22.450445, 19.540007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985461, 21.723911, 19.381105>,  <14.705682, 21.808432, 19.671482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985461, 21.723911, 19.381105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.141530, 22.067776, 19.249197>,  <14.235171, 22.274094, 19.170052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.141530, 22.067776, 19.249197>,  <13.985461, 21.723911, 19.381105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141530, 22.067776, 19.249197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264924, -0.238197, -0.934386,
		-0.881805, 0.451936, 0.134806,
		0.390172, 0.859660, -0.329773,
		14.258582, 22.325674, 19.150265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.438337, 22.032471, 18.984425>,  <13.985461, 21.723911, 19.381105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.438337, 22.032471, 18.984425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.786502, 22.185623, 18.860626>,  <13.995400, 22.277514, 18.786346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.786502, 22.185623, 18.860626>,  <13.438337, 22.032471, 18.984425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786502, 22.185623, 18.860626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260254, -0.175796, -0.949402,
		-0.417914, 0.906917, -0.053369,
		0.870411, 0.382879, -0.309496,
		14.047626, 22.300488, 18.767776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.229314, 22.259974, 18.399622>,  <13.438337, 22.032471, 18.984425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.229314, 22.259974, 18.399622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.626178, 22.298054, 18.367237>,  <13.864296, 22.320902, 18.347807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.626178, 22.298054, 18.367237>,  <13.229314, 22.259974, 18.399622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.626178, 22.298054, 18.367237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075303, -0.061613, -0.995255,
		-0.099739, 0.993549, -0.053961,
		0.992160, 0.095203, -0.080962,
		13.923826, 22.326614, 18.342949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.392109, 22.783442, 17.885475>,  <13.229314, 22.259974, 18.399622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.392109, 22.783442, 17.885475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.721652, 22.558544, 17.914143>,  <13.919378, 22.423605, 17.931343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.721652, 22.558544, 17.914143>,  <13.392109, 22.783442, 17.885475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721652, 22.558544, 17.914143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052071, -0.050828, -0.997349,
		0.564398, 0.825407, -0.012598,
		0.823859, -0.562246, 0.071667,
		13.968810, 22.389870, 17.935642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841342, 23.129002, 17.428652>,  <13.392109, 22.783442, 17.885475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841342, 23.129002, 17.428652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.014209, 22.772873, 17.486006>,  <14.117929, 22.559196, 17.520418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.014209, 22.772873, 17.486006>,  <13.841342, 23.129002, 17.428652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.014209, 22.772873, 17.486006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276581, -0.020477, -0.960773,
		0.858333, 0.454871, 0.237396,
		0.432167, -0.890322, 0.143384,
		14.143859, 22.505775, 17.529020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514997, 23.142191, 17.101234>,  <13.841342, 23.129002, 17.428652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514997, 23.142191, 17.101234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.428243, 22.753040, 17.133413>,  <14.376190, 22.519550, 17.152721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.428243, 22.753040, 17.133413>,  <14.514997, 23.142191, 17.101234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428243, 22.753040, 17.133413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199405, -0.124824, -0.971935,
		0.955614, -0.194758, 0.221069,
		-0.216887, -0.972876, 0.080448,
		14.363176, 22.461178, 17.157547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060380, 22.837822, 16.732286>,  <14.514997, 23.142191, 17.101234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.060380, 22.837822, 16.732286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.790935, 22.545303, 16.775082>,  <14.629267, 22.369791, 16.800758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.790935, 22.545303, 16.775082>,  <15.060380, 22.837822, 16.732286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.790935, 22.545303, 16.775082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228306, -0.343567, -0.910954,
		0.702937, -0.589206, 0.398391,
		-0.673614, -0.731299, 0.106987,
		14.588850, 22.325914, 16.807178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.751228, 22.478107, 16.910625>,  <15.060380, 22.837822, 16.732286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.751228, 22.478107, 16.910625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.951867, 22.777683, 16.737425>,  <16.072250, 22.957430, 16.633505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.951867, 22.777683, 16.737425>,  <15.751228, 22.478107, 16.910625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951867, 22.777683, 16.737425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437951, 0.211810, 0.873691,
		0.746056, -0.627872, -0.221757,
		0.501596, 0.748941, -0.433000,
		16.102346, 23.002365, 16.607525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.467381, 22.417850, 17.183235>,  <15.751228, 22.478107, 16.910625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.467381, 22.417850, 17.183235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.394073, 22.792465, 17.063692>,  <16.350090, 23.017233, 16.991966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.394073, 22.792465, 17.063692>,  <16.467381, 22.417850, 17.183235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394073, 22.792465, 17.063692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102173, 0.320504, 0.941720,
		0.977739, 0.142052, -0.154427,
		-0.183268, 0.936535, -0.298856,
		16.339092, 23.073425, 16.974035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942171, 22.826080, 17.603157>,  <16.467381, 22.417850, 17.183235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942171, 22.826080, 17.603157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.723949, 23.131401, 17.464743>,  <16.593016, 23.314594, 17.381695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.723949, 23.131401, 17.464743>,  <16.942171, 22.826080, 17.603157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723949, 23.131401, 17.464743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166047, 0.503153, 0.848095,
		0.821461, 0.405224, -0.401241,
		-0.545554, 0.763302, -0.346034,
		16.560284, 23.360392, 17.360931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.315720, 23.365597, 17.572721>,  <16.942171, 22.826080, 17.603157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.315720, 23.365597, 17.572721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.936756, 23.478504, 17.633041>,  <16.709377, 23.546247, 17.669233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.936756, 23.478504, 17.633041>,  <17.315720, 23.365597, 17.572721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936756, 23.478504, 17.633041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266175, 0.433416, 0.860988,
		0.177669, 0.855848, -0.485755,
		-0.947409, 0.282267, 0.150801,
		16.652533, 23.563185, 17.678282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.387295, 24.060293, 17.731411>,  <17.315720, 23.365597, 17.572721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.387295, 24.060293, 17.731411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.030170, 23.939537, 17.865129>,  <16.815897, 23.867083, 17.945360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.030170, 23.939537, 17.865129>,  <17.387295, 24.060293, 17.731411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030170, 23.939537, 17.865129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179521, 0.442189, 0.878772,
		-0.413114, 0.844589, -0.340595,
		-0.892810, -0.301890, 0.334296,
		16.762327, 23.848970, 17.965418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.183815, 24.651480, 18.078318>,  <17.387295, 24.060293, 17.731411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.183815, 24.651480, 18.078318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.946041, 24.369740, 18.233513>,  <16.803377, 24.200695, 18.326630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.946041, 24.369740, 18.233513>,  <17.183815, 24.651480, 18.078318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946041, 24.369740, 18.233513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129296, 0.392492, 0.910622,
		-0.793679, 0.591473, -0.142242,
		-0.594437, -0.704351, 0.387988,
		16.767710, 24.158434, 18.349909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720499, 24.991707, 18.600065>,  <17.183815, 24.651480, 18.078318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.720499, 24.991707, 18.600065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.729771, 24.599232, 18.676727>,  <16.735332, 24.363747, 18.722725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.729771, 24.599232, 18.676727>,  <16.720499, 24.991707, 18.600065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729771, 24.599232, 18.676727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332783, 0.188344, 0.924003,
		-0.942719, 0.042362, 0.330889,
		0.023178, -0.981189, 0.191653,
		16.736725, 24.304874, 18.734222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.406784, 24.961182, 19.254410>,  <16.720499, 24.991707, 18.600065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.406784, 24.961182, 19.254410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.598778, 24.612045, 19.219160>,  <16.713974, 24.402563, 19.198011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.598778, 24.612045, 19.219160>,  <16.406784, 24.961182, 19.254410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598778, 24.612045, 19.219160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264695, 0.048321, 0.963121,
		-0.836392, -0.485608, 0.254230,
		0.479983, -0.872840, -0.088123,
		16.742773, 24.350193, 19.192722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.035696, 24.488468, 19.669619>,  <16.406784, 24.961182, 19.254410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.035696, 24.488468, 19.669619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.400242, 24.332550, 19.616745>,  <16.618969, 24.238998, 19.585020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.400242, 24.332550, 19.616745>,  <16.035696, 24.488468, 19.669619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400242, 24.332550, 19.616745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144064, 0.001257, 0.989568,
		-0.385565, -0.920900, 0.057302,
		0.911364, -0.389798, -0.132184,
		16.673651, 24.215611, 19.577089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104469, 23.985813, 20.181681>,  <16.035696, 24.488468, 19.669619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.104469, 23.985813, 20.181681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.488846, 24.046700, 20.089226>,  <16.719471, 24.083231, 20.033752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.488846, 24.046700, 20.089226>,  <16.104469, 23.985813, 20.181681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488846, 24.046700, 20.089226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244083, -0.072448, 0.967044,
		0.130457, -0.985688, -0.106772,
		0.960940, 0.152219, -0.231139,
		16.777128, 24.092365, 20.019884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421810, 23.577280, 20.681547>,  <16.104469, 23.985813, 20.181681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.421810, 23.577280, 20.681547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.698677, 23.816818, 20.520407>,  <16.864798, 23.960541, 20.423721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.698677, 23.816818, 20.520407>,  <16.421810, 23.577280, 20.681547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698677, 23.816818, 20.520407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324541, 0.240309, 0.914836,
		0.644654, -0.763961, -0.028015,
		0.692167, 0.598844, -0.402853,
		16.906326, 23.996471, 20.399551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028400, 23.463322, 21.175489>,  <16.421810, 23.577280, 20.681547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028400, 23.463322, 21.175489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.068626, 23.808159, 20.976820>,  <17.092762, 24.015060, 20.857618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.068626, 23.808159, 20.976820>,  <17.028400, 23.463322, 21.175489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068626, 23.808159, 20.976820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353525, 0.435664, 0.827778,
		0.930003, -0.258833, -0.260958,
		0.100566, 0.862091, -0.496673,
		17.098797, 24.066786, 20.827818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680935, 23.647455, 21.368156>,  <17.028400, 23.463322, 21.175489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680935, 23.647455, 21.368156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.494793, 23.981514, 21.250868>,  <17.383108, 24.181950, 21.180494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.494793, 23.981514, 21.250868>,  <17.680935, 23.647455, 21.368156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494793, 23.981514, 21.250868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469053, 0.513615, 0.718463,
		0.750623, 0.196804, -0.630740,
		-0.465354, 0.835145, -0.293220,
		17.355186, 24.232058, 21.162901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.184738, 24.187616, 21.356476>,  <17.680935, 23.647455, 21.368156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.184738, 24.187616, 21.356476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.834221, 24.374081, 21.405136>,  <17.623911, 24.485960, 21.434332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.834221, 24.374081, 21.405136>,  <18.184738, 24.187616, 21.356476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834221, 24.374081, 21.405136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375529, 0.502730, 0.778614,
		0.301802, 0.727980, -0.615598,
		-0.876295, 0.466162, 0.121653,
		17.571333, 24.513929, 21.441631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955290, 24.102461, 21.153324>,  <18.184738, 24.187616, 21.356476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955290, 24.102461, 21.153324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.211040, 23.832813, 21.301249>,  <19.364491, 23.671024, 21.390003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.211040, 23.832813, 21.301249>,  <18.955290, 24.102461, 21.153324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.211040, 23.832813, 21.301249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329871, -0.193960, -0.923885,
		0.694538, 0.712701, 0.098359,
		0.639376, -0.674120, 0.369812,
		19.402853, 23.630577, 21.412191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500410, 24.178827, 20.741970>,  <18.955290, 24.102461, 21.153324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500410, 24.178827, 20.741970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.562557, 23.822323, 20.912388>,  <19.599846, 23.608419, 21.014639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.562557, 23.822323, 20.912388>,  <19.500410, 24.178827, 20.741970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562557, 23.822323, 20.912388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445548, -0.321701, -0.835461,
		0.881674, 0.319627, 0.347117,
		0.155368, -0.891261, 0.426044,
		19.609167, 23.554945, 21.040201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993231, 23.885777, 20.252439>,  <19.500410, 24.178827, 20.741970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.993231, 23.885777, 20.252439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.922756, 23.546959, 20.453030>,  <19.880472, 23.343668, 20.573383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.922756, 23.546959, 20.453030>,  <19.993231, 23.885777, 20.252439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.922756, 23.546959, 20.453030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138937, -0.525743, -0.839221,
		0.974502, -0.078185, 0.210314,
		-0.176186, -0.847043, 0.501475,
		19.869900, 23.292847, 20.603472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.584377, 23.407089, 20.256010>,  <19.993231, 23.885777, 20.252439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.584377, 23.407089, 20.256010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.258270, 23.182804, 20.313887>,  <20.062605, 23.048233, 20.348612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.258270, 23.182804, 20.313887>,  <20.584377, 23.407089, 20.256010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.258270, 23.182804, 20.313887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195615, -0.501840, -0.842550,
		0.545042, -0.658602, 0.518819,
		-0.815270, -0.560714, 0.144692,
		20.013689, 23.014589, 20.357294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.885820, 22.757864, 20.315086>,  <20.584377, 23.407089, 20.256010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.885820, 22.757864, 20.315086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.505322, 22.729378, 20.195051>,  <20.277021, 22.712286, 20.123030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.505322, 22.729378, 20.195051>,  <20.885820, 22.757864, 20.315086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505322, 22.729378, 20.195051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304409, -0.373256, -0.876365,
		-0.049597, -0.924991, 0.376739,
		-0.951250, -0.071217, -0.300088,
		20.219946, 22.708012, 20.105024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857759, 22.069679, 20.007231>,  <20.885820, 22.757864, 20.315086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857759, 22.069679, 20.007231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.537357, 22.254093, 19.854477>,  <20.345116, 22.364740, 19.762825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.537357, 22.254093, 19.854477>,  <20.857759, 22.069679, 20.007231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537357, 22.254093, 19.854477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080230, -0.549481, -0.831645,
		-0.593257, -0.696791, 0.403148,
		-0.801005, 0.461035, -0.381887,
		20.297054, 22.392403, 19.739912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.369898, 21.530857, 19.694714>,  <20.857759, 22.069679, 20.007231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.369898, 21.530857, 19.694714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.258198, 21.876881, 19.528006>,  <20.191177, 22.084494, 19.427980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.258198, 21.876881, 19.528006>,  <20.369898, 21.530857, 19.694714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.258198, 21.876881, 19.528006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102142, -0.404813, -0.908677,
		-0.954771, -0.296316, 0.024685,
		-0.279248, 0.865057, -0.416771,
		20.174423, 22.136398, 19.402975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.831501, 21.215908, 19.951683>,  <20.369898, 21.530857, 19.694714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.831501, 21.215908, 19.951683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.900295, 20.822445, 19.972990>,  <19.941572, 20.586367, 19.985775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.900295, 20.822445, 19.972990>,  <19.831501, 21.215908, 19.951683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.900295, 20.822445, 19.972990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253136, 0.008128, 0.967396,
		-0.952020, -0.179862, -0.247602,
		0.171985, -0.983658, 0.053268,
		19.951891, 20.527348, 19.988970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259876, 20.992712, 20.212437>,  <19.831501, 21.215908, 19.951683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.259876, 20.992712, 20.212437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571980, 20.764389, 20.314709>,  <19.759241, 20.627396, 20.376072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571980, 20.764389, 20.314709>,  <19.259876, 20.992712, 20.212437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571980, 20.764389, 20.314709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217543, 0.135591, 0.966587,
		-0.586405, -0.809810, -0.018380,
		0.780259, -0.570809, 0.255680,
		19.806057, 20.593145, 20.391413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062069, 20.779491, 20.789970>,  <19.259876, 20.992712, 20.212437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062069, 20.779491, 20.789970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.446297, 20.669872, 20.808746>,  <19.676834, 20.604101, 20.820013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.446297, 20.669872, 20.808746>,  <19.062069, 20.779491, 20.789970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.446297, 20.669872, 20.808746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046012, 0.009819, 0.998893,
		-0.274207, -0.961666, -0.003178,
		0.960569, -0.274049, 0.046941,
		19.734468, 20.587658, 20.822828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.106911, 20.083244, 21.279556>,  <19.062069, 20.779491, 20.789970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.106911, 20.083244, 21.279556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.457703, 20.275055, 21.267166>,  <19.668179, 20.390141, 21.259731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.457703, 20.275055, 21.267166>,  <19.106911, 20.083244, 21.279556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.457703, 20.275055, 21.267166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008354, 0.049241, 0.998752,
		0.480452, -0.876146, 0.039177,
		0.876981, 0.479525, -0.030977,
		19.720797, 20.418913, 21.257874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544527, 19.725510, 21.680254>,  <19.106911, 20.083244, 21.279556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544527, 19.725510, 21.680254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.710678, 20.088707, 21.658300>,  <19.810369, 20.306625, 21.645128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.710678, 20.088707, 21.658300>,  <19.544527, 19.725510, 21.680254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.710678, 20.088707, 21.658300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096492, 0.103977, 0.989888,
		0.904516, -0.405883, 0.130803,
		0.415379, 0.907991, -0.054884,
		19.835293, 20.361105, 21.641834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812418, 19.681120, 22.247972>,  <19.544527, 19.725510, 21.680254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812418, 19.681120, 22.247972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.873814, 20.071098, 22.183577>,  <19.910650, 20.305086, 22.144939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.873814, 20.071098, 22.183577>,  <19.812418, 19.681120, 22.247972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.873814, 20.071098, 22.183577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062998, 0.172242, 0.983038,
		0.986140, -0.140743, 0.087857,
		0.153488, 0.974948, -0.160988,
		19.919861, 20.363583, 22.135281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.306259, 19.735193, 22.781410>,  <19.812418, 19.681120, 22.247972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.306259, 19.735193, 22.781410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.137783, 20.089081, 22.701544>,  <20.036697, 20.301414, 22.653624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.137783, 20.089081, 22.701544>,  <20.306259, 19.735193, 22.781410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.137783, 20.089081, 22.701544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073920, 0.252898, 0.964665,
		0.903954, 0.391550, -0.171918,
		-0.421192, 0.884721, -0.199665,
		20.011425, 20.354498, 22.641644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.788172, 20.174458, 23.024582>,  <20.306259, 19.735193, 22.781410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.788172, 20.174458, 23.024582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.436047, 20.364143, 23.019400>,  <20.224771, 20.477955, 23.016291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.436047, 20.364143, 23.019400>,  <20.788172, 20.174458, 23.024582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.436047, 20.364143, 23.019400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118949, 0.247088, 0.961665,
		0.459236, 0.845026, -0.273923,
		-0.880315, 0.474214, -0.012957,
		20.171951, 20.506407, 23.015512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.897318, 20.804255, 23.291090>,  <20.788172, 20.174458, 23.024582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.897318, 20.804255, 23.291090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.515068, 20.709610, 23.361286>,  <20.285719, 20.652822, 23.403404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.515068, 20.709610, 23.361286>,  <20.897318, 20.804255, 23.291090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515068, 20.709610, 23.361286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100897, 0.296790, 0.949598,
		-0.276769, 0.925165, -0.259747,
		-0.955625, -0.236611, 0.175488,
		20.228380, 20.638626, 23.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.630447, 14.989603, 8.114075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.237560, 15.056850, 8.147500>,  <20.001827, 15.097198, 8.167555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.237560, 15.056850, 8.147500>,  <20.630447, 14.989603, 8.114075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.237560, 15.056850, 8.147500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170006, 0.607640, 0.775804,
		0.079650, 0.776215, -0.625417,
		-0.982219, 0.168118, 0.083562,
		19.942894, 15.107285, 8.172568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461491, 15.716363, 8.084208>,  <20.630447, 14.989603, 8.114075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.461491, 15.716363, 8.084208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.178833, 15.532631, 8.299493>,  <20.009239, 15.422392, 8.428664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.178833, 15.532631, 8.299493>,  <20.461491, 15.716363, 8.084208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.178833, 15.532631, 8.299493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090401, 0.695808, 0.712516,
		-0.701773, 0.552149, -0.450163,
		-0.706642, -0.459329, 0.538214,
		19.966841, 15.394833, 8.460957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.136826, 16.263895, 8.331501>,  <20.461491, 15.716363, 8.084208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.136826, 16.263895, 8.331501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.010910, 15.976192, 8.579237>,  <19.935362, 15.803572, 8.727879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.010910, 15.976192, 8.579237>,  <20.136826, 16.263895, 8.331501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010910, 15.976192, 8.579237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018550, 0.647725, 0.761648,
		-0.948981, 0.251246, -0.190554,
		-0.314787, -0.719255, 0.619340,
		19.916473, 15.760416, 8.765038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654413, 16.587437, 8.836289>,  <20.136826, 16.263895, 8.331501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654413, 16.587437, 8.836289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.768490, 16.239075, 8.996383>,  <19.836937, 16.030058, 9.092439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.768490, 16.239075, 8.996383>,  <19.654413, 16.587437, 8.836289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768490, 16.239075, 8.996383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015746, 0.421776, 0.906563,
		-0.958341, -0.252244, 0.134001,
		0.285194, -0.870907, 0.400233,
		19.854048, 15.977803, 9.116452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172070, 16.374229, 9.304673>,  <19.654413, 16.587437, 8.836289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172070, 16.374229, 9.304673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.520012, 16.206905, 9.409265>,  <19.728777, 16.106512, 9.472019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.520012, 16.206905, 9.409265>,  <19.172070, 16.374229, 9.304673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520012, 16.206905, 9.409265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005022, 0.522514, 0.852616,
		-0.493282, -0.742965, 0.452410,
		0.869855, -0.418308, 0.261478,
		19.780968, 16.081413, 9.487708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061949, 16.212952, 9.948655>,  <19.172070, 16.374229, 9.304673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061949, 16.212952, 9.948655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.461544, 16.197586, 9.958024>,  <19.701302, 16.188368, 9.963645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.461544, 16.197586, 9.958024>,  <19.061949, 16.212952, 9.948655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.461544, 16.197586, 9.958024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005463, 0.413184, 0.910631,
		-0.044658, -0.909837, 0.412556,
		0.998987, -0.038413, 0.023422,
		19.761240, 16.186062, 9.965051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.191883, 16.107830, 10.626182>,  <19.061949, 16.212952, 9.948655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.191883, 16.107830, 10.626182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.557026, 16.207985, 10.497186>,  <19.776112, 16.268078, 10.419788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.557026, 16.207985, 10.497186>,  <19.191883, 16.107830, 10.626182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557026, 16.207985, 10.497186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254920, 0.267449, 0.929240,
		0.318924, -0.930471, 0.180312,
		0.912855, 0.250391, -0.322491,
		19.830883, 16.283102, 10.400438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.672802, 15.651698, 11.082104>,  <19.191883, 16.107830, 10.626182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.672802, 15.651698, 11.082104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.835415, 15.975765, 10.913174>,  <19.932983, 16.170206, 10.811815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.835415, 15.975765, 10.913174>,  <19.672802, 15.651698, 11.082104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.835415, 15.975765, 10.913174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286442, 0.325920, 0.900959,
		0.867573, -0.487241, -0.099569,
		0.406533, 0.810168, -0.422325,
		19.957375, 16.218815, 10.786476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.260778, 15.721090, 11.455300>,  <19.672802, 15.651698, 11.082104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.260778, 15.721090, 11.455300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.195057, 16.078251, 11.287620>,  <20.155624, 16.292547, 11.187012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.195057, 16.078251, 11.287620>,  <20.260778, 15.721090, 11.455300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195057, 16.078251, 11.287620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335484, 0.450226, 0.827494,
		0.927607, -0.004675, -0.373528,
		-0.164304, 0.892902, -0.419201,
		20.145765, 16.346121, 11.161860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.760775, 16.094734, 11.674294>,  <20.260778, 15.721090, 11.455300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.760775, 16.094734, 11.674294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.518581, 16.378143, 11.529305>,  <20.373266, 16.548189, 11.442311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.518581, 16.378143, 11.529305>,  <20.760775, 16.094734, 11.674294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.518581, 16.378143, 11.529305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129711, 0.537213, 0.833413,
		0.785216, 0.457601, -0.417177,
		-0.605483, 0.708522, -0.362473,
		20.336937, 16.590700, 11.420563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.087084, 16.655378, 11.827852>,  <20.760775, 16.094734, 11.674294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.087084, 16.655378, 11.827852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.705841, 16.767117, 11.781290>,  <20.477095, 16.834160, 11.753353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.705841, 16.767117, 11.781290>,  <21.087084, 16.655378, 11.827852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705841, 16.767117, 11.781290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056903, 0.543210, 0.837666,
		0.297231, 0.791763, -0.533633,
		-0.953108, 0.279346, -0.116406,
		20.419909, 16.850920, 11.746368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.069803, 17.322338, 12.145867>,  <21.087084, 16.655378, 11.827852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.069803, 17.322338, 12.145867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.688076, 17.202824, 12.144843>,  <20.459040, 17.131115, 12.144228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.688076, 17.202824, 12.144843>,  <21.069803, 17.322338, 12.145867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.688076, 17.202824, 12.144843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115635, 0.361406, 0.925211,
		-0.275513, 0.883240, -0.379446,
		-0.954317, -0.298784, -0.002561,
		20.401781, 17.113188, 12.144074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.133005, 17.781185, 11.544394>,  <21.069803, 17.322338, 12.145867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.133005, 17.781185, 11.544394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.203259, 18.167042, 11.465783>,  <21.245411, 18.398556, 11.418616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.203259, 18.167042, 11.465783>,  <21.133005, 17.781185, 11.544394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.203259, 18.167042, 11.465783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252181, -0.237056, -0.938194,
		-0.951607, 0.115220, -0.284900,
		0.175635, 0.964639, -0.196528,
		21.255949, 18.456434, 11.406825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.690924, 17.978884, 11.012787>,  <21.133005, 17.781185, 11.544394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.690924, 17.978884, 11.012787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.958752, 18.275551, 10.996746>,  <21.119448, 18.453550, 10.987122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.958752, 18.275551, 10.996746>,  <20.690924, 17.978884, 11.012787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.958752, 18.275551, 10.996746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019518, -0.071542, -0.997247,
		-0.742494, 0.666942, -0.062378,
		0.669569, 0.741667, -0.040102,
		21.159622, 18.498051, 10.984715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485523, 18.388054, 10.452049>,  <20.690924, 17.978884, 11.012787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485523, 18.388054, 10.452049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.862522, 18.494862, 10.532446>,  <21.088722, 18.558947, 10.580684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.862522, 18.494862, 10.532446>,  <20.485523, 18.388054, 10.452049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.862522, 18.494862, 10.532446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197993, 0.038400, -0.979451,
		-0.269251, 0.962926, -0.016676,
		0.942498, 0.267020, 0.200992,
		21.145271, 18.574968, 10.592744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.717922, 18.837860, 9.954858>,  <20.485523, 18.388054, 10.452049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.717922, 18.837860, 9.954858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.065117, 18.692917, 10.090679>,  <21.273434, 18.605951, 10.172172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.065117, 18.692917, 10.090679>,  <20.717922, 18.837860, 9.954858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065117, 18.692917, 10.090679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318678, -0.117949, -0.940496,
		0.380846, 0.924546, 0.013097,
		0.867987, -0.362358, 0.339553,
		21.325512, 18.584209, 10.192545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.317492, 19.167051, 9.592987>,  <20.717922, 18.837860, 9.954858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.317492, 19.167051, 9.592987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.456425, 18.814850, 9.722030>,  <21.539785, 18.603529, 9.799455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.456425, 18.814850, 9.722030>,  <21.317492, 19.167051, 9.592987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.456425, 18.814850, 9.722030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419559, -0.161753, -0.893200,
		0.838648, 0.445591, 0.313240,
		0.347334, -0.880503, 0.322605,
		21.560625, 18.550699, 9.818811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056332, 19.180153, 9.427829>,  <21.317492, 19.167051, 9.592987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056332, 19.180153, 9.427829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.954708, 18.799026, 9.494273>,  <21.893734, 18.570351, 9.534140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.954708, 18.799026, 9.494273>,  <22.056332, 19.180153, 9.427829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.954708, 18.799026, 9.494273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457018, -0.269628, -0.847606,
		0.852402, -0.139425, 0.503956,
		-0.254058, -0.952818, 0.166111,
		21.878490, 18.513182, 9.544106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.651659, 18.788752, 9.067494>,  <22.056332, 19.180153, 9.427829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.651659, 18.788752, 9.067494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.361706, 18.520039, 9.128489>,  <22.187735, 18.358810, 9.165085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.361706, 18.520039, 9.128489>,  <22.651659, 18.788752, 9.067494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.361706, 18.520039, 9.128489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095815, -0.317526, -0.943396,
		0.682176, -0.669242, 0.294536,
		-0.724883, -0.671783, 0.152485,
		22.144241, 18.318504, 9.174234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.922073, 18.209276, 8.799621>,  <22.651659, 18.788752, 9.067494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.922073, 18.209276, 8.799621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.522419, 18.197296, 8.811168>,  <22.282627, 18.190107, 8.818096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.522419, 18.197296, 8.811168>,  <22.922073, 18.209276, 8.799621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522419, 18.197296, 8.811168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023398, -0.169165, -0.985310,
		0.034395, -0.985132, 0.168317,
		-0.999134, -0.029952, 0.028869,
		22.222679, 18.188311, 8.819828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.702879, 17.759054, 8.312297>,  <22.922073, 18.209276, 8.799621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.702879, 17.759054, 8.312297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.367027, 17.962254, 8.389199>,  <22.165516, 18.084173, 8.435341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.367027, 17.962254, 8.389199>,  <22.702879, 17.759054, 8.312297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.367027, 17.962254, 8.389199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268723, -0.080898, -0.959814,
		-0.472031, -0.857551, 0.204435,
		-0.839628, 0.507998, 0.192257,
		22.115139, 18.114653, 8.446877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.080868, 17.322908, 7.986892>,  <22.702879, 17.759054, 8.312297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.080868, 17.322908, 7.986892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.959538, 17.700230, 8.040818>,  <21.886740, 17.926622, 8.073174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.959538, 17.700230, 8.040818>,  <22.080868, 17.322908, 7.986892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959538, 17.700230, 8.040818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348713, 0.021780, -0.936976,
		-0.886787, -0.331222, 0.322335,
		-0.303327, 0.943301, 0.134816,
		21.868540, 17.983219, 8.081263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.499437, 17.320940, 7.628683>,  <22.080868, 17.322908, 7.986892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.499437, 17.320940, 7.628683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.595955, 17.707897, 7.659484>,  <21.653866, 17.940071, 7.677965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.595955, 17.707897, 7.659484>,  <21.499437, 17.320940, 7.628683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595955, 17.707897, 7.659484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336730, 0.157879, -0.928271,
		-0.910159, 0.198057, 0.363845,
		0.241294, 0.967392, 0.077003,
		21.668343, 17.998116, 7.682585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.861593, 17.718977, 7.349745>,  <21.499437, 17.320940, 7.628683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.861593, 17.718977, 7.349745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.162678, 17.982151, 7.359053>,  <21.343328, 18.140057, 7.364637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.162678, 17.982151, 7.359053>,  <20.861593, 17.718977, 7.349745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162678, 17.982151, 7.359053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352225, 0.432320, -0.830083,
		-0.556202, 0.616618, 0.557155,
		0.752713, 0.657937, 0.023269,
		21.388493, 18.179533, 7.366033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453470, 18.293125, 7.243775>,  <20.861593, 17.718977, 7.349745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453470, 18.293125, 7.243775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.832329, 18.368843, 7.140173>,  <21.059643, 18.414274, 7.078012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.832329, 18.368843, 7.140173>,  <20.453470, 18.293125, 7.243775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.832329, 18.368843, 7.140173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318266, 0.453063, -0.832731,
		-0.040285, 0.871150, 0.489362,
		0.947145, 0.189294, -0.259006,
		21.116472, 18.425631, 7.062471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385828, 19.032990, 7.002904>,  <20.453470, 18.293125, 7.243775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.385828, 19.032990, 7.002904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.705811, 18.854366, 6.842577>,  <20.897800, 18.747192, 6.746380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.705811, 18.854366, 6.842577>,  <20.385828, 19.032990, 7.002904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705811, 18.854366, 6.842577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285521, 0.304236, -0.908800,
		0.527778, 0.841442, 0.115873,
		0.799955, -0.446560, -0.400819,
		20.945797, 18.720398, 6.722332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.926193, 19.497908, 6.720733>,  <20.385828, 19.032990, 7.002904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.926193, 19.497908, 6.720733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.549431, 19.550735, 6.597201>,  <19.323374, 19.582432, 6.523082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.549431, 19.550735, 6.597201>,  <19.926193, 19.497908, 6.720733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549431, 19.550735, 6.597201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203782, 0.506204, 0.837992,
		0.267003, 0.852242, -0.449882,
		-0.941904, 0.132068, -0.308829,
		19.266859, 19.590357, 6.504552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.715759, 20.296188, 6.759789>,  <19.926193, 19.497908, 6.720733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.715759, 20.296188, 6.759789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.373684, 20.090023, 6.781712>,  <19.168438, 19.966324, 6.794866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.373684, 20.090023, 6.781712>,  <19.715759, 20.296188, 6.759789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373684, 20.090023, 6.781712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308279, 0.590793, 0.745605,
		-0.416674, 0.620736, -0.664131,
		-0.855188, -0.515412, 0.054808,
		19.117128, 19.935400, 6.798154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.206411, 20.796885, 6.642842>,  <19.715759, 20.296188, 6.759789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.206411, 20.796885, 6.642842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.083778, 20.489075, 6.866928>,  <19.010199, 20.304388, 7.001379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.083778, 20.489075, 6.866928>,  <19.206411, 20.796885, 6.642842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083778, 20.489075, 6.866928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356737, 0.638552, 0.681902,
		-0.882466, 0.009210, -0.470286,
		-0.306583, -0.769524, 0.560214,
		18.991804, 20.258217, 7.034992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825066, 21.114573, 7.023818>,  <19.206411, 20.796885, 6.642842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825066, 21.114573, 7.023818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.848095, 20.757381, 7.202379>,  <18.861914, 20.543066, 7.309516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.848095, 20.757381, 7.202379>,  <18.825066, 21.114573, 7.023818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848095, 20.757381, 7.202379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377695, 0.394426, 0.837720,
		-0.924138, -0.216835, -0.314565,
		0.057574, -0.892979, 0.446402,
		18.865368, 20.489489, 7.336300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166660, 20.983742, 7.315602>,  <18.825066, 21.114573, 7.023818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166660, 20.983742, 7.315602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.424843, 20.771549, 7.535413>,  <18.579752, 20.644234, 7.667299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.424843, 20.771549, 7.535413>,  <18.166660, 20.983742, 7.315602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424843, 20.771549, 7.535413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519261, 0.222864, 0.825045,
		-0.560139, -0.817877, -0.131609,
		0.645455, -0.530480, 0.549527,
		18.618479, 20.612406, 7.700271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.828358, 20.589317, 7.711695>,  <18.166660, 20.983742, 7.315602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.828358, 20.589317, 7.711695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.164371, 20.596043, 7.928603>,  <18.365980, 20.600079, 8.058748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.164371, 20.596043, 7.928603>,  <17.828358, 20.589317, 7.711695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.164371, 20.596043, 7.928603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517874, 0.322753, 0.792235,
		-0.161698, -0.946334, 0.279832,
		0.840036, 0.016815, 0.542270,
		18.416382, 20.601088, 8.091284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617891, 20.379202, 8.317890>,  <17.828358, 20.589317, 7.711695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617891, 20.379202, 8.317890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.975163, 20.508377, 8.443075>,  <18.189526, 20.585882, 8.518186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.975163, 20.508377, 8.443075>,  <17.617891, 20.379202, 8.317890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975163, 20.508377, 8.443075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401260, 0.258099, 0.878849,
		0.203037, -0.910547, 0.360110,
		0.893178, 0.322937, 0.312963,
		18.243116, 20.605259, 8.536963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780743, 20.026278, 8.942093>,  <17.617891, 20.379202, 8.317890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780743, 20.026278, 8.942093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.986698, 20.369175, 8.943886>,  <18.110271, 20.574913, 8.944962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.986698, 20.369175, 8.943886>,  <17.780743, 20.026278, 8.942093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986698, 20.369175, 8.943886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388900, 0.228920, 0.892386,
		0.763967, -0.461223, 0.451251,
		0.514889, 0.857245, 0.004482,
		18.141165, 20.626348, 8.945230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919167, 20.120831, 9.741299>,  <17.780743, 20.026278, 8.942093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919167, 20.120831, 9.741299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.028954, 20.464375, 9.568314>,  <18.094826, 20.670502, 9.464522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.028954, 20.464375, 9.568314>,  <17.919167, 20.120831, 9.741299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028954, 20.464375, 9.568314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315695, 0.505288, 0.803132,
		0.908298, -0.083906, 0.409823,
		0.274466, 0.858862, -0.432463,
		18.111294, 20.722033, 9.438575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424559, 20.438845, 10.099195>,  <17.919167, 20.120831, 9.741299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424559, 20.438845, 10.099195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.218060, 20.714809, 9.896213>,  <18.094160, 20.880388, 9.774423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.218060, 20.714809, 9.896213>,  <18.424559, 20.438845, 10.099195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218060, 20.714809, 9.896213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148661, 0.511338, 0.846424,
		0.843437, 0.512404, -0.161415,
		-0.516249, 0.689910, -0.507456,
		18.063185, 20.921782, 9.743976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656910, 21.051504, 10.390530>,  <18.424559, 20.438845, 10.099195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656910, 21.051504, 10.390530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.319363, 21.155052, 10.202540>,  <18.116835, 21.217180, 10.089746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.319363, 21.155052, 10.202540>,  <18.656910, 21.051504, 10.390530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.319363, 21.155052, 10.202540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254178, 0.578524, 0.775051,
		0.472526, 0.773497, -0.422399,
		-0.843868, 0.258868, -0.469973,
		18.066202, 21.232712, 10.061548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708719, 21.730282, 10.659165>,  <18.656910, 21.051504, 10.390530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708719, 21.730282, 10.659165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.344765, 21.657051, 10.510254>,  <18.126392, 21.613113, 10.420907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.344765, 21.657051, 10.510254>,  <18.708719, 21.730282, 10.659165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344765, 21.657051, 10.510254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393189, 0.666784, 0.633088,
		0.132328, 0.722414, -0.678680,
		-0.909885, -0.183075, -0.372280,
		18.071798, 21.602129, 10.398570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370827, 22.356371, 10.495664>,  <18.708719, 21.730282, 10.659165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370827, 22.356371, 10.495664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.076126, 22.090336, 10.544408>,  <17.899305, 21.930714, 10.573654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.076126, 22.090336, 10.544408>,  <18.370827, 22.356371, 10.495664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.076126, 22.090336, 10.544408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407201, 0.580303, 0.705291,
		-0.539798, 0.470004, -0.698366,
		-0.736753, -0.665090, 0.121860,
		17.855101, 21.890808, 10.580966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.624571, 22.699173, 10.460602>,  <18.370827, 22.356371, 10.495664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.624571, 22.699173, 10.460602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.580574, 22.360264, 10.668460>,  <17.554176, 22.156918, 10.793175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.580574, 22.360264, 10.668460>,  <17.624571, 22.699173, 10.460602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.580574, 22.360264, 10.668460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342683, 0.523088, 0.780350,
		-0.932990, -0.092241, -0.347882,
		-0.109992, -0.847272, 0.519645,
		17.547577, 22.106083, 10.824353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029573, 22.833513, 10.746314>,  <17.624571, 22.699173, 10.460602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029573, 22.833513, 10.746314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.176186, 22.519390, 10.945891>,  <17.264153, 22.330915, 11.065638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.176186, 22.519390, 10.945891>,  <17.029573, 22.833513, 10.746314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.176186, 22.519390, 10.945891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476529, 0.302137, 0.825611,
		-0.799109, -0.540373, -0.263480,
		0.366531, -0.785309, 0.498943,
		17.286144, 22.283798, 11.095574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452593, 22.491373, 11.162835>,  <17.029573, 22.833513, 10.746314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452593, 22.491373, 11.162835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.773994, 22.354927, 11.357984>,  <16.966835, 22.273060, 11.475073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.773994, 22.354927, 11.357984>,  <16.452593, 22.491373, 11.162835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773994, 22.354927, 11.357984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441069, 0.209258, 0.872737,
		-0.399796, -0.916433, 0.017684,
		0.803506, -0.341117, 0.487871,
		17.015047, 22.252592, 11.504345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155449, 22.252781, 11.703970>,  <16.452593, 22.491373, 11.162835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155449, 22.252781, 11.703970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.541759, 22.262402, 11.807276>,  <16.773546, 22.268173, 11.869259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.541759, 22.262402, 11.807276>,  <16.155449, 22.252781, 11.703970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.541759, 22.262402, 11.807276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257008, 0.223138, 0.940296,
		-0.035014, -0.974490, 0.221682,
		0.965774, 0.024051, 0.258264,
		16.831491, 22.269617, 11.884755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148388, 21.882938, 12.252598>,  <16.155449, 22.252781, 11.703970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148388, 21.882938, 12.252598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.461712, 22.131474, 12.244968>,  <16.649706, 22.280594, 12.240391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.461712, 22.131474, 12.244968>,  <16.148388, 21.882938, 12.252598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.461712, 22.131474, 12.244968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080596, 0.131936, 0.987976,
		0.616382, -0.772356, 0.153425,
		0.783312, 0.621337, -0.019074,
		16.696705, 22.317875, 12.239246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521183, 21.724792, 12.915914>,  <16.148388, 21.882938, 12.252598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521183, 21.724792, 12.915914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.661148, 22.086445, 12.817843>,  <16.745127, 22.303436, 12.759002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.661148, 22.086445, 12.817843>,  <16.521183, 21.724792, 12.915914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661148, 22.086445, 12.817843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177461, 0.320956, 0.930320,
		0.919821, -0.282020, 0.272753,
		0.349911, 0.904131, -0.245174,
		16.766121, 22.357683, 12.744291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854820, 22.028570, 13.512469>,  <16.521183, 21.724792, 12.915914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854820, 22.028570, 13.512469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.776146, 22.350193, 13.288038>,  <16.728941, 22.543167, 13.153379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.776146, 22.350193, 13.288038>,  <16.854820, 22.028570, 13.512469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.776146, 22.350193, 13.288038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290823, 0.498659, 0.816554,
		0.936342, 0.323779, 0.135759,
		-0.196686, 0.804056, -0.561078,
		16.717140, 22.591410, 13.119715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373440, 22.496128, 13.654129>,  <16.854820, 22.028570, 13.512469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373440, 22.496128, 13.654129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.072708, 22.723427, 13.520355>,  <16.892269, 22.859806, 13.440091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.072708, 22.723427, 13.520355>,  <17.373440, 22.496128, 13.654129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072708, 22.723427, 13.520355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106460, 0.395942, 0.912083,
		0.650705, 0.721336, -0.237186,
		-0.751830, 0.568247, -0.334436,
		16.847158, 22.893900, 13.420025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546789, 23.259258, 13.772737>,  <17.373440, 22.496128, 13.654129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546789, 23.259258, 13.772737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.149834, 23.211887, 13.759224>,  <16.911661, 23.183464, 13.751117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.149834, 23.211887, 13.759224>,  <17.546789, 23.259258, 13.772737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.149834, 23.211887, 13.759224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076487, 0.377725, 0.922753,
		-0.096520, 0.918313, -0.383908,
		-0.992388, -0.118428, -0.033781,
		16.852118, 23.176359, 13.749090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202848, 23.861092, 14.124848>,  <17.546789, 23.259258, 13.772737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202848, 23.861092, 14.124848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.910496, 23.590622, 14.087755>,  <16.735085, 23.428339, 14.065499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.910496, 23.590622, 14.087755>,  <17.202848, 23.861092, 14.124848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910496, 23.590622, 14.087755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194541, 0.076163, 0.977933,
		-0.654191, 0.732793, -0.187210,
		-0.730881, -0.676175, -0.092733,
		16.691231, 23.387770, 14.059936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.674318, 24.163403, 14.405907>,  <17.202848, 23.861092, 14.124848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.674318, 24.163403, 14.405907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.582417, 23.774181, 14.413670>,  <16.527275, 23.540648, 14.418327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.582417, 23.774181, 14.413670>,  <16.674318, 24.163403, 14.405907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.582417, 23.774181, 14.413670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274562, 0.083934, 0.957899,
		-0.933718, 0.214754, -0.286448,
		-0.229755, -0.973055, 0.019407,
		16.513491, 23.482265, 14.419492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.247379, 24.138227, 14.911157>,  <16.674318, 24.163403, 14.405907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.247379, 24.138227, 14.911157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.320599, 23.745831, 14.885408>,  <16.364531, 23.510391, 14.869959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.320599, 23.745831, 14.885408>,  <16.247379, 24.138227, 14.911157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320599, 23.745831, 14.885408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128385, -0.088771, 0.987743,
		-0.974684, -0.172542, -0.142195,
		0.183050, -0.980994, -0.064371,
		16.375513, 23.451532, 14.866096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673287, 23.856581, 15.179451>,  <16.247379, 24.138227, 14.911157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673287, 23.856581, 15.179451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.945533, 23.565407, 15.212620>,  <16.108879, 23.390703, 15.232521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.945533, 23.565407, 15.212620>,  <15.673287, 23.856581, 15.179451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945533, 23.565407, 15.212620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182834, -0.059158, 0.981362,
		-0.709463, -0.683088, -0.173355,
		0.680613, -0.727936, 0.082921,
		16.149717, 23.347027, 15.237496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320180, 23.253878, 15.335593>,  <15.673287, 23.856581, 15.179451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320180, 23.253878, 15.335593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.701089, 23.247749, 15.457541>,  <15.929634, 23.244072, 15.530708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.701089, 23.247749, 15.457541>,  <15.320180, 23.253878, 15.335593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.701089, 23.247749, 15.457541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305246, -0.053967, 0.950743,
		0.001893, -0.998425, -0.056065,
		0.952272, -0.015314, 0.304868,
		15.986771, 23.243155, 15.549001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304636, 22.756849, 15.949463>,  <15.320180, 23.253878, 15.335593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304636, 22.756849, 15.949463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.652234, 22.948200, 16.000061>,  <15.860793, 23.063011, 16.030420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.652234, 22.948200, 16.000061>,  <15.304636, 22.756849, 15.949463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652234, 22.948200, 16.000061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184487, 0.076021, 0.979891,
		0.459142, -0.874857, 0.154316,
		0.868996, 0.478378, 0.126495,
		15.912933, 23.091713, 16.038010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293063, 22.217169, 16.404428>,  <15.304636, 22.756849, 15.949463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293063, 22.217169, 16.404428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.900167, 22.142124, 16.403744>,  <14.664429, 22.097097, 16.403332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.900167, 22.142124, 16.403744>,  <15.293063, 22.217169, 16.404428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900167, 22.142124, 16.403744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058760, -0.298938, -0.952462,
		0.178180, -0.935649, 0.304653,
		-0.982242, -0.187611, -0.001714,
		14.605494, 22.085840, 16.403229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255617, 21.654362, 16.006924>,  <15.293063, 22.217169, 16.404428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.255617, 21.654362, 16.006924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.880235, 21.792179, 16.016657>,  <14.655005, 21.874868, 16.022497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.880235, 21.792179, 16.016657>,  <15.255617, 21.654362, 16.006924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.880235, 21.792179, 16.016657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138342, -0.310390, -0.940489,
		-0.316519, -0.885961, 0.338953,
		-0.938444, 0.344574, 0.024321,
		14.598698, 21.895542, 16.023956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.842942, 21.058680, 15.767502>,  <15.255617, 21.654362, 16.006924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.842942, 21.058680, 15.767502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.603702, 21.375916, 15.721397>,  <14.460157, 21.566257, 15.693735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.603702, 21.375916, 15.721397>,  <14.842942, 21.058680, 15.767502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.603702, 21.375916, 15.721397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263486, -0.330421, -0.906309,
		-0.756868, -0.511696, 0.406593,
		-0.598102, 0.793088, -0.115260,
		14.424271, 21.613842, 15.686819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.059649, 20.848335, 15.606657>,  <14.842942, 21.058680, 15.767502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.059649, 20.848335, 15.606657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.154935, 21.209469, 15.463467>,  <14.212107, 21.426149, 15.377552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.154935, 21.209469, 15.463467>,  <14.059649, 20.848335, 15.606657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154935, 21.209469, 15.463467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305480, -0.280228, -0.910030,
		-0.921919, 0.326138, 0.209042,
		0.238216, 0.902832, -0.357976,
		14.226399, 21.480318, 15.356073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.501426, 21.004972, 15.156719>,  <14.059649, 20.848335, 15.606657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.501426, 21.004972, 15.156719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.826272, 21.217670, 15.060621>,  <14.021180, 21.345289, 15.002963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.826272, 21.217670, 15.060621>,  <13.501426, 21.004972, 15.156719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826272, 21.217670, 15.060621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139592, -0.222724, -0.964836,
		-0.566553, 0.817094, -0.106651,
		0.812116, 0.531743, -0.240244,
		14.069907, 21.377193, 14.988548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
