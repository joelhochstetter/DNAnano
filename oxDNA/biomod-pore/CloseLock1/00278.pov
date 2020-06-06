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
	<23.863173, 35.214474, 35.106476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202665, 35.007298, 35.063782>,  <24.406361, 34.882992, 35.038166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202665, 35.007298, 35.063782>,  <23.863173, 35.214474, 35.106476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202665, 35.007298, 35.063782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474652, 0.657114, 0.585582,
		-0.233157, -0.547666, 0.803555,
		0.848731, -0.517941, -0.106740,
		24.457285, 34.851913, 35.031761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.246109, 35.170547, 35.773884>,  <23.863173, 35.214474, 35.106476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.246109, 35.170547, 35.773884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481028, 35.160717, 35.450283>,  <24.621979, 35.154819, 35.256123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481028, 35.160717, 35.450283>,  <24.246109, 35.170547, 35.773884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481028, 35.160717, 35.450283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560185, 0.733790, 0.384377,
		0.584187, -0.678932, 0.444721,
		0.587297, -0.024578, -0.808998,
		24.657217, 35.153343, 35.207584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963871, 35.085758, 35.992420>,  <24.246109, 35.170547, 35.773884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963871, 35.085758, 35.992420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959986, 35.274220, 35.639622>,  <24.957655, 35.387295, 35.427940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959986, 35.274220, 35.639622>,  <24.963871, 35.085758, 35.992420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959986, 35.274220, 35.639622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585510, 0.717703, 0.376936,
		0.810607, -0.512758, -0.282834,
		-0.009714, 0.471149, -0.882000,
		24.957071, 35.415565, 35.375023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631413, 35.331142, 35.736073>,  <24.963871, 35.085758, 35.992420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631413, 35.331142, 35.736073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384682, 35.611641, 35.593086>,  <25.236643, 35.779938, 35.507294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384682, 35.611641, 35.593086>,  <25.631413, 35.331142, 35.736073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384682, 35.611641, 35.593086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621045, 0.712622, 0.326302,
		0.483554, -0.020729, -0.875069,
		-0.616829, 0.701242, -0.357465,
		25.199633, 35.822014, 35.485847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893875, 35.878063, 35.253334>,  <25.631413, 35.331142, 35.736073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893875, 35.878063, 35.253334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589958, 36.033894, 35.461544>,  <25.407608, 36.127392, 35.586468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589958, 36.033894, 35.461544>,  <25.893875, 35.878063, 35.253334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589958, 36.033894, 35.461544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606677, 0.712696, 0.352145,
		-0.233786, 0.583347, -0.777850,
		-0.759794, 0.389577, 0.520522,
		25.362020, 36.150768, 35.617699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697178, 35.742573, 35.236626>,  <25.893875, 35.878063, 35.253334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697178, 35.742573, 35.236626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061937, 35.867710, 35.342884>,  <27.280794, 35.942791, 35.406639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061937, 35.867710, 35.342884>,  <26.697178, 35.742573, 35.236626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061937, 35.867710, 35.342884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348793, 0.931861, 0.099897,
		-0.216290, -0.183750, 0.958882,
		0.911900, 0.312845, 0.265643,
		27.335508, 35.961563, 35.422577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748146, 36.212124, 35.907021>,  <26.697178, 35.742573, 35.236626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748146, 36.212124, 35.907021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067253, 36.297749, 35.681545>,  <27.258717, 36.349125, 35.546261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067253, 36.297749, 35.681545>,  <26.748146, 36.212124, 35.907021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067253, 36.297749, 35.681545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149267, 0.975873, 0.159344,
		0.584198, -0.042979, 0.810473,
		0.797767, 0.214065, -0.563688,
		27.306583, 36.361969, 35.512440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146755, 36.709179, 36.284935>,  <26.748146, 36.212124, 35.907021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146755, 36.709179, 36.284935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207378, 36.752644, 35.891953>,  <27.243752, 36.778721, 35.656162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207378, 36.752644, 35.891953>,  <27.146755, 36.709179, 36.284935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207378, 36.752644, 35.891953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052758, 0.991633, 0.117815,
		0.987039, -0.069688, 0.144558,
		0.151558, 0.108661, -0.982458,
		27.252846, 36.785240, 35.597214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267490, 37.415806, 36.255764>,  <27.146755, 36.709179, 36.284935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267490, 37.415806, 36.255764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255140, 37.323952, 35.866650>,  <27.247730, 37.268841, 35.633183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255140, 37.323952, 35.866650>,  <27.267490, 37.415806, 36.255764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255140, 37.323952, 35.866650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058735, 0.971153, -0.231112,
		0.997796, -0.064272, -0.016495,
		-0.030874, -0.229634, -0.972788,
		27.245878, 37.255062, 35.574814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842812, 37.848522, 36.013161>,  <27.267490, 37.415806, 36.255764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842812, 37.848522, 36.013161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601892, 37.761780, 35.705860>,  <27.457340, 37.709736, 35.521481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601892, 37.761780, 35.705860>,  <27.842812, 37.848522, 36.013161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601892, 37.761780, 35.705860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053342, 0.971176, -0.232317,
		0.796486, -0.098944, -0.596506,
		-0.602299, -0.216857, -0.768250,
		27.421204, 37.696724, 35.475384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995140, 38.211124, 35.371185>,  <27.842812, 37.848522, 36.013161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995140, 38.211124, 35.371185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617170, 38.098553, 35.304348>,  <27.390388, 38.031010, 35.264248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617170, 38.098553, 35.304348>,  <27.995140, 38.211124, 35.371185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617170, 38.098553, 35.304348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168404, 0.855819, -0.489095,
		0.280643, -0.434018, -0.856077,
		-0.944923, -0.281428, -0.167089,
		27.333693, 38.014126, 35.254223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896208, 38.358692, 34.741768>,  <27.995140, 38.211124, 35.371185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896208, 38.358692, 34.741768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527336, 38.350483, 34.896255>,  <27.306013, 38.345558, 34.988949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527336, 38.350483, 34.896255>,  <27.896208, 38.358692, 34.741768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527336, 38.350483, 34.896255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254310, 0.784532, -0.565540,
		-0.291398, -0.619748, -0.728697,
		-0.922179, -0.020518, 0.386219,
		27.250683, 38.344326, 35.012123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474703, 38.396626, 34.137730>,  <27.896208, 38.358692, 34.741768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474703, 38.396626, 34.137730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264671, 38.539906, 34.446529>,  <27.138653, 38.625874, 34.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264671, 38.539906, 34.446529>,  <27.474703, 38.396626, 34.137730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264671, 38.539906, 34.446529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278572, 0.784802, -0.553610,
		-0.804171, -0.505746, -0.312297,
		-0.525078, 0.358200, 0.772001,
		27.107147, 38.647366, 34.678131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926270, 38.847168, 33.824196>,  <27.474703, 38.396626, 34.137730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926270, 38.847168, 33.824196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925470, 38.964619, 34.206562>,  <26.924990, 39.035091, 34.435982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925470, 38.964619, 34.206562>,  <26.926270, 38.847168, 33.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925470, 38.964619, 34.206562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152606, 0.944633, -0.290482,
		-0.988285, -0.146460, 0.042920,
		-0.002000, 0.293629, 0.955918,
		26.924870, 39.052708, 34.493336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455841, 39.299351, 33.899071>,  <26.926270, 38.847168, 33.824196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455841, 39.299351, 33.899071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667166, 39.374889, 34.230183>,  <26.793961, 39.420212, 34.428852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667166, 39.374889, 34.230183>,  <26.455841, 39.299351, 33.899071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667166, 39.374889, 34.230183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061058, 0.963975, -0.258889,
		-0.846853, 0.187317, 0.497748,
		0.528311, 0.188849, 0.827783,
		26.825659, 39.431545, 34.478516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203913, 39.966488, 34.085209>,  <26.455841, 39.299351, 33.899071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203913, 39.966488, 34.085209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546116, 39.907776, 34.283829>,  <26.751438, 39.872547, 34.403000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546116, 39.907776, 34.283829>,  <26.203913, 39.966488, 34.085209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546116, 39.907776, 34.283829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292328, 0.928443, -0.229210,
		-0.427375, 0.341246, 0.837199,
		0.855509, -0.146779, 0.496549,
		26.802769, 39.863743, 34.432793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190979, 40.543953, 34.644165>,  <26.203913, 39.966488, 34.085209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190979, 40.543953, 34.644165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570282, 40.437168, 34.575409>,  <26.797863, 40.373096, 34.534157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570282, 40.437168, 34.575409>,  <26.190979, 40.543953, 34.644165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570282, 40.437168, 34.575409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217944, 0.940953, -0.259053,
		0.230894, 0.208187, 0.950445,
		0.948255, -0.266958, -0.171887,
		26.854759, 40.357082, 34.523842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604504, 41.081966, 34.986912>,  <26.190979, 40.543953, 34.644165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604504, 41.081966, 34.986912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824816, 40.900829, 34.706463>,  <26.957003, 40.792149, 34.538193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824816, 40.900829, 34.706463>,  <26.604504, 41.081966, 34.986912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824816, 40.900829, 34.706463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263479, 0.891400, -0.368760,
		0.791971, 0.018374, 0.610282,
		0.550781, -0.452844, -0.701122,
		26.990049, 40.764977, 34.496124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187874, 41.510639, 34.946991>,  <26.604504, 41.081966, 34.986912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187874, 41.510639, 34.946991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179037, 41.300106, 34.606995>,  <27.173735, 41.173786, 34.402996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179037, 41.300106, 34.606995>,  <27.187874, 41.510639, 34.946991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179037, 41.300106, 34.606995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284559, 0.811721, -0.510036,
		0.958404, -0.253138, 0.131843,
		-0.022089, -0.526337, -0.849989,
		27.172411, 41.142204, 34.351997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827511, 41.738216, 34.583672>,  <27.187874, 41.510639, 34.946991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827511, 41.738216, 34.583672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566107, 41.584629, 34.322750>,  <27.409266, 41.492477, 34.166199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566107, 41.584629, 34.322750>,  <27.827511, 41.738216, 34.583672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566107, 41.584629, 34.322750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058652, 0.833503, -0.549393,
		0.754642, -0.397292, -0.522182,
		-0.653510, -0.383968, -0.652298,
		27.370054, 41.469437, 34.127060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126383, 41.968376, 34.038303>,  <27.827511, 41.738216, 34.583672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126383, 41.968376, 34.038303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774616, 41.876312, 33.871616>,  <27.563557, 41.821075, 33.771603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774616, 41.876312, 33.871616>,  <28.126383, 41.968376, 34.038303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774616, 41.876312, 33.871616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061392, 0.813226, -0.578701,
		0.472080, -0.534502, -0.701034,
		-0.879416, -0.230155, -0.416721,
		27.510792, 41.807266, 33.746601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245640, 42.040859, 33.289909>,  <28.126383, 41.968376, 34.038303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245640, 42.040859, 33.289909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851997, 42.060719, 33.358109>,  <27.615812, 42.072636, 33.399029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851997, 42.060719, 33.358109>,  <28.245640, 42.040859, 33.289909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851997, 42.060719, 33.358109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076538, 0.747761, -0.659541,
		-0.160236, -0.662109, -0.732077,
		-0.984107, 0.049650, 0.170495,
		27.556765, 42.075615, 33.409256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920168, 42.052090, 32.594284>,  <28.245640, 42.040859, 33.289909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920168, 42.052090, 32.594284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653393, 42.185474, 32.860817>,  <27.493328, 42.265503, 33.020737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653393, 42.185474, 32.860817>,  <27.920168, 42.052090, 32.594284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653393, 42.185474, 32.860817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212204, 0.772234, -0.598852,
		-0.714257, -0.540796, -0.444271,
		-0.666938, 0.333458, 0.666333,
		27.453312, 42.285511, 33.060719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376297, 42.259644, 32.230721>,  <27.920168, 42.052090, 32.594284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376297, 42.259644, 32.230721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310781, 42.461243, 32.569935>,  <27.271473, 42.582203, 32.773464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310781, 42.461243, 32.569935>,  <27.376297, 42.259644, 32.230721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310781, 42.461243, 32.569935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292136, 0.796305, -0.529674,
		-0.942248, -0.334495, 0.016811,
		-0.163787, 0.503995, 0.848034,
		27.261646, 42.612442, 32.824345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801922, 42.565636, 32.141712>,  <27.376297, 42.259644, 32.230721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801922, 42.565636, 32.141712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942347, 42.775780, 32.451744>,  <27.026602, 42.901867, 32.637764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942347, 42.775780, 32.451744>,  <26.801922, 42.565636, 32.141712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942347, 42.775780, 32.451744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441926, 0.822737, -0.357498,
		-0.825504, -0.217025, 0.521003,
		0.351062, 0.525361, 0.775082,
		27.047665, 42.933388, 32.684269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295258, 43.078667, 32.351940>,  <26.801922, 42.565636, 32.141712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295258, 43.078667, 32.351940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647646, 43.236614, 32.456219>,  <26.859079, 43.331383, 32.518787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647646, 43.236614, 32.456219>,  <26.295258, 43.078667, 32.351940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647646, 43.236614, 32.456219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318510, 0.902339, -0.290406,
		-0.349912, 0.172805, 0.920707,
		0.880973, 0.394871, 0.260699,
		26.911938, 43.355076, 32.534428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233509, 43.737797, 32.705570>,  <26.295258, 43.078667, 32.351940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233509, 43.737797, 32.705570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572813, 43.735264, 32.493752>,  <26.776396, 43.733742, 32.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572813, 43.735264, 32.493752>,  <26.233509, 43.737797, 32.705570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572813, 43.735264, 32.493752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320508, 0.789869, -0.522860,
		0.421584, 0.613244, 0.667982,
		0.848258, -0.006336, -0.529545,
		26.827290, 43.733364, 32.334888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604174, 44.008629, 32.244987>,  <26.233509, 43.737797, 32.705570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604174, 44.008629, 32.244987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373783, 44.121662, 31.938160>,  <25.235548, 44.189484, 31.754063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373783, 44.121662, 31.938160>,  <25.604174, 44.008629, 32.244987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373783, 44.121662, 31.938160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811374, 0.083281, -0.578564,
		-0.099613, -0.955619, -0.277253,
		-0.575976, 0.282588, -0.767069,
		25.200991, 44.206440, 31.708038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894684, 43.878254, 31.563742>,  <25.604174, 44.008629, 32.244987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894684, 43.878254, 31.563742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759459, 43.596584, 31.313988>,  <25.678324, 43.427582, 31.164135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759459, 43.596584, 31.313988>,  <25.894684, 43.878254, 31.563742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759459, 43.596584, 31.313988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380349, 0.709078, -0.593754,
		0.860842, 0.036757, -0.507543,
		-0.338063, -0.704172, -0.624384,
		25.658039, 43.385334, 31.126673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006556, 44.047729, 30.733864>,  <25.894684, 43.878254, 31.563742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006556, 44.047729, 30.733864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707462, 43.783714, 30.762857>,  <25.528008, 43.625305, 30.780254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707462, 43.783714, 30.762857>,  <26.006556, 44.047729, 30.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707462, 43.783714, 30.762857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529109, 0.526314, -0.665611,
		0.401175, -0.536052, -0.742770,
		-0.747732, -0.660032, 0.072486,
		25.483143, 43.585705, 30.784603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912235, 43.845520, 29.942339>,  <26.006556, 44.047729, 30.733864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912235, 43.845520, 29.942339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598858, 43.763695, 30.177071>,  <25.410831, 43.714600, 30.317909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598858, 43.763695, 30.177071>,  <25.912235, 43.845520, 29.942339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598858, 43.763695, 30.177071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619153, 0.338297, -0.708665,
		-0.053555, -0.918536, -0.391693,
		-0.783442, -0.204565, 0.586831,
		25.363825, 43.702324, 30.353121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398590, 43.216148, 29.718206>,  <25.912235, 43.845520, 29.942339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398590, 43.216148, 29.718206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227367, 43.527081, 29.902611>,  <25.124634, 43.713638, 30.013252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227367, 43.527081, 29.902611>,  <25.398590, 43.216148, 29.718206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227367, 43.527081, 29.902611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541859, 0.187505, -0.819286,
		-0.723296, -0.600503, 0.340940,
		-0.428056, 0.777328, 0.461010,
		25.098951, 43.760281, 30.040915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059782, 43.059250, 30.095501>,  <25.398590, 43.216148, 29.718206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059782, 43.059250, 30.095501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217043, 42.841461, 29.799129>,  <26.311399, 42.710789, 29.621307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217043, 42.841461, 29.799129>,  <26.059782, 43.059250, 30.095501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217043, 42.841461, 29.799129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801384, -0.192160, 0.566443,
		-0.450792, -0.816468, 0.360787,
		0.393154, -0.544477, -0.740929,
		26.334990, 42.678120, 29.576851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224279, 42.274403, 30.258579>,  <26.059782, 43.059250, 30.095501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224279, 42.274403, 30.258579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483576, 42.385799, 29.975107>,  <26.639154, 42.452637, 29.805025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483576, 42.385799, 29.975107>,  <26.224279, 42.274403, 30.258579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483576, 42.385799, 29.975107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747214, -0.411703, 0.521701,
		-0.146474, -0.867722, -0.474978,
		0.648241, 0.278495, -0.708678,
		26.678047, 42.469349, 29.762505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480671, 41.736649, 30.024120>,  <26.224279, 42.274403, 30.258579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480671, 41.736649, 30.024120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766855, 42.009792, 29.965040>,  <26.938566, 42.173679, 29.929592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766855, 42.009792, 29.965040>,  <26.480671, 41.736649, 30.024120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766855, 42.009792, 29.965040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662059, -0.595135, 0.455514,
		0.223151, -0.423688, -0.877890,
		0.715459, 0.682864, -0.147702,
		26.981493, 42.214653, 29.920731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224112, 41.543770, 29.751261>,  <26.480671, 41.736649, 30.024120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224112, 41.543770, 29.751261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181988, 41.824829, 30.032742>,  <27.156713, 41.993465, 30.201630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181988, 41.824829, 30.032742>,  <27.224112, 41.543770, 29.751261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181988, 41.824829, 30.032742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458595, -0.593584, 0.661323,
		0.882384, 0.392358, -0.259720,
		-0.105310, 0.702647, 0.703702,
		27.150394, 42.035622, 30.243853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865261, 41.906696, 30.095690>,  <27.224112, 41.543770, 29.751261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865261, 41.906696, 30.095690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566460, 41.877815, 30.360044>,  <27.387178, 41.860485, 30.518658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566460, 41.877815, 30.360044>,  <27.865261, 41.906696, 30.095690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566460, 41.877815, 30.360044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595979, -0.513247, 0.617565,
		0.294605, 0.855198, 0.426432,
		-0.747005, -0.072207, 0.660885,
		27.342358, 41.856152, 30.558310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055071, 41.987823, 30.799229>,  <27.865261, 41.906696, 30.095690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055071, 41.987823, 30.799229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736420, 41.746490, 30.784388>,  <27.545229, 41.601692, 30.775484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736420, 41.746490, 30.784388>,  <28.055071, 41.987823, 30.799229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736420, 41.746490, 30.784388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473499, -0.660993, 0.582140,
		-0.375748, 0.446181, 0.812241,
		-0.796626, -0.603333, -0.037101,
		27.497433, 41.565491, 30.773258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938137, 41.888237, 31.496925>,  <28.055071, 41.987823, 30.799229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938137, 41.888237, 31.496925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820147, 41.596970, 31.249454>,  <27.749352, 41.422211, 31.100971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820147, 41.596970, 31.249454>,  <27.938137, 41.888237, 31.496925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820147, 41.596970, 31.249454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445548, -0.677607, 0.585095,
		-0.845267, -0.103060, 0.524312,
		-0.294977, -0.728167, -0.618677,
		27.731653, 41.378521, 31.063852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593811, 41.415161, 31.915897>,  <27.938137, 41.888237, 31.496925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593811, 41.415161, 31.915897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701748, 41.212826, 31.588161>,  <27.766510, 41.091427, 31.391520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701748, 41.212826, 31.588161>,  <27.593811, 41.415161, 31.915897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701748, 41.212826, 31.588161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372056, -0.730047, 0.573242,
		-0.888122, -0.459524, -0.008797,
		0.269841, -0.505836, -0.819339,
		27.782700, 41.061073, 31.342360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523764, 40.809322, 32.190052>,  <27.593811, 41.415161, 31.915897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523764, 40.809322, 32.190052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710155, 40.720917, 31.847353>,  <27.821991, 40.667873, 31.641733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710155, 40.720917, 31.847353>,  <27.523764, 40.809322, 32.190052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710155, 40.720917, 31.847353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447752, -0.776257, 0.443783,
		-0.763140, -0.590404, -0.262757,
		0.465978, -0.221019, -0.856747,
		27.849949, 40.654610, 31.590328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404539, 40.102283, 32.001854>,  <27.523764, 40.809322, 32.190052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404539, 40.102283, 32.001854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735882, 40.176033, 31.790258>,  <27.934689, 40.220284, 31.663301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735882, 40.176033, 31.790258>,  <27.404539, 40.102283, 32.001854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735882, 40.176033, 31.790258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417382, -0.832965, 0.363266,
		-0.373651, -0.521704, -0.766948,
		0.828358, 0.184376, -0.528988,
		27.984388, 40.231346, 31.631561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592491, 39.478867, 31.634451>,  <27.404539, 40.102283, 32.001854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592491, 39.478867, 31.634451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923960, 39.702740, 31.637356>,  <28.122841, 39.837063, 31.639099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923960, 39.702740, 31.637356>,  <27.592491, 39.478867, 31.634451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923960, 39.702740, 31.637356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536162, -0.797438, 0.276808,
		0.160716, -0.225489, -0.960898,
		0.828674, 0.559685, 0.007262,
		28.172562, 39.870644, 31.639534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123674, 39.054501, 31.447975>,  <27.592491, 39.478867, 31.634451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123674, 39.054501, 31.447975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324450, 39.352268, 31.624115>,  <28.444914, 39.530930, 31.729799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324450, 39.352268, 31.624115>,  <28.123674, 39.054501, 31.447975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324450, 39.352268, 31.624115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665688, -0.657556, 0.352817,
		0.552196, 0.116043, -0.825599,
		0.501936, 0.744415, 0.440348,
		28.475031, 39.575592, 31.756220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825178, 38.924835, 31.305077>,  <28.123674, 39.054501, 31.447975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825178, 38.924835, 31.305077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830864, 39.164600, 31.625202>,  <28.834274, 39.308460, 31.817278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830864, 39.164600, 31.625202>,  <28.825178, 38.924835, 31.305077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830864, 39.164600, 31.625202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639713, -0.620603, 0.453452,
		0.768482, 0.505526, -0.392273,
		0.014213, 0.599412, 0.800314,
		28.835129, 39.344425, 31.865297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481323, 39.009727, 31.577440>,  <28.825178, 38.924835, 31.305077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481323, 39.009727, 31.577440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256338, 39.110443, 31.892462>,  <29.121347, 39.170872, 32.081474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256338, 39.110443, 31.892462>,  <29.481323, 39.009727, 31.577440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256338, 39.110443, 31.892462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495962, -0.659374, 0.565020,
		0.661557, 0.708399, 0.245995,
		-0.562463, 0.251788, 0.787552,
		29.087599, 39.185978, 32.128727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824539, 39.117500, 32.100033>,  <29.481323, 39.009727, 31.577440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824539, 39.117500, 32.100033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495800, 39.051456, 32.318134>,  <29.298555, 39.011829, 32.448994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495800, 39.051456, 32.318134>,  <29.824539, 39.117500, 32.100033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495800, 39.051456, 32.318134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518745, -0.612530, 0.596415,
		0.235512, 0.773012, 0.589056,
		-0.821850, -0.165107, 0.545254,
		29.249245, 39.001923, 32.481712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042580, 39.104061, 32.701290>,  <29.824539, 39.117500, 32.100033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042580, 39.104061, 32.701290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686123, 38.929844, 32.752155>,  <29.472248, 38.825314, 32.782673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686123, 38.929844, 32.752155>,  <30.042580, 39.104061, 32.701290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686123, 38.929844, 32.752155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427262, -0.711236, 0.558203,
		-0.152679, 0.551769, 0.819903,
		-0.891143, -0.435539, 0.127159,
		29.418779, 38.799183, 32.790302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998043, 39.007217, 33.411263>,  <30.042580, 39.104061, 32.701290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998043, 39.007217, 33.411263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750298, 38.737701, 33.250069>,  <29.601650, 38.575993, 33.153351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750298, 38.737701, 33.250069>,  <29.998043, 39.007217, 33.411263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750298, 38.737701, 33.250069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089295, -0.570415, 0.816489,
		-0.780009, 0.469719, 0.413460,
		-0.619364, -0.673788, -0.402985,
		29.564487, 38.535564, 33.129173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753132, 38.645054, 34.053093>,  <29.998043, 39.007217, 33.411263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753132, 38.645054, 34.053093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616529, 38.398540, 33.769245>,  <29.534567, 38.250633, 33.598938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616529, 38.398540, 33.769245>,  <29.753132, 38.645054, 34.053093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616529, 38.398540, 33.769245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119804, -0.720311, 0.683227,
		-0.932212, 0.318342, 0.172158,
		-0.341507, -0.616288, -0.709621,
		29.514078, 38.213654, 33.556358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195910, 38.130009, 34.330677>,  <29.753132, 38.645054, 34.053093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195910, 38.130009, 34.330677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334299, 37.981522, 33.986004>,  <29.417334, 37.892429, 33.779198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334299, 37.981522, 33.986004>,  <29.195910, 38.130009, 34.330677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334299, 37.981522, 33.986004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053675, -0.909068, 0.413177,
		-0.936708, -0.189198, -0.294588,
		0.345973, -0.371214, -0.861686,
		29.438091, 37.870159, 33.727497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789297, 37.553875, 34.101864>,  <29.195910, 38.130009, 34.330677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789297, 37.553875, 34.101864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158043, 37.524643, 33.949642>,  <29.379292, 37.507103, 33.858311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158043, 37.524643, 33.949642>,  <28.789297, 37.553875, 34.101864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158043, 37.524643, 33.949642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186915, -0.776396, 0.601890,
		-0.339448, -0.625993, -0.702074,
		0.921867, -0.073082, -0.380554,
		29.434603, 37.502720, 33.835476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910152, 36.850574, 34.120865>,  <28.789297, 37.553875, 34.101864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910152, 36.850574, 34.120865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274742, 37.010269, 34.081226>,  <29.493496, 37.106087, 34.057446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274742, 37.010269, 34.081226>,  <28.910152, 36.850574, 34.120865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274742, 37.010269, 34.081226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386998, -0.750596, 0.535572,
		0.139443, -0.526510, -0.838655,
		0.911476, 0.399240, -0.099093,
		29.548185, 37.130043, 34.051498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346416, 36.214447, 33.990395>,  <28.910152, 36.850574, 34.120865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346416, 36.214447, 33.990395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589104, 36.507790, 34.113083>,  <29.734716, 36.683796, 34.186695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589104, 36.507790, 34.113083>,  <29.346416, 36.214447, 33.990395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589104, 36.507790, 34.113083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325673, -0.581302, 0.745671,
		0.725141, -0.352522, -0.591522,
		0.606718, 0.733359, 0.306719,
		29.771120, 36.727798, 34.205097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003595, 35.793900, 34.161579>,  <29.346416, 36.214447, 33.990395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003595, 35.793900, 34.161579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037073, 36.144543, 34.351124>,  <30.057159, 36.354931, 34.464851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037073, 36.144543, 34.351124>,  <30.003595, 35.793900, 34.161579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037073, 36.144543, 34.351124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517041, -0.444714, 0.731368,
		0.851859, 0.183795, -0.490464,
		0.083695, 0.876612, 0.473863,
		30.062181, 36.407528, 34.493282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645672, 35.739113, 34.473106>,  <30.003595, 35.793900, 34.161579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645672, 35.739113, 34.473106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457170, 36.043304, 34.651814>,  <30.344070, 36.225819, 34.759037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457170, 36.043304, 34.651814>,  <30.645672, 35.739113, 34.473106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457170, 36.043304, 34.651814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329530, -0.318044, 0.888965,
		0.818126, 0.566150, -0.100720,
		-0.471254, 0.760475, 0.446763,
		30.315794, 36.271446, 34.785843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108484, 35.870796, 35.041939>,  <30.645672, 35.739113, 34.473106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108484, 35.870796, 35.041939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734118, 35.998653, 35.101120>,  <30.509497, 36.075367, 35.136627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734118, 35.998653, 35.101120>,  <31.108484, 35.870796, 35.041939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734118, 35.998653, 35.101120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020503, -0.369901, 0.928845,
		0.351622, 0.872356, 0.339643,
		-0.935918, 0.319639, 0.147951,
		30.453342, 36.094543, 35.145504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106071, 36.198547, 35.703629>,  <31.108484, 35.870796, 35.041939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106071, 36.198547, 35.703629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750933, 36.059147, 35.583447>,  <30.537849, 35.975506, 35.511337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750933, 36.059147, 35.583447>,  <31.106071, 36.198547, 35.703629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750933, 36.059147, 35.583447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063373, -0.554137, 0.830010,
		-0.455756, 0.755962, 0.469902,
		-0.887846, -0.348503, -0.300459,
		30.484579, 35.954597, 35.493309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519785, 36.728867, 35.486588>,  <31.106071, 36.198547, 35.703629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519785, 36.728867, 35.486588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677515, 36.611263, 35.834854>,  <31.772152, 36.540699, 36.043816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677515, 36.611263, 35.834854>,  <31.519785, 36.728867, 35.486588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677515, 36.611263, 35.834854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734979, 0.669635, -0.106744,
		-0.551647, 0.682016, 0.480145,
		0.394323, -0.294012, 0.870670,
		31.795813, 36.523060, 36.096054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661211, 37.250076, 36.001465>,  <31.519785, 36.728867, 35.486588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661211, 37.250076, 36.001465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918242, 36.958191, 36.094944>,  <32.072460, 36.783058, 36.151031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918242, 36.958191, 36.094944>,  <31.661211, 37.250076, 36.001465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918242, 36.958191, 36.094944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759183, 0.647585, -0.065382,
		-0.103630, 0.219434, 0.970108,
		0.642574, -0.729714, 0.233699,
		32.111015, 36.739277, 36.165054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025238, 37.406635, 36.633839>,  <31.661211, 37.250076, 36.001465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025238, 37.406635, 36.633839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242931, 37.165070, 36.400909>,  <32.373547, 37.020130, 36.261154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242931, 37.165070, 36.400909>,  <32.025238, 37.406635, 36.633839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242931, 37.165070, 36.400909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695018, 0.713312, -0.090197,
		0.469846, -0.355633, 0.807941,
		0.544237, -0.603913, -0.582319,
		32.406204, 36.983894, 36.226215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700737, 37.247948, 36.902336>,  <32.025238, 37.406635, 36.633839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700737, 37.247948, 36.902336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721485, 37.212757, 36.504429>,  <32.733936, 37.191643, 36.265682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721485, 37.212757, 36.504429>,  <32.700737, 37.247948, 36.902336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721485, 37.212757, 36.504429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674483, 0.737678, -0.030066,
		0.736466, -0.669396, 0.097604,
		0.051874, -0.087975, -0.994771,
		32.737049, 37.186363, 36.205997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419792, 37.082462, 36.577084>,  <32.700737, 37.247948, 36.902336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419792, 37.082462, 36.577084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187241, 37.296341, 36.331776>,  <33.047710, 37.424667, 36.184593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187241, 37.296341, 36.331776>,  <33.419792, 37.082462, 36.577084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187241, 37.296341, 36.331776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689604, 0.723832, -0.022654,
		0.431790, -0.436083, -0.789550,
		-0.581380, 0.534695, -0.613268,
		33.012825, 37.456749, 36.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804970, 37.320164, 35.982399>,  <33.419792, 37.082462, 36.577084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804970, 37.320164, 35.982399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505642, 37.583027, 36.018551>,  <33.326046, 37.740746, 36.040241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505642, 37.583027, 36.018551>,  <33.804970, 37.320164, 35.982399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505642, 37.583027, 36.018551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661229, 0.749842, 0.022657,
		-0.052880, 0.076715, -0.995650,
		-0.748318, 0.657154, 0.090378,
		33.281147, 37.780174, 36.045666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481209, 37.155685, 36.217583>,  <33.804970, 37.320164, 35.982399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481209, 37.155685, 36.217583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682186, 36.828472, 36.105610>,  <34.802773, 36.632145, 36.038425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682186, 36.828472, 36.105610>,  <34.481209, 37.155685, 36.217583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682186, 36.828472, 36.105610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194512, -0.208525, 0.958479,
		-0.842446, -0.536033, 0.054346,
		0.502444, -0.818037, -0.279936,
		34.832920, 36.583061, 36.021629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292294, 36.547764, 36.677956>,  <34.481209, 37.155685, 36.217583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292294, 36.547764, 36.677956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632561, 36.431122, 36.502991>,  <34.836723, 36.361137, 36.398014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632561, 36.431122, 36.502991>,  <34.292294, 36.547764, 36.677956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632561, 36.431122, 36.502991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259156, -0.491306, 0.831539,
		-0.457371, -0.820726, -0.342374,
		0.850676, -0.291594, -0.437405,
		34.887764, 36.343643, 36.371769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390873, 35.845482, 36.809639>,  <34.292294, 36.547764, 36.677956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390873, 35.845482, 36.809639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757389, 35.989815, 36.740112>,  <34.977299, 36.076416, 36.698399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757389, 35.989815, 36.740112>,  <34.390873, 35.845482, 36.809639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757389, 35.989815, 36.740112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270785, -0.238364, 0.932662,
		0.295105, -0.901655, -0.316119,
		0.916291, 0.360833, -0.173812,
		35.032276, 36.098064, 36.687969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778419, 35.280403, 36.940426>,  <34.390873, 35.845482, 36.809639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778419, 35.280403, 36.940426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026329, 35.593887, 36.956856>,  <35.175076, 35.781979, 36.966713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026329, 35.593887, 36.956856>,  <34.778419, 35.280403, 36.940426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026329, 35.593887, 36.956856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429190, -0.382301, 0.818316,
		0.657023, -0.489540, -0.573298,
		0.619772, 0.783706, 0.041075,
		35.212261, 35.828999, 36.969177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472607, 35.029465, 36.963387>,  <34.778419, 35.280403, 36.940426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472607, 35.029465, 36.963387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503410, 35.403488, 37.101803>,  <35.521893, 35.627903, 37.184853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503410, 35.403488, 37.101803>,  <35.472607, 35.029465, 36.963387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503410, 35.403488, 37.101803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442321, -0.343086, 0.828640,
		0.893545, 0.089249, -0.440014,
		0.077008, 0.935054, 0.346039,
		35.526512, 35.684006, 37.205616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095482, 34.990768, 37.383949>,  <35.472607, 35.029465, 36.963387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095482, 34.990768, 37.383949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888474, 35.314064, 37.496323>,  <35.764267, 35.508041, 37.563747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888474, 35.314064, 37.496323>,  <36.095482, 34.990768, 37.383949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888474, 35.314064, 37.496323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318380, -0.122862, 0.939968,
		0.794231, 0.575900, -0.193742,
		-0.517524, 0.808235, 0.280936,
		35.733215, 35.556534, 37.580605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510601, 35.360191, 37.819290>,  <36.095482, 34.990768, 37.383949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510601, 35.360191, 37.819290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139648, 35.471222, 37.919617>,  <35.917076, 35.537842, 37.979813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139648, 35.471222, 37.919617>,  <36.510601, 35.360191, 37.819290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139648, 35.471222, 37.919617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212710, -0.160286, 0.963879,
		0.307754, 0.947237, 0.089603,
		-0.927384, 0.277578, 0.250816,
		35.861435, 35.554497, 37.994862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525646, 35.918606, 38.430531>,  <36.510601, 35.360191, 37.819290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525646, 35.918606, 38.430531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156094, 35.765926, 38.441437>,  <35.934361, 35.674316, 38.447983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156094, 35.765926, 38.441437>,  <36.525646, 35.918606, 38.430531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156094, 35.765926, 38.441437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136376, -0.261836, 0.955428,
		-0.357549, 0.886423, 0.293961,
		-0.923883, -0.381702, 0.027267,
		35.878929, 35.651417, 38.449615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120220, 36.214668, 39.003803>,  <36.525646, 35.918606, 38.430531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120220, 36.214668, 39.003803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893967, 35.887539, 38.961426>,  <35.758217, 35.691261, 38.936001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893967, 35.887539, 38.961426>,  <36.120220, 36.214668, 39.003803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893967, 35.887539, 38.961426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124497, -0.042313, 0.991317,
		-0.815207, 0.573909, -0.077883,
		-0.565631, -0.817825, -0.105944,
		35.724277, 35.642193, 38.929642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635517, 36.304798, 39.560390>,  <36.120220, 36.214668, 39.003803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635517, 36.304798, 39.560390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565498, 35.936508, 39.420891>,  <35.523487, 35.715534, 39.337189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565498, 35.936508, 39.420891>,  <35.635517, 36.304798, 39.560390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565498, 35.936508, 39.420891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308759, -0.285018, 0.907432,
		-0.934894, 0.266520, -0.234391,
		-0.175043, -0.920723, -0.348753,
		35.512985, 35.660290, 39.316265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934097, 36.112450, 39.772514>,  <35.635517, 36.304798, 39.560390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934097, 36.112450, 39.772514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135788, 35.773548, 39.705677>,  <35.256802, 35.570210, 39.665573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135788, 35.773548, 39.705677>,  <34.934097, 36.112450, 39.772514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135788, 35.773548, 39.705677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355586, -0.380028, 0.853895,
		-0.786967, -0.371137, -0.492891,
		0.504224, -0.847252, -0.167098,
		35.287056, 35.519371, 39.655548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523029, 35.669182, 40.099709>,  <34.934097, 36.112450, 39.772514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523029, 35.669182, 40.099709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833969, 35.420105, 40.063957>,  <35.020531, 35.270660, 40.042507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833969, 35.420105, 40.063957>,  <34.523029, 35.669182, 40.099709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833969, 35.420105, 40.063957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343527, -0.539213, 0.768920,
		-0.526982, -0.567023, -0.633068,
		0.777354, -0.622683, -0.089368,
		35.067173, 35.233299, 40.037144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261688, 35.025604, 40.118214>,  <34.523029, 35.669182, 40.099709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261688, 35.025604, 40.118214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649082, 34.982975, 40.208260>,  <34.881519, 34.957397, 40.262287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649082, 34.982975, 40.208260>,  <34.261688, 35.025604, 40.118214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649082, 34.982975, 40.208260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247956, -0.497756, 0.831118,
		0.023480, -0.860745, -0.508495,
		0.968487, -0.106570, 0.225114,
		34.939629, 34.951004, 40.275795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289528, 34.322926, 40.441120>,  <34.261688, 35.025604, 40.118214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289528, 34.322926, 40.441120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608006, 34.543194, 40.541386>,  <34.799091, 34.675354, 40.601543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608006, 34.543194, 40.541386>,  <34.289528, 34.322926, 40.441120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608006, 34.543194, 40.541386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089588, -0.302422, 0.948955,
		0.598369, -0.778010, -0.191453,
		0.796196, 0.550674, 0.250660,
		34.846863, 34.708397, 40.616585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682087, 33.884205, 40.886070>,  <34.289528, 34.322926, 40.441120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682087, 33.884205, 40.886070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751595, 34.271919, 40.955692>,  <34.793301, 34.504547, 40.997467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751595, 34.271919, 40.955692>,  <34.682087, 33.884205, 40.886070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751595, 34.271919, 40.955692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348021, -0.104895, 0.931600,
		0.921241, -0.222461, 0.319102,
		0.173772, 0.969282, 0.174054,
		34.803726, 34.562702, 41.007908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897739, 33.879246, 41.509937>,  <34.682087, 33.884205, 40.886070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897739, 33.879246, 41.509937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833397, 34.273846, 41.497646>,  <34.794792, 34.510605, 41.490273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833397, 34.273846, 41.497646>,  <34.897739, 33.879246, 41.509937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833397, 34.273846, 41.497646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356895, -0.029113, 0.933691,
		0.920191, 0.161155, 0.356760,
		-0.160855, 0.986500, -0.030726,
		34.785141, 34.569794, 41.488430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077934, 34.141048, 42.107189>,  <34.897739, 33.879246, 41.509937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077934, 34.141048, 42.107189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828041, 34.432880, 41.995892>,  <34.678104, 34.607979, 41.929111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828041, 34.432880, 41.995892>,  <35.077934, 34.141048, 42.107189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828041, 34.432880, 41.995892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342109, 0.064572, 0.937439,
		0.701905, 0.680838, 0.209256,
		-0.624732, 0.729582, -0.278244,
		34.640621, 34.651756, 41.912418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197639, 34.749859, 42.516544>,  <35.077934, 34.141048, 42.107189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197639, 34.749859, 42.516544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817432, 34.788181, 42.398331>,  <34.589310, 34.811176, 42.327404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817432, 34.788181, 42.398331>,  <35.197639, 34.749859, 42.516544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817432, 34.788181, 42.398331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282504, 0.129269, 0.950516,
		0.129269, 0.986970, -0.095806,
		-0.950516, 0.095806, -0.295533,
		34.532276, 34.816925, 42.309669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918430, 35.236477, 42.893375>,  <35.197639, 34.749859, 42.516544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918430, 35.236477, 42.893375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589657, 35.049938, 42.762566>,  <34.392395, 34.938015, 42.684078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589657, 35.049938, 42.762566>,  <34.918430, 35.236477, 42.893375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589657, 35.049938, 42.762566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437824, 0.150032, 0.886454,
		-0.364333, 0.871785, -0.327495,
		-0.821932, -0.466350, -0.327026,
		34.343079, 34.910034, 42.664459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332588, 35.641308, 43.183685>,  <34.918430, 35.236477, 42.893375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332588, 35.641308, 43.183685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201569, 35.272022, 43.103294>,  <34.122955, 35.050453, 43.055061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201569, 35.272022, 43.103294>,  <34.332588, 35.641308, 43.183685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201569, 35.272022, 43.103294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511760, -0.005452, 0.859111,
		-0.794237, 0.384253, -0.470677,
		-0.327550, -0.923212, -0.200976,
		34.103302, 34.995060, 43.043003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699253, 35.620274, 43.528698>,  <34.332588, 35.641308, 43.183685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699253, 35.620274, 43.528698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758125, 35.234806, 43.439537>,  <33.793449, 35.003525, 43.386040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758125, 35.234806, 43.439537>,  <33.699253, 35.620274, 43.528698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758125, 35.234806, 43.439537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537668, -0.267104, 0.799731,
		-0.830211, 0.002142, -0.557445,
		0.147183, -0.963665, -0.222904,
		33.802280, 34.945705, 43.372665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063217, 35.324638, 43.772408>,  <33.699253, 35.620274, 43.528698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063217, 35.324638, 43.772408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346928, 35.043087, 43.757023>,  <33.517155, 34.874157, 43.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346928, 35.043087, 43.757023>,  <33.063217, 35.324638, 43.772408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346928, 35.043087, 43.757023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338162, -0.387612, 0.857557,
		-0.618528, -0.595237, -0.512949,
		0.709275, -0.703883, -0.038463,
		33.559711, 34.831921, 43.745483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796047, 34.772099, 44.115112>,  <33.063217, 35.324638, 43.772408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796047, 34.772099, 44.115112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169460, 34.637905, 44.064568>,  <33.393509, 34.557388, 44.034241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169460, 34.637905, 44.064568>,  <32.796047, 34.772099, 44.115112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169460, 34.637905, 44.064568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140362, -0.666393, 0.732270,
		-0.329874, -0.665860, -0.669188,
		0.933532, -0.335485, -0.126365,
		33.449520, 34.537258, 44.026657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702202, 34.080437, 44.022850>,  <32.796047, 34.772099, 44.115112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702202, 34.080437, 44.022850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074295, 34.138008, 44.157871>,  <33.297550, 34.172550, 44.238884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074295, 34.138008, 44.157871>,  <32.702202, 34.080437, 44.022850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074295, 34.138008, 44.157871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136486, -0.718180, 0.682340,
		0.340633, -0.680810, -0.648434,
		0.930237, 0.143925, 0.337557,
		33.353367, 34.181187, 44.259140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999592, 33.422291, 44.129356>,  <32.702202, 34.080437, 44.022850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999592, 33.422291, 44.129356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230038, 33.654720, 44.359295>,  <33.368305, 33.794178, 44.497257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230038, 33.654720, 44.359295>,  <32.999592, 33.422291, 44.129356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230038, 33.654720, 44.359295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030908, -0.687296, 0.725719,
		0.816783, -0.435866, -0.378003,
		0.576116, 0.581072, 0.574844,
		33.402874, 33.829041, 44.531750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537052, 32.988415, 44.401943>,  <32.999592, 33.422291, 44.129356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537052, 32.988415, 44.401943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479053, 33.307728, 44.635769>,  <33.444256, 33.499317, 44.776066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479053, 33.307728, 44.635769>,  <33.537052, 32.988415, 44.401943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479053, 33.307728, 44.635769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005859, -0.591492, 0.806290,
		0.989415, 0.113484, 0.090441,
		-0.144996, 0.798285, 0.584566,
		33.435555, 33.547215, 44.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895489, 32.874699, 44.976521>,  <33.537052, 32.988415, 44.401943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895489, 32.874699, 44.976521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627796, 33.135899, 45.118347>,  <33.467182, 33.292618, 45.203442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627796, 33.135899, 45.118347>,  <33.895489, 32.874699, 44.976521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627796, 33.135899, 45.118347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206730, -0.621959, 0.755268,
		0.713716, 0.432151, 0.551230,
		-0.669232, 0.653003, 0.354563,
		33.427025, 33.331799, 45.224716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041359, 32.829498, 45.672546>,  <33.895489, 32.874699, 44.976521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041359, 32.829498, 45.672546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687824, 33.012394, 45.633026>,  <33.475704, 33.122131, 45.609314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687824, 33.012394, 45.633026>,  <34.041359, 32.829498, 45.672546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687824, 33.012394, 45.633026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355816, -0.520000, 0.776528,
		0.303683, 0.721480, 0.622289,
		-0.883839, 0.457238, -0.098799,
		33.422672, 33.149567, 45.603386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958557, 33.125877, 46.292812>,  <34.041359, 32.829498, 45.672546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958557, 33.125877, 46.292812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596111, 33.090973, 46.127239>,  <33.378643, 33.070030, 46.027893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596111, 33.090973, 46.127239>,  <33.958557, 33.125877, 46.292812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596111, 33.090973, 46.127239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297334, -0.564659, 0.769904,
		-0.300918, 0.820698, 0.485699,
		-0.906113, -0.087263, -0.413937,
		33.324276, 33.064793, 46.003059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588154, 33.210056, 46.843952>,  <33.958557, 33.125877, 46.292812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588154, 33.210056, 46.843952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352257, 33.018532, 46.583813>,  <33.210720, 32.903618, 46.427731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352257, 33.018532, 46.583813>,  <33.588154, 33.210056, 46.843952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352257, 33.018532, 46.583813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324714, -0.596746, 0.733795,
		-0.739439, 0.643924, 0.196448,
		-0.589738, -0.478807, -0.650348,
		33.175335, 32.874889, 46.388710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979504, 33.029339, 47.208244>,  <33.588154, 33.210056, 46.843952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979504, 33.029339, 47.208244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968788, 32.771725, 46.902435>,  <32.962360, 32.617157, 46.718948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968788, 32.771725, 46.902435>,  <32.979504, 33.029339, 47.208244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968788, 32.771725, 46.902435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191989, -0.747247, 0.636210,
		-0.981032, 0.163821, -0.103633,
		-0.026785, -0.644038, -0.764524,
		32.960754, 32.578514, 46.673077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330566, 32.737457, 47.320923>,  <32.979504, 33.029339, 47.208244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330566, 32.737457, 47.320923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540947, 32.500057, 47.077240>,  <32.667175, 32.357616, 46.931030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540947, 32.500057, 47.077240>,  <32.330566, 32.737457, 47.320923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540947, 32.500057, 47.077240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314975, -0.801272, 0.508678,
		-0.790034, -0.075662, -0.608376,
		0.525962, -0.593497, -0.609200,
		32.698730, 32.322006, 46.894478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879421, 32.173569, 47.169559>,  <32.330566, 32.737457, 47.320923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879421, 32.173569, 47.169559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247604, 32.030766, 47.105930>,  <32.468513, 31.945084, 47.067753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247604, 32.030766, 47.105930>,  <31.879421, 32.173569, 47.169559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247604, 32.030766, 47.105930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250043, -0.850697, 0.462377,
		-0.300391, -0.385824, -0.872298,
		0.920458, -0.357006, -0.159069,
		32.523743, 31.923664, 47.058208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811335, 31.525385, 46.936016>,  <31.879421, 32.173569, 47.169559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811335, 31.525385, 46.936016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168186, 31.507126, 47.115803>,  <32.382298, 31.496170, 47.223675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168186, 31.507126, 47.115803>,  <31.811335, 31.525385, 46.936016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168186, 31.507126, 47.115803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207731, -0.924921, 0.318384,
		0.401186, -0.377408, -0.834634,
		0.892131, -0.045648, 0.449464,
		32.435825, 31.493431, 47.250641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180931, 30.890301, 46.739944>,  <31.811335, 31.525385, 46.936016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180931, 30.890301, 46.739944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377941, 30.988636, 47.073887>,  <32.496147, 31.047638, 47.274250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377941, 30.988636, 47.073887>,  <32.180931, 30.890301, 46.739944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377941, 30.988636, 47.073887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244389, -0.881607, 0.403786,
		0.835278, -0.402905, -0.374137,
		0.492529, 0.245839, 0.834852,
		32.525700, 31.062387, 47.324341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384529, 30.278801, 47.081047>,  <32.180931, 30.890301, 46.739944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384529, 30.278801, 47.081047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473583, 30.524412, 47.383942>,  <32.527016, 30.671778, 47.565678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473583, 30.524412, 47.383942>,  <32.384529, 30.278801, 47.081047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473583, 30.524412, 47.383942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202887, -0.730541, 0.652032,
		0.953557, -0.298799, -0.038066,
		0.222635, 0.614027, 0.757235,
		32.540375, 30.708620, 47.611111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826870, 29.843227, 47.477184>,  <32.384529, 30.278801, 47.081047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826870, 29.843227, 47.477184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659061, 30.115896, 47.716961>,  <32.558376, 30.279497, 47.860825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659061, 30.115896, 47.716961>,  <32.826870, 29.843227, 47.477184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659061, 30.115896, 47.716961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202665, -0.714025, 0.670146,
		0.884834, 0.159654, 0.437699,
		-0.419519, 0.681674, 0.599437,
		32.533207, 30.320398, 47.896793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192978, 29.951916, 48.139721>,  <32.826870, 29.843227, 47.477184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192978, 29.951916, 48.139721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811344, 30.061985, 48.187050>,  <32.582363, 30.128027, 48.215446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811344, 30.061985, 48.187050>,  <33.192978, 29.951916, 48.139721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811344, 30.061985, 48.187050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105727, -0.678980, 0.726504,
		0.280252, 0.680637, 0.676898,
		-0.954086, 0.275171, 0.118324,
		32.525120, 30.144537, 48.222546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181282, 29.735928, 48.818077>,  <33.192978, 29.951916, 48.139721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181282, 29.735928, 48.818077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797146, 29.835190, 48.767216>,  <32.566666, 29.894747, 48.736698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797146, 29.835190, 48.767216>,  <33.181282, 29.735928, 48.818077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797146, 29.835190, 48.767216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255223, -0.598666, 0.759250,
		0.112293, 0.761589, 0.638258,
		-0.960339, 0.248157, -0.127149,
		32.509045, 29.909637, 48.729073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782055, 29.928989, 49.509579>,  <33.181282, 29.735928, 48.818077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782055, 29.928989, 49.509579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505527, 29.804600, 49.248695>,  <32.339611, 29.729967, 49.092167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505527, 29.804600, 49.248695>,  <32.782055, 29.928989, 49.509579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505527, 29.804600, 49.248695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440963, -0.533475, 0.721773,
		-0.572386, 0.786575, 0.231675,
		-0.691322, -0.310973, -0.652204,
		32.298130, 29.711308, 49.053036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235703, 30.025162, 49.908253>,  <32.782055, 29.928989, 49.509579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235703, 30.025162, 49.908253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125145, 29.799431, 49.597088>,  <32.058811, 29.663992, 49.410389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125145, 29.799431, 49.597088>,  <32.235703, 30.025162, 49.908253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125145, 29.799431, 49.597088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074842, -0.794345, 0.602839,
		-0.958127, 0.224839, 0.177314,
		-0.276390, -0.564326, -0.777911,
		32.042229, 29.630133, 49.363716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494402, 29.906950, 49.899857>,  <32.235703, 30.025162, 49.908253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494402, 29.906950, 49.899857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744339, 29.628679, 49.758095>,  <31.894300, 29.461718, 49.673038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744339, 29.628679, 49.758095>,  <31.494402, 29.906950, 49.899857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744339, 29.628679, 49.758095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482341, -0.700906, 0.525431,
		-0.613938, -0.157365, -0.773509,
		0.624842, -0.695677, -0.354409,
		31.931791, 29.419975, 49.651772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052710, 29.338356, 49.879063>,  <31.494402, 29.906950, 49.899857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052710, 29.338356, 49.879063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399742, 29.139759, 49.867764>,  <31.607962, 29.020601, 49.860985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399742, 29.139759, 49.867764>,  <31.052710, 29.338356, 49.879063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399742, 29.139759, 49.867764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376646, -0.693121, 0.614590,
		-0.324714, -0.522569, -0.788341,
		0.867582, -0.496492, -0.028243,
		31.660017, 28.990812, 49.859291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960821, 28.645939, 49.892517>,  <31.052710, 29.338356, 49.879063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960821, 28.645939, 49.892517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344601, 28.667017, 50.003284>,  <31.574867, 28.679665, 50.069744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344601, 28.667017, 50.003284>,  <30.960821, 28.645939, 49.892517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344601, 28.667017, 50.003284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158414, -0.711776, 0.684309,
		0.233166, -0.700427, -0.674564,
		0.959447, 0.052698, 0.276920,
		31.632435, 28.682827, 50.086361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177717, 28.538054, 49.187050>,  <30.960821, 28.645939, 49.892517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177717, 28.538054, 49.187050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825041, 28.668568, 49.050720>,  <30.613436, 28.746876, 48.968922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825041, 28.668568, 49.050720>,  <31.177717, 28.538054, 49.187050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825041, 28.668568, 49.050720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051800, -0.651049, -0.757266,
		-0.468978, -0.685328, 0.557122,
		-0.881689, 0.326283, -0.340827,
		30.560534, 28.766453, 48.948471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563385, 27.966097, 49.271656>,  <31.177717, 28.538054, 49.187050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563385, 27.966097, 49.271656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545221, 28.236214, 48.977196>,  <30.534323, 28.398283, 48.800518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545221, 28.236214, 48.977196>,  <30.563385, 27.966097, 49.271656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545221, 28.236214, 48.977196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017386, -0.737334, -0.675305,
		-0.998817, -0.017866, 0.045223,
		-0.045410, 0.675292, -0.736151,
		30.531599, 28.438801, 48.756351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851107, 27.859791, 49.945431>,  <30.563385, 27.966097, 49.271656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851107, 27.859791, 49.945431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824659, 27.475826, 50.054390>,  <30.808790, 27.245447, 50.119766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824659, 27.475826, 50.054390>,  <30.851107, 27.859791, 49.945431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824659, 27.475826, 50.054390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528737, -0.265224, -0.806284,
		0.846206, 0.090717, 0.525076,
		-0.066119, -0.959910, 0.272400,
		30.804823, 27.187853, 50.136108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509878, 27.555248, 50.119961>,  <30.851107, 27.859791, 49.945431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509878, 27.555248, 50.119961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262424, 27.281950, 49.964798>,  <31.113953, 27.117971, 49.871700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262424, 27.281950, 49.964798>,  <31.509878, 27.555248, 50.119961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262424, 27.281950, 49.964798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612778, -0.110588, -0.782479,
		0.491727, -0.721767, 0.487091,
		-0.618634, -0.683244, -0.387904,
		31.076834, 27.076977, 49.848427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952845, 26.900944, 49.924839>,  <31.509878, 27.555248, 50.119961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952845, 26.900944, 49.924839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610645, 26.952850, 49.724327>,  <31.405325, 26.983994, 49.604019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610645, 26.952850, 49.724327>,  <31.952845, 26.900944, 49.924839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610645, 26.952850, 49.724327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467516, -0.222596, -0.855500,
		-0.222596, -0.966236, 0.129764,
		0.855500, -0.129764, 0.501280,
		31.353996, 26.991779, 49.573944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093327, 26.528589, 49.314270>,  <31.952845, 26.900944, 49.924839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093327, 26.528589, 49.314270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787510, 26.779171, 49.253563>,  <31.604021, 26.929520, 49.217140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787510, 26.779171, 49.253563>,  <32.093327, 26.528589, 49.314270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787510, 26.779171, 49.253563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256833, 0.080117, -0.963129,
		-0.591200, -0.775328, -0.222147,
		-0.764539, 0.626456, -0.151765,
		31.558147, 26.967108, 49.208035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835131, 26.289062, 48.620277>,  <32.093327, 26.528589, 49.314270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835131, 26.289062, 48.620277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641041, 26.622381, 48.726242>,  <31.524588, 26.822372, 48.789822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641041, 26.622381, 48.726242>,  <31.835131, 26.289062, 48.620277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641041, 26.622381, 48.726242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061542, 0.334760, -0.940291,
		-0.872221, -0.439949, -0.213717,
		-0.485224, 0.833295, 0.264910,
		31.495474, 26.872370, 48.805714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315540, 26.276072, 48.061153>,  <31.835131, 26.289062, 48.620277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315540, 26.276072, 48.061153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355541, 26.638960, 48.224594>,  <31.379541, 26.856693, 48.322659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355541, 26.638960, 48.224594>,  <31.315540, 26.276072, 48.061153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355541, 26.638960, 48.224594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010899, 0.411632, -0.911285,
		-0.994927, 0.086678, 0.051052,
		0.100003, 0.907219, 0.408599,
		31.385542, 26.911125, 48.347176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783073, 26.727121, 47.751003>,  <31.315540, 26.276072, 48.061153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783073, 26.727121, 47.751003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059801, 26.987677, 47.875637>,  <31.225838, 27.144009, 47.950417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059801, 26.987677, 47.875637>,  <30.783073, 26.727121, 47.751003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059801, 26.987677, 47.875637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008015, 0.438413, -0.898738,
		-0.722028, 0.619266, 0.308523,
		0.691818, 0.651386, 0.311583,
		31.267347, 27.183092, 47.969112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538725, 27.374443, 47.430843>,  <30.783073, 26.727121, 47.751003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538725, 27.374443, 47.430843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930134, 27.388723, 47.512051>,  <31.164980, 27.397291, 47.560776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930134, 27.388723, 47.512051>,  <30.538725, 27.374443, 47.430843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930134, 27.388723, 47.512051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161204, 0.481308, -0.861601,
		-0.128474, 0.875825, 0.465216,
		0.978523, 0.035699, 0.203022,
		31.223690, 27.399433, 47.572956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783653, 28.116865, 47.262573>,  <30.538725, 27.374443, 47.430843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783653, 28.116865, 47.262573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113625, 27.890800, 47.266270>,  <31.311607, 27.755161, 47.268486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113625, 27.890800, 47.266270>,  <30.783653, 28.116865, 47.262573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113625, 27.890800, 47.266270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267775, 0.376354, -0.886935,
		0.497783, 0.734134, 0.461801,
		0.824930, -0.565160, 0.009241,
		31.361103, 27.721252, 47.269043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135189, 28.519762, 46.925503>,  <30.783653, 28.116865, 47.262573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135189, 28.519762, 46.925503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349390, 28.182241, 46.911430>,  <31.477911, 27.979729, 46.902985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349390, 28.182241, 46.911430>,  <31.135189, 28.519762, 46.925503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349390, 28.182241, 46.911430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356262, 0.263475, -0.896470,
		0.765711, 0.467528, 0.441706,
		0.535503, -0.843800, -0.035183,
		31.510040, 27.929102, 46.900875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817913, 28.673231, 46.739468>,  <31.135189, 28.519762, 46.925503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817913, 28.673231, 46.739468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743010, 28.297766, 46.623642>,  <31.698069, 28.072487, 46.554146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743010, 28.297766, 46.623642>,  <31.817913, 28.673231, 46.739468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743010, 28.297766, 46.623642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299800, 0.226104, -0.926821,
		0.935443, -0.260366, 0.239072,
		-0.187257, -0.938662, -0.289566,
		31.686832, 28.016167, 46.536774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408222, 28.543713, 46.344624>,  <31.817913, 28.673231, 46.739468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408222, 28.543713, 46.344624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120739, 28.284594, 46.243576>,  <31.948248, 28.129122, 46.182949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120739, 28.284594, 46.243576>,  <32.408222, 28.543713, 46.344624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120739, 28.284594, 46.243576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234956, 0.115677, -0.965098,
		0.654411, -0.752978, 0.069066,
		-0.718709, -0.647798, -0.252617,
		31.905127, 28.090254, 46.167789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704742, 28.220037, 45.852669>,  <32.408222, 28.543713, 46.344624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704742, 28.220037, 45.852669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312038, 28.160852, 45.804924>,  <32.076416, 28.125341, 45.776279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312038, 28.160852, 45.804924>,  <32.704742, 28.220037, 45.852669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312038, 28.160852, 45.804924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087828, 0.203814, -0.975062,
		0.168598, -0.967764, -0.187102,
		-0.981764, -0.147961, -0.119359,
		32.017509, 28.116463, 45.769115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618767, 27.800179, 45.227100>,  <32.704742, 28.220037, 45.852669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618767, 27.800179, 45.227100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238506, 27.918863, 45.263393>,  <32.010349, 27.990074, 45.285168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238506, 27.918863, 45.263393>,  <32.618767, 27.800179, 45.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238506, 27.918863, 45.263393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048982, 0.145246, -0.988182,
		-0.306384, -0.943857, -0.123544,
		-0.950647, 0.296712, 0.090733,
		31.953312, 28.007877, 45.290615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277454, 27.473307, 44.672371>,  <32.618767, 27.800179, 45.227100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277454, 27.473307, 44.672371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064709, 27.795439, 44.777107>,  <31.937061, 27.988718, 44.839951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064709, 27.795439, 44.777107>,  <32.277454, 27.473307, 44.672371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064709, 27.795439, 44.777107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046914, 0.280704, -0.958647,
		-0.845529, -0.522155, -0.111515,
		-0.531865, 0.805332, 0.261840,
		31.905149, 28.037039, 44.855659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819916, 27.518948, 44.145931>,  <32.277454, 27.473307, 44.672371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819916, 27.518948, 44.145931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848675, 27.882050, 44.311249>,  <31.865931, 28.099911, 44.410439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848675, 27.882050, 44.311249>,  <31.819916, 27.518948, 44.145931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848675, 27.882050, 44.311249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027260, 0.412418, -0.910587,
		-0.997039, 0.076736, 0.004907,
		0.071898, 0.907757, 0.413289,
		31.870245, 28.154377, 44.435234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398703, 27.825792, 43.688747>,  <31.819916, 27.518948, 44.145931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398703, 27.825792, 43.688747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608292, 28.120834, 43.859108>,  <31.734045, 28.297859, 43.961323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608292, 28.120834, 43.859108>,  <31.398703, 27.825792, 43.688747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608292, 28.120834, 43.859108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052590, 0.527102, -0.848173,
		-0.850109, 0.422023, 0.314979,
		0.523975, 0.737604, 0.425900,
		31.765484, 28.342115, 43.986877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058704, 28.513897, 43.481876>,  <31.398703, 27.825792, 43.688747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058704, 28.513897, 43.481876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419060, 28.628689, 43.612133>,  <31.635273, 28.697565, 43.690285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419060, 28.628689, 43.612133>,  <31.058704, 28.513897, 43.481876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419060, 28.628689, 43.612133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108632, 0.577282, -0.809286,
		-0.420236, 0.764452, 0.488892,
		0.900889, 0.286981, 0.325639,
		31.689327, 28.714783, 43.709824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084946, 29.363951, 43.387524>,  <31.058704, 28.513897, 43.481876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084946, 29.363951, 43.387524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443409, 29.191532, 43.429668>,  <31.658487, 29.088081, 43.454956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443409, 29.191532, 43.429668>,  <31.084946, 29.363951, 43.387524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443409, 29.191532, 43.429668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365795, 0.583216, -0.725296,
		0.251190, 0.688519, 0.680328,
		0.896157, -0.431047, 0.105359,
		31.712255, 29.062218, 43.461277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536114, 29.917517, 43.600109>,  <31.084946, 29.363951, 43.387524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536114, 29.917517, 43.600109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747862, 29.635458, 43.411415>,  <31.874910, 29.466223, 43.298199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747862, 29.635458, 43.411415>,  <31.536114, 29.917517, 43.600109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747862, 29.635458, 43.411415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384691, 0.695096, -0.607333,
		0.756160, 0.140033, 0.639228,
		0.529371, -0.705147, -0.471735,
		31.906673, 29.423914, 43.269894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108181, 30.217573, 43.409195>,  <31.536114, 29.917517, 43.600109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108181, 30.217573, 43.409195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118210, 29.886694, 43.184654>,  <32.124226, 29.688166, 43.049931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118210, 29.886694, 43.184654>,  <32.108181, 30.217573, 43.409195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118210, 29.886694, 43.184654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306653, 0.540820, -0.783248,
		0.951491, -0.152500, 0.267223,
		0.025074, -0.827199, -0.561350,
		32.125732, 29.638535, 43.016251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749504, 30.151432, 43.148415>,  <32.108181, 30.217573, 43.409195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749504, 30.151432, 43.148415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509274, 29.963390, 42.889709>,  <32.365135, 29.850565, 42.734486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509274, 29.963390, 42.889709>,  <32.749504, 30.151432, 43.148415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509274, 29.963390, 42.889709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328489, 0.592412, -0.735624,
		0.728973, -0.654255, -0.201365,
		-0.600578, -0.470104, -0.646768,
		32.329102, 29.822359, 42.695679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088455, 30.270782, 42.563862>,  <32.749504, 30.151432, 43.148415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088455, 30.270782, 42.563862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732731, 30.149275, 42.427128>,  <32.519295, 30.076370, 42.345085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732731, 30.149275, 42.427128>,  <33.088455, 30.270782, 42.563862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732731, 30.149275, 42.427128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247124, 0.309734, -0.918147,
		0.384783, -0.900994, -0.200382,
		-0.889310, -0.303768, -0.341837,
		32.465939, 30.058146, 42.324577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319481, 29.973936, 41.908634>,  <33.088455, 30.270782, 42.563862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319481, 29.973936, 41.908634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923271, 30.025585, 41.889938>,  <32.685543, 30.056574, 41.878723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923271, 30.025585, 41.889938>,  <33.319481, 29.973936, 41.908634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923271, 30.025585, 41.889938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085714, 0.315467, -0.945058,
		-0.107285, -0.940111, -0.323546,
		-0.990527, 0.129123, -0.046735,
		32.626114, 30.064322, 41.875919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125332, 29.723669, 41.236935>,  <33.319481, 29.973936, 41.908634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125332, 29.723669, 41.236935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818401, 29.961628, 41.332687>,  <32.634243, 30.104404, 41.390137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818401, 29.961628, 41.332687>,  <33.125332, 29.723669, 41.236935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818401, 29.961628, 41.332687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024078, 0.399763, -0.916302,
		-0.640803, -0.697341, -0.321073,
		-0.767328, 0.594900, 0.239379,
		32.588203, 30.140099, 41.404503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573460, 29.619114, 40.724289>,  <33.125332, 29.723669, 41.236935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573460, 29.619114, 40.724289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509594, 29.978025, 40.888920>,  <32.471275, 30.193373, 40.987698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509594, 29.978025, 40.888920>,  <32.573460, 29.619114, 40.724289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509594, 29.978025, 40.888920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029641, 0.421095, -0.906532,
		-0.986726, -0.132545, -0.093832,
		-0.159668, 0.897280, 0.411576,
		32.461693, 30.247210, 41.012394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084309, 29.941061, 40.257080>,  <32.573460, 29.619114, 40.724289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084309, 29.941061, 40.257080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232185, 30.244255, 40.472034>,  <32.320911, 30.426172, 40.601009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232185, 30.244255, 40.472034>,  <32.084309, 29.941061, 40.257080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232185, 30.244255, 40.472034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012091, 0.582239, -0.812928,
		-0.929075, 0.294036, 0.224415,
		0.369693, 0.757984, 0.537389,
		32.343094, 30.471651, 40.633251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707850, 30.506739, 40.012936>,  <32.084309, 29.941061, 40.257080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707850, 30.506739, 40.012936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016865, 30.677214, 40.201210>,  <32.202274, 30.779499, 40.314175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016865, 30.677214, 40.201210>,  <31.707850, 30.506739, 40.012936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016865, 30.677214, 40.201210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189862, 0.552317, -0.811725,
		-0.605917, 0.716455, 0.345769,
		0.772539, 0.426190, 0.470687,
		32.248627, 30.805071, 40.342415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617109, 31.264614, 39.912563>,  <31.707850, 30.506739, 40.012936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617109, 31.264614, 39.912563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992342, 31.207100, 40.038631>,  <32.217480, 31.172592, 40.114273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992342, 31.207100, 40.038631>,  <31.617109, 31.264614, 39.912563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992342, 31.207100, 40.038631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334641, 0.611350, -0.717124,
		-0.089568, 0.778188, 0.621611,
		0.938080, -0.143785, 0.315171,
		32.273766, 31.163965, 40.133183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903481, 31.933355, 40.094292>,  <31.617109, 31.264614, 39.912563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903481, 31.933355, 40.094292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219143, 31.700745, 40.015236>,  <32.408539, 31.561178, 39.967804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219143, 31.700745, 40.015236>,  <31.903481, 31.933355, 40.094292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219143, 31.700745, 40.015236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341669, 0.683048, -0.645529,
		0.510390, 0.441895, 0.737720,
		0.789154, -0.581528, -0.197640,
		32.455891, 31.526287, 39.955944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625702, 32.438667, 40.039200>,  <31.903481, 31.933355, 40.094292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625702, 32.438667, 40.039200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709545, 32.096996, 39.848858>,  <32.759850, 31.891993, 39.734653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709545, 32.096996, 39.848858>,  <32.625702, 32.438667, 40.039200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709545, 32.096996, 39.848858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402231, 0.518909, -0.754283,
		0.891221, -0.033299, 0.452346,
		0.209609, -0.854180, -0.475857,
		32.772427, 31.840742, 39.706100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294598, 32.562416, 39.793633>,  <32.625702, 32.438667, 40.039200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294598, 32.562416, 39.793633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151340, 32.264885, 39.567905>,  <33.065384, 32.086365, 39.432468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151340, 32.264885, 39.567905>,  <33.294598, 32.562416, 39.793633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151340, 32.264885, 39.567905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398737, 0.424663, -0.812816,
		0.844240, -0.516119, 0.144501,
		-0.358145, -0.743829, -0.564313,
		33.043896, 32.041737, 39.398613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880901, 32.251377, 39.373184>,  <33.294598, 32.562416, 39.793633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880901, 32.251377, 39.373184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545383, 32.151112, 39.179859>,  <33.344074, 32.090954, 39.063862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545383, 32.151112, 39.179859>,  <33.880901, 32.251377, 39.373184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545383, 32.151112, 39.179859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386650, 0.350732, -0.852929,
		0.383319, -0.902303, -0.197269,
		-0.838790, -0.250670, -0.483318,
		33.293747, 32.075912, 39.034863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147533, 31.926983, 38.850048>,  <33.880901, 32.251377, 39.373184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147533, 31.926983, 38.850048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771584, 31.990870, 38.729305>,  <33.546013, 32.029202, 38.656860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771584, 31.990870, 38.729305>,  <34.147533, 31.926983, 38.850048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771584, 31.990870, 38.729305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340111, 0.357778, -0.869666,
		-0.030903, -0.920046, -0.390590,
		-0.939877, 0.159719, -0.301861,
		33.489620, 32.038784, 38.638748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080814, 31.662464, 38.064621>,  <34.147533, 31.926983, 38.850048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080814, 31.662464, 38.064621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802998, 31.939280, 38.143311>,  <33.636307, 32.105370, 38.190525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802998, 31.939280, 38.143311>,  <34.080814, 31.662464, 38.064621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802998, 31.939280, 38.143311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142480, 0.400321, -0.905231,
		-0.705206, -0.600689, -0.376640,
		-0.694539, 0.692038, 0.196722,
		33.594635, 32.146893, 38.202328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744705, 31.673740, 37.456722>,  <34.080814, 31.662464, 38.064621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744705, 31.673740, 37.456722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596272, 31.996708, 37.640190>,  <33.507214, 32.190487, 37.750271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596272, 31.996708, 37.640190>,  <33.744705, 31.673740, 37.456722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596272, 31.996708, 37.640190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062873, 0.514646, -0.855094,
		-0.926469, -0.288472, -0.241741,
		-0.371082, 0.807418, 0.458667,
		33.484947, 32.238934, 37.777790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207054, 31.953793, 37.004562>,  <33.744705, 31.673740, 37.456722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207054, 31.953793, 37.004562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329876, 32.252586, 37.240437>,  <33.403568, 32.431862, 37.381962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329876, 32.252586, 37.240437>,  <33.207054, 31.953793, 37.004562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329876, 32.252586, 37.240437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119954, 0.584299, -0.802624,
		-0.944102, 0.317184, 0.089807,
		0.307054, 0.746987, 0.589685,
		33.421993, 32.476681, 37.417343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880417, 32.557514, 36.725609>,  <33.207054, 31.953793, 37.004562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880417, 32.557514, 36.725609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194740, 32.690128, 36.934448>,  <33.383335, 32.769699, 37.059750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194740, 32.690128, 36.934448>,  <32.880417, 32.557514, 36.725609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194740, 32.690128, 36.934448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171089, 0.694701, -0.698655,
		-0.594330, 0.638336, 0.489182,
		0.785812, 0.331538, 0.522094,
		33.430485, 32.789589, 37.091076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778748, 33.269226, 36.715309>,  <32.880417, 32.557514, 36.725609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778748, 33.269226, 36.715309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160824, 33.209095, 36.817295>,  <33.390068, 33.173016, 36.878487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160824, 33.209095, 36.817295>,  <32.778748, 33.269226, 36.715309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160824, 33.209095, 36.817295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295780, 0.516955, -0.803288,
		-0.011049, 0.842709, 0.538256,
		0.955192, -0.150330, 0.254969,
		33.447380, 33.163998, 36.893787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000275, 33.915146, 36.732052>,  <32.778748, 33.269226, 36.715309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000275, 33.915146, 36.732052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333981, 33.695835, 36.708725>,  <33.534203, 33.564251, 36.694729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333981, 33.695835, 36.708725>,  <33.000275, 33.915146, 36.732052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333981, 33.695835, 36.708725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323489, 0.572365, -0.753494,
		0.446497, 0.609749, 0.654864,
		0.834263, -0.548274, -0.058313,
		33.584259, 33.531353, 36.691231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653248, 34.353615, 36.683685>,  <33.000275, 33.915146, 36.732052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653248, 34.353615, 36.683685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789181, 34.006603, 36.538414>,  <33.870739, 33.798397, 36.451252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789181, 34.006603, 36.538414>,  <33.653248, 34.353615, 36.683685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789181, 34.006603, 36.538414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399283, 0.482717, -0.779460,
		0.851521, 0.119873, 0.510434,
		0.339832, -0.867533, -0.363181,
		33.891129, 33.746342, 36.429459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408199, 34.412178, 36.464771>,  <33.653248, 34.353615, 36.683685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408199, 34.412178, 36.464771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203781, 34.130363, 36.267811>,  <34.081131, 33.961277, 36.149635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203781, 34.130363, 36.267811>,  <34.408199, 34.412178, 36.464771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203781, 34.130363, 36.267811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149620, 0.491201, -0.858100,
		0.846429, -0.512205, -0.145616,
		-0.511050, -0.704534, -0.492403,
		34.050465, 33.919003, 36.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850693, 34.320927, 35.991638>,  <34.408199, 34.412178, 36.464771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850693, 34.320927, 35.991638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526814, 34.131107, 35.853542>,  <34.332485, 34.017216, 35.770683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526814, 34.131107, 35.853542>,  <34.850693, 34.320927, 35.991638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526814, 34.131107, 35.853542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191625, 0.342255, -0.919860,
		0.554683, -0.810963, -0.186186,
		-0.809695, -0.474553, -0.345243,
		34.283905, 33.988743, 35.749969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046902, 33.840336, 35.426025>,  <34.850693, 34.320927, 35.991638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046902, 33.840336, 35.426025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654099, 33.902012, 35.382416>,  <34.418415, 33.939018, 35.356251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654099, 33.902012, 35.382416>,  <35.046902, 33.840336, 35.426025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654099, 33.902012, 35.382416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117994, 0.050280, -0.991740,
		-0.147434, -0.986761, -0.067569,
		-0.982008, 0.154189, -0.109019,
		34.359497, 33.948269, 35.349709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911301, 33.449024, 34.877815>,  <35.046902, 33.840336, 35.426025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911301, 33.449024, 34.877815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646275, 33.746254, 34.915459>,  <34.487259, 33.924591, 34.938046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646275, 33.746254, 34.915459>,  <34.911301, 33.449024, 34.877815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646275, 33.746254, 34.915459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048993, 0.168373, -0.984505,
		-0.747404, -0.647684, -0.147963,
		-0.662562, 0.743072, 0.094111,
		34.447506, 33.969177, 34.943691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743263, 32.777763, 34.356277>,  <34.911301, 33.449024, 34.877815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743263, 32.777763, 34.356277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126049, 32.670834, 34.401466>,  <35.355721, 32.606674, 34.428581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126049, 32.670834, 34.401466>,  <34.743263, 32.777763, 34.356277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126049, 32.670834, 34.401466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287392, -0.818704, 0.497122,
		-0.040402, -0.508193, -0.860295,
		0.956961, -0.267326, 0.112973,
		35.413136, 32.590637, 34.435360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765343, 32.106289, 34.241295>,  <34.743263, 32.777763, 34.356277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765343, 32.106289, 34.241295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091011, 32.178890, 34.461906>,  <35.286411, 32.222450, 34.594273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091011, 32.178890, 34.461906>,  <34.765343, 32.106289, 34.241295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091011, 32.178890, 34.461906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183497, -0.820766, 0.540992,
		0.550867, -0.541663, -0.634938,
		0.814171, 0.181505, 0.551527,
		35.335262, 32.233341, 34.627365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106712, 31.422686, 34.416580>,  <34.765343, 32.106289, 34.241295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106712, 31.422686, 34.416580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260494, 31.664324, 34.695797>,  <35.352764, 31.809307, 34.863327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260494, 31.664324, 34.695797>,  <35.106712, 31.422686, 34.416580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260494, 31.664324, 34.695797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018571, -0.761066, 0.648409,
		0.922957, -0.236321, -0.303815,
		0.384456, 0.604096, 0.698042,
		35.375832, 31.845552, 34.905209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687672, 30.953188, 34.793606>,  <35.106712, 31.422686, 34.416580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687672, 30.953188, 34.793606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585033, 31.254667, 35.035629>,  <35.523449, 31.435555, 35.180843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585033, 31.254667, 35.035629>,  <35.687672, 30.953188, 34.793606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585033, 31.254667, 35.035629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067229, -0.610586, 0.789091,
		0.964178, 0.243156, 0.106004,
		-0.256596, 0.753697, 0.605061,
		35.508053, 31.480776, 35.217148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076195, 30.820915, 35.311623>,  <35.687672, 30.953188, 34.793606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076195, 30.820915, 35.311623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795429, 31.059597, 35.467190>,  <35.626968, 31.202806, 35.560532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795429, 31.059597, 35.467190>,  <36.076195, 30.820915, 35.311623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795429, 31.059597, 35.467190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067757, -0.487616, 0.870425,
		0.709031, 0.637316, 0.301834,
		-0.701915, 0.596706, 0.388918,
		35.584854, 31.238609, 35.583866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383129, 31.256733, 35.900177>,  <36.076195, 30.820915, 35.311623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383129, 31.256733, 35.900177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984135, 31.261721, 35.928089>,  <35.744740, 31.264713, 35.944836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984135, 31.261721, 35.928089>,  <36.383129, 31.256733, 35.900177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984135, 31.261721, 35.928089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057627, -0.430657, 0.900674,
		0.041281, 0.902429, 0.428855,
		-0.997484, 0.012468, 0.069782,
		35.684891, 31.265461, 35.949024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272682, 31.508566, 36.640194>,  <36.383129, 31.256733, 35.900177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272682, 31.508566, 36.640194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932693, 31.338129, 36.516266>,  <35.728699, 31.235867, 36.441910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932693, 31.338129, 36.516266>,  <36.272682, 31.508566, 36.640194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932693, 31.338129, 36.516266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001160, -0.589599, 0.807696,
		-0.526823, 0.686161, 0.501638,
		-0.849975, -0.426094, -0.309818,
		35.677700, 31.210300, 36.423321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891975, 31.458813, 37.269680>,  <36.272682, 31.508566, 36.640194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891975, 31.458813, 37.269680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712090, 31.214895, 37.008633>,  <35.604156, 31.068544, 36.852005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712090, 31.214895, 37.008633>,  <35.891975, 31.458813, 37.269680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712090, 31.214895, 37.008633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060225, -0.708307, 0.703330,
		-0.891139, 0.355602, 0.281811,
		-0.449715, -0.609793, -0.652617,
		35.577175, 31.031958, 36.812847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128796, 31.340048, 37.521992>,  <35.891975, 31.458813, 37.269680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128796, 31.340048, 37.521992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291264, 31.052925, 37.295795>,  <35.388744, 30.880651, 37.160080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291264, 31.052925, 37.295795>,  <35.128796, 31.340048, 37.521992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291264, 31.052925, 37.295795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227309, -0.678748, 0.698307,
		-0.885073, -0.155093, -0.438853,
		0.406173, -0.717807, -0.565487,
		35.413116, 30.837584, 37.126148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522915, 30.817423, 37.443951>,  <35.128796, 31.340048, 37.521992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522915, 30.817423, 37.443951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869705, 30.637581, 37.357971>,  <35.077782, 30.529676, 37.306385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869705, 30.637581, 37.357971>,  <34.522915, 30.817423, 37.443951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869705, 30.637581, 37.357971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158210, -0.657336, 0.736803,
		-0.472563, -0.604785, -0.641029,
		0.866980, -0.449603, -0.214950,
		35.129799, 30.502699, 37.293488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363792, 30.180464, 37.354187>,  <34.522915, 30.817423, 37.443951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363792, 30.180464, 37.354187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752819, 30.170853, 37.446739>,  <34.986237, 30.165085, 37.502270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752819, 30.170853, 37.446739>,  <34.363792, 30.180464, 37.354187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752819, 30.170853, 37.446739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179608, -0.709673, 0.681253,
		0.147834, -0.704122, -0.694520,
		0.972567, -0.024028, 0.231380,
		35.044590, 30.163645, 37.516151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515827, 29.518684, 37.301777>,  <34.363792, 30.180464, 37.354187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515827, 29.518684, 37.301777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795227, 29.672318, 37.543301>,  <34.962868, 29.764498, 37.688213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795227, 29.672318, 37.543301>,  <34.515827, 29.518684, 37.301777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795227, 29.672318, 37.543301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208629, -0.697808, 0.685228,
		0.684526, -0.604601, -0.407286,
		0.698497, 0.384085, 0.603805,
		35.004776, 29.787542, 37.724442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062065, 29.012827, 37.400959>,  <34.515827, 29.518684, 37.301777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062065, 29.012827, 37.400959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090687, 29.268345, 37.707375>,  <35.107861, 29.421656, 37.891224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090687, 29.268345, 37.707375>,  <35.062065, 29.012827, 37.400959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090687, 29.268345, 37.707375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101828, -0.768676, 0.631480,
		0.992225, 0.032818, -0.120051,
		0.071556, 0.638795, 0.766042,
		35.112152, 29.459984, 37.937187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375523, 28.639080, 37.860382>,  <35.062065, 29.012827, 37.400959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375523, 28.639080, 37.860382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251335, 28.920845, 38.115696>,  <35.176823, 29.089905, 38.268883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251335, 28.920845, 38.115696>,  <35.375523, 28.639080, 37.860382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251335, 28.920845, 38.115696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138363, -0.697805, 0.702797,
		0.940459, 0.129884, 0.314114,
		-0.310473, 0.704413, 0.638286,
		35.158192, 29.132170, 38.307182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606396, 28.397602, 38.477375>,  <35.375523, 28.639080, 37.860382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606396, 28.397602, 38.477375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351639, 28.688032, 38.581055>,  <35.198784, 28.862289, 38.643265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351639, 28.688032, 38.581055>,  <35.606396, 28.397602, 38.477375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351639, 28.688032, 38.581055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186294, -0.471187, 0.862135,
		0.748109, 0.500797, 0.435358,
		-0.636889, 0.726075, 0.259204,
		35.160572, 28.905855, 38.658817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928432, 28.748760, 39.057083>,  <35.606396, 28.397602, 38.477375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928432, 28.748760, 39.057083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533062, 28.809200, 39.062374>,  <35.295837, 28.845465, 39.065548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533062, 28.809200, 39.062374>,  <35.928432, 28.748760, 39.057083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533062, 28.809200, 39.062374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029610, -0.277748, 0.960198,
		0.148759, 0.948696, 0.279009,
		-0.988430, 0.151100, 0.013227,
		35.236534, 28.854530, 39.066341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904125, 28.708782, 39.849270>,  <35.928432, 28.748760, 39.057083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904125, 28.708782, 39.849270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533653, 28.695364, 39.699039>,  <35.311371, 28.687313, 39.608902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533653, 28.695364, 39.699039>,  <35.904125, 28.708782, 39.849270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533653, 28.695364, 39.699039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355630, -0.253379, 0.899626,
		-0.125339, 0.966785, 0.222747,
		-0.926184, -0.033543, -0.375576,
		35.255798, 28.685301, 39.586369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419479, 29.018045, 40.339008>,  <35.904125, 28.708782, 39.849270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419479, 29.018045, 40.339008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176750, 28.805643, 40.102432>,  <35.031113, 28.678202, 39.960487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176750, 28.805643, 40.102432>,  <35.419479, 29.018045, 40.339008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176750, 28.805643, 40.102432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590904, -0.196279, 0.782501,
		-0.531597, 0.824324, -0.194665,
		-0.606825, -0.531004, -0.591437,
		34.994701, 28.646341, 39.924999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690048, 29.354183, 40.328712>,  <35.419479, 29.018045, 40.339008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690048, 29.354183, 40.328712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690708, 28.959110, 40.266125>,  <34.691105, 28.722067, 40.228573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690708, 28.959110, 40.266125>,  <34.690048, 29.354183, 40.328712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690708, 28.959110, 40.266125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464157, -0.139347, 0.874723,
		-0.885751, 0.071179, -0.458670,
		0.001652, -0.987682, -0.156465,
		34.691204, 28.662806, 40.219185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087353, 29.101452, 40.782360>,  <34.690048, 29.354183, 40.328712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087353, 29.101452, 40.782360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291710, 28.769062, 40.694302>,  <34.414326, 28.569628, 40.641468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291710, 28.769062, 40.694302>,  <34.087353, 29.101452, 40.782360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291710, 28.769062, 40.694302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279247, -0.402623, 0.871731,
		-0.813023, -0.383890, -0.437747,
		0.510896, -0.830977, -0.220142,
		34.444981, 28.519770, 40.628258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664799, 28.481716, 40.866467>,  <34.087353, 29.101452, 40.782360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664799, 28.481716, 40.866467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045811, 28.364647, 40.900024>,  <34.274418, 28.294405, 40.920158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045811, 28.364647, 40.900024>,  <33.664799, 28.481716, 40.866467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045811, 28.364647, 40.900024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181626, -0.325091, 0.928078,
		-0.244348, -0.899255, -0.362814,
		0.952526, -0.292670, 0.083893,
		34.331570, 28.276846, 40.925194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644337, 27.834641, 41.107246>,  <33.664799, 28.481716, 40.866467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644337, 27.834641, 41.107246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016964, 27.938850, 41.208679>,  <34.240540, 28.001377, 41.269539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016964, 27.938850, 41.208679>,  <33.644337, 27.834641, 41.107246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016964, 27.938850, 41.208679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113596, -0.454003, 0.883729,
		0.345363, -0.852061, -0.393340,
		0.931569, 0.260526, 0.253586,
		34.296436, 28.017008, 41.284756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913143, 27.299784, 41.568871>,  <33.644337, 27.834641, 41.107246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913143, 27.299784, 41.568871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167126, 27.602329, 41.631786>,  <34.319515, 27.783857, 41.669537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167126, 27.602329, 41.631786>,  <33.913143, 27.299784, 41.568871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167126, 27.602329, 41.631786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002461, -0.201613, 0.979462,
		0.772542, -0.622306, -0.126155,
		0.634959, 0.756365, 0.157285,
		34.357613, 27.829239, 41.678970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474136, 27.008701, 42.034172>,  <33.913143, 27.299784, 41.568871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474136, 27.008701, 42.034172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484715, 27.407309, 42.065804>,  <34.491062, 27.646473, 42.084782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484715, 27.407309, 42.065804>,  <34.474136, 27.008701, 42.034172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484715, 27.407309, 42.065804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156442, -0.082252, 0.984256,
		0.987333, -0.013654, -0.158072,
		0.026441, 0.996518, 0.079074,
		34.492645, 27.706264, 42.089527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977238, 27.206743, 42.585941>,  <34.474136, 27.008701, 42.034172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977238, 27.206743, 42.585941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763702, 27.544935, 42.580578>,  <34.635582, 27.747850, 42.577358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763702, 27.544935, 42.580578>,  <34.977238, 27.206743, 42.585941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763702, 27.544935, 42.580578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076057, 0.063804, 0.995060,
		0.842158, 0.530183, -0.098365,
		-0.533840, 0.845479, -0.013409,
		34.603550, 27.798578, 42.576557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315506, 27.692520, 43.000134>,  <34.977238, 27.206743, 42.585941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315506, 27.692520, 43.000134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938904, 27.827314, 42.999161>,  <34.712944, 27.908192, 42.998577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938904, 27.827314, 42.999161>,  <35.315506, 27.692520, 43.000134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938904, 27.827314, 42.999161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043343, 0.128254, 0.990794,
		0.334196, 0.932733, -0.135358,
		-0.941506, 0.336986, -0.002434,
		34.656452, 27.928410, 42.998432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197445, 28.163223, 43.542160>,  <35.315506, 27.692520, 43.000134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197445, 28.163223, 43.542160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811363, 28.112511, 43.450680>,  <34.579716, 28.082083, 43.395790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811363, 28.112511, 43.450680>,  <35.197445, 28.163223, 43.542160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811363, 28.112511, 43.450680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250059, 0.191712, 0.949061,
		-0.076477, 0.973228, -0.216744,
		-0.965206, -0.126780, -0.228703,
		34.521801, 28.074476, 43.382069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808987, 28.745390, 43.832829>,  <35.197445, 28.163223, 43.542160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808987, 28.745390, 43.832829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580051, 28.420115, 43.790573>,  <34.442692, 28.224949, 43.765221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580051, 28.420115, 43.790573>,  <34.808987, 28.745390, 43.832829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580051, 28.420115, 43.790573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274224, 0.068391, 0.959231,
		-0.772810, 0.577969, -0.262138,
		-0.572334, -0.813188, -0.105639,
		34.408352, 28.176159, 43.758881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198849, 28.939569, 44.241932>,  <34.808987, 28.745390, 43.832829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198849, 28.939569, 44.241932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148529, 28.545202, 44.197853>,  <34.118336, 28.308582, 44.171406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148529, 28.545202, 44.197853>,  <34.198849, 28.939569, 44.241932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148529, 28.545202, 44.197853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184453, -0.085894, 0.979081,
		-0.974757, 0.143497, -0.171049,
		-0.125803, -0.985916, -0.110195,
		34.110786, 28.249428, 44.164795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509933, 28.582947, 44.630131>,  <34.198849, 28.939569, 44.241932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509933, 28.582947, 44.630131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759361, 28.274006, 44.581753>,  <33.909019, 28.088640, 44.552727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759361, 28.274006, 44.581753>,  <33.509933, 28.582947, 44.630131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759361, 28.274006, 44.581753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040987, -0.186798, 0.981543,
		-0.780692, -0.607103, -0.148138,
		0.623570, -0.772355, -0.120949,
		33.946434, 28.042299, 44.545467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433094, 28.244240, 45.210987>,  <33.509933, 28.582947, 44.630131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433094, 28.244240, 45.210987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765694, 28.066097, 45.078163>,  <33.965256, 27.959211, 44.998470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765694, 28.066097, 45.078163>,  <33.433094, 28.244240, 45.210987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765694, 28.066097, 45.078163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137426, -0.414252, 0.899728,
		-0.538256, -0.793758, -0.283247,
		0.831501, -0.445359, -0.332056,
		34.015144, 27.932489, 44.978546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412788, 27.530275, 45.425625>,  <33.433094, 28.244240, 45.210987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412788, 27.530275, 45.425625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801319, 27.575333, 45.341881>,  <34.034439, 27.602367, 45.291634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801319, 27.575333, 45.341881>,  <33.412788, 27.530275, 45.425625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801319, 27.575333, 45.341881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236087, -0.560788, 0.793587,
		-0.028017, -0.820261, -0.571302,
		0.971328, 0.112643, -0.209364,
		34.092716, 27.609125, 45.279072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782948, 26.863873, 45.313343>,  <33.412788, 27.530275, 45.425625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782948, 26.863873, 45.313343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059971, 27.123571, 45.439098>,  <34.226185, 27.279390, 45.514553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059971, 27.123571, 45.439098>,  <33.782948, 26.863873, 45.313343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059971, 27.123571, 45.439098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079163, -0.501598, 0.861471,
		0.717002, -0.571734, -0.398784,
		0.692561, 0.649246, 0.314387,
		34.267738, 27.318344, 45.533413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137547, 26.449827, 45.770138>,  <33.782948, 26.863873, 45.313343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137547, 26.449827, 45.770138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254623, 26.817402, 45.875881>,  <34.324867, 27.037947, 45.939327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254623, 26.817402, 45.875881>,  <34.137547, 26.449827, 45.770138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254623, 26.817402, 45.875881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237074, -0.337569, 0.910957,
		0.926352, -0.203956, -0.316660,
		0.292690, 0.918939, 0.264355,
		34.342430, 27.093084, 45.955189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666134, 26.288731, 46.122021>,  <34.137547, 26.449827, 45.770138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666134, 26.288731, 46.122021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565823, 26.655727, 46.245518>,  <34.505634, 26.875925, 46.319614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565823, 26.655727, 46.245518>,  <34.666134, 26.288731, 46.122021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565823, 26.655727, 46.245518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232880, -0.252386, 0.939185,
		0.939614, 0.307430, -0.150372,
		-0.250782, 0.917490, 0.308740,
		34.490589, 26.930975, 46.338139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151741, 26.523239, 46.502327>,  <34.666134, 26.288731, 46.122021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151741, 26.523239, 46.502327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849625, 26.747416, 46.638229>,  <34.668354, 26.881922, 46.719772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849625, 26.747416, 46.638229>,  <35.151741, 26.523239, 46.502327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849625, 26.747416, 46.638229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345278, -0.100369, 0.933118,
		0.557061, 0.822089, -0.117701,
		-0.755292, 0.560443, 0.339761,
		34.623035, 26.915548, 46.740158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425465, 27.004854, 47.034775>,  <35.151741, 26.523239, 46.502327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425465, 27.004854, 47.034775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029789, 26.976746, 47.086258>,  <34.792385, 26.959881, 47.117149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029789, 26.976746, 47.086258>,  <35.425465, 27.004854, 47.034775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029789, 26.976746, 47.086258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138492, -0.159106, 0.977499,
		-0.048210, 0.984757, 0.167118,
		-0.989189, -0.070270, 0.128711,
		34.733032, 26.955666, 47.124870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467636, 27.321375, 47.674282>,  <35.425465, 27.004854, 47.034775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467636, 27.321375, 47.674282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115986, 27.135406, 47.632359>,  <34.904995, 27.023825, 47.607204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115986, 27.135406, 47.632359>,  <35.467636, 27.321375, 47.674282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115986, 27.135406, 47.632359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091214, -0.379992, 0.920481,
		-0.467781, 0.799658, 0.376468,
		-0.879125, -0.464923, -0.104813,
		34.852249, 26.995930, 47.600914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869194, 27.259598, 48.342361>,  <35.467636, 27.321375, 47.674282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869194, 27.259598, 48.342361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196468, 27.405445, 48.520180>,  <36.392834, 27.492952, 48.626873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196468, 27.405445, 48.520180>,  <35.869194, 27.259598, 48.342361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196468, 27.405445, 48.520180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084624, 0.688401, -0.720376,
		-0.568689, 0.627023, 0.532386,
		0.818188, 0.364617, 0.444548,
		36.441925, 27.514830, 48.653545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856255, 28.061714, 48.332466>,  <35.869194, 27.259598, 48.342361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856255, 28.061714, 48.332466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237545, 27.941284, 48.343204>,  <36.466320, 27.869026, 48.349648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237545, 27.941284, 48.343204>,  <35.856255, 28.061714, 48.332466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237545, 27.941284, 48.343204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221881, 0.636640, -0.738551,
		0.205269, 0.709960, 0.673663,
		0.953223, -0.301075, 0.026844,
		36.523510, 27.850962, 48.351257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282768, 28.615690, 48.195526>,  <35.856255, 28.061714, 48.332466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282768, 28.615690, 48.195526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541698, 28.315300, 48.143372>,  <36.697056, 28.135065, 48.112080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541698, 28.315300, 48.143372>,  <36.282768, 28.615690, 48.195526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541698, 28.315300, 48.143372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345496, 0.441575, -0.828036,
		0.679412, 0.490962, 0.545304,
		0.647327, -0.750978, -0.130386,
		36.735897, 28.090006, 48.104256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956932, 28.925558, 48.176483>,  <36.282768, 28.615690, 48.195526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956932, 28.925558, 48.176483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992809, 28.567572, 48.001671>,  <37.014336, 28.352779, 47.896786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992809, 28.567572, 48.001671>,  <36.956932, 28.925558, 48.176483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992809, 28.567572, 48.001671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273659, 0.444053, -0.853187,
		0.957635, -0.043069, 0.284744,
		0.089695, -0.894965, -0.437027,
		37.019718, 28.299082, 47.870564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558277, 28.944950, 47.795280>,  <36.956932, 28.925558, 48.176483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558277, 28.944950, 47.795280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354839, 28.634453, 47.646271>,  <37.232777, 28.448154, 47.556866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354839, 28.634453, 47.646271>,  <37.558277, 28.944950, 47.795280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354839, 28.634453, 47.646271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309944, 0.238595, -0.920330,
		0.803282, -0.583540, 0.119243,
		-0.508598, -0.776243, -0.372524,
		37.202259, 28.401581, 47.534515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988827, 28.736536, 47.300579>,  <37.558277, 28.944950, 47.795280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988827, 28.736536, 47.300579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635586, 28.578274, 47.199707>,  <37.423641, 28.483316, 47.139183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635586, 28.578274, 47.199707>,  <37.988827, 28.736536, 47.300579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635586, 28.578274, 47.199707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115177, 0.338219, -0.933993,
		0.454833, -0.853852, -0.253110,
		-0.883098, -0.395658, -0.252177,
		37.370655, 28.459578, 47.124054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111645, 28.328989, 46.668861>,  <37.988827, 28.736536, 47.300579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111645, 28.328989, 46.668861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721783, 28.417276, 46.683495>,  <37.487865, 28.470249, 46.692276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721783, 28.417276, 46.683495>,  <38.111645, 28.328989, 46.668861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721783, 28.417276, 46.683495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020434, 0.075005, -0.996974,
		-0.222794, -0.972449, -0.068593,
		-0.974651, 0.220718, 0.036582,
		37.429386, 28.483492, 46.694469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773438, 27.879097, 46.196430>,  <38.111645, 28.328989, 46.668861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773438, 27.879097, 46.196430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535477, 28.197809, 46.238823>,  <37.392700, 28.389036, 46.264259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535477, 28.197809, 46.238823>,  <37.773438, 27.879097, 46.196430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535477, 28.197809, 46.238823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089083, 0.065679, -0.993856,
		-0.798845, -0.600691, 0.031907,
		-0.594905, 0.796779, 0.105979,
		37.357006, 28.436844, 46.270615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266426, 27.784349, 45.711700>,  <37.773438, 27.879097, 46.196430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266426, 27.784349, 45.711700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185314, 28.169544, 45.782734>,  <37.136646, 28.400661, 45.825356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185314, 28.169544, 45.782734>,  <37.266426, 27.784349, 45.711700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185314, 28.169544, 45.782734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207954, 0.134868, -0.968796,
		-0.956889, -0.233380, 0.172909,
		-0.202777, 0.962987, 0.177585,
		37.124481, 28.458441, 45.836010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539642, 27.979061, 45.462151>,  <37.266426, 27.784349, 45.711700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539642, 27.979061, 45.462151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739922, 28.324987, 45.477085>,  <36.860088, 28.532543, 45.486046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739922, 28.324987, 45.477085>,  <36.539642, 27.979061, 45.462151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739922, 28.324987, 45.477085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292931, 0.209866, -0.932817,
		-0.814548, 0.456128, 0.358412,
		0.500702, 0.864814, 0.037332,
		36.890133, 28.584433, 45.488285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071224, 28.406595, 45.103642>,  <36.539642, 27.979061, 45.462151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071224, 28.406595, 45.103642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416420, 28.608629, 45.108212>,  <36.623539, 28.729849, 45.110954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416420, 28.608629, 45.108212>,  <36.071224, 28.406595, 45.103642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416420, 28.608629, 45.108212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238999, 0.428070, -0.871571,
		-0.445108, 0.749430, 0.490136,
		0.862994, 0.505085, 0.011425,
		36.675320, 28.760155, 45.111637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970623, 29.221899, 45.064583>,  <36.071224, 28.406595, 45.103642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970623, 29.221899, 45.064583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335892, 29.130613, 44.929508>,  <36.555054, 29.075842, 44.848465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335892, 29.130613, 44.929508>,  <35.970623, 29.221899, 45.064583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335892, 29.130613, 44.929508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251808, 0.335582, -0.907732,
		0.320480, 0.913949, 0.248978,
		0.913173, -0.228215, -0.337687,
		36.609844, 29.062149, 44.828201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243202, 29.748213, 44.630394>,  <35.970623, 29.221899, 45.064583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243202, 29.748213, 44.630394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480907, 29.447453, 44.516201>,  <36.623531, 29.266996, 44.447685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480907, 29.447453, 44.516201>,  <36.243202, 29.748213, 44.630394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480907, 29.447453, 44.516201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173155, 0.227024, -0.958372,
		0.785412, 0.618955, 0.004716,
		0.594261, -0.751900, -0.285482,
		36.659187, 29.221882, 44.430557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722355, 30.005604, 44.131119>,  <36.243202, 29.748213, 44.630394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722355, 30.005604, 44.131119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715446, 29.611759, 44.061558>,  <36.711300, 29.375452, 44.019821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715446, 29.611759, 44.061558>,  <36.722355, 30.005604, 44.131119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715446, 29.611759, 44.061558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022376, 0.174262, -0.984445,
		0.999600, -0.013112, -0.025042,
		-0.017272, -0.984612, -0.173899,
		36.710266, 29.316376, 44.009388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135418, 29.894697, 43.577198>,  <36.722355, 30.005604, 44.131119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135418, 29.894697, 43.577198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942604, 29.544846, 43.556530>,  <36.826916, 29.334934, 43.544128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942604, 29.544846, 43.556530>,  <37.135418, 29.894697, 43.577198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942604, 29.544846, 43.556530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023780, 0.045896, -0.998663,
		0.875829, -0.482619, -0.001324,
		-0.482035, -0.874627, -0.051674,
		36.797993, 29.282457, 43.541027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496685, 29.404102, 43.099659>,  <37.135418, 29.894697, 43.577198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496685, 29.404102, 43.099659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110294, 29.303780, 43.124908>,  <36.878460, 29.243586, 43.140057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110294, 29.303780, 43.124908>,  <37.496685, 29.404102, 43.099659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110294, 29.303780, 43.124908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042307, -0.087534, -0.995263,
		0.255146, -0.964071, 0.073945,
		-0.965976, -0.250809, 0.063121,
		36.820503, 29.228537, 43.143845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461464, 28.863434, 42.642052>,  <37.496685, 29.404102, 43.099659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461464, 28.863434, 42.642052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079868, 28.968382, 42.700119>,  <36.850910, 29.031351, 42.734959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079868, 28.968382, 42.700119>,  <37.461464, 28.863434, 42.642052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079868, 28.968382, 42.700119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173623, -0.088608, -0.980818,
		-0.244476, -0.960890, 0.130085,
		-0.953984, 0.262372, 0.145170,
		36.793674, 29.047092, 42.743671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047695, 28.388556, 42.202168>,  <37.461464, 28.863434, 42.642052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047695, 28.388556, 42.202168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845844, 28.724222, 42.283306>,  <36.724731, 28.925623, 42.331989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845844, 28.724222, 42.283306>,  <37.047695, 28.388556, 42.202168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845844, 28.724222, 42.283306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078855, 0.189173, -0.978773,
		-0.859727, -0.509913, -0.029289,
		-0.504630, 0.839168, 0.202846,
		36.694454, 28.975973, 42.344158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581467, 28.522083, 41.634281>,  <37.047695, 28.388556, 42.202168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581467, 28.522083, 41.634281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614239, 28.879551, 41.810757>,  <36.633904, 29.094030, 41.916641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614239, 28.879551, 41.810757>,  <36.581467, 28.522083, 41.634281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614239, 28.879551, 41.810757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093624, 0.433817, -0.896123,
		-0.992231, 0.114725, -0.048126,
		0.081930, 0.893667, 0.441188,
		36.638817, 29.147652, 41.943111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065704, 28.966259, 41.250336>,  <36.581467, 28.522083, 41.634281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065704, 28.966259, 41.250336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345200, 29.193039, 41.424847>,  <36.512897, 29.329107, 41.529552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345200, 29.193039, 41.424847>,  <36.065704, 28.966259, 41.250336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345200, 29.193039, 41.424847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035740, 0.581426, -0.812814,
		-0.714487, 0.583534, 0.386000,
		0.698735, 0.566949, 0.436277,
		36.554821, 29.363123, 41.555729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864632, 29.575893, 41.042786>,  <36.065704, 28.966259, 41.250336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864632, 29.575893, 41.042786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255497, 29.589495, 41.126686>,  <36.490017, 29.597654, 41.177025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255497, 29.589495, 41.126686>,  <35.864632, 29.575893, 41.042786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255497, 29.589495, 41.126686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157809, 0.544900, -0.823517,
		-0.142294, 0.837812, 0.527090,
		0.977163, 0.034002, 0.209751,
		36.548645, 29.599695, 41.189610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073017, 30.266386, 40.942364>,  <35.864632, 29.575893, 41.042786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073017, 30.266386, 40.942364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426369, 30.088156, 40.884270>,  <36.638382, 29.981216, 40.849411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426369, 30.088156, 40.884270>,  <36.073017, 30.266386, 40.942364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426369, 30.088156, 40.884270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149467, 0.561594, -0.813801,
		0.444177, 0.697190, 0.562702,
		0.883384, -0.445577, -0.145240,
		36.691383, 29.954483, 40.840698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265198, 30.656603, 40.554893>,  <36.073017, 30.266386, 40.942364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265198, 30.656603, 40.554893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578003, 30.408400, 40.531475>,  <36.765686, 30.259478, 40.517422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578003, 30.408400, 40.531475>,  <36.265198, 30.656603, 40.554893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578003, 30.408400, 40.531475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292746, 0.448615, -0.844419,
		0.550235, 0.643206, 0.532474,
		0.782011, -0.620509, -0.058548,
		36.812607, 30.222246, 40.513912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854813, 31.058924, 40.409286>,  <36.265198, 30.656603, 40.554893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854813, 31.058924, 40.409286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922253, 30.689968, 40.270279>,  <36.962719, 30.468594, 40.186874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922253, 30.689968, 40.270279>,  <36.854813, 31.058924, 40.409286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922253, 30.689968, 40.270279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326997, 0.384942, -0.863072,
		0.929864, 0.031878, 0.366521,
		0.168603, -0.922390, -0.347520,
		36.972832, 30.413252, 40.166023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488873, 31.056587, 40.137337>,  <36.854813, 31.058924, 40.409286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488873, 31.056587, 40.137337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336559, 30.728445, 39.966682>,  <37.245171, 30.531559, 39.864292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336559, 30.728445, 39.966682>,  <37.488873, 31.056587, 40.137337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336559, 30.728445, 39.966682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352655, 0.297671, -0.887145,
		0.854772, -0.488267, 0.175954,
		-0.380787, -0.820358, -0.426631,
		37.222324, 30.482338, 39.838692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033436, 30.540508, 39.713493>,  <37.488873, 31.056587, 40.137337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033436, 30.540508, 39.713493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662136, 30.507437, 39.568428>,  <37.439358, 30.487595, 39.481388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662136, 30.507437, 39.568428>,  <38.033436, 30.540508, 39.713493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662136, 30.507437, 39.568428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349406, 0.140584, -0.926365,
		0.127568, -0.986612, -0.101611,
		-0.928246, -0.082671, -0.362662,
		37.383663, 30.482634, 39.459629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133671, 30.414665, 39.040176>,  <38.033436, 30.540508, 39.713493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133671, 30.414665, 39.040176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738346, 30.475134, 39.048065>,  <37.501152, 30.511415, 39.052799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738346, 30.475134, 39.048065>,  <38.133671, 30.414665, 39.040176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738346, 30.475134, 39.048065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012103, 0.206784, -0.978312,
		-0.151973, -0.966637, -0.206196,
		-0.988310, 0.151173, 0.019727,
		37.441853, 30.520485, 39.053982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903851, 30.061922, 38.505318>,  <38.133671, 30.414665, 39.040176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903851, 30.061922, 38.505318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646832, 30.352808, 38.601887>,  <37.492619, 30.527340, 38.659828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646832, 30.352808, 38.601887>,  <37.903851, 30.061922, 38.505318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646832, 30.352808, 38.601887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097730, 0.390276, -0.915496,
		-0.759985, -0.564659, -0.321843,
		-0.642551, 0.727217, 0.241420,
		37.454067, 30.570972, 38.674313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564236, 30.035904, 37.888008>,  <37.903851, 30.061922, 38.505318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564236, 30.035904, 37.888008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503551, 30.386988, 38.069824>,  <37.467140, 30.597639, 38.178913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503551, 30.386988, 38.069824>,  <37.564236, 30.035904, 37.888008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503551, 30.386988, 38.069824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085173, 0.469762, -0.878675,
		-0.984748, -0.094589, -0.146025,
		-0.151710, 0.877711, 0.454541,
		37.458038, 30.650301, 38.206188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247276, 30.533615, 37.401375>,  <37.564236, 30.035904, 37.888008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247276, 30.533615, 37.401375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345039, 30.822580, 37.660107>,  <37.403698, 30.995958, 37.815346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345039, 30.822580, 37.660107>,  <37.247276, 30.533615, 37.401375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345039, 30.822580, 37.660107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026527, 0.661827, -0.749187,
		-0.969310, 0.200266, 0.142592,
		0.244408, 0.722412, 0.646828,
		37.418362, 31.039305, 37.854156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759750, 31.222782, 37.357601>,  <37.247276, 30.533615, 37.401375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759750, 31.222782, 37.357601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127903, 31.311661, 37.486301>,  <37.348793, 31.364988, 37.563522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127903, 31.311661, 37.486301>,  <36.759750, 31.222782, 37.357601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127903, 31.311661, 37.486301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105359, 0.651499, -0.751298,
		-0.376558, 0.725381, 0.576217,
		0.920382, 0.222198, 0.321752,
		37.404018, 31.378321, 37.582829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870956, 31.893246, 37.066589>,  <36.759750, 31.222782, 37.357601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870956, 31.893246, 37.066589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238384, 31.806309, 37.198643>,  <37.458843, 31.754147, 37.277874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238384, 31.806309, 37.198643>,  <36.870956, 31.893246, 37.066589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238384, 31.806309, 37.198643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375901, 0.738528, -0.559709,
		-0.122165, 0.638231, 0.760090,
		0.918572, -0.217342, 0.330134,
		37.513954, 31.741106, 37.297684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290367, 32.590588, 37.186138>,  <36.870956, 31.893246, 37.066589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290367, 32.590588, 37.186138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567413, 32.302620, 37.168228>,  <37.733639, 32.129841, 37.157482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567413, 32.302620, 37.168228>,  <37.290367, 32.590588, 37.186138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567413, 32.302620, 37.168228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560559, 0.576287, -0.594698,
		0.453940, 0.386794, 0.802701,
		0.692612, -0.719919, -0.044779,
		37.775196, 32.086643, 37.154793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893131, 32.926407, 37.330345>,  <37.290367, 32.590588, 37.186138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893131, 32.926407, 37.330345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983727, 32.593910, 37.127274>,  <38.038082, 32.394413, 37.005428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983727, 32.593910, 37.127274>,  <37.893131, 32.926407, 37.330345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983727, 32.593910, 37.127274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726070, 0.491520, -0.480864,
		0.649251, -0.259705, 0.714861,
		0.226485, -0.831241, -0.507684,
		38.051674, 32.344540, 36.974968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644749, 32.853043, 37.465935>,  <37.893131, 32.926407, 37.330345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644749, 32.853043, 37.465935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553066, 32.633747, 37.144215>,  <38.498058, 32.502171, 36.951183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553066, 32.633747, 37.144215>,  <38.644749, 32.853043, 37.465935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553066, 32.633747, 37.144215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878748, 0.238845, -0.413225,
		0.418649, -0.801491, 0.427020,
		-0.229204, -0.548239, -0.804300,
		38.484306, 32.469276, 36.902924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214993, 32.246880, 37.335098>,  <38.644749, 32.853043, 37.465935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214993, 32.246880, 37.335098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020809, 32.308430, 36.990852>,  <38.904301, 32.345360, 36.784306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020809, 32.308430, 36.990852>,  <39.214993, 32.246880, 37.335098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020809, 32.308430, 36.990852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860024, 0.260983, -0.438459,
		0.157137, -0.953001, -0.259032,
		-0.485455, 0.153876, -0.860614,
		38.875172, 32.354591, 36.732670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497005, 31.726175, 36.841759>,  <39.214993, 32.246880, 37.335098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497005, 31.726175, 36.841759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359554, 32.039833, 36.635056>,  <39.277084, 32.228027, 36.511032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359554, 32.039833, 36.635056>,  <39.497005, 31.726175, 36.841759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359554, 32.039833, 36.635056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917979, 0.164406, -0.360951,
		-0.198079, -0.598405, -0.776322,
		-0.343627, 0.784144, -0.516758,
		39.256466, 32.275078, 36.480030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787930, 31.643707, 36.240009>,  <39.497005, 31.726175, 36.841759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787930, 31.643707, 36.240009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673237, 32.026226, 36.217098>,  <39.604420, 32.255737, 36.203350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673237, 32.026226, 36.217098>,  <39.787930, 31.643707, 36.240009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673237, 32.026226, 36.217098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767527, 0.193532, -0.611103,
		-0.573310, -0.219189, -0.789476,
		-0.286736, 0.956296, -0.057280,
		39.587215, 32.313114, 36.199913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004688, 31.813766, 35.625736>,  <39.787930, 31.643707, 36.240009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004688, 31.813766, 35.625736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957794, 32.173229, 35.794815>,  <39.929657, 32.388908, 35.896263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957794, 32.173229, 35.794815>,  <40.004688, 31.813766, 35.625736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957794, 32.173229, 35.794815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822579, 0.326349, -0.465682,
		-0.556435, 0.293109, -0.777475,
		-0.117233, 0.898656, 0.422697,
		39.922623, 32.442825, 35.921623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040318, 32.293770, 35.145142>,  <40.004688, 31.813766, 35.625736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040318, 32.293770, 35.145142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128841, 32.496693, 35.478287>,  <40.181953, 32.618446, 35.678173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128841, 32.496693, 35.478287>,  <40.040318, 32.293770, 35.145142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128841, 32.496693, 35.478287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802494, 0.390522, -0.451106,
		-0.554101, 0.768201, -0.320686,
		0.221305, 0.507306, 0.832865,
		40.195232, 32.648884, 35.728146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290710, 33.063992, 34.952629>,  <40.040318, 32.293770, 35.145142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290710, 33.063992, 34.952629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439987, 32.940105, 35.302441>,  <40.529556, 32.865772, 35.512329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439987, 32.940105, 35.302441>,  <40.290710, 33.063992, 34.952629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439987, 32.940105, 35.302441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873719, 0.434326, -0.219034,
		-0.311993, 0.845836, 0.432692,
		0.373197, -0.309714, 0.874529,
		40.551945, 32.847191, 35.564800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997448, 32.795853, 34.620987>,  <40.290710, 33.063992, 34.952629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997448, 32.795853, 34.620987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217354, 32.823460, 34.953972>,  <41.349297, 32.840023, 35.153763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217354, 32.823460, 34.953972>,  <40.997448, 32.795853, 34.620987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217354, 32.823460, 34.953972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794345, 0.265098, -0.546571,
		-0.258408, 0.961748, 0.090917,
		0.549765, 0.069019, 0.832463,
		41.382282, 32.844166, 35.203712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231026, 33.510212, 34.934242>,  <40.997448, 32.795853, 34.620987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231026, 33.510212, 34.934242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497231, 33.214108, 34.972401>,  <41.656952, 33.036446, 34.995296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497231, 33.214108, 34.972401>,  <41.231026, 33.510212, 34.934242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497231, 33.214108, 34.972401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656732, 0.520036, -0.546137,
		0.354677, 0.426111, 0.832246,
		0.665513, -0.740265, 0.095396,
		41.696884, 32.992027, 35.001019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900208, 33.680420, 35.054386>,  <41.231026, 33.510212, 34.934242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900208, 33.680420, 35.054386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914974, 33.352898, 34.825233>,  <41.923836, 33.156384, 34.687744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914974, 33.352898, 34.825233>,  <41.900208, 33.680420, 35.054386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914974, 33.352898, 34.825233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563544, 0.490478, -0.664718,
		0.825261, -0.298302, 0.479542,
		0.036918, -0.818808, -0.572879,
		41.926048, 33.107254, 34.653370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497051, 33.810051, 34.794411>,  <41.900208, 33.680420, 35.054386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497051, 33.810051, 34.794411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353584, 33.519238, 34.560219>,  <42.267502, 33.344749, 34.419704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353584, 33.519238, 34.560219>,  <42.497051, 33.810051, 34.794411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353584, 33.519238, 34.560219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646202, 0.259239, -0.717787,
		0.673632, -0.635784, 0.376828,
		-0.358669, -0.727031, -0.585476,
		42.245983, 33.301128, 34.384575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959156, 33.158085, 34.857288>,  <42.497051, 33.810051, 34.794411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959156, 33.158085, 34.857288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118015, 32.984165, 35.180576>,  <43.213329, 32.879814, 35.374550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118015, 32.984165, 35.180576>,  <42.959156, 33.158085, 34.857288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118015, 32.984165, 35.180576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531074, 0.609351, 0.588771,
		-0.748488, -0.663056, 0.011093,
		0.397148, -0.434797, 0.808224,
		43.237160, 32.853725, 35.423042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450066, 32.713860, 35.291893>,  <42.959156, 33.158085, 34.857288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450066, 32.713860, 35.291893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724751, 32.851929, 35.547794>,  <42.889561, 32.934772, 35.701336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724751, 32.851929, 35.547794>,  <42.450066, 32.713860, 35.291893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724751, 32.851929, 35.547794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669108, 0.644117, 0.370685,
		-0.284125, -0.682617, 0.673281,
		0.686708, 0.345177, 0.639754,
		42.930763, 32.955482, 35.739719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069099, 32.821976, 35.878487>,  <42.450066, 32.713860, 35.291893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069099, 32.821976, 35.878487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410263, 33.030590, 35.887806>,  <42.614964, 33.155758, 35.893398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410263, 33.030590, 35.887806>,  <42.069099, 32.821976, 35.878487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410263, 33.030590, 35.887806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487711, 0.780091, 0.391913,
		0.186223, -0.345628, 0.919708,
		0.852912, 0.521535, 0.023296,
		42.666138, 33.187050, 35.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067616, 33.200825, 36.572674>,  <42.069099, 32.821976, 35.878487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067616, 33.200825, 36.572674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357380, 33.379002, 36.362221>,  <42.531239, 33.485909, 36.235950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357380, 33.379002, 36.362221>,  <42.067616, 33.200825, 36.572674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357380, 33.379002, 36.362221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285255, 0.888489, 0.359469,
		0.627584, -0.110321, 0.770693,
		0.724409, 0.445440, -0.526131,
		42.574703, 33.512634, 36.204380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197803, 33.673237, 37.021160>,  <42.067616, 33.200825, 36.572674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197803, 33.673237, 37.021160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365723, 33.802490, 36.681900>,  <42.466473, 33.880043, 36.478344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365723, 33.802490, 36.681900>,  <42.197803, 33.673237, 37.021160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365723, 33.802490, 36.681900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118653, 0.945996, 0.301685,
		0.899829, -0.026011, 0.435467,
		0.419797, 0.323134, -0.848148,
		42.491661, 33.899429, 36.427456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689373, 34.128674, 37.202286>,  <42.197803, 33.673237, 37.021160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689373, 34.128674, 37.202286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640331, 34.229328, 36.818275>,  <42.610905, 34.289722, 36.587868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640331, 34.229328, 36.818275>,  <42.689373, 34.128674, 37.202286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640331, 34.229328, 36.818275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027385, 0.966097, 0.256724,
		0.992077, 0.057766, -0.111559,
		-0.122607, 0.251635, -0.960025,
		42.603550, 34.304817, 36.530270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146679, 34.677025, 37.031853>,  <42.689373, 34.128674, 37.202286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146679, 34.677025, 37.031853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836372, 34.681568, 36.779488>,  <42.650188, 34.684296, 36.628067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836372, 34.681568, 36.779488>,  <43.146679, 34.677025, 37.031853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836372, 34.681568, 36.779488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168735, 0.959695, 0.224751,
		0.608040, 0.280812, -0.742584,
		-0.775768, 0.011358, -0.630916,
		42.603642, 34.684975, 36.590214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169876, 35.395420, 36.812782>,  <43.146679, 34.677025, 37.031853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169876, 35.395420, 36.812782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811699, 35.281754, 36.675705>,  <42.596794, 35.213554, 36.593460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811699, 35.281754, 36.675705>,  <43.169876, 35.395420, 36.812782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811699, 35.281754, 36.675705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386363, 0.878461, 0.281122,
		0.221159, 0.384133, -0.896399,
		-0.895440, -0.284163, -0.342694,
		42.543068, 35.196507, 36.572895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814480, 36.021229, 36.450294>,  <43.169876, 35.395420, 36.812782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814480, 36.021229, 36.450294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522724, 35.767178, 36.551960>,  <42.347672, 35.614746, 36.612961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522724, 35.767178, 36.551960>,  <42.814480, 36.021229, 36.450294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522724, 35.767178, 36.551960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526517, 0.758401, 0.384198,
		-0.436773, 0.146410, -0.887577,
		-0.729390, -0.635132, 0.254162,
		42.303905, 35.576637, 36.628208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227737, 36.478359, 36.371033>,  <42.814480, 36.021229, 36.450294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227737, 36.478359, 36.371033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027176, 36.188347, 36.559895>,  <41.906841, 36.014339, 36.673210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027176, 36.188347, 36.559895>,  <42.227737, 36.478359, 36.371033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027176, 36.188347, 36.559895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363304, 0.671691, 0.645633,
		-0.785243, 0.152187, -0.600193,
		-0.501401, -0.725031, 0.472151,
		41.876755, 35.970837, 36.701538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578289, 36.655338, 36.459446>,  <42.227737, 36.478359, 36.371033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578289, 36.655338, 36.459446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622471, 36.382431, 36.748531>,  <41.648979, 36.218689, 36.921982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622471, 36.382431, 36.748531>,  <41.578289, 36.655338, 36.459446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622471, 36.382431, 36.748531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537915, 0.570417, 0.620703,
		-0.835732, -0.457316, -0.303997,
		0.110452, -0.682265, 0.722713,
		41.655605, 36.177750, 36.965343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914055, 36.525230, 36.827324>,  <41.578289, 36.655338, 36.459446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914055, 36.525230, 36.827324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185017, 36.426014, 37.104336>,  <41.347595, 36.366482, 37.270542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185017, 36.426014, 37.104336>,  <40.914055, 36.525230, 36.827324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185017, 36.426014, 37.104336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429320, 0.631157, 0.646007,
		-0.597333, -0.734925, 0.321059,
		0.677405, -0.248044, 0.692529,
		41.388237, 36.351601, 37.312096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507504, 36.306858, 37.377125>,  <40.914055, 36.525230, 36.827324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507504, 36.306858, 37.377125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867542, 36.356064, 37.544308>,  <41.083565, 36.385586, 37.644619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867542, 36.356064, 37.544308>,  <40.507504, 36.306858, 37.377125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867542, 36.356064, 37.544308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423664, 0.470930, 0.773779,
		-0.101643, -0.873551, 0.476001,
		0.900099, 0.123016, 0.417959,
		41.137573, 36.392967, 37.669697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540485, 36.003284, 38.102631>,  <40.507504, 36.306858, 37.377125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540485, 36.003284, 38.102631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836254, 36.272575, 38.104588>,  <41.013714, 36.434151, 38.105762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836254, 36.272575, 38.104588>,  <40.540485, 36.003284, 38.102631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836254, 36.272575, 38.104588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380178, 0.411534, 0.828314,
		0.555633, -0.614329, 0.560243,
		0.739416, 0.673230, 0.004893,
		41.058079, 36.474545, 38.106056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822193, 35.865528, 38.706966>,  <40.540485, 36.003284, 38.102631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822193, 35.865528, 38.706966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925945, 36.236366, 38.598728>,  <40.988197, 36.458870, 38.533787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925945, 36.236366, 38.598728>,  <40.822193, 35.865528, 38.706966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925945, 36.236366, 38.598728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284568, 0.341110, 0.895915,
		0.922898, -0.155384, 0.352300,
		0.259384, 0.927092, -0.270593,
		41.003761, 36.514492, 38.517551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123016, 36.081692, 39.272774>,  <40.822193, 35.865528, 38.706966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123016, 36.081692, 39.272774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029549, 36.417065, 39.075829>,  <40.973469, 36.618290, 38.957661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029549, 36.417065, 39.075829>,  <41.123016, 36.081692, 39.272774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029549, 36.417065, 39.075829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095513, 0.484142, 0.869760,
		0.967613, 0.250264, -0.033048,
		-0.233669, 0.838435, -0.492366,
		40.959450, 36.668594, 38.928120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499233, 36.559406, 39.573822>,  <41.123016, 36.081692, 39.272774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499233, 36.559406, 39.573822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238449, 36.797703, 39.386189>,  <41.081978, 36.940681, 39.273609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238449, 36.797703, 39.386189>,  <41.499233, 36.559406, 39.573822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238449, 36.797703, 39.386189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145403, 0.508937, 0.848435,
		0.744180, 0.621354, -0.245186,
		-0.651962, 0.595737, -0.469087,
		41.042862, 36.976425, 39.245461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699333, 37.263477, 39.582230>,  <41.499233, 36.559406, 39.573822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699333, 37.263477, 39.582230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301983, 37.270702, 39.536846>,  <41.063572, 37.275036, 39.509617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301983, 37.270702, 39.536846>,  <41.699333, 37.263477, 39.582230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301983, 37.270702, 39.536846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075523, 0.641553, 0.763352,
		0.086575, 0.766867, -0.635941,
		-0.993379, 0.018059, -0.113458,
		41.003971, 37.276119, 39.502808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516506, 37.975834, 39.613590>,  <41.699333, 37.263477, 39.582230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516506, 37.975834, 39.613590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186665, 37.766163, 39.698692>,  <40.988758, 37.640362, 39.749752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186665, 37.766163, 39.698692>,  <41.516506, 37.975834, 39.613590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186665, 37.766163, 39.698692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187413, 0.607974, 0.771521,
		-0.533764, 0.596326, -0.599576,
		-0.824604, -0.524179, 0.212756,
		40.939281, 37.608910, 39.762520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986851, 38.498032, 39.760231>,  <41.516506, 37.975834, 39.613590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986851, 38.498032, 39.760231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811749, 38.170753, 39.909325>,  <40.706688, 37.974388, 39.998779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811749, 38.170753, 39.909325>,  <40.986851, 38.498032, 39.760231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811749, 38.170753, 39.909325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335025, 0.533152, 0.776857,
		-0.834342, 0.215200, -0.507506,
		-0.437758, -0.818192, 0.372734,
		40.680420, 37.925297, 40.021145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235081, 38.598225, 39.804855>,  <40.986851, 38.498032, 39.760231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235081, 38.598225, 39.804855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355083, 38.326275, 40.072517>,  <40.427086, 38.163105, 40.233116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355083, 38.326275, 40.072517>,  <40.235081, 38.598225, 39.804855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355083, 38.326275, 40.072517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290099, 0.603221, 0.742945,
		-0.908758, -0.417007, -0.016263,
		0.300003, -0.679875, 0.669155,
		40.445084, 38.122311, 40.273262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761368, 38.651146, 40.264259>,  <40.235081, 38.598225, 39.804855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761368, 38.651146, 40.264259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066429, 38.471397, 40.450344>,  <40.249466, 38.363548, 40.561996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066429, 38.471397, 40.450344>,  <39.761368, 38.651146, 40.264259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066429, 38.471397, 40.450344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155236, 0.571056, 0.806100,
		-0.627898, -0.686995, 0.365762,
		0.762657, -0.449369, 0.465211,
		40.295227, 38.336586, 40.589909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483715, 38.396828, 40.809109>,  <39.761368, 38.651146, 40.264259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483715, 38.396828, 40.809109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874199, 38.413528, 40.894226>,  <40.108490, 38.423550, 40.945297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874199, 38.413528, 40.894226>,  <39.483715, 38.396828, 40.809109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874199, 38.413528, 40.894226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198164, 0.570238, 0.797220,
		-0.088057, -0.820418, 0.564942,
		0.976206, 0.041750, 0.212791,
		40.167061, 38.426052, 40.958065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361359, 38.535480, 41.565544>,  <39.483715, 38.396828, 40.809109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361359, 38.535480, 41.565544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729862, 38.633213, 41.444489>,  <39.950962, 38.691853, 41.371857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729862, 38.633213, 41.444489>,  <39.361359, 38.535480, 41.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729862, 38.633213, 41.444489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001893, 0.775242, 0.631661,
		0.388952, -0.582495, 0.713734,
		0.921256, 0.244335, -0.302635,
		40.006241, 38.706512, 41.353699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764908, 38.672733, 42.241062>,  <39.361359, 38.535480, 41.565544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764908, 38.672733, 42.241062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892570, 38.863224, 41.913319>,  <39.969166, 38.977520, 41.716671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892570, 38.863224, 41.913319>,  <39.764908, 38.672733, 42.241062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892570, 38.863224, 41.913319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054297, 0.853963, 0.517493,
		0.946146, -0.209648, 0.246687,
		0.319153, 0.476230, -0.819358,
		39.988316, 39.006092, 41.667511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407402, 38.960049, 42.463322>,  <39.764908, 38.672733, 42.241062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407402, 38.960049, 42.463322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241455, 39.164127, 42.161968>,  <40.141888, 39.286575, 41.981155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241455, 39.164127, 42.161968>,  <40.407402, 38.960049, 42.463322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241455, 39.164127, 42.161968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155562, 0.776040, 0.611198,
		0.896486, 0.370763, -0.242585,
		-0.414865, 0.510194, -0.753385,
		40.116997, 39.317184, 41.935951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729282, 38.470650, 42.990475>,  <40.407402, 38.960049, 42.463322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729282, 38.470650, 42.990475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700970, 38.161011, 43.242111>,  <40.683983, 37.975227, 43.393093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700970, 38.161011, 43.242111>,  <40.729282, 38.470650, 42.990475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700970, 38.161011, 43.242111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997481, -0.051958, 0.048299,
		-0.004702, 0.630926, 0.775829,
		-0.070783, -0.774101, 0.629092,
		40.679733, 37.928780, 43.430840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995647, 38.466846, 43.743336>,  <40.729282, 38.470650, 42.990475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995647, 38.466846, 43.743336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031284, 38.086353, 43.625206>,  <41.052666, 37.858059, 43.554329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031284, 38.086353, 43.625206>,  <40.995647, 38.466846, 43.743336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031284, 38.086353, 43.625206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928607, -0.027900, 0.370013,
		-0.360208, -0.307208, 0.880837,
		0.089096, -0.951233, -0.295325,
		41.058014, 37.800983, 43.536610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327507, 38.172173, 44.277325>,  <40.995647, 38.466846, 43.743336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327507, 38.172173, 44.277325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411674, 37.961941, 43.947601>,  <41.462173, 37.835800, 43.749767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411674, 37.961941, 43.947601>,  <41.327507, 38.172173, 44.277325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411674, 37.961941, 43.947601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952670, -0.079011, 0.293561,
		-0.219419, -0.847068, 0.484078,
		0.210419, -0.525579, -0.824312,
		41.474800, 37.804268, 43.700306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737465, 37.534966, 44.431438>,  <41.327507, 38.172173, 44.277325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737465, 37.534966, 44.431438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792660, 37.715855, 44.078972>,  <41.825779, 37.824387, 43.867493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792660, 37.715855, 44.078972>,  <41.737465, 37.534966, 44.431438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792660, 37.715855, 44.078972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963927, 0.143131, 0.224407,
		0.227604, -0.880346, -0.416158,
		0.137991, 0.452222, -0.881166,
		41.834057, 37.851521, 43.814621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293400, 37.215870, 43.998550>,  <41.737465, 37.534966, 44.431438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293400, 37.215870, 43.998550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242573, 37.612473, 43.987434>,  <42.212078, 37.850433, 43.980766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242573, 37.612473, 43.987434>,  <42.293400, 37.215870, 43.998550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242573, 37.612473, 43.987434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974838, 0.130002, 0.181083,
		0.183157, -0.004080, -0.983075,
		-0.127063, 0.991505, -0.027788,
		42.204453, 37.909924, 43.979099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801563, 37.432461, 43.560459>,  <42.293400, 37.215870, 43.998550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801563, 37.432461, 43.560459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698666, 37.709232, 43.830292>,  <42.636925, 37.875294, 43.992191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698666, 37.709232, 43.830292>,  <42.801563, 37.432461, 43.560459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698666, 37.709232, 43.830292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966316, 0.189658, 0.173963,
		-0.007570, 0.696612, -0.717408,
		-0.257247, 0.691926, 0.674583,
		42.621490, 37.916809, 44.032665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247086, 38.056705, 43.673843>,  <42.801563, 37.432461, 43.560459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247086, 38.056705, 43.673843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083076, 38.014889, 44.036270>,  <42.984673, 37.989799, 44.253727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083076, 38.014889, 44.036270>,  <43.247086, 38.056705, 43.673843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083076, 38.014889, 44.036270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870418, 0.251947, 0.422960,
		-0.272496, 0.962078, -0.012313,
		-0.410022, -0.104537, 0.906065,
		42.960072, 37.983528, 44.308090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024158, 38.015476, 42.983501>,  <43.247086, 38.056705, 43.673843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024158, 38.015476, 42.983501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779507, 37.773258, 42.779842>,  <42.632717, 37.627926, 42.657646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779507, 37.773258, 42.779842>,  <43.024158, 38.015476, 42.983501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779507, 37.773258, 42.779842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646232, -0.011139, -0.763060,
		0.456397, -0.795732, 0.398137,
		-0.611626, -0.605547, -0.509143,
		42.596020, 37.591595, 42.627098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552296, 37.531967, 42.773193>,  <43.024158, 38.015476, 42.983501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552296, 37.531967, 42.773193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227589, 37.490173, 42.543373>,  <43.032764, 37.465099, 42.405479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227589, 37.490173, 42.543373>,  <43.552296, 37.531967, 42.773193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227589, 37.490173, 42.543373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580336, -0.253990, -0.773757,
		-0.065087, -0.961547, 0.266817,
		-0.811772, -0.104482, -0.574552,
		42.984058, 37.458828, 42.371006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651653, 36.965847, 42.462234>,  <43.552296, 37.531967, 42.773193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651653, 36.965847, 42.462234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371418, 37.127151, 42.226761>,  <43.203278, 37.223934, 42.085476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371418, 37.127151, 42.226761>,  <43.651653, 36.965847, 42.462234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371418, 37.127151, 42.226761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589592, -0.137559, -0.795901,
		-0.401939, -0.904685, -0.141390,
		-0.700590, 0.403266, -0.588685,
		43.161240, 37.248131, 42.050156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566433, 36.458176, 41.923771>,  <43.651653, 36.965847, 42.462234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566433, 36.458176, 41.923771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447235, 36.814129, 41.785610>,  <43.375717, 37.027702, 41.702713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447235, 36.814129, 41.785610>,  <43.566433, 36.458176, 41.923771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447235, 36.814129, 41.785610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436087, -0.194960, -0.878532,
		-0.849133, -0.412423, -0.329971,
		-0.297996, 0.889886, -0.345399,
		43.357838, 37.081097, 41.681992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154510, 36.295635, 41.353432>,  <43.566433, 36.458176, 41.923771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154510, 36.295635, 41.353432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285507, 36.670212, 41.303108>,  <43.364105, 36.894958, 41.272911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285507, 36.670212, 41.303108>,  <43.154510, 36.295635, 41.353432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285507, 36.670212, 41.303108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325833, -0.236920, -0.915260,
		-0.886893, 0.258750, -0.382713,
		0.327496, 0.936439, -0.125813,
		43.383755, 36.951145, 41.265366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970135, 36.402615, 40.712753>,  <43.154510, 36.295635, 41.353432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970135, 36.402615, 40.712753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226254, 36.696812, 40.801353>,  <43.379925, 36.873329, 40.854515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226254, 36.696812, 40.801353>,  <42.970135, 36.402615, 40.712753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226254, 36.696812, 40.801353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331473, -0.004439, -0.943454,
		-0.692924, 0.677514, -0.246639,
		0.640298, 0.735496, 0.221502,
		43.418343, 36.917461, 40.867805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841019, 36.948441, 40.199902>,  <42.970135, 36.402615, 40.712753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841019, 36.948441, 40.199902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208202, 36.939060, 40.358295>,  <43.428513, 36.933430, 40.453331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208202, 36.939060, 40.358295>,  <42.841019, 36.948441, 40.199902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208202, 36.939060, 40.358295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395244, -0.030643, -0.918065,
		0.033667, 0.999255, -0.018859,
		0.917959, -0.023454, 0.395981,
		43.483589, 36.932022, 40.477089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225372, 37.367565, 39.642933>,  <42.841019, 36.948441, 40.199902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225372, 37.367565, 39.642933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483021, 37.148083, 39.856110>,  <43.637611, 37.016396, 39.984016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483021, 37.148083, 39.856110>,  <43.225372, 37.367565, 39.642933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483021, 37.148083, 39.856110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595521, -0.077540, -0.799589,
		0.480061, 0.832414, 0.276818,
		0.644125, -0.548702, 0.532944,
		43.676258, 36.983471, 40.015991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882710, 37.343307, 39.275719>,  <43.225372, 37.367565, 39.642933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882710, 37.343307, 39.275719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965824, 37.052784, 39.537804>,  <44.015694, 36.878471, 39.695053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965824, 37.052784, 39.537804>,  <43.882710, 37.343307, 39.275719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965824, 37.052784, 39.537804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607805, -0.428960, -0.668256,
		0.766419, 0.537096, 0.352321,
		0.207786, -0.726306, 0.655213,
		44.028160, 36.834892, 39.734367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576191, 37.306274, 39.252762>,  <43.882710, 37.343307, 39.275719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576191, 37.306274, 39.252762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414135, 36.959343, 39.368420>,  <44.316902, 36.751183, 39.437817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414135, 36.959343, 39.368420>,  <44.576191, 37.306274, 39.252762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414135, 36.959343, 39.368420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599415, -0.490792, -0.632317,
		0.690337, -0.082856, 0.718728,
		-0.405137, -0.867328, 0.289147,
		44.292595, 36.699146, 39.455162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125938, 36.827080, 39.389072>,  <44.576191, 37.306274, 39.252762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125938, 36.827080, 39.389072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796818, 36.609142, 39.324390>,  <44.599346, 36.478378, 39.285580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796818, 36.609142, 39.324390>,  <45.125938, 36.827080, 39.389072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796818, 36.609142, 39.324390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514482, -0.593160, -0.619249,
		0.241479, -0.592710, 0.768363,
		-0.822797, -0.544845, -0.161703,
		44.549980, 36.445690, 39.275879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352448, 36.193356, 39.159084>,  <45.125938, 36.827080, 39.389072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352448, 36.193356, 39.159084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969833, 36.106026, 39.081753>,  <44.740265, 36.053627, 39.035355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969833, 36.106026, 39.081753>,  <45.352448, 36.193356, 39.159084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969833, 36.106026, 39.081753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289957, -0.641302, -0.710391,
		0.031117, -0.735570, 0.676733,
		-0.956534, -0.218329, -0.193329,
		44.682873, 36.040527, 39.023754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197350, 35.455612, 39.199173>,  <45.352448, 36.193356, 39.159084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197350, 35.455612, 39.199173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925472, 35.631886, 38.964626>,  <44.762348, 35.737648, 38.823898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925472, 35.631886, 38.964626>,  <45.197350, 35.455612, 39.199173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925472, 35.631886, 38.964626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155765, -0.694456, -0.702474,
		-0.716775, -0.568796, 0.403367,
		-0.679685, 0.440685, -0.586366,
		44.721565, 35.764091, 38.788715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867355, 34.924469, 38.975315>,  <45.197350, 35.455612, 39.199173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867355, 34.924469, 38.975315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753891, 35.199364, 38.707813>,  <44.685814, 35.364300, 38.547310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753891, 35.199364, 38.707813>,  <44.867355, 34.924469, 38.975315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753891, 35.199364, 38.707813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120805, -0.666238, -0.735889,
		-0.951284, -0.289533, 0.105965,
		-0.283662, 0.687239, -0.668759,
		44.668793, 35.405537, 38.507187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504677, 34.568176, 38.476166>,  <44.867355, 34.924469, 38.975315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504677, 34.568176, 38.476166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600571, 34.892704, 38.262890>,  <44.658108, 35.087421, 38.134926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600571, 34.892704, 38.262890>,  <44.504677, 34.568176, 38.476166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600571, 34.892704, 38.262890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001191, -0.548956, -0.835851,
		-0.970838, 0.201015, -0.130636,
		0.239732, 0.811320, -0.533186,
		44.672489, 35.136101, 38.102936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176727, 34.503067, 37.867790>,  <44.504677, 34.568176, 38.476166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176727, 34.503067, 37.867790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435879, 34.789062, 37.762676>,  <44.591370, 34.960659, 37.699608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435879, 34.789062, 37.762676>,  <44.176727, 34.503067, 37.867790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435879, 34.789062, 37.762676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050639, -0.384636, -0.921678,
		-0.760062, 0.583825, -0.285402,
		0.647875, 0.714985, -0.262783,
		44.630241, 35.003559, 37.683842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805069, 34.794449, 37.298149>,  <44.176727, 34.503067, 37.867790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805069, 34.794449, 37.298149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195000, 34.883030, 37.287807>,  <44.428959, 34.936180, 37.281605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195000, 34.883030, 37.287807>,  <43.805069, 34.794449, 37.298149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195000, 34.883030, 37.287807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076497, -0.441118, -0.894183,
		-0.209424, 0.869697, -0.446955,
		0.974828, 0.221454, -0.025852,
		44.487450, 34.949467, 37.280052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937790, 34.998753, 36.616871>,  <43.805069, 34.794449, 37.298149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937790, 34.998753, 36.616871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315533, 34.922981, 36.724426>,  <44.542179, 34.877518, 36.788960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315533, 34.922981, 36.724426>,  <43.937790, 34.998753, 36.616871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315533, 34.922981, 36.724426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101431, -0.609945, -0.785925,
		0.312885, 0.769470, -0.556793,
		0.944359, -0.189428, 0.268891,
		44.598839, 34.866154, 36.805092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386887, 35.208755, 36.028194>,  <43.937790, 34.998753, 36.616871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386887, 35.208755, 36.028194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582989, 34.940090, 36.250374>,  <44.700649, 34.778893, 36.383682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582989, 34.940090, 36.250374>,  <44.386887, 35.208755, 36.028194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582989, 34.940090, 36.250374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252485, -0.500520, -0.828089,
		0.834209, 0.546214, -0.075796,
		0.490251, -0.671662, 0.555450,
		44.730064, 34.738590, 36.417007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041039, 35.294514, 35.684895>,  <44.386887, 35.208755, 36.028194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041039, 35.294514, 35.684895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027550, 34.943764, 35.876709>,  <45.019455, 34.733315, 35.991798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027550, 34.943764, 35.876709>,  <45.041039, 35.294514, 35.684895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027550, 34.943764, 35.876709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329996, -0.462670, -0.822824,
		0.943380, 0.130495, 0.304969,
		-0.033725, -0.876873, 0.479536,
		45.017433, 34.680702, 36.020569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652416, 34.954624, 35.541222>,  <45.041039, 35.294514, 35.684895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652416, 34.954624, 35.541222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409901, 34.667950, 35.679077>,  <45.264393, 34.495945, 35.761791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409901, 34.667950, 35.679077>,  <45.652416, 34.954624, 35.541222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409901, 34.667950, 35.679077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253376, -0.584875, -0.770533,
		0.753800, -0.379843, 0.536194,
		-0.606289, -0.716687, 0.344636,
		45.228012, 34.452942, 35.782467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156940, 34.501324, 35.186813>,  <45.652416, 34.954624, 35.541222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156940, 34.501324, 35.186813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100937, 34.882656, 35.079819>,  <46.067337, 35.111458, 35.015621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100937, 34.882656, 35.079819>,  <46.156940, 34.501324, 35.186813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100937, 34.882656, 35.079819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237686, 0.294611, 0.925586,
		0.961199, 0.066009, -0.267842,
		-0.140006, 0.953335, -0.267490,
		46.058933, 35.168655, 34.999573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.736588, 35.014133, 35.181282>,  <46.156940, 34.501324, 35.186813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.736588, 35.014133, 35.181282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419651, 35.252483, 35.233620>,  <46.229488, 35.395493, 35.265022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419651, 35.252483, 35.233620>,  <46.736588, 35.014133, 35.181282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419651, 35.252483, 35.233620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396638, 0.340196, 0.852610,
		0.463537, 0.727460, -0.505900,
		-0.792345, 0.595876, 0.130845,
		46.181946, 35.431248, 35.272873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930096, 35.698174, 35.212414>,  <46.736588, 35.014133, 35.181282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930096, 35.698174, 35.212414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608536, 35.645992, 35.444527>,  <46.415600, 35.614681, 35.583794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608536, 35.645992, 35.444527>,  <46.930096, 35.698174, 35.212414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608536, 35.645992, 35.444527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526659, 0.297214, 0.796426,
		-0.276367, 0.945857, -0.170223,
		-0.803898, -0.130457, 0.580284,
		46.367367, 35.606853, 35.618610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.672390, 35.387249, 35.238667>,  <46.930096, 35.698174, 35.212414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.672390, 35.387249, 35.238667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649063, 35.014278, 35.096012>,  <47.635067, 34.790497, 35.010422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649063, 35.014278, 35.096012>,  <47.672390, 35.387249, 35.238667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649063, 35.014278, 35.096012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200496, 0.339021, -0.919166,
		0.977957, -0.125109, 0.167176,
		-0.058320, -0.932423, -0.356632,
		47.631565, 34.734550, 34.989021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.363716, 33.472980, 44.807186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998241, 33.585758, 44.924274>,  <36.778957, 33.653423, 44.994530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998241, 33.585758, 44.924274>,  <37.363716, 33.472980, 44.807186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998241, 33.585758, 44.924274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239204, 0.209235, -0.948157,
		-0.328575, -0.936338, -0.123733,
		-0.913685, 0.281943, 0.292725,
		36.724136, 33.670341, 45.012093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918987, 33.186043, 44.301838>,  <37.363716, 33.472980, 44.807186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918987, 33.186043, 44.301838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698891, 33.490276, 44.439671>,  <36.566833, 33.672817, 44.522369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698891, 33.490276, 44.439671>,  <36.918987, 33.186043, 44.301838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698891, 33.490276, 44.439671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147405, 0.317712, -0.936659,
		-0.821889, -0.566185, -0.062705,
		-0.550245, 0.760587, 0.344583,
		36.533817, 33.718452, 44.543045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186874, 33.192650, 43.955704>,  <36.918987, 33.186043, 44.301838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186874, 33.192650, 43.955704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303738, 33.556854, 44.072742>,  <36.373856, 33.775375, 44.142967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303738, 33.556854, 44.072742>,  <36.186874, 33.192650, 43.955704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303738, 33.556854, 44.072742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168737, 0.350221, -0.921343,
		-0.941368, 0.219803, 0.255956,
		0.292155, 0.910512, 0.292598,
		36.391384, 33.830009, 44.160522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678623, 33.753361, 43.662998>,  <36.186874, 33.192650, 43.955704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678623, 33.753361, 43.662998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011444, 33.955135, 43.755295>,  <36.211136, 34.076199, 43.810673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011444, 33.955135, 43.755295>,  <35.678623, 33.753361, 43.662998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011444, 33.955135, 43.755295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005493, 0.408458, -0.912761,
		-0.554677, 0.760728, 0.337086,
		0.832048, 0.504436, 0.230741,
		36.261059, 34.106464, 43.824516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550617, 34.478935, 43.420033>,  <35.678623, 33.753361, 43.662998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550617, 34.478935, 43.420033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947552, 34.467052, 43.468002>,  <36.185715, 34.459923, 43.496784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947552, 34.467052, 43.468002>,  <35.550617, 34.478935, 43.420033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947552, 34.467052, 43.468002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117657, 0.523454, -0.843892,
		-0.037703, 0.851536, 0.522939,
		0.992338, -0.029710, 0.119925,
		36.245255, 34.458141, 43.503979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806988, 35.125935, 43.217117>,  <35.550617, 34.478935, 43.420033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806988, 35.125935, 43.217117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130013, 34.891346, 43.192184>,  <36.323830, 34.750591, 43.177227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130013, 34.891346, 43.192184>,  <35.806988, 35.125935, 43.217117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130013, 34.891346, 43.192184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304488, 0.505099, -0.807566,
		0.505099, 0.633184, 0.586475,
		0.807566, -0.586475, -0.062328,
		36.372284, 34.715405, 43.173485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226418, 35.558445, 42.933880>,  <35.806988, 35.125935, 43.217117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226418, 35.558445, 42.933880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393791, 35.200569, 42.871342>,  <36.494217, 34.985844, 42.833817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393791, 35.200569, 42.871342>,  <36.226418, 35.558445, 42.933880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393791, 35.200569, 42.871342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418776, 0.342803, -0.840900,
		0.805941, 0.286386, 0.518114,
		0.418433, -0.894690, -0.156347,
		36.519321, 34.932163, 42.824436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857849, 35.806183, 42.540440>,  <36.226418, 35.558445, 42.933880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857849, 35.806183, 42.540440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809479, 35.413456, 42.481915>,  <36.780457, 35.177818, 42.446800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809479, 35.413456, 42.481915>,  <36.857849, 35.806183, 42.540440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809479, 35.413456, 42.481915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290122, 0.106005, -0.951101,
		0.949319, -0.157458, 0.272030,
		-0.120922, -0.981820, -0.146315,
		36.773201, 35.118912, 42.438019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533192, 35.603333, 42.293072>,  <36.857849, 35.806183, 42.540440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533192, 35.603333, 42.293072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274563, 35.317493, 42.186272>,  <37.119385, 35.145988, 42.122192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274563, 35.317493, 42.186272>,  <37.533192, 35.603333, 42.293072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274563, 35.317493, 42.186272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401862, -0.021565, -0.915446,
		0.648421, -0.699199, 0.301115,
		-0.646573, -0.714602, -0.266998,
		37.080589, 35.103111, 42.106171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849316, 34.925556, 42.080463>,  <37.533192, 35.603333, 42.293072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849316, 34.925556, 42.080463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495205, 34.913460, 41.894829>,  <37.282738, 34.906200, 41.783447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495205, 34.913460, 41.894829>,  <37.849316, 34.925556, 42.080463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495205, 34.913460, 41.894829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462474, -0.162511, -0.871612,
		-0.049062, -0.986243, 0.157851,
		-0.885275, -0.030239, -0.464085,
		37.229622, 34.904388, 41.755604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789356, 34.333118, 41.578739>,  <37.849316, 34.925556, 42.080463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789356, 34.333118, 41.578739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.512505, 34.578789, 41.427086>,  <37.346394, 34.726192, 41.336094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.512505, 34.578789, 41.427086>,  <37.789356, 34.333118, 41.578739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512505, 34.578789, 41.427086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438249, -0.059770, -0.896864,
		-0.573494, -0.786902, -0.227794,
		-0.692129, 0.614177, -0.379137,
		37.304867, 34.763042, 41.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470402, 33.932697, 40.980751>,  <37.789356, 34.333118, 41.578739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470402, 33.932697, 40.980751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413033, 34.325081, 40.928371>,  <37.378613, 34.560513, 40.896942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413033, 34.325081, 40.928371>,  <37.470402, 33.932697, 40.980751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413033, 34.325081, 40.928371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482686, -0.046176, -0.874575,
		-0.863970, -0.188640, -0.466873,
		-0.143421, 0.980960, -0.130949,
		37.370007, 34.619370, 40.889088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342514, 33.913036, 40.346256>,  <37.470402, 33.932697, 40.980751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342514, 33.913036, 40.346256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.415997, 34.301880, 40.404587>,  <37.460087, 34.535187, 40.439587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.415997, 34.301880, 40.404587>,  <37.342514, 33.913036, 40.346256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415997, 34.301880, 40.404587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480130, 0.040713, -0.876252,
		-0.857745, 0.230987, -0.459258,
		0.183705, 0.972105, 0.145825,
		37.471107, 34.593510, 40.448334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062153, 34.222301, 39.797485>,  <37.342514, 33.913036, 40.346256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062153, 34.222301, 39.797485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313126, 34.497910, 39.942585>,  <37.463707, 34.663273, 40.029644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313126, 34.497910, 39.942585>,  <37.062153, 34.222301, 39.797485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313126, 34.497910, 39.942585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298509, 0.217430, -0.929310,
		-0.719184, 0.691359, -0.069257,
		0.627429, 0.689018, 0.362749,
		37.501354, 34.704617, 40.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958447, 34.734325, 39.330467>,  <37.062153, 34.222301, 39.797485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958447, 34.734325, 39.330467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315056, 34.775833, 39.506840>,  <37.529022, 34.800735, 39.612663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315056, 34.775833, 39.506840>,  <36.958447, 34.734325, 39.330467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315056, 34.775833, 39.506840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400591, 0.273795, -0.874393,
		-0.211457, 0.956174, 0.202527,
		0.891523, 0.103766, 0.440931,
		37.582512, 34.806965, 39.639118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306644, 35.359962, 39.053013>,  <36.958447, 34.734325, 39.330467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306644, 35.359962, 39.053013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.607819, 35.138206, 39.194855>,  <37.788525, 35.005154, 39.279961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.607819, 35.138206, 39.194855>,  <37.306644, 35.359962, 39.053013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607819, 35.138206, 39.194855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494188, 0.120470, -0.860967,
		0.434588, 0.823495, 0.364677,
		0.752935, -0.554385, 0.354606,
		37.833698, 34.971889, 39.301235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928505, 35.764355, 38.947803>,  <37.306644, 35.359962, 39.053013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928505, 35.764355, 38.947803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055714, 35.388741, 39.000065>,  <38.132038, 35.163372, 39.031422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055714, 35.388741, 39.000065>,  <37.928505, 35.764355, 38.947803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055714, 35.388741, 39.000065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789501, 0.186003, -0.584885,
		0.524928, 0.289154, 0.800525,
		0.318022, -0.939038, 0.130649,
		38.151119, 35.107029, 39.039261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642399, 35.809917, 39.045727>,  <37.928505, 35.764355, 38.947803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642399, 35.809917, 39.045727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599377, 35.426289, 38.940945>,  <38.573563, 35.196114, 38.878075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599377, 35.426289, 38.940945>,  <38.642399, 35.809917, 39.045727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599377, 35.426289, 38.940945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795145, 0.075185, -0.601741,
		0.596806, -0.273013, 0.754511,
		-0.107555, -0.959068, -0.261956,
		38.567112, 35.138569, 38.862358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291733, 35.525787, 39.061668>,  <38.642399, 35.809917, 39.045727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291733, 35.525787, 39.061668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.108391, 35.262730, 38.822529>,  <38.998386, 35.104897, 38.679047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.108391, 35.262730, 38.822529>,  <39.291733, 35.525787, 39.061668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108391, 35.262730, 38.822529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756666, 0.064125, -0.650649,
		0.466231, -0.750597, 0.468223,
		-0.458350, -0.657642, -0.597848,
		38.970886, 35.065437, 38.643173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855206, 35.075092, 38.849289>,  <39.291733, 35.525787, 39.061668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855206, 35.075092, 38.849289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552944, 35.018196, 38.593555>,  <39.371586, 34.984058, 38.440113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552944, 35.018196, 38.593555>,  <39.855206, 35.075092, 38.849289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552944, 35.018196, 38.593555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638869, 0.055037, -0.767345,
		0.144338, -0.988300, 0.049287,
		-0.755654, -0.142245, -0.639338,
		39.326248, 34.975525, 38.401752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012142, 34.485516, 38.446907>,  <39.855206, 35.075092, 38.849289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012142, 34.485516, 38.446907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759155, 34.732048, 38.259239>,  <39.607365, 34.879967, 38.146637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759155, 34.732048, 38.259239>,  <40.012142, 34.485516, 38.446907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759155, 34.732048, 38.259239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691788, 0.176971, -0.700079,
		-0.348451, -0.767344, -0.538299,
		-0.632464, 0.616332, -0.469174,
		39.569416, 34.916946, 38.118488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077644, 34.243443, 37.769131>,  <40.012142, 34.485516, 38.446907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077644, 34.243443, 37.769131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940113, 34.615631, 37.718529>,  <39.857594, 34.838943, 37.688168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940113, 34.615631, 37.718529>,  <40.077644, 34.243443, 37.769131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940113, 34.615631, 37.718529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650421, 0.138810, -0.746783,
		-0.677301, -0.339046, -0.652925,
		-0.343826, 0.930473, -0.126506,
		39.836964, 34.894772, 37.680576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781414, 34.045376, 37.637306>,  <40.077644, 34.243443, 37.769131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781414, 34.045376, 37.637306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044174, 33.752056, 37.567162>,  <41.201832, 33.576065, 37.525074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044174, 33.752056, 37.567162>,  <40.781414, 34.045376, 37.637306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044174, 33.752056, 37.567162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154463, -0.358530, 0.920650,
		-0.737986, -0.577689, -0.348787,
		0.656900, -0.733302, -0.175359,
		41.241245, 33.532066, 37.514553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506203, 33.427670, 37.755863>,  <40.781414, 34.045376, 37.637306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506203, 33.427670, 37.755863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888302, 33.309799, 37.766228>,  <41.117561, 33.239079, 37.772446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888302, 33.309799, 37.766228>,  <40.506203, 33.427670, 37.755863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888302, 33.309799, 37.766228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178924, -0.505800, 0.843892,
		-0.235567, -0.810761, -0.535887,
		0.955246, -0.294676, 0.025915,
		41.174877, 33.221397, 37.774002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572819, 32.734245, 37.928413>,  <40.506203, 33.427670, 37.755863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572819, 32.734245, 37.928413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.913967, 32.864143, 38.091946>,  <41.118656, 32.942081, 38.190067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.913967, 32.864143, 38.091946>,  <40.572819, 32.734245, 37.928413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913967, 32.864143, 38.091946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195159, -0.527996, 0.826519,
		0.484269, -0.784705, -0.386938,
		0.852875, 0.324743, 0.408834,
		41.169830, 32.961567, 38.214596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737541, 32.230431, 38.307323>,  <40.572819, 32.734245, 37.928413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737541, 32.230431, 38.307323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.976036, 32.517006, 38.452213>,  <41.119133, 32.688953, 38.539146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.976036, 32.517006, 38.452213>,  <40.737541, 32.230431, 38.307323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976036, 32.517006, 38.452213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058641, -0.488864, 0.870387,
		0.800663, -0.497716, -0.333492,
		0.596238, 0.716443, 0.362229,
		41.154907, 32.731937, 38.560883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274143, 31.928360, 38.655388>,  <40.737541, 32.230431, 38.307323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274143, 31.928360, 38.655388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.276512, 32.297684, 38.808994>,  <41.277935, 32.519276, 38.901157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.276512, 32.297684, 38.808994>,  <41.274143, 31.928360, 38.655388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276512, 32.297684, 38.808994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178483, -0.378833, 0.908091,
		0.983925, 0.063159, -0.167040,
		0.005925, 0.923307, 0.384016,
		41.278290, 32.574677, 38.924198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787060, 31.894070, 39.231419>,  <41.274143, 31.928360, 38.655388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787060, 31.894070, 39.231419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.572983, 32.223072, 39.308411>,  <41.444534, 32.420475, 39.354607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.572983, 32.223072, 39.308411>,  <41.787060, 31.894070, 39.231419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572983, 32.223072, 39.308411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084789, -0.174408, 0.981016,
		0.840462, 0.541356, 0.023603,
		-0.535196, 0.822505, 0.192484,
		41.412422, 32.469822, 39.366158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137394, 32.151794, 39.899727>,  <41.787060, 31.894070, 39.231419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137394, 32.151794, 39.899727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.779774, 32.326378, 39.859352>,  <41.565201, 32.431126, 39.835125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.779774, 32.326378, 39.859352>,  <42.137394, 32.151794, 39.899727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779774, 32.326378, 39.859352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249685, -0.298415, 0.921198,
		0.371939, 0.848797, 0.375773,
		-0.894046, 0.436454, -0.100939,
		41.511559, 32.457314, 39.829071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098358, 32.504841, 40.449249>,  <42.137394, 32.151794, 39.899727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098358, 32.504841, 40.449249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.717178, 32.457943, 40.337433>,  <41.488472, 32.429806, 40.270344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.717178, 32.457943, 40.337433>,  <42.098358, 32.504841, 40.449249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717178, 32.457943, 40.337433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276959, -0.038075, 0.960127,
		-0.123213, 0.992373, 0.003811,
		-0.952949, -0.117245, -0.279538,
		41.431293, 32.422771, 40.253571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734558, 32.926361, 40.985672>,  <42.098358, 32.504841, 40.449249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734558, 32.926361, 40.985672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.490326, 32.660061, 40.814102>,  <41.343788, 32.500282, 40.711159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.490326, 32.660061, 40.814102>,  <41.734558, 32.926361, 40.985672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490326, 32.660061, 40.814102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548385, -0.035342, 0.835479,
		-0.571376, 0.745341, -0.343506,
		-0.610577, -0.665746, -0.428927,
		41.307152, 32.460339, 40.685425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955406, 33.220966, 41.094090>,  <41.734558, 32.926361, 40.985672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955406, 33.220966, 41.094090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935989, 32.827667, 41.023811>,  <40.924339, 32.591686, 40.981644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935989, 32.827667, 41.023811>,  <40.955406, 33.220966, 41.094090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935989, 32.827667, 41.023811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410786, -0.140685, 0.900812,
		-0.910439, 0.115900, -0.397075,
		-0.048541, -0.983247, -0.175695,
		40.921429, 32.532692, 40.971104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238571, 32.944157, 41.087936>,  <40.955406, 33.220966, 41.094090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238571, 32.944157, 41.087936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466507, 32.637417, 41.206070>,  <40.603268, 32.453373, 41.276951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466507, 32.637417, 41.206070>,  <40.238571, 32.944157, 41.087936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466507, 32.637417, 41.206070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547728, -0.086526, 0.832170,
		-0.612595, -0.635969, -0.469331,
		0.569843, -0.766849, 0.295333,
		40.637459, 32.407364, 41.294670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776241, 32.686611, 41.662750>,  <40.238571, 32.944157, 41.087936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776241, 32.686611, 41.662750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.114422, 32.474174, 41.685249>,  <40.317329, 32.346714, 41.698750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.114422, 32.474174, 41.685249>,  <39.776241, 32.686611, 41.662750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114422, 32.474174, 41.685249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326896, -0.431332, 0.840888,
		-0.422309, -0.729323, -0.538278,
		0.845455, -0.531075, 0.056257,
		40.368057, 32.314850, 41.702126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666477, 31.924006, 41.706173>,  <39.776241, 32.686611, 41.662750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666477, 31.924006, 41.706173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988503, 32.045189, 41.910168>,  <40.181717, 32.117897, 42.032566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988503, 32.045189, 41.910168>,  <39.666477, 31.924006, 41.706173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988503, 32.045189, 41.910168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321068, -0.500371, 0.804080,
		0.498787, -0.811076, -0.305560,
		0.805063, 0.302959, 0.509990,
		40.230022, 32.136078, 42.063164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038490, 31.337385, 42.006645>,  <39.666477, 31.924006, 41.706173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038490, 31.337385, 42.006645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.158268, 31.638378, 42.241287>,  <40.230137, 31.818974, 42.382072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.158268, 31.638378, 42.241287>,  <40.038490, 31.337385, 42.006645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158268, 31.638378, 42.241287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269084, -0.523251, 0.808580,
		0.915382, -0.399973, 0.045795,
		0.299448, 0.752482, 0.586601,
		40.248104, 31.864122, 42.417267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044380, 31.020317, 42.751976>,  <40.038490, 31.337385, 42.006645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044380, 31.020317, 42.751976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108227, 31.410229, 42.814373>,  <40.146534, 31.644175, 42.851810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108227, 31.410229, 42.814373>,  <40.044380, 31.020317, 42.751976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108227, 31.410229, 42.814373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327412, -0.096798, 0.939910,
		0.931303, -0.201095, 0.303704,
		0.159613, 0.974777, 0.155989,
		40.156113, 31.702662, 42.861168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282867, 30.978504, 43.368568>,  <40.044380, 31.020317, 42.751976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282867, 30.978504, 43.368568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164394, 31.352425, 43.290165>,  <40.093311, 31.576777, 43.243122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164394, 31.352425, 43.290165>,  <40.282867, 30.978504, 43.368568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164394, 31.352425, 43.290165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385490, 0.070762, 0.919995,
		0.873883, 0.348048, 0.339398,
		-0.296186, 0.934802, -0.196006,
		40.075539, 31.632866, 43.231361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553905, 31.446312, 43.886986>,  <40.282867, 30.978504, 43.368568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553905, 31.446312, 43.886986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243042, 31.645489, 43.733059>,  <40.056526, 31.764994, 43.640705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243042, 31.645489, 43.733059>,  <40.553905, 31.446312, 43.886986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243042, 31.645489, 43.733059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366711, 0.138610, 0.919951,
		0.511420, 0.856062, 0.074878,
		-0.777157, 0.497941, -0.384815,
		40.009895, 31.794870, 43.617615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424580, 31.991957, 44.411572>,  <40.553905, 31.446312, 43.886986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424580, 31.991957, 44.411572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095016, 31.984707, 44.184998>,  <39.897278, 31.980356, 44.049053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095016, 31.984707, 44.184998>,  <40.424580, 31.991957, 44.411572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095016, 31.984707, 44.184998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563212, 0.137348, 0.814818,
		0.063029, 0.990357, -0.123371,
		-0.823905, -0.018127, -0.566438,
		39.847843, 31.979269, 44.015068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.444550, 33.167671, 44.166168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327801, 32.791271, 44.097652>,  <39.257751, 32.565434, 44.056545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327801, 32.791271, 44.097652>,  <39.444550, 33.167671, 44.166168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327801, 32.791271, 44.097652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462496, -0.017904, 0.886441,
		-0.837204, 0.337943, -0.429982,
		-0.291868, -0.940996, -0.171287,
		39.240242, 32.508972, 44.046265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792381, 33.092899, 44.311962>,  <39.444550, 33.167671, 44.166168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792381, 33.092899, 44.311962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909649, 32.713955, 44.363438>,  <38.980011, 32.486588, 44.394321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909649, 32.713955, 44.363438>,  <38.792381, 33.092899, 44.311962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909649, 32.713955, 44.363438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496203, -0.035718, 0.867472,
		-0.817211, -0.318174, -0.480554,
		0.293171, -0.947359, 0.128689,
		38.997601, 32.429749, 44.402046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202896, 32.797253, 44.519115>,  <38.792381, 33.092899, 44.311962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202896, 32.797253, 44.519115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479214, 32.522972, 44.610867>,  <38.645004, 32.358402, 44.665916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479214, 32.522972, 44.610867>,  <38.202896, 32.797253, 44.519115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479214, 32.522972, 44.610867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578703, -0.334145, 0.743942,
		-0.433481, -0.646650, -0.627645,
		0.690795, -0.685704, 0.229373,
		38.686451, 32.317261, 44.679680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779667, 32.218571, 44.610424>,  <38.202896, 32.797253, 44.519115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779667, 32.218571, 44.610424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124470, 32.142113, 44.798210>,  <38.331352, 32.096237, 44.910881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124470, 32.142113, 44.798210>,  <37.779667, 32.218571, 44.610424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124470, 32.142113, 44.798210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505934, -0.381264, 0.773737,
		0.031097, -0.904490, -0.425359,
		0.862012, -0.191142, 0.469468,
		38.383072, 32.084770, 44.939049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700516, 31.688677, 45.029629>,  <37.779667, 32.218571, 44.610424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700516, 31.688677, 45.029629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048733, 31.797571, 45.193604>,  <38.257664, 31.862907, 45.291988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048733, 31.797571, 45.193604>,  <37.700516, 31.688677, 45.029629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048733, 31.797571, 45.193604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277678, -0.416001, 0.865932,
		0.406271, -0.867659, -0.286552,
		0.870540, 0.272234, 0.409939,
		38.309895, 31.879242, 45.316586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045837, 31.050964, 45.250225>,  <37.700516, 31.688677, 45.029629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045837, 31.050964, 45.250225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179729, 31.367573, 45.454754>,  <38.260063, 31.557539, 45.577473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179729, 31.367573, 45.454754>,  <38.045837, 31.050964, 45.250225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179729, 31.367573, 45.454754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360815, -0.393612, 0.845507,
		0.870500, -0.467507, 0.153840,
		0.334727, 0.791522, 0.511322,
		38.280148, 31.605030, 45.608150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412663, 30.840364, 45.798595>,  <38.045837, 31.050964, 45.250225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412663, 30.840364, 45.798595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298119, 31.198393, 45.935326>,  <38.229393, 31.413210, 46.017365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298119, 31.198393, 45.935326>,  <38.412663, 30.840364, 45.798595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298119, 31.198393, 45.935326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279948, -0.419363, 0.863576,
		0.916310, 0.151603, 0.370664,
		-0.286364, 0.895070, 0.341826,
		38.212208, 31.466913, 46.037872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578281, 30.742891, 46.477383>,  <38.412663, 30.840364, 45.798595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578281, 30.742891, 46.477383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363369, 31.079182, 46.504253>,  <38.234421, 31.280956, 46.520374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363369, 31.079182, 46.504253>,  <38.578281, 30.742891, 46.477383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363369, 31.079182, 46.504253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351036, -0.295334, 0.888567,
		0.766879, 0.453828, 0.453802,
		-0.537280, 0.840724, 0.067175,
		38.202187, 31.331400, 46.524406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842503, 31.128765, 47.117474>,  <38.578281, 30.742891, 46.477383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842503, 31.128765, 47.117474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464046, 31.231455, 47.038570>,  <38.236973, 31.293068, 46.991226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464046, 31.231455, 47.038570>,  <38.842503, 31.128765, 47.117474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464046, 31.231455, 47.038570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225530, -0.085480, 0.970479,
		0.232281, 0.962698, 0.138775,
		-0.946140, 0.256722, -0.197262,
		38.180206, 31.308472, 46.979393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627209, 31.665136, 47.494884>,  <38.842503, 31.128765, 47.117474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627209, 31.665136, 47.494884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308056, 31.439861, 47.408909>,  <38.116562, 31.304695, 47.357323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308056, 31.439861, 47.408909>,  <38.627209, 31.665136, 47.494884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308056, 31.439861, 47.408909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115236, -0.207482, 0.971428,
		-0.591693, 0.799856, 0.100648,
		-0.797885, -0.563188, -0.214938,
		38.068691, 31.270905, 47.344429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311905, 31.753012, 48.044804>,  <38.627209, 31.665136, 47.494884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311905, 31.753012, 48.044804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096043, 31.472881, 47.857906>,  <37.966526, 31.304804, 47.745770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096043, 31.472881, 47.857906>,  <38.311905, 31.753012, 48.044804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096043, 31.472881, 47.857906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282270, -0.372353, 0.884125,
		-0.793153, 0.609014, 0.003263,
		-0.539659, -0.700326, -0.467239,
		37.934143, 31.262783, 47.717735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629776, 31.792244, 48.376427>,  <38.311905, 31.753012, 48.044804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629776, 31.792244, 48.376427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673054, 31.428793, 48.215088>,  <37.699020, 31.210722, 48.118286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673054, 31.428793, 48.215088>,  <37.629776, 31.792244, 48.376427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673054, 31.428793, 48.215088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325733, -0.415730, 0.849156,
		-0.939250, 0.039507, -0.340951,
		0.108196, -0.908630, -0.403343,
		37.705513, 31.156204, 48.094086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008308, 31.469360, 48.500973>,  <37.629776, 31.792244, 48.376427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008308, 31.469360, 48.500973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260342, 31.162580, 48.452339>,  <37.411560, 30.978512, 48.423161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260342, 31.162580, 48.452339>,  <37.008308, 31.469360, 48.500973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260342, 31.162580, 48.452339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355004, -0.423754, 0.833310,
		-0.690628, -0.481893, -0.539270,
		0.630084, -0.766950, -0.121582,
		37.449368, 30.932495, 48.415863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548378, 30.776007, 48.485115>,  <37.008308, 31.469360, 48.500973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548378, 30.776007, 48.485115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929596, 30.687513, 48.567825>,  <37.158329, 30.634417, 48.617451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929596, 30.687513, 48.567825>,  <36.548378, 30.776007, 48.485115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929596, 30.687513, 48.567825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301777, -0.750484, 0.587967,
		0.025101, -0.622760, -0.782010,
		0.953048, -0.221234, 0.206773,
		37.215511, 30.621143, 48.629856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753292, 30.037146, 48.365665>,  <36.548378, 30.776007, 48.485115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753292, 30.037146, 48.365665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000328, 30.189098, 48.641136>,  <37.148548, 30.280270, 48.806419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000328, 30.189098, 48.641136>,  <36.753292, 30.037146, 48.365665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000328, 30.189098, 48.641136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107189, -0.826798, 0.552192,
		0.779165, -0.414845, -0.469899,
		0.617586, 0.379881, 0.688679,
		37.185604, 30.303062, 48.847740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131638, 29.484413, 48.608475>,  <36.753292, 30.037146, 48.365665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131638, 29.484413, 48.608475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203281, 29.757326, 48.891998>,  <37.246269, 29.921074, 49.062111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203281, 29.757326, 48.891998>,  <37.131638, 29.484413, 48.608475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203281, 29.757326, 48.891998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049387, -0.713317, 0.699100,
		0.982588, -0.160224, -0.094070,
		0.179114, 0.682281, 0.708810,
		37.257015, 29.962011, 49.104641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612083, 29.206011, 49.132710>,  <37.131638, 29.484413, 48.608475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612083, 29.206011, 49.132710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415455, 29.491901, 49.331715>,  <37.297478, 29.663437, 49.451118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415455, 29.491901, 49.331715>,  <37.612083, 29.206011, 49.132710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415455, 29.491901, 49.331715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270871, -0.668457, 0.692672,
		0.827638, 0.205738, 0.522195,
		-0.491574, 0.714728, 0.497512,
		37.267982, 29.706320, 49.480968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652302, 28.903852, 49.756931>,  <37.612083, 29.206011, 49.132710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652302, 28.903852, 49.756931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396072, 29.202417, 49.829082>,  <37.242336, 29.381556, 49.872372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396072, 29.202417, 49.829082>,  <37.652302, 28.903852, 49.756931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396072, 29.202417, 49.829082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411198, -0.531801, 0.740340,
		0.648524, 0.400071, 0.647581,
		-0.640573, 0.746412, 0.180377,
		37.203899, 29.426340, 49.883194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731831, 29.061571, 50.545071>,  <37.652302, 28.903852, 49.756931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731831, 29.061571, 50.545071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.382305, 29.216803, 50.427872>,  <37.172588, 29.309940, 50.357552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.382305, 29.216803, 50.427872>,  <37.731831, 29.061571, 50.545071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382305, 29.216803, 50.427872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465976, -0.496056, 0.732663,
		0.138987, 0.776740, 0.614295,
		-0.873813, 0.388077, -0.292996,
		37.120163, 29.333225, 50.339973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440556, 29.338270, 51.098564>,  <37.731831, 29.061571, 50.545071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440556, 29.338270, 51.098564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116402, 29.291643, 50.868889>,  <36.921909, 29.263666, 50.731083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116402, 29.291643, 50.868889>,  <37.440556, 29.338270, 51.098564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116402, 29.291643, 50.868889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446840, -0.510909, 0.734374,
		-0.378963, 0.851694, 0.361944,
		-0.810383, -0.116569, -0.574187,
		36.873287, 29.256672, 50.696632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877510, 29.519453, 51.570835>,  <37.440556, 29.338270, 51.098564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877510, 29.519453, 51.570835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726727, 29.298452, 51.273476>,  <36.636257, 29.165852, 51.095058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726727, 29.298452, 51.273476>,  <36.877510, 29.519453, 51.570835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726727, 29.298452, 51.273476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554609, -0.508178, 0.658911,
		-0.741830, 0.660678, -0.114862,
		-0.376957, -0.552503, -0.743400,
		36.613640, 29.132702, 51.050457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128708, 29.391222, 51.628323>,  <36.877510, 29.519453, 51.570835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128708, 29.391222, 51.628323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319233, 29.082321, 51.460152>,  <36.433548, 28.896980, 51.359249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319233, 29.082321, 51.460152>,  <36.128708, 29.391222, 51.628323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319233, 29.082321, 51.460152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435023, -0.622500, 0.650575,
		-0.764124, -0.126978, -0.632449,
		0.476308, -0.772250, -0.420428,
		36.462124, 28.850647, 51.334023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645741, 28.911821, 51.643158>,  <36.128708, 29.391222, 51.628323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645741, 28.911821, 51.643158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992123, 28.726681, 51.567371>,  <36.199951, 28.615597, 51.521900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992123, 28.726681, 51.567371>,  <35.645741, 28.911821, 51.643158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992123, 28.726681, 51.567371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323361, -0.807157, 0.493898,
		-0.381531, -0.366426, -0.848626,
		0.865951, -0.462850, -0.189467,
		36.251907, 28.587826, 51.510532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358624, 29.615269, 51.610954>,  <35.645741, 28.911821, 51.643158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358624, 29.615269, 51.610954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982735, 29.619133, 51.747669>,  <34.757202, 29.621452, 51.829700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982735, 29.619133, 51.747669>,  <35.358624, 29.615269, 51.610954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982735, 29.619133, 51.747669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326480, 0.271701, -0.905312,
		-0.101613, -0.962333, -0.252170,
		-0.939726, 0.009663, 0.341791,
		34.700817, 29.622032, 51.850208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893963, 29.063734, 51.225273>,  <35.358624, 29.615269, 51.610954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893963, 29.063734, 51.225273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702427, 29.383476, 51.370457>,  <34.587505, 29.575321, 51.457569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702427, 29.383476, 51.370457>,  <34.893963, 29.063734, 51.225273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702427, 29.383476, 51.370457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363959, 0.195485, -0.910670,
		-0.798904, -0.568168, 0.197327,
		-0.478839, 0.799357, 0.362963,
		34.558777, 29.623283, 51.479347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220455, 29.115538, 50.825027>,  <34.893963, 29.063734, 51.225273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220455, 29.115538, 50.825027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.240028, 29.479008, 50.990879>,  <34.251774, 29.697090, 51.090389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.240028, 29.479008, 50.990879>,  <34.220455, 29.115538, 50.825027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240028, 29.479008, 50.990879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296831, 0.409603, -0.862622,
		-0.953676, -0.080863, 0.289766,
		0.048935, 0.908673, 0.414631,
		34.254707, 29.751610, 51.115269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679630, 29.404774, 50.496456>,  <34.220455, 29.115538, 50.825027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679630, 29.404774, 50.496456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.881416, 29.705879, 50.665623>,  <34.002487, 29.886543, 50.767120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.881416, 29.705879, 50.665623>,  <33.679630, 29.404774, 50.496456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881416, 29.705879, 50.665623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184470, 0.572464, -0.798910,
		-0.843494, 0.325010, 0.427653,
		0.504469, 0.752764, 0.422915,
		34.032757, 29.931709, 50.792496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391933, 30.073988, 50.229824>,  <33.679630, 29.404774, 50.496456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391933, 30.073988, 50.229824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.745548, 30.204117, 50.364067>,  <33.957718, 30.282194, 50.444614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.745548, 30.204117, 50.364067>,  <33.391933, 30.073988, 50.229824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745548, 30.204117, 50.364067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025783, 0.682992, -0.729971,
		-0.466697, 0.653977, 0.595405,
		0.884041, 0.325324, 0.335612,
		34.010761, 30.301714, 50.464752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475567, 30.895405, 50.218647>,  <33.391933, 30.073988, 50.229824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475567, 30.895405, 50.218647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.832752, 30.721775, 50.170994>,  <34.047066, 30.617598, 50.142403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.832752, 30.721775, 50.170994>,  <33.475567, 30.895405, 50.218647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832752, 30.721775, 50.170994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219906, 0.651635, -0.725957,
		0.392753, 0.622055, 0.677342,
		0.892965, -0.434073, -0.119138,
		34.100643, 30.591553, 50.135254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836849, 31.391035, 49.956142>,  <33.475567, 30.895405, 50.218647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836849, 31.391035, 49.956142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.066212, 31.074278, 49.872135>,  <34.203831, 30.884224, 49.821732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.066212, 31.074278, 49.872135>,  <33.836849, 31.391035, 49.956142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066212, 31.074278, 49.872135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495363, 0.539298, -0.681009,
		0.652549, 0.286461, 0.701513,
		0.573407, -0.791895, -0.210016,
		34.238235, 30.836710, 49.809132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441555, 31.758690, 49.875591>,  <33.836849, 31.391035, 49.956142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441555, 31.758690, 49.875591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481915, 31.399715, 49.703808>,  <34.506130, 31.184332, 49.600739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481915, 31.399715, 49.703808>,  <34.441555, 31.758690, 49.875591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481915, 31.399715, 49.703808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596433, 0.400054, -0.695862,
		0.796296, -0.185926, 0.575626,
		0.100902, -0.897434, -0.429454,
		34.512184, 31.130486, 49.574970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191166, 31.726744, 49.699059>,  <34.441555, 31.758690, 49.875591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191166, 31.726744, 49.699059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007305, 31.471546, 49.451935>,  <34.896988, 31.318428, 49.303661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007305, 31.471546, 49.451935>,  <35.191166, 31.726744, 49.699059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007305, 31.471546, 49.451935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390660, 0.479482, -0.785800,
		0.797564, -0.602544, 0.028846,
		-0.459648, -0.637995, -0.617808,
		34.869411, 31.280148, 49.266594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629646, 31.353958, 49.330292>,  <35.191166, 31.726744, 49.699059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629646, 31.353958, 49.330292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306095, 31.315760, 49.098221>,  <35.111965, 31.292841, 48.958981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306095, 31.315760, 49.098221>,  <35.629646, 31.353958, 49.330292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306095, 31.315760, 49.098221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499354, 0.409378, -0.763581,
		0.310429, -0.907354, -0.283450,
		-0.808875, -0.095496, -0.580173,
		35.063431, 31.287111, 48.924168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827515, 31.136950, 48.592812>,  <35.629646, 31.353958, 49.330292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827515, 31.136950, 48.592812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468163, 31.310892, 48.568104>,  <35.252552, 31.415258, 48.553280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468163, 31.310892, 48.568104>,  <35.827515, 31.136950, 48.592812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468163, 31.310892, 48.568104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354571, 0.635028, -0.686308,
		-0.259221, -0.638466, -0.724683,
		-0.898378, 0.434857, -0.061768,
		35.198650, 31.441349, 48.549572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678329, 31.057047, 47.970043>,  <35.827515, 31.136950, 48.592812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678329, 31.057047, 47.970043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.415798, 31.347023, 48.053654>,  <35.258278, 31.521009, 48.103821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.415798, 31.347023, 48.053654>,  <35.678329, 31.057047, 47.970043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415798, 31.347023, 48.053654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436723, 0.590960, -0.678262,
		-0.615229, -0.353874, -0.704462,
		-0.656328, 0.724941, 0.209031,
		35.218899, 31.564505, 48.116364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405975, 31.279369, 47.371124>,  <35.678329, 31.057047, 47.970043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405975, 31.279369, 47.371124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322392, 31.591070, 47.607464>,  <35.272240, 31.778091, 47.749268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322392, 31.591070, 47.607464>,  <35.405975, 31.279369, 47.371124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322392, 31.591070, 47.607464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263484, 0.626705, -0.733360,
		-0.941760, 0.002434, -0.336278,
		-0.208962, 0.779253, 0.590847,
		35.259705, 31.824846, 47.784718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193737, 31.711548, 46.901505>,  <35.405975, 31.279369, 47.371124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193737, 31.711548, 46.901505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.285770, 31.968416, 47.193993>,  <35.340992, 32.122536, 47.369484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.285770, 31.968416, 47.193993>,  <35.193737, 31.711548, 46.901505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285770, 31.968416, 47.193993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316971, 0.660953, -0.680199,
		-0.920103, 0.388279, -0.051473,
		0.230086, 0.642169, 0.731218,
		35.354797, 32.161068, 47.413357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860626, 32.355465, 46.717636>,  <35.193737, 31.711548, 46.901505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860626, 32.355465, 46.717636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158455, 32.425594, 46.975277>,  <35.337154, 32.467674, 47.129864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158455, 32.425594, 46.975277>,  <34.860626, 32.355465, 46.717636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158455, 32.425594, 46.975277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346637, 0.723056, -0.597522,
		-0.570485, 0.668170, 0.477594,
		0.744573, 0.175326, 0.644105,
		35.381828, 32.478191, 47.168507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070923, 32.928680, 46.360943>,  <34.860626, 32.355465, 46.717636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070923, 32.928680, 46.360943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.345673, 32.867340, 46.645107>,  <35.510525, 32.830536, 46.815605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.345673, 32.867340, 46.645107>,  <35.070923, 32.928680, 46.360943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345673, 32.867340, 46.645107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645303, 0.578363, -0.499079,
		-0.334343, 0.801237, 0.496220,
		0.686876, -0.153349, 0.710412,
		35.551735, 32.821335, 46.858231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333279, 33.521084, 46.543987>,  <35.070923, 32.928680, 46.360943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333279, 33.521084, 46.543987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627903, 33.281094, 46.668892>,  <35.804676, 33.137100, 46.743835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627903, 33.281094, 46.668892>,  <35.333279, 33.521084, 46.543987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627903, 33.281094, 46.668892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626185, 0.430362, -0.650139,
		0.255682, 0.674400, 0.692684,
		0.736559, -0.599977, 0.312264,
		35.848869, 33.101101, 46.762569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901569, 33.973515, 46.698643>,  <35.333279, 33.521084, 46.543987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901569, 33.973515, 46.698643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042492, 33.607891, 46.618259>,  <36.127045, 33.388519, 46.570030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042492, 33.607891, 46.618259>,  <35.901569, 33.973515, 46.698643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042492, 33.607891, 46.618259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514286, 0.368478, -0.774425,
		0.781915, 0.169484, 0.599903,
		0.352304, -0.914056, -0.200956,
		36.148182, 33.333675, 46.557972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562664, 34.021408, 46.675236>,  <35.901569, 33.973515, 46.698643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562664, 34.021408, 46.675236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475540, 33.694149, 46.462372>,  <36.423267, 33.497795, 46.334652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475540, 33.694149, 46.462372>,  <36.562664, 34.021408, 46.675236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475540, 33.694149, 46.462372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377101, 0.432362, -0.819060,
		0.900197, -0.379075, 0.214353,
		-0.217807, -0.818148, -0.532160,
		36.410198, 33.448704, 46.302723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195866, 33.884953, 46.200951>,  <36.562664, 34.021408, 46.675236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195866, 33.884953, 46.200951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890411, 33.681252, 46.042194>,  <36.707138, 33.559032, 45.946941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890411, 33.681252, 46.042194>,  <37.195866, 33.884953, 46.200951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890411, 33.681252, 46.042194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290421, 0.278083, -0.915601,
		0.576639, -0.814452, -0.064457,
		-0.763638, -0.509252, -0.396887,
		36.661320, 33.528477, 45.923126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457481, 33.691113, 45.499840>,  <37.195866, 33.884953, 46.200951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457481, 33.691113, 45.499840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059258, 33.655704, 45.487087>,  <36.820324, 33.634460, 45.479435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059258, 33.655704, 45.487087>,  <37.457481, 33.691113, 45.499840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059258, 33.655704, 45.487087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005869, 0.279787, -0.960044,
		0.093901, -0.955973, -0.278027,
		-0.995564, -0.088518, -0.031883,
		36.760590, 33.629150, 45.477524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.324562, 38.286339, 41.385593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.942528, 38.308750, 41.269199>,  <40.713306, 38.322197, 41.199364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.942528, 38.308750, 41.269199>,  <41.324562, 38.286339, 41.385593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942528, 38.308750, 41.269199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226913, -0.493252, -0.839769,
		-0.190583, -0.868080, 0.458384,
		-0.955086, 0.056032, -0.290984,
		40.656002, 38.325562, 41.181904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148563, 37.606182, 41.254246>,  <41.324562, 38.286339, 41.385593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148563, 37.606182, 41.254246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889889, 37.838661, 41.056656>,  <40.734684, 37.978149, 40.938103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889889, 37.838661, 41.056656>,  <41.148563, 37.606182, 41.254246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889889, 37.838661, 41.056656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063204, -0.604556, -0.794051,
		-0.760135, -0.544721, 0.354223,
		-0.646684, 0.581197, -0.493973,
		40.695885, 38.013020, 40.908463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690552, 37.114826, 41.034771>,  <41.148563, 37.606182, 41.254246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690552, 37.114826, 41.034771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.632675, 37.435429, 40.802685>,  <40.597950, 37.627789, 40.663433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.632675, 37.435429, 40.802685>,  <40.690552, 37.114826, 41.034771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632675, 37.435429, 40.802685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000692, -0.586307, -0.810089,
		-0.989476, -0.117615, 0.084280,
		-0.144693, 0.801505, -0.580218,
		40.589268, 37.675880, 40.628620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207996, 36.845181, 40.561913>,  <40.690552, 37.114826, 41.034771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207996, 36.845181, 40.561913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.327705, 37.174366, 40.368763>,  <40.399529, 37.371880, 40.252872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.327705, 37.174366, 40.368763>,  <40.207996, 36.845181, 40.561913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327705, 37.174366, 40.368763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058251, -0.489362, -0.870133,
		-0.952389, 0.288531, -0.098512,
		0.299268, 0.822967, -0.482870,
		40.417484, 37.421257, 40.223904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774010, 36.951248, 39.890438>,  <40.207996, 36.845181, 40.561913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774010, 36.951248, 39.890438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.117413, 37.153423, 39.855789>,  <40.323452, 37.274727, 39.834999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.117413, 37.153423, 39.855789>,  <39.774010, 36.951248, 39.890438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117413, 37.153423, 39.855789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109581, -0.345829, -0.931877,
		-0.500963, 0.790528, -0.352282,
		0.858504, 0.505439, -0.086621,
		40.374962, 37.305054, 39.829803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715523, 37.335472, 39.199398>,  <39.774010, 36.951248, 39.890438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715523, 37.335472, 39.199398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104908, 37.304150, 39.285416>,  <40.338539, 37.285358, 39.337029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104908, 37.304150, 39.285416>,  <39.715523, 37.335472, 39.199398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104908, 37.304150, 39.285416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184493, -0.287518, -0.939838,
		0.135422, 0.954569, -0.265441,
		0.973459, -0.078302, 0.215048,
		40.396946, 37.280659, 39.349930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093788, 37.599586, 38.632935>,  <39.715523, 37.335472, 39.199398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093788, 37.599586, 38.632935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390831, 37.402866, 38.814781>,  <40.569057, 37.284836, 38.923889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390831, 37.402866, 38.814781>,  <40.093788, 37.599586, 38.632935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390831, 37.402866, 38.814781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286562, -0.380198, -0.879393,
		0.605329, 0.783314, -0.141404,
		0.742603, -0.491801, 0.454613,
		40.613613, 37.255325, 38.951164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636852, 37.668690, 38.169559>,  <40.093788, 37.599586, 38.632935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636852, 37.668690, 38.169559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772045, 37.390640, 38.423351>,  <40.853161, 37.223808, 38.575626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772045, 37.390640, 38.423351>,  <40.636852, 37.668690, 38.169559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772045, 37.390640, 38.423351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553001, -0.398826, -0.731525,
		0.761549, 0.598112, 0.249609,
		0.337983, -0.695126, 0.634482,
		40.873440, 37.182102, 38.613697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376240, 37.751945, 38.102615>,  <40.636852, 37.668690, 38.169559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376240, 37.751945, 38.102615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264416, 37.386963, 38.222126>,  <41.197323, 37.167973, 38.293831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264416, 37.386963, 38.222126>,  <41.376240, 37.751945, 38.102615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264416, 37.386963, 38.222126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521666, -0.405596, -0.750571,
		0.806047, -0.053966, 0.589386,
		-0.279558, -0.912458, 0.298777,
		41.180550, 37.113224, 38.311760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954376, 37.362797, 38.029766>,  <41.376240, 37.751945, 38.102615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954376, 37.362797, 38.029766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.684685, 37.071793, 38.080593>,  <41.522869, 36.897190, 38.111088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.684685, 37.071793, 38.080593>,  <41.954376, 37.362797, 38.029766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684685, 37.071793, 38.080593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411263, -0.512772, -0.753610,
		0.613414, -0.455848, 0.644923,
		-0.674230, -0.727508, 0.127068,
		41.482414, 36.853539, 38.118713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330006, 36.712769, 38.159904>,  <41.954376, 37.362797, 38.029766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330006, 36.712769, 38.159904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975204, 36.629623, 37.994968>,  <41.762325, 36.579739, 37.896008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975204, 36.629623, 37.994968>,  <42.330006, 36.712769, 38.159904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975204, 36.629623, 37.994968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432685, -0.686018, -0.584947,
		-0.161286, -0.697262, 0.698436,
		-0.887001, -0.207859, -0.412339,
		41.709103, 36.567265, 37.871265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186756, 35.963383, 38.234703>,  <42.330006, 36.712769, 38.159904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186756, 35.963383, 38.234703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968639, 36.072952, 37.917812>,  <41.837769, 36.138695, 37.727680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968639, 36.072952, 37.917812>,  <42.186756, 35.963383, 38.234703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968639, 36.072952, 37.917812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366159, -0.772327, -0.519076,
		-0.754043, -0.573129, 0.320846,
		-0.545295, 0.273925, -0.792224,
		41.805050, 36.155128, 37.680145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911076, 35.331703, 37.950375>,  <42.186756, 35.963383, 38.234703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911076, 35.331703, 37.950375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841667, 35.590305, 37.653210>,  <41.800022, 35.745468, 37.474911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841667, 35.590305, 37.653210>,  <41.911076, 35.331703, 37.950375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841667, 35.590305, 37.653210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065030, -0.745188, -0.663676,
		-0.982681, -0.163472, 0.087263,
		-0.173520, 0.646508, -0.742913,
		41.789612, 35.784256, 37.430336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591057, 34.895576, 37.519032>,  <41.911076, 35.331703, 37.950375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591057, 34.895576, 37.519032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.691902, 35.206596, 37.288605>,  <41.752411, 35.393208, 37.150349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.691902, 35.206596, 37.288605>,  <41.591057, 34.895576, 37.519032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691902, 35.206596, 37.288605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188498, -0.623353, -0.758881,
		-0.949162, 0.082736, -0.303722,
		0.252113, 0.777552, -0.576066,
		41.767536, 35.439861, 37.115784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249306, 34.867107, 36.860401>,  <41.591057, 34.895576, 37.519032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249306, 34.867107, 36.860401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590408, 35.068020, 36.803093>,  <41.795071, 35.188568, 36.768707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590408, 35.068020, 36.803093>,  <41.249306, 34.867107, 36.860401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590408, 35.068020, 36.803093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301645, -0.697524, -0.649978,
		-0.426400, 0.511057, -0.746327,
		0.852756, 0.502277, -0.143267,
		41.846233, 35.218704, 36.760113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345463, 34.815353, 36.135422>,  <41.249306, 34.867107, 36.860401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345463, 34.815353, 36.135422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702110, 34.921051, 36.282494>,  <41.916100, 34.984470, 36.370735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702110, 34.921051, 36.282494>,  <41.345463, 34.815353, 36.135422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702110, 34.921051, 36.282494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447502, -0.637919, -0.626739,
		0.068939, 0.723351, -0.687031,
		0.891622, 0.264241, 0.367679,
		41.969597, 35.000324, 36.392796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796532, 34.699009, 35.527985>,  <41.345463, 34.815353, 36.135422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796532, 34.699009, 35.527985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.049118, 34.701008, 35.838142>,  <42.200668, 34.702206, 36.024235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.049118, 34.701008, 35.838142>,  <41.796532, 34.699009, 35.527985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049118, 34.701008, 35.838142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592856, -0.647634, -0.478636,
		0.499777, 0.761935, -0.411920,
		0.631462, 0.004998, 0.775391,
		42.238556, 34.702507, 36.070759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496346, 34.592503, 35.260334>,  <41.796532, 34.699009, 35.527985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496346, 34.592503, 35.260334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521484, 34.500748, 35.648857>,  <42.536568, 34.445694, 35.881969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521484, 34.500748, 35.648857>,  <42.496346, 34.592503, 35.260334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521484, 34.500748, 35.648857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596654, -0.771522, -0.220813,
		0.800034, 0.593410, 0.088377,
		0.062848, -0.229389, 0.971304,
		42.540340, 34.431931, 35.940247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151398, 34.338573, 35.322041>,  <42.496346, 34.592503, 35.260334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151398, 34.338573, 35.322041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.963097, 34.204193, 35.648361>,  <42.850117, 34.123566, 35.844154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.963097, 34.204193, 35.648361>,  <43.151398, 34.338573, 35.322041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963097, 34.204193, 35.648361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509207, -0.858569, -0.059726,
		0.720487, 0.387296, 0.575240,
		-0.470752, -0.335948, 0.815801,
		42.821873, 34.103409, 35.893101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665401, 34.073612, 35.819878>,  <43.151398, 34.338573, 35.322041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665401, 34.073612, 35.819878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.324898, 33.901054, 35.939384>,  <43.120594, 33.797520, 36.011089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.324898, 33.901054, 35.939384>,  <43.665401, 34.073612, 35.819878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324898, 33.901054, 35.939384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435363, -0.898459, -0.056835,
		0.292944, 0.081689, 0.952634,
		-0.851259, -0.431391, 0.298763,
		43.069519, 33.771637, 36.029015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875725, 33.505363, 36.124264>,  <43.665401, 34.073612, 35.819878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875725, 33.505363, 36.124264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486015, 33.447956, 36.054752>,  <43.252190, 33.413513, 36.013046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486015, 33.447956, 36.054752>,  <43.875725, 33.505363, 36.124264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486015, 33.447956, 36.054752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159629, -0.983720, -0.082540,
		-0.159107, -0.108157, 0.981319,
		-0.974271, -0.143514, -0.173781,
		43.193733, 33.404903, 36.002617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560528, 33.443569, 36.334835>,  <43.875725, 33.505363, 36.124264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560528, 33.443569, 36.334835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806271, 33.722195, 36.186584>,  <44.953716, 33.889370, 36.097633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806271, 33.722195, 36.186584>,  <44.560528, 33.443569, 36.334835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806271, 33.722195, 36.186584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227890, 0.606356, 0.761838,
		0.755404, -0.383574, 0.531257,
		0.614353, 0.696565, -0.370631,
		44.990578, 33.931164, 36.075394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031052, 33.554821, 36.814617>,  <44.560528, 33.443569, 36.334835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031052, 33.554821, 36.814617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015907, 33.879280, 36.581173>,  <45.006821, 34.073956, 36.441105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015907, 33.879280, 36.581173>,  <45.031052, 33.554821, 36.814617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015907, 33.879280, 36.581173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094882, 0.578477, 0.810162,
		0.994768, 0.086049, 0.055061,
		-0.037862, 0.811147, -0.583615,
		45.004547, 34.122623, 36.406090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607124, 34.016876, 37.076305>,  <45.031052, 33.554821, 36.814617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607124, 34.016876, 37.076305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.323917, 34.233540, 36.895058>,  <45.153996, 34.363537, 36.786308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.323917, 34.233540, 36.895058>,  <45.607124, 34.016876, 37.076305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323917, 34.233540, 36.895058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018632, 0.627088, 0.778726,
		0.705951, 0.559792, -0.433896,
		-0.708016, 0.541658, -0.453123,
		45.111511, 34.396038, 36.759121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829147, 34.617298, 37.181366>,  <45.607124, 34.016876, 37.076305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829147, 34.617298, 37.181366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461647, 34.713993, 37.056496>,  <45.241146, 34.772011, 36.981575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461647, 34.713993, 37.056496>,  <45.829147, 34.617298, 37.181366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461647, 34.713993, 37.056496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106246, 0.610115, 0.785157,
		0.380266, 0.754533, -0.534862,
		-0.918754, 0.241741, -0.312172,
		45.186020, 34.786514, 36.962845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777660, 35.261948, 37.166073>,  <45.829147, 34.617298, 37.181366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777660, 35.261948, 37.166073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395115, 35.153721, 37.210182>,  <45.165588, 35.088783, 37.236649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395115, 35.153721, 37.210182>,  <45.777660, 35.261948, 37.166073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395115, 35.153721, 37.210182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077485, 0.598770, 0.797164,
		-0.281715, 0.753835, -0.593607,
		-0.956364, -0.270569, 0.110272,
		45.108204, 35.072552, 37.243263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547501, 35.852997, 37.290653>,  <45.777660, 35.261948, 37.166073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547501, 35.852997, 37.290653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276215, 35.580383, 37.400585>,  <45.113441, 35.416813, 37.466545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276215, 35.580383, 37.400585>,  <45.547501, 35.852997, 37.290653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276215, 35.580383, 37.400585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330700, 0.617040, 0.714072,
		-0.656247, 0.393409, -0.643870,
		-0.678216, -0.681536, 0.274830,
		45.072750, 35.375923, 37.483036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057522, 36.190460, 37.501930>,  <45.547501, 35.852997, 37.290653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057522, 36.190460, 37.501930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.950424, 35.857571, 37.696136>,  <44.886166, 35.657837, 37.812660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.950424, 35.857571, 37.696136>,  <45.057522, 36.190460, 37.501930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950424, 35.857571, 37.696136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403099, 0.554446, 0.728080,
		-0.875115, -0.000775, -0.483913,
		-0.267739, -0.832219, 0.485517,
		44.870102, 35.607906, 37.841793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343147, 36.188587, 37.532024>,  <45.057522, 36.190460, 37.501930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343147, 36.188587, 37.532024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472725, 35.970238, 37.841106>,  <44.550472, 35.839226, 38.026558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472725, 35.970238, 37.841106>,  <44.343147, 36.188587, 37.532024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472725, 35.970238, 37.841106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445808, 0.632312, 0.633590,
		-0.834455, -0.549728, -0.038522,
		0.323944, -0.545876, 0.772710,
		44.569908, 35.806477, 38.072918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873207, 36.430981, 38.024929>,  <44.343147, 36.188587, 37.532024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873207, 36.430981, 38.024929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113308, 36.212513, 38.258644>,  <44.257370, 36.081432, 38.398872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113308, 36.212513, 38.258644>,  <43.873207, 36.430981, 38.024929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113308, 36.212513, 38.258644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432247, 0.393138, 0.811545,
		-0.672949, -0.739689, -0.000100,
		0.600252, -0.546171, 0.584290,
		44.293385, 36.048660, 38.433929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503960, 36.046700, 38.511391>,  <43.873207, 36.430981, 38.024929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503960, 36.046700, 38.511391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865997, 36.045444, 38.681469>,  <44.083221, 36.044693, 38.783516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865997, 36.045444, 38.681469>,  <43.503960, 36.046700, 38.511391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865997, 36.045444, 38.681469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382638, 0.430130, 0.817665,
		-0.185454, -0.902761, 0.388109,
		0.905094, -0.003134, 0.425200,
		44.137524, 36.044506, 38.809029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501266, 35.772655, 39.209602>,  <43.503960, 36.046700, 38.511391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501266, 35.772655, 39.209602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.828800, 36.002216, 39.214363>,  <44.025322, 36.139954, 39.217220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.828800, 36.002216, 39.214363>,  <43.501266, 35.772655, 39.209602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828800, 36.002216, 39.214363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247115, 0.333711, 0.909709,
		0.518116, -0.747842, 0.415075,
		0.818835, 0.573907, 0.011901,
		44.074451, 36.174389, 39.217934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695156, 35.625416, 39.829090>,  <43.501266, 35.772655, 39.209602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695156, 35.625416, 39.829090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.890148, 35.959831, 39.728367>,  <44.007145, 36.160480, 39.667931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.890148, 35.959831, 39.728367>,  <43.695156, 35.625416, 39.829090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890148, 35.959831, 39.728367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261475, 0.414944, 0.871465,
		0.833064, -0.358979, 0.420879,
		0.487479, 0.836036, -0.251811,
		44.036392, 36.210644, 39.652824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136845, 35.789875, 40.495979>,  <43.695156, 35.625416, 39.829090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136845, 35.789875, 40.495979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.090424, 36.110569, 40.261456>,  <44.062572, 36.302986, 40.120743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.090424, 36.110569, 40.261456>,  <44.136845, 35.789875, 40.495979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090424, 36.110569, 40.261456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305460, 0.532881, 0.789134,
		0.945106, 0.270676, 0.183054,
		-0.116054, 0.801731, -0.586309,
		44.055607, 36.351089, 40.085564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546864, 36.318993, 40.756481>,  <44.136845, 35.789875, 40.495979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546864, 36.318993, 40.756481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271900, 36.520668, 40.547382>,  <44.106922, 36.641674, 40.421925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271900, 36.520668, 40.547382>,  <44.546864, 36.318993, 40.756481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271900, 36.520668, 40.547382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155971, 0.600492, 0.784272,
		0.709322, 0.620651, -0.334147,
		-0.687412, 0.504185, -0.522745,
		44.065678, 36.671925, 40.390560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721073, 37.019642, 40.916740>,  <44.546864, 36.318993, 40.756481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721073, 37.019642, 40.916740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342426, 37.002991, 40.788872>,  <44.115238, 36.993000, 40.712151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342426, 37.002991, 40.788872>,  <44.721073, 37.019642, 40.916740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342426, 37.002991, 40.788872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273372, 0.629187, 0.727593,
		0.170846, 0.776139, -0.606976,
		-0.946615, -0.041624, -0.319669,
		44.058441, 36.990505, 40.692970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366997, 37.698730, 41.097534>,  <44.721073, 37.019642, 40.916740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366997, 37.698730, 41.097534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.064411, 37.447384, 41.024960>,  <43.882858, 37.296577, 40.981415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.064411, 37.447384, 41.024960>,  <44.366997, 37.698730, 41.097534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064411, 37.447384, 41.024960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488409, 0.358222, 0.795697,
		-0.434991, 0.690533, -0.577881,
		-0.756465, -0.628363, -0.181440,
		43.837471, 37.258873, 40.970528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763359, 38.171707, 41.101974>,  <44.366997, 37.698730, 41.097534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763359, 38.171707, 41.101974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653496, 37.789867, 41.148113>,  <43.587578, 37.560764, 41.175797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653496, 37.789867, 41.148113>,  <43.763359, 38.171707, 41.101974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653496, 37.789867, 41.148113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634996, 0.270151, 0.723740,
		-0.722042, 0.125535, -0.680365,
		-0.274656, -0.954599, 0.115347,
		43.571098, 37.503487, 41.182716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908726, 38.208893, 41.068794>,  <43.763359, 38.171707, 41.101974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908726, 38.208893, 41.068794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069447, 37.900433, 41.266327>,  <43.165878, 37.715355, 41.384846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069447, 37.900433, 41.266327>,  <42.908726, 38.208893, 41.068794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069447, 37.900433, 41.266327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687264, 0.102438, 0.719148,
		-0.605162, -0.628353, -0.488827,
		0.401804, -0.771154, 0.493836,
		43.189987, 37.669086, 41.414478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331608, 37.961472, 41.380390>,  <42.908726, 38.208893, 41.068794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331608, 37.961472, 41.380390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.594124, 37.730713, 41.574905>,  <42.751633, 37.592258, 41.691616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.594124, 37.730713, 41.574905>,  <42.331608, 37.961472, 41.380390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594124, 37.730713, 41.574905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580466, 0.025705, 0.813879,
		-0.482023, -0.816413, -0.317998,
		0.656287, -0.576896, 0.486291,
		42.791012, 37.557644, 41.720791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867405, 37.445976, 41.574718>,  <42.331608, 37.961472, 41.380390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867405, 37.445976, 41.574718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197460, 37.439133, 41.800591>,  <42.395493, 37.435028, 41.936111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197460, 37.439133, 41.800591>,  <41.867405, 37.445976, 41.574718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197460, 37.439133, 41.800591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564925, -0.018544, 0.824934,
		-0.003620, -0.999682, -0.024951,
		0.825134, -0.017082, 0.564678,
		42.445000, 37.434002, 41.969994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727257, 36.952057, 41.998596>,  <41.867405, 37.445976, 41.574718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727257, 36.952057, 41.998596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.003284, 37.168095, 42.191303>,  <42.168900, 37.297718, 42.306927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.003284, 37.168095, 42.191303>,  <41.727257, 36.952057, 41.998596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003284, 37.168095, 42.191303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584818, 0.023952, 0.810811,
		0.426377, -0.841262, 0.332387,
		0.690066, 0.540097, 0.481772,
		42.210304, 37.330124, 42.335835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.525608, 31.818130, 41.980087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164116, 31.961147, 41.885914>,  <40.947220, 32.046959, 41.829411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164116, 31.961147, 41.885914>,  <41.525608, 31.818130, 41.980087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164116, 31.961147, 41.885914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229591, -0.059378, -0.971474,
		-0.361324, -0.932007, -0.028427,
		-0.903733, 0.357543, -0.235435,
		40.892998, 32.068409, 41.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248379, 31.331469, 41.397671>,  <41.525608, 31.818130, 41.980087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248379, 31.331469, 41.397671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052376, 31.679548, 41.377094>,  <40.934776, 31.888397, 41.364750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052376, 31.679548, 41.377094>,  <41.248379, 31.331469, 41.397671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052376, 31.679548, 41.377094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215795, 0.063918, -0.974344,
		-0.844588, -0.488534, -0.219105,
		-0.490005, 0.870201, -0.051439,
		40.905373, 31.940609, 41.361664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943928, 31.258287, 40.757629>,  <41.248379, 31.331469, 41.397671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943928, 31.258287, 40.757629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945843, 31.649023, 40.843197>,  <40.946991, 31.883465, 40.894539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945843, 31.649023, 40.843197>,  <40.943928, 31.258287, 40.757629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945843, 31.649023, 40.843197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003704, 0.213905, -0.976848,
		-0.999982, 0.005472, -0.002594,
		0.004790, 0.976839, 0.213921,
		40.947281, 31.942076, 40.907372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406090, 31.635321, 40.220657>,  <40.943928, 31.258287, 40.757629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406090, 31.635321, 40.220657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689663, 31.887001, 40.348103>,  <40.859806, 32.038010, 40.424572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689663, 31.887001, 40.348103>,  <40.406090, 31.635321, 40.220657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689663, 31.887001, 40.348103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093773, 0.363659, -0.926800,
		-0.699012, 0.686918, 0.198808,
		0.708935, 0.629202, 0.318617,
		40.902344, 32.075760, 40.443687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201153, 32.317551, 39.889019>,  <40.406090, 31.635321, 40.220657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201153, 32.317551, 39.889019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579128, 32.348457, 40.016216>,  <40.805912, 32.367001, 40.092537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579128, 32.348457, 40.016216>,  <40.201153, 32.317551, 39.889019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579128, 32.348457, 40.016216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205048, 0.617517, -0.759360,
		-0.255043, 0.782753, 0.567672,
		0.944938, 0.077270, 0.317995,
		40.862610, 32.371639, 40.111614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376541, 33.043140, 39.963322>,  <40.201153, 32.317551, 39.889019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376541, 33.043140, 39.963322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707802, 32.830597, 39.891972>,  <40.906559, 32.703072, 39.849159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707802, 32.830597, 39.891972>,  <40.376541, 33.043140, 39.963322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707802, 32.830597, 39.891972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200666, 0.578228, -0.790813,
		0.523347, 0.619122, 0.585488,
		0.828155, -0.531357, -0.178377,
		40.956249, 32.671188, 39.838459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701031, 33.576462, 39.577492>,  <40.376541, 33.043140, 39.963322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701031, 33.576462, 39.577492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937862, 33.259605, 39.518219>,  <41.079964, 33.069492, 39.482655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937862, 33.259605, 39.518219>,  <40.701031, 33.576462, 39.577492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937862, 33.259605, 39.518219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308835, 0.392867, -0.866185,
		0.744352, 0.467090, 0.477249,
		0.592082, -0.792138, -0.148178,
		41.115486, 33.021965, 39.473766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458519, 33.800789, 39.442169>,  <40.701031, 33.576462, 39.577492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458519, 33.800789, 39.442169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401188, 33.435722, 39.289066>,  <41.366787, 33.216682, 39.197205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401188, 33.435722, 39.289066>,  <41.458519, 33.800789, 39.442169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401188, 33.435722, 39.289066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438679, 0.288092, -0.851213,
		0.887140, -0.289912, 0.359073,
		-0.143331, -0.912663, -0.382756,
		41.358189, 33.161922, 39.174240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048973, 33.597317, 39.054367>,  <41.458519, 33.800789, 39.442169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048973, 33.597317, 39.054367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785423, 33.347385, 38.886806>,  <41.627293, 33.197426, 38.786270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785423, 33.347385, 38.886806>,  <42.048973, 33.597317, 39.054367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785423, 33.347385, 38.886806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308749, 0.283185, -0.908009,
		0.685975, -0.727598, 0.006331,
		-0.658873, -0.624826, -0.418903,
		41.587761, 33.159939, 38.761135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415699, 33.403545, 38.393257>,  <42.048973, 33.597317, 39.054367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415699, 33.403545, 38.393257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072205, 33.207138, 38.334637>,  <41.866108, 33.089294, 38.299465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072205, 33.207138, 38.334637>,  <42.415699, 33.403545, 38.393257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072205, 33.207138, 38.334637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038216, 0.223827, -0.973880,
		0.510991, -0.841906, -0.173443,
		-0.858737, -0.491015, -0.146548,
		41.814583, 33.059834, 38.290672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389366, 32.816608, 37.911980>,  <42.415699, 33.403545, 38.393257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389366, 32.816608, 37.911980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019688, 32.961426, 37.863346>,  <41.797878, 33.048317, 37.834164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019688, 32.961426, 37.863346>,  <42.389366, 32.816608, 37.911980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019688, 32.961426, 37.863346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123380, -0.018255, -0.992192,
		-0.361436, -0.931982, -0.027798,
		-0.924198, 0.362043, -0.121586,
		41.742428, 33.070038, 37.826870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205154, 32.671955, 37.297962>,  <42.389366, 32.816608, 37.911980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205154, 32.671955, 37.297962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913025, 32.938782, 37.356808>,  <41.737747, 33.098877, 37.392113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913025, 32.938782, 37.356808>,  <42.205154, 32.671955, 37.297962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913025, 32.938782, 37.356808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033059, 0.249623, -0.967779,
		-0.682297, -0.701932, -0.204359,
		-0.730327, 0.667069, 0.147112,
		41.693928, 33.138901, 37.400940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647175, 32.641815, 36.793545>,  <42.205154, 32.671955, 37.297962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647175, 32.641815, 36.793545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659870, 33.022659, 36.915184>,  <41.667488, 33.251167, 36.988167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659870, 33.022659, 36.915184>,  <41.647175, 32.641815, 36.793545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659870, 33.022659, 36.915184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044389, 0.305293, -0.951223,
		-0.998510, 0.016695, 0.051953,
		0.031742, 0.952112, 0.304097,
		41.669392, 33.308292, 37.006413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055851, 33.008671, 36.684120>,  <41.647175, 32.641815, 36.793545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055851, 33.008671, 36.684120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348820, 33.280994, 36.687393>,  <41.524601, 33.444389, 36.689358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348820, 33.280994, 36.687393>,  <41.055851, 33.008671, 36.684120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348820, 33.280994, 36.687393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364656, 0.402394, -0.839706,
		-0.574970, 0.612031, 0.542980,
		0.732418, 0.680806, 0.008184,
		41.568546, 33.485237, 36.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367897, 33.402142, 36.795979>,  <41.055851, 33.008671, 36.684120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367897, 33.402142, 36.795979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303242, 33.215839, 36.447968>,  <40.264446, 33.104057, 36.239162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303242, 33.215839, 36.447968>,  <40.367897, 33.402142, 36.795979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303242, 33.215839, 36.447968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905784, -0.279908, 0.318130,
		-0.391698, 0.839478, -0.376629,
		-0.161642, -0.465755, -0.870025,
		40.254749, 33.076115, 36.186958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843800, 33.604107, 36.505116>,  <40.367897, 33.402142, 36.795979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843800, 33.604107, 36.505116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864899, 33.243412, 36.333496>,  <39.877556, 33.026993, 36.230526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864899, 33.243412, 36.333496>,  <39.843800, 33.604107, 36.505116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864899, 33.243412, 36.333496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900178, -0.228934, 0.370499,
		-0.432317, 0.366675, -0.823803,
		0.052744, -0.901742, -0.429045,
		39.880722, 32.972889, 36.204781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227871, 33.594593, 36.128166>,  <39.843800, 33.604107, 36.505116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227871, 33.594593, 36.128166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338436, 33.211506, 36.160080>,  <39.404774, 32.981651, 36.179230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338436, 33.211506, 36.160080>,  <39.227871, 33.594593, 36.128166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338436, 33.211506, 36.160080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946969, -0.257270, 0.192515,
		-0.163849, -0.128769, -0.978045,
		0.276411, -0.957722, 0.079786,
		39.421360, 32.924191, 36.184017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770142, 33.216290, 35.680069>,  <39.227871, 33.594593, 36.128166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770142, 33.216290, 35.680069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895260, 32.924419, 35.923294>,  <38.970329, 32.749298, 36.069229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895260, 32.924419, 35.923294>,  <38.770142, 33.216290, 35.680069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895260, 32.924419, 35.923294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911190, -0.411242, -0.024762,
		0.268127, -0.546311, -0.793506,
		0.312795, -0.729674, 0.608058,
		38.989098, 32.705517, 36.105713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444798, 32.528271, 35.529930>,  <38.770142, 33.216290, 35.680069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444798, 32.528271, 35.529930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566166, 32.510006, 35.910633>,  <38.638988, 32.499046, 36.139057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566166, 32.510006, 35.910633>,  <38.444798, 32.528271, 35.529930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566166, 32.510006, 35.910633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863688, -0.435072, 0.254471,
		0.402465, -0.899237, -0.171448,
		0.303422, -0.045662, 0.951762,
		38.657192, 32.496307, 36.196163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087364, 31.859379, 35.839188>,  <38.444798, 32.528271, 35.529930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087364, 31.859379, 35.839188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218010, 32.044891, 36.168606>,  <38.296398, 32.156200, 36.366257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218010, 32.044891, 36.168606>,  <38.087364, 31.859379, 35.839188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218010, 32.044891, 36.168606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666569, -0.504715, 0.548588,
		0.670082, -0.728126, 0.144297,
		0.326612, 0.463784, 0.823547,
		38.315994, 32.184025, 36.415668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356850, 31.282585, 36.330410>,  <38.087364, 31.859379, 35.839188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356850, 31.282585, 36.330410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295231, 31.611197, 36.549995>,  <38.258259, 31.808363, 36.681747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295231, 31.611197, 36.549995>,  <38.356850, 31.282585, 36.330410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295231, 31.611197, 36.549995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437789, -0.554831, 0.707463,
		0.885783, -0.131351, 0.445124,
		-0.154042, 0.821529, 0.548964,
		38.249020, 31.857655, 36.714684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705730, 31.171101, 37.008957>,  <38.356850, 31.282585, 36.330410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705730, 31.171101, 37.008957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411179, 31.440878, 37.030392>,  <38.234447, 31.602745, 37.043251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411179, 31.440878, 37.030392>,  <38.705730, 31.171101, 37.008957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411179, 31.440878, 37.030392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298793, -0.395249, 0.868620,
		0.607015, 0.623623, 0.492572,
		-0.736380, 0.674443, 0.053588,
		38.190266, 31.643211, 37.046467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718784, 31.303411, 37.686150>,  <38.705730, 31.171101, 37.008957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718784, 31.303411, 37.686150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362041, 31.428186, 37.555130>,  <38.147995, 31.503052, 37.476517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362041, 31.428186, 37.555130>,  <38.718784, 31.303411, 37.686150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362041, 31.428186, 37.555130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379511, -0.122059, 0.917100,
		0.246099, 0.942229, 0.227243,
		-0.891856, 0.311939, -0.327548,
		38.094486, 31.521769, 37.456867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498058, 31.692709, 38.186317>,  <38.718784, 31.303411, 37.686150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498058, 31.692709, 38.186317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168270, 31.582458, 37.988621>,  <37.970398, 31.516308, 37.870003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168270, 31.582458, 37.988621>,  <38.498058, 31.692709, 38.186317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168270, 31.582458, 37.988621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394857, -0.345449, 0.851325,
		-0.405382, 0.897049, 0.175980,
		-0.824472, -0.275625, -0.494244,
		37.920929, 31.499771, 37.840347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954670, 31.929073, 38.678284>,  <38.498058, 31.692709, 38.186317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954670, 31.929073, 38.678284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785976, 31.649652, 38.447056>,  <37.684761, 31.482000, 38.308319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785976, 31.649652, 38.447056>,  <37.954670, 31.929073, 38.678284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785976, 31.649652, 38.447056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269474, -0.512175, 0.815513,
		-0.865752, 0.499702, 0.027758,
		-0.421730, -0.698552, -0.578073,
		37.659458, 31.440086, 38.273632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241581, 31.822409, 38.828510>,  <37.954670, 31.929073, 38.678284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241581, 31.822409, 38.828510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301556, 31.472029, 38.645107>,  <37.337540, 31.261801, 38.535065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301556, 31.472029, 38.645107>,  <37.241581, 31.822409, 38.828510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301556, 31.472029, 38.645107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233220, -0.481996, 0.844564,
		-0.960795, -0.019699, -0.276559,
		0.149937, -0.875952, -0.458505,
		37.346539, 31.209244, 38.507557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516304, 31.474960, 38.811779>,  <37.241581, 31.822409, 38.828510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516304, 31.474960, 38.811779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812141, 31.209303, 38.768116>,  <36.989643, 31.049910, 38.741920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812141, 31.209303, 38.768116>,  <36.516304, 31.474960, 38.811779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812141, 31.209303, 38.768116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341566, -0.510109, 0.789380,
		-0.579942, -0.546537, -0.604123,
		0.739594, -0.664143, -0.109155,
		37.034019, 31.010061, 38.735371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242615, 30.793119, 38.834846>,  <36.516304, 31.474960, 38.811779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242615, 30.793119, 38.834846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622356, 30.700140, 38.919411>,  <36.850201, 30.644352, 38.970150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622356, 30.700140, 38.919411>,  <36.242615, 30.793119, 38.834846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622356, 30.700140, 38.919411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310262, -0.587165, 0.747646,
		-0.049653, -0.775375, -0.629547,
		0.949354, -0.232447, 0.211414,
		36.907162, 30.630405, 38.982834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018749, 30.246855, 38.405815>,  <36.242615, 30.793119, 38.834846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018749, 30.246855, 38.405815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718098, 30.100460, 38.186321>,  <35.537708, 30.012623, 38.054623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718098, 30.100460, 38.186321>,  <36.018749, 30.246855, 38.405815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718098, 30.100460, 38.186321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272992, 0.584728, -0.763917,
		0.600458, -0.723974, -0.339576,
		-0.751616, -0.365998, -0.548743,
		35.492611, 29.990664, 38.021698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317856, 30.025957, 37.768600>,  <36.018749, 30.246855, 38.405815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317856, 30.025957, 37.768600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929466, 30.067165, 37.682255>,  <35.696434, 30.091890, 37.630447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929466, 30.067165, 37.682255>,  <36.317856, 30.025957, 37.768600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929466, 30.067165, 37.682255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238044, 0.504432, -0.829990,
		0.023385, -0.857284, -0.514313,
		-0.970973, 0.103020, -0.215867,
		35.638176, 30.098072, 37.617496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235348, 29.858089, 37.021957>,  <36.317856, 30.025957, 37.768600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235348, 29.858089, 37.021957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901764, 30.059187, 37.112968>,  <35.701614, 30.179846, 37.167576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901764, 30.059187, 37.112968>,  <36.235348, 29.858089, 37.021957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901764, 30.059187, 37.112968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151193, 0.604695, -0.781974,
		-0.530714, -0.617732, -0.580301,
		-0.833956, 0.502743, 0.227523,
		35.651577, 30.210011, 37.181225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726665, 29.852764, 36.374580>,  <36.235348, 29.858089, 37.021957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726665, 29.852764, 36.374580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620125, 30.156351, 36.612244>,  <35.556198, 30.338503, 36.754841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620125, 30.156351, 36.612244>,  <35.726665, 29.852764, 36.374580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620125, 30.156351, 36.612244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196394, 0.560764, -0.804347,
		-0.943655, -0.330931, -0.000306,
		-0.266355, 0.758965, 0.594161,
		35.540218, 30.384041, 36.790493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051365, 30.101824, 36.106339>,  <35.726665, 29.852764, 36.374580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051365, 30.101824, 36.106339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194965, 30.401943, 36.328392>,  <35.281124, 30.582014, 36.461624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194965, 30.401943, 36.328392>,  <35.051365, 30.101824, 36.106339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194965, 30.401943, 36.328392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188868, 0.640877, -0.744047,
		-0.914028, 0.162267, 0.371783,
		0.359001, 0.750297, 0.555133,
		35.302666, 30.627033, 36.494930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556103, 30.623198, 36.046722>,  <35.051365, 30.101824, 36.106339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556103, 30.623198, 36.046722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908321, 30.788567, 36.139435>,  <35.119652, 30.887789, 36.195061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908321, 30.788567, 36.139435>,  <34.556103, 30.623198, 36.046722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908321, 30.788567, 36.139435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115022, 0.660801, -0.741695,
		-0.459794, 0.626436, 0.629418,
		0.880545, 0.413424, 0.231779,
		35.172485, 30.912594, 36.208969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366268, 31.297361, 36.006020>,  <34.556103, 30.623198, 36.046722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366268, 31.297361, 36.006020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765518, 31.272987, 36.003799>,  <35.005070, 31.258362, 36.002468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765518, 31.272987, 36.003799>,  <34.366268, 31.297361, 36.006020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765518, 31.272987, 36.003799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047441, 0.827968, -0.558765,
		0.038644, 0.557455, 0.829307,
		0.998126, -0.060936, -0.005550,
		35.064957, 31.254707, 36.002136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632336, 31.999006, 36.033375>,  <34.366268, 31.297361, 36.006020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632336, 31.999006, 36.033375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939419, 31.778360, 35.902931>,  <35.123669, 31.645973, 35.824665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939419, 31.778360, 35.902931>,  <34.632336, 31.999006, 36.033375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939419, 31.778360, 35.902931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093391, 0.599792, -0.794687,
		0.633961, 0.579630, 0.511980,
		0.767706, -0.551615, -0.326112,
		35.169731, 31.612875, 35.805099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243275, 32.395794, 36.054886>,  <34.632336, 31.999006, 36.033375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243275, 32.395794, 36.054886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312557, 32.099529, 35.795216>,  <35.354126, 31.921772, 35.639416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312557, 32.099529, 35.795216>,  <35.243275, 32.395794, 36.054886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312557, 32.099529, 35.795216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216523, 0.671645, -0.708527,
		0.960791, -0.017842, 0.276700,
		0.173202, -0.740658, -0.649174,
		35.364517, 31.877333, 35.600464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937759, 32.534317, 35.789120>,  <35.243275, 32.395794, 36.054886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937759, 32.534317, 35.789120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714348, 32.329788, 35.527863>,  <35.580299, 32.207073, 35.371109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714348, 32.329788, 35.527863>,  <35.937759, 32.534317, 35.789120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714348, 32.329788, 35.527863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304310, 0.606199, -0.734792,
		0.771650, -0.609160, -0.182979,
		-0.558527, -0.511320, -0.653146,
		35.546791, 32.176392, 35.331921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454998, 32.461205, 35.235603>,  <35.937759, 32.534317, 35.789120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454998, 32.461205, 35.235603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093609, 32.414043, 35.070759>,  <35.876774, 32.385746, 34.971851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093609, 32.414043, 35.070759>,  <36.454998, 32.461205, 35.235603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093609, 32.414043, 35.070759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285912, 0.550543, -0.784320,
		0.319358, -0.826439, -0.463691,
		-0.903474, -0.117904, -0.412109,
		35.822567, 32.378674, 34.947124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646805, 32.364742, 34.573849>,  <36.454998, 32.461205, 35.235603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646805, 32.364742, 34.573849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261597, 32.472095, 34.583302>,  <36.030472, 32.536507, 34.588974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261597, 32.472095, 34.583302>,  <36.646805, 32.364742, 34.573849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261597, 32.472095, 34.583302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139808, 0.572808, -0.807678,
		-0.230303, -0.774509, -0.589149,
		-0.963024, 0.268379, 0.023637,
		35.972691, 32.552608, 34.590393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.546207, 27.862566, 40.973053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.171944, 28.003279, 40.961853>,  <34.947384, 28.087706, 40.955135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.171944, 28.003279, 40.961853>,  <35.546207, 27.862566, 40.973053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171944, 28.003279, 40.961853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094044, 0.172096, -0.980581,
		-0.340132, -0.920127, -0.194107,
		-0.935663, 0.351782, -0.027997,
		34.891243, 28.108812, 40.953453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292236, 27.520443, 40.374119>,  <35.546207, 27.862566, 40.973053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292236, 27.520443, 40.374119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.016712, 27.800560, 40.449097>,  <34.851398, 27.968630, 40.494083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.016712, 27.800560, 40.449097>,  <35.292236, 27.520443, 40.374119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016712, 27.800560, 40.449097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095754, 0.168408, -0.981055,
		-0.718592, -0.693708, -0.048945,
		-0.688808, 0.700292, 0.187442,
		34.810070, 28.010647, 40.505329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699051, 27.360186, 39.922180>,  <35.292236, 27.520443, 40.374119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699051, 27.360186, 39.922180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.687260, 27.748486, 40.017487>,  <34.680183, 27.981466, 40.074673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.687260, 27.748486, 40.017487>,  <34.699051, 27.360186, 39.922180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687260, 27.748486, 40.017487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243059, 0.238179, -0.940316,
		-0.969564, 0.030192, -0.242972,
		-0.029480, 0.970752, 0.238268,
		34.678417, 28.039711, 40.088966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233410, 27.701937, 39.399529>,  <34.699051, 27.360186, 39.922180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233410, 27.701937, 39.399529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489357, 27.983381, 39.523144>,  <34.642925, 28.152248, 39.597313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489357, 27.983381, 39.523144>,  <34.233410, 27.701937, 39.399529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489357, 27.983381, 39.523144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001669, 0.400866, -0.916135,
		-0.768484, 0.586720, 0.255327,
		0.639866, 0.703609, 0.309038,
		34.681316, 28.194464, 39.615856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094700, 28.295488, 39.020725>,  <34.233410, 27.701937, 39.399529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094700, 28.295488, 39.020725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.442081, 28.413811, 39.179867>,  <34.650509, 28.484804, 39.275352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.442081, 28.413811, 39.179867>,  <34.094700, 28.295488, 39.020725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442081, 28.413811, 39.179867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091469, 0.693115, -0.715000,
		-0.487259, 0.657336, 0.574881,
		0.868454, 0.295807, 0.397852,
		34.702618, 28.502552, 39.299221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969276, 29.027645, 39.146732>,  <34.094700, 28.295488, 39.020725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969276, 29.027645, 39.146732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366478, 28.983582, 39.129681>,  <34.604797, 28.957144, 39.119450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366478, 28.983582, 39.129681>,  <33.969276, 29.027645, 39.146732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366478, 28.983582, 39.129681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037669, 0.637355, -0.769649,
		0.111952, 0.762656, 0.637043,
		0.992999, -0.110160, -0.042625,
		34.664379, 28.950533, 39.116894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267632, 29.738403, 39.118111>,  <33.969276, 29.027645, 39.146732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267632, 29.738403, 39.118111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.547459, 29.491058, 38.974873>,  <34.715355, 29.342651, 38.888931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.547459, 29.491058, 38.974873>,  <34.267632, 29.738403, 39.118111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547459, 29.491058, 38.974873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227120, 0.667566, -0.709064,
		0.677507, 0.414712, 0.607452,
		0.699572, -0.618360, -0.358091,
		34.757332, 29.305550, 38.867447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730816, 30.155960, 38.982250>,  <34.267632, 29.738403, 39.118111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730816, 30.155960, 38.982250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.872658, 29.837761, 38.785706>,  <34.957764, 29.646841, 38.667778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.872658, 29.837761, 38.785706>,  <34.730816, 30.155960, 38.982250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872658, 29.837761, 38.785706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420366, 0.605046, -0.676174,
		0.835192, 0.033224, 0.548954,
		0.354607, -0.795497, -0.491364,
		34.979038, 29.599112, 38.638298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406261, 30.276510, 38.950638>,  <34.730816, 30.155960, 38.982250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406261, 30.276510, 38.950638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302349, 30.035151, 38.649063>,  <35.240002, 29.890335, 38.468117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302349, 30.035151, 38.649063>,  <35.406261, 30.276510, 38.950638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302349, 30.035151, 38.649063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474767, 0.600060, -0.643836,
		0.840898, -0.525202, 0.130589,
		-0.259784, -0.603400, -0.753937,
		35.224415, 29.854130, 38.422882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102631, 30.187019, 39.325298>,  <35.406261, 30.276510, 38.950638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102631, 30.187019, 39.325298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494892, 30.264198, 39.338455>,  <36.730251, 30.310505, 39.346348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494892, 30.264198, 39.338455>,  <36.102631, 30.187019, 39.325298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494892, 30.264198, 39.338455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088633, -0.587578, 0.804299,
		0.174512, -0.785827, -0.593314,
		0.980658, 0.192947, 0.032889,
		36.789089, 30.322083, 39.348324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492733, 29.511202, 39.367512>,  <36.102631, 30.187019, 39.325298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492733, 29.511202, 39.367512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723869, 29.808241, 39.502949>,  <36.862553, 29.986464, 39.584209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723869, 29.808241, 39.502949>,  <36.492733, 29.511202, 39.367512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723869, 29.808241, 39.502949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131360, -0.494079, 0.859436,
		0.805506, -0.452144, -0.383049,
		0.577845, 0.742598, 0.338590,
		36.897224, 30.031021, 39.604527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153156, 29.252310, 39.640667>,  <36.492733, 29.511202, 39.367512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153156, 29.252310, 39.640667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078918, 29.609730, 39.804188>,  <37.034374, 29.824183, 39.902302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078918, 29.609730, 39.804188>,  <37.153156, 29.252310, 39.640667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078918, 29.609730, 39.804188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079411, -0.401031, 0.912616,
		0.979412, 0.201841, 0.003472,
		-0.185595, 0.893552, 0.408803,
		37.023239, 29.877796, 39.926830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629070, 29.273825, 40.182522>,  <37.153156, 29.252310, 39.640667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629070, 29.273825, 40.182522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376846, 29.551678, 40.321014>,  <37.225510, 29.718390, 40.404110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376846, 29.551678, 40.321014>,  <37.629070, 29.273825, 40.182522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376846, 29.551678, 40.321014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016093, -0.434298, 0.900625,
		0.775972, 0.573472, 0.262673,
		-0.630562, 0.694633, 0.346232,
		37.187679, 29.760067, 40.424885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843567, 29.345770, 40.858761>,  <37.629070, 29.273825, 40.182522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843567, 29.345770, 40.858761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495018, 29.541958, 40.853996>,  <37.285889, 29.659672, 40.851139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495018, 29.541958, 40.853996>,  <37.843567, 29.345770, 40.858761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495018, 29.541958, 40.853996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170601, -0.280156, 0.944674,
		0.460000, 0.825197, 0.327796,
		-0.871375, 0.490472, -0.011908,
		37.233604, 29.689100, 40.850426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788589, 29.709576, 41.544540>,  <37.843567, 29.345770, 40.858761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788589, 29.709576, 41.544540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410328, 29.687588, 41.416340>,  <37.183372, 29.674395, 41.339420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410328, 29.687588, 41.416340>,  <37.788589, 29.709576, 41.544540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410328, 29.687588, 41.416340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310890, -0.136107, 0.940650,
		-0.095330, 0.989168, 0.111620,
		-0.945653, -0.054971, -0.320497,
		37.126633, 29.671097, 41.320190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393448, 30.169537, 42.111458>,  <37.788589, 29.709576, 41.544540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393448, 30.169537, 42.111458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119816, 29.933929, 41.939365>,  <36.955639, 29.792566, 41.836109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119816, 29.933929, 41.939365>,  <37.393448, 30.169537, 42.111458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119816, 29.933929, 41.939365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217629, -0.398151, 0.891130,
		-0.696187, 0.703232, 0.144179,
		-0.684076, -0.589017, -0.430231,
		36.914593, 29.757225, 41.810295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751007, 30.268723, 42.512810>,  <37.393448, 30.169537, 42.111458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751007, 30.268723, 42.512810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691849, 29.922258, 42.321857>,  <36.656353, 29.714380, 42.207287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691849, 29.922258, 42.321857>,  <36.751007, 30.268723, 42.512810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691849, 29.922258, 42.321857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322320, -0.414123, 0.851241,
		-0.935006, 0.279763, -0.217935,
		-0.147894, -0.866161, -0.477381,
		36.647480, 29.662411, 42.178642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056904, 30.053158, 42.693272>,  <36.751007, 30.268723, 42.512810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056904, 30.053158, 42.693272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.260391, 29.724157, 42.591534>,  <36.382484, 29.526756, 42.530491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.260391, 29.724157, 42.591534>,  <36.056904, 30.053158, 42.693272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260391, 29.724157, 42.591534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331066, -0.459606, 0.824110,
		-0.794731, -0.335039, -0.506115,
		0.508722, -0.822503, -0.254343,
		36.413010, 29.477406, 42.515232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584518, 29.485201, 42.862408>,  <36.056904, 30.053158, 42.693272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584518, 29.485201, 42.862408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963867, 29.358677, 42.853107>,  <36.191475, 29.282763, 42.847527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963867, 29.358677, 42.853107>,  <35.584518, 29.485201, 42.862408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963867, 29.358677, 42.853107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149960, -0.511796, 0.845918,
		-0.279470, -0.798758, -0.532807,
		0.948372, -0.316308, -0.023250,
		36.248379, 29.263784, 42.846134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579670, 28.820868, 43.193283>,  <35.584518, 29.485201, 42.862408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579670, 28.820868, 43.193283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962471, 28.934406, 43.169357>,  <36.192150, 29.002529, 43.155003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962471, 28.934406, 43.169357>,  <35.579670, 28.820868, 43.193283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962471, 28.934406, 43.169357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182310, -0.428163, 0.885121,
		0.225629, -0.857967, -0.461501,
		0.957003, 0.283845, -0.059810,
		36.249573, 29.019560, 43.151413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964737, 28.254894, 43.475182>,  <35.579670, 28.820868, 43.193283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964737, 28.254894, 43.475182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.212509, 28.568512, 43.491077>,  <36.361172, 28.756683, 43.500614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.212509, 28.568512, 43.491077>,  <35.964737, 28.254894, 43.475182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212509, 28.568512, 43.491077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244218, -0.240559, 0.939409,
		0.746100, -0.572191, -0.340488,
		0.619428, 0.784047, 0.039741,
		36.398338, 28.803726, 43.502998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657711, 28.048737, 43.763054>,  <35.964737, 28.254894, 43.475182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657711, 28.048737, 43.763054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656601, 28.443438, 43.827930>,  <36.655933, 28.680258, 43.866856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656601, 28.443438, 43.827930>,  <36.657711, 28.048737, 43.763054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656601, 28.443438, 43.827930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341328, -0.151521, 0.927651,
		0.939940, 0.057936, -0.336386,
		-0.002775, 0.986755, 0.162196,
		36.655769, 28.739464, 43.876591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355099, 28.168530, 44.111450>,  <36.657711, 28.048737, 43.763054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355099, 28.168530, 44.111450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145741, 28.492775, 44.216496>,  <37.020126, 28.687323, 44.279522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145741, 28.492775, 44.216496>,  <37.355099, 28.168530, 44.111450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145741, 28.492775, 44.216496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366639, -0.063963, 0.928162,
		0.769177, 0.582079, -0.263724,
		-0.523395, 0.810612, 0.262611,
		36.988724, 28.735958, 44.295280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.672218, 34.218342, 45.701099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916935, 33.944500, 45.542595>,  <33.063766, 33.780193, 45.447495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916935, 33.944500, 45.542595>,  <32.672218, 34.218342, 45.701099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916935, 33.944500, 45.542595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404668, 0.701310, -0.586863,
		0.679671, 0.198686, 0.706096,
		0.611794, -0.684608, -0.396258,
		33.100471, 33.739117, 45.423717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376026, 34.525738, 45.620930>,  <32.672218, 34.218342, 45.701099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376026, 34.525738, 45.620930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415688, 34.212299, 45.375607>,  <33.439484, 34.024235, 45.228413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415688, 34.212299, 45.375607>,  <33.376026, 34.525738, 45.620930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415688, 34.212299, 45.375607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383544, 0.598818, -0.703072,
		0.918184, -0.165515, 0.359921,
		0.099158, -0.783595, -0.613307,
		33.445435, 33.977222, 45.191616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033108, 34.614723, 45.347836>,  <33.376026, 34.525738, 45.620930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033108, 34.614723, 45.347836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834183, 34.370930, 45.100864>,  <33.714828, 34.224655, 44.952682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834183, 34.370930, 45.100864>,  <34.033108, 34.614723, 45.347836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834183, 34.370930, 45.100864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171427, 0.628611, -0.758591,
		0.850470, -0.483097, -0.208132,
		-0.497307, -0.609480, -0.617430,
		33.684990, 34.188087, 44.915634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454102, 34.483925, 44.846153>,  <34.033108, 34.614723, 45.347836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454102, 34.483925, 44.846153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121555, 34.368378, 44.656254>,  <33.922028, 34.299049, 44.542313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121555, 34.368378, 44.656254>,  <34.454102, 34.483925, 44.846153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121555, 34.368378, 44.656254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435984, 0.190707, -0.879516,
		0.344605, -0.938182, -0.032604,
		-0.831364, -0.288871, -0.474751,
		33.872147, 34.281715, 44.513828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648415, 34.155525, 44.224548>,  <34.454102, 34.483925, 44.846153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648415, 34.155525, 44.224548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.280029, 34.288990, 44.144062>,  <34.058998, 34.369068, 44.095772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.280029, 34.288990, 44.144062>,  <34.648415, 34.155525, 44.224548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280029, 34.288990, 44.144062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333255, 0.406959, -0.850486,
		-0.201893, -0.850325, -0.485992,
		-0.920967, 0.333666, -0.201213,
		34.003738, 34.389091, 44.083698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484409, 33.928539, 43.564358>,  <34.648415, 34.155525, 44.224548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484409, 33.928539, 43.564358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211609, 34.216728, 43.614628>,  <34.047928, 34.389641, 43.644791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211609, 34.216728, 43.614628>,  <34.484409, 33.928539, 43.564358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211609, 34.216728, 43.614628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015998, 0.186497, -0.982325,
		-0.731178, -0.667934, -0.138717,
		-0.681999, 0.720474, 0.125677,
		34.007008, 34.432869, 43.652332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906296, 33.733616, 43.215576>,  <34.484409, 33.928539, 43.564358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906296, 33.733616, 43.215576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929478, 34.130554, 43.259193>,  <33.943386, 34.368717, 43.285366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929478, 34.130554, 43.259193>,  <33.906296, 33.733616, 43.215576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929478, 34.130554, 43.259193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030676, 0.107408, -0.993742,
		-0.997848, 0.060937, -0.024216,
		0.057955, 0.992346, 0.109046,
		33.946865, 34.428257, 43.291908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711403, 33.842808, 42.642124>,  <33.906296, 33.733616, 43.215576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711403, 33.842808, 42.642124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804859, 34.210506, 42.768867>,  <33.860935, 34.431126, 42.844913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804859, 34.210506, 42.768867>,  <33.711403, 33.842808, 42.642124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804859, 34.210506, 42.768867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191289, 0.276050, -0.941916,
		-0.953320, 0.280684, -0.111344,
		0.233644, 0.919246, 0.316856,
		33.874950, 34.486279, 42.863926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301273, 34.317574, 42.205540>,  <33.711403, 33.842808, 42.642124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301273, 34.317574, 42.205540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605255, 34.527843, 42.358452>,  <33.787643, 34.654003, 42.450199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605255, 34.527843, 42.358452>,  <33.301273, 34.317574, 42.205540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605255, 34.527843, 42.358452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322100, 0.206273, -0.923961,
		-0.564554, 0.825301, -0.012560,
		0.759955, 0.525671, 0.382281,
		33.833241, 34.685543, 42.473137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334366, 34.985504, 41.913601>,  <33.301273, 34.317574, 42.205540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334366, 34.985504, 41.913601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.713894, 34.927673, 42.025909>,  <33.941612, 34.892975, 42.093292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.713894, 34.927673, 42.025909>,  <33.334366, 34.985504, 41.913601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713894, 34.927673, 42.025909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313757, 0.330472, -0.890137,
		0.035906, 0.932677, 0.358922,
		0.948824, -0.144575, 0.280769,
		33.998543, 34.884300, 42.110142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696117, 35.436050, 41.468597>,  <33.334366, 34.985504, 41.913601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696117, 35.436050, 41.468597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978672, 35.182167, 41.593922>,  <34.148205, 35.029839, 41.669117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978672, 35.182167, 41.593922>,  <33.696117, 35.436050, 41.468597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978672, 35.182167, 41.593922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503722, 0.139804, -0.852478,
		0.497269, 0.760004, 0.418471,
		0.706390, -0.634704, 0.313310,
		34.190590, 34.991756, 41.687916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288322, 35.809433, 41.389217>,  <33.696117, 35.436050, 41.468597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288322, 35.809433, 41.389217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434185, 35.437641, 41.411438>,  <34.521702, 35.214565, 41.424770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434185, 35.437641, 41.411438>,  <34.288322, 35.809433, 41.389217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434185, 35.437641, 41.411438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515646, 0.151902, -0.843229,
		0.775327, 0.336138, 0.534676,
		0.364659, -0.929482, 0.055555,
		34.543583, 35.158798, 41.428104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030239, 35.841885, 41.190662>,  <34.288322, 35.809433, 41.389217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030239, 35.841885, 41.190662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944798, 35.453793, 41.144997>,  <34.893532, 35.220940, 41.117599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944798, 35.453793, 41.144997>,  <35.030239, 35.841885, 41.190662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944798, 35.453793, 41.144997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539635, -0.019769, -0.841667,
		0.814352, -0.241387, 0.527791,
		-0.213602, -0.970227, -0.114162,
		34.880718, 35.162724, 41.110748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745857, 35.495697, 41.148346>,  <35.030239, 35.841885, 41.190662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745857, 35.495697, 41.148346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451832, 35.280476, 40.983334>,  <35.275417, 35.151344, 40.884327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451832, 35.280476, 40.983334>,  <35.745857, 35.495697, 41.148346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451832, 35.280476, 40.983334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496756, -0.013299, -0.867788,
		0.461429, -0.842807, 0.277057,
		-0.735062, -0.538052, -0.412533,
		35.231312, 35.119061, 40.859573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043324, 34.913780, 41.305115>,  <35.745857, 35.495697, 41.148346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043324, 34.913780, 41.305115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.417507, 34.881626, 41.442787>,  <36.642017, 34.862331, 41.525391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.417507, 34.881626, 41.442787>,  <36.043324, 34.913780, 41.305115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417507, 34.881626, 41.442787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352906, -0.158603, 0.922119,
		-0.019539, -0.984064, -0.176735,
		0.935455, -0.080388, 0.344183,
		36.698143, 34.857510, 41.546043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113583, 34.308620, 41.687244>,  <36.043324, 34.913780, 41.305115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113583, 34.308620, 41.687244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421432, 34.526726, 41.820129>,  <36.606144, 34.657589, 41.899860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421432, 34.526726, 41.820129>,  <36.113583, 34.308620, 41.687244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421432, 34.526726, 41.820129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313764, -0.130177, 0.940535,
		0.556083, -0.828098, 0.070896,
		0.769626, 0.545260, 0.332217,
		36.652321, 34.690304, 41.919796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489372, 33.890785, 42.171993>,  <36.113583, 34.308620, 41.687244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489372, 33.890785, 42.171993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.587574, 34.272457, 42.240414>,  <36.646496, 34.501461, 42.281467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.587574, 34.272457, 42.240414>,  <36.489372, 33.890785, 42.171993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587574, 34.272457, 42.240414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053813, -0.162768, 0.985196,
		0.967901, -0.251074, 0.011387,
		0.245504, 0.954185, 0.171055,
		36.661224, 34.558712, 42.291729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982170, 33.767361, 42.628189>,  <36.489372, 33.890785, 42.171993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982170, 33.767361, 42.628189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843342, 34.138969, 42.679512>,  <36.760044, 34.361935, 42.710308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843342, 34.138969, 42.679512>,  <36.982170, 33.767361, 42.628189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843342, 34.138969, 42.679512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042624, -0.152299, 0.987415,
		0.936871, 0.337231, 0.092457,
		-0.347068, 0.929021, 0.128311,
		36.739220, 34.417675, 42.718006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435352, 34.036465, 43.133236>,  <36.982170, 33.767361, 42.628189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435352, 34.036465, 43.133236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.079865, 34.219814, 43.130032>,  <36.866570, 34.329826, 43.128109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.079865, 34.219814, 43.130032>,  <37.435352, 34.036465, 43.133236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079865, 34.219814, 43.130032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056372, -0.091928, 0.994169,
		0.454969, 0.883990, 0.107539,
		-0.888721, 0.458378, -0.008008,
		36.813248, 34.357327, 43.127628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501587, 34.279675, 43.808117>,  <37.435352, 34.036465, 43.133236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501587, 34.279675, 43.808117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120590, 34.356316, 43.713425>,  <36.891991, 34.402302, 43.656609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120590, 34.356316, 43.713425>,  <37.501587, 34.279675, 43.808117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120590, 34.356316, 43.713425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249228, -0.043612, 0.967462,
		0.175047, 0.980502, 0.089294,
		-0.952494, 0.191606, -0.236734,
		36.834843, 34.413795, 43.642403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247204, 34.791138, 44.193119>,  <37.501587, 34.279675, 43.808117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247204, 34.791138, 44.193119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.929146, 34.584080, 44.066761>,  <36.738312, 34.459846, 43.990948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.929146, 34.584080, 44.066761>,  <37.247204, 34.791138, 44.193119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929146, 34.584080, 44.066761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284569, -0.141497, 0.948156,
		-0.535507, 0.843813, -0.034795,
		-0.795143, -0.517646, -0.315896,
		36.690601, 34.428787, 43.971992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722797, 34.987339, 44.664150>,  <37.247204, 34.791138, 44.193119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722797, 34.987339, 44.664150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.613808, 34.637421, 44.503906>,  <36.548412, 34.427467, 44.407761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.613808, 34.637421, 44.503906>,  <36.722797, 34.987339, 44.664150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613808, 34.637421, 44.503906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296660, -0.319693, 0.899883,
		-0.915287, 0.364038, -0.172410,
		-0.272473, -0.874799, -0.400607,
		36.532066, 34.374981, 44.383724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043098, 34.865368, 44.887794>,  <36.722797, 34.987339, 44.664150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043098, 34.865368, 44.887794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.189663, 34.505398, 44.793236>,  <36.277599, 34.289417, 44.736500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.189663, 34.505398, 44.793236>,  <36.043098, 34.865368, 44.887794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189663, 34.505398, 44.793236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217721, -0.329937, 0.918553,
		-0.904623, -0.285096, -0.316824,
		0.366408, -0.899923, -0.236397,
		36.299583, 34.235420, 44.722317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602646, 34.297318, 45.213226>,  <36.043098, 34.865368, 44.887794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602646, 34.297318, 45.213226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944210, 34.097065, 45.156368>,  <36.149147, 33.976913, 45.122253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944210, 34.097065, 45.156368>,  <35.602646, 34.297318, 45.213226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944210, 34.097065, 45.156368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141179, -0.485735, 0.862630,
		-0.500911, -0.716537, -0.485451,
		0.853907, -0.500637, -0.142151,
		36.200382, 33.946877, 45.113724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483738, 33.495312, 45.307896>,  <35.602646, 34.297318, 45.213226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483738, 33.495312, 45.307896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879139, 33.527817, 45.358898>,  <36.116379, 33.547321, 45.389500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879139, 33.527817, 45.358898>,  <35.483738, 33.495312, 45.307896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879139, 33.527817, 45.358898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067311, -0.518598, 0.852364,
		0.135392, -0.851147, -0.507166,
		0.988503, 0.081266, 0.127506,
		36.175690, 33.552197, 45.397148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679363, 32.859879, 45.357815>,  <35.483738, 33.495312, 45.307896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679363, 32.859879, 45.357815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.977650, 33.064049, 45.529102>,  <36.156620, 33.186550, 45.631874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.977650, 33.064049, 45.529102>,  <35.679363, 32.859879, 45.357815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977650, 33.064049, 45.529102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086020, -0.563579, 0.821571,
		0.660688, -0.649494, -0.376362,
		0.745715, 0.510428, 0.428220,
		36.201363, 33.217178, 45.657570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172096, 32.355637, 45.656166>,  <35.679363, 32.859879, 45.357815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172096, 32.355637, 45.656166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235828, 32.700302, 45.848892>,  <36.274067, 32.907101, 45.964527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235828, 32.700302, 45.848892>,  <36.172096, 32.355637, 45.656166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235828, 32.700302, 45.848892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044866, -0.481224, 0.875449,
		0.986205, -0.161102, -0.038013,
		0.159330, 0.861667, 0.481813,
		36.283627, 32.958801, 45.993435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723061, 32.272255, 46.175735>,  <36.172096, 32.355637, 45.656166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723061, 32.272255, 46.175735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526691, 32.597240, 46.301521>,  <36.408871, 32.792233, 46.376991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526691, 32.597240, 46.301521>,  <36.723061, 32.272255, 46.175735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526691, 32.597240, 46.301521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198784, -0.455896, 0.867550,
		0.848220, 0.363392, 0.385317,
		-0.490925, 0.812468, 0.314464,
		36.379414, 32.840981, 46.395859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420845, 32.324009, 46.558956>,  <36.723061, 32.272255, 46.175735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420845, 32.324009, 46.558956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681843, 32.020901, 46.561199>,  <37.838444, 31.839035, 46.562546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681843, 32.020901, 46.561199>,  <37.420845, 32.324009, 46.558956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681843, 32.020901, 46.561199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564089, 0.480750, -0.671329,
		0.506016, 0.441205, 0.741138,
		0.652497, -0.757771, 0.005612,
		37.877590, 31.793570, 46.562881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106491, 32.555145, 46.718193>,  <37.420845, 32.324009, 46.558956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106491, 32.555145, 46.718193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.110397, 32.234287, 46.479370>,  <38.112740, 32.041775, 46.336079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.110397, 32.234287, 46.479370>,  <38.106491, 32.555145, 46.718193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110397, 32.234287, 46.479370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504417, 0.519499, -0.689699,
		0.863405, -0.294430, 0.409686,
		0.009764, -0.802142, -0.597053,
		38.113327, 31.993645, 46.300255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643612, 32.686481, 46.258381>,  <38.106491, 32.555145, 46.718193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643612, 32.686481, 46.258381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.548836, 32.338505, 46.085381>,  <38.491970, 32.129719, 45.981579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.548836, 32.338505, 46.085381>,  <38.643612, 32.686481, 46.258381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548836, 32.338505, 46.085381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463965, 0.289808, -0.837107,
		0.853577, -0.399014, 0.334954,
		-0.236945, -0.869942, -0.432502,
		38.477753, 32.077522, 45.955631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282406, 32.455513, 45.958004>,  <38.643612, 32.686481, 46.258381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282406, 32.455513, 45.958004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.999947, 32.262466, 45.750763>,  <38.830471, 32.146637, 45.626419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.999947, 32.262466, 45.750763>,  <39.282406, 32.455513, 45.958004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999947, 32.262466, 45.750763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447359, 0.263078, -0.854786,
		0.548840, -0.835384, 0.030133,
		-0.706148, -0.482621, -0.518105,
		38.788101, 32.117680, 45.595333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671539, 32.018684, 45.439789>,  <39.282406, 32.455513, 45.958004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671539, 32.018684, 45.439789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289440, 32.016666, 45.321484>,  <39.060181, 32.015453, 45.250500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289440, 32.016666, 45.321484>,  <39.671539, 32.018684, 45.439789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289440, 32.016666, 45.321484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295774, -0.002293, -0.955255,
		0.004176, -0.999984, 0.003693,
		-0.955249, -0.005082, -0.295760,
		39.002865, 32.015152, 45.232754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538483, 31.402222, 44.988159>,  <39.671539, 32.018684, 45.439789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538483, 31.402222, 44.988159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.270741, 31.688034, 44.906765>,  <39.110096, 31.859522, 44.857929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.270741, 31.688034, 44.906765>,  <39.538483, 31.402222, 44.988159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270741, 31.688034, 44.906765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284741, -0.006243, -0.958584,
		-0.686209, -0.699575, -0.199278,
		-0.669357, 0.714532, -0.203482,
		39.069935, 31.902393, 44.845722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189709, 31.160795, 44.413879>,  <39.538483, 31.402222, 44.988159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189709, 31.160795, 44.413879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137680, 31.557379, 44.410084>,  <39.106464, 31.795330, 44.407806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137680, 31.557379, 44.410084>,  <39.189709, 31.160795, 44.413879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137680, 31.557379, 44.410084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259913, 0.024857, -0.965312,
		-0.956832, -0.128023, -0.260927,
		-0.130068, 0.991460, -0.009491,
		39.098660, 31.854816, 44.407238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883839, 31.323259, 43.819073>,  <39.189709, 31.160795, 44.413879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883839, 31.323259, 43.819073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.027008, 31.685986, 43.908134>,  <39.112911, 31.903622, 43.961571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.027008, 31.685986, 43.908134>,  <38.883839, 31.323259, 43.819073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027008, 31.685986, 43.908134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394799, 0.069122, -0.916164,
		-0.846180, 0.415825, -0.333269,
		0.357928, 0.906814, 0.222657,
		39.134388, 31.958031, 43.974930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777042, 31.839901, 43.338203>,  <38.883839, 31.323259, 43.819073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777042, 31.839901, 43.338203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109985, 31.933199, 43.539314>,  <39.309750, 31.989178, 43.659981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109985, 31.933199, 43.539314>,  <38.777042, 31.839901, 43.338203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109985, 31.933199, 43.539314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487705, 0.122728, -0.864339,
		-0.263307, 0.964642, -0.011602,
		0.832354, 0.233245, 0.502776,
		39.359692, 32.003174, 43.690147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008263, 32.554260, 43.205757>,  <38.777042, 31.839901, 43.338203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008263, 32.554260, 43.205757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.316998, 32.325066, 43.315990>,  <39.502239, 32.187550, 43.382130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.316998, 32.325066, 43.315990>,  <39.008263, 32.554260, 43.205757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316998, 32.325066, 43.315990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511570, 0.302258, -0.804323,
		0.377567, 0.761793, 0.526417,
		0.771841, -0.572986, 0.275588,
		39.548550, 32.153172, 43.398666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567280, 32.923321, 43.002747>,  <39.008263, 32.554260, 43.205757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567280, 32.923321, 43.002747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.711174, 32.556965, 43.073997>,  <39.797508, 32.337151, 43.116749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.711174, 32.556965, 43.073997>,  <39.567280, 32.923321, 43.002747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711174, 32.556965, 43.073997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591708, 0.076320, -0.802531,
		0.721438, 0.394099, 0.569396,
		0.359733, -0.915894, 0.178132,
		39.819096, 32.282196, 43.127438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280510, 32.959599, 43.001499>,  <39.567280, 32.923321, 43.002747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280510, 32.959599, 43.001499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228287, 32.566994, 42.945526>,  <40.196953, 32.331429, 42.911942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228287, 32.566994, 42.945526>,  <40.280510, 32.959599, 43.001499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228287, 32.566994, 42.945526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572756, 0.040540, -0.818722,
		0.809262, -0.187038, 0.556877,
		-0.130556, -0.981516, -0.139934,
		40.189121, 32.272537, 42.903545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004116, 32.593094, 43.078327>,  <40.280510, 32.959599, 43.001499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004116, 32.593094, 43.078327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.733166, 32.403896, 42.852959>,  <40.570595, 32.290379, 42.717739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.733166, 32.403896, 42.852959>,  <41.004116, 32.593094, 43.078327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733166, 32.403896, 42.852959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664505, -0.064842, -0.744465,
		0.315592, -0.878678, 0.358227,
		-0.677374, -0.472991, -0.563422,
		40.529953, 32.261997, 42.683933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451370, 32.231308, 42.647980>,  <41.004116, 32.593094, 43.078327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451370, 32.231308, 42.647980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089527, 32.213673, 42.478394>,  <40.872421, 32.203091, 42.376640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089527, 32.213673, 42.478394>,  <41.451370, 32.231308, 42.647980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089527, 32.213673, 42.478394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425181, -0.022845, -0.904820,
		0.030212, -0.998766, 0.039413,
		-0.904604, -0.044094, -0.423966,
		40.818146, 32.200447, 42.351204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.698666, 43.514591, 33.591297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441366, 43.357952, 33.328125>,  <27.286985, 43.263969, 33.170219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441366, 43.357952, 33.328125>,  <27.698666, 43.514591, 33.591297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441366, 43.357952, 33.328125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080180, -0.820130, 0.566531,
		-0.761446, 0.417174, 0.496151,
		-0.643251, -0.391602, -0.657934,
		27.248390, 43.240471, 33.130745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127253, 43.176674, 33.985039>,  <27.698666, 43.514591, 33.591297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127253, 43.176674, 33.985039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.155277, 43.005405, 33.624649>,  <27.172092, 42.902645, 33.408413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.155277, 43.005405, 33.624649>,  <27.127253, 43.176674, 33.985039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155277, 43.005405, 33.624649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018413, -0.903599, 0.427984,
		-0.997373, -0.013396, -0.071193,
		0.070063, -0.428170, -0.900978,
		27.176296, 42.876953, 33.354355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537840, 42.719669, 33.869514>,  <27.127253, 43.176674, 33.985039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537840, 42.719669, 33.869514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826067, 42.595398, 33.621563>,  <26.999004, 42.520836, 33.472790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826067, 42.595398, 33.621563>,  <26.537840, 42.719669, 33.869514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826067, 42.595398, 33.621563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157772, -0.944013, 0.289737,
		-0.675194, -0.110976, -0.729244,
		0.720570, -0.310683, -0.619883,
		27.042238, 42.502193, 33.435596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231356, 42.217361, 33.402897>,  <26.537840, 42.719669, 33.869514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231356, 42.217361, 33.402897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.625568, 42.175781, 33.456440>,  <26.862097, 42.150833, 33.488567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.625568, 42.175781, 33.456440>,  <26.231356, 42.217361, 33.402897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625568, 42.175781, 33.456440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129397, -0.971589, 0.198169,
		0.109453, -0.212623, -0.970985,
		0.985534, -0.103952, 0.133856,
		26.921228, 42.144596, 33.496597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347458, 41.532001, 33.274559>,  <26.231356, 42.217361, 33.402897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347458, 41.532001, 33.274559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.721230, 41.597172, 33.401241>,  <26.945492, 41.636272, 33.477249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.721230, 41.597172, 33.401241>,  <26.347458, 41.532001, 33.274559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721230, 41.597172, 33.401241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024615, -0.916648, 0.398938,
		0.355302, -0.364983, -0.860551,
		0.934427, 0.162926, 0.316703,
		27.001558, 41.646049, 33.496254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700424, 40.903934, 33.130867>,  <26.347458, 41.532001, 33.274559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700424, 40.903934, 33.130867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.899990, 41.077801, 33.430771>,  <27.019730, 41.182121, 33.610714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.899990, 41.077801, 33.430771>,  <26.700424, 40.903934, 33.130867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899990, 41.077801, 33.430771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080220, -0.884576, 0.459446,
		0.862930, -0.169079, -0.476198,
		0.498916, 0.434670, 0.749763,
		27.049665, 41.208202, 33.655701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172089, 40.405289, 33.291531>,  <26.700424, 40.903934, 33.130867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172089, 40.405289, 33.291531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.201376, 40.637146, 33.616161>,  <27.218948, 40.776260, 33.810940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.201376, 40.637146, 33.616161>,  <27.172089, 40.405289, 33.291531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201376, 40.637146, 33.616161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098296, -0.813990, 0.572502,
		0.992460, 0.037856, -0.116577,
		0.073220, 0.579644, 0.811574,
		27.223341, 40.811039, 33.859634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743887, 40.153271, 33.625107>,  <27.172089, 40.405289, 33.291531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743887, 40.153271, 33.625107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518492, 40.355675, 33.886314>,  <27.383255, 40.477119, 34.043037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518492, 40.355675, 33.886314>,  <27.743887, 40.153271, 33.625107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518492, 40.355675, 33.886314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094856, -0.745603, 0.659605,
		0.820661, 0.433622, 0.372140,
		-0.563488, 0.506012, 0.653019,
		27.349445, 40.507477, 34.082222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049267, 39.957207, 34.207165>,  <27.743887, 40.153271, 33.625107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049267, 39.957207, 34.207165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673859, 40.062004, 34.297085>,  <27.448614, 40.124882, 34.351036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673859, 40.062004, 34.297085>,  <28.049267, 39.957207, 34.207165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673859, 40.062004, 34.297085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090500, -0.815136, 0.572156,
		0.333146, 0.516636, 0.788734,
		-0.938522, 0.261992, 0.224804,
		27.392302, 40.140602, 34.364525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976240, 39.793209, 34.896324>,  <28.049267, 39.957207, 34.207165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976240, 39.793209, 34.896324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.600307, 39.825363, 34.763508>,  <27.374748, 39.844654, 34.683819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.600307, 39.825363, 34.763508>,  <27.976240, 39.793209, 34.896324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600307, 39.825363, 34.763508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236995, -0.853436, 0.464199,
		-0.246061, 0.514962, 0.821138,
		-0.939834, 0.080384, -0.332041,
		27.318357, 39.849480, 34.663895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549860, 39.678226, 35.533123>,  <27.976240, 39.793209, 34.896324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549860, 39.678226, 35.533123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304276, 39.630516, 35.221012>,  <27.156925, 39.601891, 35.033745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304276, 39.630516, 35.221012>,  <27.549860, 39.678226, 35.533123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304276, 39.630516, 35.221012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332920, -0.857162, 0.392985,
		-0.715694, 0.501046, 0.486555,
		-0.613960, -0.119273, -0.780274,
		27.120087, 39.594734, 34.986931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904219, 39.550076, 35.698391>,  <27.549860, 39.678226, 35.533123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904219, 39.550076, 35.698391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.927969, 39.395760, 35.330124>,  <26.942219, 39.303169, 35.109161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.927969, 39.395760, 35.330124>,  <26.904219, 39.550076, 35.698391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927969, 39.395760, 35.330124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340624, -0.874774, 0.344595,
		-0.938323, 0.293143, -0.183349,
		0.059374, -0.385794, -0.920672,
		26.945782, 39.280022, 35.053921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526358, 38.941090, 35.784859>,  <26.904219, 39.550076, 35.698391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526358, 38.941090, 35.784859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683653, 38.856766, 35.426880>,  <26.778030, 38.806171, 35.212093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683653, 38.856766, 35.426880>,  <26.526358, 38.941090, 35.784859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683653, 38.856766, 35.426880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181798, -0.971971, 0.149070,
		-0.901284, 0.104079, -0.420540,
		0.393237, -0.210808, -0.894944,
		26.801624, 38.793522, 35.158398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056442, 38.359219, 35.525520>,  <26.526358, 38.941090, 35.784859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056442, 38.359219, 35.525520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.420544, 38.363365, 35.359951>,  <26.639004, 38.365852, 35.260609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.420544, 38.363365, 35.359951>,  <26.056442, 38.359219, 35.525520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420544, 38.363365, 35.359951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142905, -0.946127, 0.290553,
		-0.388613, -0.323628, -0.862696,
		0.910252, 0.010371, -0.413926,
		26.693619, 38.366478, 35.235775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115753, 37.836960, 35.066666>,  <26.056442, 38.359219, 35.525520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115753, 37.836960, 35.066666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508455, 37.888729, 35.122383>,  <26.744078, 37.919788, 35.155815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508455, 37.888729, 35.122383>,  <26.115753, 37.836960, 35.066666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508455, 37.888729, 35.122383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148017, -0.980047, -0.132664,
		0.119348, 0.150862, -0.981324,
		0.981757, 0.129419, 0.139297,
		26.802982, 37.927555, 35.164173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573990, 37.534233, 34.509418>,  <26.115753, 37.836960, 35.066666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573990, 37.534233, 34.509418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827028, 37.568882, 34.817268>,  <26.978851, 37.589672, 35.001976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827028, 37.568882, 34.817268>,  <26.573990, 37.534233, 34.509418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827028, 37.568882, 34.817268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273753, -0.954587, -0.117573,
		0.724487, 0.285063, -0.627581,
		0.632596, 0.086622, 0.769623,
		27.016808, 37.594868, 35.048157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174715, 37.141430, 34.270596>,  <26.573990, 37.534233, 34.509418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174715, 37.141430, 34.270596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193485, 37.163818, 34.669529>,  <27.204748, 37.177250, 34.908890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193485, 37.163818, 34.669529>,  <27.174715, 37.141430, 34.270596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193485, 37.163818, 34.669529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421635, -0.906235, 0.031018,
		0.905550, 0.419054, -0.066126,
		0.046927, 0.055969, 0.997329,
		27.207563, 37.180611, 34.968727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811455, 36.874569, 34.449253>,  <27.174715, 37.141430, 34.270596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811455, 36.874569, 34.449253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632133, 36.864502, 34.806664>,  <27.524542, 36.858463, 35.021111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632133, 36.864502, 34.806664>,  <27.811455, 36.874569, 34.449253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632133, 36.864502, 34.806664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524694, -0.816687, 0.240249,
		0.723686, 0.576532, 0.379326,
		-0.448302, -0.025165, 0.893528,
		27.497643, 36.856953, 35.074722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365164, 36.781712, 34.955189>,  <27.811455, 36.874569, 34.449253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365164, 36.781712, 34.955189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018488, 36.656799, 35.110794>,  <27.810482, 36.581852, 35.204159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018488, 36.656799, 35.110794>,  <28.365164, 36.781712, 34.955189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018488, 36.656799, 35.110794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449351, -0.827373, 0.336955,
		0.216635, 0.466839, 0.857398,
		-0.866691, -0.312276, 0.389012,
		27.758480, 36.563118, 35.227497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532324, 36.474503, 35.662777>,  <28.365164, 36.781712, 34.955189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532324, 36.474503, 35.662777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.178917, 36.346172, 35.526268>,  <27.966873, 36.269176, 35.444363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.178917, 36.346172, 35.526268>,  <28.532324, 36.474503, 35.662777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178917, 36.346172, 35.526268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275446, -0.945173, 0.175437,
		-0.378847, 0.060999, 0.923447,
		-0.883518, -0.320824, -0.341274,
		27.913862, 36.249924, 35.423885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264902, 36.481888, 35.456905>,  <28.532324, 36.474503, 35.662777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264902, 36.481888, 35.456905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.651031, 36.412567, 35.378807>,  <29.882710, 36.370975, 35.331947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.651031, 36.412567, 35.378807>,  <29.264902, 36.481888, 35.456905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651031, 36.412567, 35.378807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013699, 0.713231, -0.700795,
		0.260698, 0.679168, 0.686124,
		0.965323, -0.173297, -0.195242,
		29.940628, 36.360577, 35.320236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548201, 37.179127, 35.374138>,  <29.264902, 36.481888, 35.456905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548201, 37.179127, 35.374138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.800003, 36.911499, 35.216114>,  <29.951084, 36.750923, 35.121300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.800003, 36.911499, 35.216114>,  <29.548201, 37.179127, 35.374138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800003, 36.911499, 35.216114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010975, 0.500734, -0.865532,
		0.776918, 0.549193, 0.307872,
		0.629506, -0.669068, -0.395056,
		29.988855, 36.710777, 35.097595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144758, 37.578274, 35.070930>,  <29.548201, 37.179127, 35.374138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144758, 37.578274, 35.070930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.112675, 37.218075, 34.899967>,  <30.093426, 37.001957, 34.797390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.112675, 37.218075, 34.899967>,  <30.144758, 37.578274, 35.070930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112675, 37.218075, 34.899967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022567, 0.430316, -0.902396,
		0.996523, -0.062734, -0.054836,
		-0.080207, -0.900496, -0.427404,
		30.088612, 36.947926, 34.771748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648779, 37.704792, 34.496758>,  <30.144758, 37.578274, 35.070930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648779, 37.704792, 34.496758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392494, 37.404289, 34.433372>,  <30.238724, 37.223988, 34.395344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392494, 37.404289, 34.433372>,  <30.648779, 37.704792, 34.496758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392494, 37.404289, 34.433372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264407, 0.409657, -0.873081,
		0.720819, -0.517493, -0.461108,
		-0.640709, -0.751253, -0.158460,
		30.200281, 37.178913, 34.385834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717955, 37.668049, 33.796379>,  <30.648779, 37.704792, 34.496758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717955, 37.668049, 33.796379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.363951, 37.504463, 33.885384>,  <30.151548, 37.406311, 33.938786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.363951, 37.504463, 33.885384>,  <30.717955, 37.668049, 33.796379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363951, 37.504463, 33.885384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400300, 0.424354, -0.812209,
		0.237739, -0.807883, -0.539264,
		-0.885008, -0.408961, 0.222510,
		30.098448, 37.381775, 33.952137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536591, 37.330177, 33.173889>,  <30.717955, 37.668049, 33.796379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536591, 37.330177, 33.173889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212084, 37.396519, 33.398155>,  <30.017380, 37.436325, 33.532715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212084, 37.396519, 33.398155>,  <30.536591, 37.330177, 33.173889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212084, 37.396519, 33.398155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436389, 0.466429, -0.769421,
		-0.389120, -0.868871, -0.306021,
		-0.811265, 0.165853, 0.560663,
		29.968704, 37.446274, 33.566353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026037, 37.339981, 32.677246>,  <30.536591, 37.330177, 33.173889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026037, 37.339981, 32.677246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852245, 37.521904, 32.988213>,  <29.747971, 37.631058, 33.174793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852245, 37.521904, 32.988213>,  <30.026037, 37.339981, 32.677246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852245, 37.521904, 32.988213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364355, 0.700613, -0.613504,
		-0.823695, -0.549811, -0.138691,
		-0.434480, 0.454807, 0.777417,
		29.721901, 37.658344, 33.221439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344427, 37.369785, 32.611519>,  <30.026037, 37.339981, 32.677246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344427, 37.369785, 32.611519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404779, 37.662167, 32.877731>,  <29.440990, 37.837597, 33.037460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404779, 37.662167, 32.877731>,  <29.344427, 37.369785, 32.611519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404779, 37.662167, 32.877731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497225, 0.637995, -0.587988,
		-0.854402, -0.242205, 0.459710,
		0.150879, 0.730957, 0.665535,
		29.450043, 37.881454, 33.077393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681000, 37.656075, 32.723610>,  <29.344427, 37.369785, 32.611519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681000, 37.656075, 32.723610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951130, 37.931107, 32.830315>,  <29.113209, 38.096127, 32.894337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951130, 37.931107, 32.830315>,  <28.681000, 37.656075, 32.723610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951130, 37.931107, 32.830315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533959, 0.705333, -0.466254,
		-0.508746, 0.172433, 0.843472,
		0.675326, 0.687584, 0.266763,
		29.153728, 38.137383, 32.910343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271048, 38.139885, 32.923615>,  <28.681000, 37.656075, 32.723610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271048, 38.139885, 32.923615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615156, 38.338741, 32.878391>,  <28.821621, 38.458057, 32.851257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615156, 38.338741, 32.878391>,  <28.271048, 38.139885, 32.923615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615156, 38.338741, 32.878391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487572, 0.737397, -0.467461,
		-0.149027, 0.457267, 0.876754,
		0.860270, 0.497145, -0.113058,
		28.873238, 38.487885, 32.844475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056370, 38.810204, 32.950680>,  <28.271048, 38.139885, 32.923615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056370, 38.810204, 32.950680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428295, 38.881565, 32.821918>,  <28.651449, 38.924381, 32.744663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428295, 38.881565, 32.821918>,  <28.056370, 38.810204, 32.950680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428295, 38.881565, 32.821918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321888, 0.818265, -0.476267,
		0.178432, 0.546456, 0.818259,
		0.929812, 0.178407, -0.321902,
		28.707239, 38.935085, 32.725349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278961, 39.536358, 33.035236>,  <28.056370, 38.810204, 32.950680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278961, 39.536358, 33.035236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553093, 39.442394, 32.759514>,  <28.717573, 39.386017, 32.594082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553093, 39.442394, 32.759514>,  <28.278961, 39.536358, 33.035236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553093, 39.442394, 32.759514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233709, 0.825531, -0.513692,
		0.689711, 0.513146, 0.510862,
		0.685331, -0.234906, -0.689305,
		28.758692, 39.371922, 32.552723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695942, 40.140106, 32.936367>,  <28.278961, 39.536358, 33.035236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695942, 40.140106, 32.936367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748114, 39.922836, 32.604595>,  <28.779417, 39.792473, 32.405533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748114, 39.922836, 32.604595>,  <28.695942, 40.140106, 32.936367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748114, 39.922836, 32.604595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204101, 0.803943, -0.558585,
		0.970222, 0.242144, -0.006003,
		0.130432, -0.543177, -0.829425,
		28.787243, 39.759884, 32.355766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183708, 40.526691, 32.347183>,  <28.695942, 40.140106, 32.936367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183708, 40.526691, 32.347183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970690, 40.239422, 32.168022>,  <28.842878, 40.067059, 32.060528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970690, 40.239422, 32.168022>,  <29.183708, 40.526691, 32.347183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970690, 40.239422, 32.168022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289276, 0.651755, -0.701096,
		0.795433, -0.243799, -0.554841,
		-0.532546, -0.718177, -0.447902,
		28.810925, 40.023968, 32.033653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154844, 40.750568, 31.657221>,  <29.183708, 40.526691, 32.347183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154844, 40.750568, 31.657221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884466, 40.455959, 31.647148>,  <28.722239, 40.279194, 31.641104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884466, 40.455959, 31.647148>,  <29.154844, 40.750568, 31.657221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884466, 40.455959, 31.647148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516709, 0.498022, -0.696409,
		0.525464, -0.457720, -0.717203,
		-0.675943, -0.736523, -0.025185,
		28.681683, 40.235004, 31.639593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039099, 40.549828, 30.972122>,  <29.154844, 40.750568, 31.657221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039099, 40.549828, 30.972122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714523, 40.458134, 31.187164>,  <28.519779, 40.403118, 31.316191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714523, 40.458134, 31.187164>,  <29.039099, 40.549828, 30.972122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714523, 40.458134, 31.187164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583602, 0.367019, -0.724366,
		-0.031263, -0.901526, -0.431594,
		-0.811437, -0.229233, 0.537607,
		28.471092, 40.389362, 31.348446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529078, 40.356586, 30.419741>,  <29.039099, 40.549828, 30.972122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529078, 40.356586, 30.419741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.330786, 40.479877, 30.744516>,  <28.211811, 40.553852, 30.939383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.330786, 40.479877, 30.744516>,  <28.529078, 40.356586, 30.419741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330786, 40.479877, 30.744516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682843, 0.439346, -0.583695,
		-0.536635, -0.843782, -0.007324,
		-0.495730, 0.308230, 0.811940,
		28.182068, 40.572346, 30.988098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871735, 40.427639, 30.226299>,  <28.529078, 40.356586, 30.419741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871735, 40.427639, 30.226299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838263, 40.617645, 30.576694>,  <27.818178, 40.731651, 30.786932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838263, 40.617645, 30.576694>,  <27.871735, 40.427639, 30.226299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838263, 40.617645, 30.576694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724066, 0.574977, -0.380959,
		-0.684636, -0.666152, 0.295830,
		-0.083681, 0.475019, 0.875988,
		27.813158, 40.760151, 30.839491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252880, 40.357738, 30.401419>,  <27.871735, 40.427639, 30.226299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252880, 40.357738, 30.401419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380835, 40.672226, 30.612902>,  <27.457607, 40.860920, 30.739792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380835, 40.672226, 30.612902>,  <27.252880, 40.357738, 30.401419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380835, 40.672226, 30.612902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758630, 0.546839, -0.354186,
		-0.567585, -0.287792, 0.771378,
		0.319887, 0.786221, 0.528705,
		27.476801, 40.908092, 30.771513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672131, 40.589108, 30.831076>,  <27.252880, 40.357738, 30.401419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672131, 40.589108, 30.831076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938995, 40.883545, 30.785349>,  <27.099113, 41.060207, 30.757914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938995, 40.883545, 30.785349>,  <26.672131, 40.589108, 30.831076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938995, 40.883545, 30.785349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735812, 0.627285, -0.255136,
		-0.116094, 0.254331, 0.960124,
		0.667160, 0.736090, -0.114316,
		27.139143, 41.104370, 30.751055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544895, 41.146244, 31.388834>,  <26.672131, 40.589108, 30.831076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544895, 41.146244, 31.388834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.654699, 41.251499, 31.018883>,  <26.720583, 41.314651, 30.796911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.654699, 41.251499, 31.018883>,  <26.544895, 41.146244, 31.388834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654699, 41.251499, 31.018883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774361, 0.630735, -0.050388,
		0.570095, 0.730023, 0.376906,
		0.274512, 0.263136, -0.924880,
		26.737053, 41.330441, 30.741419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741734, 41.866489, 31.299910>,  <26.544895, 41.146244, 31.388834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741734, 41.866489, 31.299910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.561390, 41.708042, 30.979956>,  <26.453184, 41.612972, 30.787983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.561390, 41.708042, 30.979956>,  <26.741734, 41.866489, 31.299910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561390, 41.708042, 30.979956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636723, 0.770755, -0.022800,
		0.625548, 0.499026, -0.599719,
		-0.450859, -0.396118, -0.799886,
		26.426132, 41.589207, 30.739990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.954063, 28.880953, 44.496754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564884, 28.917320, 44.581707>,  <37.331375, 28.939140, 44.632679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564884, 28.917320, 44.581707>,  <37.954063, 28.880953, 44.496754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564884, 28.917320, 44.581707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182124, -0.263736, 0.947246,
		0.142135, 0.960301, 0.240043,
		-0.972948, 0.090919, 0.212380,
		37.272999, 28.944595, 44.645420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948353, 29.207119, 45.125515>,  <37.954063, 28.880953, 44.496754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948353, 29.207119, 45.125515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575893, 29.061817, 45.112843>,  <37.352417, 28.974636, 45.105240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575893, 29.061817, 45.112843>,  <37.948353, 29.207119, 45.125515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575893, 29.061817, 45.112843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024556, -0.024221, 0.999405,
		-0.363804, 0.931376, 0.013633,
		-0.931152, -0.363253, -0.031683,
		37.296547, 28.952841, 45.103336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544914, 29.670689, 45.603455>,  <37.948353, 29.207119, 45.125515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544914, 29.670689, 45.603455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341526, 29.327953, 45.569309>,  <37.219494, 29.122313, 45.548820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341526, 29.327953, 45.569309>,  <37.544914, 29.670689, 45.603455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341526, 29.327953, 45.569309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181533, 0.009760, 0.983336,
		-0.841727, 0.515494, -0.160507,
		-0.508470, -0.856838, -0.085364,
		37.188984, 29.070902, 45.543701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998959, 29.751652, 46.022076>,  <37.544914, 29.670689, 45.603455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998959, 29.751652, 46.022076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027363, 29.356380, 45.967731>,  <37.044407, 29.119217, 45.935127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027363, 29.356380, 45.967731>,  <36.998959, 29.751652, 46.022076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027363, 29.356380, 45.967731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070625, -0.140839, 0.987510,
		-0.994972, -0.060529, -0.079792,
		0.071011, -0.988181, -0.135856,
		37.048668, 29.059927, 45.926975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532963, 29.430662, 46.562435>,  <36.998959, 29.751652, 46.022076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532963, 29.430662, 46.562435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786690, 29.138201, 46.461990>,  <36.938927, 28.962725, 46.401726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786690, 29.138201, 46.461990>,  <36.532963, 29.430662, 46.562435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786690, 29.138201, 46.461990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042746, -0.357496, 0.932936,
		-0.771889, -0.581045, -0.258021,
		0.634319, -0.731152, -0.251110,
		36.976986, 28.918856, 46.386658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221104, 28.802904, 46.764427>,  <36.532963, 29.430662, 46.562435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221104, 28.802904, 46.764427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612247, 28.721785, 46.743774>,  <36.846935, 28.673113, 46.731384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612247, 28.721785, 46.743774>,  <36.221104, 28.802904, 46.764427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612247, 28.721785, 46.743774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076141, -0.574602, 0.814884,
		-0.194922, -0.792910, -0.577321,
		0.977859, -0.202796, -0.051630,
		36.905605, 28.660946, 46.728287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181828, 28.099285, 46.819500>,  <36.221104, 28.802904, 46.764427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181828, 28.099285, 46.819500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561016, 28.197531, 46.900524>,  <36.788528, 28.256479, 46.949139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561016, 28.197531, 46.900524>,  <36.181828, 28.099285, 46.819500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561016, 28.197531, 46.900524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006990, -0.620043, 0.784537,
		0.318293, -0.745131, -0.586063,
		0.947967, 0.245616, 0.202564,
		36.845406, 28.271215, 46.961292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555798, 27.434858, 46.960766>,  <36.181828, 28.099285, 46.819500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555798, 27.434858, 46.960766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761600, 27.730608, 47.134483>,  <36.885082, 27.908058, 47.238712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761600, 27.730608, 47.134483>,  <36.555798, 27.434858, 46.960766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761600, 27.730608, 47.134483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083841, -0.460666, 0.883605,
		0.853376, -0.491034, -0.175027,
		0.514509, 0.739373, 0.434290,
		36.915955, 27.952419, 47.264771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090790, 27.119780, 47.411888>,  <36.555798, 27.434858, 46.960766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090790, 27.119780, 47.411888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057724, 27.493607, 47.550308>,  <37.037884, 27.717903, 47.633362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057724, 27.493607, 47.550308>,  <37.090790, 27.119780, 47.411888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057724, 27.493607, 47.550308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043726, -0.343508, 0.938131,
		0.995617, 0.092684, -0.012468,
		-0.082667, 0.934565, 0.346055,
		37.032925, 27.773975, 47.654125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612415, 27.133015, 47.953026>,  <37.090790, 27.119780, 47.411888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612415, 27.133015, 47.953026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339375, 27.420382, 48.006603>,  <37.175552, 27.592800, 48.038750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339375, 27.420382, 48.006603>,  <37.612415, 27.133015, 47.953026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339375, 27.420382, 48.006603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189447, -0.350973, 0.917021,
		0.705812, 0.600582, 0.375675,
		-0.682598, 0.718415, 0.133942,
		37.134594, 27.635906, 48.046787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727139, 27.374289, 48.577129>,  <37.612415, 27.133015, 47.953026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727139, 27.374289, 48.577129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355503, 27.503420, 48.504936>,  <37.132523, 27.580898, 48.461620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355503, 27.503420, 48.504936>,  <37.727139, 27.374289, 48.577129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355503, 27.503420, 48.504936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261969, -0.229928, 0.937286,
		0.261085, 0.918104, 0.298194,
		-0.929089, 0.322829, -0.180484,
		37.076775, 27.600269, 48.450790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604588, 27.819361, 49.074707>,  <37.727139, 27.374289, 48.577129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604588, 27.819361, 49.074707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261288, 27.662983, 48.941704>,  <37.055305, 27.569157, 48.861900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261288, 27.662983, 48.941704>,  <37.604588, 27.819361, 49.074707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261288, 27.662983, 48.941704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156816, -0.417142, 0.895210,
		-0.488683, 0.820459, 0.296707,
		-0.858252, -0.390946, -0.332511,
		37.003811, 27.545700, 48.841949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134983, 27.955772, 49.615658>,  <37.604588, 27.819361, 49.074707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134983, 27.955772, 49.615658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009792, 27.647024, 49.394295>,  <36.934677, 27.461775, 49.261475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009792, 27.647024, 49.394295>,  <37.134983, 27.955772, 49.615658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009792, 27.647024, 49.394295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246663, -0.496630, 0.832175,
		-0.917172, 0.396956, -0.034959,
		-0.312975, -0.771871, -0.553409,
		36.915901, 27.415462, 49.228271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472542, 27.586992, 49.868534>,  <37.134983, 27.955772, 49.615658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472542, 27.586992, 49.868534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684460, 27.312840, 49.668705>,  <36.811611, 27.148348, 49.548809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684460, 27.312840, 49.668705>,  <36.472542, 27.586992, 49.868534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684460, 27.312840, 49.668705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037734, -0.607491, 0.793430,
		-0.847288, -0.401502, -0.347706,
		0.529792, -0.685384, -0.499569,
		36.843399, 27.107224, 49.518833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636997, 28.017740, 50.487808>,  <36.472542, 27.586992, 49.868534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636997, 28.017740, 50.487808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514072, 28.305798, 50.736629>,  <36.440315, 28.478632, 50.885921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514072, 28.305798, 50.736629>,  <36.636997, 28.017740, 50.487808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514072, 28.305798, 50.736629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306433, 0.693760, -0.651764,
		-0.900920, -0.009679, -0.433878,
		-0.307316, 0.720142, 0.622056,
		36.421879, 28.521839, 50.923244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107201, 28.348619, 50.135918>,  <36.636997, 28.017740, 50.487808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107201, 28.348619, 50.135918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238384, 28.611628, 50.407246>,  <36.317093, 28.769432, 50.570042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238384, 28.611628, 50.407246>,  <36.107201, 28.348619, 50.135918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238384, 28.611628, 50.407246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161000, 0.668621, -0.725965,
		-0.930873, 0.347292, 0.113417,
		0.327955, 0.657521, 0.678315,
		36.336769, 28.808884, 50.610741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816162, 28.971012, 49.922607>,  <36.107201, 28.348619, 50.135918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816162, 28.971012, 49.922607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146763, 29.036257, 50.138123>,  <36.345123, 29.075403, 50.267433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146763, 29.036257, 50.138123>,  <35.816162, 28.971012, 49.922607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146763, 29.036257, 50.138123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365152, 0.573098, -0.733637,
		-0.428442, 0.803090, 0.414105,
		0.826500, 0.163110, 0.538789,
		36.394714, 29.085190, 50.299759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908062, 29.667143, 49.882858>,  <35.816162, 28.971012, 49.922607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908062, 29.667143, 49.882858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274559, 29.564569, 50.005978>,  <36.494457, 29.503025, 50.079849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274559, 29.564569, 50.005978>,  <35.908062, 29.667143, 49.882858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274559, 29.564569, 50.005978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389790, 0.748058, -0.537097,
		-0.092522, 0.612088, 0.785358,
		0.916244, -0.256432, 0.307797,
		36.549431, 29.487640, 50.098316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244854, 30.240795, 50.119530>,  <35.908062, 29.667143, 49.882858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244854, 30.240795, 50.119530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556194, 30.000435, 50.046776>,  <36.743000, 29.856218, 50.003124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556194, 30.000435, 50.046776>,  <36.244854, 30.240795, 50.119530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556194, 30.000435, 50.046776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461426, 0.743976, -0.483308,
		0.425736, 0.292260, 0.856349,
		0.778354, -0.600903, -0.181880,
		36.789700, 29.820164, 49.992210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880566, 30.671721, 50.192337>,  <36.244854, 30.240795, 50.119530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880566, 30.671721, 50.192337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998077, 30.378788, 49.946613>,  <37.068584, 30.203028, 49.799179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998077, 30.378788, 49.946613>,  <36.880566, 30.671721, 50.192337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998077, 30.378788, 49.946613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400725, 0.677831, -0.616413,
		0.867819, -0.065078, 0.492599,
		0.293784, -0.732332, -0.614313,
		37.086212, 30.159088, 49.762318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563709, 30.910299, 49.921307>,  <36.880566, 30.671721, 50.192337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563709, 30.910299, 49.921307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438267, 30.628111, 49.667072>,  <37.363003, 30.458797, 49.514534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438267, 30.628111, 49.667072>,  <37.563709, 30.910299, 49.921307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438267, 30.628111, 49.667072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445232, 0.481961, -0.754641,
		0.838702, -0.519639, 0.162953,
		-0.313604, -0.705471, -0.635581,
		37.344185, 30.416470, 49.476398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114567, 30.765732, 49.564842>,  <37.563709, 30.910299, 49.921307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114567, 30.765732, 49.564842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.849827, 30.584694, 49.325809>,  <37.690983, 30.476072, 49.182388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.849827, 30.584694, 49.325809>,  <38.114567, 30.765732, 49.564842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849827, 30.584694, 49.325809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417795, 0.439174, -0.795345,
		0.622413, -0.776070, -0.101577,
		-0.661853, -0.452594, -0.597586,
		37.651272, 30.448915, 49.146534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459877, 30.375034, 48.945770>,  <38.114567, 30.765732, 49.564842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459877, 30.375034, 48.945770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085556, 30.452349, 48.827839>,  <37.860966, 30.498737, 48.757080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085556, 30.452349, 48.827839>,  <38.459877, 30.375034, 48.945770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085556, 30.452349, 48.827839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352277, 0.480573, -0.803088,
		-0.013542, -0.855389, -0.517810,
		-0.935798, 0.193288, -0.294826,
		37.804817, 30.510336, 48.739391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330338, 29.987051, 48.258865>,  <38.459877, 30.375034, 48.945770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330338, 29.987051, 48.258865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.065025, 30.285683, 48.279560>,  <37.905838, 30.464861, 48.291977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.065025, 30.285683, 48.279560>,  <38.330338, 29.987051, 48.258865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065025, 30.285683, 48.279560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218454, 0.259281, -0.940772,
		-0.715775, -0.612695, -0.335070,
		-0.663283, 0.746578, 0.051742,
		37.866039, 30.509655, 48.295082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940910, 29.941614, 47.645813>,  <38.330338, 29.987051, 48.258865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940910, 29.941614, 47.645813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836838, 30.302412, 47.783630>,  <37.774395, 30.518890, 47.866322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836838, 30.302412, 47.783630>,  <37.940910, 29.941614, 47.645813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836838, 30.302412, 47.783630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003457, 0.355961, -0.934494,
		-0.965554, -0.244327, -0.089495,
		-0.260179, 0.901996, 0.344545,
		37.758785, 30.573011, 47.886993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388924, 30.180586, 47.220737>,  <37.940910, 29.941614, 47.645813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388924, 30.180586, 47.220737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552227, 30.511457, 47.375191>,  <37.650211, 30.709980, 47.467861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552227, 30.511457, 47.375191>,  <37.388924, 30.180586, 47.220737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552227, 30.511457, 47.375191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110134, 0.464527, -0.878684,
		-0.906198, 0.316206, 0.280749,
		0.408260, 0.827181, 0.386128,
		37.674706, 30.759611, 47.491028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119915, 30.640778, 46.780025>,  <37.388924, 30.180586, 47.220737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119915, 30.640778, 46.780025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390629, 30.865620, 46.970184>,  <37.553055, 31.000525, 47.084282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390629, 30.865620, 46.970184>,  <37.119915, 30.640778, 46.780025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390629, 30.865620, 46.970184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010591, 0.638262, -0.769746,
		-0.736109, 0.525984, 0.426010,
		0.676780, 0.562105, 0.475401,
		37.593662, 31.034252, 47.112804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932018, 31.395897, 46.692860>,  <37.119915, 30.640778, 46.780025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932018, 31.395897, 46.692860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.322853, 31.380617, 46.776619>,  <37.557354, 31.371449, 46.826874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.322853, 31.380617, 46.776619>,  <36.932018, 31.395897, 46.692860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322853, 31.380617, 46.776619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190406, 0.596584, -0.779637,
		-0.095142, 0.801641, 0.590186,
		0.977084, -0.038199, 0.209398,
		37.615978, 31.369158, 46.839439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742573, 32.185951, 46.977386>,  <36.932018, 31.395897, 46.692860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742573, 32.185951, 46.977386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478863, 32.479393, 46.911430>,  <36.320637, 32.655457, 46.871857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478863, 32.479393, 46.911430>,  <36.742573, 32.185951, 46.977386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478863, 32.479393, 46.911430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529901, -0.297734, 0.794078,
		0.533444, 0.610888, 0.585024,
		-0.659274, 0.733601, -0.164886,
		36.281082, 32.699474, 46.861965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595112, 32.472942, 47.539890>,  <36.742573, 32.185951, 46.977386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595112, 32.472942, 47.539890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269863, 32.584812, 47.335690>,  <36.074715, 32.651932, 47.213169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269863, 32.584812, 47.335690>,  <36.595112, 32.472942, 47.539890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269863, 32.584812, 47.335690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581812, -0.417542, 0.697964,
		-0.017955, 0.864547, 0.502230,
		-0.813125, 0.279672, -0.510501,
		36.025925, 32.668713, 47.182541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231377, 32.955261, 48.080135>,  <36.595112, 32.472942, 47.539890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231377, 32.955261, 48.080135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986568, 32.803860, 47.802380>,  <35.839684, 32.713020, 47.635727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986568, 32.803860, 47.802380>,  <36.231377, 32.955261, 48.080135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986568, 32.803860, 47.802380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583607, -0.376381, 0.719542,
		-0.533699, 0.845622, 0.009457,
		-0.612019, -0.378500, -0.694385,
		35.802963, 32.690311, 47.594063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548771, 33.022213, 48.347961>,  <36.231377, 32.955261, 48.080135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548771, 33.022213, 48.347961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487583, 32.743423, 48.067722>,  <35.450871, 32.576149, 47.899578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487583, 32.743423, 48.067722>,  <35.548771, 33.022213, 48.347961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487583, 32.743423, 48.067722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610960, -0.490523, 0.621382,
		-0.776743, 0.523085, -0.350789,
		-0.152965, -0.696972, -0.700594,
		35.441692, 32.534332, 47.857544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842648, 32.898510, 48.436516>,  <35.548771, 33.022213, 48.347961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842648, 32.898510, 48.436516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978542, 32.574703, 48.244991>,  <35.060078, 32.380417, 48.130077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978542, 32.574703, 48.244991>,  <34.842648, 32.898510, 48.436516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978542, 32.574703, 48.244991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524429, -0.585650, 0.618052,
		-0.780739, 0.041126, -0.623503,
		0.339737, -0.809520, -0.478807,
		35.080463, 32.331848, 48.101349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324989, 32.466961, 48.351833>,  <34.842648, 32.898510, 48.436516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324989, 32.466961, 48.351833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606716, 32.193211, 48.276394>,  <34.775753, 32.028961, 48.231129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606716, 32.193211, 48.276394>,  <34.324989, 32.466961, 48.351833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606716, 32.193211, 48.276394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336900, -0.556091, 0.759777,
		-0.624855, -0.471580, -0.622228,
		0.704311, -0.684379, -0.188601,
		34.818008, 31.987898, 48.219814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958755, 31.853691, 48.243179>,  <34.324989, 32.466961, 48.351833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958755, 31.853691, 48.243179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322472, 31.749212, 48.372768>,  <34.540703, 31.686525, 48.450523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322472, 31.749212, 48.372768>,  <33.958755, 31.853691, 48.243179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322472, 31.749212, 48.372768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415043, -0.512277, 0.751872,
		-0.030422, -0.818136, -0.574219,
		0.909293, -0.261199, 0.323977,
		34.595261, 31.670853, 48.469963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595196, 31.702202, 47.588547>,  <33.958755, 31.853691, 48.243179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595196, 31.702202, 47.588547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236843, 31.579456, 47.460026>,  <33.021832, 31.505810, 47.382912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236843, 31.579456, 47.460026>,  <33.595196, 31.702202, 47.588547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236843, 31.579456, 47.460026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153343, 0.465181, -0.871833,
		0.416996, -0.830327, -0.369692,
		-0.895880, -0.306861, -0.321303,
		32.968079, 31.487396, 47.363636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748589, 31.466743, 46.854252>,  <33.595196, 31.702202, 47.588547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748589, 31.466743, 46.854252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377472, 31.600319, 46.920803>,  <33.154800, 31.680464, 46.960735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377472, 31.600319, 46.920803>,  <33.748589, 31.466743, 46.854252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377472, 31.600319, 46.920803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069579, 0.592996, -0.802193,
		-0.366545, -0.732694, -0.573414,
		-0.927795, 0.333937, 0.166380,
		33.099133, 31.700500, 46.970718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452068, 31.593557, 46.210003>,  <33.748589, 31.466743, 46.854252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452068, 31.593557, 46.210003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192310, 31.806852, 46.426868>,  <33.036457, 31.934830, 46.556988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192310, 31.806852, 46.426868>,  <33.452068, 31.593557, 46.210003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192310, 31.806852, 46.426868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043312, 0.737731, -0.673704,
		-0.759219, -0.414016, -0.502173,
		-0.649393, 0.533239, 0.542167,
		32.997494, 31.966824, 46.589520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953884, 31.759903, 45.741100>,  <33.452068, 31.593557, 46.210003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953884, 31.759903, 45.741100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938690, 32.022305, 46.042622>,  <32.929573, 32.179745, 46.223534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938690, 32.022305, 46.042622>,  <32.953884, 31.759903, 45.741100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938690, 32.022305, 46.042622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006029, 0.754481, -0.656294,
		-0.999260, -0.020387, -0.032616,
		-0.037988, 0.656006, 0.753800,
		32.927296, 32.219105, 46.268761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525734, 32.291885, 45.432770>,  <32.953884, 31.759903, 45.741100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525734, 32.291885, 45.432770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695988, 32.483582, 45.739799>,  <32.798141, 32.598598, 45.924015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695988, 32.483582, 45.739799>,  <32.525734, 32.291885, 45.432770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695988, 32.483582, 45.739799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016661, 0.843949, -0.536165,
		-0.904740, 0.241000, 0.351232,
		0.425637, 0.479239, 0.767570,
		32.823677, 32.627354, 45.970070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156609, 32.953442, 45.484051>,  <32.525734, 32.291885, 45.432770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156609, 32.953442, 45.484051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517155, 32.992729, 45.652756>,  <32.733482, 33.016304, 45.753979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517155, 32.992729, 45.652756>,  <32.156609, 32.953442, 45.484051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517155, 32.992729, 45.652756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204576, 0.761829, -0.614627,
		-0.381683, 0.640288, 0.666595,
		0.901369, 0.098223, 0.421765,
		32.787567, 33.022198, 45.779285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271824, 33.630749, 45.540203>,  <32.156609, 32.953442, 45.484051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271824, 33.630749, 45.540203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639153, 33.472580, 45.547523>,  <32.859550, 33.377678, 45.551914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639153, 33.472580, 45.547523>,  <32.271824, 33.630749, 45.540203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639153, 33.472580, 45.547523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342647, 0.770906, -0.536932,
		0.198209, 0.499344, 0.843427,
		0.918317, -0.395422, 0.018298,
		32.914646, 33.353954, 45.553013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.786072, 26.276037, 47.402325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.102356, 26.514067, 47.459831>,  <34.292126, 26.656883, 47.494335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.102356, 26.514067, 47.459831>,  <33.786072, 26.276037, 47.402325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102356, 26.514067, 47.459831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313333, 0.595130, -0.740029,
		-0.525930, 0.540101, 0.657031,
		0.790709, 0.595072, 0.143765,
		34.339569, 26.692589, 47.502960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478867, 26.949593, 47.352558>,  <33.786072, 26.276037, 47.402325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478867, 26.949593, 47.352558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872837, 26.978294, 47.289604>,  <34.109219, 26.995516, 47.251831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872837, 26.978294, 47.289604>,  <33.478867, 26.949593, 47.352558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872837, 26.978294, 47.289604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169307, 0.586174, -0.792297,
		0.035405, 0.807002, 0.589487,
		0.984927, 0.071753, -0.157385,
		34.168316, 26.999821, 47.242390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528286, 27.640263, 47.027737>,  <33.478867, 26.949593, 47.352558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528286, 27.640263, 47.027737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863350, 27.438835, 46.943130>,  <34.064388, 27.317978, 46.892365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863350, 27.438835, 46.943130>,  <33.528286, 27.640263, 47.027737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863350, 27.438835, 46.943130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074937, 0.489560, -0.868743,
		0.541024, 0.711862, 0.447822,
		0.837662, -0.503570, -0.211519,
		34.114647, 27.287764, 46.879673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008591, 28.088034, 46.706718>,  <33.528286, 27.640263, 47.027737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008591, 28.088034, 46.706718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.181789, 27.743156, 46.601547>,  <34.285709, 27.536230, 46.538445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.181789, 27.743156, 46.601547>,  <34.008591, 28.088034, 46.706718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181789, 27.743156, 46.601547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212776, 0.381216, -0.899667,
		0.875921, 0.333609, 0.348521,
		0.432999, -0.862194, -0.262931,
		34.311687, 27.484499, 46.522667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668304, 28.234455, 46.428791>,  <34.008591, 28.088034, 46.706718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668304, 28.234455, 46.428791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558929, 27.883739, 46.270565>,  <34.493305, 27.673309, 46.175629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558929, 27.883739, 46.270565>,  <34.668304, 28.234455, 46.428791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558929, 27.883739, 46.270565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209596, 0.347046, -0.914127,
		0.938776, -0.332867, 0.088875,
		-0.273439, -0.876789, -0.395566,
		34.476898, 27.620703, 46.151894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210678, 28.076353, 45.866283>,  <34.668304, 28.234455, 46.428791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210678, 28.076353, 45.866283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.904434, 27.841652, 45.760784>,  <34.720688, 27.700830, 45.697483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.904434, 27.841652, 45.760784>,  <35.210678, 28.076353, 45.866283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904434, 27.841652, 45.760784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015866, 0.392640, -0.919555,
		0.643111, -0.708204, -0.291299,
		-0.765609, -0.586754, -0.263748,
		34.674751, 27.665627, 45.681660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396770, 27.794092, 45.166927>,  <35.210678, 28.076353, 45.866283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396770, 27.794092, 45.166927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.001499, 27.744871, 45.203503>,  <34.764336, 27.715340, 45.225449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.001499, 27.744871, 45.203503>,  <35.396770, 27.794092, 45.166927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001499, 27.744871, 45.203503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128490, 0.339451, -0.931807,
		0.083620, -0.932541, -0.351249,
		-0.988179, -0.123049, 0.091437,
		34.705044, 27.707956, 45.230934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218090, 27.655169, 44.519272>,  <35.396770, 27.794092, 45.166927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218090, 27.655169, 44.519272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.851460, 27.696768, 44.673706>,  <34.631481, 27.721727, 44.766369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.851460, 27.696768, 44.673706>,  <35.218090, 27.655169, 44.519272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851460, 27.696768, 44.673706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372952, 0.125815, -0.919281,
		-0.144180, -0.986587, -0.076532,
		-0.916580, 0.103999, 0.386090,
		34.576485, 27.727968, 44.789532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780533, 27.091364, 44.302647>,  <35.218090, 27.655169, 44.519272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780533, 27.091364, 44.302647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.524822, 27.390865, 44.372723>,  <34.371395, 27.570566, 44.414768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.524822, 27.390865, 44.372723>,  <34.780533, 27.091364, 44.302647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524822, 27.390865, 44.372723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191997, 0.065193, -0.979228,
		-0.744623, -0.659633, 0.102082,
		-0.639276, 0.748755, 0.175191,
		34.333038, 27.615492, 44.425282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129566, 26.970461, 43.908508>,  <34.780533, 27.091364, 44.302647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129566, 26.970461, 43.908508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.157124, 27.362316, 43.983944>,  <34.173660, 27.597429, 44.029205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.157124, 27.362316, 43.983944>,  <34.129566, 26.970461, 43.908508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157124, 27.362316, 43.983944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241265, 0.199784, -0.949672,
		-0.968010, 0.019931, 0.250117,
		0.068897, 0.979637, 0.188585,
		34.177792, 27.656208, 44.040520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536682, 27.268997, 43.577793>,  <34.129566, 26.970461, 43.908508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536682, 27.268997, 43.577793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833351, 27.529272, 43.642948>,  <34.011353, 27.685436, 43.682041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833351, 27.529272, 43.642948>,  <33.536682, 27.268997, 43.577793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833351, 27.529272, 43.642948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000922, 0.241848, -0.970314,
		-0.670764, 0.719803, 0.178771,
		0.741670, 0.650687, 0.162887,
		34.055851, 27.724478, 43.691814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316032, 27.859297, 43.211884>,  <33.536682, 27.268997, 43.577793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316032, 27.859297, 43.211884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.706009, 27.897259, 43.292358>,  <33.939995, 27.920036, 43.340645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.706009, 27.897259, 43.292358>,  <33.316032, 27.859297, 43.211884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706009, 27.897259, 43.292358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170025, 0.265283, -0.949061,
		-0.143443, 0.959488, 0.242500,
		0.974944, 0.094905, 0.201191,
		33.998493, 27.925730, 43.352715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976570, 28.543858, 43.455170>,  <33.316032, 27.859297, 43.211884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976570, 28.543858, 43.455170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623676, 28.730192, 43.482483>,  <32.411942, 28.841993, 43.498871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623676, 28.730192, 43.482483>,  <32.976570, 28.543858, 43.455170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623676, 28.730192, 43.482483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219301, -0.534935, 0.815936,
		0.416619, 0.704871, 0.574096,
		-0.882233, 0.465834, 0.068285,
		32.359005, 28.869942, 43.502968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891102, 28.984320, 44.135414>,  <32.976570, 28.543858, 43.455170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891102, 28.984320, 44.135414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520504, 28.922432, 43.998199>,  <32.298145, 28.885300, 43.915871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520504, 28.922432, 43.998199>,  <32.891102, 28.984320, 44.135414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520504, 28.922432, 43.998199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278986, -0.329369, 0.902044,
		-0.252552, 0.931439, 0.261992,
		-0.926490, -0.154721, -0.343041,
		32.242558, 28.876015, 43.895287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444668, 29.315296, 44.654541>,  <32.891102, 28.984320, 44.135414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444668, 29.315296, 44.654541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.235607, 29.034544, 44.460964>,  <32.110168, 28.866093, 44.344818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.235607, 29.034544, 44.460964>,  <32.444668, 29.315296, 44.654541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235607, 29.034544, 44.460964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429363, -0.273694, 0.860662,
		-0.736532, 0.657615, -0.158314,
		-0.522654, -0.701879, -0.483940,
		32.078812, 28.823980, 44.315781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830893, 29.327816, 44.980751>,  <32.444668, 29.315296, 44.654541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830893, 29.327816, 44.980751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864491, 28.971504, 44.802105>,  <31.884649, 28.757717, 44.694920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864491, 28.971504, 44.802105>,  <31.830893, 29.327816, 44.980751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864491, 28.971504, 44.802105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252750, -0.452582, 0.855153,
		-0.963879, 0.041053, -0.263158,
		0.083994, -0.890777, -0.446611,
		31.889688, 28.704271, 44.668121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335796, 29.028095, 45.420246>,  <31.830893, 29.327816, 44.980751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335796, 29.028095, 45.420246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490017, 28.729742, 45.202988>,  <31.582548, 28.550730, 45.072632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490017, 28.729742, 45.202988>,  <31.335796, 29.028095, 45.420246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490017, 28.729742, 45.202988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137185, -0.628458, 0.765651,
		-0.912432, -0.220684, -0.344626,
		0.385550, -0.745881, -0.543151,
		31.605682, 28.505978, 45.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806704, 28.573578, 45.414383>,  <31.335796, 29.028095, 45.420246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806704, 28.573578, 45.414383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.162968, 28.395853, 45.375782>,  <31.376726, 28.289217, 45.352619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.162968, 28.395853, 45.375782>,  <30.806704, 28.573578, 45.414383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162968, 28.395853, 45.375782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153493, -0.493618, 0.856027,
		-0.427980, -0.747615, -0.507844,
		0.890658, -0.444312, -0.096505,
		31.430164, 28.262560, 45.346828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735001, 27.860489, 45.588081>,  <30.806704, 28.573578, 45.414383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735001, 27.860489, 45.588081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123947, 27.939291, 45.638184>,  <31.357315, 27.986572, 45.668243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123947, 27.939291, 45.638184>,  <30.735001, 27.860489, 45.588081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123947, 27.939291, 45.638184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001127, -0.540481, 0.841355,
		0.233448, -0.817966, -0.525769,
		0.972369, 0.197005, 0.125252,
		31.415657, 27.998392, 45.675758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006124, 27.200184, 45.810986>,  <30.735001, 27.860489, 45.588081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006124, 27.200184, 45.810986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.274170, 27.475521, 45.922077>,  <31.434998, 27.640724, 45.988731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.274170, 27.475521, 45.922077>,  <31.006124, 27.200184, 45.810986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274170, 27.475521, 45.922077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182969, -0.515801, 0.836942,
		0.719355, -0.510030, -0.471590,
		0.670112, 0.688344, 0.277725,
		31.475204, 27.682024, 46.005394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369734, 26.854820, 46.254688>,  <31.006124, 27.200184, 45.810986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369734, 26.854820, 46.254688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.496794, 27.228212, 46.321274>,  <31.573029, 27.452248, 46.361225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.496794, 27.228212, 46.321274>,  <31.369734, 26.854820, 46.254688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496794, 27.228212, 46.321274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283287, -0.260967, 0.922846,
		0.904902, -0.245983, -0.347339,
		0.317648, 0.933482, 0.166466,
		31.592089, 27.508257, 46.371212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027782, 26.749784, 46.665749>,  <31.369734, 26.854820, 46.254688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027782, 26.749784, 46.665749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.877977, 27.109009, 46.758030>,  <31.788094, 27.324543, 46.813400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.877977, 27.109009, 46.758030>,  <32.027782, 26.749784, 46.665749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877977, 27.109009, 46.758030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082248, -0.215656, 0.972999,
		0.923566, 0.383377, 0.006903,
		-0.374514, 0.898061, 0.230705,
		31.765623, 27.378428, 46.827240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440586, 26.976692, 47.249699>,  <32.027782, 26.749784, 46.665749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440586, 26.976692, 47.249699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096809, 27.180864, 47.261143>,  <31.890543, 27.303368, 47.268009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096809, 27.180864, 47.261143>,  <32.440586, 26.976692, 47.249699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096809, 27.180864, 47.261143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005696, -0.046396, 0.998907,
		0.511198, 0.858667, 0.036967,
		-0.859444, 0.510429, 0.028609,
		31.838976, 27.333994, 47.269726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488613, 27.391224, 47.805286>,  <32.440586, 26.976692, 47.249699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488613, 27.391224, 47.805286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096226, 27.390093, 47.727634>,  <31.860792, 27.389414, 47.681042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096226, 27.390093, 47.727634>,  <32.488613, 27.391224, 47.805286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096226, 27.390093, 47.727634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193982, 0.056094, 0.979400,
		0.008121, 0.998421, -0.055575,
		-0.980971, -0.002827, -0.194132,
		31.801935, 27.389244, 47.669395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300987, 27.802446, 48.291969>,  <32.488613, 27.391224, 47.805286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300987, 27.802446, 48.291969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961794, 27.620155, 48.183716>,  <31.758278, 27.510780, 48.118763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961794, 27.620155, 48.183716>,  <32.300987, 27.802446, 48.291969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961794, 27.620155, 48.183716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265816, -0.076083, 0.961017,
		-0.458552, 0.886862, -0.056622,
		-0.847981, -0.455727, -0.270630,
		31.707399, 27.483437, 48.102528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702755, 28.164305, 48.599697>,  <32.300987, 27.802446, 48.291969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702755, 28.164305, 48.599697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623409, 27.779749, 48.523403>,  <31.575802, 27.549015, 48.477627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623409, 27.779749, 48.523403>,  <31.702755, 28.164305, 48.599697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623409, 27.779749, 48.523403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156869, -0.160953, 0.974416,
		-0.967494, 0.223209, -0.118885,
		-0.198364, -0.961391, -0.190736,
		31.563900, 27.491331, 48.466183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751789, 28.879261, 48.397720>,  <31.702755, 28.164305, 48.599697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751789, 28.879261, 48.397720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.798603, 29.120716, 48.713169>,  <31.826691, 29.265589, 48.902439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.798603, 29.120716, 48.713169>,  <31.751789, 28.879261, 48.397720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798603, 29.120716, 48.713169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333504, 0.724079, -0.603726,
		-0.935456, 0.333665, -0.116574,
		0.117034, 0.603637, 0.788623,
		31.833714, 29.301807, 48.949757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459824, 29.455809, 48.113831>,  <31.751789, 28.879261, 48.397720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459824, 29.455809, 48.113831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.696964, 29.555883, 48.420017>,  <31.839249, 29.615929, 48.603729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.696964, 29.555883, 48.420017>,  <31.459824, 29.455809, 48.113831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696964, 29.555883, 48.420017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420529, 0.714449, -0.559212,
		-0.686793, 0.653428, 0.318350,
		0.592850, 0.250187, 0.765464,
		31.874819, 29.630939, 48.649658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322060, 30.121202, 48.210838>,  <31.459824, 29.455809, 48.113831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322060, 30.121202, 48.210838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.672482, 30.079679, 48.399200>,  <31.882734, 30.054766, 48.512218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.672482, 30.079679, 48.399200>,  <31.322060, 30.121202, 48.210838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672482, 30.079679, 48.399200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360754, 0.789086, -0.497193,
		-0.319971, 0.605449, 0.728732,
		0.876056, -0.103806, 0.470903,
		31.935299, 30.048538, 48.540470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408819, 30.790859, 48.480698>,  <31.322060, 30.121202, 48.210838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408819, 30.790859, 48.480698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.749105, 30.591478, 48.413967>,  <31.953278, 30.471849, 48.373928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.749105, 30.591478, 48.413967>,  <31.408819, 30.790859, 48.480698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749105, 30.591478, 48.413967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314410, 0.736901, -0.598435,
		0.421226, 0.456645, 0.783610,
		0.850715, -0.498451, -0.166828,
		32.004318, 30.441942, 48.363918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921263, 31.305725, 48.536270>,  <31.408819, 30.790859, 48.480698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921263, 31.305725, 48.536270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.101212, 31.011286, 48.333973>,  <32.209183, 30.834623, 48.212593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.101212, 31.011286, 48.333973>,  <31.921263, 31.305725, 48.536270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101212, 31.011286, 48.333973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449342, 0.675943, -0.584117,
		0.771819, 0.035528, 0.634849,
		0.449874, -0.736097, -0.505742,
		32.236176, 30.790457, 48.182251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657516, 31.397705, 48.642330>,  <31.921263, 31.305725, 48.536270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657516, 31.397705, 48.642330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.635475, 31.187717, 48.302597>,  <32.622250, 31.061724, 48.098755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.635475, 31.187717, 48.302597>,  <32.657516, 31.397705, 48.642330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635475, 31.187717, 48.302597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636313, 0.637057, -0.435046,
		0.769461, -0.564414, 0.298943,
		-0.055102, -0.524971, -0.849334,
		32.618946, 31.030226, 48.047798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309208, 31.400589, 48.331173>,  <32.657516, 31.397705, 48.642330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309208, 31.400589, 48.331173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.045628, 31.317114, 48.042110>,  <32.887478, 31.267029, 47.868675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.045628, 31.317114, 48.042110>,  <33.309208, 31.400589, 48.331173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045628, 31.317114, 48.042110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478403, 0.625101, -0.616749,
		0.580438, -0.752130, -0.312078,
		-0.658955, -0.208685, -0.722654,
		32.847942, 31.254507, 47.825314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003231, 31.131273, 48.182228>,  <33.309208, 31.400589, 48.331173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003231, 31.131273, 48.182228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.304806, 31.205580, 48.434284>,  <34.485748, 31.250164, 48.585518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.304806, 31.205580, 48.434284>,  <34.003231, 31.131273, 48.182228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304806, 31.205580, 48.434284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367670, -0.675587, 0.639063,
		0.544429, -0.713494, -0.441048,
		0.753934, 0.185765, 0.630139,
		34.530987, 31.261309, 48.623325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023823, 30.557203, 48.561352>,  <34.003231, 31.131273, 48.182228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023823, 30.557203, 48.561352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.300343, 30.751585, 48.775249>,  <34.466255, 30.868214, 48.903587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.300343, 30.751585, 48.775249>,  <34.023823, 30.557203, 48.561352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300343, 30.751585, 48.775249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117944, -0.654246, 0.747028,
		0.712874, -0.579492, -0.394968,
		0.691303, 0.485953, 0.534742,
		34.507732, 30.897371, 48.935673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615665, 30.049683, 48.842129>,  <34.023823, 30.557203, 48.561352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615665, 30.049683, 48.842129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.594631, 30.376404, 49.071934>,  <34.582012, 30.572437, 49.209816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.594631, 30.376404, 49.071934>,  <34.615665, 30.049683, 48.842129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594631, 30.376404, 49.071934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050340, -0.576748, 0.815370,
		0.997347, 0.013953, 0.071444,
		-0.052582, 0.816803, 0.574515,
		34.578857, 30.621445, 49.244289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091381, 29.946928, 49.393299>,  <34.615665, 30.049683, 48.842129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091381, 29.946928, 49.393299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.850063, 30.227873, 49.544415>,  <34.705273, 30.396441, 49.635082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.850063, 30.227873, 49.544415>,  <35.091381, 29.946928, 49.393299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850063, 30.227873, 49.544415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030217, -0.453231, 0.890881,
		0.796947, 0.548878, 0.252208,
		-0.603293, 0.702364, 0.377786,
		34.669075, 30.438581, 49.657749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251247, 30.062675, 50.172546>,  <35.091381, 29.946928, 49.393299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251247, 30.062675, 50.172546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892010, 30.234741, 50.135929>,  <34.676468, 30.337980, 50.113960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892010, 30.234741, 50.135929>,  <35.251247, 30.062675, 50.172546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892010, 30.234741, 50.135929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213913, -0.245387, 0.945530,
		0.384268, 0.868760, 0.312399,
		-0.898097, 0.430163, -0.091545,
		34.622581, 30.363791, 50.108467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243134, 30.654026, 50.718315>,  <35.251247, 30.062675, 50.172546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243134, 30.654026, 50.718315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.869228, 30.541428, 50.631618>,  <34.644886, 30.473869, 50.579601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.869228, 30.541428, 50.631618>,  <35.243134, 30.654026, 50.718315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869228, 30.541428, 50.631618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093924, -0.392565, 0.914916,
		-0.342629, 0.875588, 0.340517,
		-0.934764, -0.281494, -0.216743,
		34.588799, 30.456980, 50.566597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801502, 30.897182, 51.204239>,  <35.243134, 30.654026, 50.718315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801502, 30.897182, 51.204239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.614445, 30.576902, 51.054474>,  <34.502209, 30.384735, 50.964615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.614445, 30.576902, 51.054474>,  <34.801502, 30.897182, 51.204239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614445, 30.576902, 51.054474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078962, -0.384052, 0.919929,
		-0.880381, 0.459767, 0.116376,
		-0.467648, -0.800698, -0.374417,
		34.474152, 30.336693, 50.942150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283169, 30.892216, 51.683384>,  <34.801502, 30.897182, 51.204239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283169, 30.892216, 51.683384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.291622, 30.539158, 51.495556>,  <34.296692, 30.327324, 51.382858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.291622, 30.539158, 51.495556>,  <34.283169, 30.892216, 51.683384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291622, 30.539158, 51.495556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091393, -0.469410, 0.878238,
		-0.995591, 0.024357, -0.090586,
		0.021131, -0.882645, -0.469566,
		34.297962, 30.274364, 51.354687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698334, 30.485670, 51.970654>,  <34.283169, 30.892216, 51.683384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698334, 30.485670, 51.970654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.990696, 30.250475, 51.832058>,  <34.166111, 30.109358, 51.748901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.990696, 30.250475, 51.832058>,  <33.698334, 30.485670, 51.970654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990696, 30.250475, 51.832058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062292, -0.448098, 0.891812,
		-0.679634, -0.673410, -0.290888,
		0.730901, -0.587986, -0.346490,
		34.209965, 30.074080, 51.728111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<39.165733, 35.982899, 37.394901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330036, 35.633415, 37.499134>,  <39.428619, 35.423725, 37.561672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330036, 35.633415, 37.499134>,  <39.165733, 35.982899, 37.394901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330036, 35.633415, 37.499134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842528, -0.254511, 0.474731,
		-0.348458, -0.414548, -0.840671,
		0.410759, -0.873713, 0.260582,
		39.453262, 35.371300, 37.577309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665154, 35.545883, 37.392315>,  <39.165733, 35.982899, 37.394901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665154, 35.545883, 37.392315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937122, 35.353271, 37.613525>,  <39.100304, 35.237705, 37.746250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937122, 35.353271, 37.613525>,  <38.665154, 35.545883, 37.392315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937122, 35.353271, 37.613525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707201, -0.231240, 0.668127,
		-0.193836, -0.845378, -0.497759,
		0.679922, -0.481523, 0.553030,
		39.141098, 35.208813, 37.779434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264671, 34.984547, 37.555595>,  <38.665154, 35.545883, 37.392315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264671, 34.984547, 37.555595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575214, 34.963474, 37.806831>,  <38.761539, 34.950829, 37.957573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575214, 34.963474, 37.806831>,  <38.264671, 34.984547, 37.555595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575214, 34.963474, 37.806831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614007, -0.288308, 0.734762,
		0.142373, -0.956087, -0.256177,
		0.776354, -0.052684, 0.628091,
		38.808121, 34.947670, 37.995258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228775, 34.355610, 37.878880>,  <38.264671, 34.984547, 37.555595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228775, 34.355610, 37.878880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473812, 34.559284, 38.120693>,  <38.620834, 34.681488, 38.265781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473812, 34.559284, 38.120693>,  <38.228775, 34.355610, 37.878880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473812, 34.559284, 38.120693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597822, -0.201844, 0.775802,
		0.517046, -0.836656, 0.180752,
		0.612595, 0.509182, 0.604533,
		38.657589, 34.712040, 38.302052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367199, 33.946442, 38.423656>,  <38.228775, 34.355610, 37.878880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367199, 33.946442, 38.423656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427269, 34.314526, 38.568249>,  <38.463310, 34.535374, 38.655003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427269, 34.314526, 38.568249>,  <38.367199, 33.946442, 38.423656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427269, 34.314526, 38.568249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499159, -0.245029, 0.831144,
		0.853398, -0.305251, 0.422533,
		0.150175, 0.920208, 0.361476,
		38.472321, 34.590588, 38.676693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447163, 33.782505, 39.178925>,  <38.367199, 33.946442, 38.423656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447163, 33.782505, 39.178925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378376, 34.175598, 39.151615>,  <38.337105, 34.411453, 39.135231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378376, 34.175598, 39.151615>,  <38.447163, 33.782505, 39.178925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378376, 34.175598, 39.151615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401766, -0.006685, 0.915718,
		0.899451, 0.184902, 0.395979,
		-0.171966, 0.982734, -0.068274,
		38.326786, 34.470417, 39.131134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767563, 34.182892, 39.779865>,  <38.447163, 33.782505, 39.178925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767563, 34.182892, 39.779865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464317, 34.407906, 39.647911>,  <38.282372, 34.542912, 39.568737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464317, 34.407906, 39.647911>,  <38.767563, 34.182892, 39.779865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464317, 34.407906, 39.647911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383107, 0.025188, 0.923361,
		0.527730, 0.826392, 0.196415,
		-0.758110, 0.562533, -0.329888,
		38.236885, 34.576664, 39.548946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716740, 34.750629, 40.212536>,  <38.767563, 34.182892, 39.779865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716740, 34.750629, 40.212536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366600, 34.763435, 40.019566>,  <38.156517, 34.771118, 39.903782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366600, 34.763435, 40.019566>,  <38.716740, 34.750629, 40.212536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366600, 34.763435, 40.019566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442086, 0.350989, 0.825449,
		0.195752, 0.935832, -0.293085,
		-0.875352, 0.032015, -0.482426,
		38.103996, 34.773041, 39.874840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454250, 35.440666, 40.352413>,  <38.716740, 34.750629, 40.212536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454250, 35.440666, 40.352413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145905, 35.194145, 40.287979>,  <37.960899, 35.046234, 40.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145905, 35.194145, 40.287979>,  <38.454250, 35.440666, 40.352413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145905, 35.194145, 40.287979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433621, 0.322446, 0.841428,
		-0.466633, 0.718472, -0.515802,
		-0.770861, -0.616301, -0.161081,
		37.914646, 35.009254, 40.239655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857758, 35.883808, 40.576672>,  <38.454250, 35.440666, 40.352413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857758, 35.883808, 40.576672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735683, 35.502892, 40.577236>,  <37.662437, 35.274342, 40.577576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735683, 35.502892, 40.577236>,  <37.857758, 35.883808, 40.576672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735683, 35.502892, 40.577236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663734, 0.213770, 0.716770,
		-0.682875, 0.217815, -0.697308,
		-0.305187, -0.952291, 0.001407,
		37.644127, 35.217205, 40.577660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057632, 35.862465, 40.701992>,  <37.857758, 35.883808, 40.576672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057632, 35.862465, 40.701992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191364, 35.496254, 40.791458>,  <37.271603, 35.276527, 40.845139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191364, 35.496254, 40.791458>,  <37.057632, 35.862465, 40.701992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191364, 35.496254, 40.791458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710840, -0.089135, 0.697684,
		-0.618814, -0.392248, -0.680596,
		0.334330, -0.915531, 0.223668,
		37.291664, 35.221596, 40.858559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429539, 35.605198, 40.941437>,  <37.057632, 35.862465, 40.701992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429539, 35.605198, 40.941437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684338, 35.320454, 41.059750>,  <36.837219, 35.149609, 41.130737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684338, 35.320454, 41.059750>,  <36.429539, 35.605198, 40.941437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684338, 35.320454, 41.059750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511538, -0.103310, 0.853028,
		-0.576681, -0.694680, -0.429952,
		0.636999, -0.711862, 0.295778,
		36.875439, 35.106895, 41.148483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224060, 34.948067, 40.560295>,  <36.429539, 35.605198, 40.941437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224060, 34.948067, 40.560295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833530, 34.933582, 40.474998>,  <35.599213, 34.924892, 40.423820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833530, 34.933582, 40.474998>,  <36.224060, 34.948067, 40.560295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833530, 34.933582, 40.474998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196766, 0.260643, -0.945171,
		0.089808, -0.964756, -0.247347,
		-0.976329, -0.036214, -0.213239,
		35.540630, 34.922718, 40.411026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210209, 34.576405, 39.886066>,  <36.224060, 34.948067, 40.560295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210209, 34.576405, 39.886066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855618, 34.757881, 39.922573>,  <35.642864, 34.866768, 39.944477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855618, 34.757881, 39.922573>,  <36.210209, 34.576405, 39.886066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855618, 34.757881, 39.922573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035318, 0.130307, -0.990845,
		-0.461427, -0.881582, -0.099490,
		-0.886475, 0.453689, 0.091262,
		35.589676, 34.893990, 39.949951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980309, 34.454098, 39.284218>,  <36.210209, 34.576405, 39.886066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980309, 34.454098, 39.284218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741989, 34.745655, 39.419117>,  <35.598999, 34.920589, 39.500057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741989, 34.745655, 39.419117>,  <35.980309, 34.454098, 39.284218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741989, 34.745655, 39.419117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036218, 0.443869, -0.895359,
		-0.802318, -0.521238, -0.290855,
		-0.595797, 0.728897, 0.337246,
		35.563251, 34.964325, 39.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359299, 34.342220, 38.909294>,  <35.980309, 34.454098, 39.284218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359299, 34.342220, 38.909294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404171, 34.721802, 39.027214>,  <35.431095, 34.949551, 39.097965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404171, 34.721802, 39.027214>,  <35.359299, 34.342220, 38.909294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404171, 34.721802, 39.027214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112315, 0.306885, -0.945097,
		-0.987320, 0.072912, 0.141008,
		0.112182, 0.948950, 0.294804,
		35.437824, 35.006485, 39.115654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888424, 34.711254, 38.602322>,  <35.359299, 34.342220, 38.909294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888424, 34.711254, 38.602322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145359, 34.997486, 38.712124>,  <35.299519, 35.169224, 38.778004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145359, 34.997486, 38.712124>,  <34.888424, 34.711254, 38.602322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145359, 34.997486, 38.712124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045701, 0.393284, -0.918280,
		-0.765057, 0.577302, 0.285324,
		0.642338, 0.715577, 0.274502,
		35.338062, 35.212158, 38.794476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637123, 35.289097, 38.410477>,  <34.888424, 34.711254, 38.602322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637123, 35.289097, 38.410477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015762, 35.412468, 38.448048>,  <35.242947, 35.486492, 38.470592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015762, 35.412468, 38.448048>,  <34.637123, 35.289097, 38.410477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015762, 35.412468, 38.448048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018517, 0.238849, -0.970880,
		-0.321884, 0.920773, 0.220382,
		0.946598, 0.308430, 0.093932,
		35.299740, 35.504997, 38.476227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698223, 36.043552, 38.293941>,  <34.637123, 35.289097, 38.410477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698223, 36.043552, 38.293941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045902, 35.873810, 38.192421>,  <35.254509, 35.771965, 38.131508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045902, 35.873810, 38.192421>,  <34.698223, 36.043552, 38.293941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045902, 35.873810, 38.192421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016661, 0.487858, -0.872764,
		0.494180, 0.762835, 0.416977,
		0.869200, -0.424355, -0.253799,
		35.306664, 35.746502, 38.116280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036839, 36.605625, 38.032459>,  <34.698223, 36.043552, 38.293941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036839, 36.605625, 38.032459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246391, 36.286419, 37.913322>,  <35.372124, 36.094894, 37.841839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246391, 36.286419, 37.913322>,  <35.036839, 36.605625, 38.032459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246391, 36.286419, 37.913322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042113, 0.373509, -0.926670,
		0.850746, 0.472926, 0.229283,
		0.523886, -0.798017, -0.297845,
		35.403557, 36.047012, 37.823971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629139, 36.886219, 37.685196>,  <35.036839, 36.605625, 38.032459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629139, 36.886219, 37.685196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590385, 36.512283, 37.548553>,  <35.567135, 36.287922, 37.466568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590385, 36.512283, 37.548553>,  <35.629139, 36.886219, 37.685196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590385, 36.512283, 37.548553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004780, 0.342780, -0.939404,
		0.995285, -0.092643, -0.028741,
		-0.096881, -0.934837, -0.341606,
		35.561321, 36.231831, 37.446072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149292, 36.782116, 37.102303>,  <35.629139, 36.886219, 37.685196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149292, 36.782116, 37.102303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865562, 36.503872, 37.056728>,  <35.695324, 36.336926, 37.029385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865562, 36.503872, 37.056728>,  <36.149292, 36.782116, 37.102303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865562, 36.503872, 37.056728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090618, 0.250285, -0.963922,
		0.699033, -0.673409, -0.240568,
		-0.709324, -0.695613, -0.113934,
		35.652763, 36.295189, 37.022549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169872, 36.596279, 36.402386>,  <36.149292, 36.782116, 37.102303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169872, 36.596279, 36.402386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818012, 36.433044, 36.500107>,  <35.606895, 36.335102, 36.558739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818012, 36.433044, 36.500107>,  <36.169872, 36.596279, 36.402386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818012, 36.433044, 36.500107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317192, 0.120595, -0.940662,
		0.354412, -0.904942, -0.235524,
		-0.879648, -0.408089, 0.244300,
		35.554119, 36.310619, 36.573399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047935, 36.094364, 35.877167>,  <36.169872, 36.596279, 36.402386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047935, 36.094364, 35.877167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680592, 36.140656, 36.028542>,  <35.460186, 36.168430, 36.119366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680592, 36.140656, 36.028542>,  <36.047935, 36.094364, 35.877167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680592, 36.140656, 36.028542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373128, 0.065399, -0.925472,
		-0.131857, -0.991125, -0.016877,
		-0.918362, 0.115733, 0.378440,
		35.405083, 36.175377, 36.142075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598228, 35.632320, 35.559586>,  <36.047935, 36.094364, 35.877167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598228, 35.632320, 35.559586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365093, 35.920525, 35.709877>,  <35.225212, 36.093445, 35.800053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365093, 35.920525, 35.709877>,  <35.598228, 35.632320, 35.559586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365093, 35.920525, 35.709877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466874, 0.081529, -0.880557,
		-0.665081, -0.688638, 0.288869,
		-0.582834, 0.720508, 0.375731,
		35.190243, 36.136677, 35.822598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951885, 35.457230, 35.443932>,  <35.598228, 35.632320, 35.559586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951885, 35.457230, 35.443932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932590, 35.854404, 35.487293>,  <34.921013, 36.092709, 35.513309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932590, 35.854404, 35.487293>,  <34.951885, 35.457230, 35.443932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932590, 35.854404, 35.487293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591147, 0.059104, -0.804395,
		-0.805120, -0.102887, 0.584120,
		-0.048238, 0.992936, 0.108408,
		34.918118, 36.152287, 35.519817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240524, 35.733372, 35.558437>,  <34.951885, 35.457230, 35.443932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240524, 35.733372, 35.558437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502247, 35.958813, 35.356754>,  <34.659283, 36.094078, 35.235744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502247, 35.958813, 35.356754>,  <34.240524, 35.733372, 35.558437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502247, 35.958813, 35.356754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613767, 0.006279, -0.789462,
		-0.441780, 0.826020, 0.350031,
		0.654309, 0.563606, -0.504210,
		34.698540, 36.127895, 35.205490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096577, 35.023205, 35.441063>,  <34.240524, 35.733372, 35.558437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096577, 35.023205, 35.441063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042477, 34.785053, 35.124271>,  <34.010017, 34.642162, 34.934196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042477, 34.785053, 35.124271>,  <34.096577, 35.023205, 35.441063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042477, 34.785053, 35.124271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194485, -0.767822, 0.610430,
		-0.971536, 0.236590, -0.011942,
		-0.135252, -0.595378, -0.791980,
		34.001900, 34.606441, 34.886677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428566, 34.690216, 35.265106>,  <34.096577, 35.023205, 35.441063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428566, 34.690216, 35.265106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732807, 34.459427, 35.146057>,  <33.915352, 34.320953, 35.074627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732807, 34.459427, 35.146057>,  <33.428566, 34.690216, 35.265106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732807, 34.459427, 35.146057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363909, -0.758549, 0.540531,
		-0.537636, -0.302823, -0.786922,
		0.760604, -0.576977, -0.297623,
		33.960987, 34.286335, 35.056770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099716, 34.021492, 35.182323>,  <33.428566, 34.690216, 35.265106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099716, 34.021492, 35.182323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496769, 34.010235, 35.229465>,  <33.735001, 34.003479, 35.257751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496769, 34.010235, 35.229465>,  <33.099716, 34.021492, 35.182323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496769, 34.010235, 35.229465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103833, -0.698932, 0.707611,
		0.062457, -0.714634, -0.696704,
		0.992632, -0.028146, 0.117855,
		33.794559, 34.001793, 35.264824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326664, 33.351902, 35.212860>,  <33.099716, 34.021492, 35.182323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326664, 33.351902, 35.212860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621693, 33.560192, 35.384827>,  <33.798710, 33.685165, 35.488007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621693, 33.560192, 35.384827>,  <33.326664, 33.351902, 35.212860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621693, 33.560192, 35.384827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033225, -0.607906, 0.793314,
		0.674447, -0.599413, -0.431075,
		0.737576, 0.520726, 0.429915,
		33.842964, 33.716412, 35.513802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579231, 32.871075, 35.551495>,  <33.326664, 33.351902, 35.212860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579231, 32.871075, 35.551495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728790, 33.197594, 35.727612>,  <33.818527, 33.393505, 35.833282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728790, 33.197594, 35.727612>,  <33.579231, 32.871075, 35.551495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728790, 33.197594, 35.727612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061870, -0.451716, 0.890014,
		0.925403, -0.360016, -0.118392,
		0.373899, 0.816297, 0.440294,
		33.840961, 33.442482, 35.859699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168758, 32.627048, 35.924019>,  <33.579231, 32.871075, 35.551495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168758, 32.627048, 35.924019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045292, 32.976841, 36.073689>,  <33.971210, 33.186718, 36.163490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045292, 32.976841, 36.073689>,  <34.168758, 32.627048, 35.924019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045292, 32.976841, 36.073689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007566, -0.395632, 0.918378,
		0.951140, 0.280641, 0.128734,
		-0.308666, 0.874481, 0.374178,
		33.952694, 33.239185, 36.185944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671314, 32.867355, 36.443932>,  <34.168758, 32.627048, 35.924019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671314, 32.867355, 36.443932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337078, 33.078423, 36.505054>,  <34.136536, 33.205063, 36.541729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337078, 33.078423, 36.505054>,  <34.671314, 32.867355, 36.443932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337078, 33.078423, 36.505054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134681, -0.072893, 0.988204,
		0.532586, 0.846315, -0.010158,
		-0.835592, 0.527671, 0.152805,
		34.086399, 33.236725, 36.550896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718094, 32.956120, 37.163525>,  <34.671314, 32.867355, 36.443932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718094, 32.956120, 37.163525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328735, 32.990971, 37.078751>,  <34.095119, 33.011883, 37.027885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328735, 32.990971, 37.078751>,  <34.718094, 32.956120, 37.163525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328735, 32.990971, 37.078751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229018, -0.338887, 0.912528,
		0.007684, 0.936784, 0.349824,
		-0.973392, 0.087128, -0.211936,
		34.036716, 33.017109, 37.015171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467903, 33.293999, 37.751911>,  <34.718094, 32.956120, 37.163525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467903, 33.293999, 37.751911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173405, 33.112480, 37.551109>,  <33.996704, 33.003567, 37.430630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173405, 33.112480, 37.551109>,  <34.467903, 33.293999, 37.751911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173405, 33.112480, 37.551109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316356, -0.424962, 0.848131,
		-0.598215, 0.783245, 0.169314,
		-0.736246, -0.453801, -0.502003,
		33.952530, 32.976341, 37.400509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867275, 33.405201, 38.242290>,  <34.467903, 33.293999, 37.751911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867275, 33.405201, 38.242290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718651, 33.128902, 37.994156>,  <33.629475, 32.963123, 37.845276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718651, 33.128902, 37.994156>,  <33.867275, 33.405201, 38.242290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718651, 33.128902, 37.994156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332811, -0.524663, 0.783559,
		-0.866704, 0.497597, -0.034941,
		-0.371564, -0.690743, -0.620334,
		33.607182, 32.921680, 37.808056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152420, 33.420650, 38.341156>,  <33.867275, 33.405201, 38.242290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152420, 33.420650, 38.341156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257000, 33.067589, 38.184917>,  <33.319748, 32.855751, 38.091175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257000, 33.067589, 38.184917>,  <33.152420, 33.420650, 38.341156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257000, 33.067589, 38.184917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309601, -0.459977, 0.832207,
		-0.914216, -0.096654, -0.393532,
		0.261452, -0.882655, -0.390594,
		33.335434, 32.802792, 38.067738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621704, 33.017879, 38.366657>,  <33.152420, 33.420650, 38.341156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621704, 33.017879, 38.366657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907742, 32.741783, 38.322475>,  <33.079365, 32.576126, 38.295967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907742, 32.741783, 38.322475>,  <32.621704, 33.017879, 38.366657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907742, 32.741783, 38.322475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421688, -0.551991, 0.719364,
		-0.557519, -0.467826, -0.685793,
		0.715088, -0.690250, -0.110469,
		33.122269, 32.534710, 38.289341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270664, 32.424854, 38.287067>,  <32.621704, 33.017879, 38.366657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270664, 32.424854, 38.287067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635284, 32.283157, 38.370575>,  <32.854057, 32.198139, 38.420681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635284, 32.283157, 38.370575>,  <32.270664, 32.424854, 38.287067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635284, 32.283157, 38.370575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380884, -0.536148, 0.753308,
		-0.154919, -0.766198, -0.623651,
		0.911552, -0.354240, 0.208773,
		32.908749, 32.176884, 38.433208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209190, 31.686659, 38.345348>,  <32.270664, 32.424854, 38.287067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209190, 31.686659, 38.345348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540775, 31.795609, 38.540745>,  <32.739727, 31.860979, 38.657982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540775, 31.795609, 38.540745>,  <32.209190, 31.686659, 38.345348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540775, 31.795609, 38.540745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302655, -0.516024, 0.801324,
		0.470336, -0.812115, -0.345330,
		0.828965, 0.272376, 0.488495,
		32.789467, 31.877321, 38.687294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568451, 31.012686, 38.666275>,  <32.209190, 31.686659, 38.345348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568451, 31.012686, 38.666275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710823, 31.330116, 38.863678>,  <32.796246, 31.520575, 38.982121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710823, 31.330116, 38.863678>,  <32.568451, 31.012686, 38.666275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710823, 31.330116, 38.863678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049991, -0.511162, 0.858029,
		0.933173, -0.330073, -0.142268,
		0.355934, 0.793578, 0.493504,
		32.817604, 31.568190, 39.011730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974586, 30.701710, 39.163834>,  <32.568451, 31.012686, 38.666275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974586, 30.701710, 39.163834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910976, 31.058802, 39.332474>,  <32.872810, 31.273056, 39.433659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910976, 31.058802, 39.332474>,  <32.974586, 30.701710, 39.163834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910976, 31.058802, 39.332474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182628, -0.446262, 0.876069,
		0.970236, 0.062324, 0.234005,
		-0.159027, 0.892729, 0.421597,
		32.863270, 31.326620, 39.458954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499958, 30.822933, 39.724987>,  <32.974586, 30.701710, 39.163834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499958, 30.822933, 39.724987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156811, 31.023167, 39.771416>,  <32.950920, 31.143307, 39.799274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156811, 31.023167, 39.771416>,  <33.499958, 30.822933, 39.724987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156811, 31.023167, 39.771416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145879, -0.453831, 0.879066,
		0.492724, 0.737193, 0.462353,
		-0.857871, 0.500585, 0.116073,
		32.899448, 31.173342, 39.806236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514675, 30.893717, 40.410294>,  <33.499958, 30.822933, 39.724987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514675, 30.893717, 40.410294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136505, 30.992762, 40.325573>,  <32.909603, 31.052189, 40.274742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136505, 30.992762, 40.325573>,  <33.514675, 30.893717, 40.410294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136505, 30.992762, 40.325573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282208, -0.297304, 0.912123,
		0.162885, 0.922116, 0.350957,
		-0.945424, 0.247614, -0.211802,
		32.852879, 31.067045, 40.262032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312721, 31.230337, 40.976173>,  <33.514675, 30.893717, 40.410294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312721, 31.230337, 40.976173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991592, 31.114103, 40.767933>,  <32.798916, 31.044363, 40.642986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991592, 31.114103, 40.767933>,  <33.312721, 31.230337, 40.976173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991592, 31.114103, 40.767933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344467, -0.486634, 0.802826,
		-0.486634, 0.823861, 0.290585,
		-0.802826, -0.290585, -0.520605,
		32.750744, 31.026928, 40.611752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793430, 31.417440, 41.446106>,  <33.312721, 31.230337, 40.976173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793430, 31.417440, 41.446106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668877, 31.143534, 41.182552>,  <32.594143, 30.979189, 41.024418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668877, 31.143534, 41.182552>,  <32.793430, 31.417440, 41.446106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668877, 31.143534, 41.182552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406510, -0.530731, 0.743690,
		-0.858947, 0.499418, -0.113103,
		-0.311385, -0.684768, -0.658888,
		32.575462, 30.938103, 40.984886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121471, 31.423660, 41.511360>,  <32.793430, 31.417440, 41.446106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121471, 31.423660, 41.511360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243553, 31.070795, 41.367893>,  <32.316803, 30.859076, 41.281815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243553, 31.070795, 41.367893>,  <32.121471, 31.423660, 41.511360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243553, 31.070795, 41.367893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452304, -0.465728, 0.760604,
		-0.838015, -0.069917, -0.541149,
		0.305208, -0.882161, -0.358663,
		32.335117, 30.806147, 41.260296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611040, 30.954037, 41.681129>,  <32.121471, 31.423660, 41.511360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611040, 30.954037, 41.681129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926439, 30.720125, 41.604919>,  <32.115681, 30.579779, 41.559193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926439, 30.720125, 41.604919>,  <31.611040, 30.954037, 41.681129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926439, 30.720125, 41.604919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348176, -0.679783, 0.645499,
		-0.506992, -0.442638, -0.739615,
		0.788500, -0.584779, -0.190529,
		32.162991, 30.544691, 41.547760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310818, 30.249851, 41.591106>,  <31.611040, 30.954037, 41.681129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310818, 30.249851, 41.591106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697702, 30.193422, 41.675583>,  <31.929832, 30.159565, 41.726269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697702, 30.193422, 41.675583>,  <31.310818, 30.249851, 41.591106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697702, 30.193422, 41.675583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251314, -0.651660, 0.715667,
		0.036662, -0.745276, -0.665747,
		0.967211, -0.141074, 0.211190,
		31.987865, 30.151100, 41.738941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474087, 29.569042, 41.564285>,  <31.310818, 30.249851, 41.591106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474087, 29.569042, 41.564285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755190, 29.700008, 41.816929>,  <31.923851, 29.778589, 41.968513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755190, 29.700008, 41.816929>,  <31.474087, 29.569042, 41.564285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755190, 29.700008, 41.816929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289786, -0.679072, 0.674452,
		0.649734, -0.657008, -0.382343,
		0.702758, 0.327417, 0.631608,
		31.966017, 29.798233, 42.006413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772886, 28.957701, 41.919773>,  <31.474087, 29.569042, 41.564285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772886, 28.957701, 41.919773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957809, 29.239088, 42.135700>,  <32.068764, 29.407921, 42.265255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957809, 29.239088, 42.135700>,  <31.772886, 28.957701, 41.919773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957809, 29.239088, 42.135700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094414, -0.566270, 0.818794,
		0.881678, -0.429502, -0.195374,
		0.462309, 0.703467, 0.539819,
		32.096500, 29.450129, 42.297646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195889, 28.556610, 42.290890>,  <31.772886, 28.957701, 41.919773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195889, 28.556610, 42.290890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158951, 28.896454, 42.498596>,  <32.136787, 29.100359, 42.623219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158951, 28.896454, 42.498596>,  <32.195889, 28.556610, 42.290890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158951, 28.896454, 42.498596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057617, -0.525181, 0.849038,
		0.994059, 0.048484, 0.097449,
		-0.092343, 0.849609, 0.519267,
		32.131248, 29.151337, 42.654377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754063, 28.638250, 42.737122>,  <32.195889, 28.556610, 42.290890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754063, 28.638250, 42.737122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471382, 28.870684, 42.898571>,  <32.301773, 29.010143, 42.995441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471382, 28.870684, 42.898571>,  <32.754063, 28.638250, 42.737122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471382, 28.870684, 42.898571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003592, -0.573423, 0.819252,
		0.707499, 0.577520, 0.407328,
		-0.706705, 0.581083, 0.403622,
		32.259369, 29.045008, 43.019657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445602, 28.405806, 42.779701>,  <32.754063, 28.638250, 42.737122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445602, 28.405806, 42.779701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803139, 28.240389, 42.849018>,  <34.017662, 28.141140, 42.890610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803139, 28.240389, 42.849018>,  <33.445602, 28.405806, 42.779701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803139, 28.240389, 42.849018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233983, 0.100512, -0.967031,
		0.382489, 0.904921, 0.186603,
		0.893843, -0.413541, 0.173291,
		34.071293, 28.116327, 42.901005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869343, 28.848127, 42.419342>,  <33.445602, 28.405806, 42.779701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869343, 28.848127, 42.419342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100964, 28.525711, 42.468327>,  <34.239937, 28.332262, 42.497719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100964, 28.525711, 42.468327>,  <33.869343, 28.848127, 42.419342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100964, 28.525711, 42.468327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313884, 0.081777, -0.945933,
		0.752446, 0.586184, 0.300356,
		0.579053, -0.806040, 0.122462,
		34.274681, 28.283899, 42.505066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475945, 28.975183, 42.098591>,  <33.869343, 28.848127, 42.419342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475945, 28.975183, 42.098591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459049, 28.575798, 42.112953>,  <34.448914, 28.336166, 42.121571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459049, 28.575798, 42.112953>,  <34.475945, 28.975183, 42.098591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459049, 28.575798, 42.112953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368262, -0.048965, -0.928432,
		0.928762, -0.025989, 0.369764,
		-0.042235, -0.998462, 0.035906,
		34.446381, 28.276258, 42.123726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172070, 28.791744, 42.030273>,  <34.475945, 28.975183, 42.098591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172070, 28.791744, 42.030273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909775, 28.519287, 41.900013>,  <34.752396, 28.355812, 41.821857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909775, 28.519287, 41.900013>,  <35.172070, 28.791744, 42.030273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909775, 28.519287, 41.900013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467118, -0.027162, -0.883778,
		0.593134, -0.731647, 0.335985,
		-0.655739, -0.681143, -0.325655,
		34.713055, 28.314945, 41.802315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534225, 28.249968, 41.639473>,  <35.172070, 28.791744, 42.030273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534225, 28.249968, 41.639473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156395, 28.231182, 41.509506>,  <34.929695, 28.219910, 41.431526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156395, 28.231182, 41.509506>,  <35.534225, 28.249968, 41.639473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156395, 28.231182, 41.509506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323535, 0.034763, -0.945578,
		0.055713, -0.998291, -0.017638,
		-0.944575, -0.046975, -0.324919,
		34.873024, 28.217093, 41.412029>
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
