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
	<24.244242, 34.676224, 34.781685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337040, 34.874538, 35.116440>,  <24.392719, 34.993526, 35.317291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337040, 34.874538, 35.116440>,  <24.244242, 34.676224, 34.781685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337040, 34.874538, 35.116440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705136, -0.678367, 0.206402,
		0.670046, 0.542235, -0.506971,
		0.231994, 0.495783, 0.836886,
		24.406639, 35.023273, 35.367504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.931650, 34.646076, 34.714428>,  <24.244242, 34.676224, 34.781685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.931650, 34.646076, 34.714428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840084, 34.745045, 35.091019>,  <24.785145, 34.804424, 35.316975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840084, 34.745045, 35.091019>,  <24.931650, 34.646076, 34.714428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840084, 34.745045, 35.091019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771299, -0.543946, 0.330486,
		0.593882, 0.801815, -0.066315,
		-0.228917, 0.247418, 0.941478,
		24.771410, 34.819271, 35.373463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247578, 34.153442, 34.272842>,  <24.931650, 34.646076, 34.714428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247578, 34.153442, 34.272842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256016, 34.010052, 33.899525>,  <25.261078, 33.924015, 33.675533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256016, 34.010052, 33.899525>,  <25.247578, 34.153442, 34.272842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256016, 34.010052, 33.899525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479885, -0.815309, 0.324007,
		-0.877078, -0.454711, 0.154832,
		0.021093, -0.358481, -0.933299,
		25.262344, 33.902508, 33.619534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169647, 33.442795, 34.317829>,  <25.247578, 34.153442, 34.272842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169647, 33.442795, 34.317829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341047, 33.511620, 33.963024>,  <25.443888, 33.552914, 33.750141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341047, 33.511620, 33.963024>,  <25.169647, 33.442795, 34.317829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341047, 33.511620, 33.963024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657958, -0.732246, 0.175807,
		-0.619258, -0.658947, -0.426977,
		0.428499, 0.172063, -0.887008,
		25.469597, 33.563240, 33.696922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121983, 32.933445, 33.850010>,  <25.169647, 33.442795, 34.317829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121983, 32.933445, 33.850010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468863, 33.124512, 33.793724>,  <25.676991, 33.239151, 33.759953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468863, 33.124512, 33.793724>,  <25.121983, 32.933445, 33.850010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468863, 33.124512, 33.793724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497592, -0.842147, 0.207822,
		-0.019236, -0.250244, -0.967992,
		0.867198, 0.477667, -0.140719,
		25.729021, 33.267811, 33.751507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455540, 32.508270, 33.359028>,  <25.121983, 32.933445, 33.850010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455540, 32.508270, 33.359028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690712, 32.703995, 33.616684>,  <25.831816, 32.821430, 33.771278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690712, 32.703995, 33.616684>,  <25.455540, 32.508270, 33.359028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690712, 32.703995, 33.616684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335427, -0.872085, 0.356309,
		0.736087, 0.006575, -0.676855,
		0.587932, 0.489310, 0.644136,
		25.867092, 32.850788, 33.809925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067015, 32.264946, 33.293476>,  <25.455540, 32.508270, 33.359028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067015, 32.264946, 33.293476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112593, 32.437443, 33.651482>,  <26.139938, 32.540939, 33.866283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112593, 32.437443, 33.651482>,  <26.067015, 32.264946, 33.293476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112593, 32.437443, 33.651482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365827, -0.855793, 0.365772,
		0.923681, 0.285743, -0.255272,
		0.113943, 0.431242, 0.895013,
		26.146776, 32.566814, 33.919987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721565, 32.106735, 33.591949>,  <26.067015, 32.264946, 33.293476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721565, 32.106735, 33.591949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506088, 32.208389, 33.913254>,  <26.376802, 32.269382, 34.106037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506088, 32.208389, 33.913254>,  <26.721565, 32.106735, 33.591949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506088, 32.208389, 33.913254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354292, -0.796689, 0.489656,
		0.764386, 0.548363, 0.339134,
		-0.538694, 0.254134, 0.803259,
		26.344481, 32.284630, 34.154232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120081, 31.736614, 33.940910>,  <26.721565, 32.106735, 33.591949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120081, 31.736614, 33.940910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801767, 31.824591, 34.166603>,  <26.610779, 31.877377, 34.302017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801767, 31.824591, 34.166603>,  <27.120081, 31.736614, 33.940910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801767, 31.824591, 34.166603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130354, -0.847663, 0.514272,
		0.591386, 0.482799, 0.645885,
		-0.795783, 0.219940, 0.564231,
		26.563032, 31.890574, 34.335873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387426, 31.574844, 34.639671>,  <27.120081, 31.736614, 33.940910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387426, 31.574844, 34.639671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988230, 31.591396, 34.658863>,  <26.748713, 31.601328, 34.670380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988230, 31.591396, 34.658863>,  <27.387426, 31.574844, 34.639671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988230, 31.591396, 34.658863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017019, -0.904515, 0.426102,
		0.061034, 0.424429, 0.903402,
		-0.997991, 0.041381, 0.047983,
		26.688833, 31.603811, 34.673260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211973, 31.349619, 35.328789>,  <27.387426, 31.574844, 34.639671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211973, 31.349619, 35.328789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867996, 31.298510, 35.131134>,  <26.661610, 31.267843, 35.012543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867996, 31.298510, 35.131134>,  <27.211973, 31.349619, 35.328789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867996, 31.298510, 35.131134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141738, -0.870289, 0.471707,
		-0.490314, 0.475679, 0.730289,
		-0.859944, -0.127774, -0.494137,
		26.610014, 31.260178, 34.982895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717905, 31.191017, 35.823700>,  <27.211973, 31.349619, 35.328789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717905, 31.191017, 35.823700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593624, 31.042984, 35.473499>,  <26.519056, 30.954165, 35.263378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593624, 31.042984, 35.473499>,  <26.717905, 31.191017, 35.823700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593624, 31.042984, 35.473499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109912, -0.900921, 0.419833,
		-0.944131, 0.226671, 0.239241,
		-0.310701, -0.370082, -0.875502,
		26.500414, 30.931959, 35.210850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075930, 30.921183, 36.031754>,  <26.717905, 31.191017, 35.823700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075930, 30.921183, 36.031754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181744, 30.767349, 35.678005>,  <26.245232, 30.675049, 35.465755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181744, 30.767349, 35.678005>,  <26.075930, 30.921183, 36.031754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181744, 30.767349, 35.678005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116641, -0.923069, 0.366521,
		-0.957296, 0.006196, -0.289043,
		0.264536, -0.384583, -0.884373,
		26.261105, 30.651974, 35.412693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598896, 30.445248, 35.918251>,  <26.075930, 30.921183, 36.031754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598896, 30.445248, 35.918251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897467, 30.338682, 35.674328>,  <26.076609, 30.274742, 35.527973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897467, 30.338682, 35.674328>,  <25.598896, 30.445248, 35.918251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897467, 30.338682, 35.674328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137839, -0.958389, 0.249981,
		-0.651035, -0.102537, -0.752090,
		0.746427, -0.266414, -0.609811,
		26.121395, 30.258759, 35.491383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381290, 29.784481, 35.610699>,  <25.598896, 30.445248, 35.918251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381290, 29.784481, 35.610699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774061, 29.794125, 35.535614>,  <26.009724, 29.799910, 35.490562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774061, 29.794125, 35.535614>,  <25.381290, 29.784481, 35.610699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774061, 29.794125, 35.535614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027532, -0.999498, 0.015664,
		-0.187236, -0.020549, -0.982100,
		0.981929, 0.024107, -0.187708,
		26.068640, 29.801357, 35.479301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.477570, 29.317766, 35.080353>,  <25.381290, 29.784481, 35.610699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.477570, 29.317766, 35.080353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831333, 29.357327, 35.262798>,  <26.043592, 29.381062, 35.372265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831333, 29.357327, 35.262798>,  <25.477570, 29.317766, 35.080353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831333, 29.357327, 35.262798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155255, -0.983975, -0.087686,
		0.440130, 0.148364, -0.885592,
		0.884410, 0.098899, 0.456111,
		26.096657, 29.386995, 35.399632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048880, 29.049953, 34.633064>,  <25.477570, 29.317766, 35.080353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048880, 29.049953, 34.633064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171492, 28.997429, 35.010170>,  <26.245060, 28.965914, 35.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171492, 28.997429, 35.010170>,  <26.048880, 29.049953, 34.633064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171492, 28.997429, 35.010170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158037, -0.969672, -0.186443,
		0.938649, 0.206142, -0.276484,
		0.306532, -0.131310, 0.942760,
		26.263451, 28.958036, 35.292999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176989, 28.307917, 34.646633>,  <26.048880, 29.049953, 34.633064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176989, 28.307917, 34.646633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305168, 28.378635, 35.018883>,  <26.382076, 28.421066, 35.242233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305168, 28.378635, 35.018883>,  <26.176989, 28.307917, 34.646633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305168, 28.378635, 35.018883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296175, -0.951873, 0.078851,
		0.899773, 0.250359, -0.357392,
		0.320451, 0.176799, 0.930620,
		26.401304, 28.431675, 35.298069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743837, 27.910110, 34.744556>,  <26.176989, 28.307917, 34.646633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743837, 27.910110, 34.744556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638332, 27.993271, 35.121323>,  <26.575029, 28.043167, 35.347382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638332, 27.993271, 35.121323>,  <26.743837, 27.910110, 34.744556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638332, 27.993271, 35.121323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290472, -0.914050, 0.283089,
		0.919812, 0.348269, 0.180705,
		-0.263764, 0.207899, 0.941916,
		26.559202, 28.055641, 35.403896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371374, 27.810106, 35.216393>,  <26.743837, 27.910110, 34.744556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371374, 27.810106, 35.216393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040606, 27.789272, 35.440353>,  <26.842144, 27.776772, 35.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040606, 27.789272, 35.440353>,  <27.371374, 27.810106, 35.216393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040606, 27.789272, 35.440353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296511, -0.886413, 0.355462,
		0.477791, 0.459956, 0.748436,
		-0.826920, -0.052083, 0.559902,
		26.792530, 27.773647, 35.608322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620440, 27.552111, 35.811775>,  <27.371374, 27.810106, 35.216393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620440, 27.552111, 35.811775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227211, 27.494259, 35.856766>,  <26.991274, 27.459547, 35.883759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227211, 27.494259, 35.856766>,  <27.620440, 27.552111, 35.811775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227211, 27.494259, 35.856766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178342, -0.896056, 0.406543,
		0.041988, 0.419721, 0.906681,
		-0.983072, -0.144630, 0.112478,
		26.932289, 27.450871, 35.890511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595654, 27.387829, 36.486309>,  <27.620440, 27.552111, 35.811775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595654, 27.387829, 36.486309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288429, 27.225578, 36.288097>,  <27.104095, 27.128227, 36.169170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288429, 27.225578, 36.288097>,  <27.595654, 27.387829, 36.486309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288429, 27.225578, 36.288097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180011, -0.879364, 0.440812,
		-0.614555, 0.249370, 0.748423,
		-0.768061, -0.405628, -0.495528,
		27.058010, 27.103889, 36.139439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265306, 26.974625, 36.939346>,  <27.595654, 27.387829, 36.486309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265306, 26.974625, 36.939346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179186, 26.822020, 36.579769>,  <27.127514, 26.730457, 36.364025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179186, 26.822020, 36.579769>,  <27.265306, 26.974625, 36.939346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179186, 26.822020, 36.579769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309651, -0.899697, 0.307671,
		-0.926155, -0.212116, 0.311840,
		-0.215299, -0.381513, -0.898941,
		27.114595, 26.707565, 36.310085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974560, 26.375521, 37.089001>,  <27.265306, 26.974625, 36.939346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974560, 26.375521, 37.089001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068794, 26.318434, 36.704475>,  <27.125336, 26.284182, 36.473759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068794, 26.318434, 36.704475>,  <26.974560, 26.375521, 37.089001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068794, 26.318434, 36.704475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288841, -0.934179, 0.209476,
		-0.927938, -0.327018, -0.178858,
		0.235587, -0.142719, -0.961317,
		27.139471, 26.275618, 36.416080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767422, 25.631111, 37.005325>,  <26.974560, 26.375521, 37.089001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767422, 25.631111, 37.005325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016254, 25.747948, 36.714756>,  <27.165554, 25.818050, 36.540413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016254, 25.747948, 36.714756>,  <26.767422, 25.631111, 37.005325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016254, 25.747948, 36.714756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522575, -0.845799, 0.107420,
		-0.583035, -0.446436, -0.678796,
		0.622082, 0.292092, -0.726427,
		27.202879, 25.835575, 36.496826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489977, 25.195568, 36.408020>,  <26.767422, 25.631111, 37.005325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489977, 25.195568, 36.408020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867243, 25.320744, 36.452751>,  <27.093603, 25.395849, 36.479591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867243, 25.320744, 36.452751>,  <26.489977, 25.195568, 36.408020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867243, 25.320744, 36.452751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252629, -0.893807, 0.370523,
		0.215906, -0.321213, -0.922067,
		0.943166, 0.312939, 0.111830,
		27.150192, 25.414625, 36.486301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943314, 24.719149, 36.103752>,  <26.489977, 25.195568, 36.408020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943314, 24.719149, 36.103752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132616, 24.900230, 36.406033>,  <27.246199, 25.008879, 36.587402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132616, 24.900230, 36.406033>,  <26.943314, 24.719149, 36.103752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132616, 24.900230, 36.406033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174979, -0.889068, 0.423014,
		0.863371, -0.067962, -0.499971,
		0.473257, 0.452703, 0.755704,
		27.274593, 25.036041, 36.632744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301950, 24.228607, 36.473816>,  <26.943314, 24.719149, 36.103752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301950, 24.228607, 36.473816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357872, 24.490606, 36.770851>,  <27.391426, 24.647806, 36.949070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357872, 24.490606, 36.770851>,  <27.301950, 24.228607, 36.473816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357872, 24.490606, 36.770851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387727, -0.726278, 0.567616,
		0.911111, 0.208565, -0.355497,
		0.139805, 0.654997, 0.742586,
		27.399813, 24.687105, 36.993626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835875, 24.328510, 35.848621>,  <27.301950, 24.228607, 36.473816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835875, 24.328510, 35.848621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507383, 24.289780, 35.623692>,  <27.310289, 24.266541, 35.488731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507383, 24.289780, 35.623692>,  <27.835875, 24.328510, 35.848621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507383, 24.289780, 35.623692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073150, 0.959499, -0.272048,
		0.565894, -0.264547, -0.780883,
		-0.821226, -0.096828, -0.562327,
		27.261015, 24.260731, 35.454994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988384, 24.703787, 35.253883>,  <27.835875, 24.328510, 35.848621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988384, 24.703787, 35.253883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589342, 24.687086, 35.275936>,  <27.349916, 24.677065, 35.289169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589342, 24.687086, 35.275936>,  <27.988384, 24.703787, 35.253883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589342, 24.687086, 35.275936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056336, 0.953013, -0.297644,
		-0.040117, -0.300037, -0.953083,
		-0.997605, -0.041753, 0.055135,
		27.290060, 24.674561, 35.292477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628923, 24.783224, 34.734543>,  <27.988384, 24.703787, 35.253883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628923, 24.783224, 34.734543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453888, 24.697620, 34.385208>,  <28.348866, 24.646257, 34.175606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453888, 24.697620, 34.385208>,  <28.628923, 24.783224, 34.734543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453888, 24.697620, 34.385208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670041, 0.570097, -0.475430,
		0.599633, -0.793214, -0.106073,
		-0.437589, -0.214010, -0.873336,
		28.322611, 24.633417, 34.123207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170713, 24.790201, 34.227619>,  <28.628923, 24.783224, 34.734543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170713, 24.790201, 34.227619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817122, 24.870392, 34.058678>,  <28.604965, 24.918507, 33.957314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817122, 24.870392, 34.058678>,  <29.170713, 24.790201, 34.227619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817122, 24.870392, 34.058678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419378, 0.739310, -0.526824,
		0.206637, -0.642830, -0.737612,
		-0.883981, 0.200476, -0.422357,
		28.551928, 24.930534, 33.931969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318829, 25.042444, 33.635906>,  <29.170713, 24.790201, 34.227619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318829, 25.042444, 33.635906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946579, 25.183033, 33.676708>,  <28.723228, 25.267387, 33.701191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946579, 25.183033, 33.676708>,  <29.318829, 25.042444, 33.635906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946579, 25.183033, 33.676708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167597, 0.657063, -0.734969,
		-0.325347, -0.666884, -0.670384,
		-0.930624, 0.351474, 0.102006,
		28.667393, 25.288475, 33.707310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958109, 25.293821, 33.017319>,  <29.318829, 25.042444, 33.635906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958109, 25.293821, 33.017319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737856, 25.477339, 33.296265>,  <28.605705, 25.587448, 33.463631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737856, 25.477339, 33.296265>,  <28.958109, 25.293821, 33.017319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737856, 25.477339, 33.296265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061657, 0.855489, -0.514137,
		-0.832469, -0.240102, -0.499346,
		-0.550631, 0.458791, 0.697364,
		28.572666, 25.614977, 33.505474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887445, 25.891863, 32.733551>,  <28.958109, 25.293821, 33.017319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887445, 25.891863, 32.733551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673817, 26.001923, 33.053314>,  <28.545639, 26.067959, 33.245174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673817, 26.001923, 33.053314>,  <28.887445, 25.891863, 32.733551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673817, 26.001923, 33.053314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028876, 0.950943, -0.308015,
		-0.844947, -0.141418, -0.515816,
		-0.534071, 0.275151, 0.799413,
		28.513596, 26.084467, 33.293137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334963, 26.329168, 32.575768>,  <28.887445, 25.891863, 32.733551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334963, 26.329168, 32.575768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406935, 26.392956, 32.964035>,  <28.450119, 26.431229, 33.196995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406935, 26.392956, 32.964035>,  <28.334963, 26.329168, 32.575768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406935, 26.392956, 32.964035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115775, 0.983347, -0.140089,
		-0.976842, -0.087173, 0.195396,
		0.179930, 0.159467, 0.970667,
		28.460915, 26.440796, 33.255234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789433, 26.715775, 32.918579>,  <28.334963, 26.329168, 32.575768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789433, 26.715775, 32.918579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116966, 26.776985, 33.139881>,  <28.313486, 26.813711, 33.272663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116966, 26.776985, 33.139881>,  <27.789433, 26.715775, 32.918579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116966, 26.776985, 33.139881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115240, 0.988013, -0.102717,
		-0.562346, 0.020351, 0.826652,
		0.818833, 0.153026, 0.553260,
		28.362616, 26.822893, 33.305859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620237, 26.938166, 33.547321>,  <27.789433, 26.715775, 32.918579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620237, 26.938166, 33.547321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998852, 27.061144, 33.508236>,  <28.226021, 27.134930, 33.484787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998852, 27.061144, 33.508236>,  <27.620237, 26.938166, 33.547321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998852, 27.061144, 33.508236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306802, 0.951521, 0.021905,
		0.099709, 0.009245, 0.994974,
		0.946536, 0.307444, -0.097712,
		28.282812, 27.153378, 33.478924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639486, 27.541311, 34.043587>,  <27.620237, 26.938166, 33.547321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639486, 27.541311, 34.043587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975088, 27.570435, 33.827892>,  <28.176449, 27.587908, 33.698475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975088, 27.570435, 33.827892>,  <27.639486, 27.541311, 34.043587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975088, 27.570435, 33.827892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116120, 0.992136, -0.046717,
		0.531591, 0.101812, 0.840860,
		0.839003, 0.072806, -0.539233,
		28.226789, 27.592276, 33.666122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120527, 28.180401, 34.310139>,  <27.639486, 27.541311, 34.043587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120527, 28.180401, 34.310139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218077, 28.114702, 33.927818>,  <28.276606, 28.075283, 33.698425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218077, 28.114702, 33.927818>,  <28.120527, 28.180401, 34.310139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218077, 28.114702, 33.927818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059493, 0.986231, -0.154299,
		0.967981, -0.019234, 0.250287,
		0.243873, -0.164249, -0.955797,
		28.291239, 28.065428, 33.641079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723848, 28.584000, 34.118492>,  <28.120527, 28.180401, 34.310139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723848, 28.584000, 34.118492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550365, 28.503504, 33.767174>,  <28.446276, 28.455206, 33.556385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550365, 28.503504, 33.767174>,  <28.723848, 28.584000, 34.118492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550365, 28.503504, 33.767174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098374, 0.979490, -0.175847,
		0.895667, 0.010135, -0.444610,
		-0.433709, -0.201238, -0.878294,
		28.420254, 28.443132, 33.503685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162191, 28.945232, 33.667725>,  <28.723848, 28.584000, 34.118492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162191, 28.945232, 33.667725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835299, 28.880238, 33.446552>,  <28.639162, 28.841240, 33.313850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835299, 28.880238, 33.446552>,  <29.162191, 28.945232, 33.667725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835299, 28.880238, 33.446552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030895, 0.945697, -0.323577,
		0.575478, -0.281520, -0.767835,
		-0.817233, -0.162489, -0.552926,
		28.590128, 28.831491, 33.280674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320745, 29.151657, 32.933228>,  <29.162191, 28.945232, 33.667725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320745, 29.151657, 32.933228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927662, 29.181892, 33.000835>,  <28.691813, 29.200033, 33.041401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927662, 29.181892, 33.000835>,  <29.320745, 29.151657, 32.933228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927662, 29.181892, 33.000835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020494, 0.951667, -0.306445,
		-0.184016, -0.297683, -0.936762,
		-0.982710, 0.075589, 0.169022,
		28.632849, 29.204569, 33.051540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048824, 29.513130, 32.323009>,  <29.320745, 29.151657, 32.933228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048824, 29.513130, 32.323009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741358, 29.559519, 32.574631>,  <28.556877, 29.587351, 32.725601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741358, 29.559519, 32.574631>,  <29.048824, 29.513130, 32.323009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741358, 29.559519, 32.574631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145294, 0.926066, -0.348269,
		-0.622931, -0.359100, -0.694985,
		-0.768666, 0.115970, 0.629050,
		28.510757, 29.594311, 32.763344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435106, 29.755920, 31.935112>,  <29.048824, 29.513130, 32.323009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435106, 29.755920, 31.935112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381805, 29.849617, 32.320312>,  <28.349825, 29.905836, 32.551434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381805, 29.849617, 32.320312>,  <28.435106, 29.755920, 31.935112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381805, 29.849617, 32.320312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324102, 0.907944, -0.265697,
		-0.936591, -0.347516, -0.045066,
		-0.133251, 0.234243, 0.963003,
		28.341829, 29.919889, 32.609215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902987, 30.070412, 31.837933>,  <28.435106, 29.755920, 31.935112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902987, 30.070412, 31.837933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039032, 30.185507, 32.196045>,  <28.120659, 30.254564, 32.410912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039032, 30.185507, 32.196045>,  <27.902987, 30.070412, 31.837933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039032, 30.185507, 32.196045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375701, 0.914335, -0.151132,
		-0.862075, -0.284957, 0.419079,
		0.340112, 0.287735, 0.895283,
		28.141066, 30.271828, 32.464630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218208, 30.369843, 32.196301>,  <27.902987, 30.070412, 31.837933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218208, 30.369843, 32.196301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548161, 30.501587, 32.380081>,  <27.746132, 30.580633, 32.490349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548161, 30.501587, 32.380081>,  <27.218208, 30.369843, 32.196301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548161, 30.501587, 32.380081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336163, 0.939217, -0.069755,
		-0.454496, -0.096910, 0.885461,
		0.824880, 0.329363, 0.459448,
		27.795624, 30.600395, 32.517914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981640, 30.981503, 32.369820>,  <27.218208, 30.369843, 32.196301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981640, 30.981503, 32.369820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379955, 30.999819, 32.401596>,  <27.618944, 31.010809, 32.420662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379955, 30.999819, 32.401596>,  <26.981640, 30.981503, 32.369820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379955, 30.999819, 32.401596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045806, 0.998949, -0.001607,
		-0.079435, -0.002039, 0.996838,
		0.995787, 0.045789, 0.079444,
		27.678692, 31.013556, 32.425430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142216, 31.637812, 32.774837>,  <26.981640, 30.981503, 32.369820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142216, 31.637812, 32.774837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488049, 31.534266, 32.602566>,  <27.695549, 31.472137, 32.499203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488049, 31.534266, 32.602566>,  <27.142216, 31.637812, 32.774837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488049, 31.534266, 32.602566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236097, 0.965866, -0.106586,
		0.443569, -0.009529, 0.896189,
		0.864583, -0.258866, -0.430678,
		27.747423, 31.456606, 32.473362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651531, 31.883718, 33.193836>,  <27.142216, 31.637812, 32.774837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651531, 31.883718, 33.193836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808969, 31.833639, 32.829548>,  <27.903433, 31.803593, 32.610973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808969, 31.833639, 32.829548>,  <27.651531, 31.883718, 33.193836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808969, 31.833639, 32.829548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232407, 0.972052, -0.033187,
		0.889422, -0.198595, 0.411690,
		0.393593, -0.125197, -0.910719,
		27.927048, 31.796080, 32.556332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333992, 32.060230, 33.240559>,  <27.651531, 31.883718, 33.193836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333992, 32.060230, 33.240559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204426, 32.102016, 32.864437>,  <28.126686, 32.127090, 32.638763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204426, 32.102016, 32.864437>,  <28.333992, 32.060230, 33.240559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204426, 32.102016, 32.864437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242762, 0.969786, 0.024117,
		0.914409, -0.220457, -0.339492,
		-0.323917, 0.104468, -0.940300,
		28.107250, 32.133358, 32.582348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577085, 32.720463, 33.122421>,  <28.333992, 32.060230, 33.240559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577085, 32.720463, 33.122421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365858, 32.660946, 32.787994>,  <28.239120, 32.625237, 32.587337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365858, 32.660946, 32.787994>,  <28.577085, 32.720463, 33.122421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365858, 32.660946, 32.787994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011130, 0.983232, -0.182016,
		0.849127, -0.105423, -0.517560,
		-0.528071, -0.148794, -0.836063,
		28.207438, 32.616306, 32.537174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954613, 33.081242, 32.508686>,  <28.577085, 32.720463, 33.122421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954613, 33.081242, 32.508686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564371, 33.037380, 32.432613>,  <28.330225, 33.011063, 32.386971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564371, 33.037380, 32.432613>,  <28.954613, 33.081242, 32.508686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564371, 33.037380, 32.432613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062089, 0.968775, -0.240043,
		0.210566, -0.222379, -0.951950,
		-0.975606, -0.109651, -0.190183,
		28.271688, 33.004486, 32.375557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795460, 33.266426, 31.835560>,  <28.954613, 33.081242, 32.508686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795460, 33.266426, 31.835560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461500, 33.328068, 32.046917>,  <28.261126, 33.365055, 32.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461500, 33.328068, 32.046917>,  <28.795460, 33.266426, 31.835560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461500, 33.328068, 32.046917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024507, 0.948643, -0.315398,
		-0.549860, -0.276275, -0.788242,
		-0.834897, 0.154107, 0.528392,
		28.211031, 33.374298, 32.205433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320400, 33.748756, 32.252636>,  <28.795460, 33.266426, 31.835560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320400, 33.748756, 32.252636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418385, 33.363400, 32.209072>,  <29.477175, 33.132183, 32.182934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418385, 33.363400, 32.209072>,  <29.320400, 33.748756, 32.252636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418385, 33.363400, 32.209072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814208, 0.143428, 0.562577,
		-0.526364, -0.226488, 0.819539,
		0.244962, -0.963396, -0.108913,
		29.491873, 33.074379, 32.176399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505846, 33.314625, 32.938381>,  <29.320400, 33.748756, 32.252636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505846, 33.314625, 32.938381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715992, 33.164192, 32.633080>,  <29.842079, 33.073933, 32.449898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715992, 33.164192, 32.633080>,  <29.505846, 33.314625, 32.938381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715992, 33.164192, 32.633080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839986, 0.086172, 0.535722,
		-0.135705, -0.922570, 0.361178,
		0.525364, -0.376085, -0.763252,
		29.873602, 33.051369, 32.404102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863775, 32.796150, 33.199005>,  <29.505846, 33.314625, 32.938381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863775, 32.796150, 33.199005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048403, 32.959969, 32.884243>,  <30.159180, 33.058262, 32.695385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048403, 32.959969, 32.884243>,  <29.863775, 32.796150, 33.199005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048403, 32.959969, 32.884243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706988, 0.365981, 0.605166,
		0.535838, -0.835660, -0.120620,
		0.461569, 0.409548, -0.786908,
		30.186874, 33.082832, 32.648170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478125, 32.428753, 33.198448>,  <29.863775, 32.796150, 33.199005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478125, 32.428753, 33.198448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484573, 32.805466, 33.064117>,  <30.488441, 33.031494, 32.983521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484573, 32.805466, 33.064117>,  <30.478125, 32.428753, 33.198448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484573, 32.805466, 33.064117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635448, 0.249668, 0.730666,
		0.771976, -0.225179, -0.594431,
		0.016120, 0.941786, -0.335827,
		30.489408, 33.088001, 32.963367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091408, 32.634945, 33.421707>,  <30.478125, 32.428753, 33.198448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091408, 32.634945, 33.421707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921736, 32.989826, 33.349110>,  <30.819933, 33.202755, 33.305550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921736, 32.989826, 33.349110>,  <31.091408, 32.634945, 33.421707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921736, 32.989826, 33.349110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575678, 0.418893, 0.702228,
		0.699047, 0.193386, -0.688429,
		-0.424179, 0.887204, -0.181497,
		30.794481, 33.255989, 33.294659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604172, 33.106781, 33.288761>,  <31.091408, 32.634945, 33.421707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604172, 33.106781, 33.288761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265858, 33.277119, 33.417324>,  <31.062868, 33.379322, 33.494461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265858, 33.277119, 33.417324>,  <31.604172, 33.106781, 33.288761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265858, 33.277119, 33.417324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470045, 0.309775, 0.826497,
		0.252395, 0.850116, -0.462169,
		-0.845786, 0.425844, 0.321407,
		31.012121, 33.404873, 33.513748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861830, 33.336723, 34.031918>,  <31.604172, 33.106781, 33.288761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861830, 33.336723, 34.031918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473339, 33.415070, 34.086109>,  <31.240244, 33.462078, 34.118626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473339, 33.415070, 34.086109>,  <31.861830, 33.336723, 34.031918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473339, 33.415070, 34.086109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215837, 0.483454, 0.848344,
		0.100668, 0.853175, -0.511819,
		-0.971226, 0.195870, 0.135478,
		31.181971, 33.473831, 34.126751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897861, 33.953697, 34.335014>,  <31.861830, 33.336723, 34.031918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897861, 33.953697, 34.335014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516300, 33.851753, 34.398403>,  <31.287363, 33.790588, 34.436436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516300, 33.851753, 34.398403>,  <31.897861, 33.953697, 34.335014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516300, 33.851753, 34.398403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072964, 0.709147, 0.701275,
		-0.291107, 0.657387, -0.695054,
		-0.953904, -0.254860, 0.158472,
		31.230129, 33.775295, 34.445946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331005, 34.602207, 34.245922>,  <31.897861, 33.953697, 34.335014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331005, 34.602207, 34.245922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209925, 34.325874, 34.508560>,  <31.137276, 34.160076, 34.666145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209925, 34.325874, 34.508560>,  <31.331005, 34.602207, 34.245922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209925, 34.325874, 34.508560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204842, 0.719975, 0.663080,
		-0.930813, 0.066216, -0.359449,
		-0.302701, -0.690833, 0.656598,
		31.119114, 34.118626, 34.705540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651695, 34.808289, 34.544376>,  <31.331005, 34.602207, 34.245922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651695, 34.808289, 34.544376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835772, 34.570522, 34.808163>,  <30.946217, 34.427864, 34.966434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835772, 34.570522, 34.808163>,  <30.651695, 34.808289, 34.544376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835772, 34.570522, 34.808163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001845, 0.742155, 0.670226,
		-0.887819, -0.309647, 0.340434,
		0.460188, -0.594412, 0.659470,
		30.973827, 34.392200, 35.006004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261541, 34.754383, 35.214256>,  <30.651695, 34.808289, 34.544376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261541, 34.754383, 35.214256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659918, 34.721455, 35.228802>,  <30.898945, 34.701698, 35.237530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659918, 34.721455, 35.228802>,  <30.261541, 34.754383, 35.214256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659918, 34.721455, 35.228802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056440, 0.886092, 0.460061,
		-0.070095, -0.456142, 0.887142,
		0.995942, -0.082318, 0.036366,
		30.958700, 34.696758, 35.239712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445847, 34.814163, 35.900467>,  <30.261541, 34.754383, 35.214256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445847, 34.814163, 35.900467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811218, 34.898720, 35.761353>,  <31.030441, 34.949455, 35.677883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811218, 34.898720, 35.761353>,  <30.445847, 34.814163, 35.900467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811218, 34.898720, 35.761353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075541, 0.751627, 0.655248,
		0.399921, -0.624796, 0.670591,
		0.913431, 0.211391, -0.347789,
		31.085247, 34.962135, 35.657017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883690, 34.800243, 36.460136>,  <30.445847, 34.814163, 35.900467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883690, 34.800243, 36.460136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060974, 35.029530, 36.184460>,  <31.167345, 35.167103, 36.019054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060974, 35.029530, 36.184460>,  <30.883690, 34.800243, 36.460136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060974, 35.029530, 36.184460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173583, 0.699396, 0.693336,
		0.879452, -0.426925, 0.210477,
		0.443209, 0.573220, -0.689191,
		31.193937, 35.201496, 35.977703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554874, 35.098660, 36.734634>,  <30.883690, 34.800243, 36.460136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554874, 35.098660, 36.734634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459686, 35.346577, 36.435509>,  <31.402573, 35.495327, 36.256035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459686, 35.346577, 36.435509>,  <31.554874, 35.098660, 36.734634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459686, 35.346577, 36.435509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144785, 0.783966, 0.603685,
		0.960420, 0.035387, -0.276297,
		-0.237970, 0.619795, -0.747813,
		31.388296, 35.532516, 36.211166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004917, 35.684872, 36.820675>,  <31.554874, 35.098660, 36.734634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004917, 35.684872, 36.820675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710604, 35.813652, 36.582359>,  <31.534014, 35.890919, 36.439369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710604, 35.813652, 36.582359>,  <32.004917, 35.684872, 36.820675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710604, 35.813652, 36.582359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119670, 0.927736, 0.353532,
		0.666555, 0.188826, -0.721145,
		-0.735788, 0.321948, -0.595790,
		31.489868, 35.910236, 36.403622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264233, 36.158401, 36.412086>,  <32.004917, 35.684872, 36.820675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264233, 36.158401, 36.412086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877499, 36.260555, 36.413540>,  <31.645458, 36.321846, 36.414410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877499, 36.260555, 36.413540>,  <32.264233, 36.158401, 36.412086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877499, 36.260555, 36.413540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231752, 0.871220, 0.432744,
		0.107353, 0.419233, -0.901510,
		-0.966833, 0.255382, 0.003630,
		31.587448, 36.337170, 36.414627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306686, 36.830376, 36.230270>,  <32.264233, 36.158401, 36.412086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306686, 36.830376, 36.230270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954149, 36.765549, 36.407795>,  <31.742628, 36.726650, 36.514309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954149, 36.765549, 36.407795>,  <32.306686, 36.830376, 36.230270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954149, 36.765549, 36.407795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110551, 0.842517, 0.527203,
		-0.459364, 0.513710, -0.724629,
		-0.881342, -0.162069, 0.443813,
		31.689747, 36.716927, 36.540939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016960, 37.450493, 36.134773>,  <32.306686, 36.830376, 36.230270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016960, 37.450493, 36.134773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826836, 37.273018, 36.438675>,  <31.712761, 37.166534, 36.621014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826836, 37.273018, 36.438675>,  <32.016960, 37.450493, 36.134773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826836, 37.273018, 36.438675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115542, 0.824576, 0.553827,
		-0.872199, 0.351023, -0.340665,
		-0.475310, -0.443686, 0.759752,
		31.684242, 37.139912, 36.666599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571659, 38.046387, 36.512455>,  <32.016960, 37.450493, 36.134773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571659, 38.046387, 36.512455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539160, 37.754990, 36.784542>,  <31.519661, 37.580151, 36.947796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539160, 37.754990, 36.784542>,  <31.571659, 38.046387, 36.512455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539160, 37.754990, 36.784542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052754, 0.684663, 0.726948,
		-0.995297, 0.023178, -0.094057,
		-0.081247, -0.728491, 0.680221,
		31.514786, 37.536442, 36.988609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211559, 38.412975, 37.028015>,  <31.571659, 38.046387, 36.512455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211559, 38.412975, 37.028015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339504, 38.069229, 37.187603>,  <31.416271, 37.862980, 37.283356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339504, 38.069229, 37.187603>,  <31.211559, 38.412975, 37.028015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339504, 38.069229, 37.187603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063023, 0.439463, 0.896047,
		-0.945365, -0.261468, 0.194728,
		0.319864, -0.859364, 0.398974,
		31.435463, 37.811420, 37.307297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681204, 38.110825, 37.597885>,  <31.211559, 38.412975, 37.028015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681204, 38.110825, 37.597885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042896, 37.968700, 37.692646>,  <31.259911, 37.883427, 37.749500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042896, 37.968700, 37.692646>,  <30.681204, 38.110825, 37.597885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042896, 37.968700, 37.692646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134863, 0.288758, 0.947856,
		-0.405195, -0.889027, 0.213184,
		0.904229, -0.355315, 0.236900,
		31.314165, 37.862106, 37.763718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641441, 37.847107, 38.318806>,  <30.681204, 38.110825, 37.597885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641441, 37.847107, 38.318806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033386, 37.893574, 38.253841>,  <31.268553, 37.921455, 38.214863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033386, 37.893574, 38.253841>,  <30.641441, 37.847107, 38.318806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033386, 37.893574, 38.253841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130535, 0.242859, 0.961239,
		0.151109, -0.963081, 0.222804,
		0.979861, 0.116168, -0.162414,
		31.327345, 37.928425, 38.205116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988125, 37.552834, 38.937969>,  <30.641441, 37.847107, 38.318806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988125, 37.552834, 38.937969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243217, 37.825447, 38.794403>,  <31.396273, 37.989014, 38.708263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243217, 37.825447, 38.794403>,  <30.988125, 37.552834, 38.937969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243217, 37.825447, 38.794403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234050, 0.272473, 0.933262,
		0.733840, -0.679172, 0.014252,
		0.637729, 0.681530, -0.358912,
		31.434536, 38.029907, 38.686729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682499, 37.466301, 39.277100>,  <30.988125, 37.552834, 38.937969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682499, 37.466301, 39.277100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646553, 37.841686, 39.143703>,  <31.624987, 38.066917, 39.063667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646553, 37.841686, 39.143703>,  <31.682499, 37.466301, 39.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646553, 37.841686, 39.143703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322153, 0.344230, 0.881886,
		0.942413, -0.028185, -0.333262,
		-0.089863, 0.938462, -0.333487,
		31.619595, 38.123226, 39.043659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264168, 37.718349, 39.678383>,  <31.682499, 37.466301, 39.277100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264168, 37.718349, 39.678383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066944, 38.041733, 39.549828>,  <31.948610, 38.235764, 39.472694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066944, 38.041733, 39.549828>,  <32.264168, 37.718349, 39.678383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066944, 38.041733, 39.549828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384607, 0.533912, 0.753004,
		0.780365, 0.247667, -0.574188,
		-0.493060, 0.808455, -0.321392,
		31.919025, 38.284267, 39.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811871, 38.448021, 39.702824>,  <32.264168, 37.718349, 39.678383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811871, 38.448021, 39.702824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441139, 38.598156, 39.698647>,  <32.218700, 38.688236, 39.696140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441139, 38.598156, 39.698647>,  <32.811871, 38.448021, 39.702824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441139, 38.598156, 39.698647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170184, 0.444709, 0.879359,
		0.334703, 0.813237, -0.476046,
		-0.926829, 0.375339, -0.010446,
		32.163090, 38.710758, 39.695511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865772, 39.133385, 39.952698>,  <32.811871, 38.448021, 39.702824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865772, 39.133385, 39.952698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471294, 39.093201, 40.005352>,  <32.234608, 39.069092, 40.036945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471294, 39.093201, 40.005352>,  <32.865772, 39.133385, 39.952698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471294, 39.093201, 40.005352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060084, 0.523669, 0.849800,
		-0.154299, 0.845978, -0.510405,
		-0.986196, -0.100456, 0.131632,
		32.175434, 39.063065, 40.044842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727470, 39.758640, 40.122425>,  <32.865772, 39.133385, 39.952698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727470, 39.758640, 40.122425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406113, 39.557407, 40.249836>,  <32.213299, 39.436668, 40.326283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406113, 39.557407, 40.249836>,  <32.727470, 39.758640, 40.122425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406113, 39.557407, 40.249836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123047, 0.383132, 0.915461,
		-0.582590, 0.774674, -0.245905,
		-0.803398, -0.503081, 0.318530,
		32.165092, 39.406483, 40.345394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277325, 40.243023, 40.500172>,  <32.727470, 39.758640, 40.122425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277325, 40.243023, 40.500172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128029, 39.897552, 40.635674>,  <32.038452, 39.690269, 40.716976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128029, 39.897552, 40.635674>,  <32.277325, 40.243023, 40.500172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128029, 39.897552, 40.635674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331203, 0.465127, 0.820951,
		-0.866602, 0.194211, -0.459655,
		-0.373236, -0.863677, 0.338757,
		32.016060, 39.638451, 40.737301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555229, 40.323727, 40.673546>,  <32.277325, 40.243023, 40.500172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555229, 40.323727, 40.673546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681345, 39.993362, 40.860508>,  <31.757013, 39.795143, 40.972683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681345, 39.993362, 40.860508>,  <31.555229, 40.323727, 40.673546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681345, 39.993362, 40.860508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323287, 0.369588, 0.871143,
		-0.892233, -0.425765, -0.150480,
		0.315287, -0.825911, 0.467403,
		31.775930, 39.745590, 41.000729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162460, 40.351852, 41.287083>,  <31.555229, 40.323727, 40.673546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162460, 40.351852, 41.287083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388603, 40.032639, 41.370525>,  <31.524290, 39.841110, 41.420593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388603, 40.032639, 41.370525>,  <31.162460, 40.351852, 41.287083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388603, 40.032639, 41.370525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003235, 0.250760, 0.968044,
		-0.824839, -0.547967, 0.139188,
		0.565359, -0.798030, 0.208609,
		31.558210, 39.793228, 41.433109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792681, 39.808006, 41.614475>,  <31.162460, 40.351852, 41.287083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792681, 39.808006, 41.614475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181890, 39.845303, 41.698879>,  <31.415417, 39.867680, 41.749523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181890, 39.845303, 41.698879>,  <30.792681, 39.808006, 41.614475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181890, 39.845303, 41.698879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230567, 0.423583, 0.876023,
		-0.007702, -0.901046, 0.433656,
		0.973026, 0.093239, 0.211014,
		31.473799, 39.873276, 41.762184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783278, 39.555199, 42.199509>,  <30.792681, 39.808006, 41.614475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783278, 39.555199, 42.199509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127317, 39.759144, 42.192951>,  <31.333742, 39.881512, 42.189018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127317, 39.759144, 42.192951>,  <30.783278, 39.555199, 42.199509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127317, 39.759144, 42.192951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297573, 0.527571, 0.795688,
		0.414337, -0.679495, 0.605485,
		0.860102, 0.509859, -0.016393,
		31.385347, 39.912102, 42.188034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134687, 39.430965, 42.783745>,  <30.783278, 39.555199, 42.199509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134687, 39.430965, 42.783745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269623, 39.787407, 42.662334>,  <31.350584, 40.001274, 42.589489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269623, 39.787407, 42.662334>,  <31.134687, 39.430965, 42.783745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269623, 39.787407, 42.662334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154354, 0.370425, 0.915948,
		0.928642, -0.262135, 0.262505,
		0.337341, 0.891106, -0.303530,
		31.370825, 40.054737, 42.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361351, 39.769836, 43.342613>,  <31.134687, 39.430965, 42.783745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361351, 39.769836, 43.342613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409382, 40.070511, 43.083214>,  <31.438200, 40.250916, 42.927574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409382, 40.070511, 43.083214>,  <31.361351, 39.769836, 43.342613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409382, 40.070511, 43.083214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016926, 0.651583, 0.758388,
		0.992620, -0.102042, 0.065517,
		0.120077, 0.751683, -0.648502,
		31.445406, 40.296017, 42.888664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980728, 40.093174, 43.487251>,  <31.361351, 39.769836, 43.342613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980728, 40.093174, 43.487251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740765, 40.356060, 43.304745>,  <31.596786, 40.513790, 43.195240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740765, 40.356060, 43.304745>,  <31.980728, 40.093174, 43.487251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740765, 40.356060, 43.304745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140132, 0.647786, 0.748823,
		0.787701, 0.385288, -0.480709,
		-0.599909, 0.657212, -0.456270,
		31.560793, 40.553223, 43.167862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247307, 40.791527, 43.563885>,  <31.980728, 40.093174, 43.487251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247307, 40.791527, 43.563885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859125, 40.853302, 43.489731>,  <31.626217, 40.890369, 43.445240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859125, 40.853302, 43.489731>,  <32.247307, 40.791527, 43.563885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859125, 40.853302, 43.489731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041236, 0.650855, 0.758081,
		0.237737, 0.743327, -0.625256,
		-0.970454, 0.154441, -0.185384,
		31.567989, 40.899635, 43.434116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989309, 41.552689, 43.156010>,  <32.247307, 40.791527, 43.563885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989309, 41.552689, 43.156010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748693, 41.359577, 43.410591>,  <31.604324, 41.243710, 43.563339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748693, 41.359577, 43.410591>,  <31.989309, 41.552689, 43.156010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748693, 41.359577, 43.410591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256009, 0.638199, 0.726059,
		-0.756711, 0.599691, -0.260306,
		-0.601538, -0.482776, 0.636458,
		31.568232, 41.214745, 43.601528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607203, 42.112705, 43.500645>,  <31.989309, 41.552689, 43.156010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607203, 42.112705, 43.500645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575928, 41.797779, 43.745274>,  <31.557163, 41.608822, 43.892052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575928, 41.797779, 43.745274>,  <31.607203, 42.112705, 43.500645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575928, 41.797779, 43.745274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007139, 0.612992, 0.790056,
		-0.996913, 0.066137, -0.042307,
		-0.078186, -0.787316, 0.611572,
		31.552471, 41.561584, 43.928745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069323, 42.283001, 43.935780>,  <31.607203, 42.112705, 43.500645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069323, 42.283001, 43.935780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297144, 42.018711, 44.131351>,  <31.433836, 41.860138, 44.248695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297144, 42.018711, 44.131351>,  <31.069323, 42.283001, 43.935780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297144, 42.018711, 44.131351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054165, 0.563375, 0.824424,
		-0.820168, -0.496037, 0.285084,
		0.569554, -0.660724, 0.488930,
		31.468010, 41.820496, 44.278030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803282, 42.290592, 44.694786>,  <31.069323, 42.283001, 43.935780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803282, 42.290592, 44.694786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153454, 42.098480, 44.716522>,  <31.363558, 41.983215, 44.729565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153454, 42.098480, 44.716522>,  <30.803282, 42.290592, 44.694786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153454, 42.098480, 44.716522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182580, 0.432683, 0.882865,
		-0.447531, -0.762967, 0.466474,
		0.875432, -0.480278, 0.054336,
		31.416084, 41.954395, 44.732822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806835, 42.081966, 45.381653>,  <30.803282, 42.290592, 44.694786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806835, 42.081966, 45.381653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189411, 42.030731, 45.276722>,  <31.418957, 41.999989, 45.213764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189411, 42.030731, 45.276722>,  <30.806835, 42.081966, 45.381653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189411, 42.030731, 45.276722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291932, 0.420176, 0.859202,
		0.000172, -0.898357, 0.439266,
		0.956439, -0.128088, -0.262331,
		31.476343, 41.992306, 45.198021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058403, 41.664036, 45.914932>,  <30.806835, 42.081966, 45.381653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058403, 41.664036, 45.914932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371580, 41.848618, 45.748055>,  <31.559486, 41.959366, 45.647926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371580, 41.848618, 45.748055>,  <31.058403, 41.664036, 45.914932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371580, 41.848618, 45.748055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285126, 0.329860, 0.899942,
		0.552903, -0.823558, 0.126688,
		0.782944, 0.461459, -0.417199,
		31.606462, 41.987057, 45.622894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528524, 41.623798, 46.449760>,  <31.058403, 41.664036, 45.914932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528524, 41.623798, 46.449760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690594, 41.908527, 46.220280>,  <31.787836, 42.079365, 46.082592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690594, 41.908527, 46.220280>,  <31.528524, 41.623798, 46.449760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690594, 41.908527, 46.220280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309377, 0.483744, 0.818705,
		0.860302, -0.509209, -0.024221,
		0.405175, 0.711826, -0.573703,
		31.812147, 42.122074, 46.048168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327408, 41.676575, 46.478802>,  <31.528524, 41.623798, 46.449760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327408, 41.676575, 46.478802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165089, 42.029854, 46.384739>,  <32.067696, 42.241821, 46.328300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165089, 42.029854, 46.384739>,  <32.327408, 41.676575, 46.478802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165089, 42.029854, 46.384739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320404, 0.378431, 0.868407,
		0.855961, 0.277053, -0.436545,
		-0.405797, 0.883194, -0.235154,
		32.043350, 42.294811, 46.314194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824219, 42.072697, 46.650928>,  <32.327408, 41.676575, 46.478802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824219, 42.072697, 46.650928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514282, 42.323986, 46.622757>,  <32.328320, 42.474758, 46.605854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514282, 42.323986, 46.622757>,  <32.824219, 42.072697, 46.650928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514282, 42.323986, 46.622757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205135, 0.355249, 0.911986,
		0.597946, 0.692198, -0.404132,
		-0.774842, 0.628220, -0.070426,
		32.281830, 42.512451, 46.601631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117947, 42.737118, 46.869030>,  <32.824219, 42.072697, 46.650928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117947, 42.737118, 46.869030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722767, 42.786179, 46.906803>,  <32.485661, 42.815617, 46.929466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722767, 42.786179, 46.906803>,  <33.117947, 42.737118, 46.869030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722767, 42.786179, 46.906803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144946, 0.518875, 0.842472,
		0.054332, 0.846005, -0.530399,
		-0.987947, 0.122653, 0.094434,
		32.426384, 42.822975, 46.935135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090843, 43.138443, 47.461586>,  <33.117947, 42.737118, 46.869030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090843, 43.138443, 47.461586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698742, 43.129387, 47.383018>,  <32.463482, 43.123955, 47.335876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698742, 43.129387, 47.383018>,  <33.090843, 43.138443, 47.461586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698742, 43.129387, 47.383018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162705, 0.656833, 0.736272,
		0.112347, 0.753696, -0.647550,
		-0.980258, -0.022642, -0.196423,
		32.404663, 43.122593, 47.324093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759125, 43.828217, 47.287807>,  <33.090843, 43.138443, 47.461586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759125, 43.828217, 47.287807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559605, 43.571514, 47.520824>,  <32.439892, 43.417492, 47.660633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559605, 43.571514, 47.520824>,  <32.759125, 43.828217, 47.287807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559605, 43.571514, 47.520824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042978, 0.652981, 0.756154,
		-0.865651, 0.402205, -0.298125,
		-0.498799, -0.641753, 0.582540,
		32.409966, 43.378986, 47.695587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278812, 44.287228, 47.690296>,  <32.759125, 43.828217, 47.287807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278812, 44.287228, 47.690296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284275, 43.933891, 47.877712>,  <32.287552, 43.721889, 47.990162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284275, 43.933891, 47.877712>,  <32.278812, 44.287228, 47.690296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284275, 43.933891, 47.877712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032500, 0.467944, 0.883160,
		-0.999378, -0.027289, -0.022318,
		0.013657, -0.883337, 0.468540,
		32.288372, 43.668892, 48.018276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878096, 44.409206, 48.245865>,  <32.278812, 44.287228, 47.690296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878096, 44.409206, 48.245865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074471, 44.073257, 48.338474>,  <32.192295, 43.871689, 48.394039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074471, 44.073257, 48.338474>,  <31.878096, 44.409206, 48.245865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074471, 44.073257, 48.338474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167524, 0.351800, 0.920963,
		-0.854937, -0.413348, 0.313410,
		0.490936, -0.839869, 0.231521,
		32.221752, 43.821297, 48.407932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645365, 44.105804, 48.844547>,  <31.878096, 44.409206, 48.245865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645365, 44.105804, 48.844547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027794, 43.997101, 48.800598>,  <32.257252, 43.931881, 48.774231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027794, 43.997101, 48.800598>,  <31.645365, 44.105804, 48.844547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027794, 43.997101, 48.800598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168981, 0.204713, 0.964125,
		-0.239516, -0.940341, 0.241643,
		0.956074, -0.271756, -0.109868,
		32.314617, 43.915573, 48.767639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829174, 43.742229, 49.375584>,  <31.645365, 44.105804, 48.844547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829174, 43.742229, 49.375584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177628, 43.928677, 49.313805>,  <32.386700, 44.040546, 49.276737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177628, 43.928677, 49.313805>,  <31.829174, 43.742229, 49.375584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177628, 43.928677, 49.313805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070358, 0.192799, 0.978713,
		0.485977, -0.863457, 0.135158,
		0.871135, 0.466122, -0.154447,
		32.438969, 44.068512, 49.267471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292858, 43.450321, 49.806019>,  <31.829174, 43.742229, 49.375584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292858, 43.450321, 49.806019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391140, 43.827160, 49.714733>,  <32.450111, 44.053265, 49.659962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391140, 43.827160, 49.714733>,  <32.292858, 43.450321, 49.806019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391140, 43.827160, 49.714733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134776, 0.199944, 0.970493,
		0.959929, -0.269215, -0.077844,
		0.245707, 0.942097, -0.228216,
		32.464851, 44.109787, 49.646267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925571, 43.566586, 50.195396>,  <32.292858, 43.450321, 49.806019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925571, 43.566586, 50.195396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727535, 43.906803, 50.124443>,  <32.608715, 44.110931, 50.081871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727535, 43.906803, 50.124443>,  <32.925571, 43.566586, 50.195396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727535, 43.906803, 50.124443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046129, 0.229603, 0.972191,
		0.867617, 0.473139, -0.152908,
		-0.495090, 0.850542, -0.177382,
		32.579010, 44.161964, 50.071228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989151, 42.872963, 50.021034>,  <32.925571, 43.566586, 50.195396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989151, 42.872963, 50.021034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936287, 42.905140, 50.416218>,  <32.904568, 42.924446, 50.653328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936287, 42.905140, 50.416218>,  <32.989151, 42.872963, 50.021034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936287, 42.905140, 50.416218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677651, -0.720072, 0.149284,
		0.723410, 0.689220, 0.040653,
		-0.132162, 0.080445, 0.987958,
		32.896637, 42.929272, 50.712605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530857, 43.145351, 50.297100>,  <32.989151, 42.872963, 50.021034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530857, 43.145351, 50.297100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351841, 42.945644, 50.593868>,  <33.244431, 42.825821, 50.771927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351841, 42.945644, 50.593868>,  <33.530857, 43.145351, 50.297100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351841, 42.945644, 50.593868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831805, -0.537026, 0.140371,
		0.328347, 0.679953, 0.655632,
		-0.447537, -0.499267, 0.741918,
		33.217579, 42.795864, 50.816444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270782, 43.337791, 50.094090>,  <33.530857, 43.145351, 50.297100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270782, 43.337791, 50.094090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253002, 43.068943, 50.389732>,  <34.242332, 42.907635, 50.567116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253002, 43.068943, 50.389732>,  <34.270782, 43.337791, 50.094090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253002, 43.068943, 50.389732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763663, -0.454123, -0.458902,
		0.644083, -0.584826, -0.493088,
		-0.044455, -0.672125, 0.739103,
		34.239666, 42.867306, 50.611462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235924, 42.613140, 49.851528>,  <34.270782, 43.337791, 50.094090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235924, 42.613140, 49.851528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039536, 42.606617, 50.199940>,  <33.921703, 42.602703, 50.408985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039536, 42.606617, 50.199940>,  <34.235924, 42.613140, 49.851528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039536, 42.606617, 50.199940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821036, -0.325645, -0.468886,
		0.291290, -0.945352, 0.146493,
		-0.490967, -0.016306, 0.871025,
		33.892246, 42.601727, 50.461246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255177, 41.889816, 50.341095>,  <34.235924, 42.613140, 49.851528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255177, 41.889816, 50.341095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889641, 41.934959, 50.497128>,  <33.670319, 41.962044, 50.590748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889641, 41.934959, 50.497128>,  <34.255177, 41.889816, 50.341095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889641, 41.934959, 50.497128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256559, -0.905052, -0.339201,
		0.314762, -0.410054, 0.856026,
		-0.913839, 0.112854, 0.390079,
		33.615490, 41.968815, 50.614151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863270, 41.288048, 50.496811>,  <34.255177, 41.889816, 50.341095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863270, 41.288048, 50.496811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551228, 41.535892, 50.462105>,  <33.364002, 41.684597, 50.441280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551228, 41.535892, 50.462105>,  <33.863270, 41.288048, 50.496811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551228, 41.535892, 50.462105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446848, -0.648842, -0.615898,
		-0.437915, -0.441690, 0.783033,
		-0.780101, 0.619608, -0.086769,
		33.317196, 41.721775, 50.436073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278358, 40.902924, 50.680740>,  <33.863270, 41.288048, 50.496811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278358, 40.902924, 50.680740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177921, 41.198639, 50.430813>,  <33.117657, 41.376068, 50.280857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177921, 41.198639, 50.430813>,  <33.278358, 40.902924, 50.680740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177921, 41.198639, 50.430813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308705, -0.672957, -0.672183,
		-0.917416, 0.024104, 0.397198,
		-0.251095, 0.739289, -0.624823,
		33.102592, 41.420425, 50.243366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525726, 40.754711, 50.460976>,  <33.278358, 40.902924, 50.680740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525726, 40.754711, 50.460976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667694, 41.031391, 50.209393>,  <32.752876, 41.197399, 50.058445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667694, 41.031391, 50.209393>,  <32.525726, 40.754711, 50.460976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667694, 41.031391, 50.209393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370678, -0.513497, -0.773898,
		-0.858271, 0.507812, 0.074146,
		0.354921, 0.691698, -0.628955,
		32.774170, 41.238899, 50.020706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962858, 40.923691, 50.005821>,  <32.525726, 40.754711, 50.460976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962858, 40.923691, 50.005821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296597, 41.025970, 49.810478>,  <32.496838, 41.087337, 49.693272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296597, 41.025970, 49.810478>,  <31.962858, 40.923691, 50.005821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296597, 41.025970, 49.810478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301388, -0.530179, -0.792512,
		-0.461557, 0.808412, -0.365288,
		0.834344, 0.255696, -0.488353,
		32.546902, 41.102680, 49.663971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715052, 41.105476, 49.351986>,  <31.962858, 40.923691, 50.005821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715052, 41.105476, 49.351986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104935, 41.020138, 49.325356>,  <32.338863, 40.968933, 49.309376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104935, 41.020138, 49.325356>,  <31.715052, 41.105476, 49.351986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104935, 41.020138, 49.325356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180844, -0.577855, -0.795851,
		0.131319, 0.787760, -0.601821,
		0.974706, -0.213346, -0.066578,
		32.397346, 40.956135, 49.305382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873734, 41.414665, 48.737892>,  <31.715052, 41.105476, 49.351986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873734, 41.414665, 48.737892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154232, 41.137440, 48.804722>,  <32.322533, 40.971104, 48.844818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154232, 41.137440, 48.804722>,  <31.873734, 41.414665, 48.737892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154232, 41.137440, 48.804722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095706, -0.323742, -0.941293,
		0.706467, 0.644088, -0.293353,
		0.701246, -0.693068, 0.167070,
		32.364605, 40.929520, 48.854843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229595, 41.364281, 48.084721>,  <31.873734, 41.414665, 48.737892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229595, 41.364281, 48.084721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391510, 41.055321, 48.280495>,  <32.488659, 40.869946, 48.397961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391510, 41.055321, 48.280495>,  <32.229595, 41.364281, 48.084721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391510, 41.055321, 48.280495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121719, -0.484967, -0.866020,
		0.906274, 0.410126, -0.102291,
		0.404785, -0.772401, 0.489434,
		32.512947, 40.823601, 48.427326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938190, 41.253078, 47.831627>,  <32.229595, 41.364281, 48.084721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938190, 41.253078, 47.831627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817482, 40.905743, 47.989067>,  <32.745056, 40.697342, 48.083530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817482, 40.905743, 47.989067>,  <32.938190, 41.253078, 47.831627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817482, 40.905743, 47.989067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151255, -0.451221, -0.879501,
		0.941306, -0.205873, 0.267505,
		-0.301769, -0.868341, 0.393597,
		32.726952, 40.645241, 48.107147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524914, 40.854023, 47.871319>,  <32.938190, 41.253078, 47.831627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524914, 40.854023, 47.871319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211372, 40.606594, 47.849598>,  <33.023247, 40.458138, 47.836567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211372, 40.606594, 47.849598>,  <33.524914, 40.854023, 47.871319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211372, 40.606594, 47.849598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284161, -0.279586, -0.917106,
		0.552113, -0.734305, 0.394928,
		-0.783852, -0.618569, -0.054298,
		32.976215, 40.421024, 47.833309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793037, 40.177444, 47.737595>,  <33.524914, 40.854023, 47.871319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793037, 40.177444, 47.737595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408787, 40.119244, 47.642910>,  <33.178238, 40.084324, 47.586098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408787, 40.119244, 47.642910>,  <33.793037, 40.177444, 47.737595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408787, 40.119244, 47.642910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277182, -0.442593, -0.852808,
		0.019320, -0.884839, 0.465496,
		-0.960623, -0.145504, -0.236710,
		33.120602, 40.075592, 47.571896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870167, 39.495731, 47.500401>,  <33.793037, 40.177444, 47.737595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870167, 39.495731, 47.500401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519680, 39.637966, 47.370293>,  <33.309387, 39.723309, 47.292229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519680, 39.637966, 47.370293>,  <33.870167, 39.495731, 47.500401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519680, 39.637966, 47.370293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067503, -0.577730, -0.813432,
		-0.477165, -0.734700, 0.482214,
		-0.876217, 0.355590, -0.325267,
		33.256813, 39.744644, 47.272713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572918, 38.929794, 47.156918>,  <33.870167, 39.495731, 47.500401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572918, 38.929794, 47.156918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330601, 39.223640, 47.034702>,  <33.185211, 39.399948, 46.961372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330601, 39.223640, 47.034702>,  <33.572918, 38.929794, 47.156918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330601, 39.223640, 47.034702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052610, -0.420170, -0.905919,
		-0.793885, -0.532721, 0.293182,
		-0.605789, 0.734620, -0.305540,
		33.148865, 39.444027, 46.943039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079712, 38.630581, 46.832897>,  <33.572918, 38.929794, 47.156918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079712, 38.630581, 46.832897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097588, 39.003010, 46.688065>,  <33.108315, 39.226467, 46.601166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097588, 39.003010, 46.688065>,  <33.079712, 38.630581, 46.832897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097588, 39.003010, 46.688065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190778, -0.347816, -0.917947,
		-0.980615, 0.110099, 0.162085,
		0.044689, 0.931076, -0.362078,
		33.110992, 39.282333, 46.579441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502838, 38.681301, 46.446117>,  <33.079712, 38.630581, 46.832897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502838, 38.681301, 46.446117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745499, 38.967579, 46.307697>,  <32.891094, 39.139347, 46.224648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745499, 38.967579, 46.307697>,  <32.502838, 38.681301, 46.446117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745499, 38.967579, 46.307697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107189, -0.357681, -0.927672,
		-0.787708, 0.599867, -0.140273,
		0.606652, 0.715698, -0.346047,
		32.927494, 39.182289, 46.203884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149323, 39.089230, 45.991974>,  <32.502838, 38.681301, 46.446117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149323, 39.089230, 45.991974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532124, 39.134068, 45.884964>,  <32.761806, 39.160973, 45.820759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532124, 39.134068, 45.884964>,  <32.149323, 39.089230, 45.991974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532124, 39.134068, 45.884964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224442, -0.298082, -0.927779,
		-0.183749, 0.947935, -0.260107,
		0.957007, 0.112100, -0.267528,
		32.819225, 39.167698, 45.804707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098907, 39.311817, 45.292744>,  <32.149323, 39.089230, 45.991974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098907, 39.311817, 45.292744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470123, 39.172127, 45.344574>,  <32.692852, 39.088314, 45.375671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470123, 39.172127, 45.344574>,  <32.098907, 39.311817, 45.292744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470123, 39.172127, 45.344574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041328, -0.249174, -0.967577,
		0.370186, 0.903303, -0.216810,
		0.928038, -0.349223, 0.129573,
		32.748535, 39.067360, 45.383446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450668, 39.510460, 44.690384>,  <32.098907, 39.311817, 45.292744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450668, 39.510460, 44.690384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663120, 39.209194, 44.845634>,  <32.790592, 39.028435, 44.938786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663120, 39.209194, 44.845634>,  <32.450668, 39.510460, 44.690384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663120, 39.209194, 44.845634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203792, -0.331074, -0.921335,
		0.822416, 0.568447, -0.022355,
		0.531131, -0.753165, 0.388126,
		32.822460, 38.983246, 44.962070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092018, 39.493912, 44.264034>,  <32.450668, 39.510460, 44.690384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092018, 39.493912, 44.264034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040352, 39.148479, 44.458988>,  <33.009350, 38.941219, 44.575962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040352, 39.148479, 44.458988>,  <33.092018, 39.493912, 44.264034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040352, 39.148479, 44.458988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201709, -0.504107, -0.839755,
		0.970891, -0.010161, 0.239308,
		-0.129170, -0.863581, 0.487384,
		33.001602, 38.889404, 44.605202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413868, 39.041309, 43.819256>,  <33.092018, 39.493912, 44.264034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413868, 39.041309, 43.819256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258705, 38.761814, 44.059685>,  <33.165607, 38.594116, 44.203941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258705, 38.761814, 44.059685>,  <33.413868, 39.041309, 43.819256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258705, 38.761814, 44.059685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106098, -0.681651, -0.723944,
		0.915570, -0.217054, 0.338555,
		-0.387911, -0.698741, 0.601070,
		33.142330, 38.552193, 44.240005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878159, 38.390057, 43.879642>,  <33.413868, 39.041309, 43.819256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878159, 38.390057, 43.879642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514454, 38.257347, 43.980175>,  <33.296230, 38.177723, 44.040493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514454, 38.257347, 43.980175>,  <33.878159, 38.390057, 43.879642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514454, 38.257347, 43.980175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080618, -0.732785, -0.675668,
		0.408341, -0.594098, 0.693041,
		-0.909263, -0.331774, 0.251331,
		33.241676, 38.157814, 44.055573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892178, 37.661446, 43.964325>,  <33.878159, 38.390057, 43.879642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892178, 37.661446, 43.964325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505241, 37.744629, 43.906342>,  <33.273079, 37.794537, 43.871552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505241, 37.744629, 43.906342>,  <33.892178, 37.661446, 43.964325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505241, 37.744629, 43.906342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055544, -0.731833, -0.679217,
		-0.247334, -0.648980, 0.719479,
		-0.967337, 0.207956, -0.144961,
		33.215042, 37.807014, 43.862854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662315, 37.015545, 43.810196>,  <33.892178, 37.661446, 43.964325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662315, 37.015545, 43.810196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365173, 37.267056, 43.718285>,  <33.186890, 37.417961, 43.663136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365173, 37.267056, 43.718285>,  <33.662315, 37.015545, 43.810196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365173, 37.267056, 43.718285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380792, -0.679178, -0.627466,
		-0.550602, -0.378618, 0.743967,
		-0.742856, 0.628781, -0.229782,
		33.142315, 37.455688, 43.649349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031284, 36.720520, 43.857391>,  <33.662315, 37.015545, 43.810196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031284, 36.720520, 43.857391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985126, 37.006435, 43.581490>,  <32.957432, 37.177986, 43.415947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985126, 37.006435, 43.581490>,  <33.031284, 36.720520, 43.857391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985126, 37.006435, 43.581490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044396, -0.697411, -0.715295,
		-0.992327, -0.051919, 0.112212,
		-0.115395, 0.714789, -0.689754,
		32.950508, 37.220871, 43.374565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576382, 36.452919, 43.475246>,  <33.031284, 36.720520, 43.857391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576382, 36.452919, 43.475246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794510, 36.709038, 43.258858>,  <32.925388, 36.862709, 43.129025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794510, 36.709038, 43.258858>,  <32.576382, 36.452919, 43.475246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794510, 36.709038, 43.258858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008772, -0.640978, -0.767509,
		-0.838181, 0.423284, -0.343923,
		0.545322, 0.640295, -0.540968,
		32.958107, 36.901127, 43.096569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300678, 36.511330, 42.762924>,  <32.576382, 36.452919, 43.475246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300678, 36.511330, 42.762924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666283, 36.667568, 42.719070>,  <32.885643, 36.761311, 42.692757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666283, 36.667568, 42.719070>,  <32.300678, 36.511330, 42.762924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666283, 36.667568, 42.719070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145483, -0.567845, -0.810177,
		-0.378713, 0.724558, -0.575841,
		0.914008, 0.390600, -0.109639,
		32.940487, 36.784748, 42.686180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219765, 36.589046, 42.107651>,  <32.300678, 36.511330, 42.762924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219765, 36.589046, 42.107651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613121, 36.640671, 42.158707>,  <32.849133, 36.671646, 42.189339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613121, 36.640671, 42.158707>,  <32.219765, 36.589046, 42.107651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613121, 36.640671, 42.158707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168253, -0.384260, -0.907764,
		-0.068115, 0.914159, -0.399592,
		0.983388, 0.129065, 0.127636,
		32.908138, 36.679390, 42.196999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434944, 37.069279, 41.601143>,  <32.219765, 36.589046, 42.107651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434944, 37.069279, 41.601143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745605, 36.848793, 41.723106>,  <32.932003, 36.716503, 41.796284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745605, 36.848793, 41.723106>,  <32.434944, 37.069279, 41.601143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745605, 36.848793, 41.723106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176520, -0.274208, -0.945331,
		0.604686, 0.788020, -0.115666,
		0.776656, -0.551211, 0.304912,
		32.978603, 36.683430, 41.814579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038696, 37.374123, 41.168972>,  <32.434944, 37.069279, 41.601143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038696, 37.374123, 41.168972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145058, 37.012028, 41.301548>,  <33.208874, 36.794773, 41.381092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145058, 37.012028, 41.301548>,  <33.038696, 37.374123, 41.168972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145058, 37.012028, 41.301548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076425, -0.322935, -0.943330,
		0.960965, 0.276165, -0.016687,
		0.265904, -0.905232, 0.331435,
		33.224827, 36.740459, 41.400978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488358, 37.089733, 40.754433>,  <33.038696, 37.374123, 41.168972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488358, 37.089733, 40.754433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392567, 36.738464, 40.920071>,  <33.335091, 36.527702, 41.019451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392567, 36.738464, 40.920071>,  <33.488358, 37.089733, 40.754433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392567, 36.738464, 40.920071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175555, -0.458638, -0.871109,
		0.954898, -0.135916, 0.264001,
		-0.239478, -0.878168, 0.414091,
		33.320724, 36.475014, 41.044296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044899, 36.573978, 40.569878>,  <33.488358, 37.089733, 40.754433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044899, 36.573978, 40.569878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714436, 36.369579, 40.664818>,  <33.516159, 36.246941, 40.721783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714436, 36.369579, 40.664818>,  <34.044899, 36.573978, 40.569878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714436, 36.369579, 40.664818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081873, -0.525666, -0.846742,
		0.557455, -0.680112, 0.476121,
		-0.826160, -0.511002, 0.237352,
		33.466587, 36.216278, 40.736023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184189, 35.859005, 40.498093>,  <34.044899, 36.573978, 40.569878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184189, 35.859005, 40.498093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785629, 35.889408, 40.483040>,  <33.546494, 35.907650, 40.474007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785629, 35.889408, 40.483040>,  <34.184189, 35.859005, 40.498093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785629, 35.889408, 40.483040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017807, -0.621288, -0.783380,
		-0.082929, -0.779886, 0.620403,
		-0.996396, 0.076012, -0.037635,
		33.486710, 35.912212, 40.471748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044296, 35.260639, 40.325802>,  <34.184189, 35.859005, 40.498093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044296, 35.260639, 40.325802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686920, 35.428478, 40.261677>,  <33.472496, 35.529182, 40.223202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686920, 35.428478, 40.261677>,  <34.044296, 35.260639, 40.325802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686920, 35.428478, 40.261677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200750, -0.692278, -0.693146,
		-0.401828, -0.587100, 0.702743,
		-0.893439, 0.419601, -0.160316,
		33.418888, 35.554359, 40.213581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603752, 34.743217, 40.186638>,  <34.044296, 35.260639, 40.325802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603752, 34.743217, 40.186638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401012, 35.042336, 40.015099>,  <33.279369, 35.221806, 39.912174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401012, 35.042336, 40.015099>,  <33.603752, 34.743217, 40.186638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401012, 35.042336, 40.015099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089546, -0.540464, -0.836588,
		-0.857370, -0.385624, 0.340896,
		-0.506851, 0.747792, -0.428847,
		33.248959, 35.266674, 39.886444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931198, 34.465847, 39.939564>,  <33.603752, 34.743217, 40.186638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931198, 34.465847, 39.939564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989189, 34.800472, 39.728226>,  <33.023983, 35.001247, 39.601425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989189, 34.800472, 39.728226>,  <32.931198, 34.465847, 39.939564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989189, 34.800472, 39.728226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095270, -0.519700, -0.849020,
		-0.984838, 0.173423, 0.004354,
		0.144977, 0.836562, -0.528342,
		33.032681, 35.051441, 39.569721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489632, 34.428860, 39.332775>,  <32.931198, 34.465847, 39.939564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489632, 34.428860, 39.332775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756241, 34.698303, 39.205025>,  <32.916206, 34.859970, 39.128372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756241, 34.698303, 39.205025>,  <32.489632, 34.428860, 39.332775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756241, 34.698303, 39.205025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060753, -0.377909, -0.923847,
		-0.743007, 0.635167, -0.210961,
		0.666521, 0.673608, -0.319378,
		32.956196, 34.900387, 39.109211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255489, 34.574211, 38.722034>,  <32.489632, 34.428860, 39.332775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255489, 34.574211, 38.722034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628922, 34.712921, 38.685879>,  <32.852982, 34.796146, 38.664185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628922, 34.712921, 38.685879>,  <32.255489, 34.574211, 38.722034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628922, 34.712921, 38.685879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017428, -0.208002, -0.977973,
		-0.357939, 0.914594, -0.188143,
		0.933582, 0.346776, -0.090391,
		32.908997, 34.816956, 38.658760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299397, 35.005482, 38.113525>,  <32.255489, 34.574211, 38.722034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299397, 35.005482, 38.113525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687286, 34.926311, 38.170753>,  <32.920021, 34.878811, 38.205090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687286, 34.926311, 38.170753>,  <32.299397, 35.005482, 38.113525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687286, 34.926311, 38.170753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081572, -0.289669, -0.953644,
		0.230190, 0.936439, -0.264754,
		0.969721, -0.197923, 0.143066,
		32.978203, 34.866936, 38.213673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618927, 35.306030, 37.587669>,  <32.299397, 35.005482, 38.113525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618927, 35.306030, 37.587669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867462, 35.028194, 37.732708>,  <33.016582, 34.861492, 37.819733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867462, 35.028194, 37.732708>,  <32.618927, 35.306030, 37.587669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867462, 35.028194, 37.732708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320048, -0.197422, -0.926603,
		0.715195, 0.691786, 0.099636,
		0.621341, -0.694591, 0.362600,
		33.053864, 34.819817, 37.841488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229454, 35.401188, 37.306747>,  <32.618927, 35.306030, 37.587669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229454, 35.401188, 37.306747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265057, 35.022903, 37.431782>,  <33.286419, 34.795933, 37.506802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265057, 35.022903, 37.431782>,  <33.229454, 35.401188, 37.306747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265057, 35.022903, 37.431782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209478, -0.289037, -0.934118,
		0.973754, 0.148619, 0.172381,
		0.089004, -0.945711, 0.312583,
		33.291759, 34.739189, 37.525558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812916, 35.121391, 36.897167>,  <33.229454, 35.401188, 37.306747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812916, 35.121391, 36.897167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604015, 34.808140, 37.032207>,  <33.478676, 34.620190, 37.113232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604015, 34.808140, 37.032207>,  <33.812916, 35.121391, 36.897167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604015, 34.808140, 37.032207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160256, -0.478944, -0.863093,
		0.837601, -0.396646, 0.375628,
		-0.522247, -0.783125, 0.337599,
		33.447342, 34.573204, 37.133488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214893, 34.525517, 36.541435>,  <33.812916, 35.121391, 36.897167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214893, 34.525517, 36.541435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848541, 34.414734, 36.657681>,  <33.628731, 34.348267, 36.727428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848541, 34.414734, 36.657681>,  <34.214893, 34.525517, 36.541435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848541, 34.414734, 36.657681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101604, -0.540421, -0.835238,
		0.388375, -0.794507, 0.466823,
		-0.915883, -0.276954, 0.290611,
		33.573776, 34.331646, 36.744865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364590, 35.294952, 36.448868>,  <34.214893, 34.525517, 36.541435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364590, 35.294952, 36.448868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634235, 35.003632, 36.498096>,  <34.796021, 34.828838, 36.527634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634235, 35.003632, 36.498096>,  <34.364590, 35.294952, 36.448868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634235, 35.003632, 36.498096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568715, 0.618105, 0.542687,
		-0.471313, -0.295839, 0.830869,
		0.674113, -0.728303, 0.123073,
		34.836468, 34.785141, 36.535019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560619, 35.017918, 37.151192>,  <34.364590, 35.294952, 36.448868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560619, 35.017918, 37.151192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876244, 34.993118, 36.906719>,  <35.065617, 34.978237, 36.760036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876244, 34.993118, 36.906719>,  <34.560619, 35.017918, 37.151192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876244, 34.993118, 36.906719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537458, 0.551532, 0.637928,
		0.297533, -0.831846, 0.468514,
		0.789058, -0.062002, -0.611181,
		35.112961, 34.974518, 36.723366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049114, 34.687737, 37.509220>,  <34.560619, 35.017918, 37.151192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049114, 34.687737, 37.509220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246010, 34.915764, 37.246090>,  <35.364147, 35.052582, 37.088211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246010, 34.915764, 37.246090>,  <35.049114, 34.687737, 37.509220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246010, 34.915764, 37.246090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362615, 0.552730, 0.750333,
		0.791337, -0.607876, 0.065358,
		0.492235, 0.570067, -0.657821,
		35.393681, 35.086784, 37.048744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859058, 34.679405, 37.587570>,  <35.049114, 34.687737, 37.509220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859058, 34.679405, 37.587570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730598, 35.031380, 37.447525>,  <35.653522, 35.242565, 37.363499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730598, 35.031380, 37.447525>,  <35.859058, 34.679405, 37.587570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730598, 35.031380, 37.447525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372376, 0.457250, 0.807626,
		0.870748, 0.128992, -0.474510,
		-0.321147, 0.879934, -0.350116,
		35.634254, 35.295361, 37.342491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372746, 35.248302, 37.816277>,  <35.859058, 34.679405, 37.587570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372746, 35.248302, 37.816277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055717, 35.469753, 37.714043>,  <35.865501, 35.602623, 37.652702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055717, 35.469753, 37.714043>,  <36.372746, 35.248302, 37.816277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055717, 35.469753, 37.714043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129242, 0.562141, 0.816881,
		0.595923, 0.614405, -0.517090,
		-0.792573, 0.553628, -0.255586,
		35.817947, 35.635841, 37.637367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571335, 35.988796, 37.899570>,  <36.372746, 35.248302, 37.816277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571335, 35.988796, 37.899570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173302, 36.022812, 37.879272>,  <35.934483, 36.043221, 37.867092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173302, 36.022812, 37.879272>,  <36.571335, 35.988796, 37.899570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173302, 36.022812, 37.879272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014178, 0.629482, 0.776885,
		0.098009, 0.772347, -0.627594,
		-0.995085, 0.085040, -0.050745,
		35.874775, 36.048325, 37.864048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346958, 36.652981, 38.018177>,  <36.571335, 35.988796, 37.899570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346958, 36.652981, 38.018177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012836, 36.452881, 38.109413>,  <35.812363, 36.332821, 38.164154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012836, 36.452881, 38.109413>,  <36.346958, 36.652981, 38.018177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012836, 36.452881, 38.109413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028833, 0.454154, 0.890457,
		-0.549035, 0.737223, -0.393779,
		-0.835302, -0.500246, 0.228090,
		35.762245, 36.302807, 38.177841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005966, 37.142101, 38.344284>,  <36.346958, 36.652981, 38.018177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005966, 37.142101, 38.344284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813755, 36.808079, 38.451443>,  <35.698429, 36.607666, 38.515739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813755, 36.808079, 38.451443>,  <36.005966, 37.142101, 38.344284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813755, 36.808079, 38.451443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165951, 0.386543, 0.907218,
		-0.861135, 0.391485, -0.324324,
		-0.480528, -0.835059, 0.267898,
		35.669598, 36.557560, 38.531811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505234, 37.346680, 38.809406>,  <36.005966, 37.142101, 38.344284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505234, 37.346680, 38.809406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557129, 36.959850, 38.896980>,  <35.588264, 36.727753, 38.949524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557129, 36.959850, 38.896980>,  <35.505234, 37.346680, 38.809406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557129, 36.959850, 38.896980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085310, 0.209098, 0.974166,
		-0.987871, -0.145065, -0.055373,
		0.129739, -0.967075, 0.218937,
		35.596050, 36.669727, 38.962662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095333, 37.282341, 39.397736>,  <35.505234, 37.346680, 38.809406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095333, 37.282341, 39.397736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326492, 36.955959, 39.403996>,  <35.465187, 36.760128, 39.407749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326492, 36.955959, 39.403996>,  <35.095333, 37.282341, 39.397736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326492, 36.955959, 39.403996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098383, -0.050623, 0.993860,
		-0.810156, -0.575890, -0.109531,
		0.577899, -0.815958, 0.015646,
		35.499863, 36.711170, 39.408688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782917, 36.839397, 39.880955>,  <35.095333, 37.282341, 39.397736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782917, 36.839397, 39.880955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167065, 36.732300, 39.849934>,  <35.397552, 36.668041, 39.831322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167065, 36.732300, 39.849934>,  <34.782917, 36.839397, 39.880955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167065, 36.732300, 39.849934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095392, 0.054270, 0.993959,
		-0.261914, -0.961962, 0.077660,
		0.960365, -0.267740, -0.077550,
		35.455173, 36.651978, 39.826668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929363, 36.370991, 40.416710>,  <34.782917, 36.839397, 39.880955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929363, 36.370991, 40.416710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286926, 36.517387, 40.313183>,  <35.501465, 36.605225, 40.251068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286926, 36.517387, 40.313183>,  <34.929363, 36.370991, 40.416710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286926, 36.517387, 40.313183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287135, -0.024133, 0.957586,
		0.344222, -0.930306, -0.126661,
		0.893904, 0.365991, -0.258817,
		35.555096, 36.627186, 40.235538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420460, 35.863205, 40.868443>,  <34.929363, 36.370991, 40.416710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420460, 35.863205, 40.868443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586365, 36.206577, 40.747730>,  <35.685909, 36.412601, 40.675304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586365, 36.206577, 40.747730>,  <35.420460, 35.863205, 40.868443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586365, 36.206577, 40.747730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401552, 0.124933, 0.907275,
		0.816532, -0.497486, -0.292886,
		0.414765, 0.858428, -0.301779,
		35.710793, 36.464108, 40.657196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132511, 35.854336, 40.962921>,  <35.420460, 35.863205, 40.868443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132511, 35.854336, 40.962921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998505, 36.229160, 41.002266>,  <35.918102, 36.454056, 41.025875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998505, 36.229160, 41.002266>,  <36.132511, 35.854336, 40.962921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998505, 36.229160, 41.002266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373520, 0.036238, 0.926914,
		0.865014, 0.347270, -0.362153,
		-0.335013, 0.937065, 0.098366,
		35.897999, 36.510281, 41.031776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608986, 36.220215, 41.477016>,  <36.132511, 35.854336, 40.962921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608986, 36.220215, 41.477016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313080, 36.488865, 41.460716>,  <36.135536, 36.650055, 41.450935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313080, 36.488865, 41.460716>,  <36.608986, 36.220215, 41.477016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313080, 36.488865, 41.460716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116875, 0.187898, 0.975210,
		0.662636, 0.716665, -0.217497,
		-0.739766, 0.671629, -0.040748,
		36.091148, 36.690353, 41.448490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868034, 36.652565, 41.865894>,  <36.608986, 36.220215, 41.477016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868034, 36.652565, 41.865894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492596, 36.788200, 41.840405>,  <36.267334, 36.869579, 41.825111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492596, 36.788200, 41.840405>,  <36.868034, 36.652565, 41.865894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492596, 36.788200, 41.840405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068911, 0.365228, 0.928364,
		0.338069, 0.866966, -0.366168,
		-0.938595, 0.339084, -0.063729,
		36.211018, 36.889927, 41.821285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897087, 37.424450, 42.046215>,  <36.868034, 36.652565, 41.865894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897087, 37.424450, 42.046215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515339, 37.312710, 42.088425>,  <36.286289, 37.245667, 42.113750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515339, 37.312710, 42.088425>,  <36.897087, 37.424450, 42.046215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515339, 37.312710, 42.088425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045450, 0.485139, 0.873255,
		-0.295133, 0.828616, -0.475700,
		-0.954374, -0.279347, 0.105520,
		36.229027, 37.228905, 42.120079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599518, 38.022892, 42.301762>,  <36.897087, 37.424450, 42.046215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599518, 38.022892, 42.301762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344559, 37.725079, 42.381153>,  <36.191582, 37.546391, 42.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344559, 37.725079, 42.381153>,  <36.599518, 38.022892, 42.301762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344559, 37.725079, 42.381153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251784, 0.444702, 0.859561,
		-0.728233, 0.497912, -0.470915,
		-0.637402, -0.744529, 0.198480,
		36.153339, 37.501720, 42.440697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899582, 38.309547, 42.467808>,  <36.599518, 38.022892, 42.301762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899582, 38.309547, 42.467808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943222, 37.955940, 42.649628>,  <35.969406, 37.743778, 42.758720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943222, 37.955940, 42.649628>,  <35.899582, 38.309547, 42.467808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943222, 37.955940, 42.649628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283609, 0.410588, 0.866593,
		-0.952714, -0.223457, -0.205921,
		0.109098, -0.884016, 0.454548,
		35.975952, 37.690735, 42.785992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294075, 38.212662, 42.863800>,  <35.899582, 38.309547, 42.467808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294075, 38.212662, 42.863800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532310, 37.943047, 43.038589>,  <35.675251, 37.781277, 43.143463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532310, 37.943047, 43.038589>,  <35.294075, 38.212662, 42.863800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532310, 37.943047, 43.038589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190147, 0.410219, 0.891944,
		-0.780462, -0.614319, 0.116153,
		0.595587, -0.674042, 0.436971,
		35.710987, 37.740833, 43.169682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008110, 38.236843, 43.527592>,  <35.294075, 38.212662, 42.863800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008110, 38.236843, 43.527592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372322, 38.080009, 43.580055>,  <35.590851, 37.985909, 43.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372322, 38.080009, 43.580055>,  <35.008110, 38.236843, 43.527592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372322, 38.080009, 43.580055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048794, 0.416933, 0.907627,
		-0.410550, -0.820023, 0.398762,
		0.910531, -0.392083, 0.131160,
		35.645481, 37.962383, 43.619404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041672, 38.010456, 44.240662>,  <35.008110, 38.236843, 43.527592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041672, 38.010456, 44.240662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403404, 38.074448, 44.082378>,  <35.620445, 38.112843, 43.987408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403404, 38.074448, 44.082378>,  <35.041672, 38.010456, 44.240662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403404, 38.074448, 44.082378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261023, 0.526236, 0.809285,
		0.337703, -0.835154, 0.434136,
		0.904336, 0.159979, -0.395706,
		35.674706, 38.122440, 43.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608620, 37.825729, 44.737034>,  <35.041672, 38.010456, 44.240662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608620, 37.825729, 44.737034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704906, 38.138790, 44.507423>,  <35.762676, 38.326626, 44.369656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704906, 38.138790, 44.507423>,  <35.608620, 37.825729, 44.737034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704906, 38.138790, 44.507423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031863, 0.584725, 0.810605,
		0.970073, -0.213414, 0.115813,
		0.240714, 0.782656, -0.574026,
		35.777122, 38.373589, 44.335217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264900, 38.210308, 44.953033>,  <35.608620, 37.825729, 44.737034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264900, 38.210308, 44.953033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039368, 38.487659, 44.773556>,  <35.904049, 38.654068, 44.665871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039368, 38.487659, 44.773556>,  <36.264900, 38.210308, 44.953033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039368, 38.487659, 44.773556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199631, 0.641593, 0.740612,
		0.801402, 0.328005, -0.500168,
		-0.563829, 0.693377, -0.448693,
		35.870220, 38.695671, 44.638947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514923, 38.828953, 45.282295>,  <36.264900, 38.210308, 44.953033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514923, 38.828953, 45.282295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200756, 38.971981, 45.080200>,  <36.012257, 39.057796, 44.958942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200756, 38.971981, 45.080200>,  <36.514923, 38.828953, 45.282295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200756, 38.971981, 45.080200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028462, 0.836260, 0.547593,
		0.618312, 0.415710, -0.666990,
		-0.785417, 0.357567, -0.505238,
		35.965130, 39.079250, 44.928627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670601, 39.400009, 44.995026>,  <36.514923, 38.828953, 45.282295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670601, 39.400009, 44.995026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274147, 39.405949, 45.047829>,  <36.036274, 39.409512, 45.079510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274147, 39.405949, 45.047829>,  <36.670601, 39.400009, 44.995026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274147, 39.405949, 45.047829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081086, 0.854762, 0.512647,
		-0.105225, 0.518807, -0.848391,
		-0.991137, 0.014849, 0.132011,
		35.976807, 39.410404, 45.087433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442017, 40.101574, 45.060459>,  <36.670601, 39.400009, 44.995026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442017, 40.101574, 45.060459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116890, 39.924061, 45.211399>,  <35.921814, 39.817554, 45.301964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116890, 39.924061, 45.211399>,  <36.442017, 40.101574, 45.060459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116890, 39.924061, 45.211399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148396, 0.784154, 0.602563,
		-0.563303, 0.433775, -0.703227,
		-0.812815, -0.443781, 0.377346,
		35.873047, 39.790928, 45.324604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044815, 40.656181, 45.132576>,  <36.442017, 40.101574, 45.060459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044815, 40.656181, 45.132576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833488, 40.388515, 45.341614>,  <35.706692, 40.227917, 45.467037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833488, 40.388515, 45.341614>,  <36.044815, 40.656181, 45.132576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833488, 40.388515, 45.341614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322157, 0.727469, 0.605808,
		-0.785558, 0.151697, -0.599906,
		-0.528312, -0.669161, 0.522599,
		35.674995, 40.187767, 45.498394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361710, 40.803558, 45.034443>,  <36.044815, 40.656181, 45.132576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361710, 40.803558, 45.034443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448708, 40.622688, 45.380444>,  <35.500908, 40.514164, 45.588043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448708, 40.622688, 45.380444>,  <35.361710, 40.803558, 45.034443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448708, 40.622688, 45.380444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221816, 0.840132, 0.494951,
		-0.950522, -0.299522, 0.082427,
		0.217498, -0.452178, 0.865002,
		35.513958, 40.487034, 45.639946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964367, 41.194885, 45.433796>,  <35.361710, 40.803558, 45.034443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964367, 41.194885, 45.433796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185043, 40.991741, 45.698433>,  <35.317451, 40.869854, 45.857216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185043, 40.991741, 45.698433>,  <34.964367, 41.194885, 45.433796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185043, 40.991741, 45.698433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055856, 0.768958, 0.636855,
		-0.832174, -0.388303, 0.395863,
		0.551695, -0.507862, 0.661595,
		35.350552, 40.839382, 45.896912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577492, 41.109230, 46.037926>,  <34.964367, 41.194885, 45.433796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577492, 41.109230, 46.037926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964302, 41.089809, 46.137928>,  <35.196388, 41.078159, 46.197929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964302, 41.089809, 46.137928>,  <34.577492, 41.109230, 46.037926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964302, 41.089809, 46.137928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109614, 0.806742, 0.580648,
		-0.229880, -0.588906, 0.774819,
		0.967027, -0.048549, 0.250006,
		35.254410, 41.075245, 46.212929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543736, 41.375870, 46.758121>,  <34.577492, 41.109230, 46.037926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543736, 41.375870, 46.758121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939640, 41.395000, 46.704330>,  <35.177181, 41.406479, 46.672058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939640, 41.395000, 46.704330>,  <34.543736, 41.375870, 46.758121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939640, 41.395000, 46.704330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033651, 0.837430, 0.545508,
		0.138703, -0.544448, 0.827247,
		0.989762, 0.047826, -0.134476,
		35.236568, 41.409348, 46.663986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823376, 41.345062, 47.403770>,  <34.543736, 41.375870, 46.758121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823376, 41.345062, 47.403770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099129, 41.530025, 47.180725>,  <35.264580, 41.641003, 47.046898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099129, 41.530025, 47.180725>,  <34.823376, 41.345062, 47.403770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099129, 41.530025, 47.180725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024164, 0.754656, 0.655676,
		0.723996, -0.465485, 0.509072,
		0.689381, 0.462405, -0.557615,
		35.305943, 41.668747, 47.013439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434105, 41.479256, 47.867565>,  <34.823376, 41.345062, 47.403770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434105, 41.479256, 47.867565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460789, 41.735275, 47.561394>,  <35.476799, 41.888889, 47.377689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460789, 41.735275, 47.561394>,  <35.434105, 41.479256, 47.867565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460789, 41.735275, 47.561394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013477, 0.767647, 0.640731,
		0.997681, -0.032427, 0.059834,
		0.066708, 0.640052, -0.765431,
		35.480801, 41.927292, 47.331764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912273, 41.932652, 48.130733>,  <35.434105, 41.479256, 47.867565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912273, 41.932652, 48.130733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761490, 42.120861, 47.811607>,  <35.671021, 42.233788, 47.620132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761490, 42.120861, 47.811607>,  <35.912273, 41.932652, 48.130733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761490, 42.120861, 47.811607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045698, 0.850863, 0.523395,
		0.925102, 0.233757, -0.299240,
		-0.376960, 0.470520, -0.797817,
		35.648403, 42.262016, 47.572262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271000, 42.619061, 48.121281>,  <35.912273, 41.932652, 48.130733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271000, 42.619061, 48.121281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949543, 42.666084, 47.887928>,  <35.756668, 42.694298, 47.747917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949543, 42.666084, 47.887928>,  <36.271000, 42.619061, 48.121281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949543, 42.666084, 47.887928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206265, 0.864505, 0.458350,
		0.558224, 0.488682, -0.670504,
		-0.803642, 0.117560, -0.583386,
		35.708450, 42.701351, 47.712914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346809, 43.334888, 47.921680>,  <36.271000, 42.619061, 48.121281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346809, 43.334888, 47.921680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967918, 43.208218, 47.901802>,  <35.740582, 43.132214, 47.889877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967918, 43.208218, 47.901802>,  <36.346809, 43.334888, 47.921680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967918, 43.208218, 47.901802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295028, 0.800650, 0.521458,
		-0.125348, 0.508602, -0.851829,
		-0.947231, -0.316677, -0.049692,
		35.683750, 43.113216, 47.886894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896576, 43.947689, 47.656136>,  <36.346809, 43.334888, 47.921680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896576, 43.947689, 47.656136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665291, 43.676929, 47.838333>,  <35.526520, 43.514473, 47.947651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665291, 43.676929, 47.838333>,  <35.896576, 43.947689, 47.656136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665291, 43.676929, 47.838333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566107, 0.734881, 0.373459,
		-0.587528, -0.041918, -0.808117,
		-0.578216, -0.676899, 0.455494,
		35.491825, 43.473858, 47.974979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306427, 44.385029, 47.230263>,  <35.896576, 43.947689, 47.656136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306427, 44.385029, 47.230263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410145, 44.717533, 47.033585>,  <35.472378, 44.917034, 46.915577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410145, 44.717533, 47.033585>,  <35.306427, 44.385029, 47.230263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410145, 44.717533, 47.033585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379991, -0.555860, -0.739342,
		-0.887903, 0.004868, -0.460005,
		0.259298, 0.831262, -0.491700,
		35.487934, 44.966911, 46.886074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898670, 44.536922, 46.604824>,  <35.306427, 44.385029, 47.230263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898670, 44.536922, 46.604824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267334, 44.687893, 46.568829>,  <35.488533, 44.778473, 46.547230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267334, 44.687893, 46.568829>,  <34.898670, 44.536922, 46.604824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267334, 44.687893, 46.568829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117722, -0.493014, -0.862020,
		-0.369714, 0.783894, -0.498821,
		0.921658, 0.377423, -0.089992,
		35.543831, 44.801121, 46.541832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942799, 44.966347, 45.983601>,  <34.898670, 44.536922, 46.604824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942799, 44.966347, 45.983601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308773, 44.837208, 46.080482>,  <35.528358, 44.759724, 46.138611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308773, 44.837208, 46.080482>,  <34.942799, 44.966347, 45.983601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308773, 44.837208, 46.080482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036956, -0.530575, -0.846832,
		0.401905, 0.783747, -0.473511,
		0.914935, -0.322847, 0.242205,
		35.583252, 44.740353, 46.153145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108959, 44.829449, 45.382347>,  <34.942799, 44.966347, 45.983601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108959, 44.829449, 45.382347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425720, 44.691246, 45.583748>,  <35.615776, 44.608326, 45.704590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425720, 44.691246, 45.583748>,  <35.108959, 44.829449, 45.382347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425720, 44.691246, 45.583748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160077, -0.678251, -0.717183,
		0.589293, 0.648538, -0.481801,
		0.791902, -0.345505, 0.503504,
		35.663292, 44.587593, 45.734798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691490, 44.995464, 45.078869>,  <35.108959, 44.829449, 45.382347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691490, 44.995464, 45.078869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777287, 44.668869, 45.293285>,  <35.828766, 44.472912, 45.421936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777287, 44.668869, 45.293285>,  <35.691490, 44.995464, 45.078869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777287, 44.668869, 45.293285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129939, -0.520081, -0.844175,
		0.968044, 0.250722, -0.005460,
		0.214493, -0.816489, 0.536040,
		35.841633, 44.423923, 45.454098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122215, 44.613602, 44.653709>,  <35.691490, 44.995464, 45.078869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122215, 44.613602, 44.653709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005394, 44.356579, 44.937069>,  <35.935299, 44.202366, 45.107082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005394, 44.356579, 44.937069>,  <36.122215, 44.613602, 44.653709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005394, 44.356579, 44.937069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061785, -0.751819, -0.656468,
		0.954403, -0.147957, 0.259274,
		-0.292056, -0.642555, 0.708397,
		35.917778, 44.163811, 45.149590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661934, 44.082493, 44.733742>,  <36.122215, 44.613602, 44.653709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661934, 44.082493, 44.733742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323368, 43.930683, 44.883167>,  <36.120228, 43.839596, 44.972824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323368, 43.930683, 44.883167>,  <36.661934, 44.082493, 44.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323368, 43.930683, 44.883167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095649, -0.798423, -0.594451,
		0.523872, -0.467418, 0.712094,
		-0.846410, -0.379527, 0.373563,
		36.069447, 43.816826, 44.995235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798824, 43.368042, 45.083679>,  <36.661934, 44.082493, 44.733742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798824, 43.368042, 45.083679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416241, 43.397793, 44.970791>,  <36.186691, 43.415642, 44.903057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416241, 43.397793, 44.970791>,  <36.798824, 43.368042, 45.083679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416241, 43.397793, 44.970791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103528, -0.817643, -0.566341,
		-0.272877, -0.570901, 0.774345,
		-0.956462, 0.074375, -0.282220,
		36.129303, 43.420105, 44.886124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734459, 42.681458, 44.919636>,  <36.798824, 43.368042, 45.083679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734459, 42.681458, 44.919636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401817, 42.863663, 44.792553>,  <36.202232, 42.972984, 44.716305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401817, 42.863663, 44.792553>,  <36.734459, 42.681458, 44.919636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401817, 42.863663, 44.792553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062530, -0.645234, -0.761422,
		-0.551829, -0.613339, 0.565066,
		-0.831609, 0.455508, -0.317707,
		36.152336, 43.000317, 44.697239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319988, 42.084774, 44.821671>,  <36.734459, 42.681458, 44.919636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319988, 42.084774, 44.821671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166824, 42.387249, 44.609425>,  <36.074924, 42.568733, 44.482075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166824, 42.387249, 44.609425>,  <36.319988, 42.084774, 44.821671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166824, 42.387249, 44.609425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137477, -0.521353, -0.842194,
		-0.913497, -0.395436, 0.095675,
		-0.382914, 0.756189, -0.530618,
		36.051949, 42.614105, 44.450237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754791, 41.821060, 44.452019>,  <36.319988, 42.084774, 44.821671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754791, 41.821060, 44.452019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894478, 42.146748, 44.266506>,  <35.978291, 42.342159, 44.155197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894478, 42.146748, 44.266506>,  <35.754791, 41.821060, 44.452019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894478, 42.146748, 44.266506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122114, -0.530270, -0.838989,
		-0.929050, 0.236357, -0.284608,
		0.349220, 0.814217, -0.463785,
		35.999245, 42.391014, 44.127369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430489, 41.748142, 43.907364>,  <35.754791, 41.821060, 44.452019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430489, 41.748142, 43.907364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725826, 42.000210, 43.811249>,  <35.903030, 42.151451, 43.753582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725826, 42.000210, 43.811249>,  <35.430489, 41.748142, 43.907364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725826, 42.000210, 43.811249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265665, -0.599231, -0.755211,
		-0.619896, 0.493770, -0.609852,
		0.738343, 0.630169, -0.240283,
		35.947330, 42.189262, 43.739162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317169, 41.935596, 43.158405>,  <35.430489, 41.748142, 43.907364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317169, 41.935596, 43.158405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690609, 41.982624, 43.293797>,  <35.914673, 42.010841, 43.375031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690609, 41.982624, 43.293797>,  <35.317169, 41.935596, 43.158405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690609, 41.982624, 43.293797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334076, -0.627157, -0.703610,
		0.129553, 0.769968, -0.624793,
		0.933600, 0.117574, 0.338477,
		35.970688, 42.017895, 43.395340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753944, 42.008560, 42.567150>,  <35.317169, 41.935596, 43.158405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753944, 42.008560, 42.567150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018642, 41.914539, 42.851921>,  <36.177460, 41.858128, 43.022785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018642, 41.914539, 42.851921>,  <35.753944, 42.008560, 42.567150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018642, 41.914539, 42.851921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344994, -0.747606, -0.567507,
		0.665640, 0.621155, -0.413629,
		0.661742, -0.235056, 0.711931,
		36.217163, 41.844021, 43.065502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411499, 42.019794, 42.212494>,  <35.753944, 42.008560, 42.567150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411499, 42.019794, 42.212494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426979, 41.785229, 42.536129>,  <36.436268, 41.644489, 42.730309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426979, 41.785229, 42.536129>,  <36.411499, 42.019794, 42.212494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426979, 41.785229, 42.536129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392478, -0.735702, -0.552000,
		0.918947, 0.338913, 0.201679,
		0.038704, -0.586413, 0.809087,
		36.438591, 41.609306, 42.778854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096050, 41.744640, 42.271996>,  <36.411499, 42.019794, 42.212494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096050, 41.744640, 42.271996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854973, 41.496605, 42.472893>,  <36.710327, 41.347782, 42.593433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854973, 41.496605, 42.472893>,  <37.096050, 41.744640, 42.271996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854973, 41.496605, 42.472893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399263, -0.779283, -0.483019,
		0.690907, -0.090584, 0.717247,
		-0.602692, -0.620091, 0.502245,
		36.674164, 41.310577, 42.623566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607136, 41.283409, 42.364468>,  <37.096050, 41.744640, 42.271996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607136, 41.283409, 42.364468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240791, 41.130474, 42.413494>,  <37.020985, 41.038715, 42.442909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240791, 41.130474, 42.413494>,  <37.607136, 41.283409, 42.364468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240791, 41.130474, 42.413494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295116, -0.848032, -0.440168,
		0.272229, -0.366962, 0.889511,
		-0.915859, -0.382336, 0.122562,
		36.966034, 41.015774, 42.450264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643204, 40.517128, 42.746792>,  <37.607136, 41.283409, 42.364468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643204, 40.517128, 42.746792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301510, 40.548512, 42.541218>,  <37.096493, 40.567341, 42.417873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301510, 40.548512, 42.541218>,  <37.643204, 40.517128, 42.746792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301510, 40.548512, 42.541218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240723, -0.816502, -0.524764,
		-0.460798, -0.571987, 0.678599,
		-0.854235, 0.078456, -0.513933,
		37.045238, 40.572048, 42.387039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352840, 39.839386, 42.775345>,  <37.643204, 40.517128, 42.746792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352840, 39.839386, 42.775345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154816, 40.019005, 42.477818>,  <37.035999, 40.126778, 42.299301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154816, 40.019005, 42.477818>,  <37.352840, 39.839386, 42.775345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154816, 40.019005, 42.477818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110536, -0.816584, -0.566544,
		-0.861797, -0.362695, 0.354625,
		-0.495064, 0.449047, -0.743820,
		37.006298, 40.153717, 42.254673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924168, 39.312405, 42.578754>,  <37.352840, 39.839386, 42.775345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924168, 39.312405, 42.578754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954529, 39.560791, 42.266693>,  <36.972744, 39.709824, 42.079456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954529, 39.560791, 42.266693>,  <36.924168, 39.312405, 42.578754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954529, 39.560791, 42.266693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108761, -0.782896, -0.612572,
		-0.991166, -0.038355, -0.126960,
		0.075901, 0.620969, -0.780152,
		36.977299, 39.747082, 42.032646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698586, 38.887577, 42.091362>,  <36.924168, 39.312405, 42.578754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698586, 38.887577, 42.091362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818443, 39.219608, 41.903240>,  <36.890358, 39.418827, 41.790367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818443, 39.219608, 41.903240>,  <36.698586, 38.887577, 42.091362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818443, 39.219608, 41.903240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095854, -0.516649, -0.850815,
		-0.949225, 0.209858, -0.234375,
		0.299640, 0.830081, -0.470300,
		36.908337, 39.468632, 41.762150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450684, 38.796329, 41.488052>,  <36.698586, 38.887577, 42.091362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450684, 38.796329, 41.488052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745670, 39.056465, 41.415165>,  <36.922661, 39.212547, 41.371433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745670, 39.056465, 41.415165>,  <36.450684, 38.796329, 41.488052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745670, 39.056465, 41.415165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219414, -0.485860, -0.846048,
		-0.638754, 0.583947, -0.500998,
		0.737462, 0.650343, -0.182219,
		36.966908, 39.251568, 41.360500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285950, 39.065723, 40.791008>,  <36.450684, 38.796329, 41.488052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285950, 39.065723, 40.791008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674541, 39.104073, 40.877766>,  <36.907696, 39.127083, 40.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674541, 39.104073, 40.877766>,  <36.285950, 39.065723, 40.791008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674541, 39.104073, 40.877766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237140, -0.393311, -0.888297,
		0.000148, 0.914394, -0.404826,
		0.971475, 0.095869, 0.216898,
		36.965984, 39.132832, 40.942837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628059, 39.420448, 40.123943>,  <36.285950, 39.065723, 40.791008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628059, 39.420448, 40.123943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936337, 39.240299, 40.304253>,  <37.121304, 39.132210, 40.412437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936337, 39.240299, 40.304253>,  <36.628059, 39.420448, 40.123943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936337, 39.240299, 40.304253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263183, -0.419282, -0.868871,
		0.580323, 0.788266, -0.204604,
		0.770688, -0.450377, 0.450777,
		37.167542, 39.105186, 40.439487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350239, 39.507893, 39.683952>,  <36.628059, 39.420448, 40.123943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350239, 39.507893, 39.683952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392059, 39.196533, 39.931553>,  <37.417152, 39.009716, 40.080112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392059, 39.196533, 39.931553>,  <37.350239, 39.507893, 39.683952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392059, 39.196533, 39.931553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383490, -0.542719, -0.747256,
		0.917608, 0.315507, 0.241767,
		0.104552, -0.778403, 0.618997,
		37.423424, 38.963013, 40.117252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084942, 39.285484, 39.612324>,  <37.350239, 39.507893, 39.683952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084942, 39.285484, 39.612324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894840, 38.961952, 39.750847>,  <37.780781, 38.767834, 39.833961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894840, 38.961952, 39.750847>,  <38.084942, 39.285484, 39.612324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894840, 38.961952, 39.750847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580245, -0.583996, -0.567684,
		0.661401, -0.068853, 0.746866,
		-0.475253, -0.808832, 0.346304,
		37.752266, 38.719303, 39.854736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629650, 38.839840, 39.764690>,  <38.084942, 39.285484, 39.612324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629650, 38.839840, 39.764690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293636, 38.625687, 39.729572>,  <38.092026, 38.497196, 39.708500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293636, 38.625687, 39.729572>,  <38.629650, 38.839840, 39.764690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293636, 38.625687, 39.729572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523400, -0.757138, -0.390890,
		0.142800, -0.374315, 0.916241,
		-0.840036, -0.535379, -0.087797,
		38.041626, 38.465073, 39.703232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843849, 38.193775, 40.027534>,  <38.629650, 38.839840, 39.764690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843849, 38.193775, 40.027534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507866, 38.175919, 39.811211>,  <38.306274, 38.165203, 39.681416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507866, 38.175919, 39.811211>,  <38.843849, 38.193775, 40.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507866, 38.175919, 39.811211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403026, -0.718671, -0.566641,
		-0.363366, -0.693916, 0.621648,
		-0.839961, -0.044642, -0.540807,
		38.255878, 38.162525, 39.648968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725456, 37.504654, 39.862022>,  <38.843849, 38.193775, 40.027534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725456, 37.504654, 39.862022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504612, 37.678650, 39.577499>,  <38.372105, 37.783047, 39.406788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504612, 37.678650, 39.577499>,  <38.725456, 37.504654, 39.862022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504612, 37.678650, 39.577499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444920, -0.567790, -0.692575,
		-0.705136, -0.698853, 0.119948,
		-0.552113, 0.434993, -0.711303,
		38.338978, 37.809147, 39.364109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609539, 36.950119, 39.401917>,  <38.725456, 37.504654, 39.862022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609539, 36.950119, 39.401917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529472, 37.265022, 39.168621>,  <38.481434, 37.453964, 39.028645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529472, 37.265022, 39.168621>,  <38.609539, 36.950119, 39.401917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529472, 37.265022, 39.168621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550249, -0.402208, -0.731748,
		-0.810654, -0.467395, -0.352678,
		-0.200165, 0.787255, -0.583235,
		38.469421, 37.501198, 38.993652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437412, 36.714600, 38.743740>,  <38.609539, 36.950119, 39.401917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437412, 36.714600, 38.743740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546997, 37.094128, 38.680893>,  <38.612747, 37.321846, 38.643185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546997, 37.094128, 38.680893>,  <38.437412, 36.714600, 38.743740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546997, 37.094128, 38.680893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490454, -0.278365, -0.825813,
		-0.827284, 0.149182, -0.541614,
		0.273963, 0.948819, -0.157120,
		38.629185, 37.378773, 38.633759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524811, 36.767838, 38.062607>,  <38.437412, 36.714600, 38.743740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524811, 36.767838, 38.062607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707130, 37.119953, 38.115261>,  <38.816525, 37.331223, 38.146854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707130, 37.119953, 38.115261>,  <38.524811, 36.767838, 38.062607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707130, 37.119953, 38.115261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543514, -0.158148, -0.824367,
		-0.704867, 0.447295, -0.550536,
		0.455802, 0.880293, 0.131639,
		38.843872, 37.384041, 38.154751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536060, 37.151894, 37.440102>,  <38.524811, 36.767838, 38.062607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536060, 37.151894, 37.440102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838985, 37.295677, 37.658192>,  <39.020741, 37.381947, 37.789043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838985, 37.295677, 37.658192>,  <38.536060, 37.151894, 37.440102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838985, 37.295677, 37.658192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609118, -0.087755, -0.788210,
		-0.235480, 0.929027, -0.285409,
		0.757314, 0.359455, 0.545222,
		39.066181, 37.403515, 37.821758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717400, 37.732342, 37.072662>,  <38.536060, 37.151894, 37.440102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717400, 37.732342, 37.072662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004414, 37.565376, 37.295700>,  <39.176620, 37.465199, 37.429523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004414, 37.565376, 37.295700>,  <38.717400, 37.732342, 37.072662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004414, 37.565376, 37.295700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597479, -0.042597, -0.800753,
		0.357995, 0.907718, 0.218830,
		0.717536, -0.417412, 0.557592,
		39.219673, 37.440151, 37.462978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194427, 38.019081, 36.779560>,  <38.717400, 37.732342, 37.072662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194427, 38.019081, 36.779560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400471, 37.772907, 37.018192>,  <39.524097, 37.625202, 37.161369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400471, 37.772907, 37.018192>,  <39.194427, 38.019081, 36.779560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400471, 37.772907, 37.018192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790788, 0.072745, -0.607752,
		0.330633, 0.784824, 0.524150,
		0.515107, -0.615435, 0.596577,
		39.555004, 37.588276, 37.197166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878830, 38.370457, 36.881195>,  <39.194427, 38.019081, 36.779560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878830, 38.370457, 36.881195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902325, 37.973598, 36.925362>,  <39.916420, 37.735481, 36.951862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902325, 37.973598, 36.925362>,  <39.878830, 38.370457, 36.881195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902325, 37.973598, 36.925362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719610, -0.034576, -0.693517,
		0.691890, 0.120189, 0.711930,
		0.058737, -0.992149, 0.110412,
		39.919945, 37.675953, 36.958485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608208, 38.247967, 36.731998>,  <39.878830, 38.370457, 36.881195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608208, 38.247967, 36.731998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466991, 37.874050, 36.747654>,  <40.382263, 37.649700, 36.757050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466991, 37.874050, 36.747654>,  <40.608208, 38.247967, 36.731998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466991, 37.874050, 36.747654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676104, -0.283811, -0.679952,
		0.646721, -0.213585, 0.732211,
		-0.353037, -0.934790, 0.039141,
		40.361080, 37.593613, 36.759396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173782, 37.780285, 36.897614>,  <40.608208, 38.247967, 36.731998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173782, 37.780285, 36.897614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874470, 37.593220, 36.709415>,  <40.694881, 37.480980, 36.596497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874470, 37.593220, 36.709415>,  <41.173782, 37.780285, 36.897614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874470, 37.593220, 36.709415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596630, -0.164359, -0.785506,
		0.290025, -0.868489, 0.402011,
		-0.748277, -0.467668, -0.470498,
		40.649986, 37.452919, 36.568264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474197, 37.220657, 36.637627>,  <41.173782, 37.780285, 36.897614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474197, 37.220657, 36.637627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148514, 37.250603, 36.407341>,  <40.953102, 37.268570, 36.269169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148514, 37.250603, 36.407341>,  <41.474197, 37.220657, 36.637627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148514, 37.250603, 36.407341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544457, -0.245807, -0.801964,
		-0.201551, -0.966424, 0.159380,
		-0.814214, 0.074861, -0.575719,
		40.904251, 37.273060, 36.234627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433929, 36.613617, 36.141678>,  <41.474197, 37.220657, 36.637627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433929, 36.613617, 36.141678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284626, 36.953236, 35.992115>,  <41.195045, 37.157005, 35.902378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284626, 36.953236, 35.992115>,  <41.433929, 36.613617, 36.141678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284626, 36.953236, 35.992115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608000, -0.080547, -0.789841,
		-0.700726, -0.522148, -0.486153,
		-0.373256, 0.849043, -0.373907,
		41.172649, 37.207947, 35.879944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009861, 36.589943, 35.603359>,  <41.433929, 36.613617, 36.141678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009861, 36.589943, 35.603359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764416, 36.903858, 35.568527>,  <41.617149, 37.092209, 35.547626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764416, 36.903858, 35.568527>,  <42.009861, 36.589943, 35.603359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764416, 36.903858, 35.568527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468334, 0.272932, -0.840340,
		-0.635724, -0.556427, -0.535018,
		-0.613612, 0.784791, -0.087084,
		41.580334, 37.139297, 35.542400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680767, 36.831882, 35.549965>,  <42.009861, 36.589943, 35.603359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680767, 36.831882, 35.549965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693264, 36.917633, 35.940464>,  <42.700764, 36.969082, 36.174763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693264, 36.917633, 35.940464>,  <42.680767, 36.831882, 35.549965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693264, 36.917633, 35.940464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101805, -0.970967, 0.216470,
		0.994314, -0.106151, -0.008512,
		0.031244, 0.214372, 0.976252,
		42.702637, 36.981945, 36.233341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322887, 36.658684, 36.035778>,  <42.680767, 36.831882, 35.549965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322887, 36.658684, 36.035778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954502, 36.632877, 36.189484>,  <42.733471, 36.617393, 36.281708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954502, 36.632877, 36.189484>,  <43.322887, 36.658684, 36.035778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954502, 36.632877, 36.189484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094169, -0.993816, 0.058846,
		0.378088, 0.090380, 0.921347,
		-0.920968, -0.064513, 0.384260,
		42.678211, 36.613522, 36.304760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222546, 36.164585, 36.681400>,  <43.322887, 36.658684, 36.035778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222546, 36.164585, 36.681400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908424, 36.211929, 36.438324>,  <42.719952, 36.240337, 36.292477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908424, 36.211929, 36.438324>,  <43.222546, 36.164585, 36.681400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908424, 36.211929, 36.438324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054439, -0.990954, -0.122662,
		-0.616714, -0.063245, 0.784642,
		-0.785303, 0.118363, -0.607693,
		42.672832, 36.247437, 36.256016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527565, 35.947136, 36.957119>,  <43.222546, 36.164585, 36.681400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527565, 35.947136, 36.957119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545128, 35.894409, 36.560997>,  <42.555664, 35.862774, 36.323326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545128, 35.894409, 36.560997>,  <42.527565, 35.947136, 36.957119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545128, 35.894409, 36.560997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136921, -0.982697, 0.124735,
		-0.989609, 0.130116, -0.061194,
		0.043905, -0.131817, -0.990301,
		42.558300, 35.854862, 36.263908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444050, 35.251514, 36.743061>,  <42.527565, 35.947136, 36.957119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444050, 35.251514, 36.743061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197628, 35.030502, 36.967625>,  <42.049774, 34.897896, 37.102364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197628, 35.030502, 36.967625>,  <42.444050, 35.251514, 36.743061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197628, 35.030502, 36.967625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218916, -0.564544, -0.795843,
		0.756669, -0.613187, 0.226833,
		-0.616058, -0.552532, 0.561410,
		42.012810, 34.864742, 37.136047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686951, 34.632259, 36.604218>,  <42.444050, 35.251514, 36.743061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686951, 34.632259, 36.604218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302097, 34.604271, 36.709599>,  <42.071186, 34.587479, 36.772827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302097, 34.604271, 36.709599>,  <42.686951, 34.632259, 36.604218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302097, 34.604271, 36.709599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194032, -0.503023, -0.842211,
		0.191455, -0.861435, 0.470397,
		-0.962131, -0.069974, 0.263453,
		42.013458, 34.583279, 36.788635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412277, 34.376759, 36.707256>,  <42.686951, 34.632259, 36.604218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412277, 34.376759, 36.707256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730240, 34.145901, 36.632401>,  <43.921017, 34.007385, 36.587486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730240, 34.145901, 36.632401>,  <43.412277, 34.376759, 36.707256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730240, 34.145901, 36.632401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399242, -0.729820, 0.554950,
		-0.456867, -0.366420, -0.810561,
		0.794908, -0.577148, -0.187140,
		43.968712, 33.972755, 36.576260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146912, 33.641193, 36.442093>,  <43.412277, 34.376759, 36.707256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146912, 33.641193, 36.442093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523544, 33.574406, 36.559082>,  <43.749523, 33.534332, 36.629276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523544, 33.574406, 36.559082>,  <43.146912, 33.641193, 36.442093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523544, 33.574406, 36.559082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258770, -0.914498, 0.311016,
		0.215539, -0.368531, -0.904283,
		0.941584, -0.166965, 0.292475,
		43.806019, 33.524315, 36.646824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325039, 32.895863, 36.191433>,  <43.146912, 33.641193, 36.442093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325039, 32.895863, 36.191433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601269, 32.992111, 36.464256>,  <43.767006, 33.049862, 36.627949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601269, 32.992111, 36.464256>,  <43.325039, 32.895863, 36.191433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601269, 32.992111, 36.464256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029474, -0.932890, 0.358952,
		0.722656, -0.267988, -0.637142,
		0.690579, 0.240620, 0.682058,
		43.808441, 33.064297, 36.668873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783180, 32.293655, 36.329174>,  <43.325039, 32.895863, 36.191433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783180, 32.293655, 36.329174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881065, 32.516804, 36.646385>,  <43.939796, 32.650692, 36.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881065, 32.516804, 36.646385>,  <43.783180, 32.293655, 36.329174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881065, 32.516804, 36.646385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004904, -0.818595, 0.574350,
		0.969582, -0.136664, -0.203060,
		0.244717, 0.557875, 0.793025,
		43.954479, 32.684166, 36.884293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327400, 31.930387, 36.633076>,  <43.783180, 32.293655, 36.329174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327400, 31.930387, 36.633076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168423, 32.177086, 36.904858>,  <44.073036, 32.325104, 37.067928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168423, 32.177086, 36.904858>,  <44.327400, 31.930387, 36.633076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168423, 32.177086, 36.904858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107865, -0.703918, 0.702043,
		0.911264, 0.352314, 0.213244,
		-0.397446, 0.616745, 0.679458,
		44.049191, 32.362110, 37.108696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667339, 31.747250, 37.273380>,  <44.327400, 31.930387, 36.633076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667339, 31.747250, 37.273380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333111, 31.926868, 37.399982>,  <44.132572, 32.034641, 37.475945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333111, 31.926868, 37.399982>,  <44.667339, 31.747250, 37.273380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333111, 31.926868, 37.399982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111658, -0.702902, 0.702468,
		0.537914, 0.551622, 0.637465,
		-0.835572, 0.449046, 0.316507,
		44.082439, 32.061581, 37.494934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701241, 31.735189, 38.021336>,  <44.667339, 31.747250, 37.273380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701241, 31.735189, 38.021336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311928, 31.783947, 37.943501>,  <44.078339, 31.813202, 37.896797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311928, 31.783947, 37.943501>,  <44.701241, 31.735189, 38.021336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311928, 31.783947, 37.943501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225353, -0.669659, 0.707653,
		-0.044051, 0.732597, 0.679236,
		-0.973281, 0.121895, -0.194592,
		44.019943, 31.820515, 37.885124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399925, 31.842505, 38.701992>,  <44.701241, 31.735189, 38.021336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399925, 31.842505, 38.701992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130547, 31.717007, 38.434254>,  <43.968918, 31.641708, 38.273609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130547, 31.717007, 38.434254>,  <44.399925, 31.842505, 38.701992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130547, 31.717007, 38.434254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241263, -0.762600, 0.600194,
		-0.698754, 0.565690, 0.437879,
		-0.673450, -0.313744, -0.669350,
		43.928513, 31.622883, 38.233448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832653, 31.763073, 39.048569>,  <44.399925, 31.842505, 38.701992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832653, 31.763073, 39.048569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765327, 31.538639, 38.724380>,  <43.724934, 31.403978, 38.529869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765327, 31.538639, 38.724380>,  <43.832653, 31.763073, 39.048569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765327, 31.538639, 38.724380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363498, -0.728923, 0.580121,
		-0.916265, 0.392243, -0.081268,
		-0.168310, -0.561085, -0.810466,
		43.714836, 31.370314, 38.481239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094563, 31.553373, 39.069798>,  <43.832653, 31.763073, 39.048569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094563, 31.553373, 39.069798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276558, 31.294273, 38.825371>,  <43.385754, 31.138813, 38.678715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276558, 31.294273, 38.825371>,  <43.094563, 31.553373, 39.069798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276558, 31.294273, 38.825371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253003, -0.751962, 0.608723,
		-0.853800, -0.122360, -0.506017,
		0.454989, -0.647751, -0.611067,
		43.413055, 31.099949, 38.642052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700542, 30.923250, 39.190536>,  <43.094563, 31.553373, 39.069798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700542, 30.923250, 39.190536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037327, 30.799032, 39.014057>,  <43.239399, 30.724501, 38.908169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037327, 30.799032, 39.014057>,  <42.700542, 30.923250, 39.190536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037327, 30.799032, 39.014057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018988, -0.834293, 0.550995,
		-0.539201, -0.455539, -0.708340,
		0.841963, -0.310547, -0.441201,
		43.289917, 30.705868, 38.881699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491005, 30.231638, 38.957554>,  <42.700542, 30.923250, 39.190536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491005, 30.231638, 38.957554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888592, 30.274946, 38.950451>,  <43.127144, 30.300932, 38.946190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888592, 30.274946, 38.950451>,  <42.491005, 30.231638, 38.957554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888592, 30.274946, 38.950451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091581, -0.729585, 0.677730,
		0.060421, -0.675265, -0.735096,
		0.993963, 0.108270, -0.017759,
		43.186779, 30.307426, 38.945122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709991, 29.571287, 38.876736>,  <42.491005, 30.231638, 38.957554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709991, 29.571287, 38.876736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025982, 29.750214, 39.044468>,  <43.215576, 29.857571, 39.145107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025982, 29.750214, 39.044468>,  <42.709991, 29.571287, 38.876736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025982, 29.750214, 39.044468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012727, -0.671804, 0.740619,
		0.612999, -0.590412, -0.525019,
		0.789981, 0.447317, 0.419330,
		43.262978, 29.884409, 39.170265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335384, 29.040047, 39.013763>,  <42.709991, 29.571287, 38.876736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335384, 29.040047, 39.013763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397343, 29.347525, 39.261993>,  <43.434517, 29.532011, 39.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397343, 29.347525, 39.261993>,  <43.335384, 29.040047, 39.013763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397343, 29.347525, 39.261993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286314, -0.636131, 0.716493,
		0.945532, 0.066697, -0.318623,
		0.154898, 0.768693, 0.620578,
		43.443813, 29.578133, 39.448166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941540, 28.958649, 39.264935>,  <43.335384, 29.040047, 39.013763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941540, 28.958649, 39.264935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760433, 29.182917, 39.542252>,  <43.651768, 29.317478, 39.708641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760433, 29.182917, 39.542252>,  <43.941540, 28.958649, 39.264935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760433, 29.182917, 39.542252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376898, -0.584324, 0.718689,
		0.808053, 0.586698, 0.053246,
		-0.452767, 0.560670, 0.693290,
		43.624603, 29.351118, 39.750240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463959, 29.043478, 39.791821>,  <43.941540, 28.958649, 39.264935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463959, 29.043478, 39.791821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114468, 29.143131, 39.958931>,  <43.904774, 29.202923, 40.059196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114468, 29.143131, 39.958931>,  <44.463959, 29.043478, 39.791821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114468, 29.143131, 39.958931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100819, -0.747480, 0.656590,
		0.475859, 0.615798, 0.627974,
		-0.873724, 0.249132, 0.417779,
		43.852352, 29.217871, 40.084263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513699, 28.856867, 40.485519>,  <44.463959, 29.043478, 39.791821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513699, 28.856867, 40.485519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116188, 28.894716, 40.509010>,  <43.877682, 28.917425, 40.523106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116188, 28.894716, 40.509010>,  <44.513699, 28.856867, 40.485519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116188, 28.894716, 40.509010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012556, -0.619152, 0.785171,
		0.110654, 0.779549, 0.616489,
		-0.993780, 0.094623, 0.058724,
		43.818054, 28.923103, 40.526627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416924, 28.890209, 41.120163>,  <44.513699, 28.856867, 40.485519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416924, 28.890209, 41.120163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059452, 28.778231, 40.979900>,  <43.844967, 28.711042, 40.895741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059452, 28.778231, 40.979900>,  <44.416924, 28.890209, 41.120163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059452, 28.778231, 40.979900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132929, -0.581233, 0.802806,
		-0.428559, 0.764066, 0.482224,
		-0.893682, -0.279948, -0.350659,
		43.791348, 28.694246, 40.874702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053108, 28.752325, 41.725971>,  <44.416924, 28.890209, 41.120163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053108, 28.752325, 41.725971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855869, 28.545002, 41.446480>,  <43.737526, 28.420609, 41.278786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855869, 28.545002, 41.446480>,  <44.053108, 28.752325, 41.725971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855869, 28.545002, 41.446480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134815, -0.747927, 0.649947,
		-0.859467, 0.414683, 0.298922,
		-0.493094, -0.518309, -0.698724,
		43.707943, 28.389509, 41.236862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447487, 28.570721, 42.040783>,  <44.053108, 28.752325, 41.725971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447487, 28.570721, 42.040783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488838, 28.334238, 41.720837>,  <43.513649, 28.192348, 41.528870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488838, 28.334238, 41.720837>,  <43.447487, 28.570721, 42.040783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488838, 28.334238, 41.720837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336931, -0.777446, 0.531089,
		-0.935836, 0.214595, -0.279571,
		0.103382, -0.591208, -0.799866,
		43.519852, 28.156876, 41.480877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802647, 28.129683, 41.956139>,  <43.447487, 28.570721, 42.040783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802647, 28.129683, 41.956139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114735, 27.959099, 41.773106>,  <43.301987, 27.856749, 41.663284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114735, 27.959099, 41.773106>,  <42.802647, 28.129683, 41.956139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114735, 27.959099, 41.773106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196115, -0.861446, 0.468455,
		-0.593961, -0.275760, -0.755755,
		0.780224, -0.426459, -0.457585,
		43.348801, 27.831161, 41.635830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493210, 27.500103, 41.786926>,  <42.802647, 28.129683, 41.956139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493210, 27.500103, 41.786926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890919, 27.458969, 41.775265>,  <43.129543, 27.434290, 41.768269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890919, 27.458969, 41.775265>,  <42.493210, 27.500103, 41.786926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890919, 27.458969, 41.775265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065337, -0.800592, 0.595638,
		-0.084591, -0.590321, -0.802724,
		0.994271, -0.102833, -0.029153,
		43.189201, 27.428120, 41.766518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670212, 26.715792, 41.600864>,  <42.493210, 27.500103, 41.786926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670212, 26.715792, 41.600864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991119, 26.881865, 41.772434>,  <43.183666, 26.981508, 41.875378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991119, 26.881865, 41.772434>,  <42.670212, 26.715792, 41.600864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991119, 26.881865, 41.772434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062382, -0.772900, 0.631454,
		0.593688, -0.479841, -0.645977,
		0.802274, 0.415184, 0.428928,
		43.231800, 27.006420, 41.901112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323822, 26.329472, 41.396812>,  <42.670212, 26.715792, 41.600864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323822, 26.329472, 41.396812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404533, 26.504547, 41.747288>,  <43.452961, 26.609592, 41.957573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404533, 26.504547, 41.747288>,  <43.323822, 26.329472, 41.396812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404533, 26.504547, 41.747288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173103, -0.896446, 0.407945,
		0.964012, 0.069356, -0.256651,
		0.201781, 0.437691, 0.876191,
		43.465069, 26.635855, 42.010143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861099, 26.006227, 41.964451>,  <43.323822, 26.329472, 41.396812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861099, 26.006227, 41.964451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220032, 25.875576, 41.845715>,  <44.435390, 25.797186, 41.774475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220032, 25.875576, 41.845715>,  <43.861099, 26.006227, 41.964451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220032, 25.875576, 41.845715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348072, 0.937234, 0.020921,
		0.271373, -0.122094, 0.954699,
		0.897331, -0.326626, -0.296837,
		44.489231, 25.777588, 41.756664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464077, 26.127079, 42.405537>,  <43.861099, 26.006227, 41.964451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464077, 26.127079, 42.405537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559696, 26.108196, 42.017593>,  <44.617065, 26.096867, 41.784828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559696, 26.108196, 42.017593>,  <44.464077, 26.127079, 42.405537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559696, 26.108196, 42.017593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313780, 0.948985, 0.031149,
		0.918912, -0.311769, 0.241662,
		0.239045, -0.047205, -0.969860,
		44.631409, 26.094034, 41.726635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238026, 26.253775, 42.267616>,  <44.464077, 26.127079, 42.405537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238026, 26.253775, 42.267616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981689, 26.363958, 41.980995>,  <44.827888, 26.430069, 41.809021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981689, 26.363958, 41.980995>,  <45.238026, 26.253775, 42.267616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981689, 26.363958, 41.980995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369861, 0.928717, 0.026243,
		0.672703, -0.248207, -0.697039,
		-0.640838, 0.275461, -0.716553,
		44.789436, 26.446596, 41.766029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813202, 26.590254, 42.019928>,  <45.238026, 26.253775, 42.267616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813202, 26.590254, 42.019928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170780, 26.411015, 42.016827>,  <46.385326, 26.303471, 42.014965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170780, 26.411015, 42.016827>,  <45.813202, 26.590254, 42.019928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170780, 26.411015, 42.016827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338957, 0.687333, -0.642403,
		0.293192, 0.571647, 0.766328,
		0.893950, -0.448099, -0.007757,
		46.438965, 26.276585, 42.014500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448887, 27.023037, 42.292137>,  <45.813202, 26.590254, 42.019928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448887, 27.023037, 42.292137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588867, 26.785484, 42.002354>,  <46.672855, 26.642952, 41.828484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588867, 26.785484, 42.002354>,  <46.448887, 27.023037, 42.292137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588867, 26.785484, 42.002354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425812, 0.789691, -0.441669,
		0.834398, -0.153922, 0.529234,
		0.349949, -0.593882, -0.724458,
		46.693851, 26.607319, 41.785015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.224571, 27.015787, 42.286514>,  <46.448887, 27.023037, 42.292137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.224571, 27.015787, 42.286514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043247, 26.945629, 41.936943>,  <46.934452, 26.903534, 41.727200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043247, 26.945629, 41.936943>,  <47.224571, 27.015787, 42.286514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.043247, 26.945629, 41.936943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547205, 0.719186, -0.428181,
		0.703614, -0.672316, -0.230041,
		-0.453315, -0.175394, -0.873923,
		46.907253, 26.893009, 41.674767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.806774, 26.891424, 41.730591>,  <47.224571, 27.015787, 42.286514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.806774, 26.891424, 41.730591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453022, 26.999222, 41.578148>,  <47.240772, 27.063900, 41.486683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453022, 26.999222, 41.578148>,  <47.806774, 26.891424, 41.730591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.453022, 26.999222, 41.578148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424035, 0.805150, -0.414642,
		0.195105, -0.528304, -0.826335,
		-0.884380, 0.269496, -0.381108,
		47.187706, 27.080070, 41.463814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.760185, 27.172928, 40.930466>,  <47.806774, 26.891424, 41.730591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.760185, 27.172928, 40.930466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.454811, 27.334455, 41.132099>,  <47.271587, 27.431372, 41.253078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.454811, 27.334455, 41.132099>,  <47.760185, 27.172928, 40.930466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.454811, 27.334455, 41.132099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196936, 0.888824, -0.413774,
		-0.615126, -0.216619, -0.758087,
		-0.763437, 0.403818, 0.504079,
		47.225780, 27.455601, 41.283321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.591629, 27.626291, 40.421803>,  <47.760185, 27.172928, 40.930466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.591629, 27.626291, 40.421803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371933, 27.749029, 40.732719>,  <47.240116, 27.822672, 40.919270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371933, 27.749029, 40.732719>,  <47.591629, 27.626291, 40.421803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371933, 27.749029, 40.732719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147531, 0.951141, -0.271228,
		-0.822541, -0.034294, -0.567671,
		-0.549237, 0.306845, 0.777293,
		47.207161, 27.841084, 40.965908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134819, 27.997950, 40.151527>,  <47.591629, 27.626291, 40.421803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134819, 27.997950, 40.151527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.122391, 28.127251, 40.529850>,  <47.114933, 28.204830, 40.756844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.122391, 28.127251, 40.529850>,  <47.134819, 27.997950, 40.151527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.122391, 28.127251, 40.529850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115379, 0.938774, -0.324640,
		-0.992835, -0.119213, 0.008126,
		-0.031072, 0.323252, 0.945803,
		47.113068, 28.224226, 40.813591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510380, 28.363913, 40.207352>,  <47.134819, 27.997950, 40.151527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510380, 28.363913, 40.207352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745930, 28.490385, 40.504875>,  <46.887260, 28.566269, 40.683392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745930, 28.490385, 40.504875>,  <46.510380, 28.363913, 40.207352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745930, 28.490385, 40.504875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112767, 0.943443, -0.311766,
		-0.800320, 0.099713, 0.591224,
		0.588873, 0.316183, 0.743812,
		46.922592, 28.585239, 40.728020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201309, 28.910860, 40.490993>,  <46.510380, 28.363913, 40.207352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201309, 28.910860, 40.490993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.584881, 28.977875, 40.582539>,  <46.815025, 29.018084, 40.637466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.584881, 28.977875, 40.582539>,  <46.201309, 28.910860, 40.490993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.584881, 28.977875, 40.582539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047551, 0.890441, -0.452607,
		-0.279620, 0.423137, 0.861840,
		0.958933, 0.167539, 0.228865,
		46.872562, 29.028137, 40.651199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195480, 29.571920, 40.687439>,  <46.201309, 28.910860, 40.490993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195480, 29.571920, 40.687439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.581470, 29.515396, 40.599018>,  <46.813065, 29.481482, 40.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.581470, 29.515396, 40.599018>,  <46.195480, 29.571920, 40.687439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.581470, 29.515396, 40.599018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030675, 0.897542, -0.439861,
		0.260557, 0.417673, 0.870436,
		0.964971, -0.141309, -0.221049,
		46.870960, 29.473003, 40.532703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375526, 30.273029, 40.607372>,  <46.195480, 29.571920, 40.687439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375526, 30.273029, 40.607372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655762, 30.051519, 40.427368>,  <46.823902, 29.918613, 40.319366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655762, 30.051519, 40.427368>,  <46.375526, 30.273029, 40.607372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655762, 30.051519, 40.427368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097192, 0.698829, -0.708655,
		0.706912, 0.452741, 0.543416,
		0.700592, -0.553772, -0.450008,
		46.865940, 29.885387, 40.292366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.937210, 30.687487, 40.384930>,  <46.375526, 30.273029, 40.607372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.937210, 30.687487, 40.384930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964241, 30.373840, 40.138161>,  <46.980461, 30.185652, 39.990097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964241, 30.373840, 40.138161>,  <46.937210, 30.687487, 40.384930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964241, 30.373840, 40.138161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272004, 0.609395, -0.744749,
		0.959920, -0.117479, 0.254463,
		0.067576, -0.784115, -0.616925,
		46.984512, 30.138605, 39.953083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.437584, 30.954374, 39.862869>,  <46.937210, 30.687487, 40.384930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.437584, 30.954374, 39.862869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284286, 30.623077, 39.699337>,  <47.192307, 30.424299, 39.601219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284286, 30.623077, 39.699337>,  <47.437584, 30.954374, 39.862869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.284286, 30.623077, 39.699337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185508, 0.364583, -0.912505,
		0.904827, -0.425552, 0.013921,
		-0.383243, -0.828242, -0.408828,
		47.169315, 30.374605, 39.576687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902367, 30.693415, 39.407623>,  <47.437584, 30.954374, 39.862869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902367, 30.693415, 39.407623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.533653, 30.595314, 39.287518>,  <47.312424, 30.536453, 39.215454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.533653, 30.595314, 39.287518>,  <47.902367, 30.693415, 39.407623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.533653, 30.595314, 39.287518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145900, 0.498114, -0.854749,
		0.359194, -0.831706, -0.423374,
		-0.921788, -0.245250, -0.300265,
		47.257118, 30.521738, 39.197437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.995201, 30.783037, 38.669167>,  <47.902367, 30.693415, 39.407623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.995201, 30.783037, 38.669167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600029, 30.731985, 38.704262>,  <47.362926, 30.701353, 38.725319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600029, 30.731985, 38.704262>,  <47.995201, 30.783037, 38.669167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600029, 30.731985, 38.704262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139600, 0.488414, -0.861373,
		0.067084, -0.863228, -0.500337,
		-0.987933, -0.127631, 0.087742,
		47.303650, 30.693695, 38.730583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.829342, 30.761080, 38.021149>,  <47.995201, 30.783037, 38.669167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.829342, 30.761080, 38.021149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474213, 30.848722, 38.183014>,  <47.261135, 30.901308, 38.280132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474213, 30.848722, 38.183014>,  <47.829342, 30.761080, 38.021149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.474213, 30.848722, 38.183014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102174, 0.763566, -0.637595,
		-0.448690, -0.607421, -0.655528,
		-0.887828, 0.219105, 0.404667,
		47.207863, 30.914454, 38.304413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351650, 30.904076, 37.412766>,  <47.829342, 30.761080, 38.021149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351650, 30.904076, 37.412766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163681, 31.083492, 37.716866>,  <47.050900, 31.191143, 37.899326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163681, 31.083492, 37.716866>,  <47.351650, 30.904076, 37.412766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.163681, 31.083492, 37.716866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103022, 0.827518, -0.551906,
		-0.876675, -0.337676, -0.342660,
		-0.469923, 0.448541, 0.760252,
		47.022705, 31.218054, 37.944942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.800053, 31.220490, 37.118454>,  <47.351650, 30.904076, 37.412766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.800053, 31.220490, 37.118454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852013, 31.410089, 37.466808>,  <46.883186, 31.523849, 37.675823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852013, 31.410089, 37.466808>,  <46.800053, 31.220490, 37.118454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.852013, 31.410089, 37.466808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284124, 0.859293, -0.425312,
		-0.949947, -0.192193, 0.246296,
		0.129898, 0.474002, 0.870890,
		46.890984, 31.552290, 37.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171619, 31.604540, 37.292473>,  <46.800053, 31.220490, 37.118454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171619, 31.604540, 37.292473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483452, 31.768026, 37.482296>,  <46.670551, 31.866117, 37.596191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483452, 31.768026, 37.482296>,  <46.171619, 31.604540, 37.292473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483452, 31.768026, 37.482296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151676, 0.858367, -0.490102,
		-0.607660, 0.310093, 0.731157,
		0.779579, 0.408714, 0.474562,
		46.717327, 31.890640, 37.624664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968586, 32.286621, 37.472382>,  <46.171619, 31.604540, 37.292473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968586, 32.286621, 37.472382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366844, 32.307697, 37.503143>,  <46.605801, 32.320343, 37.521603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366844, 32.307697, 37.503143>,  <45.968586, 32.286621, 37.472382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366844, 32.307697, 37.503143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025280, 0.946648, -0.321275,
		-0.089732, 0.317932, 0.943858,
		0.995645, 0.052689, 0.076907,
		46.665539, 32.323505, 37.526215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038025, 32.920063, 37.779892>,  <45.968586, 32.286621, 37.472382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038025, 32.920063, 37.779892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396835, 32.858391, 37.614208>,  <46.612122, 32.821388, 37.514797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396835, 32.858391, 37.614208>,  <46.038025, 32.920063, 37.779892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396835, 32.858391, 37.614208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051070, 0.967062, -0.249365,
		0.439009, 0.202535, 0.875357,
		0.897030, -0.154179, -0.414206,
		46.665943, 32.812138, 37.489948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470303, 33.389240, 38.074184>,  <46.038025, 32.920063, 37.779892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470303, 33.389240, 38.074184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642685, 33.300510, 37.724312>,  <46.746113, 33.247272, 37.514389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642685, 33.300510, 37.724312>,  <46.470303, 33.389240, 38.074184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642685, 33.300510, 37.724312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093745, 0.953065, -0.287886,
		0.897491, 0.206063, 0.389932,
		0.430953, -0.221821, -0.874686,
		46.771973, 33.233963, 37.461906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865990, 33.961578, 37.981079>,  <46.470303, 33.389240, 38.074184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865990, 33.961578, 37.981079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843647, 33.791386, 37.619781>,  <46.830242, 33.689270, 37.403004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843647, 33.791386, 37.619781>,  <46.865990, 33.961578, 37.981079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843647, 33.791386, 37.619781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035614, 0.903231, -0.427674,
		0.997804, -0.056055, -0.035296,
		-0.055854, -0.425478, -0.903244,
		46.826889, 33.663742, 37.348808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.397133, 34.212727, 37.575283>,  <46.865990, 33.961578, 37.981079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.397133, 34.212727, 37.575283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.106506, 34.090660, 37.329041>,  <46.932133, 34.017418, 37.181293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.106506, 34.090660, 37.329041>,  <47.397133, 34.212727, 37.575283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.106506, 34.090660, 37.329041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079840, 0.927384, -0.365491,
		0.682443, -0.216403, -0.698170,
		-0.726565, -0.305169, -0.615610,
		46.888538, 33.999111, 37.144356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.600132, 34.302238, 36.801380>,  <47.397133, 34.212727, 37.575283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.600132, 34.302238, 36.801380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204372, 34.338917, 36.846439>,  <46.966919, 34.360924, 36.873474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204372, 34.338917, 36.846439>,  <47.600132, 34.302238, 36.801380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204372, 34.338917, 36.846439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032043, 0.894245, -0.446429,
		-0.141673, -0.438084, -0.887700,
		-0.989395, 0.091692, 0.112653,
		46.907555, 34.366425, 36.880234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.191547, 34.192467, 36.183998>,  <47.600132, 34.302238, 36.801380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.191547, 34.192467, 36.183998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034718, 34.534271, 36.047707>,  <46.940620, 34.739353, 35.965931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034718, 34.534271, 36.047707>,  <47.191547, 34.192467, 36.183998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.034718, 34.534271, 36.047707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738390, 0.071406, -0.670583,
		-0.548688, -0.514507, -0.658957,
		-0.392073, 0.854508, -0.340727,
		46.917095, 34.790623, 35.945488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926792, 34.200977, 35.466682>,  <47.191547, 34.192467, 36.183998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926792, 34.200977, 35.466682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099731, 34.541843, 35.584595>,  <47.203495, 34.746361, 35.655342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099731, 34.541843, 35.584595>,  <46.926792, 34.200977, 35.466682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.099731, 34.541843, 35.584595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622707, -0.045733, -0.781117,
		-0.652157, 0.521276, -0.550420,
		0.432350, 0.852162, 0.294777,
		47.229435, 34.797493, 35.673027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.999432, 34.661892, 34.846619>,  <46.926792, 34.200977, 35.466682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.999432, 34.661892, 34.846619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268074, 34.730572, 35.134914>,  <47.429260, 34.771778, 35.307892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268074, 34.730572, 35.134914>,  <46.999432, 34.661892, 34.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268074, 34.730572, 35.134914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739693, -0.099773, -0.665507,
		-0.042357, 0.980084, -0.194013,
		0.671610, 0.171699, 0.720735,
		47.469559, 34.782082, 35.351135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.544674, 35.214382, 34.590191>,  <46.999432, 34.661892, 34.846619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.544674, 35.214382, 34.590191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682381, 34.956951, 34.863625>,  <47.765007, 34.802494, 35.027683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682381, 34.956951, 34.863625>,  <47.544674, 35.214382, 34.590191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682381, 34.956951, 34.863625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774899, -0.216318, -0.593918,
		0.530104, 0.734176, 0.424236,
		0.344270, -0.643578, 0.683583,
		47.785660, 34.763878, 35.068699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.429596, 43.128269, 40.087234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.246666, 42.880917, 40.342876>,  <32.136906, 42.732506, 40.496262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.246666, 42.880917, 40.342876>,  <32.429596, 43.128269, 40.087234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246666, 42.880917, 40.342876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077855, -0.743747, -0.663912,
		0.885883, -0.253868, 0.388281,
		-0.457329, -0.618379, 0.639107,
		32.109467, 42.695404, 40.534607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950188, 42.515274, 40.100384>,  <32.429596, 43.128269, 40.087234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950188, 42.515274, 40.100384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.590641, 42.372681, 40.202328>,  <32.374912, 42.287125, 40.263493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.590641, 42.372681, 40.202328>,  <32.950188, 42.515274, 40.100384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590641, 42.372681, 40.202328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042679, -0.507595, -0.860538,
		0.436134, -0.784388, 0.441047,
		-0.898869, -0.356487, 0.254857,
		32.320980, 42.265736, 40.278786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957016, 41.789486, 40.117256>,  <32.950188, 42.515274, 40.100384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957016, 41.789486, 40.117256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570713, 41.875950, 40.059849>,  <32.338932, 41.927826, 40.025406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570713, 41.875950, 40.059849>,  <32.957016, 41.789486, 40.117256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570713, 41.875950, 40.059849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015246, -0.504900, -0.863043,
		-0.259013, -0.835675, 0.484314,
		-0.965753, 0.216156, -0.143516,
		32.280987, 41.940796, 40.016792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736099, 41.158550, 40.091110>,  <32.957016, 41.789486, 40.117256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736099, 41.158550, 40.091110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.453190, 41.383644, 39.919952>,  <32.283443, 41.518700, 39.817257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.453190, 41.383644, 39.919952>,  <32.736099, 41.158550, 40.091110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453190, 41.383644, 39.919952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016310, -0.618100, -0.785930,
		-0.706756, -0.548886, 0.446342,
		-0.707270, 0.562740, -0.427894,
		32.241009, 41.552467, 39.791584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233383, 40.719772, 39.843777>,  <32.736099, 41.158550, 40.091110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233383, 40.719772, 39.843777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.123150, 41.041283, 39.632877>,  <32.057011, 41.234188, 39.506336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.123150, 41.041283, 39.632877>,  <32.233383, 40.719772, 39.843777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123150, 41.041283, 39.632877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037276, -0.557011, -0.829668,
		-0.960554, -0.208988, 0.183464,
		-0.275582, 0.803780, -0.527249,
		32.040474, 41.282417, 39.474701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521204, 40.617092, 39.395824>,  <32.233383, 40.719772, 39.843777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521204, 40.617092, 39.395824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.739819, 40.901981, 39.219624>,  <31.870987, 41.072914, 39.113903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.739819, 40.901981, 39.219624>,  <31.521204, 40.617092, 39.395824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739819, 40.901981, 39.219624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100305, -0.577898, -0.809922,
		-0.831406, 0.398468, -0.387282,
		0.546537, 0.712220, -0.440499,
		31.903780, 41.115646, 39.087475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190933, 40.649261, 38.675457>,  <31.521204, 40.617092, 39.395824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190933, 40.649261, 38.675457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.543343, 40.838478, 38.677711>,  <31.754787, 40.952007, 38.679062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.543343, 40.838478, 38.677711>,  <31.190933, 40.649261, 38.675457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543343, 40.838478, 38.677711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290266, -0.531132, -0.796018,
		-0.373558, 0.702944, -0.605247,
		0.881022, 0.473041, 0.005632,
		31.807650, 40.980389, 38.679401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265085, 40.713940, 38.010319>,  <31.190933, 40.649261, 38.675457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265085, 40.713940, 38.010319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.627310, 40.797226, 38.158157>,  <31.844645, 40.847198, 38.246861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.627310, 40.797226, 38.158157>,  <31.265085, 40.713940, 38.010319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627310, 40.797226, 38.158157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424154, -0.458693, -0.780829,
		0.006955, 0.863857, -0.503689,
		0.905563, 0.208211, 0.369599,
		31.898979, 40.859688, 38.269035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705158, 41.042450, 37.484646>,  <31.265085, 40.713940, 38.010319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705158, 41.042450, 37.484646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.913656, 40.838776, 37.758591>,  <32.038754, 40.716572, 37.922958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.913656, 40.838776, 37.758591>,  <31.705158, 41.042450, 37.484646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913656, 40.838776, 37.758591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524660, -0.441733, -0.727739,
		0.673079, 0.738649, 0.036898,
		0.521244, -0.509185, 0.684861,
		32.070030, 40.686020, 37.964050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225014, 40.806412, 37.092594>,  <31.705158, 41.042450, 37.484646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225014, 40.806412, 37.092594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.259544, 40.598000, 37.432259>,  <32.280262, 40.472954, 37.636059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.259544, 40.598000, 37.432259>,  <32.225014, 40.806412, 37.092594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259544, 40.598000, 37.432259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538331, -0.692804, -0.479815,
		0.838301, 0.498550, 0.220681,
		0.086323, -0.521029, 0.849163,
		32.285442, 40.441692, 37.687008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975525, 40.728603, 37.230476>,  <32.225014, 40.806412, 37.092594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975525, 40.728603, 37.230476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.739792, 40.447659, 37.390163>,  <32.598351, 40.279091, 37.485977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.739792, 40.447659, 37.390163>,  <32.975525, 40.728603, 37.230476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739792, 40.447659, 37.390163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585749, -0.711800, -0.387606,
		0.556404, 0.005413, 0.830895,
		-0.589333, -0.702361, 0.399219,
		32.562992, 40.236950, 37.509930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398476, 40.219952, 37.542843>,  <32.975525, 40.728603, 37.230476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398476, 40.219952, 37.542843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068100, 40.010448, 37.459415>,  <32.869873, 39.884747, 37.409359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068100, 40.010448, 37.459415>,  <33.398476, 40.219952, 37.542843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068100, 40.010448, 37.459415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558929, -0.712436, -0.424304,
		0.073640, -0.467025, 0.881173,
		-0.825939, -0.523759, -0.208570,
		32.820320, 39.853321, 37.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477524, 39.493992, 37.819790>,  <33.398476, 40.219952, 37.542843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477524, 39.493992, 37.819790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.190350, 39.496868, 37.541359>,  <33.018047, 39.498592, 37.374302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.190350, 39.496868, 37.541359>,  <33.477524, 39.493992, 37.819790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190350, 39.496868, 37.541359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561599, -0.584860, -0.585274,
		-0.411315, -0.811103, 0.415852,
		-0.717932, 0.007190, -0.696076,
		32.974972, 39.499027, 37.332535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512741, 38.903469, 37.561966>,  <33.477524, 39.493992, 37.819790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512741, 38.903469, 37.561966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.314117, 39.079269, 37.262562>,  <33.194942, 39.184750, 37.082920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.314117, 39.079269, 37.262562>,  <33.512741, 38.903469, 37.561966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314117, 39.079269, 37.262562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524845, -0.534814, -0.662202,
		-0.691350, -0.721676, 0.034900,
		-0.496561, 0.439497, -0.748512,
		33.165150, 39.211117, 37.038010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161427, 38.332615, 37.182938>,  <33.512741, 38.903469, 37.561966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161427, 38.332615, 37.182938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.218777, 38.647713, 36.943302>,  <33.253185, 38.836769, 36.799522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.218777, 38.647713, 36.943302>,  <33.161427, 38.332615, 37.182938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218777, 38.647713, 36.943302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597537, -0.551455, -0.582105,
		-0.788919, -0.274519, -0.549769,
		0.143374, 0.787742, -0.599088,
		33.261787, 38.884037, 36.763577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138447, 38.029743, 36.556046>,  <33.161427, 38.332615, 37.182938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138447, 38.029743, 36.556046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280495, 38.386250, 36.443233>,  <33.365723, 38.600151, 36.375546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280495, 38.386250, 36.443233>,  <33.138447, 38.029743, 36.556046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280495, 38.386250, 36.443233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463296, -0.429836, -0.774983,
		-0.811940, 0.144548, -0.565561,
		0.355121, 0.891261, -0.282033,
		33.387032, 38.653629, 36.358624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127850, 38.044670, 35.834534>,  <33.138447, 38.029743, 36.556046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127850, 38.044670, 35.834534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.390835, 38.338871, 35.899982>,  <33.548626, 38.515392, 35.939251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.390835, 38.338871, 35.899982>,  <33.127850, 38.044670, 35.834534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390835, 38.338871, 35.899982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536489, -0.304474, -0.787067,
		-0.529073, 0.605251, -0.594772,
		0.657466, 0.735504, 0.163622,
		33.588074, 38.559521, 35.949070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216057, 38.332653, 35.192947>,  <33.127850, 38.044670, 35.834534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216057, 38.332653, 35.192947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532436, 38.379723, 35.433132>,  <33.722263, 38.407967, 35.577244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532436, 38.379723, 35.433132>,  <33.216057, 38.332653, 35.192947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532436, 38.379723, 35.433132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605150, -0.295642, -0.739182,
		0.090538, 0.948023, -0.305049,
		0.790947, 0.117677, 0.600463,
		33.769722, 38.415024, 35.613270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724064, 38.591801, 34.735561>,  <33.216057, 38.332653, 35.192947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724064, 38.591801, 34.735561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.961857, 38.525261, 35.050247>,  <34.104530, 38.485336, 35.239059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.961857, 38.525261, 35.050247>,  <33.724064, 38.591801, 34.735561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961857, 38.525261, 35.050247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712473, -0.344612, -0.611248,
		0.372795, 0.923888, -0.086343,
		0.594480, -0.166353, 0.786715,
		34.140202, 38.475353, 35.286263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382042, 38.870014, 34.596592>,  <33.724064, 38.591801, 34.735561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382042, 38.870014, 34.596592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462753, 38.581268, 34.861378>,  <34.511181, 38.408020, 35.020248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462753, 38.581268, 34.861378>,  <34.382042, 38.870014, 34.596592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462753, 38.581268, 34.861378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638556, -0.415519, -0.647758,
		0.742651, 0.553408, 0.377106,
		0.201780, -0.721862, 0.661967,
		34.523289, 38.364708, 35.059967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092216, 38.868046, 34.628819>,  <34.382042, 38.870014, 34.596592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092216, 38.868046, 34.628819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992241, 38.511024, 34.778954>,  <34.932255, 38.296810, 34.869034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992241, 38.511024, 34.778954>,  <35.092216, 38.868046, 34.628819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992241, 38.511024, 34.778954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700620, -0.434272, -0.566162,
		0.668329, 0.121466, 0.733881,
		-0.249935, -0.892555, 0.375339,
		34.917259, 38.243259, 34.891556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706066, 38.552036, 34.879292>,  <35.092216, 38.868046, 34.628819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706066, 38.552036, 34.879292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463154, 38.237057, 34.837086>,  <35.317406, 38.048069, 34.811760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463154, 38.237057, 34.837086>,  <35.706066, 38.552036, 34.879292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463154, 38.237057, 34.837086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748973, -0.523105, -0.406694,
		0.265055, -0.326006, 0.907450,
		-0.607277, -0.787452, -0.105518,
		35.280972, 38.000820, 34.805431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240097, 38.136791, 35.051353>,  <35.706066, 38.552036, 34.879292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240097, 38.136791, 35.051353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.637665, 38.180828, 35.050678>,  <36.876205, 38.207249, 35.050274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.637665, 38.180828, 35.050678>,  <36.240097, 38.136791, 35.051353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637665, 38.180828, 35.050678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051334, 0.476917, 0.877448,
		0.097408, -0.872026, 0.479669,
		0.993919, 0.110093, -0.001691,
		36.935841, 38.213856, 35.050171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459190, 37.806408, 35.648186>,  <36.240097, 38.136791, 35.051353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459190, 37.806408, 35.648186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707794, 38.098682, 35.535168>,  <36.856956, 38.274048, 35.467358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707794, 38.098682, 35.535168>,  <36.459190, 37.806408, 35.648186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707794, 38.098682, 35.535168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055976, 0.401161, 0.914296,
		0.781407, -0.552424, 0.290225,
		0.621505, 0.730683, -0.282547,
		36.894245, 38.317886, 35.450405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851971, 38.019650, 36.338650>,  <36.459190, 37.806408, 35.648186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851971, 38.019650, 36.338650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918762, 38.287510, 36.049187>,  <36.958836, 38.448227, 35.875507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918762, 38.287510, 36.049187>,  <36.851971, 38.019650, 36.338650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918762, 38.287510, 36.049187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055142, 0.726470, 0.684982,
		0.984418, -0.154280, 0.084377,
		0.166976, 0.669655, -0.723658,
		36.968857, 38.488407, 35.832088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500656, 38.385342, 36.571793>,  <36.851971, 38.019650, 36.338650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500656, 38.385342, 36.571793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278084, 38.619690, 36.336121>,  <37.144539, 38.760300, 36.194717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278084, 38.619690, 36.336121>,  <37.500656, 38.385342, 36.571793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278084, 38.619690, 36.336121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011571, 0.703565, 0.710537,
		0.830813, 0.402182, -0.384706,
		-0.556431, 0.585872, -0.589184,
		37.111153, 38.795452, 36.159367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694263, 39.043446, 36.785957>,  <37.500656, 38.385342, 36.571793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694263, 39.043446, 36.785957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347839, 39.088600, 36.591148>,  <37.139984, 39.115692, 36.474262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347839, 39.088600, 36.591148>,  <37.694263, 39.043446, 36.785957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347839, 39.088600, 36.591148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343101, 0.574341, 0.743246,
		0.363622, 0.810796, -0.458683,
		-0.866061, 0.112886, -0.487027,
		37.088020, 39.122467, 36.445042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732971, 39.660358, 36.557270>,  <37.694263, 39.043446, 36.785957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732971, 39.660358, 36.557270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337936, 39.597557, 36.555862>,  <37.100914, 39.559875, 36.555019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337936, 39.597557, 36.555862>,  <37.732971, 39.660358, 36.557270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337936, 39.597557, 36.555862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137007, 0.850406, 0.507975,
		-0.076761, 0.502154, -0.861365,
		-0.987591, -0.157006, -0.003520,
		37.041660, 39.550457, 36.554806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432983, 40.272804, 36.414009>,  <37.732971, 39.660358, 36.557270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432983, 40.272804, 36.414009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167473, 40.035912, 36.596729>,  <37.008167, 39.893776, 36.706360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167473, 40.035912, 36.596729>,  <37.432983, 40.272804, 36.414009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167473, 40.035912, 36.596729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240017, 0.747112, 0.619851,
		-0.708373, 0.301804, -0.638061,
		-0.663777, -0.592231, 0.456796,
		36.968338, 39.858242, 36.733768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891457, 40.760334, 36.512077>,  <37.432983, 40.272804, 36.414009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891457, 40.760334, 36.512077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824352, 40.461525, 36.769390>,  <36.784092, 40.282238, 36.923779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824352, 40.461525, 36.769390>,  <36.891457, 40.760334, 36.512077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824352, 40.461525, 36.769390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314896, 0.658950, 0.683099,
		-0.934183, -0.087973, -0.345779,
		-0.167757, -0.747024, 0.643282,
		36.774025, 40.237419, 36.962376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289589, 40.925926, 36.848000>,  <36.891457, 40.760334, 36.512077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289589, 40.925926, 36.848000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440105, 40.657494, 37.103516>,  <36.530415, 40.496433, 37.256824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440105, 40.657494, 37.103516>,  <36.289589, 40.925926, 36.848000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440105, 40.657494, 37.103516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393790, 0.508251, 0.765905,
		-0.838651, -0.539754, -0.073015,
		0.376290, -0.671079, 0.638795,
		36.552994, 40.456169, 37.295155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754044, 40.805916, 37.268368>,  <36.289589, 40.925926, 36.848000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754044, 40.805916, 37.268368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089672, 40.692207, 37.453903>,  <36.291050, 40.623981, 37.565224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089672, 40.692207, 37.453903>,  <35.754044, 40.805916, 37.268368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089672, 40.692207, 37.453903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342805, 0.385753, 0.856551,
		-0.422421, -0.877715, 0.226225,
		0.839074, -0.284274, 0.463835,
		36.341396, 40.606926, 37.593052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608223, 40.422760, 37.930515>,  <35.754044, 40.805916, 37.268368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608223, 40.422760, 37.930515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984623, 40.546791, 37.984734>,  <36.210464, 40.621212, 38.017265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984623, 40.546791, 37.984734>,  <35.608223, 40.422760, 37.930515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984623, 40.546791, 37.984734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266898, 0.433771, 0.860586,
		0.208056, -0.845987, 0.490938,
		0.940999, 0.310080, 0.135544,
		36.266922, 40.639816, 38.025398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606289, 40.239578, 38.536888>,  <35.608223, 40.422760, 37.930515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606289, 40.239578, 38.536888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908421, 40.500500, 38.511650>,  <36.089699, 40.657051, 38.496506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908421, 40.500500, 38.511650>,  <35.606289, 40.239578, 38.536888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908421, 40.500500, 38.511650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368401, 0.502258, 0.782315,
		0.542000, -0.567657, 0.619679,
		0.755326, 0.652305, -0.063098,
		36.135017, 40.696190, 38.492722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913570, 40.314266, 39.179218>,  <35.606289, 40.239578, 38.536888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913570, 40.314266, 39.179218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022957, 40.657108, 39.004589>,  <36.088589, 40.862812, 38.899811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022957, 40.657108, 39.004589>,  <35.913570, 40.314266, 39.179218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022957, 40.657108, 39.004589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239869, 0.500297, 0.831965,
		0.931493, -0.122794, 0.342406,
		0.273465, 0.857102, -0.436569,
		36.104996, 40.914238, 38.873619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186573, 40.648113, 39.721390>,  <35.913570, 40.314266, 39.179218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186573, 40.648113, 39.721390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112015, 40.924568, 39.442081>,  <36.067280, 41.090443, 39.274498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112015, 40.924568, 39.442081>,  <36.186573, 40.648113, 39.721390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112015, 40.924568, 39.442081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258619, 0.651144, 0.713532,
		0.947825, 0.313588, 0.057370,
		-0.186399, 0.691140, -0.698270,
		36.056095, 41.131908, 39.232601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349735, 41.292091, 40.154400>,  <36.186573, 40.648113, 39.721390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349735, 41.292091, 40.154400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141663, 41.383842, 39.825329>,  <36.016819, 41.438892, 39.627888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141663, 41.383842, 39.825329>,  <36.349735, 41.292091, 40.154400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141663, 41.383842, 39.825329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356504, 0.817005, 0.453219,
		0.776088, 0.529044, -0.343219,
		-0.520184, 0.229379, -0.822675,
		35.985607, 41.452656, 39.578526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499493, 41.988014, 40.020859>,  <36.349735, 41.292091, 40.154400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499493, 41.988014, 40.020859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138206, 41.938499, 39.856480>,  <35.921436, 41.908791, 39.757851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138206, 41.938499, 39.856480>,  <36.499493, 41.988014, 40.020859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138206, 41.938499, 39.856480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348863, 0.769476, 0.534979,
		0.249996, 0.626566, -0.738185,
		-0.903215, -0.123783, -0.410951,
		35.867241, 41.901363, 39.733192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326206, 42.586880, 39.917305>,  <36.499493, 41.988014, 40.020859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326206, 42.586880, 39.917305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984810, 42.380112, 39.890919>,  <35.779972, 42.256050, 39.875088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984810, 42.380112, 39.890919>,  <36.326206, 42.586880, 39.917305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984810, 42.380112, 39.890919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403780, 0.575983, 0.710778,
		-0.329418, 0.633278, -0.700316,
		-0.853490, -0.516917, -0.065966,
		35.728764, 42.225037, 39.871128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768631, 43.035759, 39.733063>,  <36.326206, 42.586880, 39.917305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768631, 43.035759, 39.733063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587330, 42.720760, 39.900116>,  <35.478550, 42.531761, 40.000347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587330, 42.720760, 39.900116>,  <35.768631, 43.035759, 39.733063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587330, 42.720760, 39.900116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458874, 0.607808, 0.648077,
		-0.764199, 0.102097, -0.636848,
		-0.453248, -0.787493, 0.417637,
		35.451355, 42.484512, 40.025406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.019257, 43.104393, 39.492161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050152, 42.871422, 39.815842>,  <35.068691, 42.731640, 40.010052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050152, 42.871422, 39.815842>,  <35.019257, 43.104393, 39.492161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050152, 42.871422, 39.815842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397645, 0.726283, 0.560707,
		-0.914282, -0.365085, -0.175501,
		0.077242, -0.582432, 0.809202,
		35.073326, 42.696693, 40.058601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383736, 43.217525, 39.898487>,  <35.019257, 43.104393, 39.492161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383736, 43.217525, 39.898487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625217, 43.047966, 40.168552>,  <34.770107, 42.946232, 40.330593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625217, 43.047966, 40.168552>,  <34.383736, 43.217525, 39.898487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625217, 43.047966, 40.168552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302801, 0.661519, 0.686079,
		-0.737462, -0.618632, 0.271006,
		0.603706, -0.423897, 0.675167,
		34.806328, 42.920795, 40.371101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972675, 43.004768, 40.329525>,  <34.383736, 43.217525, 39.898487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972675, 43.004768, 40.329525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319794, 43.028519, 40.526871>,  <34.528065, 43.042767, 40.645279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319794, 43.028519, 40.526871>,  <33.972675, 43.004768, 40.329525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319794, 43.028519, 40.526871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446807, 0.527740, 0.722395,
		-0.217479, -0.847328, 0.484497,
		0.867794, 0.059371, 0.493364,
		34.580132, 43.046329, 40.674881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900768, 42.841427, 41.076538>,  <33.972675, 43.004768, 40.329525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900768, 42.841427, 41.076538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228642, 43.069759, 41.057434>,  <34.425365, 43.206757, 41.045971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228642, 43.069759, 41.057434>,  <33.900768, 42.841427, 41.076538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228642, 43.069759, 41.057434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294426, 0.491365, 0.819679,
		0.491365, -0.657811, 0.570829,
		-0.819679, -0.570829, 0.047763,
		34.474545, 43.241009, 41.043106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108326, 42.874973, 41.776966>,  <33.900768, 42.841427, 41.076538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108326, 42.874973, 41.776966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.268101, 43.186813, 41.584023>,  <34.363964, 43.373917, 41.468258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.268101, 43.186813, 41.584023>,  <34.108326, 42.874973, 41.776966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268101, 43.186813, 41.584023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314804, 0.610801, 0.726512,
		0.861017, -0.138345, 0.489397,
		0.399434, 0.779604, -0.482359,
		34.387932, 43.420696, 41.439316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330582, 43.200825, 42.302643>,  <34.108326, 42.874973, 41.776966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330582, 43.200825, 42.302643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325153, 43.457539, 41.995937>,  <34.321896, 43.611568, 41.811916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325153, 43.457539, 41.995937>,  <34.330582, 43.200825, 42.302643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325153, 43.457539, 41.995937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301467, 0.728523, 0.615119,
		0.953380, 0.239502, 0.183591,
		-0.013572, 0.641789, -0.766761,
		34.321083, 43.650074, 41.765907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654716, 43.736019, 42.641529>,  <34.330582, 43.200825, 42.302643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654716, 43.736019, 42.641529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452381, 43.874577, 42.325520>,  <34.330978, 43.957710, 42.135914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452381, 43.874577, 42.325520>,  <34.654716, 43.736019, 42.641529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452381, 43.874577, 42.325520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318778, 0.775940, 0.544332,
		0.801565, 0.527187, -0.282078,
		-0.505840, 0.346397, -0.790022,
		34.300629, 43.978497, 42.088512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906235, 44.369110, 42.523846>,  <34.654716, 43.736019, 42.641529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906235, 44.369110, 42.523846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550999, 44.386017, 42.340759>,  <34.337856, 44.396160, 42.230907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550999, 44.386017, 42.340759>,  <34.906235, 44.369110, 42.523846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550999, 44.386017, 42.340759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195982, 0.865908, 0.460211,
		0.415794, 0.498414, -0.760723,
		-0.888092, 0.042264, -0.457719,
		34.284573, 44.398697, 42.203442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875225, 44.986183, 42.212425>,  <34.906235, 44.369110, 42.523846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875225, 44.986183, 42.212425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490189, 44.878193, 42.221600>,  <34.259167, 44.813400, 42.227104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490189, 44.878193, 42.221600>,  <34.875225, 44.986183, 42.212425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490189, 44.878193, 42.221600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189269, 0.730579, 0.656073,
		-0.193875, 0.627192, -0.754349,
		-0.962595, -0.269971, 0.022933,
		34.201408, 44.797203, 42.228481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506241, 45.586197, 42.184837>,  <34.875225, 44.986183, 42.212425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506241, 45.586197, 42.184837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277500, 45.317265, 42.372860>,  <34.140255, 45.155907, 42.485672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277500, 45.317265, 42.372860>,  <34.506241, 45.586197, 42.184837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277500, 45.317265, 42.372860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251799, 0.689188, 0.679425,
		-0.780756, 0.270172, -0.563407,
		-0.571855, -0.672330, 0.470058,
		34.105946, 45.115566, 42.513878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934753, 45.974464, 42.306652>,  <34.506241, 45.586197, 42.184837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934753, 45.974464, 42.306652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.954380, 45.668484, 42.563538>,  <33.966156, 45.484894, 42.717670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.954380, 45.668484, 42.563538>,  <33.934753, 45.974464, 42.306652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954380, 45.668484, 42.563538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144080, 0.630843, 0.762416,
		-0.988349, -0.129936, -0.079264,
		0.049062, -0.764954, 0.642214,
		33.969097, 45.438999, 42.756203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378670, 46.080559, 42.764923>,  <33.934753, 45.974464, 42.306652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378670, 46.080559, 42.764923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634224, 45.839928, 42.956730>,  <33.787556, 45.695549, 43.071812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634224, 45.839928, 42.956730>,  <33.378670, 46.080559, 42.764923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634224, 45.839928, 42.956730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146326, 0.516903, 0.843445,
		-0.755262, -0.609026, 0.242213,
		0.638881, -0.601580, 0.479514,
		33.825890, 45.659454, 43.100582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116486, 45.974854, 43.462017>,  <33.378670, 46.080559, 42.764923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116486, 45.974854, 43.462017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.488770, 45.833855, 43.501064>,  <33.712139, 45.749256, 43.524494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.488770, 45.833855, 43.501064>,  <33.116486, 45.974854, 43.462017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488770, 45.833855, 43.501064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103872, 0.510623, 0.853507,
		-0.350711, -0.784224, 0.511854,
		0.930705, -0.352502, 0.097622,
		33.767982, 45.728104, 43.530350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265495, 45.842636, 44.138771>,  <33.116486, 45.974854, 43.462017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265495, 45.842636, 44.138771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.654449, 45.855778, 44.046352>,  <33.887821, 45.863663, 43.990902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.654449, 45.855778, 44.046352>,  <33.265495, 45.842636, 44.138771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654449, 45.855778, 44.046352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216152, 0.246403, 0.944756,
		0.087968, -0.968610, 0.232499,
		0.972389, 0.032853, -0.231042,
		33.946167, 45.865635, 43.977039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584702, 45.589588, 44.811462>,  <33.265495, 45.842636, 44.138771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584702, 45.589588, 44.811462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872585, 45.777416, 44.606907>,  <34.045315, 45.890114, 44.484173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872585, 45.777416, 44.606907>,  <33.584702, 45.589588, 44.811462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872585, 45.777416, 44.606907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332775, 0.413137, 0.847690,
		0.609325, -0.780269, 0.141077,
		0.719711, 0.469572, -0.511389,
		34.088497, 45.918289, 44.453491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133999, 45.466034, 45.114929>,  <33.584702, 45.589588, 44.811462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133999, 45.466034, 45.114929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.197731, 45.809452, 44.919991>,  <34.235970, 46.015503, 44.803028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.197731, 45.809452, 44.919991>,  <34.133999, 45.466034, 45.114929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197731, 45.809452, 44.919991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232491, 0.447140, 0.863721,
		0.959459, -0.250920, -0.128363,
		0.159329, 0.858548, -0.487349,
		34.245529, 46.067017, 44.773785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799171, 45.751495, 45.291386>,  <34.133999, 45.466034, 45.114929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799171, 45.751495, 45.291386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590984, 46.059669, 45.144119>,  <34.466072, 46.244572, 45.055759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590984, 46.059669, 45.144119>,  <34.799171, 45.751495, 45.291386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590984, 46.059669, 45.144119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210635, 0.533687, 0.819031,
		0.827494, 0.348730, -0.440047,
		-0.520468, 0.770432, -0.368168,
		34.434845, 46.290798, 45.033669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191738, 46.354877, 45.457283>,  <34.799171, 45.751495, 45.291386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191738, 46.354877, 45.457283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829361, 46.506172, 45.381176>,  <34.611935, 46.596951, 45.335510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829361, 46.506172, 45.381176>,  <35.191738, 46.354877, 45.457283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829361, 46.506172, 45.381176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034459, 0.513764, 0.857239,
		0.421993, 0.770055, -0.478475,
		-0.905944, 0.378237, -0.190269,
		34.557579, 46.619644, 45.324097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278343, 46.959454, 45.715893>,  <35.191738, 46.354877, 45.457283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278343, 46.959454, 45.715893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883442, 46.913094, 45.672245>,  <34.646503, 46.885277, 45.646057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883442, 46.913094, 45.672245>,  <35.278343, 46.959454, 45.715893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883442, 46.913094, 45.672245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158591, 0.656828, 0.737175,
		-0.013768, 0.745080, -0.666833,
		-0.987248, -0.115903, -0.109119,
		34.587269, 46.878323, 45.639511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008911, 47.655453, 45.786533>,  <35.278343, 46.959454, 45.715893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008911, 47.655453, 45.786533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741779, 47.375778, 45.888634>,  <34.581501, 47.207973, 45.949894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741779, 47.375778, 45.888634>,  <35.008911, 47.655453, 45.786533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741779, 47.375778, 45.888634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208369, 0.504840, 0.837687,
		-0.714557, 0.506242, -0.482833,
		-0.667826, -0.699182, 0.255252,
		34.541431, 47.166023, 45.965210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552364, 47.978939, 46.037186>,  <35.008911, 47.655453, 45.786533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552364, 47.978939, 46.037186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478954, 47.622490, 46.203186>,  <34.434910, 47.408623, 46.302788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478954, 47.622490, 46.203186>,  <34.552364, 47.978939, 46.037186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478954, 47.622490, 46.203186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084807, 0.434950, 0.896452,
		-0.979350, 0.129327, -0.155397,
		-0.183526, -0.891119, 0.415000,
		34.423897, 47.355156, 46.327686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921780, 47.872581, 46.473633>,  <34.552364, 47.978939, 46.037186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921780, 47.872581, 46.473633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.152996, 47.583988, 46.626125>,  <34.291725, 47.410831, 46.717621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.152996, 47.583988, 46.626125>,  <33.921780, 47.872581, 46.473633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152996, 47.583988, 46.626125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160477, 0.357561, 0.919999,
		-0.800075, -0.592973, 0.090903,
		0.578037, -0.721480, 0.381233,
		34.326408, 47.367546, 46.740494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576080, 47.369144, 47.014629>,  <33.921780, 47.872581, 46.473633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576080, 47.369144, 47.014629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970116, 47.390091, 47.080177>,  <34.206539, 47.402660, 47.119507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970116, 47.390091, 47.080177>,  <33.576080, 47.369144, 47.014629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970116, 47.390091, 47.080177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171943, 0.268584, 0.947786,
		0.005618, -0.961832, 0.273584,
		0.985091, 0.052365, 0.163871,
		34.265644, 47.405800, 47.129337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829948, 46.933235, 47.626057>,  <33.576080, 47.369144, 47.014629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829948, 46.933235, 47.626057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097946, 47.229225, 47.602242>,  <34.258747, 47.406818, 47.587952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097946, 47.229225, 47.602242>,  <33.829948, 46.933235, 47.626057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097946, 47.229225, 47.602242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067198, 0.019425, 0.997550,
		0.739317, -0.672356, -0.036710,
		0.669996, 0.739973, -0.059542,
		34.298946, 47.451218, 47.584377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294353, 46.480034, 47.527828>,  <33.829948, 46.933235, 47.626057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294353, 46.480034, 47.527828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.908344, 46.471123, 47.632320>,  <32.676739, 46.465775, 47.695015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.908344, 46.471123, 47.632320>,  <33.294353, 46.480034, 47.527828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908344, 46.471123, 47.632320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232194, -0.390047, -0.891038,
		0.121744, -0.920525, 0.371230,
		-0.965020, -0.022281, 0.261227,
		32.618839, 46.464439, 47.710690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196190, 45.800358, 47.352310>,  <33.294353, 46.480034, 47.527828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196190, 45.800358, 47.352310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840275, 45.971775, 47.415089>,  <32.626728, 46.074627, 47.452755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840275, 45.971775, 47.415089>,  <33.196190, 45.800358, 47.352310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840275, 45.971775, 47.415089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396112, -0.554374, -0.731960,
		-0.226667, -0.713457, 0.663024,
		-0.889785, 0.428543, 0.156951,
		32.573338, 46.100338, 47.462173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774643, 45.263069, 47.408787>,  <33.196190, 45.800358, 47.352310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774643, 45.263069, 47.408787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.533989, 45.564793, 47.303677>,  <32.389599, 45.745827, 47.240608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.533989, 45.564793, 47.303677>,  <32.774643, 45.263069, 47.408787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533989, 45.564793, 47.303677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418122, -0.577703, -0.701023,
		-0.680598, -0.311884, 0.662959,
		-0.601631, 0.754313, -0.262778,
		32.353500, 45.791088, 47.224842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175446, 44.885422, 47.221813>,  <32.774643, 45.263069, 47.408787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175446, 44.885422, 47.221813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121933, 45.246513, 47.058262>,  <32.089825, 45.463169, 46.960129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121933, 45.246513, 47.058262>,  <32.175446, 44.885422, 47.221813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121933, 45.246513, 47.058262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428491, -0.424719, -0.797502,
		-0.893588, 0.068513, 0.443629,
		-0.133779, 0.902729, -0.408881,
		32.081799, 45.517334, 46.935596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676394, 44.715233, 46.826553>,  <32.175446, 44.885422, 47.221813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676394, 44.715233, 46.826553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799400, 45.061089, 46.667645>,  <31.873205, 45.268604, 46.572300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799400, 45.061089, 46.667645>,  <31.676394, 44.715233, 46.826553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799400, 45.061089, 46.667645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257972, -0.326111, -0.909452,
		-0.915906, 0.382159, 0.122768,
		0.307519, 0.864642, -0.397273,
		31.891657, 45.320480, 46.548462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194544, 44.882248, 46.415314>,  <31.676394, 44.715233, 46.826553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194544, 44.882248, 46.415314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477764, 45.120991, 46.264355>,  <31.647696, 45.264236, 46.173779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477764, 45.120991, 46.264355>,  <31.194544, 44.882248, 46.415314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477764, 45.120991, 46.264355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230325, -0.310017, -0.922410,
		-0.667545, 0.740036, -0.082037,
		0.708049, 0.596855, -0.377399,
		31.690180, 45.300049, 46.151134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913837, 45.295124, 45.861534>,  <31.194544, 44.882248, 46.415314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913837, 45.295124, 45.861534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301956, 45.248569, 45.776703>,  <31.534828, 45.220638, 45.725803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301956, 45.248569, 45.776703>,  <30.913837, 45.295124, 45.861534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301956, 45.248569, 45.776703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237202, -0.285612, -0.928526,
		0.047496, 0.951252, -0.304735,
		0.970299, -0.116385, -0.212074,
		31.593046, 45.213654, 45.713081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043287, 45.553581, 45.190453>,  <30.913837, 45.295124, 45.861534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043287, 45.553581, 45.190453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.370033, 45.330166, 45.248100>,  <31.566080, 45.196117, 45.282688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.370033, 45.330166, 45.248100>,  <31.043287, 45.553581, 45.190453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370033, 45.330166, 45.248100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041285, -0.305822, -0.951193,
		0.575353, 0.771044, -0.272874,
		0.816863, -0.558537, 0.144123,
		31.615091, 45.162605, 45.291336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396435, 45.603615, 44.612495>,  <31.043287, 45.553581, 45.190453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396435, 45.603615, 44.612495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551561, 45.270565, 44.770657>,  <31.644638, 45.070736, 44.865551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551561, 45.270565, 44.770657>,  <31.396435, 45.603615, 44.612495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551561, 45.270565, 44.770657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041392, -0.412808, -0.909877,
		0.920806, 0.369232, -0.125630,
		0.387817, -0.832621, 0.395399,
		31.667906, 45.020779, 44.889275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098061, 45.585598, 44.288788>,  <31.396435, 45.603615, 44.612495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098061, 45.585598, 44.288788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.002850, 45.218098, 44.414795>,  <31.945723, 44.997597, 44.490398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.002850, 45.218098, 44.414795>,  <32.098061, 45.585598, 44.288788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002850, 45.218098, 44.414795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060575, -0.337752, -0.939284,
		0.969366, -0.204497, 0.136050,
		-0.238032, -0.918752, 0.315018,
		31.931440, 44.942471, 44.509300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662632, 45.166706, 43.992638>,  <32.098061, 45.585598, 44.288788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662632, 45.166706, 43.992638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.364616, 44.916073, 44.084118>,  <32.185806, 44.765694, 44.139004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.364616, 44.916073, 44.084118>,  <32.662632, 45.166706, 43.992638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364616, 44.916073, 44.084118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001480, -0.341313, -0.939949,
		0.667015, -0.700641, 0.253366,
		-0.745043, -0.626584, 0.228698,
		32.141102, 44.728096, 44.152729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875729, 44.391716, 43.862072>,  <32.662632, 45.166706, 43.992638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875729, 44.391716, 43.862072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476852, 44.363438, 43.852196>,  <32.237526, 44.346470, 43.846272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476852, 44.363438, 43.852196>,  <32.875729, 44.391716, 43.862072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476852, 44.363438, 43.852196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054520, -0.459467, -0.886520,
		0.051328, -0.885377, 0.462031,
		-0.997193, -0.070693, -0.024687,
		32.177696, 44.342228, 43.844791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788872, 43.748383, 43.629566>,  <32.875729, 44.391716, 43.862072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788872, 43.748383, 43.629566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433819, 43.924637, 43.575977>,  <32.220787, 44.030388, 43.543823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433819, 43.924637, 43.575977>,  <32.788872, 43.748383, 43.629566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433819, 43.924637, 43.575977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082652, -0.438583, -0.894882,
		-0.453091, -0.783245, 0.425717,
		-0.887624, 0.440649, -0.133981,
		32.167530, 44.056828, 43.535786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396770, 43.303555, 43.269077>,  <32.788872, 43.748383, 43.629566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396770, 43.303555, 43.269077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182125, 43.633266, 43.196846>,  <32.053337, 43.831093, 43.153507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182125, 43.633266, 43.196846>,  <32.396770, 43.303555, 43.269077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182125, 43.633266, 43.196846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010774, -0.220678, -0.975287,
		-0.843762, -0.521404, 0.127299,
		-0.536610, 0.824281, -0.180582,
		32.021141, 43.880550, 43.142670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744743, 43.050846, 43.016266>,  <32.396770, 43.303555, 43.269077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744743, 43.050846, 43.016266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778513, 43.421635, 42.870060>,  <31.798775, 43.644108, 42.782337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778513, 43.421635, 42.870060>,  <31.744743, 43.050846, 43.016266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778513, 43.421635, 42.870060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110562, -0.355844, -0.927983,
		-0.990277, 0.118756, 0.072446,
		0.084424, 0.926970, -0.365514,
		31.803841, 43.699726, 42.760406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298422, 43.012875, 42.525150>,  <31.744743, 43.050846, 43.016266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298422, 43.012875, 42.525150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.542791, 43.314842, 42.429756>,  <31.689413, 43.496021, 42.372520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.542791, 43.314842, 42.429756>,  <31.298422, 43.012875, 42.525150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542791, 43.314842, 42.429756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015942, -0.289445, -0.957062,
		-0.791529, 0.588493, -0.164794,
		0.610924, 0.754915, -0.238486,
		31.726068, 43.541317, 42.358212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911730, 43.376450, 42.061020>,  <31.298422, 43.012875, 42.525150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911730, 43.376450, 42.061020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299545, 43.462696, 42.014526>,  <31.532234, 43.514442, 41.986629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299545, 43.462696, 42.014526>,  <30.911730, 43.376450, 42.061020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299545, 43.462696, 42.014526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035915, -0.344257, -0.938188,
		-0.242300, 0.913782, -0.326026,
		0.969536, 0.215614, -0.116232,
		31.590406, 43.527382, 41.979656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989857, 43.627167, 41.377102>,  <30.911730, 43.376450, 42.061020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989857, 43.627167, 41.377102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366055, 43.521061, 41.462051>,  <31.591774, 43.457397, 41.513020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366055, 43.521061, 41.462051>,  <30.989857, 43.627167, 41.377102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366055, 43.521061, 41.462051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044213, -0.524152, -0.850476,
		0.336915, 0.809260, -0.481235,
		0.940496, -0.265261, 0.212375,
		31.648203, 43.441483, 41.525764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307419, 43.545506, 40.725330>,  <30.989857, 43.627167, 41.377102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307419, 43.545506, 40.725330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.537558, 43.347466, 40.985748>,  <31.675640, 43.228642, 41.141998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.537558, 43.347466, 40.985748>,  <31.307419, 43.545506, 40.725330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537558, 43.347466, 40.985748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302338, -0.610866, -0.731733,
		0.759980, 0.617834, -0.201772,
		0.575345, -0.495099, 0.651041,
		31.710161, 43.198936, 41.181061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929808, 43.513325, 40.410957>,  <31.307419, 43.545506, 40.725330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929808, 43.513325, 40.410957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.912376, 43.196621, 40.654667>,  <31.901917, 43.006599, 40.800892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.912376, 43.196621, 40.654667>,  <31.929808, 43.513325, 40.410957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912376, 43.196621, 40.654667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346498, -0.583976, -0.734105,
		0.937038, 0.179119, 0.299794,
		-0.043580, -0.791763, 0.609272,
		31.899302, 42.959091, 40.837448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.174877, 27.113794, 40.933109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.913960, 27.326920, 41.148746>,  <43.757408, 27.454794, 41.278130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.913960, 27.326920, 41.148746>,  <44.174877, 27.113794, 40.933109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913960, 27.326920, 41.148746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157764, 0.791100, -0.590991,
		-0.741365, -0.300451, -0.600089,
		-0.652295, 0.532813, 0.539094,
		43.718269, 27.486763, 41.310474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740284, 27.378460, 40.431522>,  <44.174877, 27.113794, 40.933109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740284, 27.378460, 40.431522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.655872, 27.610943, 40.745888>,  <43.605225, 27.750433, 40.934505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.655872, 27.610943, 40.745888>,  <43.740284, 27.378460, 40.431522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655872, 27.610943, 40.745888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305016, 0.803030, -0.511965,
		-0.928672, 0.131676, -0.346743,
		-0.211031, 0.581209, 0.785915,
		43.592564, 27.785305, 40.981663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297707, 27.798889, 40.137329>,  <43.740284, 27.378460, 40.431522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297707, 27.798889, 40.137329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416096, 27.957817, 40.484783>,  <43.487129, 28.053173, 40.693256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416096, 27.957817, 40.484783>,  <43.297707, 27.798889, 40.137329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416096, 27.957817, 40.484783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029300, 0.905180, -0.424018,
		-0.954746, 0.150949, 0.256269,
		0.295975, 0.397321, 0.868640,
		43.504887, 28.077013, 40.745377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695309, 28.271231, 40.349987>,  <43.297707, 27.798889, 40.137329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695309, 28.271231, 40.349987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047218, 28.393791, 40.495380>,  <43.258362, 28.467327, 40.582619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047218, 28.393791, 40.495380>,  <42.695309, 28.271231, 40.349987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047218, 28.393791, 40.495380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088908, 0.857146, -0.507342,
		-0.467011, 0.414028, 0.781334,
		0.879771, 0.306401, 0.363486,
		43.311150, 28.485712, 40.604427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548527, 28.912424, 40.546970>,  <42.695309, 28.271231, 40.349987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548527, 28.912424, 40.546970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947639, 28.930067, 40.527061>,  <43.187107, 28.940653, 40.515118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947639, 28.930067, 40.527061>,  <42.548527, 28.912424, 40.546970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947639, 28.930067, 40.527061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063399, 0.856853, -0.511647,
		0.020080, 0.513670, 0.857753,
		0.997786, 0.044107, -0.049771,
		43.246975, 28.943298, 40.512131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665054, 29.626993, 40.576218>,  <42.548527, 28.912424, 40.546970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665054, 29.626993, 40.576218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.012562, 29.494875, 40.428623>,  <43.221066, 29.415604, 40.340065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.012562, 29.494875, 40.428623>,  <42.665054, 29.626993, 40.576218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012562, 29.494875, 40.428623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052198, 0.802015, -0.595019,
		0.492466, 0.497671, 0.714004,
		0.868765, -0.330296, -0.368988,
		43.273190, 29.395786, 40.317928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152893, 30.200882, 40.633694>,  <42.665054, 29.626993, 40.576218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152893, 30.200882, 40.633694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304447, 29.938835, 40.372231>,  <43.395382, 29.781607, 40.215355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304447, 29.938835, 40.372231>,  <43.152893, 30.200882, 40.633694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304447, 29.938835, 40.372231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049054, 0.719541, -0.692716,
		0.924141, 0.230398, 0.304762,
		0.378889, -0.655117, -0.653655,
		43.418114, 29.742300, 40.176132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740372, 30.463703, 40.270584>,  <43.152893, 30.200882, 40.633694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740372, 30.463703, 40.270584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609600, 30.194647, 40.005054>,  <43.531136, 30.033213, 39.845737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609600, 30.194647, 40.005054>,  <43.740372, 30.463703, 40.270584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609600, 30.194647, 40.005054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198956, 0.637697, -0.744150,
		0.923868, -0.375358, -0.074657,
		-0.326931, -0.672643, -0.663828,
		43.511520, 29.992853, 39.805904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291378, 30.461731, 39.769566>,  <43.740372, 30.463703, 40.270584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291378, 30.461731, 39.769566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973137, 30.296083, 39.592693>,  <43.782192, 30.196695, 39.486568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973137, 30.296083, 39.592693>,  <44.291378, 30.461731, 39.769566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973137, 30.296083, 39.592693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094063, 0.636600, -0.765436,
		0.598477, -0.650573, -0.467525,
		-0.795599, -0.414119, -0.442185,
		43.734455, 30.171848, 39.460037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529594, 30.379417, 39.038845>,  <44.291378, 30.461731, 39.769566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529594, 30.379417, 39.038845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130421, 30.355885, 39.028542>,  <43.890915, 30.341764, 39.022358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130421, 30.355885, 39.028542>,  <44.529594, 30.379417, 39.038845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130421, 30.355885, 39.028542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009042, 0.525788, -0.850567,
		0.063585, -0.848578, -0.525235,
		-0.997935, -0.058832, -0.025759,
		43.831039, 30.338234, 39.020813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367699, 30.236837, 38.318974>,  <44.529594, 30.379417, 39.038845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367699, 30.236837, 38.318974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.036991, 30.383869, 38.489307>,  <43.838566, 30.472088, 38.591507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.036991, 30.383869, 38.489307>,  <44.367699, 30.236837, 38.318974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036991, 30.383869, 38.489307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113616, 0.632276, -0.766367,
		-0.550947, -0.681991, -0.480984,
		-0.826770, 0.367580, 0.425835,
		43.788960, 30.494143, 38.617058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801785, 30.161154, 37.854660>,  <44.367699, 30.236837, 38.318974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801785, 30.161154, 37.854660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.714199, 30.455507, 38.110950>,  <43.661648, 30.632120, 38.264725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.714199, 30.455507, 38.110950>,  <43.801785, 30.161154, 37.854660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714199, 30.455507, 38.110950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123510, 0.630474, -0.766321,
		-0.967883, -0.246935, -0.047164,
		-0.218967, 0.735884, 0.640725,
		43.648510, 30.676273, 38.303169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507950, 30.673485, 37.381832>,  <43.801785, 30.161154, 37.854660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507950, 30.673485, 37.381832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574341, 30.874014, 37.721508>,  <43.614174, 30.994331, 37.925316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574341, 30.874014, 37.721508>,  <43.507950, 30.673485, 37.381832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574341, 30.874014, 37.721508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053011, 0.864426, -0.499958,
		-0.984704, 0.037964, 0.170048,
		0.165974, 0.501325, 0.849191,
		43.624134, 31.024412, 37.976265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963112, 31.198975, 37.473816>,  <43.507950, 30.673485, 37.381832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963112, 31.198975, 37.473816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250072, 31.356415, 37.703743>,  <43.422249, 31.450878, 37.841698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250072, 31.356415, 37.703743>,  <42.963112, 31.198975, 37.473816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250072, 31.356415, 37.703743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226337, 0.912027, -0.342020,
		-0.658864, 0.115265, 0.743379,
		0.717405, 0.393599, 0.574813,
		43.465294, 31.474495, 37.876186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764912, 31.856943, 37.623909>,  <42.963112, 31.198975, 37.473816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764912, 31.856943, 37.623909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.149410, 31.888226, 37.729652>,  <43.380108, 31.906996, 37.793098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.149410, 31.888226, 37.729652>,  <42.764912, 31.856943, 37.623909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149410, 31.888226, 37.729652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046507, 0.899176, -0.435109,
		-0.271736, 0.430542, 0.860693,
		0.961247, 0.078207, 0.264361,
		43.437786, 31.911688, 37.808960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891220, 32.576496, 37.876450>,  <42.764912, 31.856943, 37.623909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891220, 32.576496, 37.876450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.241646, 32.427708, 37.753719>,  <43.451900, 32.338432, 37.680080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.241646, 32.427708, 37.753719>,  <42.891220, 32.576496, 37.876450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241646, 32.427708, 37.753719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169913, 0.833646, -0.525513,
		0.451262, 0.408251, 0.793532,
		0.876066, -0.371975, -0.306825,
		43.504467, 32.316116, 37.661671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442516, 33.062553, 38.122765>,  <42.891220, 32.576496, 37.876450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442516, 33.062553, 38.122765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.610085, 32.857857, 37.822731>,  <43.710625, 32.735039, 37.642712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.610085, 32.857857, 37.822731>,  <43.442516, 33.062553, 38.122765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610085, 32.857857, 37.822731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297789, 0.857806, -0.418917,
		0.857806, -0.047876, 0.511740,
		0.418917, -0.511740, -0.750087,
		43.735760, 32.704334, 37.597706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054951, 33.367317, 37.958961>,  <43.442516, 33.062553, 38.122765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054951, 33.367317, 37.958961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.001053, 33.151840, 37.626301>,  <43.968712, 33.022552, 37.426704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.001053, 33.151840, 37.626301>,  <44.054951, 33.367317, 37.958961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001053, 33.151840, 37.626301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378967, 0.747483, -0.545576,
		0.915548, -0.388684, 0.103427,
		-0.134747, -0.538696, -0.831655,
		43.960629, 32.990231, 37.376804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641441, 33.373558, 37.567493>,  <44.054951, 33.367317, 37.958961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641441, 33.373558, 37.567493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.372604, 33.286381, 37.284428>,  <44.211304, 33.234074, 37.114590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.372604, 33.286381, 37.284428>,  <44.641441, 33.373558, 37.567493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372604, 33.286381, 37.284428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419451, 0.675518, -0.606413,
		0.610206, -0.704397, -0.362593,
		-0.672094, -0.217946, -0.707665,
		44.170975, 33.220997, 37.072128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061745, 33.296223, 36.946495>,  <44.641441, 33.373558, 37.567493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061745, 33.296223, 36.946495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674671, 33.353313, 36.863338>,  <44.442429, 33.387569, 36.813442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674671, 33.353313, 36.863338>,  <45.061745, 33.296223, 36.946495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674671, 33.353313, 36.863338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244755, 0.730081, -0.638025,
		0.060715, -0.668289, -0.741420,
		-0.967682, 0.142729, -0.207894,
		44.384365, 33.396133, 36.800972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044834, 33.259041, 36.258575>,  <45.061745, 33.296223, 36.946495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044834, 33.259041, 36.258575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728554, 33.467705, 36.386734>,  <44.538784, 33.592903, 36.463631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728554, 33.467705, 36.386734>,  <45.044834, 33.259041, 36.258575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728554, 33.467705, 36.386734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291245, 0.780873, -0.552643,
		-0.538482, -0.343663, -0.769371,
		-0.790704, 0.521664, 0.320396,
		44.491341, 33.624203, 36.482853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705105, 32.894169, 36.015907>,  <45.044834, 33.259041, 36.258575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705105, 32.894169, 36.015907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.732254, 32.720673, 36.375298>,  <45.748543, 32.616577, 36.590931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.732254, 32.720673, 36.375298>,  <45.705105, 32.894169, 36.015907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732254, 32.720673, 36.375298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520536, -0.752874, -0.402770,
		0.851138, 0.495027, 0.174677,
		0.067872, -0.433738, 0.898479,
		45.752617, 32.590549, 36.644840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128487, 33.405746, 36.328171>,  <45.705105, 32.894169, 36.015907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128487, 33.405746, 36.328171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.379230, 33.590565, 36.579109>,  <46.529678, 33.701454, 36.729671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.379230, 33.590565, 36.579109>,  <46.128487, 33.405746, 36.328171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379230, 33.590565, 36.579109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332317, -0.886829, 0.321090,
		0.704706, 0.007199, -0.709463,
		0.626861, 0.462041, 0.627346,
		46.567287, 33.729176, 36.767315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747646, 33.077087, 36.154289>,  <46.128487, 33.405746, 36.328171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747646, 33.077087, 36.154289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.765999, 33.256165, 36.511494>,  <46.777008, 33.363613, 36.725815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.765999, 33.256165, 36.511494>,  <46.747646, 33.077087, 36.154289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765999, 33.256165, 36.511494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383812, -0.833232, 0.398011,
		0.922271, 0.324488, -0.210057,
		0.045877, 0.447697, 0.893008,
		46.779762, 33.390472, 36.779396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.395828, 32.875267, 36.433689>,  <46.747646, 33.077087, 36.154289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.395828, 32.875267, 36.433689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.200630, 32.993359, 36.762249>,  <47.083511, 33.064213, 36.959385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.200630, 32.993359, 36.762249>,  <47.395828, 32.875267, 36.433689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200630, 32.993359, 36.762249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193179, -0.881192, 0.431489,
		0.851200, 0.369242, 0.372986,
		-0.487996, 0.295231, 0.821400,
		47.054230, 33.081928, 37.008671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.824718, 32.673618, 36.980740>,  <47.395828, 32.875267, 36.433689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.824718, 32.673618, 36.980740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.462147, 32.708630, 37.146011>,  <47.244602, 32.729637, 37.245174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.462147, 32.708630, 37.146011>,  <47.824718, 32.673618, 36.980740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462147, 32.708630, 37.146011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103950, -0.901963, 0.419114,
		0.409356, 0.422849, 0.808472,
		-0.906434, 0.087526, 0.413179,
		47.190216, 32.734886, 37.269966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.929249, 32.425152, 37.660946>,  <47.824718, 32.673618, 36.980740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.929249, 32.425152, 37.660946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.532108, 32.408745, 37.616104>,  <47.293823, 32.398899, 37.589199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.532108, 32.408745, 37.616104>,  <47.929249, 32.425152, 37.660946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.532108, 32.408745, 37.616104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032789, -0.809256, 0.586541,
		-0.114779, 0.586023, 0.802124,
		-0.992850, -0.041021, -0.112101,
		47.234253, 32.396439, 37.582474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.685318, 32.356598, 38.421276>,  <47.929249, 32.425152, 37.660946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.685318, 32.356598, 38.421276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.367371, 32.261276, 38.198063>,  <47.176601, 32.204082, 38.064133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.367371, 32.261276, 38.198063>,  <47.685318, 32.356598, 38.421276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.367371, 32.261276, 38.198063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116303, -0.842773, 0.525554,
		-0.595537, 0.482645, 0.642176,
		-0.794865, -0.238300, -0.558035,
		47.128910, 32.189785, 38.030651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144794, 32.246395, 38.855244>,  <47.685318, 32.356598, 38.421276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144794, 32.246395, 38.855244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.056671, 32.035534, 38.526958>,  <47.003796, 31.909016, 38.329987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.056671, 32.035534, 38.526958>,  <47.144794, 32.246395, 38.855244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.056671, 32.035534, 38.526958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124580, -0.819290, 0.559682,
		-0.967442, 0.225546, 0.114822,
		-0.220307, -0.527156, -0.820714,
		46.990578, 31.877388, 38.280743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579433, 31.885843, 38.989407>,  <47.144794, 32.246395, 38.855244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579433, 31.885843, 38.989407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.703480, 31.665274, 38.679630>,  <46.777908, 31.532932, 38.493763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.703480, 31.665274, 38.679630>,  <46.579433, 31.885843, 38.989407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.703480, 31.665274, 38.679630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198358, -0.759144, 0.619963,
		-0.929776, -0.345876, -0.126041,
		0.310114, -0.551426, -0.774441,
		46.796513, 31.499846, 38.447296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163822, 31.326904, 38.915478>,  <46.579433, 31.885843, 38.989407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163822, 31.326904, 38.915478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.493744, 31.192064, 38.733902>,  <46.691696, 31.111160, 38.624958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.493744, 31.192064, 38.733902>,  <46.163822, 31.326904, 38.915478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493744, 31.192064, 38.733902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070715, -0.858037, 0.508696,
		-0.560977, -0.387475, -0.731552,
		0.824806, -0.337099, -0.453939,
		46.741184, 31.090935, 38.597721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018005, 30.680016, 38.786888>,  <46.163822, 31.326904, 38.915478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018005, 30.680016, 38.786888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.417713, 30.679148, 38.771606>,  <46.657536, 30.678627, 38.762440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.417713, 30.679148, 38.771606>,  <46.018005, 30.680016, 38.786888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417713, 30.679148, 38.771606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021468, -0.794650, 0.606688,
		-0.031672, -0.607064, -0.794021,
		0.999267, -0.002169, -0.038201,
		46.717495, 30.678497, 38.760147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239349, 29.945568, 38.687759>,  <46.018005, 30.680016, 38.786888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239349, 29.945568, 38.687759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.540569, 30.142763, 38.862057>,  <46.721302, 30.261080, 38.966637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.540569, 30.142763, 38.862057>,  <46.239349, 29.945568, 38.687759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540569, 30.142763, 38.862057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120467, -0.754382, 0.645287,
		0.646837, -0.433443, -0.627479,
		0.753054, 0.492986, 0.435747,
		46.766487, 30.290659, 38.992783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.678490, 29.401815, 38.827953>,  <46.239349, 29.945568, 38.687759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.678490, 29.401815, 38.827953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.815392, 29.693451, 39.065033>,  <46.897533, 29.868431, 39.207279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.815392, 29.693451, 39.065033>,  <46.678490, 29.401815, 38.827953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.815392, 29.693451, 39.065033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175890, -0.669358, 0.721819,
		0.922997, -0.142798, -0.357332,
		0.342257, 0.729087, 0.592699,
		46.918068, 29.912178, 39.242844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214249, 29.130983, 39.159172>,  <46.678490, 29.401815, 38.827953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214249, 29.130983, 39.159172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.124420, 29.436926, 39.400688>,  <47.070522, 29.620491, 39.545597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.124420, 29.436926, 39.400688>,  <47.214249, 29.130983, 39.159172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124420, 29.436926, 39.400688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234503, -0.558987, 0.795325,
		0.945821, 0.320196, -0.053830,
		-0.224570, 0.764858, 0.603788,
		47.057049, 29.666384, 39.581825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.761066, 29.285295, 39.636505>,  <47.214249, 29.130983, 39.159172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.761066, 29.285295, 39.636505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.468876, 29.458649, 39.847630>,  <47.293560, 29.562660, 39.974304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.468876, 29.458649, 39.847630>,  <47.761066, 29.285295, 39.636505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.468876, 29.458649, 39.847630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199568, -0.603659, 0.771860,
		0.653128, 0.669160, 0.354469,
		-0.730477, 0.433383, 0.527809,
		47.249733, 29.588663, 40.005974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.119869, 29.232161, 40.309319>,  <47.761066, 29.285295, 39.636505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.119869, 29.232161, 40.309319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.734119, 29.312088, 40.378670>,  <47.502670, 29.360044, 40.420280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.734119, 29.312088, 40.378670>,  <48.119869, 29.232161, 40.309319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734119, 29.312088, 40.378670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000341, -0.654436, 0.756118,
		0.264552, 0.729237, 0.631051,
		-0.964371, 0.199817, 0.173381,
		47.444809, 29.372032, 40.430683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.084026, 29.282122, 41.018642>,  <48.119869, 29.232161, 40.309319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.084026, 29.282122, 41.018642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.703175, 29.220921, 40.912788>,  <47.474663, 29.184200, 40.849277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.703175, 29.220921, 40.912788>,  <48.084026, 29.282122, 41.018642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703175, 29.220921, 40.912788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006047, -0.856123, 0.516737,
		-0.305622, 0.493603, 0.814218,
		-0.952134, -0.153002, -0.264635,
		47.417534, 29.175020, 40.833397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.665627, 29.107206, 41.654114>,  <48.084026, 29.282122, 41.018642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.665627, 29.107206, 41.654114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.441608, 28.958733, 41.357853>,  <47.307198, 28.869648, 41.180096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.441608, 28.958733, 41.357853>,  <47.665627, 29.107206, 41.654114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441608, 28.958733, 41.357853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139445, -0.839024, 0.525922,
		-0.816641, 0.397822, 0.418134,
		-0.560047, -0.371182, -0.740656,
		47.273594, 28.847378, 41.135654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081917, 28.774426, 41.992287>,  <47.665627, 29.107206, 41.654114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081917, 28.774426, 41.992287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.136623, 28.598167, 41.637405>,  <47.169449, 28.492413, 41.424477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.136623, 28.598167, 41.637405>,  <47.081917, 28.774426, 41.992287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.136623, 28.598167, 41.637405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292804, -0.873581, 0.388744,
		-0.946341, 0.206609, -0.248500,
		0.136767, -0.440646, -0.887201,
		47.177654, 28.465973, 41.371246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700001, 28.237743, 42.105240>,  <47.081917, 28.774426, 41.992287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700001, 28.237743, 42.105240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.844448, 28.116920, 41.752342>,  <46.931118, 28.044426, 41.540604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.844448, 28.116920, 41.752342>,  <46.700001, 28.237743, 42.105240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844448, 28.116920, 41.752342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205478, -0.948607, 0.240674,
		-0.909600, 0.094369, -0.404627,
		0.361119, -0.302059, -0.882243,
		46.952785, 28.026302, 41.487671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203007, 28.016249, 41.755657>,  <46.700001, 28.237743, 42.105240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203007, 28.016249, 41.755657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.543533, 27.832138, 41.654934>,  <46.747849, 27.721672, 41.594498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.543533, 27.832138, 41.654934>,  <46.203007, 28.016249, 41.755657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543533, 27.832138, 41.654934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369849, -0.866899, 0.334212,
		-0.372126, -0.191387, -0.908236,
		0.851313, -0.460279, -0.251812,
		46.798927, 27.694054, 41.579391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.084797, 41.552231, 38.304897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788971, 41.288727, 38.360149>,  <36.611477, 41.130623, 38.393299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788971, 41.288727, 38.360149>,  <37.084797, 41.552231, 38.304897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788971, 41.288727, 38.360149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408528, -0.602420, -0.685707,
		0.534929, -0.450695, 0.714650,
		-0.739565, -0.658759, 0.138131,
		36.567101, 41.091099, 38.401588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472141, 40.980862, 38.281982>,  <37.084797, 41.552231, 38.304897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472141, 40.980862, 38.281982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089397, 40.909195, 38.190495>,  <36.859749, 40.866196, 38.135601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089397, 40.909195, 38.190495>,  <37.472141, 40.980862, 38.281982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089397, 40.909195, 38.190495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290131, -0.547197, -0.785111,
		0.015513, -0.817602, 0.575574,
		-0.956861, -0.179171, -0.228723,
		36.802338, 40.855442, 38.121876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510426, 40.248867, 38.129303>,  <37.472141, 40.980862, 38.281982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510426, 40.248867, 38.129303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154270, 40.368950, 37.992432>,  <36.940578, 40.440998, 37.910309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154270, 40.368950, 37.992432>,  <37.510426, 40.248867, 38.129303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154270, 40.368950, 37.992432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023032, -0.721029, -0.692522,
		-0.454619, -0.624494, 0.635082,
		-0.890388, 0.300207, -0.342177,
		36.887154, 40.459011, 37.889778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090370, 39.548378, 38.016167>,  <37.510426, 40.248867, 38.129303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090370, 39.548378, 38.016167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899445, 39.816471, 37.788849>,  <36.784889, 39.977329, 37.652458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899445, 39.816471, 37.788849>,  <37.090370, 39.548378, 38.016167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899445, 39.816471, 37.788849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034588, -0.660545, -0.749990,
		-0.878053, -0.338323, 0.338468,
		-0.477312, 0.670237, -0.568291,
		36.756252, 40.017544, 37.618362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480404, 39.229790, 37.710365>,  <37.090370, 39.548378, 38.016167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480404, 39.229790, 37.710365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547276, 39.538998, 37.465580>,  <36.587399, 39.724522, 37.318710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547276, 39.538998, 37.465580>,  <36.480404, 39.229790, 37.710365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547276, 39.538998, 37.465580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098777, -0.604441, -0.790502,
		-0.980965, 0.192607, -0.024696,
		0.167183, 0.773016, -0.611961,
		36.597431, 39.770901, 37.281990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948997, 39.295277, 37.262661>,  <36.480404, 39.229790, 37.710365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948997, 39.295277, 37.262661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262775, 39.470913, 37.087460>,  <36.451042, 39.576294, 36.982338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262775, 39.470913, 37.087460>,  <35.948997, 39.295277, 37.262661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262775, 39.470913, 37.087460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046686, -0.662419, -0.747677,
		-0.618435, 0.606962, -0.499134,
		0.784448, 0.439087, -0.438000,
		36.498108, 39.602638, 36.956059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714943, 39.341946, 36.520309>,  <35.948997, 39.295277, 37.262661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714943, 39.341946, 36.520309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114624, 39.348049, 36.535069>,  <36.354431, 39.351711, 36.543926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114624, 39.348049, 36.535069>,  <35.714943, 39.341946, 36.520309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114624, 39.348049, 36.535069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038445, -0.617535, -0.785603,
		0.010798, 0.786395, -0.617629,
		0.999202, 0.015262, 0.036901,
		36.414383, 39.352627, 36.546139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879467, 39.449013, 35.854385>,  <35.714943, 39.341946, 36.520309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879467, 39.449013, 35.854385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228447, 39.349964, 36.022919>,  <36.437836, 39.290535, 36.124039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228447, 39.349964, 36.022919>,  <35.879467, 39.449013, 35.854385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228447, 39.349964, 36.022919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269777, -0.474849, -0.837698,
		0.407501, 0.844513, -0.347478,
		0.872447, -0.247621, 0.421332,
		36.490181, 39.275677, 36.149319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458500, 39.562157, 35.288601>,  <35.879467, 39.449013, 35.854385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458500, 39.562157, 35.288601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610001, 39.315811, 35.564938>,  <36.700901, 39.168003, 35.730740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610001, 39.315811, 35.564938>,  <36.458500, 39.562157, 35.288601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610001, 39.315811, 35.564938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503479, -0.489221, -0.712160,
		0.776567, 0.617554, 0.124781,
		0.378752, -0.615865, 0.690838,
		36.723625, 39.131050, 35.772190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171173, 39.462299, 35.009148>,  <36.458500, 39.562157, 35.288601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171173, 39.462299, 35.009148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090935, 39.159657, 35.258083>,  <37.042793, 38.978069, 35.407444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090935, 39.159657, 35.258083>,  <37.171173, 39.462299, 35.009148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090935, 39.159657, 35.258083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474576, -0.630785, -0.613913,
		0.857053, 0.172198, 0.485601,
		-0.200595, -0.756610, 0.622337,
		37.030758, 38.932674, 35.444786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851063, 39.096100, 35.066414>,  <37.171173, 39.462299, 35.009148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851063, 39.096100, 35.066414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572445, 38.834938, 35.185436>,  <37.405273, 38.678242, 35.256847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572445, 38.834938, 35.185436>,  <37.851063, 39.096100, 35.066414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572445, 38.834938, 35.185436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304689, -0.644609, -0.701173,
		0.649603, -0.397740, 0.647934,
		-0.696549, -0.652902, 0.297553,
		37.363480, 38.639069, 35.274704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193417, 38.475677, 35.082806>,  <37.851063, 39.096100, 35.066414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193417, 38.475677, 35.082806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803806, 38.388775, 35.057289>,  <37.570042, 38.336632, 35.041977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803806, 38.388775, 35.057289>,  <38.193417, 38.475677, 35.082806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803806, 38.388775, 35.057289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198564, -0.684137, -0.701804,
		0.108828, -0.696243, 0.709508,
		-0.974027, -0.217259, -0.063796,
		37.511597, 38.323597, 35.038151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866856, 38.261032, 35.211128>,  <38.193417, 38.475677, 35.082806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866856, 38.261032, 35.211128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861374, 38.655743, 35.275734>,  <38.858086, 38.892567, 35.314499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861374, 38.655743, 35.275734>,  <38.866856, 38.261032, 35.211128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861374, 38.655743, 35.275734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652433, -0.113584, 0.749286,
		0.757722, 0.115649, -0.642248,
		-0.013705, 0.986775, 0.161518,
		38.857262, 38.951775, 35.324188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646351, 38.539543, 35.296543>,  <38.866856, 38.261032, 35.211128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646351, 38.539543, 35.296543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384403, 38.808117, 35.435287>,  <39.227234, 38.969261, 35.518536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384403, 38.808117, 35.435287>,  <39.646351, 38.539543, 35.296543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384403, 38.808117, 35.435287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570574, 0.138301, 0.809517,
		0.495568, 0.728043, -0.473674,
		-0.654873, 0.671436, 0.346864,
		39.187943, 39.009548, 35.539349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124241, 37.954910, 35.483410>,  <39.646351, 38.539543, 35.296543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124241, 37.954910, 35.483410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334000, 37.617298, 35.528339>,  <40.459854, 37.414730, 35.555298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334000, 37.617298, 35.528339>,  <40.124241, 37.954910, 35.483410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334000, 37.617298, 35.528339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354096, -0.096201, 0.930248,
		-0.774355, -0.527591, -0.349316,
		0.524395, -0.844034, 0.112325,
		40.491318, 37.364090, 35.562038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724159, 37.298035, 35.557556>,  <40.124241, 37.954910, 35.483410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724159, 37.298035, 35.557556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075760, 37.299232, 35.748283>,  <40.286720, 37.299953, 35.862720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075760, 37.299232, 35.748283>,  <39.724159, 37.298035, 35.557556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075760, 37.299232, 35.748283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476309, -0.041040, 0.878319,
		0.022210, -0.999153, -0.034641,
		0.878997, 0.003008, 0.476817,
		40.339458, 37.300133, 35.891327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692863, 36.757221, 35.984089>,  <39.724159, 37.298035, 35.557556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692863, 36.757221, 35.984089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991688, 36.966698, 36.147865>,  <40.170982, 37.092384, 36.246132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991688, 36.966698, 36.147865>,  <39.692863, 36.757221, 35.984089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991688, 36.966698, 36.147865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318672, -0.258406, 0.911962,
		0.583391, -0.811770, -0.026159,
		0.747063, 0.523694, 0.409440,
		40.215805, 37.123806, 36.270699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930172, 36.392761, 36.573784>,  <39.692863, 36.757221, 35.984089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930172, 36.392761, 36.573784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041256, 36.769947, 36.647202>,  <40.107906, 36.996258, 36.691250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041256, 36.769947, 36.647202>,  <39.930172, 36.392761, 36.573784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041256, 36.769947, 36.647202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561840, 0.004450, 0.827234,
		0.779239, -0.332852, 0.531034,
		0.277709, 0.942969, 0.183542,
		40.124569, 37.052837, 36.702263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981903, 36.376019, 37.287674>,  <39.930172, 36.392761, 36.573784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981903, 36.376019, 37.287674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955128, 36.754272, 37.160370>,  <39.939064, 36.981224, 37.083988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955128, 36.754272, 37.160370>,  <39.981903, 36.376019, 37.287674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955128, 36.754272, 37.160370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582362, 0.221982, 0.782035,
		0.810170, 0.237691, 0.535844,
		-0.066935, 0.945636, -0.318265,
		39.935047, 37.037964, 37.064892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157509, 36.695190, 37.858315>,  <39.981903, 36.376019, 37.287674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157509, 36.695190, 37.858315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966732, 36.963005, 37.630543>,  <39.852268, 37.123692, 37.493877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966732, 36.963005, 37.630543>,  <40.157509, 36.695190, 37.858315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966732, 36.963005, 37.630543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483416, 0.341254, 0.806136,
		0.734055, 0.659752, 0.160904,
		-0.476940, 0.669532, -0.569434,
		39.823650, 37.163864, 37.459713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277088, 37.300606, 38.289234>,  <40.157509, 36.695190, 37.858315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277088, 37.300606, 38.289234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979866, 37.353127, 38.026745>,  <39.801533, 37.384640, 37.869251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979866, 37.353127, 38.026745>,  <40.277088, 37.300606, 38.289234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979866, 37.353127, 38.026745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590476, 0.332858, 0.735217,
		0.314967, 0.933790, -0.169799,
		-0.743057, 0.131306, -0.656220,
		39.756950, 37.392517, 37.829880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055878, 37.852009, 38.495258>,  <40.277088, 37.300606, 38.289234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055878, 37.852009, 38.495258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760609, 37.690369, 38.279182>,  <39.583447, 37.593384, 38.149536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760609, 37.690369, 38.279182>,  <40.055878, 37.852009, 38.495258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760609, 37.690369, 38.279182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648807, 0.205907, 0.732565,
		-0.184800, 0.891238, -0.414178,
		-0.738172, -0.404100, -0.540190,
		39.539158, 37.569138, 38.117126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541977, 38.435707, 38.465343>,  <40.055878, 37.852009, 38.495258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541977, 38.435707, 38.465343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330730, 38.108063, 38.375774>,  <39.203983, 37.911476, 38.322033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330730, 38.108063, 38.375774>,  <39.541977, 38.435707, 38.465343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330730, 38.108063, 38.375774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726706, 0.299544, 0.618200,
		-0.439303, 0.489208, -0.753451,
		-0.528120, -0.819115, -0.223920,
		39.172295, 37.862328, 38.308598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901894, 38.618240, 38.393860>,  <39.541977, 38.435707, 38.465343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901894, 38.618240, 38.393860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822216, 38.233517, 38.468956>,  <38.774410, 38.002682, 38.514015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822216, 38.233517, 38.468956>,  <38.901894, 38.618240, 38.393860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822216, 38.233517, 38.468956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828317, 0.267625, 0.492207,
		-0.523654, -0.057467, -0.849991,
		-0.199193, -0.961808, 0.187744,
		38.762459, 37.944973, 38.525280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176388, 38.577080, 38.282024>,  <38.901894, 38.618240, 38.393860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176388, 38.577080, 38.282024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295677, 38.259285, 38.493633>,  <38.367249, 38.068607, 38.620598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295677, 38.259285, 38.493633>,  <38.176388, 38.577080, 38.282024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295677, 38.259285, 38.493633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736698, 0.160823, 0.656819,
		-0.606910, -0.585604, -0.537334,
		0.298221, -0.794484, 0.529018,
		38.385143, 38.020939, 38.652340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616863, 38.406162, 38.476112>,  <38.176388, 38.577080, 38.282024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616863, 38.406162, 38.476112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850693, 38.224091, 38.744766>,  <37.990990, 38.114849, 38.905956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850693, 38.224091, 38.744766>,  <37.616863, 38.406162, 38.476112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850693, 38.224091, 38.744766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613897, 0.293096, 0.732956,
		-0.530480, -0.840777, -0.108099,
		0.584569, -0.455180, 0.671632,
		38.026062, 38.087536, 38.946255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202862, 38.050575, 38.876266>,  <37.616863, 38.406162, 38.476112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202862, 38.050575, 38.876266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529816, 38.100906, 39.101139>,  <37.725986, 38.131107, 39.236061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529816, 38.100906, 39.101139>,  <37.202862, 38.050575, 38.876266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529816, 38.100906, 39.101139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565365, 0.362649, 0.740842,
		-0.110653, -0.923391, 0.367565,
		0.817384, 0.125832, 0.562182,
		37.775032, 38.138657, 39.269794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966438, 37.710743, 39.500969>,  <37.202862, 38.050575, 38.876266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966438, 37.710743, 39.500969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278984, 37.950829, 39.569328>,  <37.466511, 38.094879, 39.610344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278984, 37.950829, 39.569328>,  <36.966438, 37.710743, 39.500969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278984, 37.950829, 39.569328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504462, 0.446252, 0.739174,
		0.367399, -0.663778, 0.651472,
		0.781368, 0.600215, 0.170898,
		37.513393, 38.130894, 39.620598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712452, 37.050014, 39.826988>,  <36.966438, 37.710743, 39.500969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712452, 37.050014, 39.826988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358459, 36.927345, 39.967136>,  <36.146065, 36.853745, 40.051228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358459, 36.927345, 39.967136>,  <36.712452, 37.050014, 39.826988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358459, 36.927345, 39.967136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176263, -0.475837, -0.861691,
		0.430975, -0.824338, 0.367052,
		-0.884981, -0.306670, 0.350375,
		36.092964, 36.835346, 40.072250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684357, 36.243992, 39.646984>,  <36.712452, 37.050014, 39.826988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684357, 36.243992, 39.646984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309090, 36.371864, 39.700115>,  <36.083931, 36.448589, 39.731995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309090, 36.371864, 39.700115>,  <36.684357, 36.243992, 39.646984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309090, 36.371864, 39.700115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244080, -0.338747, -0.908667,
		-0.245488, -0.884904, 0.395830,
		-0.938169, 0.319681, 0.132829,
		36.027637, 36.467770, 39.739964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379448, 35.740089, 39.428181>,  <36.684357, 36.243992, 39.646984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379448, 35.740089, 39.428181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091640, 36.016872, 39.404556>,  <35.918957, 36.182941, 39.390381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091640, 36.016872, 39.404556>,  <36.379448, 35.740089, 39.428181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091640, 36.016872, 39.404556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213178, -0.300996, -0.929493,
		-0.660949, -0.656195, 0.364082,
		-0.719515, 0.691961, -0.059056,
		35.875786, 36.224461, 39.386841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825325, 35.444332, 39.151295>,  <36.379448, 35.740089, 39.428181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825325, 35.444332, 39.151295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746796, 35.831688, 39.089756>,  <35.699677, 36.064102, 39.052834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746796, 35.831688, 39.089756>,  <35.825325, 35.444332, 39.151295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746796, 35.831688, 39.089756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356201, -0.216619, -0.908954,
		-0.913552, -0.123648, 0.387470,
		-0.196324, 0.968394, -0.153849,
		35.687897, 36.122208, 39.043602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035583, 35.507938, 38.932404>,  <35.825325, 35.444332, 39.151295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035583, 35.507938, 38.932404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233013, 35.832691, 38.807674>,  <35.351471, 36.027542, 38.732838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233013, 35.832691, 38.807674>,  <35.035583, 35.507938, 38.932404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233013, 35.832691, 38.807674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110199, -0.297269, -0.948413,
		-0.862696, 0.502472, -0.057255,
		0.493571, 0.811882, -0.311825,
		35.381084, 36.076256, 38.714127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618450, 35.826294, 38.429367>,  <35.035583, 35.507938, 38.932404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618450, 35.826294, 38.429367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997768, 35.930519, 38.356880>,  <35.225361, 35.993053, 38.313389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997768, 35.930519, 38.356880>,  <34.618450, 35.826294, 38.429367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997768, 35.930519, 38.356880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140424, -0.167579, -0.975806,
		-0.284628, 0.950801, -0.122326,
		0.948297, 0.260564, -0.181213,
		35.282257, 36.008690, 38.302517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562267, 35.843369, 37.821602>,  <34.618450, 35.826294, 38.429367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562267, 35.843369, 37.821602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957840, 35.894695, 37.851379>,  <35.195183, 35.925491, 37.869247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957840, 35.894695, 37.851379>,  <34.562267, 35.843369, 37.821602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957840, 35.894695, 37.851379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109440, -0.292230, -0.950065,
		-0.100155, 0.947700, -0.303040,
		0.988935, 0.128319, 0.074448,
		35.254520, 35.933189, 37.873714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786495, 36.246674, 37.222225>,  <34.562267, 35.843369, 37.821602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786495, 36.246674, 37.222225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087521, 36.030468, 37.372688>,  <35.268135, 35.900745, 37.462967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087521, 36.030468, 37.372688>,  <34.786495, 36.246674, 37.222225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087521, 36.030468, 37.372688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180445, -0.380094, -0.907176,
		0.633316, 0.750582, -0.188512,
		0.752563, -0.540513, 0.376158,
		35.313290, 35.868313, 37.485535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332157, 36.367043, 36.756958>,  <34.786495, 36.246674, 37.222225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332157, 36.367043, 36.756958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425293, 36.018208, 36.929123>,  <35.481174, 35.808907, 37.032421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425293, 36.018208, 36.929123>,  <35.332157, 36.367043, 36.756958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425293, 36.018208, 36.929123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065627, -0.427476, -0.901642,
		0.970298, 0.238184, -0.042301,
		0.232840, -0.872085, 0.430410,
		35.495144, 35.756580, 37.058247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729912, 35.981079, 36.217194>,  <35.332157, 36.367043, 36.756958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729912, 35.981079, 36.217194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625862, 35.695900, 36.477665>,  <35.563431, 35.524792, 36.633949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625862, 35.695900, 36.477665>,  <35.729912, 35.981079, 36.217194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625862, 35.695900, 36.477665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032802, -0.667480, -0.743904,
		0.965017, -0.214871, 0.150244,
		-0.260128, -0.712952, 0.651178,
		35.547825, 35.482014, 36.673019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097450, 35.361713, 35.998611>,  <35.729912, 35.981079, 36.217194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097450, 35.361713, 35.998611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793327, 35.228130, 36.221470>,  <35.610855, 35.147980, 36.355183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793327, 35.228130, 36.221470>,  <36.097450, 35.361713, 35.998611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793327, 35.228130, 36.221470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115563, -0.774491, -0.621939,
		0.639202, -0.537249, 0.550258,
		-0.760306, -0.333956, 0.557143,
		35.565235, 35.127945, 36.388611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186016, 34.724106, 36.237415>,  <36.097450, 35.361713, 35.998611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186016, 34.724106, 36.237415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794254, 34.797462, 36.203609>,  <35.559196, 34.841476, 36.183327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794254, 34.797462, 36.203609>,  <36.186016, 34.724106, 36.237415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794254, 34.797462, 36.203609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062658, -0.673894, -0.736166,
		-0.191959, -0.715706, 0.671503,
		-0.979401, 0.183388, -0.084515,
		35.500435, 34.852478, 36.178253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.805664, 37.392708, 43.926403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.447582, 37.544212, 43.832470>,  <36.232735, 37.635117, 43.776108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.447582, 37.544212, 43.832470>,  <36.805664, 37.392708, 43.926403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447582, 37.544212, 43.832470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069746, -0.639525, -0.765600,
		-0.440163, -0.668990, 0.598923,
		-0.895205, 0.378761, -0.234836,
		36.179020, 37.657841, 43.762020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361530, 36.859108, 43.868504>,  <36.805664, 37.392708, 43.926403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361530, 36.859108, 43.868504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201252, 37.143497, 43.637344>,  <36.105087, 37.314129, 43.498650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201252, 37.143497, 43.637344>,  <36.361530, 36.859108, 43.868504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201252, 37.143497, 43.637344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073768, -0.653733, -0.753121,
		-0.913238, -0.259139, 0.314392,
		-0.400692, 0.710971, -0.577898,
		36.081043, 37.356789, 43.463974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859249, 36.558113, 43.348015>,  <36.361530, 36.859108, 43.868504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859249, 36.558113, 43.348015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921852, 36.914635, 43.177795>,  <35.959415, 37.128548, 43.075665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921852, 36.914635, 43.177795>,  <35.859249, 36.558113, 43.348015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921852, 36.914635, 43.177795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328561, -0.359330, -0.873458,
		-0.931425, 0.276523, 0.236607,
		0.156511, 0.891300, -0.425544,
		35.968807, 37.182026, 43.050133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337948, 36.545841, 42.807758>,  <35.859249, 36.558113, 43.348015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337948, 36.545841, 42.807758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.583275, 36.846634, 42.711128>,  <35.730473, 37.027111, 42.653152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.583275, 36.846634, 42.711128>,  <35.337948, 36.545841, 42.807758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583275, 36.846634, 42.711128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124316, -0.210133, -0.969737,
		-0.779989, 0.624792, -0.035396,
		0.613321, 0.751983, -0.241573,
		35.767273, 37.072227, 42.638657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016354, 36.914032, 42.321533>,  <35.337948, 36.545841, 42.807758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016354, 36.914032, 42.321533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.408062, 36.974510, 42.267609>,  <35.643085, 37.010799, 42.235256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.408062, 36.974510, 42.267609>,  <35.016354, 36.914032, 42.321533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408062, 36.974510, 42.267609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117980, -0.115267, -0.986303,
		-0.164667, 0.981760, -0.095038,
		0.979268, 0.151199, -0.134808,
		35.701843, 37.019871, 42.227165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990170, 37.220390, 41.682201>,  <35.016354, 36.914032, 42.321533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990170, 37.220390, 41.682201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380581, 37.146622, 41.728420>,  <35.614830, 37.102360, 41.756153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380581, 37.146622, 41.728420>,  <34.990170, 37.220390, 41.682201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380581, 37.146622, 41.728420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142916, 0.142749, -0.979386,
		0.164124, 0.972426, 0.165684,
		0.976032, -0.184419, 0.115546,
		35.673389, 37.091297, 41.763084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340591, 37.772934, 41.230881>,  <34.990170, 37.220390, 41.682201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340591, 37.772934, 41.230881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557274, 37.442570, 41.293400>,  <35.687283, 37.244350, 41.330914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557274, 37.442570, 41.293400>,  <35.340591, 37.772934, 41.230881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557274, 37.442570, 41.293400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003251, -0.188005, -0.982162,
		0.840560, 0.531537, -0.104528,
		0.541708, -0.825907, 0.156302,
		35.719788, 37.194798, 41.340290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752422, 37.770676, 40.734970>,  <35.340591, 37.772934, 41.230881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752422, 37.770676, 40.734970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803978, 37.386635, 40.834236>,  <35.834911, 37.156208, 40.893795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803978, 37.386635, 40.834236>,  <35.752422, 37.770676, 40.734970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803978, 37.386635, 40.834236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113725, -0.234286, -0.965493,
		0.985116, 0.152668, 0.078990,
		0.128893, -0.960106, 0.248161,
		35.842648, 37.098602, 40.908684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324020, 37.497887, 40.216515>,  <35.752422, 37.770676, 40.734970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324020, 37.497887, 40.216515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115963, 37.185291, 40.354340>,  <35.991127, 36.997734, 40.437035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115963, 37.185291, 40.354340>,  <36.324020, 37.497887, 40.216515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115963, 37.185291, 40.354340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007923, -0.399003, -0.916915,
		0.854039, -0.479662, 0.201349,
		-0.520148, -0.781487, 0.344564,
		35.959919, 36.950844, 40.457710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107677, 37.697529, 40.405731>,  <36.324020, 37.497887, 40.216515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107677, 37.697529, 40.405731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300274, 38.004276, 40.235985>,  <37.415833, 38.188324, 40.134136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300274, 38.004276, 40.235985>,  <37.107677, 37.697529, 40.405731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300274, 38.004276, 40.235985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122324, 0.538242, 0.833866,
		0.867872, -0.349591, 0.352966,
		0.481493, 0.766865, -0.424361,
		37.444721, 38.234337, 40.108677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650593, 37.901356, 40.913017>,  <37.107677, 37.697529, 40.405731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650593, 37.901356, 40.913017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574650, 38.226078, 40.692139>,  <37.529083, 38.420914, 40.559612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574650, 38.226078, 40.692139>,  <37.650593, 37.901356, 40.913017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574650, 38.226078, 40.692139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086716, 0.546360, 0.833049,
		0.977974, 0.206048, -0.033336,
		-0.189861, 0.811809, -0.552194,
		37.517693, 38.469620, 40.526482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050476, 38.463055, 41.148949>,  <37.650593, 37.901356, 40.913017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050476, 38.463055, 41.148949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774555, 38.661144, 40.937695>,  <37.609001, 38.779999, 40.810944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774555, 38.661144, 40.937695>,  <38.050476, 38.463055, 41.148949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774555, 38.661144, 40.937695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106112, 0.652436, 0.750378,
		0.716181, 0.573653, -0.397502,
		-0.689801, 0.495226, -0.528134,
		37.567616, 38.809711, 40.779255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220741, 39.207695, 41.123104>,  <38.050476, 38.463055, 41.148949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220741, 39.207695, 41.123104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826260, 39.189598, 41.059410>,  <37.589569, 39.178741, 41.021194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826260, 39.189598, 41.059410>,  <38.220741, 39.207695, 41.123104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826260, 39.189598, 41.059410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136006, 0.769778, 0.623654,
		0.094361, 0.636706, -0.765311,
		-0.986204, -0.045238, -0.159232,
		37.530399, 39.176025, 41.011639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024982, 39.944206, 41.153172>,  <38.220741, 39.207695, 41.123104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024982, 39.944206, 41.153172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699348, 39.724449, 41.228477>,  <37.503967, 39.592594, 41.273659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699348, 39.724449, 41.228477>,  <38.024982, 39.944206, 41.153172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699348, 39.724449, 41.228477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362295, 0.733788, 0.574715,
		-0.453886, 0.399659, -0.796405,
		-0.814083, -0.549388, 0.188262,
		37.455124, 39.559631, 41.284954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552670, 40.297600, 40.899860>,  <38.024982, 39.944206, 41.153172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552670, 40.297600, 40.899860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369045, 40.078678, 41.179783>,  <37.258873, 39.947327, 41.347736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369045, 40.078678, 41.179783>,  <37.552670, 40.297600, 40.899860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369045, 40.078678, 41.179783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460920, 0.820121, 0.339049,
		-0.759486, -0.166910, -0.628746,
		-0.459057, -0.547305, 0.699803,
		37.231327, 39.914486, 41.389725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901405, 40.649185, 41.037502>,  <37.552670, 40.297600, 40.899860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901405, 40.649185, 41.037502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.893784, 40.379162, 41.332508>,  <36.889210, 40.217148, 41.509510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.893784, 40.379162, 41.332508>,  <36.901405, 40.649185, 41.037502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893784, 40.379162, 41.332508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418111, 0.675432, 0.607433,
		-0.908196, -0.296788, -0.295122,
		-0.019056, -0.675062, 0.737515,
		36.888065, 40.176643, 41.553764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131435, 40.575626, 41.329922>,  <36.901405, 40.649185, 41.037502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131435, 40.575626, 41.329922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.398865, 40.445412, 41.597366>,  <36.559322, 40.367283, 41.757832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.398865, 40.445412, 41.597366>,  <36.131435, 40.575626, 41.329922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398865, 40.445412, 41.597366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252639, 0.746190, 0.615934,
		-0.699415, -0.580714, 0.416642,
		0.668575, -0.325533, 0.668607,
		36.599438, 40.347752, 41.797947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803608, 40.621422, 41.958279>,  <36.131435, 40.575626, 41.329922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803608, 40.621422, 41.958279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.186348, 40.616436, 42.074398>,  <36.415993, 40.613445, 42.144070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.186348, 40.616436, 42.074398>,  <35.803608, 40.621422, 41.958279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186348, 40.616436, 42.074398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196184, 0.709265, 0.677093,
		-0.214341, -0.704832, 0.676217,
		0.956854, -0.012466, 0.290301,
		36.473404, 40.612698, 42.161488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817295, 40.406368, 42.635174>,  <35.803608, 40.621422, 41.958279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817295, 40.406368, 42.635174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163925, 40.599869, 42.586140>,  <36.371902, 40.715969, 42.556721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163925, 40.599869, 42.586140>,  <35.817295, 40.406368, 42.635174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163925, 40.599869, 42.586140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213766, 0.581794, 0.784742,
		0.450939, -0.653836, 0.607579,
		0.866579, 0.483750, -0.122585,
		36.423901, 40.744995, 42.549362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056168, 40.440609, 43.352043>,  <35.817295, 40.406368, 42.635174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056168, 40.440609, 43.352043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.225288, 40.719021, 43.119915>,  <36.326763, 40.886070, 42.980637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.225288, 40.719021, 43.119915>,  <36.056168, 40.440609, 43.352043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225288, 40.719021, 43.119915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239396, 0.703415, 0.669251,
		0.874029, -0.144035, 0.464034,
		0.422804, 0.696032, -0.580323,
		36.352131, 40.927830, 42.945820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525639, 40.887333, 43.824291>,  <36.056168, 40.440609, 43.352043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525639, 40.887333, 43.824291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.464916, 41.094376, 43.487473>,  <36.428482, 41.218601, 43.285381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.464916, 41.094376, 43.487473>,  <36.525639, 40.887333, 43.824291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464916, 41.094376, 43.487473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006078, 0.851413, 0.524460,
		0.988392, 0.084734, -0.126103,
		-0.151806, 0.517606, -0.842045,
		36.419376, 41.249657, 43.234859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124359, 41.501541, 43.849384>,  <36.525639, 40.887333, 43.824291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124359, 41.501541, 43.849384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798626, 41.593853, 43.636364>,  <36.603188, 41.649242, 43.508553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798626, 41.593853, 43.636364>,  <37.124359, 41.501541, 43.849384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798626, 41.593853, 43.636364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030472, 0.899283, 0.436305,
		0.579602, 0.371524, -0.725280,
		-0.814330, 0.230783, -0.532547,
		36.554329, 41.663090, 43.476601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200134, 42.254719, 43.716492>,  <37.124359, 41.501541, 43.849384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200134, 42.254719, 43.716492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815899, 42.168957, 43.645714>,  <36.585358, 42.117500, 43.603249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815899, 42.168957, 43.645714>,  <37.200134, 42.254719, 43.716492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815899, 42.168957, 43.645714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275795, 0.814838, 0.509879,
		0.034856, 0.538581, -0.841853,
		-0.960584, -0.214407, -0.176940,
		36.527725, 42.104633, 43.592632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.426403, 41.428993, 43.097000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775003, 41.254364, 43.186348>,  <30.984163, 41.149586, 43.239956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775003, 41.254364, 43.186348>,  <30.426403, 41.428993, 43.097000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775003, 41.254364, 43.186348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161163, -0.685161, -0.710339,
		0.463153, 0.583063, -0.667478,
		0.871502, -0.436568, 0.223366,
		31.036453, 41.123394, 43.253357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725142, 41.250378, 42.487873>,  <30.426403, 41.428993, 43.097000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725142, 41.250378, 42.487873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.994501, 41.065304, 42.718510>,  <31.156116, 40.954262, 42.856892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.994501, 41.065304, 42.718510>,  <30.725142, 41.250378, 42.487873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994501, 41.065304, 42.718510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225996, -0.613764, -0.756452,
		0.703888, 0.639702, -0.308745,
		0.673400, -0.462682, 0.576591,
		31.196522, 40.926498, 42.891487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273767, 41.215832, 42.068256>,  <30.725142, 41.250378, 42.487873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273767, 41.215832, 42.068256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.314436, 40.930408, 42.345531>,  <31.338837, 40.759155, 42.511894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.314436, 40.930408, 42.345531>,  <31.273767, 41.215832, 42.068256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314436, 40.930408, 42.345531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282530, -0.647391, -0.707857,
		0.953855, 0.267814, 0.135779,
		0.101672, -0.713555, 0.693183,
		31.344938, 40.716343, 42.553486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046761, 41.062374, 42.102005>,  <31.273767, 41.215832, 42.068256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046761, 41.062374, 42.102005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823833, 40.757828, 42.234497>,  <31.690077, 40.575100, 42.313992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823833, 40.757828, 42.234497>,  <32.046761, 41.062374, 42.102005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823833, 40.757828, 42.234497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339849, -0.573159, -0.745648,
		0.757562, -0.302994, 0.578182,
		-0.557317, -0.761369, 0.331232,
		31.656639, 40.529415, 42.333866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537266, 40.485741, 42.058586>,  <32.046761, 41.062374, 42.102005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537266, 40.485741, 42.058586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.174240, 40.322308, 42.097328>,  <31.956423, 40.224247, 42.120575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.174240, 40.322308, 42.097328>,  <32.537266, 40.485741, 42.058586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174240, 40.322308, 42.097328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263258, -0.733353, -0.626808,
		0.327131, -0.543374, 0.773130,
		-0.907569, -0.408581, 0.096855,
		31.901970, 40.199734, 42.126385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709415, 39.777122, 42.114845>,  <32.537266, 40.485741, 42.058586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709415, 39.777122, 42.114845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336372, 39.838142, 41.984024>,  <32.112545, 39.874756, 41.905529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336372, 39.838142, 41.984024>,  <32.709415, 39.777122, 42.114845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336372, 39.838142, 41.984024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200253, -0.535183, -0.820657,
		-0.300225, -0.830848, 0.468569,
		-0.932611, 0.152550, -0.327055,
		32.056587, 39.883907, 41.885906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609470, 39.185745, 41.827682>,  <32.709415, 39.777122, 42.114845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609470, 39.185745, 41.827682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280724, 39.378498, 41.706139>,  <32.083477, 39.494152, 41.633213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280724, 39.378498, 41.706139>,  <32.609470, 39.185745, 41.827682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280724, 39.378498, 41.706139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118646, -0.376895, -0.918626,
		-0.557195, -0.791035, 0.252582,
		-0.821862, 0.481886, -0.303857,
		32.034164, 39.523064, 41.614983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177906, 38.712383, 41.599808>,  <32.609470, 39.185745, 41.827682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177906, 38.712383, 41.599808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.036465, 39.043243, 41.425091>,  <31.951599, 39.241760, 41.320263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.036465, 39.043243, 41.425091>,  <32.177906, 38.712383, 41.599808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036465, 39.043243, 41.425091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054592, -0.484410, -0.873136,
		-0.933799, -0.284903, 0.216447,
		-0.353608, 0.827150, -0.436788,
		31.930382, 39.291389, 41.294056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499544, 38.591492, 41.311775>,  <32.177906, 38.712383, 41.599808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499544, 38.591492, 41.311775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.650023, 38.900776, 41.107574>,  <31.740309, 39.086346, 40.985054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.650023, 38.900776, 41.107574>,  <31.499544, 38.591492, 41.311775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650023, 38.900776, 41.107574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177742, -0.480523, -0.858782,
		-0.909332, 0.413809, -0.043338,
		0.376197, 0.773214, -0.510506,
		31.762882, 39.132740, 40.954422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342335, 38.377247, 40.693127>,  <31.499544, 38.591492, 41.311775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342335, 38.377247, 40.693127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548578, 38.706127, 40.596687>,  <31.672325, 38.903458, 40.538822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548578, 38.706127, 40.596687>,  <31.342335, 38.377247, 40.693127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548578, 38.706127, 40.596687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084240, -0.231381, -0.969209,
		-0.852673, 0.520044, -0.050040,
		0.515609, 0.822203, -0.241101,
		31.703260, 38.952789, 40.524357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951302, 38.734085, 40.240349>,  <31.342335, 38.377247, 40.693127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951302, 38.734085, 40.240349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.329102, 38.852005, 40.182373>,  <31.555782, 38.922756, 40.147587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.329102, 38.852005, 40.182373>,  <30.951302, 38.734085, 40.240349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329102, 38.852005, 40.182373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087433, -0.199708, -0.975947,
		-0.316658, 0.934456, -0.162849,
		0.944502, 0.294803, -0.144941,
		31.612452, 38.940445, 40.138889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944782, 39.149063, 39.662834>,  <30.951302, 38.734085, 40.240349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944782, 39.149063, 39.662834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.314625, 38.996719, 39.659821>,  <31.536530, 38.905315, 39.658012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.314625, 38.996719, 39.659821>,  <30.944782, 39.149063, 39.662834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314625, 38.996719, 39.659821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128023, -0.292044, -0.947798,
		0.358772, 0.877303, -0.318784,
		0.924604, -0.380855, -0.007538,
		31.592007, 38.882462, 39.657558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235439, 39.374847, 39.013599>,  <30.944782, 39.149063, 39.662834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235439, 39.374847, 39.013599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452843, 39.064754, 39.142349>,  <31.583284, 38.878696, 39.219601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452843, 39.064754, 39.142349>,  <31.235439, 39.374847, 39.013599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452843, 39.064754, 39.142349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042462, -0.357577, -0.932918,
		0.838328, 0.520718, -0.161429,
		0.543511, -0.775236, 0.321877,
		31.615896, 38.832184, 39.238911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771130, 39.305260, 38.549583>,  <31.235439, 39.374847, 39.013599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771130, 39.305260, 38.549583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.734198, 38.941223, 38.711178>,  <31.712038, 38.722801, 38.808136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.734198, 38.941223, 38.711178>,  <31.771130, 39.305260, 38.549583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734198, 38.941223, 38.711178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047844, -0.401195, -0.914743,
		0.994578, -0.103786, -0.006501,
		-0.092329, -0.910094, 0.403985,
		31.706499, 38.668194, 38.832375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210152, 39.778973, 38.778679>,  <31.771130, 39.305260, 38.549583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210152, 39.778973, 38.778679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271412, 39.988388, 38.443428>,  <32.308167, 40.114037, 38.242279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271412, 39.988388, 38.443428>,  <32.210152, 39.778973, 38.778679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271412, 39.988388, 38.443428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181947, 0.818692, 0.544646,
		0.971309, -0.235905, 0.030124,
		0.153147, 0.523539, -0.838125,
		32.317356, 40.145451, 38.191990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774353, 40.163193, 38.933823>,  <32.210152, 39.778973, 38.778679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774353, 40.163193, 38.933823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.585285, 40.333744, 38.625332>,  <32.471844, 40.436073, 38.440239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.585285, 40.333744, 38.625332>,  <32.774353, 40.163193, 38.933823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585285, 40.333744, 38.625332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034750, 0.865461, 0.499770,
		0.880553, 0.263027, -0.394262,
		-0.472671, 0.426374, -0.771224,
		32.443485, 40.461655, 38.393963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152859, 40.831627, 38.829556>,  <32.774353, 40.163193, 38.933823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152859, 40.831627, 38.829556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.801964, 40.886242, 38.645466>,  <32.591427, 40.919010, 38.535011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.801964, 40.886242, 38.645466>,  <33.152859, 40.831627, 38.829556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801964, 40.886242, 38.645466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126134, 0.859460, 0.495398,
		0.463188, 0.492633, -0.736730,
		-0.877239, 0.136536, -0.460229,
		32.538792, 40.927204, 38.507397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092205, 41.506393, 38.746243>,  <33.152859, 40.831627, 38.829556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092205, 41.506393, 38.746243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716412, 41.375660, 38.705162>,  <32.490936, 41.297218, 38.680515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716412, 41.375660, 38.705162>,  <33.092205, 41.506393, 38.746243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716412, 41.375660, 38.705162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338671, 0.840810, 0.422304,
		-0.051674, 0.431529, -0.900618,
		-0.939485, -0.326835, -0.102699,
		32.434566, 41.277611, 38.674351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535904, 42.131790, 38.532253>,  <33.092205, 41.506393, 38.746243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535904, 42.131790, 38.532253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352722, 41.816944, 38.697525>,  <32.242813, 41.628036, 38.796688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352722, 41.816944, 38.697525>,  <32.535904, 42.131790, 38.532253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352722, 41.816944, 38.697525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486660, 0.610933, 0.624438,
		-0.743933, 0.084887, -0.662841,
		-0.457958, -0.787118, 0.413182,
		32.215336, 41.580811, 38.821480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956005, 42.432056, 38.844547>,  <32.535904, 42.131790, 38.532253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956005, 42.432056, 38.844547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.964787, 42.082027, 39.037945>,  <31.970055, 41.872009, 39.153984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.964787, 42.082027, 39.037945>,  <31.956005, 42.432056, 38.844547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964787, 42.082027, 39.037945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400415, 0.435429, 0.806268,
		-0.916071, -0.211296, -0.340835,
		0.021952, -0.875074, 0.483490,
		31.971373, 41.819504, 39.182991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342140, 42.284721, 39.192173>,  <31.956005, 42.432056, 38.844547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342140, 42.284721, 39.192173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601589, 42.057320, 39.394596>,  <31.757257, 41.920879, 39.516052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601589, 42.057320, 39.394596>,  <31.342140, 42.284721, 39.192173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601589, 42.057320, 39.394596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262092, 0.457402, 0.849760,
		-0.714562, -0.683807, 0.147681,
		0.648621, -0.568500, 0.506062,
		31.796175, 41.886768, 39.546413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988806, 42.062397, 39.862980>,  <31.342140, 42.284721, 39.192173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988806, 42.062397, 39.862980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.384138, 42.031574, 39.915539>,  <31.621338, 42.013081, 39.947075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.384138, 42.031574, 39.915539>,  <30.988806, 42.062397, 39.862980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384138, 42.031574, 39.915539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048953, 0.656165, 0.753028,
		-0.144242, -0.750673, 0.644736,
		0.988331, -0.077056, 0.131394,
		31.680637, 42.008457, 39.954956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038254, 42.031570, 40.539116>,  <30.988806, 42.062397, 39.862980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038254, 42.031570, 40.539116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433039, 42.071209, 40.488380>,  <31.669910, 42.094990, 40.457939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433039, 42.071209, 40.488380>,  <31.038254, 42.031570, 40.539116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433039, 42.071209, 40.488380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080503, 0.378463, 0.922109,
		0.139377, -0.920297, 0.365551,
		0.986962, 0.099093, -0.126836,
		31.729128, 42.100937, 40.450329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441439, 41.842171, 41.185310>,  <31.038254, 42.031570, 40.539116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441439, 41.842171, 41.185310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.686396, 42.092567, 40.992188>,  <31.833370, 42.242805, 40.876312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.686396, 42.092567, 40.992188>,  <31.441439, 41.842171, 41.185310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686396, 42.092567, 40.992188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169688, 0.492403, 0.853666,
		0.772129, -0.604704, 0.195319,
		0.612391, 0.625996, -0.482810,
		31.870113, 42.280365, 40.847343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000134, 42.009033, 41.647511>,  <31.441439, 41.842171, 41.185310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000134, 42.009033, 41.647511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.997793, 42.319630, 41.395470>,  <31.996389, 42.505989, 41.244244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.997793, 42.319630, 41.395470>,  <32.000134, 42.009033, 41.647511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997793, 42.319630, 41.395470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213230, 0.616590, 0.757859,
		0.976985, -0.129921, -0.169179,
		-0.005853, 0.776490, -0.630102,
		31.996037, 42.552578, 41.206440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575062, 42.530178, 41.886177>,  <32.000134, 42.009033, 41.647511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575062, 42.530178, 41.886177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.310162, 42.733620, 41.666084>,  <32.151222, 42.855682, 41.534027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.310162, 42.733620, 41.666084>,  <32.575062, 42.530178, 41.886177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310162, 42.733620, 41.666084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092424, 0.784182, 0.613610,
		0.743564, 0.355506, -0.566328,
		-0.662246, 0.508601, -0.550232,
		32.111488, 42.886200, 41.501015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871979, 43.200321, 41.848114>,  <32.575062, 42.530178, 41.886177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871979, 43.200321, 41.848114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487598, 43.253078, 41.750813>,  <32.256969, 43.284733, 41.692432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487598, 43.253078, 41.750813>,  <32.871979, 43.200321, 41.848114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487598, 43.253078, 41.750813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075552, 0.720641, 0.689179,
		0.266199, 0.680647, -0.682538,
		-0.960953, 0.131892, -0.243258,
		32.199314, 43.292645, 41.677834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828545, 43.862465, 41.902763>,  <32.871979, 43.200321, 41.848114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828545, 43.862465, 41.902763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450348, 43.732262, 41.899055>,  <32.223431, 43.654140, 41.896832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450348, 43.732262, 41.899055>,  <32.828545, 43.862465, 41.902763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450348, 43.732262, 41.899055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165228, 0.455004, 0.875027,
		-0.280613, 0.828863, -0.483986,
		-0.945493, -0.325512, -0.009271,
		32.166698, 43.634609, 41.896275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102657, 44.427189, 41.531857>,  <32.828545, 43.862465, 41.902763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102657, 44.427189, 41.531857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450424, 44.430176, 41.729465>,  <33.659084, 44.431969, 41.848030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450424, 44.430176, 41.729465>,  <33.102657, 44.427189, 41.531857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450424, 44.430176, 41.729465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324456, -0.762708, -0.559469,
		0.372617, 0.646700, -0.665534,
		0.869416, 0.007469, 0.494024,
		33.711250, 44.432415, 41.877674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671223, 44.572136, 41.084721>,  <33.102657, 44.427189, 41.531857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671223, 44.572136, 41.084721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865448, 44.394825, 41.386116>,  <33.981983, 44.288441, 41.566952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865448, 44.394825, 41.386116>,  <33.671223, 44.572136, 41.084721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865448, 44.394825, 41.386116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539019, -0.526766, -0.657249,
		0.688252, 0.725276, -0.016842,
		0.485559, -0.443275, 0.753485,
		34.011116, 44.261841, 41.612160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311966, 44.619717, 40.859081>,  <33.671223, 44.572136, 41.084721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311966, 44.619717, 40.859081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.322582, 44.320415, 41.124237>,  <34.328953, 44.140835, 41.283329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.322582, 44.320415, 41.124237>,  <34.311966, 44.619717, 40.859081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322582, 44.320415, 41.124237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574262, -0.531372, -0.622789,
		0.818241, 0.397197, 0.415590,
		0.026537, -0.748250, 0.662886,
		34.330544, 44.095940, 41.323105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019802, 44.412476, 40.834137>,  <34.311966, 44.619717, 40.859081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019802, 44.412476, 40.834137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824604, 44.113720, 41.014809>,  <34.707485, 43.934467, 41.123211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824604, 44.113720, 41.014809>,  <35.019802, 44.412476, 40.834137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824604, 44.113720, 41.014809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601303, -0.662768, -0.446289,
		0.632687, 0.053808, 0.772536,
		-0.487998, -0.746890, 0.451680,
		34.678204, 43.889652, 41.150314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527058, 43.982746, 41.024731>,  <35.019802, 44.412476, 40.834137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527058, 43.982746, 41.024731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.199707, 43.752876, 41.026131>,  <35.003296, 43.614956, 41.026970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.199707, 43.752876, 41.026131>,  <35.527058, 43.982746, 41.024731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199707, 43.752876, 41.026131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539526, -0.770393, -0.339716,
		0.197923, -0.276126, 0.940522,
		-0.818375, -0.574674, 0.003501,
		34.954193, 43.580475, 41.027180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794975, 43.192734, 41.165783>,  <35.527058, 43.982746, 41.024731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794975, 43.192734, 41.165783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419949, 43.151218, 41.033001>,  <35.194931, 43.126308, 40.953331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419949, 43.151218, 41.033001>,  <35.794975, 43.192734, 41.165783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419949, 43.151218, 41.033001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255757, -0.852540, -0.455812,
		-0.235699, -0.512254, 0.825858,
		-0.937569, -0.103785, -0.331955,
		35.138680, 43.120083, 40.933414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681694, 42.423531, 41.246899>,  <35.794975, 43.192734, 41.165783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681694, 42.423531, 41.246899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441540, 42.595093, 40.976913>,  <35.297447, 42.698029, 40.814922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441540, 42.595093, 40.976913>,  <35.681694, 42.423531, 41.246899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441540, 42.595093, 40.976913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257506, -0.695375, -0.670928,
		-0.757117, -0.576623, 0.307050,
		-0.600387, 0.428903, -0.674964,
		35.261425, 42.723763, 40.774426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219440, 41.859772, 41.054657>,  <35.681694, 42.423531, 41.246899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219440, 41.859772, 41.054657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.185707, 42.128922, 40.760681>,  <35.165466, 42.290409, 40.584297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.185707, 42.128922, 40.760681>,  <35.219440, 41.859772, 41.054657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185707, 42.128922, 40.760681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127960, -0.724145, -0.677673,
		-0.988187, -0.151193, -0.025031,
		-0.084333, 0.672870, -0.734938,
		35.160408, 42.330784, 40.540199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945168, 41.382168, 40.541851>,  <35.219440, 41.859772, 41.054657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945168, 41.382168, 40.541851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070469, 41.718971, 40.366169>,  <35.145649, 41.921055, 40.260761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070469, 41.718971, 40.366169>,  <34.945168, 41.382168, 40.541851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070469, 41.718971, 40.366169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411087, -0.537128, -0.736547,
		-0.856085, 0.050174, -0.514394,
		0.313251, 0.842007, -0.439202,
		35.164444, 41.971573, 40.234409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658974, 41.515244, 39.895649>,  <34.945168, 41.382168, 40.541851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658974, 41.515244, 39.895649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015182, 41.697052, 39.903477>,  <35.228909, 41.806137, 39.908173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015182, 41.697052, 39.903477>,  <34.658974, 41.515244, 39.895649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015182, 41.697052, 39.903477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317474, -0.590040, -0.742336,
		-0.325861, 0.667278, -0.669742,
		0.890519, 0.454524, 0.019573,
		35.282337, 41.833408, 39.909348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706825, 41.569714, 39.195721>,  <34.658974, 41.515244, 39.895649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706825, 41.569714, 39.195721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059811, 41.660736, 39.360390>,  <35.271603, 41.715351, 39.459190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059811, 41.660736, 39.360390>,  <34.706825, 41.569714, 39.195721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059811, 41.660736, 39.360390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468053, -0.337870, -0.816560,
		-0.046724, 0.913269, -0.404668,
		0.882464, 0.227559, 0.411671,
		35.324551, 41.729004, 39.483891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161572, 41.896923, 38.645325>,  <34.706825, 41.569714, 39.195721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161572, 41.896923, 38.645325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.414963, 41.763248, 38.924473>,  <35.566998, 41.683044, 39.091961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.414963, 41.763248, 38.924473>,  <35.161572, 41.896923, 38.645325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414963, 41.763248, 38.924473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567579, -0.412302, -0.712644,
		0.525891, 0.847541, -0.071505,
		0.633477, -0.334189, 0.697872,
		35.605007, 41.662991, 39.133835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735836, 41.922653, 38.290451>,  <35.161572, 41.896923, 38.645325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735836, 41.922653, 38.290451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861912, 41.689667, 38.590157>,  <35.937557, 41.549873, 38.769978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861912, 41.689667, 38.590157>,  <35.735836, 41.922653, 38.290451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861912, 41.689667, 38.590157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606071, -0.483997, -0.631209,
		0.730297, 0.653054, 0.200466,
		0.315188, -0.582466, 0.749259,
		35.956467, 41.514927, 38.814934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498077, 41.960598, 38.311794>,  <35.735836, 41.922653, 38.290451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498077, 41.960598, 38.311794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.346928, 41.622974, 38.463993>,  <36.256237, 41.420399, 38.555313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.346928, 41.622974, 38.463993>,  <36.498077, 41.960598, 38.311794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346928, 41.622974, 38.463993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571286, -0.535966, -0.621588,
		0.728590, -0.017509, 0.684726,
		-0.377874, -0.844058, 0.380497,
		36.233566, 41.369759, 38.578144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.015585, 26.107763, 35.549679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731789, 25.983419, 35.802658>,  <27.561512, 25.908813, 35.954445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731789, 25.983419, 35.802658>,  <28.015585, 26.107763, 35.549679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731789, 25.983419, 35.802658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632053, 0.677596, -0.375996,
		-0.311664, -0.666507, -0.677225,
		-0.709489, -0.310858, 0.632450,
		27.518942, 25.890162, 35.992393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261797, 26.093931, 35.121918>,  <28.015585, 26.107763, 35.549679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261797, 26.093931, 35.121918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186769, 26.141987, 35.511868>,  <27.141752, 26.170820, 35.745838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186769, 26.141987, 35.511868>,  <27.261797, 26.093931, 35.121918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186769, 26.141987, 35.511868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670260, 0.709863, -0.216440,
		-0.718032, -0.694018, -0.052623,
		-0.187568, 0.120140, 0.974877,
		27.130499, 26.178028, 35.804329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551462, 26.245207, 35.199764>,  <27.261797, 26.093931, 35.121918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551462, 26.245207, 35.199764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.721735, 26.413071, 35.520435>,  <26.823898, 26.513788, 35.712837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.721735, 26.413071, 35.520435>,  <26.551462, 26.245207, 35.199764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721735, 26.413071, 35.520435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638593, 0.767008, -0.062427,
		-0.641089, -0.485370, 0.594492,
		0.425680, 0.419660, 0.801674,
		26.849440, 26.538969, 35.760937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043043, 26.750519, 35.426460>,  <26.551462, 26.245207, 35.199764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043043, 26.750519, 35.426460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.343304, 26.840254, 35.675037>,  <26.523460, 26.894094, 35.824184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.343304, 26.840254, 35.675037>,  <26.043043, 26.750519, 35.426460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343304, 26.840254, 35.675037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355641, 0.929894, 0.093896,
		-0.556812, -0.291494, 0.777812,
		0.750653, 0.224339, 0.621444,
		26.568499, 26.907555, 35.861469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638607, 27.190626, 35.815754>,  <26.043043, 26.750519, 35.426460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638607, 27.190626, 35.815754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.024185, 27.275038, 35.880589>,  <26.255533, 27.325686, 35.919491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.024185, 27.275038, 35.880589>,  <25.638607, 27.190626, 35.815754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024185, 27.275038, 35.880589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220268, 0.974572, 0.041114,
		-0.149291, -0.075335, 0.985919,
		0.963947, 0.211029, 0.162089,
		26.313370, 27.338346, 35.929214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691891, 27.733593, 36.323616>,  <25.638607, 27.190626, 35.815754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691891, 27.733593, 36.323616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017378, 27.724184, 36.091301>,  <26.212669, 27.718538, 35.951912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017378, 27.724184, 36.091301>,  <25.691891, 27.733593, 36.323616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017378, 27.724184, 36.091301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010702, 0.998405, -0.055434,
		0.581163, 0.051323, 0.812167,
		0.813717, -0.023525, -0.580785,
		26.261494, 27.717127, 35.917065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181213, 28.127222, 36.644073>,  <25.691891, 27.733593, 36.323616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181213, 28.127222, 36.644073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264320, 28.109421, 36.253208>,  <26.314184, 28.098740, 36.018688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264320, 28.109421, 36.253208>,  <26.181213, 28.127222, 36.644073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264320, 28.109421, 36.253208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067275, 0.995949, -0.059665,
		0.975862, 0.078135, 0.203932,
		0.207768, -0.044505, -0.977165,
		26.326651, 28.096069, 35.960060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769186, 28.524773, 36.579762>,  <26.181213, 28.127222, 36.644073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769186, 28.524773, 36.579762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659216, 28.535419, 36.195324>,  <26.593233, 28.541807, 35.964661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659216, 28.535419, 36.195324>,  <26.769186, 28.524773, 36.579762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659216, 28.535419, 36.195324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106424, 0.994317, -0.002905,
		0.955558, -0.103083, -0.276195,
		-0.274925, 0.026618, -0.961097,
		26.576738, 28.543406, 35.906994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902740, 29.142891, 36.366222>,  <26.769186, 28.524773, 36.579762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902740, 29.142891, 36.366222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.711514, 29.063156, 36.024063>,  <26.596777, 29.015314, 35.818768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.711514, 29.063156, 36.024063>,  <26.902740, 29.142891, 36.366222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711514, 29.063156, 36.024063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040715, 0.967829, -0.248292,
		0.877378, -0.153528, -0.454574,
		-0.478070, -0.199338, -0.855403,
		26.568092, 29.003355, 35.767441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188744, 29.564348, 36.015064>,  <26.902740, 29.142891, 36.366222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188744, 29.564348, 36.015064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.866014, 29.481010, 35.793926>,  <26.672377, 29.431007, 35.661243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.866014, 29.481010, 35.793926>,  <27.188744, 29.564348, 36.015064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866014, 29.481010, 35.793926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008699, 0.931466, -0.363725,
		0.590732, -0.298270, -0.749714,
		-0.806821, -0.208342, -0.552841,
		26.623968, 29.418509, 35.628075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327755, 29.970247, 35.366364>,  <27.188744, 29.564348, 36.015064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327755, 29.970247, 35.366364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.936590, 29.886669, 35.364094>,  <26.701891, 29.836521, 35.362732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.936590, 29.886669, 35.364094>,  <27.327755, 29.970247, 35.366364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936590, 29.886669, 35.364094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175712, 0.836455, -0.519104,
		0.113208, -0.506641, -0.854692,
		-0.977911, -0.208947, -0.005671,
		26.643217, 29.823986, 35.362392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106163, 30.025084, 34.613602>,  <27.327755, 29.970247, 35.366364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106163, 30.025084, 34.613602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.806017, 30.079254, 34.872402>,  <26.625929, 30.111757, 35.027683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.806017, 30.079254, 34.872402>,  <27.106163, 30.025084, 34.613602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806017, 30.079254, 34.872402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307940, 0.794476, -0.523433,
		-0.584915, -0.592003, -0.554443,
		-0.750365, 0.135428, 0.647002,
		26.580908, 30.119883, 35.066502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533934, 30.215797, 34.151566>,  <27.106163, 30.025084, 34.613602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533934, 30.215797, 34.151566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480206, 30.333586, 34.530037>,  <26.447969, 30.404259, 34.757118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480206, 30.333586, 34.530037>,  <26.533934, 30.215797, 34.151566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480206, 30.333586, 34.530037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309751, 0.894503, -0.322362,
		-0.941282, -0.336378, -0.028936,
		-0.134319, 0.294471, 0.946174,
		26.439911, 30.421926, 34.813889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901354, 30.593508, 34.139534>,  <26.533934, 30.215797, 34.151566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901354, 30.593508, 34.139534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.088831, 30.697618, 34.477192>,  <26.201317, 30.760084, 34.679787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.088831, 30.697618, 34.477192>,  <25.901354, 30.593508, 34.139534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088831, 30.697618, 34.477192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127479, 0.965533, -0.226923,
		-0.874115, -0.001254, 0.485717,
		0.468691, 0.260276, 0.844147,
		26.229439, 30.775702, 34.730434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465359, 31.047991, 34.386086>,  <25.901354, 30.593508, 34.139534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465359, 31.047991, 34.386086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.826014, 31.122185, 34.542366>,  <26.042406, 31.166700, 34.636135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.826014, 31.122185, 34.542366>,  <25.465359, 31.047991, 34.386086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826014, 31.122185, 34.542366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122479, 0.975892, -0.180650,
		-0.414794, 0.115027, 0.902615,
		0.901635, 0.185484, 0.390705,
		26.096504, 31.177830, 34.659576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343401, 31.619528, 34.926838>,  <25.465359, 31.047991, 34.386086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343401, 31.619528, 34.926838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.726940, 31.613710, 34.813419>,  <25.957064, 31.610220, 34.745369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.726940, 31.613710, 34.813419>,  <25.343401, 31.619528, 34.926838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726940, 31.613710, 34.813419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024933, 0.990516, -0.135119,
		0.282826, 0.136628, 0.949391,
		0.958847, -0.014543, -0.283550,
		26.014595, 31.609348, 34.728355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564190, 32.223797, 35.217476>,  <25.343401, 31.619528, 34.926838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564190, 32.223797, 35.217476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.859480, 32.128826, 34.964920>,  <26.036654, 32.071842, 34.813389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.859480, 32.128826, 34.964920>,  <25.564190, 32.223797, 35.217476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859480, 32.128826, 34.964920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028923, 0.946288, -0.322029,
		0.673934, 0.219468, 0.705441,
		0.738225, -0.237430, -0.631387,
		26.080948, 32.057598, 34.775505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938030, 32.773388, 35.243187>,  <25.564190, 32.223797, 35.217476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938030, 32.773388, 35.243187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030510, 32.602543, 34.893532>,  <26.085999, 32.500034, 34.683739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030510, 32.602543, 34.893532>,  <25.938030, 32.773388, 35.243187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030510, 32.602543, 34.893532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136056, 0.903849, -0.405643,
		0.963346, -0.025147, 0.267080,
		0.231200, -0.427112, -0.874141,
		26.099871, 32.474411, 34.631290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489794, 33.160225, 34.964893>,  <25.938030, 32.773388, 35.243187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489794, 33.160225, 34.964893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341515, 32.998795, 34.630299>,  <26.252546, 32.901936, 34.429543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341515, 32.998795, 34.630299>,  <26.489794, 33.160225, 34.964893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341515, 32.998795, 34.630299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110477, 0.875101, -0.471162,
		0.922159, -0.267072, -0.279812,
		-0.370698, -0.403574, -0.836488,
		26.230305, 32.877724, 34.379353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905418, 33.499378, 34.448708>,  <26.489794, 33.160225, 34.964893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905418, 33.499378, 34.448708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.602270, 33.332050, 34.248451>,  <26.420382, 33.231655, 34.128296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.602270, 33.332050, 34.248451>,  <26.905418, 33.499378, 34.448708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602270, 33.332050, 34.248451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095925, 0.687591, -0.719734,
		0.645314, -0.593489, -0.480978,
		-0.757870, -0.418317, -0.500643,
		26.374908, 33.206554, 34.098259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770723, 34.035240, 34.032089>,  <26.905418, 33.499378, 34.448708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770723, 34.035240, 34.032089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.473391, 33.783581, 33.941204>,  <26.294991, 33.632584, 33.886673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.473391, 33.783581, 33.941204>,  <26.770723, 34.035240, 34.032089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473391, 33.783581, 33.941204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427191, 0.707866, -0.562525,
		0.514747, -0.321082, -0.794948,
		-0.743333, -0.629152, -0.227208,
		26.250391, 33.594833, 33.873043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612318, 34.066940, 33.446301>,  <26.770723, 34.035240, 34.032089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612318, 34.066940, 33.446301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267748, 33.923698, 33.590363>,  <26.061007, 33.837753, 33.676800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267748, 33.923698, 33.590363>,  <26.612318, 34.066940, 33.446301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267748, 33.923698, 33.590363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497767, 0.736117, -0.458650,
		-0.100869, -0.574364, -0.812362,
		-0.861425, -0.358104, 0.360150,
		26.009321, 33.816269, 33.698406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106884, 34.019985, 32.941696>,  <26.612318, 34.066940, 33.446301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106884, 34.019985, 32.941696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717785, 34.002151, 32.850677>,  <26.484325, 33.991451, 32.796066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717785, 34.002151, 32.850677>,  <27.106884, 34.019985, 32.941696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717785, 34.002151, 32.850677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039364, -0.998849, 0.027419,
		-0.228503, 0.017715, 0.973382,
		-0.972747, -0.044582, -0.227542,
		26.425961, 33.988777, 32.782413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069805, 33.271599, 32.765610>,  <27.106884, 34.019985, 32.941696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069805, 33.271599, 32.765610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.396896, 33.327175, 32.542175>,  <27.593151, 33.360519, 32.408115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.396896, 33.327175, 32.542175>,  <27.069805, 33.271599, 32.765610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396896, 33.327175, 32.542175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154856, -0.987755, -0.018990,
		-0.554383, -0.070972, -0.829230,
		0.817728, 0.138939, -0.558585,
		27.642214, 33.368858, 32.374599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013433, 32.879745, 32.130779>,  <27.069805, 33.271599, 32.765610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013433, 32.879745, 32.130779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406961, 32.912083, 32.194733>,  <27.643078, 32.931484, 32.233105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406961, 32.912083, 32.194733>,  <27.013433, 32.879745, 32.130779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406961, 32.912083, 32.194733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075152, -0.996316, 0.041308,
		0.162634, -0.028624, -0.986271,
		0.983820, 0.080838, 0.159883,
		27.702108, 32.936333, 32.242699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290014, 32.564026, 31.613367>,  <27.013433, 32.879745, 32.130779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290014, 32.564026, 31.613367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.562599, 32.572437, 31.905989>,  <27.726151, 32.577484, 32.081562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.562599, 32.572437, 31.905989>,  <27.290014, 32.564026, 31.613367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562599, 32.572437, 31.905989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072151, -0.996648, -0.038558,
		0.728290, 0.079058, -0.680693,
		0.681460, 0.021031, 0.731553,
		27.767036, 32.578747, 32.125454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797684, 32.173710, 31.319956>,  <27.290014, 32.564026, 31.613367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797684, 32.173710, 31.319956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.883282, 32.177078, 31.710674>,  <27.934641, 32.179100, 31.945107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.883282, 32.177078, 31.710674>,  <27.797684, 32.173710, 31.319956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883282, 32.177078, 31.710674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069599, -0.997553, -0.006650,
		0.974352, 0.069407, -0.214059,
		0.213997, 0.008419, 0.976798,
		27.947481, 32.179604, 32.003716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373524, 31.722181, 31.357777>,  <27.797684, 32.173710, 31.319956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373524, 31.722181, 31.357777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233955, 31.746479, 31.731850>,  <28.150213, 31.761057, 31.956293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233955, 31.746479, 31.731850>,  <28.373524, 31.722181, 31.357777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233955, 31.746479, 31.731850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171872, -0.976824, 0.127574,
		0.921256, 0.205245, 0.330396,
		-0.348922, 0.060742, 0.935181,
		28.129278, 31.764702, 32.012405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852894, 31.332952, 31.839279>,  <28.373524, 31.722181, 31.357777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852894, 31.332952, 31.839279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501736, 31.377275, 32.025623>,  <28.291040, 31.403870, 32.137428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501736, 31.377275, 32.025623>,  <28.852894, 31.332952, 31.839279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501736, 31.377275, 32.025623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044398, -0.949834, 0.309586,
		0.476794, 0.292467, 0.828934,
		-0.877893, 0.110806, 0.465860,
		28.238367, 31.410517, 32.165382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951794, 31.076094, 32.563438>,  <28.852894, 31.332952, 31.839279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951794, 31.076094, 32.563438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552511, 31.063128, 32.543297>,  <28.312943, 31.055347, 32.531212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552511, 31.063128, 32.543297>,  <28.951794, 31.076094, 32.563438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552511, 31.063128, 32.543297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014367, -0.945903, 0.324132,
		-0.058139, 0.322827, 0.944671,
		-0.998205, -0.032417, -0.050356,
		28.253050, 31.053402, 32.528191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935709, 30.914722, 33.138935>,  <28.951794, 31.076094, 32.563438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935709, 30.914722, 33.138935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597549, 30.826880, 32.944172>,  <28.394653, 30.774174, 32.827316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597549, 30.826880, 32.944172>,  <28.935709, 30.914722, 33.138935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597549, 30.826880, 32.944172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046139, -0.878141, 0.476171,
		-0.532142, 0.425019, 0.732246,
		-0.845397, -0.219605, -0.486906,
		28.343931, 30.760998, 32.798100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571651, 30.611979, 33.646885>,  <28.935709, 30.914722, 33.138935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571651, 30.611979, 33.646885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412708, 30.497103, 33.298260>,  <28.317343, 30.428177, 33.089085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412708, 30.497103, 33.298260>,  <28.571651, 30.611979, 33.646885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412708, 30.497103, 33.298260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125821, -0.957848, 0.258257,
		-0.908996, -0.007041, 0.416744,
		-0.397359, -0.287190, -0.871566,
		28.293501, 30.410946, 33.036789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975853, 30.207867, 33.814697>,  <28.571651, 30.611979, 33.646885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975853, 30.207867, 33.814697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108160, 30.122566, 33.446976>,  <28.187544, 30.071386, 33.226341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108160, 30.122566, 33.446976>,  <27.975853, 30.207867, 33.814697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108160, 30.122566, 33.446976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040549, -0.970022, 0.239609,
		-0.942841, -0.116531, -0.312203,
		0.330766, -0.213253, -0.919302,
		28.207390, 30.058590, 33.171185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559904, 29.683813, 33.677666>,  <27.975853, 30.207867, 33.814697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559904, 29.683813, 33.677666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846727, 29.650688, 33.400833>,  <28.018822, 29.630814, 33.234734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846727, 29.650688, 33.400833>,  <27.559904, 29.683813, 33.677666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846727, 29.650688, 33.400833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036742, -0.996027, 0.081114,
		-0.696045, -0.032735, -0.717251,
		0.717057, -0.082813, -0.692077,
		28.061844, 29.625845, 33.193211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345669, 29.249420, 33.088379>,  <27.559904, 29.683813, 33.677666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345669, 29.249420, 33.088379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.743364, 29.208862, 33.102299>,  <27.981981, 29.184526, 33.110649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.743364, 29.208862, 33.102299>,  <27.345669, 29.249420, 33.088379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743364, 29.208862, 33.102299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104577, -0.988761, 0.106844,
		0.023576, -0.109868, -0.993667,
		0.994237, -0.101396, 0.034800,
		28.041636, 29.178444, 33.112740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492876, 28.665842, 32.649628>,  <27.345669, 29.249420, 33.088379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492876, 28.665842, 32.649628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830761, 28.713007, 32.858456>,  <28.033491, 28.741306, 32.983753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830761, 28.713007, 32.858456>,  <27.492876, 28.665842, 32.649628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830761, 28.713007, 32.858456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158571, -0.986772, -0.033705,
		0.511190, 0.111256, -0.852236,
		0.844713, 0.117911, 0.522070,
		28.084175, 28.748381, 33.015076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948204, 28.190815, 32.325775>,  <27.492876, 28.665842, 32.649628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948204, 28.190815, 32.325775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085474, 28.280823, 32.690544>,  <28.167837, 28.334827, 32.909405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085474, 28.280823, 32.690544>,  <27.948204, 28.190815, 32.325775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085474, 28.280823, 32.690544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330617, -0.937684, 0.106960,
		0.879160, 0.264790, -0.396187,
		0.343177, 0.225021, 0.911918,
		28.188427, 28.348330, 32.964119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548494, 27.743942, 32.421616>,  <27.948204, 28.190815, 32.325775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548494, 27.743942, 32.421616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499870, 27.883335, 32.793377>,  <28.470695, 27.966970, 33.016434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499870, 27.883335, 32.793377>,  <28.548494, 27.743942, 32.421616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499870, 27.883335, 32.793377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504613, -0.784618, 0.360195,
		0.854745, 0.512773, -0.080468,
		-0.121561, 0.348480, 0.929400,
		28.463402, 27.987879, 33.072197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168383, 27.670513, 32.777176>,  <28.548494, 27.743942, 32.421616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168383, 27.670513, 32.777176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892801, 27.665531, 33.067055>,  <28.727451, 27.662542, 33.240982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892801, 27.665531, 33.067055>,  <29.168383, 27.670513, 32.777176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892801, 27.665531, 33.067055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360265, -0.873477, 0.327487,
		0.628928, 0.486707, 0.606272,
		-0.688955, -0.012453, 0.724697,
		28.686115, 27.661795, 33.284466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522961, 27.441774, 33.399700>,  <29.168383, 27.670513, 32.777176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522961, 27.441774, 33.399700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.132494, 27.380445, 33.461136>,  <28.898214, 27.343649, 33.497997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.132494, 27.380445, 33.461136>,  <29.522961, 27.441774, 33.399700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132494, 27.380445, 33.461136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199955, -0.910500, 0.361951,
		0.084346, 0.384035, 0.919458,
		-0.976168, -0.153321, 0.153587,
		28.839643, 27.334450, 33.507214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326366, 27.161808, 34.085300>,  <29.522961, 27.441774, 33.399700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326366, 27.161808, 34.085300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021749, 27.031672, 33.861084>,  <28.838980, 26.953590, 33.726555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021749, 27.031672, 33.861084>,  <29.326366, 27.161808, 34.085300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021749, 27.031672, 33.861084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173367, -0.935620, 0.307504,
		-0.624495, 0.136998, 0.768919,
		-0.761544, -0.325340, -0.560539,
		28.793285, 26.934069, 33.692921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943214, 26.615696, 34.485340>,  <29.326366, 27.161808, 34.085300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943214, 26.615696, 34.485340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815563, 26.561493, 34.110149>,  <28.738974, 26.528971, 33.885036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815563, 26.561493, 34.110149>,  <28.943214, 26.615696, 34.485340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815563, 26.561493, 34.110149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046639, -0.990771, 0.127269,
		-0.946564, -0.003131, 0.322501,
		-0.319126, -0.135509, -0.937974,
		28.719826, 26.520840, 33.828758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.935040, 42.955566, 43.369991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628193, 42.725838, 43.484306>,  <36.444084, 42.588001, 43.552895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628193, 42.725838, 43.484306>,  <36.935040, 42.955566, 43.369991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628193, 42.725838, 43.484306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361783, 0.755219, 0.546587,
		-0.529754, 0.315903, -0.787125,
		-0.767120, -0.574325, 0.285792,
		36.398056, 42.553539, 43.570045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371037, 43.427917, 43.444672>,  <36.935040, 42.955566, 43.369991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371037, 43.427917, 43.444672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266037, 43.107426, 43.659756>,  <36.203037, 42.915131, 43.788807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266037, 43.107426, 43.659756>,  <36.371037, 43.427917, 43.444672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266037, 43.107426, 43.659756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326175, 0.598127, 0.732020,
		-0.908131, 0.016771, -0.418350,
		-0.262503, -0.801226, 0.537707,
		36.187286, 42.867058, 43.821068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797375, 43.703335, 43.796158>,  <36.371037, 43.427917, 43.444672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797375, 43.703335, 43.796158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881496, 43.358936, 43.981396>,  <35.931969, 43.152298, 44.092541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881496, 43.358936, 43.981396>,  <35.797375, 43.703335, 43.796158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881496, 43.358936, 43.981396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266382, 0.405303, 0.874511,
		-0.940645, -0.307273, -0.144118,
		0.210302, -0.860995, 0.463098,
		35.944588, 43.100639, 44.120327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105225, 43.522827, 44.129520>,  <35.797375, 43.703335, 43.796158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105225, 43.522827, 44.129520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417713, 43.358738, 44.317738>,  <35.605206, 43.260284, 44.430668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417713, 43.358738, 44.317738>,  <35.105225, 43.522827, 44.129520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417713, 43.358738, 44.317738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235366, 0.504586, 0.830660,
		-0.578183, -0.759680, 0.297643,
		0.781222, -0.410218, 0.470546,
		35.652081, 43.235672, 44.458900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885555, 43.281860, 44.744942>,  <35.105225, 43.522827, 44.129520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885555, 43.281860, 44.744942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273064, 43.344532, 44.821819>,  <35.505569, 43.382133, 44.867947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273064, 43.344532, 44.821819>,  <34.885555, 43.281860, 44.744942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273064, 43.344532, 44.821819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244332, 0.470995, 0.847624,
		0.042285, -0.868110, 0.494567,
		0.968769, 0.156680, 0.192191,
		35.563694, 43.391537, 44.879478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977364, 43.292786, 45.483540>,  <34.885555, 43.281860, 44.744942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977364, 43.292786, 45.483540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307613, 43.462574, 45.334854>,  <35.505764, 43.564449, 45.245644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307613, 43.462574, 45.334854>,  <34.977364, 43.292786, 45.483540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307613, 43.462574, 45.334854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061005, 0.587783, 0.806715,
		0.560910, -0.688721, 0.459394,
		0.825626, 0.424469, -0.371709,
		35.555302, 43.589916, 45.223339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402760, 43.354996, 46.038509>,  <34.977364, 43.292786, 45.483540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402760, 43.354996, 46.038509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571617, 43.602947, 45.773922>,  <35.672932, 43.751720, 45.615170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571617, 43.602947, 45.773922>,  <35.402760, 43.354996, 46.038509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571617, 43.602947, 45.773922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324744, 0.577842, 0.748759,
		0.846368, -0.530890, 0.042628,
		0.422141, 0.619882, -0.661470,
		35.698261, 43.788914, 45.575481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118519, 43.462296, 46.308891>,  <35.402760, 43.354996, 46.038509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118519, 43.462296, 46.308891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012901, 43.739178, 46.040230>,  <35.949532, 43.905308, 45.879032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012901, 43.739178, 46.040230>,  <36.118519, 43.462296, 46.308891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012901, 43.739178, 46.040230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241462, 0.721639, 0.648794,
		0.933796, 0.009132, -0.357689,
		-0.264048, 0.692210, -0.671658,
		35.933685, 43.946842, 45.838734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641109, 43.848518, 46.269520>,  <36.118519, 43.462296, 46.308891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641109, 43.848518, 46.269520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359570, 44.088680, 46.117672>,  <36.190647, 44.232777, 46.026562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359570, 44.088680, 46.117672>,  <36.641109, 43.848518, 46.269520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359570, 44.088680, 46.117672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308765, 0.739880, 0.597697,
		0.639734, 0.303474, -0.706147,
		-0.703849, 0.600401, -0.379624,
		36.148415, 44.268799, 46.003784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878014, 44.551903, 46.206413>,  <36.641109, 43.848518, 46.269520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878014, 44.551903, 46.206413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481941, 44.607048, 46.197109>,  <36.244297, 44.640137, 46.191528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481941, 44.607048, 46.197109>,  <36.878014, 44.551903, 46.206413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481941, 44.607048, 46.197109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093466, 0.776431, 0.623232,
		0.103977, 0.614937, -0.781691,
		-0.990178, 0.137863, -0.023256,
		36.184887, 44.648407, 46.190132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789814, 45.297432, 46.296093>,  <36.878014, 44.551903, 46.206413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789814, 45.297432, 46.296093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423431, 45.161331, 46.381184>,  <36.203602, 45.079670, 46.432240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423431, 45.161331, 46.381184>,  <36.789814, 45.297432, 46.296093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423431, 45.161331, 46.381184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072033, 0.660936, 0.746977,
		-0.394758, 0.668876, -0.629898,
		-0.915957, -0.340249, 0.212728,
		36.148643, 45.059258, 46.445004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224800, 45.919167, 46.246128>,  <36.789814, 45.297432, 46.296093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224800, 45.919167, 46.246128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122723, 45.614647, 46.484558>,  <36.061478, 45.431934, 46.627617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122723, 45.614647, 46.484558>,  <36.224800, 45.919167, 46.246128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122723, 45.614647, 46.484558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116111, 0.636153, 0.762777,
		-0.959893, 0.125444, -0.250736,
		-0.255192, -0.761297, 0.596073,
		36.046165, 45.386257, 46.663380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519077, 45.964077, 46.591354>,  <36.224800, 45.919167, 46.246128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519077, 45.964077, 46.591354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822636, 45.807293, 46.799374>,  <36.004768, 45.713223, 46.924183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822636, 45.807293, 46.799374>,  <35.519077, 45.964077, 46.591354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822636, 45.807293, 46.799374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145144, 0.676682, 0.721827,
		-0.634836, -0.623270, 0.456637,
		0.758892, -0.391964, 0.520046,
		36.050304, 45.689705, 46.955387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359352, 45.747303, 47.370018>,  <35.519077, 45.964077, 46.591354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359352, 45.747303, 47.370018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732327, 45.861393, 47.281284>,  <35.956112, 45.929848, 47.228043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732327, 45.861393, 47.281284>,  <35.359352, 45.747303, 47.370018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732327, 45.861393, 47.281284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032501, 0.545235, 0.837653,
		0.359869, -0.788268, 0.499127,
		0.932436, 0.285224, -0.221833,
		36.012058, 45.946960, 47.214733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761566, 46.206638, 47.126137>,  <35.359352, 45.747303, 47.370018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761566, 46.206638, 47.126137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576996, 46.547470, 47.027306>,  <34.466251, 46.751968, 46.968006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576996, 46.547470, 47.027306>,  <34.761566, 46.206638, 47.126137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576996, 46.547470, 47.027306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016564, -0.286727, -0.957869,
		-0.887022, -0.437897, 0.146418,
		-0.461430, 0.852076, -0.247079,
		34.438568, 46.803093, 46.953182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143379, 46.082363, 46.710857>,  <34.761566, 46.206638, 47.126137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143379, 46.082363, 46.710857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236649, 46.457066, 46.606457>,  <34.292610, 46.681889, 46.543816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236649, 46.457066, 46.606457>,  <34.143379, 46.082363, 46.710857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236649, 46.457066, 46.606457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096016, -0.244912, -0.964779,
		-0.967684, 0.250018, 0.032838,
		0.233169, 0.936755, -0.261003,
		34.306599, 46.738091, 46.528156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628700, 46.313274, 46.320232>,  <34.143379, 46.082363, 46.710857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628700, 46.313274, 46.320232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898418, 46.578449, 46.190098>,  <34.060249, 46.737553, 46.112019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898418, 46.578449, 46.190098>,  <33.628700, 46.313274, 46.320232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898418, 46.578449, 46.190098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035967, -0.410551, -0.911128,
		-0.737584, 0.626072, -0.252990,
		0.674297, 0.662934, -0.325334,
		34.100708, 46.777328, 46.092499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308693, 46.660431, 45.665157>,  <33.628700, 46.313274, 46.320232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308693, 46.660431, 45.665157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701519, 46.733547, 45.646629>,  <33.937214, 46.777416, 45.635513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701519, 46.733547, 45.646629>,  <33.308693, 46.660431, 45.665157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701519, 46.733547, 45.646629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011287, -0.188227, -0.982061,
		-0.188227, 0.964966, -0.182787,
		0.982061, 0.182787, -0.046321,
		33.996136, 46.788383, 45.632732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449562, 47.196156, 45.082432>,  <33.308693, 46.660431, 45.665157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449562, 47.196156, 45.082432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793522, 47.010235, 45.166847>,  <33.999897, 46.898682, 45.217495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793522, 47.010235, 45.166847>,  <33.449562, 47.196156, 45.082432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793522, 47.010235, 45.166847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130216, -0.200012, -0.971102,
		0.493579, 0.862528, -0.111465,
		0.859897, -0.464801, 0.211036,
		34.051491, 46.870796, 45.230160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923023, 47.406670, 44.505013>,  <33.449562, 47.196156, 45.082432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923023, 47.406670, 44.505013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062664, 47.064144, 44.657257>,  <34.146446, 46.858631, 44.748604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062664, 47.064144, 44.657257>,  <33.923023, 47.406670, 44.505013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062664, 47.064144, 44.657257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247365, -0.307549, -0.918817,
		0.903847, 0.414908, 0.104456,
		0.349099, -0.856309, 0.380611,
		34.167393, 46.807251, 44.771439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607864, 47.136322, 44.139164>,  <33.923023, 47.406670, 44.505013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607864, 47.136322, 44.139164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.467026, 46.810940, 44.324345>,  <34.382523, 46.615711, 44.435452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.467026, 46.810940, 44.324345>,  <34.607864, 47.136322, 44.139164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467026, 46.810940, 44.324345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271157, -0.562062, -0.781384,
		0.895825, -0.149589, 0.418473,
		-0.352094, -0.813455, 0.462947,
		34.361397, 46.566902, 44.463230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924427, 46.634197, 43.748329>,  <34.607864, 47.136322, 44.139164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924427, 46.634197, 43.748329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.661617, 46.415848, 43.956306>,  <34.503933, 46.284840, 44.081093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.661617, 46.415848, 43.956306>,  <34.924427, 46.634197, 43.748329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661617, 46.415848, 43.956306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057751, -0.651232, -0.756678,
		0.751653, -0.527185, 0.396351,
		-0.657026, -0.545870, 0.519946,
		34.464508, 46.252087, 44.112289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159828, 45.893524, 43.629814>,  <34.924427, 46.634197, 43.748329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159828, 45.893524, 43.629814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.773132, 45.886200, 43.731853>,  <34.541115, 45.881805, 43.793076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.773132, 45.886200, 43.731853>,  <35.159828, 45.893524, 43.629814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773132, 45.886200, 43.731853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181045, -0.655512, -0.733162,
		0.180647, -0.754963, 0.630395,
		-0.966742, -0.018314, 0.255098,
		34.483109, 45.880707, 43.808384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922131, 45.223114, 43.542191>,  <35.159828, 45.893524, 43.629814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922131, 45.223114, 43.542191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.572887, 45.418110, 43.544315>,  <34.363342, 45.535107, 43.545589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.572887, 45.418110, 43.544315>,  <34.922131, 45.223114, 43.542191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572887, 45.418110, 43.544315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324354, -0.572715, -0.752856,
		-0.363967, -0.659051, 0.658164,
		-0.873111, 0.487493, 0.005317,
		34.310955, 45.564358, 43.545910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476055, 44.743214, 43.629864>,  <34.922131, 45.223114, 43.542191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476055, 44.743214, 43.629864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274807, 45.036877, 43.447491>,  <34.154057, 45.213074, 43.338066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274807, 45.036877, 43.447491>,  <34.476055, 44.743214, 43.629864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274807, 45.036877, 43.447491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397767, -0.665086, -0.632014,
		-0.767236, -0.136624, 0.626644,
		-0.503121, 0.734162, -0.455933,
		34.123871, 45.257126, 43.310711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785072, 44.479122, 43.644997>,  <34.476055, 44.743214, 43.629864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785072, 44.479122, 43.644997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872437, 44.754257, 43.368107>,  <33.924854, 44.919338, 43.201973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872437, 44.754257, 43.368107>,  <33.785072, 44.479122, 43.644997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872437, 44.754257, 43.368107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136426, -0.680861, -0.719594,
		-0.966273, 0.251606, -0.054870,
		0.218413, 0.687839, -0.692224,
		33.937962, 44.960609, 43.160439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308464, 44.357300, 43.138111>,  <33.785072, 44.479122, 43.644997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308464, 44.357300, 43.138111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581806, 44.580406, 42.949677>,  <33.745811, 44.714272, 42.836617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581806, 44.580406, 42.949677>,  <33.308464, 44.357300, 43.138111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581806, 44.580406, 42.949677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014258, -0.655320, -0.755216,
		-0.729946, 0.509365, -0.455770,
		0.683356, 0.557765, -0.471086,
		33.786812, 44.747734, 42.808350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003353, 44.468735, 42.504425>,  <33.308464, 44.357300, 43.138111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003353, 44.468735, 42.504425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389172, 44.541756, 42.428188>,  <33.620663, 44.585567, 42.382446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389172, 44.541756, 42.428188>,  <33.003353, 44.468735, 42.504425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389172, 44.541756, 42.428188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039152, -0.615199, -0.787399,
		-0.260995, 0.766944, -0.586240,
		0.964546, 0.182555, -0.190591,
		33.678535, 44.596523, 42.371010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482723, 44.524426, 41.974205>,  <33.003353, 44.468735, 42.504425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482723, 44.524426, 41.974205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258587, 44.213997, 42.089951>,  <32.124104, 44.027740, 42.159397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258587, 44.213997, 42.089951>,  <32.482723, 44.524426, 41.974205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258587, 44.213997, 42.089951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258902, 0.495979, 0.828840,
		-0.786756, 0.389517, -0.478844,
		-0.560343, -0.776068, 0.289368,
		32.090485, 43.981178, 42.176762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836617, 44.880688, 42.301147>,  <32.482723, 44.524426, 41.974205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836617, 44.880688, 42.301147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828531, 44.511490, 42.454861>,  <31.823679, 44.289970, 42.547089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828531, 44.511490, 42.454861>,  <31.836617, 44.880688, 42.301147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828531, 44.511490, 42.454861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321386, 0.369960, 0.871688,
		-0.946732, -0.105882, -0.304116,
		-0.020215, -0.922994, 0.384282,
		31.822466, 44.234592, 42.570145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624678, 45.075821, 42.992210>,  <31.836617, 44.880688, 42.301147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624678, 45.075821, 42.992210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720406, 44.689396, 43.031075>,  <31.777843, 44.457539, 43.054394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720406, 44.689396, 43.031075>,  <31.624678, 45.075821, 42.992210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720406, 44.689396, 43.031075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210290, 0.046120, 0.976551,
		-0.947895, -0.254140, -0.192117,
		0.239320, -0.966067, 0.097160,
		31.792202, 44.399574, 43.060223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082884, 44.743591, 43.272495>,  <31.624678, 45.075821, 42.992210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082884, 44.743591, 43.272495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409246, 44.532673, 43.367367>,  <31.605064, 44.406120, 43.424290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409246, 44.532673, 43.367367>,  <31.082884, 44.743591, 43.272495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409246, 44.532673, 43.367367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260274, 0.031343, 0.965026,
		-0.516287, -0.849104, -0.111668,
		0.815907, -0.527295, 0.237182,
		31.654018, 44.374485, 43.438522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888348, 44.401604, 43.853645>,  <31.082884, 44.743591, 43.272495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888348, 44.401604, 43.853645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.287243, 44.372189, 43.857887>,  <31.526579, 44.354542, 43.860432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.287243, 44.372189, 43.857887>,  <30.888348, 44.401604, 43.853645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287243, 44.372189, 43.857887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005185, 0.073479, 0.997283,
		-0.074112, -0.994582, 0.072895,
		0.997237, -0.073532, 0.010602,
		31.586414, 44.350128, 43.861069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158195, 43.926662, 44.434662>,  <30.888348, 44.401604, 43.853645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158195, 43.926662, 44.434662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.458408, 44.173420, 44.339882>,  <31.638536, 44.321472, 44.283012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.458408, 44.173420, 44.339882>,  <31.158195, 43.926662, 44.434662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458408, 44.173420, 44.339882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249932, 0.066947, 0.965946,
		0.611748, -0.784195, -0.103935,
		0.750532, 0.616892, -0.236950,
		31.683569, 44.358486, 44.268795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628822, 43.721832, 44.920708>,  <31.158195, 43.926662, 44.434662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628822, 43.721832, 44.920708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.712118, 44.092190, 44.794621>,  <31.762096, 44.314404, 44.718967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.712118, 44.092190, 44.794621>,  <31.628822, 43.721832, 44.920708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712118, 44.092190, 44.794621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079844, 0.305114, 0.948963,
		0.974813, -0.222781, -0.010390,
		0.208240, 0.925891, -0.315217,
		31.774590, 44.369957, 44.700054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049850, 43.192204, 45.308601>,  <31.628822, 43.721832, 44.920708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049850, 43.192204, 45.308601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.971056, 42.870926, 45.533482>,  <31.923780, 42.678158, 45.668411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.971056, 42.870926, 45.533482>,  <32.049850, 43.192204, 45.308601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971056, 42.870926, 45.533482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255483, -0.595678, -0.761509,
		0.946534, -0.006372, 0.322542,
		-0.196983, -0.803198, 0.562202,
		31.911961, 42.629967, 45.702141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623245, 42.644081, 45.172489>,  <32.049850, 43.192204, 45.308601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623245, 42.644081, 45.172489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314857, 42.429276, 45.309441>,  <32.129826, 42.300392, 45.391609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314857, 42.429276, 45.309441>,  <32.623245, 42.644081, 45.172489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314857, 42.429276, 45.309441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035843, -0.500152, -0.865196,
		0.635860, -0.679313, 0.366355,
		-0.770972, -0.537012, 0.342375,
		32.083565, 42.268173, 45.412151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754673, 41.966312, 45.070412>,  <32.623245, 42.644081, 45.172489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754673, 41.966312, 45.070412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.355644, 41.990082, 45.084915>,  <32.116226, 42.004345, 45.093616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.355644, 41.990082, 45.084915>,  <32.754673, 41.966312, 45.070412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355644, 41.990082, 45.084915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063624, -0.566982, -0.821269,
		-0.028243, -0.821584, 0.569388,
		-0.997575, 0.059422, 0.036260,
		32.056374, 42.007908, 45.095795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597435, 41.421009, 44.750214>,  <32.754673, 41.966312, 45.070412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597435, 41.421009, 44.750214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229008, 41.576233, 44.737343>,  <32.007950, 41.669369, 44.729622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229008, 41.576233, 44.737343>,  <32.597435, 41.421009, 44.750214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229008, 41.576233, 44.737343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266675, -0.688844, -0.674077,
		-0.283749, -0.612292, 0.737960,
		-0.921071, 0.388064, -0.032176,
		31.952686, 41.692654, 44.727692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111305, 40.890381, 44.924229>,  <32.597435, 41.421009, 44.750214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111305, 40.890381, 44.924229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.930176, 41.179688, 44.715675>,  <31.821499, 41.353271, 44.590546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.930176, 41.179688, 44.715675>,  <32.111305, 40.890381, 44.924229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930176, 41.179688, 44.715675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354558, -0.682616, -0.639003,
		-0.818071, -0.104496, 0.565544,
		-0.452822, 0.723268, -0.521379,
		31.794329, 41.396667, 44.559261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510321, 40.556793, 44.782555>,  <32.111305, 40.890381, 44.924229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510321, 40.556793, 44.782555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.502195, 40.856110, 44.517330>,  <31.497320, 41.035698, 44.358196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.502195, 40.856110, 44.517330>,  <31.510321, 40.556793, 44.782555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502195, 40.856110, 44.517330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369624, -0.621833, -0.690436,
		-0.928960, 0.231060, 0.289215,
		-0.020311, 0.748288, -0.663063,
		31.496101, 41.080597, 44.318413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798716, 40.621540, 44.430550>,  <31.510321, 40.556793, 44.782555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798716, 40.621540, 44.430550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.080191, 40.778988, 44.193947>,  <31.249075, 40.873459, 44.051983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.080191, 40.778988, 44.193947>,  <30.798716, 40.621540, 44.430550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080191, 40.778988, 44.193947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316907, -0.571236, -0.757139,
		-0.635919, 0.720243, -0.277231,
		0.703688, 0.393623, -0.591510,
		31.291298, 40.897076, 44.016495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.543766, 42.782848, 48.529053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.806068, 43.005806, 48.325367>,  <34.963448, 43.139580, 48.203156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.806068, 43.005806, 48.325367>,  <34.543766, 42.782848, 48.529053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806068, 43.005806, 48.325367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133866, -0.749638, -0.648169,
		-0.743012, 0.356872, -0.566194,
		0.655754, 0.557392, -0.509217,
		35.002796, 43.173023, 48.172604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429272, 42.691753, 47.826488>,  <34.543766, 42.782848, 48.529053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429272, 42.691753, 47.826488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801636, 42.837845, 47.825001>,  <35.025055, 42.925499, 47.824108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801636, 42.837845, 47.825001>,  <34.429272, 42.691753, 47.826488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801636, 42.837845, 47.825001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227229, -0.587075, -0.776987,
		-0.285963, 0.722460, -0.629505,
		0.930909, 0.365232, -0.003718,
		35.080910, 42.947414, 47.823887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559601, 42.899334, 47.157764>,  <34.429272, 42.691753, 47.826488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559601, 42.899334, 47.157764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913994, 42.827866, 47.328930>,  <35.126629, 42.784985, 47.431629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913994, 42.827866, 47.328930>,  <34.559601, 42.899334, 47.157764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913994, 42.827866, 47.328930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250597, -0.591967, -0.766013,
		0.390176, 0.785909, -0.479698,
		0.885982, -0.178669, 0.427918,
		35.179787, 42.774265, 47.457306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049309, 42.922504, 46.578041>,  <34.559601, 42.899334, 47.157764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049309, 42.922504, 46.578041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.215294, 42.716351, 46.877956>,  <35.314884, 42.592659, 47.057907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.215294, 42.716351, 46.877956>,  <35.049309, 42.922504, 46.578041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215294, 42.716351, 46.877956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282915, -0.710145, -0.644711,
		0.864734, 0.479657, -0.148872,
		0.414961, -0.515386, 0.749789,
		35.339783, 42.561733, 47.102894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620571, 42.664814, 46.322166>,  <35.049309, 42.922504, 46.578041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620571, 42.664814, 46.322166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.554913, 42.430813, 46.639866>,  <35.515518, 42.290413, 46.830486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.554913, 42.430813, 46.639866>,  <35.620571, 42.664814, 46.322166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554913, 42.430813, 46.639866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272671, -0.800704, -0.533407,
		0.948002, 0.129014, 0.290943,
		-0.164142, -0.585003, 0.794247,
		35.505669, 42.255314, 46.878139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170624, 42.252907, 46.299599>,  <35.620571, 42.664814, 46.322166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170624, 42.252907, 46.299599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.884445, 42.069485, 46.510448>,  <35.712738, 41.959431, 46.636959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.884445, 42.069485, 46.510448>,  <36.170624, 42.252907, 46.299599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884445, 42.069485, 46.510448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314586, -0.885095, -0.342991,
		0.623835, -0.079567, 0.777496,
		-0.715448, -0.458559, 0.527122,
		35.669811, 41.931915, 46.668587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468449, 41.611191, 46.415733>,  <36.170624, 42.252907, 46.299599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468449, 41.611191, 46.415733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.080601, 41.539558, 46.482399>,  <35.847893, 41.496578, 46.522400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.080601, 41.539558, 46.482399>,  <36.468449, 41.611191, 46.415733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080601, 41.539558, 46.482399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128526, -0.952580, -0.275812,
		0.208152, -0.246011, 0.946653,
		-0.969615, -0.179081, 0.166663,
		35.789715, 41.485836, 46.532398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474545, 40.904713, 46.541206>,  <36.468449, 41.611191, 46.415733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474545, 40.904713, 46.541206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.083637, 40.954914, 46.472851>,  <35.849094, 40.985035, 46.431839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.083637, 40.954914, 46.472851>,  <36.474545, 40.904713, 46.541206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083637, 40.954914, 46.472851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042564, -0.905700, -0.421777,
		-0.207708, -0.404914, 0.890450,
		-0.977265, 0.125507, -0.170886,
		35.790459, 40.992565, 46.421585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111649, 40.293285, 46.747192>,  <36.474545, 40.904713, 46.541206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111649, 40.293285, 46.747192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.842503, 40.451603, 46.497200>,  <35.681015, 40.546593, 46.347202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.842503, 40.451603, 46.497200>,  <36.111649, 40.293285, 46.747192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842503, 40.451603, 46.497200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038895, -0.862599, -0.504391,
		-0.738742, -0.315078, 0.595807,
		-0.672865, 0.395789, -0.624983,
		35.640644, 40.570339, 46.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530270, 39.809498, 46.758865>,  <36.111649, 40.293285, 46.747192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530270, 39.809498, 46.758865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.542000, 40.008221, 46.411919>,  <35.549038, 40.127453, 46.203751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.542000, 40.008221, 46.411919>,  <35.530270, 39.809498, 46.758865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542000, 40.008221, 46.411919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064899, -0.866854, -0.494320,
		-0.997461, -0.041792, -0.057667,
		0.029330, 0.496808, -0.867365,
		35.550800, 40.157265, 46.151711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286869, 39.332138, 46.392014>,  <35.530270, 39.809498, 46.758865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286869, 39.332138, 46.392014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410095, 39.596634, 46.118412>,  <35.484032, 39.755329, 45.954250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410095, 39.596634, 46.118412>,  <35.286869, 39.332138, 46.392014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410095, 39.596634, 46.118412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057059, -0.704834, -0.707074,
		-0.949652, 0.256854, -0.179406,
		0.308066, 0.661238, -0.684003,
		35.502514, 39.795006, 45.913212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879971, 39.189816, 45.870361>,  <35.286869, 39.332138, 46.392014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879971, 39.189816, 45.870361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201965, 39.362076, 45.707123>,  <35.395161, 39.465431, 45.609180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201965, 39.362076, 45.707123>,  <34.879971, 39.189816, 45.870361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201965, 39.362076, 45.707123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041005, -0.645823, -0.762385,
		-0.591880, 0.630441, -0.502217,
		0.804982, 0.430647, -0.408101,
		35.443459, 39.491268, 45.584694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114487, 39.317390, 45.687080>,  <34.879971, 39.189816, 45.870361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114487, 39.317390, 45.687080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.718246, 39.267769, 45.710098>,  <33.480499, 39.237995, 45.723907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.718246, 39.267769, 45.710098>,  <34.114487, 39.317390, 45.687080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718246, 39.267769, 45.710098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050170, 0.721126, 0.690985,
		-0.127216, 0.681607, -0.720575,
		-0.990605, -0.124056, 0.057542,
		33.421066, 39.230553, 45.727360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759834, 39.994640, 45.673878>,  <34.114487, 39.317390, 45.687080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759834, 39.994640, 45.673878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.519802, 39.733860, 45.859291>,  <33.375782, 39.577393, 45.970539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.519802, 39.733860, 45.859291>,  <33.759834, 39.994640, 45.673878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519802, 39.733860, 45.859291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029133, 0.596892, 0.801793,
		-0.799409, 0.467636, -0.377177,
		-0.600081, -0.651948, 0.463537,
		33.339779, 39.538277, 45.998352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303741, 40.443054, 46.044022>,  <33.759834, 39.994640, 45.673878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303741, 40.443054, 46.044022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.227524, 40.085785, 46.206963>,  <33.181793, 39.871426, 46.304729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.227524, 40.085785, 46.206963>,  <33.303741, 40.443054, 46.044022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227524, 40.085785, 46.206963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345873, 0.449432, 0.823639,
		-0.918729, 0.016048, -0.394561,
		-0.190546, -0.893170, 0.407356,
		33.170361, 39.817833, 46.329170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579357, 40.372829, 46.253956>,  <33.303741, 40.443054, 46.044022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579357, 40.372829, 46.253956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751785, 40.097740, 46.487610>,  <32.855244, 39.932686, 46.627804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751785, 40.097740, 46.487610>,  <32.579357, 40.372829, 46.253956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751785, 40.097740, 46.487610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269687, 0.519585, 0.810741,
		-0.861072, -0.507023, 0.038510,
		0.431074, -0.687720, 0.584137,
		32.881107, 39.891422, 46.662849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161072, 40.315472, 46.763123>,  <32.579357, 40.372829, 46.253956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161072, 40.315472, 46.763123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.489410, 40.150085, 46.920734>,  <32.686413, 40.050854, 47.015301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.489410, 40.150085, 46.920734>,  <32.161072, 40.315472, 46.763123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489410, 40.150085, 46.920734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348612, 0.183778, 0.919073,
		-0.452418, -0.891781, 0.006715,
		0.820846, -0.413464, 0.394029,
		32.735664, 40.026047, 47.038944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912519, 39.750496, 47.261204>,  <32.161072, 40.315472, 46.763123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912519, 39.750496, 47.261204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.276894, 39.895081, 47.340744>,  <32.495518, 39.981831, 47.388470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.276894, 39.895081, 47.340744>,  <31.912519, 39.750496, 47.261204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276894, 39.895081, 47.340744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267132, 0.149481, 0.951996,
		0.314390, -0.920325, 0.232726,
		0.910933, 0.361467, 0.198853,
		32.550175, 40.003521, 47.400398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047001, 39.495110, 47.834785>,  <31.912519, 39.750496, 47.261204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047001, 39.495110, 47.834785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310295, 39.796143, 47.827244>,  <32.468269, 39.976761, 47.822720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310295, 39.796143, 47.827244>,  <32.047001, 39.495110, 47.834785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310295, 39.796143, 47.827244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196105, 0.195591, 0.960878,
		0.726825, -0.628783, 0.276328,
		0.658232, 0.752580, -0.018853,
		32.507763, 40.021915, 47.821587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260506, 39.496712, 48.520061>,  <32.047001, 39.495110, 47.834785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260506, 39.496712, 48.520061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418396, 39.842674, 48.396038>,  <32.513130, 40.050251, 48.321625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418396, 39.842674, 48.396038>,  <32.260506, 39.496712, 48.520061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418396, 39.842674, 48.396038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057937, 0.313356, 0.947867,
		0.916970, -0.392112, 0.073580,
		0.394726, 0.864903, -0.310056,
		32.536816, 40.102146, 48.303020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744793, 39.720154, 49.043407>,  <32.260506, 39.496712, 48.520061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744793, 39.720154, 49.043407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.679955, 40.061626, 48.845440>,  <32.641052, 40.266510, 48.726658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.679955, 40.061626, 48.845440>,  <32.744793, 39.720154, 49.043407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679955, 40.061626, 48.845440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223218, 0.520275, 0.824310,
		0.961197, 0.023139, -0.274890,
		-0.162092, 0.853685, -0.494922,
		32.631329, 40.317734, 48.696964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391342, 40.144493, 48.968689>,  <32.744793, 39.720154, 49.043407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391342, 40.144493, 48.968689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.077000, 40.390171, 48.939869>,  <32.888393, 40.537579, 48.922577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.077000, 40.390171, 48.939869>,  <33.391342, 40.144493, 48.968689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077000, 40.390171, 48.939869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447061, 0.644742, 0.620036,
		0.427276, 0.455050, -0.781258,
		-0.785858, 0.614196, -0.072047,
		32.841244, 40.574429, 48.918255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674919, 40.806408, 49.041008>,  <33.391342, 40.144493, 48.968689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674919, 40.806408, 49.041008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286015, 40.855686, 49.120544>,  <33.052673, 40.885254, 49.168266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286015, 40.855686, 49.120544>,  <33.674919, 40.806408, 49.041008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286015, 40.855686, 49.120544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228952, 0.675257, 0.701149,
		-0.047890, 0.727222, -0.684729,
		-0.972259, 0.123192, 0.198837,
		32.994335, 40.892643, 49.180195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552315, 41.518276, 48.987164>,  <33.674919, 40.806408, 49.041008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552315, 41.518276, 48.987164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.235977, 41.390198, 49.195789>,  <33.046173, 41.313351, 49.320965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.235977, 41.390198, 49.195789>,  <33.552315, 41.518276, 48.987164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235977, 41.390198, 49.195789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193847, 0.677288, 0.709722,
		-0.580503, 0.662386, -0.473562,
		-0.790848, -0.320197, 0.521569,
		32.998722, 41.294140, 49.352261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246876, 42.111938, 49.155109>,  <33.552315, 41.518276, 48.987164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246876, 42.111938, 49.155109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096115, 41.838646, 49.405277>,  <33.005657, 41.674671, 49.555378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096115, 41.838646, 49.405277>,  <33.246876, 42.111938, 49.155109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096115, 41.838646, 49.405277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151888, 0.620481, 0.769372,
		-0.913714, 0.384972, -0.130087,
		-0.376903, -0.683228, 0.625415,
		32.983044, 41.633678, 49.592903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663094, 42.393452, 49.528324>,  <33.246876, 42.111938, 49.155109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663094, 42.393452, 49.528324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.835598, 42.104904, 49.745075>,  <32.939102, 41.931774, 49.875126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.835598, 42.104904, 49.745075>,  <32.663094, 42.393452, 49.528324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835598, 42.104904, 49.745075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189762, 0.659695, 0.727182,
		-0.882044, -0.210780, 0.421392,
		0.431265, -0.721370, 0.541882,
		32.964977, 41.888493, 49.907639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856014, 42.751942, 48.880840>,  <32.663094, 42.393452, 49.528324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856014, 42.751942, 48.880840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.684803, 43.089088, 48.750389>,  <32.582077, 43.291378, 48.672119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.684803, 43.089088, 48.750389>,  <32.856014, 42.751942, 48.880840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684803, 43.089088, 48.750389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412472, -0.503270, -0.759333,
		-0.804151, -0.190496, 0.563075,
		-0.428029, 0.842870, -0.326131,
		32.556393, 43.341949, 48.652550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244537, 42.517879, 48.752804>,  <32.856014, 42.751942, 48.880840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244537, 42.517879, 48.752804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.256779, 42.852184, 48.533508>,  <32.264122, 43.052769, 48.401932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.256779, 42.852184, 48.533508>,  <32.244537, 42.517879, 48.752804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256779, 42.852184, 48.533508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289395, -0.517594, -0.805200,
		-0.956721, 0.183296, 0.226028,
		0.030599, 0.835763, -0.548238,
		32.265957, 43.102913, 48.369038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680555, 42.552097, 48.413578>,  <32.244537, 42.517879, 48.752804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680555, 42.552097, 48.413578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.933529, 42.783535, 48.207565>,  <32.085312, 42.922398, 48.083958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.933529, 42.783535, 48.207565>,  <31.680555, 42.552097, 48.413578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933529, 42.783535, 48.207565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308401, -0.421838, -0.852609,
		-0.710576, 0.698052, -0.088344,
		0.632432, 0.578598, -0.515028,
		32.123257, 42.957115, 48.053059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311474, 42.941132, 47.820564>,  <31.680555, 42.552097, 48.413578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311474, 42.941132, 47.820564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.651497, 42.998436, 47.617832>,  <31.855511, 43.032818, 47.496193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.651497, 42.998436, 47.617832>,  <31.311474, 42.941132, 47.820564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651497, 42.998436, 47.617832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493233, -0.120955, -0.861447,
		-0.184719, 0.982265, -0.032156,
		0.850059, 0.143266, -0.506828,
		31.906515, 43.041416, 47.465782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133657, 43.067467, 47.120335>,  <31.311474, 42.941132, 47.820564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133657, 43.067467, 47.120335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.523552, 43.023338, 47.042648>,  <31.757488, 42.996861, 46.996037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.523552, 43.023338, 47.042648>,  <31.133657, 43.067467, 47.120335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523552, 43.023338, 47.042648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200520, -0.049195, -0.978454,
		0.098389, 0.992678, -0.070073,
		0.974737, -0.110320, -0.194211,
		31.815973, 42.990242, 46.984386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303230, 43.417789, 46.562153>,  <31.133657, 43.067467, 47.120335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303230, 43.417789, 46.562153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.575954, 43.125263, 46.569225>,  <31.739590, 42.949749, 46.573467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.575954, 43.125263, 46.569225>,  <31.303230, 43.417789, 46.562153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575954, 43.125263, 46.569225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191780, -0.202018, -0.960421,
		0.705943, 0.651433, -0.277990,
		0.681810, -0.731316, 0.017681,
		31.780497, 42.905869, 46.574528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768793, 43.500542, 45.945099>,  <31.303230, 43.417789, 46.562153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768793, 43.500542, 45.945099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.798187, 43.118584, 46.060181>,  <31.815825, 42.889408, 46.129230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.798187, 43.118584, 46.060181>,  <31.768793, 43.500542, 45.945099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798187, 43.118584, 46.060181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043433, -0.291279, -0.955652,
		0.996350, 0.057730, -0.062879,
		0.073485, -0.954895, 0.287708,
		31.820232, 42.832115, 46.146492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102516, 43.908382, 45.442089>,  <31.768793, 43.500542, 45.945099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102516, 43.908382, 45.442089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.997843, 44.250290, 45.262802>,  <31.935038, 44.455433, 45.155231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.997843, 44.250290, 45.262802>,  <32.102516, 43.908382, 45.442089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997843, 44.250290, 45.262802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110840, 0.487941, 0.865811,
		0.958767, 0.176890, -0.222430,
		-0.261686, 0.854765, -0.448215,
		31.919336, 44.506718, 45.128338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631294, 44.453632, 45.586208>,  <32.102516, 43.908382, 45.442089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631294, 44.453632, 45.586208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.298458, 44.649837, 45.482651>,  <32.098755, 44.767559, 45.420517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.298458, 44.649837, 45.482651>,  <32.631294, 44.453632, 45.586208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298458, 44.649837, 45.482651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027344, 0.502492, 0.864149,
		0.553966, 0.711971, -0.431531,
		-0.832090, 0.490509, -0.258895,
		32.048832, 44.796989, 45.404984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837109, 45.141998, 45.674244>,  <32.631294, 44.453632, 45.586208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837109, 45.141998, 45.674244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.437752, 45.138245, 45.696571>,  <32.198135, 45.135990, 45.709969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.437752, 45.138245, 45.696571>,  <32.837109, 45.141998, 45.674244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437752, 45.138245, 45.696571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034857, 0.675023, 0.736972,
		-0.044597, 0.737736, -0.673614,
		-0.998397, -0.009386, 0.055819,
		32.138233, 45.135429, 45.713318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673031, 45.911484, 45.597900>,  <32.837109, 45.141998, 45.674244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673031, 45.911484, 45.597900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.376404, 45.718323, 45.784180>,  <32.198425, 45.602428, 45.895947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.376404, 45.718323, 45.784180>,  <32.673031, 45.911484, 45.597900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376404, 45.718323, 45.784180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086701, 0.619366, 0.780300,
		-0.665248, 0.619025, -0.417437,
		-0.741572, -0.482901, 0.465702,
		32.153931, 45.573452, 45.923889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291943, 46.405426, 45.975471>,  <32.673031, 45.911484, 45.597900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291943, 46.405426, 45.975471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199165, 46.057808, 46.150272>,  <32.143501, 45.849239, 46.255154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199165, 46.057808, 46.150272>,  <32.291943, 46.405426, 45.975471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199165, 46.057808, 46.150272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116410, 0.421225, 0.899454,
		-0.965739, 0.259492, 0.003466,
		-0.231941, -0.869042, 0.437001,
		32.129581, 45.797096, 46.281372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828327, 46.631294, 46.307289>,  <32.291943, 46.405426, 45.975471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828327, 46.631294, 46.307289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.928114, 46.292252, 46.494625>,  <31.987986, 46.088825, 46.607025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.928114, 46.292252, 46.494625>,  <31.828327, 46.631294, 46.307289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928114, 46.292252, 46.494625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083103, 0.463104, 0.882399,
		-0.964811, -0.259048, 0.045090,
		0.249465, -0.847602, 0.468336,
		32.002953, 46.037971, 46.635124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590010, 46.823803, 46.945499>,  <31.828327, 46.631294, 46.307289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590010, 46.823803, 46.945499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.799345, 46.494461, 47.033325>,  <31.924946, 46.296856, 47.086021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.799345, 46.494461, 47.033325>,  <31.590010, 46.823803, 46.945499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799345, 46.494461, 47.033325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111809, 0.321788, 0.940187,
		-0.844758, -0.467486, 0.260462,
		0.523338, -0.823352, 0.219563,
		31.956347, 46.247456, 47.099194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337408, 46.483791, 47.540535>,  <31.590010, 46.823803, 46.945499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337408, 46.483791, 47.540535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.726854, 46.395027, 47.519279>,  <31.960522, 46.341766, 47.506527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.726854, 46.395027, 47.519279>,  <31.337408, 46.483791, 47.540535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726854, 46.395027, 47.519279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149652, 0.445153, 0.882861,
		-0.172263, -0.867521, 0.466618,
		0.973617, -0.221915, -0.053142,
		32.018940, 46.328453, 47.503338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437757, 46.376823, 48.171829>,  <31.337408, 46.483791, 47.540535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437757, 46.376823, 48.171829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.804108, 46.422787, 48.017963>,  <32.023918, 46.450367, 47.925644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.804108, 46.422787, 48.017963>,  <31.437757, 46.376823, 48.171829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804108, 46.422787, 48.017963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348662, 0.247317, 0.904029,
		0.199015, -0.962097, 0.186448,
		0.915875, 0.114908, -0.384667,
		32.078869, 46.457260, 47.902565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.435211, 37.030277, 34.669735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710770, 37.311646, 34.739719>,  <34.876106, 37.480469, 34.781712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710770, 37.311646, 34.739719>,  <34.435211, 37.030277, 34.669735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710770, 37.311646, 34.739719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550053, 0.350104, 0.758201,
		0.472082, -0.618563, 0.628107,
		0.688898, 0.703425, 0.174965,
		34.917439, 37.522675, 34.792210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647038, 37.063072, 35.389454>,  <34.435211, 37.030277, 34.669735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647038, 37.063072, 35.389454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722221, 37.419044, 35.223228>,  <34.767334, 37.632626, 35.123493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722221, 37.419044, 35.223228>,  <34.647038, 37.063072, 35.389454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722221, 37.419044, 35.223228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639657, 0.431993, 0.635784,
		0.745325, 0.146316, 0.650448,
		0.187963, 0.889929, -0.415567,
		34.778610, 37.686024, 35.098557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572525, 37.404068, 35.928223>,  <34.647038, 37.063072, 35.389454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572525, 37.404068, 35.928223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577278, 37.697071, 35.655960>,  <34.580128, 37.872871, 35.492603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577278, 37.697071, 35.655960>,  <34.572525, 37.404068, 35.928223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577278, 37.697071, 35.655960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362087, 0.637661, 0.679913,
		0.932069, 0.238380, 0.272805,
		0.011879, 0.732505, -0.680658,
		34.580841, 37.916824, 35.451763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892025, 38.040009, 36.186607>,  <34.572525, 37.404068, 35.928223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892025, 38.040009, 36.186607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656799, 38.191887, 35.900948>,  <34.515663, 38.283012, 35.729553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656799, 38.191887, 35.900948>,  <34.892025, 38.040009, 36.186607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656799, 38.191887, 35.900948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416153, 0.615076, 0.669700,
		0.693536, 0.691025, -0.203697,
		-0.588069, 0.379692, -0.714149,
		34.480377, 38.305794, 35.686703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852470, 38.714855, 36.288975>,  <34.892025, 38.040009, 36.186607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852470, 38.714855, 36.288975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529682, 38.655750, 36.060249>,  <34.336010, 38.620289, 35.923012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529682, 38.655750, 36.060249>,  <34.852470, 38.714855, 36.288975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529682, 38.655750, 36.060249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539527, 0.578278, 0.611969,
		0.240243, 0.802347, -0.546372,
		-0.806966, -0.147761, -0.571815,
		34.287594, 38.611423, 35.888706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567284, 39.378616, 36.218277>,  <34.852470, 38.714855, 36.288975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567284, 39.378616, 36.218277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268723, 39.124657, 36.138485>,  <34.089588, 38.972282, 36.090611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268723, 39.124657, 36.138485>,  <34.567284, 39.378616, 36.218277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268723, 39.124657, 36.138485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574668, 0.463719, 0.674331,
		-0.335629, 0.617954, -0.710975,
		-0.746398, -0.634899, -0.199481,
		34.044804, 38.934185, 36.078640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943089, 39.789234, 36.218987>,  <34.567284, 39.378616, 36.218277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943089, 39.789234, 36.218987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770870, 39.428425, 36.231537>,  <33.667542, 39.211941, 36.239067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770870, 39.428425, 36.231537>,  <33.943089, 39.789234, 36.218987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770870, 39.428425, 36.231537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825079, 0.407433, 0.391463,
		-0.365893, 0.142654, -0.919659,
		-0.430543, -0.902024, 0.031376,
		33.641708, 39.157818, 36.240948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252060, 39.868401, 35.923470>,  <33.943089, 39.789234, 36.218987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252060, 39.868401, 35.923470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251125, 39.558796, 36.176735>,  <33.250565, 39.373032, 36.328693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251125, 39.558796, 36.176735>,  <33.252060, 39.868401, 35.923470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251125, 39.558796, 36.176735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703344, 0.451360, 0.549164,
		-0.710846, -0.444048, -0.545454,
		-0.002341, -0.774013, 0.633165,
		33.250423, 39.326591, 36.366684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573372, 39.855343, 36.081421>,  <33.252060, 39.868401, 35.923470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573372, 39.855343, 36.081421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750847, 39.636879, 36.365631>,  <32.857330, 39.505798, 36.536156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750847, 39.636879, 36.365631>,  <32.573372, 39.855343, 36.081421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750847, 39.636879, 36.365631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599849, 0.408054, 0.688239,
		-0.665824, -0.731571, -0.146567,
		0.443688, -0.546164, 0.710525,
		32.883953, 39.473030, 36.578789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027191, 39.516491, 36.440029>,  <32.573372, 39.855343, 36.081421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027191, 39.516491, 36.440029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313110, 39.483109, 36.717762>,  <32.484661, 39.463078, 36.884403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313110, 39.483109, 36.717762>,  <32.027191, 39.516491, 36.440029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313110, 39.483109, 36.717762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634432, 0.340303, 0.694038,
		-0.294206, -0.936605, 0.190300,
		0.714799, -0.083458, 0.694332,
		32.527550, 39.458073, 36.926060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590475, 39.385277, 37.096558>,  <32.027191, 39.516491, 36.440029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590475, 39.385277, 37.096558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956551, 39.532768, 37.161633>,  <32.176197, 39.621265, 37.200676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956551, 39.532768, 37.161633>,  <31.590475, 39.385277, 37.096558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956551, 39.532768, 37.161633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325352, 0.437714, 0.838184,
		0.237855, -0.820027, 0.520559,
		0.915189, 0.368731, 0.162685,
		32.231106, 39.643387, 37.210438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801306, 39.213791, 37.738098>,  <31.590475, 39.385277, 37.096558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801306, 39.213791, 37.738098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001049, 39.547924, 37.646133>,  <32.120895, 39.748405, 37.590954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001049, 39.547924, 37.646133>,  <31.801306, 39.213791, 37.738098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001049, 39.547924, 37.646133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400567, 0.457898, 0.793647,
		0.768236, -0.304219, 0.563262,
		0.499359, 0.835332, -0.229913,
		32.150856, 39.798523, 37.577160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263271, 38.851402, 38.132999>,  <31.801306, 39.213791, 37.738098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263271, 38.851402, 38.132999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002457, 38.605862, 38.311005>,  <31.845966, 38.458538, 38.417809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002457, 38.605862, 38.311005>,  <32.263271, 38.851402, 38.132999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002457, 38.605862, 38.311005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119359, -0.662732, -0.739283,
		0.748730, -0.428926, 0.505396,
		-0.652040, -0.613847, 0.445011,
		31.806845, 38.421707, 38.444508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490528, 38.296371, 37.844852>,  <32.263271, 38.851402, 38.132999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490528, 38.296371, 37.844852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144871, 38.145893, 37.978561>,  <31.937477, 38.055607, 38.058788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144871, 38.145893, 37.978561>,  <32.490528, 38.296371, 37.844852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144871, 38.145893, 37.978561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011946, -0.679371, -0.733698,
		0.503109, -0.630025, 0.591566,
		-0.864140, -0.376197, 0.334271,
		31.885628, 38.033035, 38.078842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535011, 37.641506, 37.856953>,  <32.490528, 38.296371, 37.844852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535011, 37.641506, 37.856953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141106, 37.706951, 37.833366>,  <31.904762, 37.746216, 37.819214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141106, 37.706951, 37.833366>,  <32.535011, 37.641506, 37.856953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141106, 37.706951, 37.833366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080465, -0.729230, -0.679522,
		-0.154178, -0.664421, 0.731282,
		-0.984761, 0.163610, -0.058969,
		31.845676, 37.756035, 37.815678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209896, 36.997841, 37.908424>,  <32.535011, 37.641506, 37.856953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209896, 36.997841, 37.908424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942318, 37.237633, 37.732632>,  <31.781771, 37.381508, 37.627155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942318, 37.237633, 37.732632>,  <32.209896, 36.997841, 37.908424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942318, 37.237633, 37.732632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307180, -0.761347, -0.570956,
		-0.676867, -0.246942, 0.693448,
		-0.668947, 0.599475, -0.439475,
		31.741634, 37.417477, 37.600788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625957, 36.582851, 37.832615>,  <32.209896, 36.997841, 37.908424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625957, 36.582851, 37.832615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591114, 36.871380, 37.557777>,  <31.570208, 37.044498, 37.392876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591114, 36.871380, 37.557777>,  <31.625957, 36.582851, 37.832615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591114, 36.871380, 37.557777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394625, -0.658281, -0.641045,
		-0.914704, 0.215306, 0.341994,
		-0.087107, 0.721325, -0.687097,
		31.564981, 37.087776, 37.351646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968040, 36.541172, 37.575958>,  <31.625957, 36.582851, 37.832615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968040, 36.541172, 37.575958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197805, 36.717354, 37.299973>,  <31.335665, 36.823063, 37.134380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197805, 36.717354, 37.299973>,  <30.968040, 36.541172, 37.575958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197805, 36.717354, 37.299973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291189, -0.677806, -0.675121,
		-0.765024, 0.588706, -0.261083,
		0.574411, 0.440459, -0.689962,
		31.370129, 36.849491, 37.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473715, 36.638065, 36.969471>,  <30.968040, 36.541172, 37.575958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473715, 36.638065, 36.969471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852270, 36.639744, 36.840271>,  <31.079403, 36.640751, 36.762753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852270, 36.639744, 36.840271>,  <30.473715, 36.638065, 36.969471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852270, 36.639744, 36.840271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273601, -0.521145, -0.808425,
		-0.171725, 0.853458, -0.492056,
		0.946389, 0.004200, -0.323001,
		31.136187, 36.641003, 36.743370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317123, 36.700642, 36.320618>,  <30.473715, 36.638065, 36.969471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317123, 36.700642, 36.320618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686409, 36.557571, 36.376827>,  <30.907980, 36.471729, 36.410553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686409, 36.557571, 36.376827>,  <30.317123, 36.700642, 36.320618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686409, 36.557571, 36.376827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146437, -0.665524, -0.731870,
		0.355296, 0.655093, -0.666797,
		0.923212, -0.357674, 0.140528,
		30.963373, 36.450268, 36.418987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619862, 36.558468, 35.650181>,  <30.317123, 36.700642, 36.320618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619862, 36.558468, 35.650181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868715, 36.348537, 35.882561>,  <31.018026, 36.222580, 36.021988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868715, 36.348537, 35.882561>,  <30.619862, 36.558468, 35.650181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868715, 36.348537, 35.882561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062107, -0.706617, -0.704865,
		0.780445, 0.474601, -0.407014,
		0.622133, -0.524830, 0.580951,
		31.055355, 36.191090, 36.056847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193533, 36.440086, 35.232986>,  <30.619862, 36.558468, 35.650181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193533, 36.440086, 35.232986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195269, 36.151745, 35.510216>,  <31.196310, 35.978741, 35.676552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195269, 36.151745, 35.510216>,  <31.193533, 36.440086, 35.232986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195269, 36.151745, 35.510216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224032, -0.674763, -0.703210,
		0.974572, 0.158324, 0.158565,
		0.004341, -0.720853, 0.693075,
		31.196571, 35.935490, 35.718140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611242, 35.814014, 34.883461>,  <31.193533, 36.440086, 35.232986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611242, 35.814014, 34.883461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549444, 35.641041, 35.238792>,  <31.512365, 35.537258, 35.451992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549444, 35.641041, 35.238792>,  <31.611242, 35.814014, 34.883461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549444, 35.641041, 35.238792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011230, -0.898302, -0.439236,
		0.987930, -0.077835, 0.133926,
		-0.154494, -0.432430, 0.888333,
		31.503096, 35.511311, 35.505291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117710, 35.240925, 34.987545>,  <31.611242, 35.814014, 34.883461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117710, 35.240925, 34.987545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795546, 35.150105, 35.206547>,  <31.602247, 35.095612, 35.337948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795546, 35.150105, 35.206547>,  <32.117710, 35.240925, 34.987545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795546, 35.150105, 35.206547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074654, -0.877506, -0.473720,
		0.587995, -0.422413, 0.689804,
		-0.805412, -0.227048, 0.547503,
		31.553923, 35.081989, 35.370796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229668, 34.576046, 35.322693>,  <32.117710, 35.240925, 34.987545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229668, 34.576046, 35.322693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833624, 34.622726, 35.291534>,  <31.595999, 34.650734, 35.272839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833624, 34.622726, 35.291534>,  <32.229668, 34.576046, 35.322693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833624, 34.622726, 35.291534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083835, -0.937231, -0.338481,
		-0.112505, -0.328603, 0.937743,
		-0.990108, 0.116697, -0.077895,
		31.536591, 34.657734, 35.268166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763588, 33.973591, 35.586285>,  <32.229668, 34.576046, 35.322693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763588, 33.973591, 35.586285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609240, 34.186588, 35.284943>,  <31.516630, 34.314388, 35.104137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609240, 34.186588, 35.284943>,  <31.763588, 33.973591, 35.586285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609240, 34.186588, 35.284943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001560, -0.816224, -0.577733,
		-0.922551, -0.224107, 0.314128,
		-0.385873, 0.532498, -0.753358,
		31.493477, 34.346336, 35.058937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154686, 33.831245, 36.225498>,  <31.763588, 33.973591, 35.586285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154686, 33.831245, 36.225498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824692, 33.616226, 36.155697>,  <31.626696, 33.487217, 36.113815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824692, 33.616226, 36.155697>,  <32.154686, 33.831245, 36.225498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824692, 33.616226, 36.155697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313964, 0.692647, -0.649359,
		0.469925, -0.480923, -0.740191,
		-0.824983, -0.537543, -0.174499,
		31.577196, 33.454964, 36.103348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509701, 34.515858, 36.465111>,  <32.154686, 33.831245, 36.225498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509701, 34.515858, 36.465111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821587, 34.267223, 36.495277>,  <33.008717, 34.118042, 36.513378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821587, 34.267223, 36.495277>,  <32.509701, 34.515858, 36.465111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821587, 34.267223, 36.495277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093946, 0.235217, 0.967392,
		-0.619053, -0.747200, 0.241796,
		0.779710, -0.621583, 0.075415,
		33.055500, 34.080750, 36.517902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394966, 33.975548, 36.893101>,  <32.509701, 34.515858, 36.465111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394966, 33.975548, 36.893101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789612, 34.040329, 36.885509>,  <33.026398, 34.079197, 36.880955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789612, 34.040329, 36.885509>,  <32.394966, 33.975548, 36.893101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789612, 34.040329, 36.885509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011619, 0.185895, 0.982501,
		0.162642, -0.969131, 0.185289,
		0.986617, 0.161949, -0.018974,
		33.085598, 34.088917, 36.879818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745026, 33.569775, 37.448322>,  <32.394966, 33.975548, 36.893101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745026, 33.569775, 37.448322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983833, 33.876907, 37.355362>,  <33.127117, 34.061188, 37.299587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983833, 33.876907, 37.355362>,  <32.745026, 33.569775, 37.448322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983833, 33.876907, 37.355362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007606, 0.295094, 0.955438,
		0.802191, -0.568647, 0.182017,
		0.597019, 0.767828, -0.232397,
		33.162937, 34.107254, 37.285645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468971, 33.469589, 37.846485>,  <32.745026, 33.569775, 37.448322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468971, 33.469589, 37.846485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391907, 33.849415, 37.747520>,  <33.345669, 34.077309, 37.688141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391907, 33.849415, 37.747520>,  <33.468971, 33.469589, 37.846485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391907, 33.849415, 37.747520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172128, 0.280933, 0.944166,
		0.966051, 0.139313, -0.217570,
		-0.192657, 0.949562, -0.247416,
		33.334110, 34.134285, 37.673294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909210, 33.909023, 38.161823>,  <33.468971, 33.469589, 37.846485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909210, 33.909023, 38.161823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653015, 34.200512, 38.064877>,  <33.499298, 34.375404, 38.006710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653015, 34.200512, 38.064877>,  <33.909210, 33.909023, 38.161823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653015, 34.200512, 38.064877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256480, 0.500443, 0.826907,
		0.723875, 0.467461, -0.507430,
		-0.640486, 0.728723, -0.242364,
		33.460869, 34.419128, 37.992168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156113, 34.491398, 38.454433>,  <33.909210, 33.909023, 38.161823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156113, 34.491398, 38.454433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781254, 34.603725, 38.371578>,  <33.556339, 34.671120, 38.321865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781254, 34.603725, 38.371578>,  <34.156113, 34.491398, 38.454433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781254, 34.603725, 38.371578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048733, 0.482456, 0.874563,
		0.345524, 0.829686, -0.438446,
		-0.937144, 0.280816, -0.207133,
		33.500111, 34.687969, 38.309437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122238, 35.263969, 38.557507>,  <34.156113, 34.491398, 38.454433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122238, 35.263969, 38.557507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751686, 35.121231, 38.605633>,  <33.529354, 35.035587, 38.634510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751686, 35.121231, 38.605633>,  <34.122238, 35.263969, 38.557507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751686, 35.121231, 38.605633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096476, 0.533721, 0.840140,
		-0.364013, 0.766684, -0.528857,
		-0.926384, -0.356844, 0.120315,
		33.473770, 35.014179, 38.641727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728291, 35.843655, 38.729462>,  <34.122238, 35.263969, 38.557507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728291, 35.843655, 38.729462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494740, 35.543423, 38.853218>,  <33.354610, 35.363285, 38.927471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494740, 35.543423, 38.853218>,  <33.728291, 35.843655, 38.729462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494740, 35.543423, 38.853218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247127, 0.527333, 0.812926,
		-0.773316, 0.398188, -0.493385,
		-0.583875, -0.750577, 0.309392,
		33.319576, 35.318249, 38.946037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170143, 36.207668, 38.900593>,  <33.728291, 35.843655, 38.729462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170143, 36.207668, 38.900593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135426, 35.858673, 39.092937>,  <33.114594, 35.649277, 39.208344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135426, 35.858673, 39.092937>,  <33.170143, 36.207668, 38.900593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135426, 35.858673, 39.092937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150163, 0.488626, 0.859474,
		-0.984844, 0.002392, -0.173427,
		-0.086797, -0.872490, 0.480861,
		33.109386, 35.596928, 39.237194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587738, 36.305786, 39.365192>,  <33.170143, 36.207668, 38.900593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587738, 36.305786, 39.365192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766701, 35.982479, 39.518303>,  <32.874081, 35.788494, 39.610168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766701, 35.982479, 39.518303>,  <32.587738, 36.305786, 39.365192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766701, 35.982479, 39.518303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024555, 0.416744, 0.908692,
		-0.893991, -0.415959, 0.166608,
		0.447411, -0.808272, 0.382779,
		32.900925, 35.739998, 39.633137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328152, 36.239651, 40.029720>,  <32.587738, 36.305786, 39.365192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328152, 36.239651, 40.029720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649410, 36.004444, 40.068062>,  <32.842167, 35.863319, 40.091068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649410, 36.004444, 40.068062>,  <32.328152, 36.239651, 40.029720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649410, 36.004444, 40.068062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085076, 0.272439, 0.958404,
		-0.589671, -0.761587, 0.268836,
		0.803150, -0.588015, 0.095857,
		32.890354, 35.828041, 40.096817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194847, 35.761398, 40.589073>,  <32.328152, 36.239651, 40.029720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194847, 35.761398, 40.589073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588848, 35.812855, 40.543095>,  <32.825249, 35.843727, 40.515507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588848, 35.812855, 40.543095>,  <32.194847, 35.761398, 40.589073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588848, 35.812855, 40.543095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065633, 0.336750, 0.939304,
		0.159541, -0.932765, 0.323258,
		0.985007, 0.128642, -0.114946,
		32.884350, 35.851448, 40.508610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449032, 35.582718, 41.167679>,  <32.194847, 35.761398, 40.589073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449032, 35.582718, 41.167679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789673, 35.750546, 41.041992>,  <32.994057, 35.851242, 40.966579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789673, 35.750546, 41.041992>,  <32.449032, 35.582718, 41.167679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789673, 35.750546, 41.041992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200655, 0.292859, 0.934864,
		0.484264, -0.859182, 0.165211,
		0.851602, 0.419570, -0.314220,
		33.045155, 35.876415, 40.947727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039207, 35.313919, 41.586277>,  <32.449032, 35.582718, 41.167679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039207, 35.313919, 41.586277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123779, 35.672718, 41.431000>,  <33.174522, 35.887997, 41.337833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123779, 35.672718, 41.431000>,  <33.039207, 35.313919, 41.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123779, 35.672718, 41.431000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231078, 0.340036, 0.911580,
		0.949685, -0.282435, -0.135383,
		0.211427, 0.896998, -0.388192,
		33.187206, 35.941818, 41.314541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661430, 35.658760, 41.990803>,  <33.039207, 35.313919, 41.586277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661430, 35.658760, 41.990803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481709, 35.966751, 41.809582>,  <33.373875, 36.151546, 41.700848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481709, 35.966751, 41.809582>,  <33.661430, 35.658760, 41.990803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481709, 35.966751, 41.809582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051202, 0.528486, 0.847396,
		0.891908, 0.357545, -0.276878,
		-0.449308, 0.769977, -0.453054,
		33.346916, 36.197742, 41.673664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125713, 36.116684, 42.079758>,  <33.661430, 35.658760, 41.990803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125713, 36.116684, 42.079758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767735, 36.279602, 42.006893>,  <33.552948, 36.377354, 41.963173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767735, 36.279602, 42.006893>,  <34.125713, 36.116684, 42.079758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767735, 36.279602, 42.006893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042627, 0.484465, 0.873772,
		0.444131, 0.774214, -0.450932,
		-0.894947, 0.407291, -0.182163,
		33.499252, 36.401791, 41.952244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228497, 36.718670, 42.359730>,  <34.125713, 36.116684, 42.079758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228497, 36.718670, 42.359730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832680, 36.681137, 42.315922>,  <33.595188, 36.658619, 42.289635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832680, 36.681137, 42.315922>,  <34.228497, 36.718670, 42.359730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832680, 36.681137, 42.315922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143801, 0.584097, 0.798844,
		-0.010982, 0.806243, -0.591483,
		-0.989546, -0.093829, -0.109523,
		33.535816, 36.652988, 42.283066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051003, 37.416145, 42.413155>,  <34.228497, 36.718670, 42.359730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051003, 37.416145, 42.413155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717739, 37.207756, 42.487381>,  <33.517780, 37.082722, 42.531918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717739, 37.207756, 42.487381>,  <34.051003, 37.416145, 42.413155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717739, 37.207756, 42.487381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180262, 0.573038, 0.799458,
		-0.522831, 0.632625, -0.571343,
		-0.833159, -0.520973, 0.185564,
		33.467793, 37.051464, 42.543049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495087, 37.952660, 42.451004>,  <34.051003, 37.416145, 42.413155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495087, 37.952660, 42.451004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306141, 37.651413, 42.634171>,  <33.192772, 37.470665, 42.744072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306141, 37.651413, 42.634171>,  <33.495087, 37.952660, 42.451004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306141, 37.651413, 42.634171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396748, 0.645600, 0.652527,
		-0.787060, 0.126554, -0.603756,
		-0.472364, -0.753117, 0.457916,
		33.164433, 37.425476, 42.771545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858521, 38.227425, 42.574219>,  <33.495087, 37.952660, 42.451004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858521, 38.227425, 42.574219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897194, 37.923767, 42.831699>,  <32.920399, 37.741573, 42.986187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897194, 37.923767, 42.831699>,  <32.858521, 38.227425, 42.574219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897194, 37.923767, 42.831699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207692, 0.617104, 0.758977,
		-0.973405, -0.207070, -0.098007,
		0.096681, -0.759147, 0.643699,
		32.926197, 37.696022, 43.024811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339935, 38.392048, 43.147976>,  <32.858521, 38.227425, 42.574219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339935, 38.392048, 43.147976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584984, 38.103539, 43.277252>,  <32.732014, 37.930431, 43.354820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584984, 38.103539, 43.277252>,  <32.339935, 38.392048, 43.147976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584984, 38.103539, 43.277252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178870, 0.524827, 0.832203,
		-0.769868, -0.452018, 0.450536,
		0.612625, -0.721274, 0.323195,
		32.768772, 37.887157, 43.374210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922758, 37.998230, 43.755833>,  <32.339935, 38.392048, 43.147976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922758, 37.998230, 43.755833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319862, 37.951763, 43.768074>,  <32.558125, 37.923885, 43.775417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319862, 37.951763, 43.768074>,  <31.922758, 37.998230, 43.755833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319862, 37.951763, 43.768074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026900, 0.463249, 0.885820,
		-0.117078, -0.878582, 0.463019,
		0.992759, -0.116165, 0.030603,
		32.617691, 37.916912, 43.777256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019535, 37.746704, 44.448124>,  <31.922758, 37.998230, 43.755833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019535, 37.746704, 44.448124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358742, 37.900341, 44.302059>,  <32.562263, 37.992523, 44.214420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358742, 37.900341, 44.302059>,  <32.019535, 37.746704, 44.448124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358742, 37.900341, 44.302059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129859, 0.517431, 0.845814,
		0.513787, -0.764697, 0.388924,
		0.848033, 0.384063, -0.365152,
		32.613148, 38.015568, 44.192509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448933, 37.625107, 44.928043>,  <32.019535, 37.746704, 44.448124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448933, 37.625107, 44.928043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626392, 37.919846, 44.723991>,  <32.732868, 38.096691, 44.601562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626392, 37.919846, 44.723991>,  <32.448933, 37.625107, 44.928043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626392, 37.919846, 44.723991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299804, 0.414393, 0.859300,
		0.844569, -0.534163, -0.037067,
		0.443646, 0.736850, -0.510128,
		32.759487, 38.140900, 44.570953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065750, 37.721294, 45.224682>,  <32.448933, 37.625107, 44.928043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065750, 37.721294, 45.224682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010399, 38.072372, 45.041157>,  <32.977188, 38.283020, 44.931042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010399, 38.072372, 45.041157>,  <33.065750, 37.721294, 45.224682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010399, 38.072372, 45.041157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326838, 0.477781, 0.815415,
		0.934896, -0.037124, -0.352976,
		-0.138374, 0.877694, -0.458809,
		32.968887, 38.335682, 44.903515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661537, 38.110680, 45.396606>,  <33.065750, 37.721294, 45.224682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661537, 38.110680, 45.396606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408627, 38.388756, 45.259827>,  <33.256882, 38.555603, 45.177757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408627, 38.388756, 45.259827>,  <33.661537, 38.110680, 45.396606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408627, 38.388756, 45.259827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353630, 0.651682, 0.671012,
		0.689328, 0.303339, -0.657884,
		-0.632275, 0.695195, -0.341953,
		33.218945, 38.597313, 45.157242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087910, 38.629002, 45.320076>,  <33.661537, 38.110680, 45.396606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087910, 38.629002, 45.320076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718922, 38.775295, 45.369518>,  <33.497528, 38.863071, 45.399181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718922, 38.775295, 45.369518>,  <34.087910, 38.629002, 45.320076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718922, 38.775295, 45.369518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303772, 0.490062, 0.817045,
		0.238251, 0.791250, -0.563170,
		-0.922474, 0.365737, 0.123602,
		33.442181, 38.885017, 45.406597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710854, 39.124165, 45.174358>,  <34.087910, 38.629002, 45.320076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710854, 39.124165, 45.174358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094017, 39.238308, 45.161835>,  <35.323914, 39.306793, 45.154320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094017, 39.238308, 45.161835>,  <34.710854, 39.124165, 45.174358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094017, 39.238308, 45.161835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083688, -0.381925, -0.920396,
		-0.274602, 0.879036, -0.389731,
		0.957909, 0.285358, -0.031313,
		35.381390, 39.323914, 45.152439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713688, 39.398270, 44.478592>,  <34.710854, 39.124165, 45.174358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713688, 39.398270, 44.478592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083275, 39.297638, 44.593822>,  <35.305027, 39.237259, 44.662960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083275, 39.297638, 44.593822>,  <34.713688, 39.398270, 44.478592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083275, 39.297638, 44.593822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093413, -0.581965, -0.807831,
		0.370884, 0.773321, -0.514217,
		0.923969, -0.251577, 0.288079,
		35.360466, 39.222164, 44.680244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088005, 39.362392, 43.911453>,  <34.713688, 39.398270, 44.478592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088005, 39.362392, 43.911453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325951, 39.150551, 44.153332>,  <35.468716, 39.023445, 44.298458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325951, 39.150551, 44.153332>,  <35.088005, 39.362392, 43.911453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325951, 39.150551, 44.153332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254155, -0.589758, -0.766545,
		0.762593, 0.609673, -0.216221,
		0.594860, -0.529608, 0.604696,
		35.504410, 38.991669, 44.334740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825825, 39.432236, 43.691795>,  <35.088005, 39.362392, 43.911453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825825, 39.432236, 43.691795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778709, 39.076946, 43.869419>,  <35.750439, 38.863773, 43.975994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778709, 39.076946, 43.869419>,  <35.825825, 39.432236, 43.691795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778709, 39.076946, 43.869419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403828, -0.451374, -0.795729,
		0.907220, 0.085597, 0.411855,
		-0.117789, -0.888220, 0.444062,
		35.743374, 38.810482, 44.002636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507374, 39.064178, 43.652710>,  <35.825825, 39.432236, 43.691795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507374, 39.064178, 43.652710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190517, 38.821083, 43.675224>,  <36.000404, 38.675228, 43.688732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190517, 38.821083, 43.675224>,  <36.507374, 39.064178, 43.652710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190517, 38.821083, 43.675224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311787, -0.482211, -0.818695,
		0.524691, -0.630975, 0.571464,
		-0.792142, -0.607737, 0.056282,
		35.952873, 38.638763, 43.692108>
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
