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
	<24.335199, 34.596348, 35.373371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275595, 34.915062, 35.139133>,  <24.239832, 35.106293, 34.998592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275595, 34.915062, 35.139133>,  <24.335199, 34.596348, 35.373371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275595, 34.915062, 35.139133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966077, -0.009012, -0.258096,
		-0.210926, -0.604189, -0.768418,
		-0.149013, 0.796790, -0.585595,
		24.230890, 35.154099, 34.963455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.407309, 34.531788, 34.657307>,  <24.335199, 34.596348, 35.373371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.407309, 34.531788, 34.657307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496967, 34.912830, 34.739571>,  <24.550762, 35.141457, 34.788929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496967, 34.912830, 34.739571>,  <24.407309, 34.531788, 34.657307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496967, 34.912830, 34.739571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887638, -0.112442, -0.446604,
		-0.402314, 0.282657, -0.870775,
		0.224148, 0.952608, 0.205660,
		24.564211, 35.198612, 34.801270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684435, 34.804699, 34.012840>,  <24.407309, 34.531788, 34.657307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684435, 34.804699, 34.012840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830175, 35.004383, 34.327301>,  <24.917620, 35.124195, 34.515976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830175, 35.004383, 34.327301>,  <24.684435, 34.804699, 34.012840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830175, 35.004383, 34.327301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917956, -0.050330, -0.393475,
		-0.156861, 0.865016, -0.476594,
		0.364350, 0.499213, 0.786152,
		24.939480, 35.154148, 34.563148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333136, 35.121407, 33.877338>,  <24.684435, 34.804699, 34.012840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333136, 35.121407, 33.877338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408764, 35.134651, 34.269901>,  <25.454140, 35.142597, 34.505440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408764, 35.134651, 34.269901>,  <25.333136, 35.121407, 33.877338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408764, 35.134651, 34.269901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981897, -0.018073, -0.188554,
		0.011494, 0.999288, -0.035931,
		0.189069, 0.033114, 0.981405,
		25.465485, 35.144585, 34.564323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908365, 35.619476, 33.997112>,  <25.333136, 35.121407, 33.877338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908365, 35.619476, 33.997112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880611, 35.360920, 34.301048>,  <25.863958, 35.205788, 34.483410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880611, 35.360920, 34.301048>,  <25.908365, 35.619476, 33.997112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880611, 35.360920, 34.301048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984702, -0.166417, -0.051649,
		0.159836, 0.744637, 0.648050,
		-0.069387, -0.646391, 0.759844,
		25.859795, 35.167004, 34.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490673, 35.768608, 34.275200>,  <25.908365, 35.619476, 33.997112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490673, 35.768608, 34.275200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410048, 35.390842, 34.379093>,  <26.361671, 35.164185, 34.441429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410048, 35.390842, 34.379093>,  <26.490673, 35.768608, 34.275200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410048, 35.390842, 34.379093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937670, -0.262697, -0.227518,
		0.283100, 0.197680, 0.938497,
		-0.201565, -0.944411, 0.259729,
		26.349579, 35.107517, 34.457012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941029, 36.148937, 33.936558>,  <26.490673, 35.768608, 34.275200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941029, 36.148937, 33.936558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284935, 36.327995, 33.838242>,  <27.491280, 36.435432, 33.779251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284935, 36.327995, 33.838242>,  <26.941029, 36.148937, 33.936558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284935, 36.327995, 33.838242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504904, 0.672867, -0.540668,
		-0.076645, 0.588948, 0.804528,
		0.859766, 0.447649, -0.245791,
		27.542866, 36.462292, 33.764503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923277, 36.980057, 33.943504>,  <26.941029, 36.148937, 33.936558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923277, 36.980057, 33.943504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204082, 36.867424, 33.681850>,  <27.372566, 36.799847, 33.524857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204082, 36.867424, 33.681850>,  <26.923277, 36.980057, 33.943504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204082, 36.867424, 33.681850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419435, 0.578839, -0.699300,
		0.575547, 0.765284, 0.288248,
		0.702012, -0.281579, -0.654135,
		27.414686, 36.782951, 33.485611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971151, 37.556980, 33.544868>,  <26.923277, 36.980057, 33.943504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971151, 37.556980, 33.544868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166553, 37.287140, 33.323502>,  <27.283794, 37.125237, 33.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166553, 37.287140, 33.323502>,  <26.971151, 37.556980, 33.544868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166553, 37.287140, 33.323502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275635, 0.482464, -0.831417,
		0.827882, 0.558692, 0.049741,
		0.488504, -0.674605, -0.553419,
		27.313105, 37.084759, 33.157475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361893, 37.935719, 33.041916>,  <26.971151, 37.556980, 33.544868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361893, 37.935719, 33.041916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322269, 37.575310, 32.872993>,  <27.298496, 37.359062, 32.771641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322269, 37.575310, 32.872993>,  <27.361893, 37.935719, 33.041916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322269, 37.575310, 32.872993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202390, 0.433765, -0.878001,
		0.974282, -0.001503, -0.225327,
		-0.099058, -0.901025, -0.422305,
		27.292551, 37.305004, 32.746304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674379, 37.999146, 32.331833>,  <27.361893, 37.935719, 33.041916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674379, 37.999146, 32.331833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428898, 37.684147, 32.309155>,  <27.281609, 37.495148, 32.295547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428898, 37.684147, 32.309155>,  <27.674379, 37.999146, 32.331833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428898, 37.684147, 32.309155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323109, 0.316028, -0.892035,
		0.720394, -0.529126, -0.448395,
		-0.613704, -0.787497, -0.056700,
		27.244787, 37.447899, 32.292145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801668, 37.638435, 31.778229>,  <27.674379, 37.999146, 32.331833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801668, 37.638435, 31.778229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418398, 37.545525, 31.845098>,  <27.188437, 37.489780, 31.885221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418398, 37.545525, 31.845098>,  <27.801668, 37.638435, 31.778229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418398, 37.545525, 31.845098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247880, 0.381672, -0.890439,
		0.143018, -0.894637, -0.423285,
		-0.958176, -0.232272, 0.167177,
		27.130945, 37.475842, 31.895252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533100, 37.354443, 31.182734>,  <27.801668, 37.638435, 31.778229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533100, 37.354443, 31.182734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197115, 37.447762, 31.378708>,  <26.995523, 37.503754, 31.496292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197115, 37.447762, 31.378708>,  <27.533100, 37.354443, 31.182734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197115, 37.447762, 31.378708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387862, 0.373323, -0.842730,
		-0.379507, -0.897889, -0.223092,
		-0.839963, 0.233293, 0.489935,
		26.945126, 37.517750, 31.525688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948380, 37.177582, 30.686125>,  <27.533100, 37.354443, 31.182734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948380, 37.177582, 30.686125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816772, 37.408932, 30.984716>,  <26.737808, 37.547741, 31.163872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816772, 37.408932, 30.984716>,  <26.948380, 37.177582, 30.686125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816772, 37.408932, 30.984716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432557, 0.610379, -0.663574,
		-0.839429, -0.541223, 0.049354,
		-0.329017, 0.578372, 0.746480,
		26.718067, 37.582443, 31.208660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498299, 37.437820, 30.368019>,  <26.948380, 37.177582, 30.686125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498299, 37.437820, 30.368019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476770, 37.701923, 30.667664>,  <26.463854, 37.860386, 30.847450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476770, 37.701923, 30.667664>,  <26.498299, 37.437820, 30.368019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476770, 37.701923, 30.667664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527836, 0.618010, -0.582627,
		-0.847640, -0.426764, 0.315245,
		-0.053819, 0.660255, 0.749111,
		26.460625, 37.900002, 30.892397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764238, 37.642841, 30.412741>,  <26.498299, 37.437820, 30.368019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764238, 37.642841, 30.412741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997770, 37.918995, 30.583626>,  <26.137890, 38.084686, 30.686157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997770, 37.918995, 30.583626>,  <25.764238, 37.642841, 30.412741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997770, 37.918995, 30.583626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268504, 0.660786, -0.700905,
		-0.766190, 0.294501, 0.571158,
		0.583831, 0.690385, 0.427213,
		26.172920, 38.126110, 30.711790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.371004, 38.274490, 30.129396>,  <25.764238, 37.642841, 30.412741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.371004, 38.274490, 30.129396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716984, 38.408287, 30.279053>,  <25.924572, 38.488564, 30.368847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716984, 38.408287, 30.279053>,  <25.371004, 38.274490, 30.129396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716984, 38.408287, 30.279053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190043, 0.471684, -0.861045,
		-0.464488, 0.815861, 0.344415,
		0.864948, 0.334491, 0.374140,
		25.976469, 38.508633, 30.391294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312651, 38.920879, 30.023399>,  <25.371004, 38.274490, 30.129396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312651, 38.920879, 30.023399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704695, 38.851009, 30.061085>,  <25.939920, 38.809090, 30.083696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704695, 38.851009, 30.061085>,  <25.312651, 38.920879, 30.023399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704695, 38.851009, 30.061085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167382, 0.472472, -0.865305,
		0.106630, 0.863864, 0.492311,
		0.980109, -0.174672, 0.094216,
		25.998728, 38.798607, 30.089350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550333, 39.504650, 29.889837>,  <25.312651, 38.920879, 30.023399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550333, 39.504650, 29.889837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842680, 39.238827, 29.827625>,  <26.018087, 39.079330, 29.790298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842680, 39.238827, 29.827625>,  <25.550333, 39.504650, 29.889837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842680, 39.238827, 29.827625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090183, 0.319911, -0.943146,
		0.676536, 0.675288, 0.293744,
		0.730867, -0.664563, -0.155532,
		26.061939, 39.039459, 29.780966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134703, 39.906120, 29.716745>,  <25.550333, 39.504650, 29.889837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134703, 39.906120, 29.716745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191881, 39.534462, 29.580359>,  <26.226189, 39.311466, 29.498526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191881, 39.534462, 29.580359>,  <26.134703, 39.906120, 29.716745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191881, 39.534462, 29.580359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292222, 0.368771, -0.882391,
		0.945607, 0.026498, 0.324232,
		0.142949, -0.929143, -0.340969,
		26.234766, 39.255718, 29.478067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839243, 39.837154, 29.429539>,  <26.134703, 39.906120, 29.716745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839243, 39.837154, 29.429539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613811, 39.559795, 29.249947>,  <26.478554, 39.393379, 29.142191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613811, 39.559795, 29.249947>,  <26.839243, 39.837154, 29.429539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613811, 39.559795, 29.249947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142601, 0.453692, -0.879675,
		0.813662, -0.559789, -0.156811,
		-0.563576, -0.693397, -0.448979,
		26.444738, 39.351776, 29.115253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236137, 39.764614, 28.881983>,  <26.839243, 39.837154, 29.429539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236137, 39.764614, 28.881983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886618, 39.606968, 28.768040>,  <26.676905, 39.512379, 28.699675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886618, 39.606968, 28.768040>,  <27.236137, 39.764614, 28.881983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886618, 39.606968, 28.768040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040665, 0.524511, -0.850432,
		0.484580, -0.754692, -0.442292,
		-0.873801, -0.394116, -0.284857,
		26.624477, 39.488731, 28.682583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500694, 39.505562, 28.280912>,  <27.236137, 39.764614, 28.881983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500694, 39.505562, 28.280912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101160, 39.501522, 28.262030>,  <26.861441, 39.499096, 28.250700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101160, 39.501522, 28.262030>,  <27.500694, 39.505562, 28.280912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101160, 39.501522, 28.262030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040795, 0.346185, -0.937279,
		0.025809, -0.938112, -0.345369,
		-0.998834, -0.010101, -0.047205,
		26.801510, 39.498493, 28.247868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275726, 39.098701, 27.583469>,  <27.500694, 39.505562, 28.280912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275726, 39.098701, 27.583469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011538, 39.358936, 27.733408>,  <26.853025, 39.515079, 27.823372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011538, 39.358936, 27.733408>,  <27.275726, 39.098701, 27.583469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011538, 39.358936, 27.733408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173862, 0.353147, -0.919271,
		-0.730446, -0.672323, -0.120130,
		-0.660470, 0.650591, 0.374846,
		26.813396, 39.554115, 27.845861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791367, 39.016148, 27.096785>,  <27.275726, 39.098701, 27.583469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791367, 39.016148, 27.096785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744072, 39.383438, 27.247982>,  <26.715694, 39.603813, 27.338701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744072, 39.383438, 27.247982>,  <26.791367, 39.016148, 27.096785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744072, 39.383438, 27.247982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171134, 0.356127, -0.918633,
		-0.978127, -0.173304, 0.115032,
		-0.118237, 0.918226, 0.377996,
		26.708601, 39.658905, 27.361382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289919, 39.200798, 26.647562>,  <26.791367, 39.016148, 27.096785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289919, 39.200798, 26.647562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416479, 39.530666, 26.835094>,  <26.492416, 39.728588, 26.947613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416479, 39.530666, 26.835094>,  <26.289919, 39.200798, 26.647562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416479, 39.530666, 26.835094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040909, 0.505621, -0.861785,
		-0.947742, 0.253492, 0.193716,
		0.316403, 0.824675, 0.468829,
		26.511400, 39.778069, 26.975742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655542, 39.615913, 26.776743>,  <26.289919, 39.200798, 26.647562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655542, 39.615913, 26.776743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001890, 39.809273, 26.725204>,  <26.209698, 39.925289, 26.694281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001890, 39.809273, 26.725204>,  <25.655542, 39.615913, 26.776743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001890, 39.809273, 26.725204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267198, 0.229124, -0.936006,
		-0.422939, 0.844886, 0.327553,
		0.865868, 0.483395, -0.128846,
		26.261650, 39.954292, 26.686550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546373, 40.125881, 26.289127>,  <25.655542, 39.615913, 26.776743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546373, 40.125881, 26.289127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939613, 40.059452, 26.258322>,  <26.175558, 40.019596, 26.239838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939613, 40.059452, 26.258322>,  <25.546373, 40.125881, 26.289127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939613, 40.059452, 26.258322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056503, 0.124886, -0.990561,
		0.174123, 0.978173, 0.113392,
		0.983102, -0.166072, -0.077015,
		26.234545, 40.009632, 26.235218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783571, 40.556602, 25.832998>,  <25.546373, 40.125881, 26.289127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783571, 40.556602, 25.832998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019501, 40.233673, 25.825665>,  <26.161058, 40.039917, 25.821264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019501, 40.233673, 25.825665>,  <25.783571, 40.556602, 25.832998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019501, 40.233673, 25.825665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343320, -0.230149, -0.910584,
		0.730917, 0.543377, -0.412918,
		0.589823, -0.807325, -0.018332,
		26.196447, 39.991474, 25.820166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237196, 40.506134, 25.181446>,  <25.783571, 40.556602, 25.832998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237196, 40.506134, 25.181446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118845, 40.144836, 25.305777>,  <26.047834, 39.928059, 25.380375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118845, 40.144836, 25.305777>,  <26.237196, 40.506134, 25.181446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118845, 40.144836, 25.305777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323122, -0.211577, -0.922403,
		0.898915, -0.373354, -0.229255,
		-0.295878, -0.903240, 0.310829,
		26.030081, 39.873863, 25.399025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569582, 40.000549, 24.785774>,  <26.237196, 40.506134, 25.181446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569582, 40.000549, 24.785774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195562, 39.948441, 24.917662>,  <25.971151, 39.917175, 24.996794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195562, 39.948441, 24.917662>,  <26.569582, 40.000549, 24.785774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195562, 39.948441, 24.917662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316924, -0.109662, -0.942090,
		0.158891, -0.985394, 0.061251,
		-0.935047, -0.130278, 0.329720,
		25.915049, 39.909359, 25.016577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243696, 40.309284, 24.810844>,  <26.569582, 40.000549, 24.785774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243696, 40.309284, 24.810844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123363, 40.592289, 24.555056>,  <27.051163, 40.762093, 24.401583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123363, 40.592289, 24.555056>,  <27.243696, 40.309284, 24.810844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123363, 40.592289, 24.555056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935490, -0.088599, 0.342064,
		0.185358, 0.701126, 0.688524,
		-0.300833, 0.707512, -0.639474,
		27.033113, 40.804543, 24.363213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169298, 39.783600, 25.315201>,  <27.243696, 40.309284, 24.810844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169298, 39.783600, 25.315201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858772, 39.538330, 25.256758>,  <26.672457, 39.391167, 25.221691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858772, 39.538330, 25.256758>,  <27.169298, 39.783600, 25.315201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858772, 39.538330, 25.256758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260132, 0.522780, -0.811808,
		0.574169, -0.592209, -0.565348,
		-0.776313, -0.613180, -0.146112,
		26.625877, 39.354378, 25.212925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900654, 39.196068, 24.751522>,  <27.169298, 39.783600, 25.315201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900654, 39.196068, 24.751522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176567, 38.975033, 24.564400>,  <27.342115, 38.842411, 24.452126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176567, 38.975033, 24.564400>,  <26.900654, 39.196068, 24.751522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176567, 38.975033, 24.564400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452650, -0.175142, 0.874319,
		-0.565074, -0.814842, 0.129321,
		0.689782, -0.552592, -0.467807,
		27.383501, 38.809254, 24.424057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037535, 38.810169, 25.256891>,  <26.900654, 39.196068, 24.751522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037535, 38.810169, 25.256891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335804, 38.807247, 24.990383>,  <27.514765, 38.805492, 24.830479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335804, 38.807247, 24.990383>,  <27.037535, 38.810169, 25.256891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335804, 38.807247, 24.990383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666112, -0.016323, 0.745673,
		-0.016323, -0.999840, -0.007305,
		-0.745673, 0.007305, 0.666272,
		27.559505, 38.805054, 24.790503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356577, 38.178547, 25.203407>,  <27.037535, 38.810169, 25.256891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356577, 38.178547, 25.203407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599413, 38.486519, 25.124775>,  <27.745115, 38.671303, 25.077595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599413, 38.486519, 25.124775>,  <27.356577, 38.178547, 25.203407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599413, 38.486519, 25.124775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575507, -0.255433, 0.776883,
		0.547934, -0.584773, -0.598172,
		0.607092, 0.769932, -0.196580,
		27.781540, 38.717499, 25.065802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033371, 37.933521, 25.088676>,  <27.356577, 38.178547, 25.203407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033371, 37.933521, 25.088676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082220, 38.315552, 25.196692>,  <28.111528, 38.544769, 25.261501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082220, 38.315552, 25.196692>,  <28.033371, 37.933521, 25.088676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082220, 38.315552, 25.196692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477530, -0.295054, 0.827592,
		0.870087, 0.027886, -0.492108,
		0.122120, 0.955074, 0.270039,
		28.118856, 38.602074, 25.277704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751251, 38.077374, 25.199633>,  <28.033371, 37.933521, 25.088676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751251, 38.077374, 25.199633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519749, 38.321259, 25.416262>,  <28.380848, 38.467590, 25.546238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519749, 38.321259, 25.416262>,  <28.751251, 38.077374, 25.199633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519749, 38.321259, 25.416262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545869, -0.203739, 0.812722,
		0.605862, 0.765994, -0.214905,
		-0.578755, 0.609708, 0.541570,
		28.346123, 38.504169, 25.578733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273008, 38.416748, 25.599768>,  <28.751251, 38.077374, 25.199633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273008, 38.416748, 25.599768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946384, 38.519627, 25.806486>,  <28.750410, 38.581352, 25.930517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946384, 38.519627, 25.806486>,  <29.273008, 38.416748, 25.599768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946384, 38.519627, 25.806486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531298, -0.015222, 0.847048,
		0.225724, 0.966240, -0.124217,
		-0.816561, 0.257195, 0.516797,
		28.701416, 38.596786, 25.961525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496571, 38.990635, 26.048840>,  <29.273008, 38.416748, 25.599768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496571, 38.990635, 26.048840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160479, 38.843643, 26.208324>,  <28.958824, 38.755447, 26.304014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160479, 38.843643, 26.208324>,  <29.496571, 38.990635, 26.048840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160479, 38.843643, 26.208324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493096, -0.211987, 0.843753,
		-0.225543, 0.905549, 0.359321,
		-0.840230, -0.367482, 0.398710,
		28.908409, 38.733398, 26.327938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503183, 39.411488, 26.603687>,  <29.496571, 38.990635, 26.048840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503183, 39.411488, 26.603687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246805, 39.108261, 26.651890>,  <29.092979, 38.926323, 26.680811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246805, 39.108261, 26.651890>,  <29.503183, 39.411488, 26.603687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246805, 39.108261, 26.651890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456144, -0.249894, 0.854100,
		-0.617352, 0.602400, 0.505956,
		-0.640945, -0.758068, 0.120508,
		29.054522, 38.880840, 26.688042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126076, 39.468132, 27.248491>,  <29.503183, 39.411488, 26.603687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126076, 39.468132, 27.248491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093006, 39.078773, 27.163013>,  <29.073164, 38.845158, 27.111727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093006, 39.078773, 27.163013>,  <29.126076, 39.468132, 27.248491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093006, 39.078773, 27.163013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259549, -0.228060, 0.938415,
		-0.962184, 0.022119, 0.271499,
		-0.082675, -0.973396, -0.213695,
		29.068203, 38.786755, 27.098906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532215, 39.229877, 27.650436>,  <29.126076, 39.468132, 27.248491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532215, 39.229877, 27.650436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795738, 38.936222, 27.584688>,  <28.953852, 38.760029, 27.545238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795738, 38.936222, 27.584688>,  <28.532215, 39.229877, 27.650436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795738, 38.936222, 27.584688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101935, -0.303581, 0.947337,
		-0.745373, -0.607358, -0.274836,
		0.658808, -0.734135, -0.164370,
		28.993382, 38.715981, 27.535378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451109, 38.845184, 28.222870>,  <28.532215, 39.229877, 27.650436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451109, 38.845184, 28.222870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780514, 38.669018, 28.079836>,  <28.978157, 38.563320, 27.994015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780514, 38.669018, 28.079836>,  <28.451109, 38.845184, 28.222870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780514, 38.669018, 28.079836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229006, -0.318613, 0.919805,
		-0.519027, -0.839358, -0.161523,
		0.823509, -0.440414, -0.357587,
		29.027567, 38.536896, 27.972561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352503, 38.104439, 28.368519>,  <28.451109, 38.845184, 28.222870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352503, 38.104439, 28.368519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740786, 38.185806, 28.317373>,  <28.973755, 38.234627, 28.286686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740786, 38.185806, 28.317373>,  <28.352503, 38.104439, 28.368519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740786, 38.185806, 28.317373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195495, -0.359299, 0.912516,
		0.139683, -0.910782, -0.388541,
		0.970706, 0.203421, -0.127866,
		29.031998, 38.246834, 28.279013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793102, 37.463047, 28.445292>,  <28.352503, 38.104439, 28.368519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793102, 37.463047, 28.445292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012207, 37.788074, 28.524981>,  <29.143671, 37.983089, 28.572794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012207, 37.788074, 28.524981>,  <28.793102, 37.463047, 28.445292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012207, 37.788074, 28.524981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285918, -0.405598, 0.868183,
		0.786261, -0.418597, -0.454499,
		0.547763, 0.812568, 0.199222,
		29.176537, 38.031845, 28.584747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347403, 37.141182, 28.481033>,  <28.793102, 37.463047, 28.445292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347403, 37.141182, 28.481033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389420, 37.500183, 28.652359>,  <29.414631, 37.715584, 28.755154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389420, 37.500183, 28.652359>,  <29.347403, 37.141182, 28.481033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389420, 37.500183, 28.652359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492006, -0.421195, 0.761922,
		0.864232, 0.130699, -0.485821,
		0.105043, 0.897503, 0.428315,
		29.420933, 37.769436, 28.780853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916849, 37.082043, 28.878904>,  <29.347403, 37.141182, 28.481033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916849, 37.082043, 28.878904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753744, 37.415356, 29.028233>,  <29.655880, 37.615345, 29.117828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753744, 37.415356, 29.028233>,  <29.916849, 37.082043, 28.878904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753744, 37.415356, 29.028233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181316, -0.326817, 0.927532,
		0.894903, 0.445903, -0.017823,
		-0.407765, 0.833283, 0.373320,
		29.631414, 37.665340, 29.140228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280804, 37.174797, 29.443602>,  <29.916849, 37.082043, 28.878904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280804, 37.174797, 29.443602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953041, 37.383453, 29.538649>,  <29.756384, 37.508648, 29.595676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953041, 37.383453, 29.538649>,  <30.280804, 37.174797, 29.443602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953041, 37.383453, 29.538649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139217, -0.221016, 0.965283,
		0.556048, 0.824040, 0.108480,
		-0.819408, 0.521642, 0.237616,
		29.707218, 37.539948, 29.609934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471039, 37.529613, 30.129654>,  <30.280804, 37.174797, 29.443602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471039, 37.529613, 30.129654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074484, 37.519684, 30.078224>,  <29.836550, 37.513725, 30.047365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074484, 37.519684, 30.078224>,  <30.471039, 37.529613, 30.129654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074484, 37.519684, 30.078224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119132, -0.236673, 0.964258,
		-0.054367, 0.971272, 0.231678,
		-0.991389, -0.024824, -0.128577,
		29.777067, 37.512238, 30.039652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169174, 38.020046, 30.600494>,  <30.471039, 37.529613, 30.129654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169174, 38.020046, 30.600494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901634, 37.731308, 30.529415>,  <29.741110, 37.558064, 30.486767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901634, 37.731308, 30.529415>,  <30.169174, 38.020046, 30.600494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901634, 37.731308, 30.529415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069032, -0.177693, 0.981662,
		-0.740184, 0.668852, 0.069020,
		-0.668851, -0.721846, -0.177698,
		29.700979, 37.514755, 30.476105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606096, 38.146423, 31.128580>,  <30.169174, 38.020046, 30.600494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606096, 38.146423, 31.128580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586901, 37.773323, 30.985659>,  <29.575382, 37.549461, 30.899906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586901, 37.773323, 30.985659>,  <29.606096, 38.146423, 31.128580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586901, 37.773323, 30.985659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096544, -0.351711, 0.931117,
		-0.994171, 0.079180, -0.073173,
		-0.047990, -0.932754, -0.357305,
		29.572504, 37.493496, 30.878468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129200, 37.840687, 31.504065>,  <29.606096, 38.146423, 31.128580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129200, 37.840687, 31.504065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306572, 37.515083, 31.353994>,  <29.412994, 37.319721, 31.263952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306572, 37.515083, 31.353994>,  <29.129200, 37.840687, 31.504065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306572, 37.515083, 31.353994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006069, -0.421295, 0.906903,
		-0.896288, -0.399871, -0.191755,
		0.443430, -0.814011, -0.375175,
		29.439602, 37.270882, 31.241442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826294, 37.131416, 31.606451>,  <29.129200, 37.840687, 31.504065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826294, 37.131416, 31.606451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211267, 37.040501, 31.547037>,  <29.442251, 36.985950, 31.511389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211267, 37.040501, 31.547037>,  <28.826294, 37.131416, 31.606451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211267, 37.040501, 31.547037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021391, -0.481884, 0.875974,
		-0.270674, -0.846244, -0.458919,
		0.962433, -0.227287, -0.148536,
		29.499998, 36.972313, 31.502476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837069, 36.415539, 31.771732>,  <28.826294, 37.131416, 31.606451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837069, 36.415539, 31.771732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228453, 36.498108, 31.770611>,  <29.463284, 36.547649, 31.769938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228453, 36.498108, 31.770611>,  <28.837069, 36.415539, 31.771732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228453, 36.498108, 31.770611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139449, -0.650863, 0.746279,
		0.152223, -0.730594, -0.665628,
		0.978459, 0.206422, -0.002804,
		29.521990, 36.560036, 31.769770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162399, 35.794182, 31.671757>,  <28.837069, 36.415539, 31.771732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162399, 35.794182, 31.671757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414722, 36.049595, 31.848101>,  <29.566116, 36.202843, 31.953907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414722, 36.049595, 31.848101>,  <29.162399, 35.794182, 31.671757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414722, 36.049595, 31.848101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233494, -0.698035, 0.676925,
		0.739974, -0.324072, -0.589420,
		0.630808, 0.638533, 0.440858,
		29.603966, 36.241154, 31.980358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611267, 35.398720, 31.957363>,  <29.162399, 35.794182, 31.671757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611267, 35.398720, 31.957363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717415, 35.742668, 32.131809>,  <29.781103, 35.949039, 32.236477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717415, 35.742668, 32.131809>,  <29.611267, 35.398720, 31.957363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717415, 35.742668, 32.131809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475760, -0.510214, 0.716473,
		0.838589, 0.017356, -0.544489,
		0.265370, 0.859873, 0.436117,
		29.797026, 36.000629, 32.262646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322338, 35.377735, 32.118504>,  <29.611267, 35.398720, 31.957363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322338, 35.377735, 32.118504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161451, 35.656422, 32.356094>,  <30.064920, 35.823635, 32.498650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161451, 35.656422, 32.356094>,  <30.322338, 35.377735, 32.118504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161451, 35.656422, 32.356094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472331, -0.397860, 0.786518,
		0.784300, 0.596904, -0.169056,
		-0.402215, 0.696716, 0.593978,
		30.040787, 35.865437, 32.534286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900478, 35.504860, 32.512913>,  <30.322338, 35.377735, 32.118504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900478, 35.504860, 32.512913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606720, 35.598724, 32.767658>,  <30.430464, 35.655041, 32.920506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606720, 35.598724, 32.767658>,  <30.900478, 35.504860, 32.512913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606720, 35.598724, 32.767658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417535, -0.583571, 0.696499,
		0.535094, 0.777419, 0.330595,
		-0.734397, 0.234658, 0.636865,
		30.386400, 35.669121, 32.958717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494877, 35.085030, 32.364887>,  <30.900478, 35.504860, 32.512913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494877, 35.085030, 32.364887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670177, 35.439262, 32.303326>,  <31.775358, 35.651802, 32.266388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670177, 35.439262, 32.303326>,  <31.494877, 35.085030, 32.364887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670177, 35.439262, 32.303326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273004, 0.031989, 0.961481,
		0.856391, -0.463385, -0.227747,
		0.438251, 0.885580, -0.153901,
		31.801653, 35.704937, 32.257156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196030, 35.065624, 32.553593>,  <31.494877, 35.085030, 32.364887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196030, 35.065624, 32.553593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036434, 35.431202, 32.583282>,  <31.940676, 35.650547, 32.601097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036434, 35.431202, 32.583282>,  <32.196030, 35.065624, 32.553593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036434, 35.431202, 32.583282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116435, -0.029794, 0.992751,
		0.909531, 0.404744, -0.094528,
		-0.398994, 0.913945, 0.074224,
		31.916737, 35.705387, 32.605549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528969, 35.451714, 33.048553>,  <32.196030, 35.065624, 32.553593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528969, 35.451714, 33.048553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166721, 35.620922, 33.060616>,  <31.949373, 35.722446, 33.067852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166721, 35.620922, 33.060616>,  <32.528969, 35.451714, 33.048553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166721, 35.620922, 33.060616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010486, -0.048741, 0.998756,
		0.423967, 0.904807, 0.039705,
		-0.905617, 0.423023, 0.030153,
		31.895037, 35.747829, 33.069660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426464, 36.111797, 33.451984>,  <32.528969, 35.451714, 33.048553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426464, 36.111797, 33.451984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081688, 35.909176, 33.460602>,  <31.874823, 35.787601, 33.465771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081688, 35.909176, 33.460602>,  <32.426464, 36.111797, 33.451984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081688, 35.909176, 33.460602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027786, -0.004764, 0.999602,
		-0.506252, 0.862194, 0.018181,
		-0.861938, -0.506557, 0.021545,
		31.823107, 35.757210, 33.467064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918398, 36.422123, 33.915382>,  <32.426464, 36.111797, 33.451984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918398, 36.422123, 33.915382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866457, 36.027008, 33.880951>,  <31.835293, 35.789940, 33.860294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866457, 36.027008, 33.880951>,  <31.918398, 36.422123, 33.915382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866457, 36.027008, 33.880951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032642, -0.091022, 0.995314,
		-0.990996, 0.126436, 0.044063,
		-0.129854, -0.987790, -0.086075,
		31.827501, 35.730671, 33.855129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430803, 36.233280, 34.373920>,  <31.918398, 36.422123, 33.915382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430803, 36.233280, 34.373920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637482, 35.897583, 34.306164>,  <31.761488, 35.696163, 34.265511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637482, 35.897583, 34.306164>,  <31.430803, 36.233280, 34.373920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637482, 35.897583, 34.306164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046677, -0.169943, 0.984348,
		-0.854897, -0.516513, -0.048635,
		0.516694, -0.839246, -0.169393,
		31.792490, 35.645809, 34.255344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081228, 35.729965, 34.871540>,  <31.430803, 36.233280, 34.373920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081228, 35.729965, 34.871540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438643, 35.580124, 34.772530>,  <31.653091, 35.490219, 34.713123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438643, 35.580124, 34.772530>,  <31.081228, 35.729965, 34.871540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438643, 35.580124, 34.772530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197825, -0.166431, 0.966005,
		-0.403061, -0.912127, -0.074607,
		0.893536, -0.374599, -0.247524,
		31.706703, 35.467743, 34.698273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112211, 35.227253, 35.318508>,  <31.081228, 35.729965, 34.871540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112211, 35.227253, 35.318508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486929, 35.294678, 35.195866>,  <31.711760, 35.335133, 35.122280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486929, 35.294678, 35.195866>,  <31.112211, 35.227253, 35.318508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486929, 35.294678, 35.195866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316924, -0.037500, 0.947709,
		0.148251, -0.984977, -0.088552,
		0.936793, 0.168563, -0.306604,
		31.767967, 35.345245, 35.103886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584333, 34.700764, 35.483288>,  <31.112211, 35.227253, 35.318508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584333, 34.700764, 35.483288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821728, 35.021599, 35.456676>,  <31.964165, 35.214100, 35.440708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821728, 35.021599, 35.456676>,  <31.584333, 34.700764, 35.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821728, 35.021599, 35.456676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376218, -0.203397, 0.903930,
		0.711503, -0.561498, -0.422474,
		0.593485, 0.802091, -0.066528,
		31.999773, 35.262226, 35.436718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173737, 34.579723, 35.876942>,  <31.584333, 34.700764, 35.483288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173737, 34.579723, 35.876942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209835, 34.975323, 35.830067>,  <32.231495, 35.212685, 35.801941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209835, 34.975323, 35.830067>,  <32.173737, 34.579723, 35.876942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209835, 34.975323, 35.830067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348895, 0.078813, 0.933842,
		0.932807, -0.125159, -0.337946,
		0.090244, 0.989002, -0.117184,
		32.236908, 35.272022, 35.794910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836010, 34.692650, 35.980450>,  <32.173737, 34.579723, 35.876942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836010, 34.692650, 35.980450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627800, 35.024738, 36.060246>,  <32.502876, 35.223991, 36.108124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627800, 35.024738, 36.060246>,  <32.836010, 34.692650, 35.980450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627800, 35.024738, 36.060246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441108, 0.061425, 0.895349,
		0.731082, 0.554043, -0.398189,
		-0.520521, 0.830218, 0.199486,
		32.471645, 35.273804, 36.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299801, 35.091476, 36.376347>,  <32.836010, 34.692650, 35.980450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299801, 35.091476, 36.376347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969612, 35.292492, 36.479141>,  <32.771500, 35.413101, 36.540817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969612, 35.292492, 36.479141>,  <33.299801, 35.091476, 36.376347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969612, 35.292492, 36.479141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297628, 0.000688, 0.954682,
		0.479590, 0.864553, -0.150138,
		-0.825476, 0.502541, 0.256985,
		32.721970, 35.443253, 36.556236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485672, 35.551357, 36.842697>,  <33.299801, 35.091476, 36.376347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485672, 35.551357, 36.842697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096714, 35.528656, 36.933228>,  <32.863338, 35.515034, 36.987545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096714, 35.528656, 36.933228>,  <33.485672, 35.551357, 36.842697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096714, 35.528656, 36.933228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232010, -0.131849, 0.963736,
		-0.024855, 0.989644, 0.141377,
		-0.972396, -0.056755, 0.226330,
		32.804996, 35.511631, 37.001125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466949, 35.929764, 37.431469>,  <33.485672, 35.551357, 36.842697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466949, 35.929764, 37.431469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112640, 35.744446, 37.442463>,  <32.900055, 35.633255, 37.449059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112640, 35.744446, 37.442463>,  <33.466949, 35.929764, 37.431469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112640, 35.744446, 37.442463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035192, -0.008002, 0.999349,
		-0.462777, 0.886166, 0.023393,
		-0.885776, -0.463299, 0.027483,
		32.846909, 35.605457, 37.450706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970711, 36.263138, 37.863770>,  <33.466949, 35.929764, 37.431469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970711, 36.263138, 37.863770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798607, 35.902069, 37.866882>,  <32.695343, 35.685429, 37.868752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798607, 35.902069, 37.866882>,  <32.970711, 36.263138, 37.863770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798607, 35.902069, 37.866882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056031, 0.035313, 0.997804,
		-0.900964, 0.428880, -0.065771,
		-0.430261, -0.902671, 0.007785,
		32.669529, 35.631268, 37.869217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503101, 36.401718, 38.334095>,  <32.970711, 36.263138, 37.863770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503101, 36.401718, 38.334095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508469, 36.004162, 38.290276>,  <32.511688, 35.765629, 38.263985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508469, 36.004162, 38.290276>,  <32.503101, 36.401718, 38.334095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508469, 36.004162, 38.290276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213462, -0.109877, 0.970753,
		-0.976859, 0.010354, -0.213632,
		0.013422, -0.993891, -0.109544,
		32.512497, 35.705994, 38.257412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867550, 36.127052, 38.617386>,  <32.503101, 36.401718, 38.334095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867550, 36.127052, 38.617386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164566, 35.859745, 38.635529>,  <32.342777, 35.699360, 38.646416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164566, 35.859745, 38.635529>,  <31.867550, 36.127052, 38.617386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164566, 35.859745, 38.635529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228352, -0.188911, 0.955075,
		-0.629675, -0.719538, -0.292873,
		0.742540, -0.668265, 0.045355,
		32.387329, 35.659267, 38.649136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591913, 35.477909, 38.844509>,  <31.867550, 36.127052, 38.617386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591913, 35.477909, 38.844509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980139, 35.432991, 38.929733>,  <32.213074, 35.406040, 38.980869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980139, 35.432991, 38.929733>,  <31.591913, 35.477909, 38.844509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980139, 35.432991, 38.929733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237313, -0.295052, 0.925541,
		-0.041068, -0.948859, -0.313016,
		0.970564, -0.112293, 0.213060,
		32.271309, 35.399303, 38.993652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766331, 34.798576, 38.985355>,  <31.591913, 35.477909, 38.844509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766331, 34.798576, 38.985355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034275, 35.014561, 39.189209>,  <32.195042, 35.144150, 39.311520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034275, 35.014561, 39.189209>,  <31.766331, 34.798576, 38.985355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034275, 35.014561, 39.189209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328218, -0.400337, 0.855572,
		0.666001, -0.740386, -0.090946,
		0.669862, 0.539962, 0.509633,
		32.235233, 35.176548, 39.342098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954428, 34.345299, 39.567490>,  <31.766331, 34.798576, 38.985355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954428, 34.345299, 39.567490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091446, 34.709354, 39.660713>,  <32.173656, 34.927788, 39.716648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091446, 34.709354, 39.660713>,  <31.954428, 34.345299, 39.567490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091446, 34.709354, 39.660713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187524, -0.176836, 0.966211,
		0.920595, -0.374677, 0.110098,
		0.342548, 0.910135, 0.233055,
		32.194210, 34.982395, 39.730629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397083, 34.274078, 40.208981>,  <31.954428, 34.345299, 39.567490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397083, 34.274078, 40.208981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289120, 34.657486, 40.172352>,  <32.224342, 34.887531, 40.150375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289120, 34.657486, 40.172352>,  <32.397083, 34.274078, 40.208981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289120, 34.657486, 40.172352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252199, 0.021409, 0.967438,
		0.929272, 0.284211, 0.235960,
		-0.269905, 0.958523, -0.091572,
		32.208149, 34.945042, 40.144878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736664, 34.560669, 40.744675>,  <32.397083, 34.274078, 40.208981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736664, 34.560669, 40.744675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426918, 34.791618, 40.641136>,  <32.241070, 34.930187, 40.579014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426918, 34.791618, 40.641136>,  <32.736664, 34.560669, 40.744675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426918, 34.791618, 40.641136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173247, 0.199983, 0.964361,
		0.608562, 0.791610, -0.054831,
		-0.774363, 0.577374, -0.258846,
		32.194611, 34.964832, 40.563484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688560, 34.807190, 41.392509>,  <32.736664, 34.560669, 40.744675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688560, 34.807190, 41.392509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364166, 34.946079, 41.204155>,  <32.169529, 35.029411, 41.091141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364166, 34.946079, 41.204155>,  <32.688560, 34.807190, 41.392509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364166, 34.946079, 41.204155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483467, 0.055526, 0.873600,
		0.329480, 0.936137, 0.122840,
		-0.810989, 0.347223, -0.470886,
		32.120869, 35.050247, 41.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452332, 35.461525, 41.751644>,  <32.688560, 34.807190, 41.392509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452332, 35.461525, 41.751644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131657, 35.320812, 41.558334>,  <31.939253, 35.236385, 41.442348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131657, 35.320812, 41.558334>,  <32.452332, 35.461525, 41.751644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131657, 35.320812, 41.558334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422882, -0.237617, 0.874476,
		-0.422458, 0.905421, 0.041732,
		-0.801686, -0.351782, -0.483270,
		31.891151, 35.215279, 41.413353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864300, 35.717854, 42.114372>,  <32.452332, 35.461525, 41.751644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864300, 35.717854, 42.114372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697292, 35.424679, 41.899529>,  <31.597088, 35.248775, 41.770622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697292, 35.424679, 41.899529>,  <31.864300, 35.717854, 42.114372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697292, 35.424679, 41.899529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504120, -0.304949, 0.808003,
		-0.756004, 0.608124, -0.242165,
		-0.417518, -0.732934, -0.537110,
		31.572037, 35.204800, 41.738396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086254, 35.669830, 42.329479>,  <31.864300, 35.717854, 42.114372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086254, 35.669830, 42.329479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230703, 35.322533, 42.193390>,  <31.317373, 35.114155, 42.111736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230703, 35.322533, 42.193390>,  <31.086254, 35.669830, 42.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230703, 35.322533, 42.193390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376089, -0.469457, 0.798854,
		-0.853316, -0.160531, -0.496067,
		0.361122, -0.868240, -0.340221,
		31.339041, 35.062061, 42.091324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591858, 35.181835, 42.429356>,  <31.086254, 35.669830, 42.329479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591858, 35.181835, 42.429356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921438, 34.956879, 42.401585>,  <31.119186, 34.821903, 42.384922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921438, 34.956879, 42.401585>,  <30.591858, 35.181835, 42.429356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921438, 34.956879, 42.401585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364726, -0.620106, 0.694582,
		-0.433681, -0.546978, -0.716056,
		0.823951, -0.562391, -0.069432,
		31.168623, 34.788162, 42.380756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385517, 34.416828, 42.458981>,  <30.591858, 35.181835, 42.429356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385517, 34.416828, 42.458981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774654, 34.393417, 42.548557>,  <31.008137, 34.379372, 42.602303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774654, 34.393417, 42.548557>,  <30.385517, 34.416828, 42.458981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774654, 34.393417, 42.548557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204261, -0.672153, 0.711679,
		0.108872, -0.738095, -0.665855,
		0.972843, -0.058526, 0.223942,
		31.066507, 34.375858, 42.615742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512463, 33.715580, 42.744297>,  <30.385517, 34.416828, 42.458981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512463, 33.715580, 42.744297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843596, 33.909267, 42.857597>,  <31.042274, 34.025478, 42.925575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843596, 33.909267, 42.857597>,  <30.512463, 33.715580, 42.744297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843596, 33.909267, 42.857597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076771, -0.402378, 0.912249,
		0.555698, -0.776934, -0.295927,
		0.827832, 0.484216, 0.283247,
		31.091946, 34.054531, 42.942570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019325, 33.255898, 42.937984>,  <30.512463, 33.715580, 42.744297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019325, 33.255898, 42.937984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089439, 33.596035, 43.136456>,  <31.131508, 33.800117, 43.255539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089439, 33.596035, 43.136456>,  <31.019325, 33.255898, 42.937984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089439, 33.596035, 43.136456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013604, -0.506026, 0.862411,
		0.984423, -0.144419, -0.100267,
		0.175286, 0.850342, 0.496179,
		31.142025, 33.851139, 43.285309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638180, 33.092213, 43.346233>,  <31.019325, 33.255898, 42.937984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638180, 33.092213, 43.346233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461851, 33.399895, 43.531273>,  <31.356054, 33.584503, 43.642296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461851, 33.399895, 43.531273>,  <31.638180, 33.092213, 43.346233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461851, 33.399895, 43.531273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152049, -0.443930, 0.883067,
		0.884623, 0.459612, 0.078736,
		-0.440822, 0.769209, 0.462594,
		31.329605, 33.630657, 43.670052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960188, 33.103031, 43.942406>,  <31.638180, 33.092213, 43.346233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960188, 33.103031, 43.942406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634884, 33.318321, 44.030876>,  <31.439701, 33.447495, 44.083958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634884, 33.318321, 44.030876>,  <31.960188, 33.103031, 43.942406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634884, 33.318321, 44.030876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020994, -0.406985, 0.913193,
		0.581524, 0.738019, 0.342284,
		-0.813259, 0.538230, 0.221178,
		31.390907, 33.479790, 44.097229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058083, 33.230782, 44.679016>,  <31.960188, 33.103031, 43.942406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058083, 33.230782, 44.679016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676741, 33.301029, 44.580811>,  <31.447935, 33.343178, 44.521889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676741, 33.301029, 44.580811>,  <32.058083, 33.230782, 44.679016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676741, 33.301029, 44.580811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290015, -0.307311, 0.906339,
		0.083726, 0.935263, 0.343909,
		-0.953353, 0.175623, -0.245510,
		31.390736, 33.353718, 44.507156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717705, 33.493679, 45.298908>,  <32.058083, 33.230782, 44.679016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717705, 33.493679, 45.298908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394554, 33.393726, 45.085407>,  <31.200663, 33.333755, 44.957306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394554, 33.393726, 45.085407>,  <31.717705, 33.493679, 45.298908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394554, 33.393726, 45.085407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402792, -0.427026, 0.809572,
		-0.430221, 0.869028, 0.244336,
		-0.807879, -0.249879, -0.533753,
		31.152191, 33.318764, 44.925282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088362, 33.787998, 45.650051>,  <31.717705, 33.493679, 45.298908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088362, 33.787998, 45.650051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951698, 33.481121, 45.432911>,  <30.869699, 33.296993, 45.302628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951698, 33.481121, 45.432911>,  <31.088362, 33.787998, 45.650051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951698, 33.481121, 45.432911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405723, -0.400607, 0.821525,
		-0.847737, 0.500927, -0.174397,
		-0.341659, -0.767194, -0.542847,
		30.849201, 33.250961, 45.270058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472651, 33.672871, 45.945999>,  <31.088362, 33.787998, 45.650051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472651, 33.672871, 45.945999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569569, 33.337654, 45.750458>,  <30.627720, 33.136524, 45.633133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569569, 33.337654, 45.750458>,  <30.472651, 33.672871, 45.945999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569569, 33.337654, 45.750458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418864, -0.544844, 0.726428,
		-0.875126, 0.028750, -0.483041,
		0.242297, -0.838044, -0.488849,
		30.642258, 33.086243, 45.603802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831024, 33.319202, 46.042801>,  <30.472651, 33.672871, 45.945999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831024, 33.319202, 46.042801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125088, 33.063663, 45.952099>,  <30.301525, 32.910339, 45.897678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125088, 33.063663, 45.952099>,  <29.831024, 33.319202, 46.042801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125088, 33.063663, 45.952099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280326, -0.591056, 0.756353,
		-0.617222, -0.492470, -0.613604,
		0.735156, -0.638847, -0.226760,
		30.345634, 32.872009, 45.884071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620625, 32.668095, 46.249420>,  <29.831024, 33.319202, 46.042801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620625, 32.668095, 46.249420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009079, 32.580975, 46.210522>,  <30.242151, 32.528702, 46.187183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009079, 32.580975, 46.210522>,  <29.620625, 32.668095, 46.249420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009079, 32.580975, 46.210522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058058, -0.611276, 0.789285,
		-0.231348, -0.760858, -0.606278,
		0.971137, -0.217799, -0.097243,
		30.300421, 32.515636, 46.181347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599510, 31.914566, 46.265598>,  <29.620625, 32.668095, 46.249420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599510, 31.914566, 46.265598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976000, 31.999743, 46.370480>,  <30.201895, 32.050850, 46.433407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976000, 31.999743, 46.370480>,  <29.599510, 31.914566, 46.265598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976000, 31.999743, 46.370480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074385, -0.626524, 0.775844,
		0.329486, -0.749748, -0.573861,
		0.941225, 0.212943, 0.262201,
		30.258368, 32.063625, 46.449139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900757, 31.276968, 46.265736>,  <29.599510, 31.914566, 46.265598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900757, 31.276968, 46.265736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113338, 31.525755, 46.495766>,  <30.240887, 31.675026, 46.633785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113338, 31.525755, 46.495766>,  <29.900757, 31.276968, 46.265736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113338, 31.525755, 46.495766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065572, -0.707059, 0.704108,
		0.844546, -0.336490, -0.416552,
		0.531453, 0.621966, 0.575080,
		30.272774, 31.712345, 46.668289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280731, 30.772699, 46.572254>,  <29.900757, 31.276968, 46.265736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280731, 30.772699, 46.572254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321033, 31.105160, 46.790993>,  <30.345215, 31.304636, 46.922234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321033, 31.105160, 46.790993>,  <30.280731, 30.772699, 46.572254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321033, 31.105160, 46.790993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056136, -0.553513, 0.830946,
		0.993326, -0.053024, -0.102426,
		0.100754, 0.831151, 0.546843,
		30.351259, 31.354506, 46.955044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686745, 30.482014, 47.079319>,  <30.280731, 30.772699, 46.572254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686745, 30.482014, 47.079319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552223, 30.831261, 47.220493>,  <30.471510, 31.040810, 47.305199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552223, 30.831261, 47.220493>,  <30.686745, 30.482014, 47.079319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552223, 30.831261, 47.220493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143208, -0.417822, 0.897171,
		0.930801, 0.251179, 0.265553,
		-0.336304, 0.873118, 0.352938,
		30.451332, 31.093197, 47.326374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972677, 30.466599, 47.713120>,  <30.686745, 30.482014, 47.079319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972677, 30.466599, 47.713120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672688, 30.730768, 47.727947>,  <30.492693, 30.889271, 47.736843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672688, 30.730768, 47.727947>,  <30.972677, 30.466599, 47.713120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672688, 30.730768, 47.727947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200260, -0.280118, 0.938845,
		0.630421, 0.696687, 0.342339,
		-0.749976, 0.660425, 0.037073,
		30.447695, 30.928896, 47.739071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049013, 30.795446, 48.395409>,  <30.972677, 30.466599, 47.713120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049013, 30.795446, 48.395409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676481, 30.863016, 48.266361>,  <30.452961, 30.903559, 48.188931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676481, 30.863016, 48.266361>,  <31.049013, 30.795446, 48.395409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676481, 30.863016, 48.266361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355918, -0.234671, 0.904573,
		0.077094, 0.957284, 0.278680,
		-0.931332, 0.168924, -0.322623,
		30.397081, 30.913694, 48.169575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671677, 31.362051, 48.866093>,  <31.049013, 30.795446, 48.395409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671677, 31.362051, 48.866093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398584, 31.128450, 48.690449>,  <30.234730, 30.988289, 48.585060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398584, 31.128450, 48.690449>,  <30.671677, 31.362051, 48.866093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398584, 31.128450, 48.690449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361192, -0.252664, 0.897609,
		-0.635154, 0.771429, -0.038436,
		-0.682730, -0.584002, -0.439114,
		30.193766, 30.953249, 48.558716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065941, 31.401117, 49.245102>,  <30.671677, 31.362051, 48.866093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065941, 31.401117, 49.245102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988497, 31.057467, 49.055611>,  <29.942030, 30.851276, 48.941917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988497, 31.057467, 49.055611>,  <30.065941, 31.401117, 49.245102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988497, 31.057467, 49.055611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249153, -0.423973, 0.870729,
		-0.948914, 0.286613, -0.131968,
		-0.193612, -0.859127, -0.473724,
		29.930414, 30.799728, 48.913494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339314, 31.130669, 49.294384>,  <30.065941, 31.401117, 49.245102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339314, 31.130669, 49.294384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609251, 30.837454, 49.260338>,  <29.771214, 30.661526, 49.239910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609251, 30.837454, 49.260338>,  <29.339314, 31.130669, 49.294384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609251, 30.837454, 49.260338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198514, -0.291409, 0.935774,
		-0.710761, -0.614603, -0.342173,
		0.674842, -0.733038, -0.085115,
		29.811703, 30.617542, 49.234802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087229, 30.375772, 49.299286>,  <29.339314, 31.130669, 49.294384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087229, 30.375772, 49.299286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453936, 30.437502, 49.446648>,  <29.673960, 30.474541, 49.535065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453936, 30.437502, 49.446648>,  <29.087229, 30.375772, 49.299286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453936, 30.437502, 49.446648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293279, -0.366053, 0.883172,
		0.271150, -0.917708, -0.290326,
		0.916769, 0.154325, 0.368400,
		29.728966, 30.483799, 49.557167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267229, 29.722448, 49.687805>,  <29.087229, 30.375772, 49.299286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267229, 29.722448, 49.687805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446564, 30.039022, 49.854000>,  <29.554165, 30.228966, 49.953716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446564, 30.039022, 49.854000>,  <29.267229, 29.722448, 49.687805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446564, 30.039022, 49.854000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197535, -0.365601, 0.909569,
		0.871766, -0.489864, -0.007576,
		0.448335, 0.791434, 0.415484,
		29.581064, 30.276453, 49.978645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607103, 29.457066, 49.586121>,  <29.267229, 29.722448, 49.687805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607103, 29.457066, 49.586121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649359, 29.481991, 49.189140>,  <28.674711, 29.496946, 48.950951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649359, 29.481991, 49.189140>,  <28.607103, 29.457066, 49.586121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649359, 29.481991, 49.189140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201950, -0.978581, -0.039945,
		-0.973682, -0.196206, -0.115959,
		0.105638, 0.062311, -0.992450,
		28.681049, 29.500685, 48.891407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283754, 28.953508, 49.077805>,  <28.607103, 29.457066, 49.586121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283754, 28.953508, 49.077805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628946, 29.073240, 48.914993>,  <28.836061, 29.145079, 48.817307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628946, 29.073240, 48.914993>,  <28.283754, 28.953508, 49.077805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628946, 29.073240, 48.914993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401499, -0.895330, 0.192827,
		-0.306704, -0.329826, -0.892831,
		0.862978, 0.299330, -0.407027,
		28.887840, 29.163040, 48.792885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287792, 28.579893, 49.789608>,  <28.283754, 28.953508, 49.077805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287792, 28.579893, 49.789608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215487, 28.201723, 49.681168>,  <28.172104, 27.974821, 49.616104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215487, 28.201723, 49.681168>,  <28.287792, 28.579893, 49.789608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215487, 28.201723, 49.681168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340360, 0.198475, -0.919110,
		0.922757, -0.258411, 0.285908,
		-0.180762, -0.945427, -0.271097,
		28.161259, 27.918095, 49.599838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708288, 28.062977, 49.386604>,  <28.287792, 28.579893, 49.789608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708288, 28.062977, 49.386604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880922, 27.711454, 49.468025>,  <28.984503, 27.500542, 49.516876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880922, 27.711454, 49.468025>,  <28.708288, 28.062977, 49.386604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880922, 27.711454, 49.468025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529134, 0.063879, -0.846130,
		0.730582, 0.472884, 0.492576,
		0.431587, -0.878806, 0.203550,
		29.010399, 27.447813, 49.529091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457249, 28.148418, 49.305321>,  <28.708288, 28.062977, 49.386604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457249, 28.148418, 49.305321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334375, 27.774296, 49.235077>,  <29.260653, 27.549822, 49.192932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334375, 27.774296, 49.235077>,  <29.457249, 28.148418, 49.305321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334375, 27.774296, 49.235077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400843, 0.040199, -0.915264,
		0.863113, -0.351545, 0.362563,
		-0.307182, -0.935307, -0.175611,
		29.242220, 27.493704, 49.182392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101612, 27.743877, 49.168011>,  <29.457249, 28.148418, 49.305321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101612, 27.743877, 49.168011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754198, 27.643690, 48.996937>,  <29.545750, 27.583578, 48.894291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754198, 27.643690, 48.996937>,  <30.101612, 27.743877, 49.168011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754198, 27.643690, 48.996937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366463, 0.256445, -0.894394,
		0.333695, -0.933543, -0.130944,
		-0.868535, -0.250469, -0.427683,
		29.493637, 27.568550, 48.868633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268221, 27.341755, 48.578423>,  <30.101612, 27.743877, 49.168011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268221, 27.341755, 48.578423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935806, 27.559765, 48.534023>,  <29.736357, 27.690571, 48.507385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935806, 27.559765, 48.534023>,  <30.268221, 27.341755, 48.578423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935806, 27.559765, 48.534023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322042, 0.308777, -0.894956,
		-0.453501, -0.779489, -0.432127,
		-0.831039, 0.545027, -0.110998,
		29.686495, 27.723272, 48.500725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934601, 27.085104, 48.008270>,  <30.268221, 27.341755, 48.578423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934601, 27.085104, 48.008270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869123, 27.476900, 48.055256>,  <29.829836, 27.711979, 48.083447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869123, 27.476900, 48.055256>,  <29.934601, 27.085104, 48.008270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869123, 27.476900, 48.055256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376857, 0.172131, -0.910137,
		-0.911692, -0.104717, -0.397306,
		-0.163695, 0.979492, 0.117468,
		29.820015, 27.770748, 48.090496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603029, 27.342279, 47.339802>,  <29.934601, 27.085104, 48.008270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603029, 27.342279, 47.339802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794857, 27.636856, 47.530659>,  <29.909954, 27.813602, 47.645172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794857, 27.636856, 47.530659>,  <29.603029, 27.342279, 47.339802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794857, 27.636856, 47.530659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399374, 0.300991, -0.865971,
		-0.781354, 0.605851, -0.149770,
		0.479569, 0.736444, 0.477141,
		29.938728, 27.857790, 47.673801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646265, 27.887827, 46.851196>,  <29.603029, 27.342279, 47.339802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646265, 27.887827, 46.851196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928680, 27.999500, 47.111526>,  <30.098129, 28.066505, 47.267723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928680, 27.999500, 47.111526>,  <29.646265, 27.887827, 46.851196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928680, 27.999500, 47.111526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522092, 0.415714, -0.744716,
		-0.478469, 0.865585, 0.147749,
		0.706036, 0.279184, 0.650822,
		30.140491, 28.083256, 47.306774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935442, 28.511364, 46.615913>,  <29.646265, 27.887827, 46.851196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935442, 28.511364, 46.615913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206478, 28.371206, 46.874554>,  <30.369099, 28.287111, 47.029739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206478, 28.371206, 46.874554>,  <29.935442, 28.511364, 46.615913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206478, 28.371206, 46.874554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735398, 0.332280, -0.590575,
		-0.007920, 0.875679, 0.482828,
		0.677589, -0.350394, 0.646605,
		30.409756, 28.266088, 47.068535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280842, 29.140471, 46.847019>,  <29.935442, 28.511364, 46.615913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280842, 29.140471, 46.847019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518673, 28.822504, 46.895332>,  <30.661371, 28.631725, 46.924320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518673, 28.822504, 46.895332>,  <30.280842, 29.140471, 46.847019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518673, 28.822504, 46.895332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691275, 0.428672, -0.581704,
		0.410630, 0.429362, 0.804383,
		0.594578, -0.794914, 0.120782,
		30.697046, 28.584030, 46.931568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015253, 29.355310, 46.998722>,  <30.280842, 29.140471, 46.847019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015253, 29.355310, 46.998722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066774, 28.975260, 46.885117>,  <31.097687, 28.747229, 46.816952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066774, 28.975260, 46.885117>,  <31.015253, 29.355310, 46.998722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066774, 28.975260, 46.885117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830372, 0.259905, -0.492882,
		0.542118, -0.172354, 0.822437,
		0.128805, -0.950128, -0.284017,
		31.105415, 28.690222, 46.799911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646469, 29.288731, 46.963722>,  <31.015253, 29.355310, 46.998722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646469, 29.288731, 46.963722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544382, 28.970324, 46.744190>,  <31.483130, 28.779280, 46.612469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544382, 28.970324, 46.744190>,  <31.646469, 29.288731, 46.963722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544382, 28.970324, 46.744190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645045, 0.282671, -0.709939,
		0.720265, -0.535210, 0.441327,
		-0.255216, -0.796020, -0.548832,
		31.467817, 28.731518, 46.579540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259148, 28.961460, 46.713978>,  <31.646469, 29.288731, 46.963722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259148, 28.961460, 46.713978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962828, 28.836567, 46.476078>,  <31.785036, 28.761631, 46.333340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962828, 28.836567, 46.476078>,  <32.259148, 28.961460, 46.713978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962828, 28.836567, 46.476078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554753, 0.214870, -0.803791,
		0.378764, -0.925387, 0.014037,
		-0.740801, -0.312234, -0.594746,
		31.740587, 28.742897, 46.297653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615166, 28.571888, 46.097137>,  <32.259148, 28.961460, 46.713978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615166, 28.571888, 46.097137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259460, 28.708225, 45.975128>,  <32.046036, 28.790028, 45.901924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259460, 28.708225, 45.975128>,  <32.615166, 28.571888, 46.097137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259460, 28.708225, 45.975128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431635, 0.404705, -0.806167,
		-0.151331, -0.848552, -0.507009,
		-0.889264, 0.340841, -0.305020,
		31.992682, 28.810478, 45.883621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702328, 28.518421, 45.373333>,  <32.615166, 28.571888, 46.097137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702328, 28.518421, 45.373333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347710, 28.703316, 45.381020>,  <32.134937, 28.814253, 45.385632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347710, 28.703316, 45.381020>,  <32.702328, 28.518421, 45.373333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347710, 28.703316, 45.381020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222825, 0.463036, -0.857874,
		-0.405440, -0.756264, -0.513501,
		-0.886548, 0.462237, 0.019219,
		32.081745, 28.841988, 45.386784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153542, 28.347090, 44.738365>,  <32.702328, 28.518421, 45.373333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153542, 28.347090, 44.738365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100655, 28.725256, 44.857502>,  <32.068920, 28.952156, 44.928986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100655, 28.725256, 44.857502>,  <32.153542, 28.347090, 44.738365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100655, 28.725256, 44.857502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147300, 0.315883, -0.937294,
		-0.980215, -0.080057, -0.181026,
		-0.132220, 0.945415, 0.297841,
		32.060989, 29.008881, 44.946854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747892, 28.724026, 44.192711>,  <32.153542, 28.347090, 44.738365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747892, 28.724026, 44.192711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908932, 29.028366, 44.396286>,  <32.005554, 29.210970, 44.518433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908932, 29.028366, 44.396286>,  <31.747892, 28.724026, 44.192711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908932, 29.028366, 44.396286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018102, 0.549266, -0.835451,
		-0.915197, 0.345566, 0.207362,
		0.402600, 0.760849, 0.508942,
		32.029713, 29.256620, 44.548969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619831, 29.375935, 43.731037>,  <31.747892, 28.724026, 44.192711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619831, 29.375935, 43.731037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810181, 29.523613, 44.050346>,  <31.924391, 29.612219, 44.241932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810181, 29.523613, 44.050346>,  <31.619831, 29.375935, 43.731037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810181, 29.523613, 44.050346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201685, 0.837636, -0.507631,
		-0.856076, 0.402569, 0.324150,
		0.475876, 0.369194, 0.798272,
		31.952944, 29.634371, 44.289829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387968, 30.108948, 43.918861>,  <31.619831, 29.375935, 43.731037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387968, 30.108948, 43.918861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767529, 30.050077, 44.030521>,  <31.995264, 30.014755, 44.097519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767529, 30.050077, 44.030521>,  <31.387968, 30.108948, 43.918861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767529, 30.050077, 44.030521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297209, 0.714149, -0.633765,
		-0.106081, 0.684347, 0.721398,
		0.948901, -0.147176, 0.279152,
		32.052200, 30.005924, 44.114265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754055, 30.738497, 44.041016>,  <31.387968, 30.108948, 43.918861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754055, 30.738497, 44.041016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042286, 30.485355, 43.927692>,  <32.215225, 30.333471, 43.859699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042286, 30.485355, 43.927692>,  <31.754055, 30.738497, 44.041016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042286, 30.485355, 43.927692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205245, 0.584968, -0.784657,
		0.662300, 0.507258, 0.551405,
		0.720578, -0.632852, -0.283312,
		32.258461, 30.295500, 43.842697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250103, 31.205925, 43.777470>,  <31.754055, 30.738497, 44.041016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250103, 31.205925, 43.777470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350971, 30.850042, 43.625240>,  <32.411491, 30.636513, 43.533901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350971, 30.850042, 43.625240>,  <32.250103, 31.205925, 43.777470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350971, 30.850042, 43.625240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249940, 0.439823, -0.862604,
		0.934848, 0.122401, 0.333283,
		0.252169, -0.889704, -0.380574,
		32.426620, 30.583132, 43.511066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865974, 31.264103, 43.476990>,  <32.250103, 31.205925, 43.777470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865974, 31.264103, 43.476990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692543, 30.944443, 43.310444>,  <32.588482, 30.752645, 43.210514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692543, 30.944443, 43.310444>,  <32.865974, 31.264103, 43.476990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692543, 30.944443, 43.310444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128651, 0.402427, -0.906367,
		0.891882, -0.446552, -0.071674,
		-0.433583, -0.799152, -0.416367,
		32.562469, 30.704697, 43.185535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322594, 30.961880, 42.981514>,  <32.865974, 31.264103, 43.476990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322594, 30.961880, 42.981514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943150, 30.867090, 42.897621>,  <32.715485, 30.810217, 42.847286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943150, 30.867090, 42.897621>,  <33.322594, 30.961880, 42.981514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943150, 30.867090, 42.897621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124449, 0.329989, -0.935746,
		0.290958, -0.913756, -0.283538,
		-0.948608, -0.236977, -0.209729,
		32.658566, 30.795998, 42.834702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317131, 31.096537, 42.333099>,  <33.322594, 30.961880, 42.981514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317131, 31.096537, 42.333099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930489, 30.999987, 42.367516>,  <32.698502, 30.942057, 42.388165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930489, 30.999987, 42.367516>,  <33.317131, 31.096537, 42.333099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930489, 30.999987, 42.367516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137600, 0.205680, -0.968897,
		0.216199, -0.948378, -0.232028,
		-0.966604, -0.241401, 0.086029,
		32.640507, 30.927574, 42.393326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146824, 30.628386, 41.762527>,  <33.317131, 31.096537, 42.333099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146824, 30.628386, 41.762527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787834, 30.743847, 41.895927>,  <32.572441, 30.813124, 41.975967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787834, 30.743847, 41.895927>,  <33.146824, 30.628386, 41.762527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787834, 30.743847, 41.895927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358427, -0.036639, -0.932838,
		-0.257049, -0.956732, 0.136344,
		-0.897472, 0.288654, 0.333501,
		32.518593, 30.830442, 41.995979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631947, 30.301157, 41.377026>,  <33.146824, 30.628386, 41.762527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631947, 30.301157, 41.377026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458458, 30.644205, 41.487568>,  <32.354366, 30.850035, 41.553894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458458, 30.644205, 41.487568>,  <32.631947, 30.301157, 41.377026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458458, 30.644205, 41.487568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294615, 0.154870, -0.942983,
		-0.851522, -0.490409, 0.185498,
		-0.433720, 0.857621, 0.276357,
		32.328342, 30.901491, 41.570477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336201, 30.313158, 40.764378>,  <32.631947, 30.301157, 41.377026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336201, 30.313158, 40.764378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270912, 30.668638, 40.935757>,  <32.231739, 30.881927, 41.038586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270912, 30.668638, 40.935757>,  <32.336201, 30.313158, 40.764378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270912, 30.668638, 40.935757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114773, 0.414217, -0.902913,
		-0.979891, -0.196549, 0.034390,
		-0.163221, 0.888703, 0.428446,
		32.221947, 30.935249, 41.064289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760674, 30.605913, 40.439384>,  <32.336201, 30.313158, 40.764378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760674, 30.605913, 40.439384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972723, 30.904110, 40.600983>,  <32.099953, 31.083027, 40.697941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972723, 30.904110, 40.600983>,  <31.760674, 30.605913, 40.439384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972723, 30.904110, 40.600983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003821, 0.478549, -0.878053,
		-0.847912, 0.463933, 0.256539,
		0.530124, 0.745491, 0.403995,
		32.131760, 31.127758, 40.722179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334848, 31.131380, 40.279591>,  <31.760674, 30.605913, 40.439384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334848, 31.131380, 40.279591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685822, 31.302298, 40.366798>,  <31.896406, 31.404848, 40.419121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685822, 31.302298, 40.366798>,  <31.334848, 31.131380, 40.279591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685822, 31.302298, 40.366798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058078, 0.545767, -0.835922,
		-0.476170, 0.720804, 0.503690,
		0.877433, 0.427294, 0.218015,
		31.949051, 31.430487, 40.432201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351753, 31.831564, 40.040390>,  <31.334848, 31.131380, 40.279591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351753, 31.831564, 40.040390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747040, 31.782351, 40.076817>,  <31.984211, 31.752823, 40.098671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747040, 31.782351, 40.076817>,  <31.351753, 31.831564, 40.040390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747040, 31.782351, 40.076817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145846, 0.576229, -0.804170,
		0.046468, 0.807975, 0.587382,
		0.988215, -0.123035, 0.091064,
		32.043503, 31.745440, 40.104137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578793, 32.425743, 39.889656>,  <31.351753, 31.831564, 40.040390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578793, 32.425743, 39.889656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913872, 32.217346, 39.824139>,  <32.114918, 32.092308, 39.784828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913872, 32.217346, 39.824139>,  <31.578793, 32.425743, 39.889656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913872, 32.217346, 39.824139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148163, 0.505470, -0.850028,
		0.525650, 0.687799, 0.500624,
		0.837699, -0.520991, -0.163794,
		32.165180, 32.061050, 39.775002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053139, 32.921471, 39.620403>,  <31.578793, 32.425743, 39.889656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053139, 32.921471, 39.620403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213329, 32.568592, 39.521336>,  <32.309444, 32.356865, 39.461895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213329, 32.568592, 39.521336>,  <32.053139, 32.921471, 39.620403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213329, 32.568592, 39.521336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222748, 0.355917, -0.907583,
		0.888819, 0.308300, 0.339045,
		0.400479, -0.882199, -0.247673,
		32.333473, 32.303932, 39.447033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607864, 33.023758, 39.164288>,  <32.053139, 32.921471, 39.620403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607864, 33.023758, 39.164288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525257, 32.640602, 39.084480>,  <32.475693, 32.410709, 39.036598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525257, 32.640602, 39.084480>,  <32.607864, 33.023758, 39.164288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525257, 32.640602, 39.084480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160004, 0.168103, -0.972697,
		0.965272, -0.232798, 0.118550,
		-0.206514, -0.957886, -0.199514,
		32.463303, 32.353237, 39.024628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115601, 32.943054, 38.679031>,  <32.607864, 33.023758, 39.164288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115601, 32.943054, 38.679031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836231, 32.666122, 38.606499>,  <32.668610, 32.499962, 38.562977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836231, 32.666122, 38.606499>,  <33.115601, 32.943054, 38.679031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836231, 32.666122, 38.606499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122463, 0.134025, -0.983382,
		0.705126, -0.709027, -0.008823,
		-0.698427, -0.692328, -0.181334,
		32.626701, 32.458424, 38.552097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371849, 32.606361, 38.083584>,  <33.115601, 32.943054, 38.679031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371849, 32.606361, 38.083584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993141, 32.477917, 38.092709>,  <32.765919, 32.400848, 38.098183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993141, 32.477917, 38.092709>,  <33.371849, 32.606361, 38.083584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993141, 32.477917, 38.092709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032750, -0.166569, -0.985486,
		0.320252, -0.932278, 0.168218,
		-0.946766, -0.321113, 0.022812,
		32.709110, 32.381584, 38.099552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349995, 32.046909, 37.676369>,  <33.371849, 32.606361, 38.083584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349995, 32.046909, 37.676369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965778, 32.156349, 37.696362>,  <32.735249, 32.222012, 37.708355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965778, 32.156349, 37.696362>,  <33.349995, 32.046909, 37.676369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965778, 32.156349, 37.696362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134446, -0.299466, -0.944587,
		-0.243468, -0.914038, 0.324435,
		-0.960545, 0.273596, 0.049978,
		32.677616, 32.238430, 37.711353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029957, 31.532347, 37.322906>,  <33.349995, 32.046909, 37.676369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029957, 31.532347, 37.322906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790760, 31.852888, 37.316753>,  <32.647240, 32.045212, 37.313061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790760, 31.852888, 37.316753>,  <33.029957, 31.532347, 37.322906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790760, 31.852888, 37.316753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093806, -0.089035, -0.991601,
		-0.795991, -0.591531, 0.128414,
		-0.597996, 0.801352, -0.015382,
		32.611362, 32.093292, 37.312138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494690, 31.339457, 36.800011>,  <33.029957, 31.532347, 37.322906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494690, 31.339457, 36.800011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458447, 31.733395, 36.859158>,  <32.436699, 31.969757, 36.894646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458447, 31.733395, 36.859158>,  <32.494690, 31.339457, 36.800011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458447, 31.733395, 36.859158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137724, 0.134664, -0.981274,
		-0.986318, -0.109277, 0.123436,
		-0.090609, 0.984847, 0.147871,
		32.431263, 32.028851, 36.903519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932671, 31.482866, 36.490231>,  <32.494690, 31.339457, 36.800011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932671, 31.482866, 36.490231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134850, 31.827780, 36.502789>,  <32.256157, 32.034729, 36.510323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134850, 31.827780, 36.502789>,  <31.932671, 31.482866, 36.490231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134850, 31.827780, 36.502789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197663, 0.151126, -0.968551,
		-0.839911, 0.483348, 0.246829,
		0.505449, 0.862285, 0.031392,
		32.286484, 32.086464, 36.512207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560732, 31.929682, 36.048328>,  <31.932671, 31.482866, 36.490231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560732, 31.929682, 36.048328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906281, 32.128777, 36.079269>,  <32.113609, 32.248234, 36.097836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906281, 32.128777, 36.079269>,  <31.560732, 31.929682, 36.048328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906281, 32.128777, 36.079269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079855, 0.286952, -0.954611,
		-0.497343, 0.818484, 0.287636,
		0.863871, 0.497738, 0.077354,
		32.165443, 32.278099, 36.102474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415001, 32.663616, 35.860367>,  <31.560732, 31.929682, 36.048328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415001, 32.663616, 35.860367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790287, 32.536339, 35.805954>,  <32.015457, 32.459972, 35.773308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790287, 32.536339, 35.805954>,  <31.415001, 32.663616, 35.860367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790287, 32.536339, 35.805954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028347, 0.462442, -0.886196,
		0.344892, 0.827586, 0.442890,
		0.938214, -0.318197, -0.136033,
		32.071751, 32.440880, 35.765144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757063, 33.228710, 35.736874>,  <31.415001, 32.663616, 35.860367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757063, 33.228710, 35.736874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016468, 32.959511, 35.594604>,  <32.172112, 32.797989, 35.509243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016468, 32.959511, 35.594604>,  <31.757063, 33.228710, 35.736874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016468, 32.959511, 35.594604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164252, 0.579962, -0.797913,
		0.743272, 0.459037, 0.486654,
		0.648512, -0.673000, -0.355672,
		32.211021, 32.757610, 35.487904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070530, 33.571186, 35.353703>,  <31.757063, 33.228710, 35.736874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070530, 33.571186, 35.353703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198875, 33.215385, 35.223576>,  <32.275883, 33.001904, 35.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198875, 33.215385, 35.223576>,  <32.070530, 33.571186, 35.353703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198875, 33.215385, 35.223576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307616, 0.422726, -0.852452,
		0.895780, 0.173445, 0.409262,
		0.320860, -0.889505, -0.325315,
		32.295132, 32.948532, 35.125980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701248, 33.720440, 35.092602>,  <32.070530, 33.571186, 35.353703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701248, 33.720440, 35.092602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607330, 33.380104, 34.904587>,  <32.550980, 33.175903, 34.791779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607330, 33.380104, 34.904587>,  <32.701248, 33.720440, 35.092602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607330, 33.380104, 34.904587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474930, 0.321497, -0.819195,
		0.848122, -0.415582, 0.328604,
		-0.234798, -0.850842, -0.470041,
		32.536892, 33.124851, 34.763573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290707, 33.534630, 34.828018>,  <32.701248, 33.720440, 35.092602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290707, 33.534630, 34.828018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007923, 33.337070, 34.625523>,  <32.838253, 33.218536, 34.504025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007923, 33.337070, 34.625523>,  <33.290707, 33.534630, 34.828018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007923, 33.337070, 34.625523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331466, 0.400924, -0.854044,
		0.624771, -0.771574, -0.119727,
		-0.706959, -0.493897, -0.506236,
		32.795834, 33.188900, 34.473652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981907, 33.645031, 34.889580>,  <33.290707, 33.534630, 34.828018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981907, 33.645031, 34.889580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360825, 33.586819, 34.775421>,  <34.588177, 33.551891, 34.706928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360825, 33.586819, 34.775421>,  <33.981907, 33.645031, 34.889580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360825, 33.586819, 34.775421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012226, -0.873785, 0.486159,
		-0.320126, -0.464025, -0.825954,
		0.947296, -0.145534, -0.285395,
		34.645012, 33.543159, 34.689804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127579, 32.921070, 34.698429>,  <33.981907, 33.645031, 34.889580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127579, 32.921070, 34.698429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476223, 33.089199, 34.799328>,  <34.685410, 33.190075, 34.859867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476223, 33.089199, 34.799328>,  <34.127579, 32.921070, 34.698429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476223, 33.089199, 34.799328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238865, -0.813522, 0.530213,
		0.428067, -0.401886, -0.809473,
		0.871609, 0.420321, 0.252246,
		34.737705, 33.215294, 34.875000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729103, 32.445751, 34.702599>,  <34.127579, 32.921070, 34.698429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729103, 32.445751, 34.702599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805199, 32.743210, 34.958973>,  <34.850857, 32.921684, 35.112797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805199, 32.743210, 34.958973>,  <34.729103, 32.445751, 34.702599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805199, 32.743210, 34.958973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179297, -0.668193, 0.722060,
		0.965225, -0.022450, -0.260453,
		0.190244, 0.743649, 0.640931,
		34.862270, 32.966305, 35.151253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147560, 32.201668, 35.366905>,  <34.729103, 32.445751, 34.702599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147560, 32.201668, 35.366905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034618, 32.561508, 35.500172>,  <34.966854, 32.777412, 35.580132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034618, 32.561508, 35.500172>,  <35.147560, 32.201668, 35.366905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034618, 32.561508, 35.500172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211314, -0.280440, 0.936323,
		0.935746, 0.334779, -0.110914,
		-0.282357, 0.899598, 0.333164,
		34.949913, 32.831387, 35.600121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707146, 32.473701, 35.771809>,  <35.147560, 32.201668, 35.366905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707146, 32.473701, 35.771809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365517, 32.642868, 35.892937>,  <35.160538, 32.744366, 35.965614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365517, 32.642868, 35.892937>,  <35.707146, 32.473701, 35.771809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365517, 32.642868, 35.892937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195290, -0.278869, 0.940263,
		0.482096, 0.862193, 0.155584,
		-0.854075, 0.422913, 0.302819,
		35.109295, 32.769741, 35.983784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034443, 32.933781, 36.297237>,  <35.707146, 32.473701, 35.771809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034443, 32.933781, 36.297237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642509, 32.872059, 36.348026>,  <35.407349, 32.835026, 36.378498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642509, 32.872059, 36.348026>,  <36.034443, 32.933781, 36.297237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642509, 32.872059, 36.348026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167510, -0.287753, 0.942941,
		-0.108967, 0.945192, 0.307797,
		-0.979830, -0.154309, 0.126974,
		35.348560, 32.825768, 36.386120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919319, 33.240620, 36.989437>,  <36.034443, 32.933781, 36.297237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919319, 33.240620, 36.989437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636402, 32.971928, 36.901329>,  <35.466652, 32.810711, 36.848465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636402, 32.971928, 36.901329>,  <35.919319, 33.240620, 36.989437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636402, 32.971928, 36.901329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127552, -0.427745, 0.894854,
		-0.695322, 0.604825, 0.388220,
		-0.707289, -0.671730, -0.220274,
		35.424213, 32.770409, 36.835247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487198, 33.168304, 37.634926>,  <35.919319, 33.240620, 36.989437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487198, 33.168304, 37.634926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403519, 32.841103, 37.420597>,  <35.353310, 32.644783, 37.292000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403519, 32.841103, 37.420597>,  <35.487198, 33.168304, 37.634926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403519, 32.841103, 37.420597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149386, -0.568246, 0.809184,
		-0.966395, 0.089236, 0.241075,
		-0.209198, -0.818005, -0.535820,
		35.340759, 32.595699, 37.259850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894756, 32.772514, 37.955120>,  <35.487198, 33.168304, 37.634926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894756, 32.772514, 37.955120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103146, 32.503029, 37.745476>,  <35.228180, 32.341335, 37.619690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103146, 32.503029, 37.745476>,  <34.894756, 32.772514, 37.955120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103146, 32.503029, 37.745476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005417, -0.611400, 0.791303,
		-0.853557, -0.415086, -0.314872,
		0.520972, -0.673716, -0.524114,
		35.259438, 32.300915, 37.588242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571465, 32.230900, 38.088715>,  <34.894756, 32.772514, 37.955120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571465, 32.230900, 38.088715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933281, 32.106728, 37.971790>,  <35.150372, 32.032227, 37.901638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933281, 32.106728, 37.971790>,  <34.571465, 32.230900, 38.088715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933281, 32.106728, 37.971790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051565, -0.600866, 0.797685,
		-0.423260, -0.736610, -0.527500,
		0.904539, -0.310427, -0.292306,
		35.204643, 32.013599, 37.884098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596073, 31.548208, 38.266644>,  <34.571465, 32.230900, 38.088715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596073, 31.548208, 38.266644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987404, 31.599409, 38.201546>,  <35.222202, 31.630129, 38.162487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987404, 31.599409, 38.201546>,  <34.596073, 31.548208, 38.266644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987404, 31.599409, 38.201546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207042, -0.599161, 0.773395,
		0.001487, -0.790330, -0.612679,
		0.978331, 0.128000, -0.162741,
		35.280903, 31.637810, 38.152725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890739, 30.792936, 38.362114>,  <34.596073, 31.548208, 38.266644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890739, 30.792936, 38.362114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187065, 31.060045, 38.391163>,  <35.364861, 31.220310, 38.408592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187065, 31.060045, 38.391163>,  <34.890739, 30.792936, 38.362114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187065, 31.060045, 38.391163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401140, -0.526530, 0.749568,
		0.538778, -0.526160, -0.657931,
		0.740813, 0.667774, 0.072619,
		35.409309, 31.260378, 38.412949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553612, 30.429409, 38.459377>,  <34.890739, 30.792936, 38.362114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553612, 30.429409, 38.459377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590557, 30.799480, 38.606628>,  <35.612724, 31.021523, 38.694981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590557, 30.799480, 38.606628>,  <35.553612, 30.429409, 38.459377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590557, 30.799480, 38.606628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446098, -0.368976, 0.815385,
		0.890206, 0.088913, -0.446798,
		0.092359, 0.925176, 0.368128,
		35.618263, 31.077034, 38.717068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212952, 30.472925, 38.803791>,  <35.553612, 30.429409, 38.459377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212952, 30.472925, 38.803791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994896, 30.761665, 38.974319>,  <35.864063, 30.934910, 39.076637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994896, 30.761665, 38.974319>,  <36.212952, 30.472925, 38.803791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994896, 30.761665, 38.974319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218831, -0.368379, 0.903554,
		0.809280, 0.585858, 0.042856,
		-0.545142, 0.721850, 0.426326,
		35.831352, 30.978220, 39.102219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581673, 30.707151, 39.375420>,  <36.212952, 30.472925, 38.803791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581673, 30.707151, 39.375420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209072, 30.823523, 39.462749>,  <35.985512, 30.893345, 39.515148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209072, 30.823523, 39.462749>,  <36.581673, 30.707151, 39.375420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209072, 30.823523, 39.462749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070793, -0.443749, 0.893350,
		0.356784, 0.847612, 0.392757,
		-0.931500, 0.290929, 0.218328,
		35.929623, 30.910801, 39.528248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702587, 30.871319, 40.028667>,  <36.581673, 30.707151, 39.375420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702587, 30.871319, 40.028667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304272, 30.844547, 40.003601>,  <36.065281, 30.828484, 39.988560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304272, 30.844547, 40.003601>,  <36.702587, 30.871319, 40.028667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304272, 30.844547, 40.003601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026664, -0.442574, 0.896335,
		-0.087729, 0.894230, 0.438925,
		-0.995787, -0.066931, -0.062670,
		36.005535, 30.824469, 39.984798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433823, 31.292379, 40.694588>,  <36.702587, 30.871319, 40.028667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433823, 31.292379, 40.694588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117577, 31.074514, 40.582680>,  <35.927830, 30.943796, 40.515533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117577, 31.074514, 40.582680>,  <36.433823, 31.292379, 40.694588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117577, 31.074514, 40.582680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155718, -0.263038, 0.952136,
		-0.592184, 0.796337, 0.123147,
		-0.790614, -0.544663, -0.279771,
		35.880394, 30.911116, 40.498749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931244, 31.498133, 41.062389>,  <36.433823, 31.292379, 40.694588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931244, 31.498133, 41.062389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796047, 31.141289, 40.942455>,  <35.714928, 30.927183, 40.870495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796047, 31.141289, 40.942455>,  <35.931244, 31.498133, 41.062389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796047, 31.141289, 40.942455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322734, -0.189408, 0.927344,
		-0.884082, 0.410206, -0.223895,
		-0.337995, -0.892108, -0.299840,
		35.694649, 30.873657, 40.852505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529114, 31.404774, 41.540195>,  <35.931244, 31.498133, 41.062389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529114, 31.404774, 41.540195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556728, 31.049057, 41.359356>,  <35.573299, 30.835627, 41.250854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556728, 31.049057, 41.359356>,  <35.529114, 31.404774, 41.540195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556728, 31.049057, 41.359356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402662, -0.439462, 0.802955,
		-0.912741, 0.126607, -0.388425,
		0.069038, -0.889294, -0.452095,
		35.577438, 30.782269, 41.223728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834274, 31.097767, 41.446552>,  <35.529114, 31.404774, 41.540195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834274, 31.097767, 41.446552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103977, 30.806295, 41.494553>,  <35.265800, 30.631413, 41.523354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103977, 30.806295, 41.494553>,  <34.834274, 31.097767, 41.446552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103977, 30.806295, 41.494553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547807, -0.384534, 0.742995,
		-0.495261, -0.566709, -0.658451,
		0.674259, -0.728680, 0.120003,
		35.306255, 30.587692, 41.530552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459980, 30.523321, 41.478157>,  <34.834274, 31.097767, 41.446552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459980, 30.523321, 41.478157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814190, 30.424595, 41.635597>,  <35.026718, 30.365360, 41.730061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814190, 30.424595, 41.635597>,  <34.459980, 30.523321, 41.478157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814190, 30.424595, 41.635597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459749, -0.587487, 0.665950,
		0.066871, -0.770676, -0.633709,
		0.885528, -0.246814, 0.393603,
		35.079849, 30.350550, 41.753677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394257, 29.831430, 41.830547>,  <34.459980, 30.523321, 41.478157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394257, 29.831430, 41.830547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730480, 29.964893, 42.001255>,  <34.932213, 30.044971, 42.103680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730480, 29.964893, 42.001255>,  <34.394257, 29.831430, 41.830547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730480, 29.964893, 42.001255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185166, -0.563394, 0.805171,
		0.509090, -0.755818, -0.411784,
		0.840560, 0.333656, 0.426770,
		34.982647, 30.064991, 42.129288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707413, 29.217434, 42.246872>,  <34.394257, 29.831430, 41.830547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707413, 29.217434, 42.246872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857426, 29.560362, 42.387932>,  <34.947433, 29.766119, 42.472569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857426, 29.560362, 42.387932>,  <34.707413, 29.217434, 42.246872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857426, 29.560362, 42.387932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099654, -0.340923, 0.934794,
		0.921642, -0.385716, -0.042420,
		0.375028, 0.857318, 0.352648,
		34.969933, 29.817556, 42.493725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249229, 29.016157, 42.729012>,  <34.707413, 29.217434, 42.246872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249229, 29.016157, 42.729012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171268, 29.387558, 42.855438>,  <35.124493, 29.610399, 42.931293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171268, 29.387558, 42.855438>,  <35.249229, 29.016157, 42.729012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171268, 29.387558, 42.855438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092539, -0.338215, 0.936508,
		0.976448, 0.153279, 0.151841,
		-0.194901, 0.928502, 0.316065,
		35.112797, 29.666109, 42.950256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596176, 29.081022, 43.387672>,  <35.249229, 29.016157, 42.729012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596176, 29.081022, 43.387672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352280, 29.395605, 43.427082>,  <35.205944, 29.584354, 43.450726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352280, 29.395605, 43.427082>,  <35.596176, 29.081022, 43.387672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352280, 29.395605, 43.427082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249341, -0.308317, 0.918025,
		0.752363, 0.535188, 0.384088,
		-0.609737, 0.786457, 0.098522,
		35.169357, 29.631542, 43.456638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835636, 29.461910, 44.033630>,  <35.596176, 29.081022, 43.387672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835636, 29.461910, 44.033630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451435, 29.531034, 43.946384>,  <35.220913, 29.572508, 43.894039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451435, 29.531034, 43.946384>,  <35.835636, 29.461910, 44.033630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451435, 29.531034, 43.946384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252431, -0.211224, 0.944279,
		0.117109, 0.962040, 0.246503,
		-0.960502, 0.172809, -0.218112,
		35.163284, 29.582876, 43.880951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646496, 30.057333, 44.446533>,  <35.835636, 29.461910, 44.033630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646496, 30.057333, 44.446533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307503, 29.862349, 44.362488>,  <35.104107, 29.745358, 44.312061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307503, 29.862349, 44.362488>,  <35.646496, 30.057333, 44.446533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307503, 29.862349, 44.362488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189497, -0.091917, 0.977570,
		-0.495839, 0.868294, -0.014474,
		-0.847487, -0.487460, -0.210115,
		35.053257, 29.716110, 44.299454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224163, 30.348991, 44.914776>,  <35.646496, 30.057333, 44.446533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224163, 30.348991, 44.914776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066704, 30.005610, 44.783264>,  <34.972229, 29.799582, 44.704357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066704, 30.005610, 44.783264>,  <35.224163, 30.348991, 44.914776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066704, 30.005610, 44.783264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287709, -0.224638, 0.931000,
		-0.873078, 0.461080, -0.158557,
		-0.393648, -0.858454, -0.328783,
		34.948608, 29.748074, 44.684628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645275, 30.379692, 45.342415>,  <35.224163, 30.348991, 44.914776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645275, 30.379692, 45.342415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728363, 30.006634, 45.224415>,  <34.778217, 29.782799, 45.153614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728363, 30.006634, 45.224415>,  <34.645275, 30.379692, 45.342415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728363, 30.006634, 45.224415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194374, -0.334915, 0.921982,
		-0.958682, -0.134174, -0.250850,
		0.207719, -0.932646, -0.294997,
		34.790680, 29.726839, 45.135918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072624, 29.960976, 45.605854>,  <34.645275, 30.379692, 45.342415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072624, 29.960976, 45.605854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395931, 29.733505, 45.544777>,  <34.589916, 29.597023, 45.508133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395931, 29.733505, 45.544777>,  <34.072624, 29.960976, 45.605854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395931, 29.733505, 45.544777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017757, -0.235657, 0.971674,
		-0.588549, -0.788083, -0.180376,
		0.808266, -0.568675, -0.152690,
		34.638412, 29.562902, 45.498970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840317, 29.447540, 46.038116>,  <34.072624, 29.960976, 45.605854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840317, 29.447540, 46.038116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225327, 29.372044, 45.960224>,  <34.456333, 29.326746, 45.913486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225327, 29.372044, 45.960224>,  <33.840317, 29.447540, 46.038116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225327, 29.372044, 45.960224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093213, -0.444064, 0.891133,
		-0.254666, -0.875891, -0.409830,
		0.962526, -0.188740, -0.194732,
		34.514084, 29.315422, 45.901806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006863, 28.737347, 46.198818>,  <33.840317, 29.447540, 46.038116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006863, 28.737347, 46.198818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353249, 28.937223, 46.206966>,  <34.561081, 29.057150, 46.211853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353249, 28.937223, 46.206966>,  <34.006863, 28.737347, 46.198818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353249, 28.937223, 46.206966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065345, -0.153434, 0.985996,
		0.495819, -0.852506, -0.165521,
		0.865964, 0.499691, 0.020369,
		34.613037, 29.087132, 46.213078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406868, 28.285862, 46.630032>,  <34.006863, 28.737347, 46.198818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406868, 28.285862, 46.630032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574371, 28.648630, 46.648521>,  <34.674873, 28.866291, 46.659615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574371, 28.648630, 46.648521>,  <34.406868, 28.285862, 46.630032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574371, 28.648630, 46.648521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082764, -0.088803, 0.992605,
		0.904319, -0.411834, -0.112247,
		0.418756, 0.906921, 0.046221,
		34.699997, 28.920706, 46.662388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938549, 28.220810, 47.117897>,  <34.406868, 28.285862, 46.630032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938549, 28.220810, 47.117897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884525, 28.617136, 47.115261>,  <34.852112, 28.854931, 47.113678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884525, 28.617136, 47.115261>,  <34.938549, 28.220810, 47.117897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884525, 28.617136, 47.115261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182199, 0.031377, 0.982761,
		0.973941, 0.131533, -0.184763,
		-0.135063, 0.990815, -0.006594,
		34.844006, 28.914381, 47.113281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395527, 28.423891, 47.643227>,  <34.938549, 28.220810, 47.117897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395527, 28.423891, 47.643227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169567, 28.750122, 47.593063>,  <35.033993, 28.945860, 47.562965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169567, 28.750122, 47.593063>,  <35.395527, 28.423891, 47.643227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169567, 28.750122, 47.593063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234959, 0.304675, 0.923021,
		0.791004, 0.491943, -0.363737,
		-0.564895, 0.815577, -0.125413,
		35.000099, 28.994795, 47.555439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770931, 29.031855, 47.888454>,  <35.395527, 28.423891, 47.643227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770931, 29.031855, 47.888454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380138, 29.116753, 47.897060>,  <35.145664, 29.167692, 47.902225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380138, 29.116753, 47.897060>,  <35.770931, 29.031855, 47.888454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380138, 29.116753, 47.897060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085174, 0.295592, 0.951510,
		0.195594, 0.931438, -0.306865,
		-0.976979, 0.212246, 0.021518,
		35.087044, 29.180426, 47.903515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682220, 29.709986, 48.245743>,  <35.770931, 29.031855, 47.888454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682220, 29.709986, 48.245743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318157, 29.544283, 48.244820>,  <35.099720, 29.444860, 48.244267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318157, 29.544283, 48.244820>,  <35.682220, 29.709986, 48.245743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318157, 29.544283, 48.244820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134219, 0.289613, 0.947687,
		-0.391918, 0.862853, -0.319194,
		-0.910157, -0.414257, -0.002307,
		35.045109, 29.420006, 48.244129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065186, 30.233656, 48.582230>,  <35.682220, 29.709986, 48.245743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065186, 30.233656, 48.582230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912533, 29.864767, 48.607098>,  <34.820942, 29.643435, 48.622021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912533, 29.864767, 48.607098>,  <35.065186, 30.233656, 48.582230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912533, 29.864767, 48.607098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143795, 0.125680, 0.981594,
		-0.913060, 0.365670, -0.180574,
		-0.381634, -0.922220, 0.062172,
		34.798042, 29.588100, 48.625748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116108, 30.756905, 49.015594>,  <35.065186, 30.233656, 48.582230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116108, 30.756905, 49.015594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030380, 31.139923, 49.092712>,  <34.978943, 31.369734, 49.138985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030380, 31.139923, 49.092712>,  <35.116108, 30.756905, 49.015594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030380, 31.139923, 49.092712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361814, 0.105516, -0.926260,
		-0.907281, -0.268271, 0.323840,
		-0.214319, 0.957547, 0.192797,
		34.966084, 31.427187, 49.150551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429710, 31.020405, 48.672115>,  <35.116108, 30.756905, 49.015594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429710, 31.020405, 48.672115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650455, 31.346342, 48.743084>,  <34.782902, 31.541904, 48.785664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650455, 31.346342, 48.743084>,  <34.429710, 31.020405, 48.672115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650455, 31.346342, 48.743084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204933, 0.338742, -0.918290,
		-0.808362, 0.470411, 0.353928,
		0.551864, 0.814842, 0.177423,
		34.816013, 31.590796, 48.796310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908298, 31.550861, 48.487621>,  <34.429710, 31.020405, 48.672115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908298, 31.550861, 48.487621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274212, 31.712078, 48.476826>,  <34.493759, 31.808807, 48.470348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274212, 31.712078, 48.476826>,  <33.908298, 31.550861, 48.487621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274212, 31.712078, 48.476826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157142, 0.293525, -0.942947,
		-0.372123, 0.866835, 0.331847,
		0.914785, 0.403040, -0.026989,
		34.548649, 31.832991, 48.468727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869633, 32.239117, 48.225899>,  <33.908298, 31.550861, 48.487621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869633, 32.239117, 48.225899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234554, 32.095928, 48.146343>,  <34.453506, 32.010017, 48.098610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234554, 32.095928, 48.146343>,  <33.869633, 32.239117, 48.225899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234554, 32.095928, 48.146343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073846, 0.333900, -0.939712,
		0.402796, 0.871991, 0.278184,
		0.912306, -0.357969, -0.198886,
		34.508247, 31.988537, 48.086678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180199, 32.739197, 47.784309>,  <33.869633, 32.239117, 48.225899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180199, 32.739197, 47.784309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413452, 32.417667, 47.737278>,  <34.553406, 32.224751, 47.709061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413452, 32.417667, 47.737278>,  <34.180199, 32.739197, 47.784309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413452, 32.417667, 47.737278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229064, 0.301554, -0.925524,
		0.779414, 0.512771, 0.359973,
		0.583133, -0.803823, -0.117578,
		34.588390, 32.176521, 47.702003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619316, 32.951103, 47.291653>,  <34.180199, 32.739197, 47.784309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619316, 32.951103, 47.291653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702938, 32.560116, 47.279972>,  <34.753113, 32.325523, 47.272964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702938, 32.560116, 47.279972>,  <34.619316, 32.951103, 47.291653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702938, 32.560116, 47.279972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403894, 0.113500, -0.907738,
		0.890598, 0.177976, 0.418521,
		0.209058, -0.977467, -0.029199,
		34.765656, 32.266876, 47.271214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341400, 32.896023, 46.919128>,  <34.619316, 32.951103, 47.291653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341400, 32.896023, 46.919128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096859, 32.580193, 46.897896>,  <34.950134, 32.390694, 46.885155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096859, 32.580193, 46.897896>,  <35.341400, 32.896023, 46.919128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096859, 32.580193, 46.897896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200924, -0.089992, -0.975465,
		0.765423, -0.607023, 0.213661,
		-0.611357, -0.789573, -0.053083,
		34.913452, 32.343319, 46.881969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610916, 32.592175, 46.373035>,  <35.341400, 32.896023, 46.919128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610916, 32.592175, 46.373035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256317, 32.412788, 46.418648>,  <35.043556, 32.305157, 46.446014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256317, 32.412788, 46.418648>,  <35.610916, 32.592175, 46.373035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256317, 32.412788, 46.418648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089040, -0.076494, -0.993086,
		0.454084, -0.890523, 0.027881,
		-0.886498, -0.448462, 0.114027,
		34.990368, 32.278252, 46.452854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582767, 32.042580, 45.926662>,  <35.610916, 32.592175, 46.373035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582767, 32.042580, 45.926662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200237, 32.125729, 46.008865>,  <34.970718, 32.175617, 46.058186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200237, 32.125729, 46.008865>,  <35.582767, 32.042580, 45.926662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200237, 32.125729, 46.008865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220967, -0.053874, -0.973792,
		-0.191349, -0.976672, 0.097454,
		-0.956326, 0.207869, 0.205504,
		34.913338, 32.188087, 46.070515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260616, 31.694433, 45.452133>,  <35.582767, 32.042580, 45.926662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260616, 31.694433, 45.452133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974438, 31.946774, 45.572247>,  <34.802731, 32.098179, 45.644314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974438, 31.946774, 45.572247>,  <35.260616, 31.694433, 45.452133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974438, 31.946774, 45.572247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258525, 0.160247, -0.952620,
		-0.649079, -0.759177, 0.048443,
		-0.715444, 0.630850, 0.300279,
		34.759804, 32.136028, 45.662331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720356, 31.582596, 44.962662>,  <35.260616, 31.694433, 45.452133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720356, 31.582596, 44.962662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595356, 31.926876, 45.123428>,  <34.520355, 32.133446, 45.219891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595356, 31.926876, 45.123428>,  <34.720356, 31.582596, 44.962662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595356, 31.926876, 45.123428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355472, 0.286411, -0.889724,
		-0.880899, -0.420909, 0.216452,
		-0.312499, 0.860700, 0.401920,
		34.501606, 32.185085, 45.244003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038601, 31.729561, 44.676628>,  <34.720356, 31.582596, 44.962662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038601, 31.729561, 44.676628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133648, 32.095936, 44.805992>,  <34.190678, 32.315762, 44.883610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133648, 32.095936, 44.805992>,  <34.038601, 31.729561, 44.676628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133648, 32.095936, 44.805992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265932, 0.381566, -0.885261,
		-0.934247, 0.124351, 0.334245,
		0.237620, 0.915939, 0.323408,
		34.204933, 32.370716, 44.903015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512196, 32.181038, 44.493771>,  <34.038601, 31.729561, 44.676628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512196, 32.181038, 44.493771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830975, 32.420528, 44.525803>,  <34.022240, 32.564220, 44.545021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830975, 32.420528, 44.525803>,  <33.512196, 32.181038, 44.493771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830975, 32.420528, 44.525803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181834, 0.364201, -0.913397,
		-0.576036, 0.713364, 0.399116,
		0.796943, 0.598723, 0.080078,
		34.070057, 32.600143, 44.549828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344425, 32.842255, 44.238457>,  <33.512196, 32.181038, 44.493771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344425, 32.842255, 44.238457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742596, 32.819935, 44.207462>,  <33.981499, 32.806541, 44.188866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742596, 32.819935, 44.207462>,  <33.344425, 32.842255, 44.238457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742596, 32.819935, 44.207462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057923, 0.292312, -0.954567,
		0.075917, 0.954694, 0.287744,
		0.995430, -0.055801, -0.077490,
		34.041225, 32.803196, 44.184216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673538, 33.512947, 43.996567>,  <33.344425, 32.842255, 44.238457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673538, 33.512947, 43.996567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930122, 33.223206, 43.895496>,  <34.084072, 33.049362, 43.834854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930122, 33.223206, 43.895496>,  <33.673538, 33.512947, 43.996567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930122, 33.223206, 43.895496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046920, 0.365795, -0.929512,
		0.765722, 0.584387, 0.268629,
		0.641458, -0.724352, -0.252678,
		34.122559, 33.005901, 43.819695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055374, 33.854580, 43.486271>,  <33.673538, 33.512947, 43.996567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055374, 33.854580, 43.486271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122131, 33.464703, 43.426792>,  <34.162186, 33.230774, 43.391106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122131, 33.464703, 43.426792>,  <34.055374, 33.854580, 43.486271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122131, 33.464703, 43.426792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216471, 0.183357, -0.958916,
		0.961919, 0.127846, 0.241594,
		0.166892, -0.974698, -0.148699,
		34.172199, 33.172295, 43.382183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736198, 33.833862, 43.103260>,  <34.055374, 33.854580, 43.486271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736198, 33.833862, 43.103260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563622, 33.476540, 43.052891>,  <34.460075, 33.262146, 43.022667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563622, 33.476540, 43.052891>,  <34.736198, 33.833862, 43.103260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563622, 33.476540, 43.052891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312423, -0.017003, -0.949791,
		0.846316, -0.449122, 0.286426,
		-0.431442, -0.893309, -0.125926,
		34.434189, 33.208546, 43.015114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242168, 33.418236, 42.774044>,  <34.736198, 33.833862, 43.103260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242168, 33.418236, 42.774044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913513, 33.213032, 42.674660>,  <34.716320, 33.089909, 42.615028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913513, 33.213032, 42.674660>,  <35.242168, 33.418236, 42.774044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913513, 33.213032, 42.674660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332568, -0.077434, -0.939895,
		0.462934, -0.854885, 0.234233,
		-0.821639, -0.513007, -0.248460,
		34.667023, 33.059132, 42.600121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430458, 32.873932, 42.294651>,  <35.242168, 33.418236, 42.774044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430458, 32.873932, 42.294651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036537, 32.886482, 42.226322>,  <34.800186, 32.894012, 42.185326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036537, 32.886482, 42.226322>,  <35.430458, 32.873932, 42.294651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036537, 32.886482, 42.226322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164774, -0.142132, -0.976037,
		-0.054902, -0.989350, 0.134802,
		-0.984802, 0.031374, -0.170822,
		34.741096, 32.895897, 42.175076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259331, 32.349949, 41.762726>,  <35.430458, 32.873932, 42.294651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259331, 32.349949, 41.762726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966404, 32.621162, 41.737495>,  <34.790646, 32.783890, 41.722359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966404, 32.621162, 41.737495>,  <35.259331, 32.349949, 41.762726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966404, 32.621162, 41.737495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198457, 0.123906, -0.972246,
		-0.651399, -0.724514, -0.225299,
		-0.732321, 0.678032, -0.063073,
		34.746708, 32.824574, 41.718575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049473, 32.235512, 41.094547>,  <35.259331, 32.349949, 41.762726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049473, 32.235512, 41.094547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859173, 32.575222, 41.186100>,  <34.744991, 32.779049, 41.241032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859173, 32.575222, 41.186100>,  <35.049473, 32.235512, 41.094547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859173, 32.575222, 41.186100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059894, 0.290892, -0.954879,
		-0.877538, -0.440577, -0.189259,
		-0.475752, 0.849278, 0.228881,
		34.716446, 32.830006, 41.254765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485775, 32.293533, 40.587315>,  <35.049473, 32.235512, 41.094547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485775, 32.293533, 40.587315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571167, 32.656002, 40.733349>,  <34.622402, 32.873482, 40.820969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571167, 32.656002, 40.733349>,  <34.485775, 32.293533, 40.587315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571167, 32.656002, 40.733349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391165, 0.263152, -0.881896,
		-0.895219, 0.331073, -0.298285,
		0.213478, 0.906169, 0.365083,
		34.635212, 32.927853, 40.842873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278687, 32.740627, 40.036957>,  <34.485775, 32.293533, 40.587315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278687, 32.740627, 40.036957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537334, 32.953728, 40.255337>,  <34.692524, 33.081589, 40.386364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537334, 32.953728, 40.255337>,  <34.278687, 32.740627, 40.036957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537334, 32.953728, 40.255337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452208, 0.308673, -0.836796,
		-0.614323, 0.787972, -0.041319,
		0.646618, 0.532748, 0.545953,
		34.731319, 33.113552, 40.419121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364594, 33.318115, 39.592636>,  <34.278687, 32.740627, 40.036957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364594, 33.318115, 39.592636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657833, 33.338135, 39.863945>,  <34.833778, 33.350147, 40.026730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657833, 33.338135, 39.863945>,  <34.364594, 33.318115, 39.592636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657833, 33.338135, 39.863945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599978, 0.422065, -0.679623,
		-0.320290, 0.905183, 0.279388,
		0.733103, 0.050050, 0.678273,
		34.877766, 33.353149, 40.067429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580143, 34.027561, 39.712761>,  <34.364594, 33.318115, 39.592636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580143, 34.027561, 39.712761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890961, 33.788979, 39.793201>,  <35.077454, 33.645828, 39.841465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890961, 33.788979, 39.793201>,  <34.580143, 34.027561, 39.712761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890961, 33.788979, 39.793201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508414, 0.406382, -0.759190,
		0.371097, 0.692169, 0.619023,
		0.777047, -0.596453, 0.201101,
		35.124073, 33.610043, 39.853531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066635, 34.477699, 39.589157>,  <34.580143, 34.027561, 39.712761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066635, 34.477699, 39.589157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266586, 34.131302, 39.594463>,  <35.386559, 33.923462, 39.597649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266586, 34.131302, 39.594463>,  <35.066635, 34.477699, 39.589157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266586, 34.131302, 39.594463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679386, 0.382574, -0.626157,
		0.537173, 0.322015, 0.779584,
		0.499880, -0.865993, 0.013264,
		35.416550, 33.871506, 39.598442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735931, 34.618832, 39.776623>,  <35.066635, 34.477699, 39.589157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735931, 34.618832, 39.776623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773220, 34.267250, 39.589542>,  <35.795593, 34.056301, 39.477295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773220, 34.267250, 39.589542>,  <35.735931, 34.618832, 39.776623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773220, 34.267250, 39.589542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713882, 0.386453, -0.583974,
		0.694033, -0.279450, 0.663495,
		0.093218, -0.878955, -0.467706,
		35.801186, 34.003563, 39.449230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529949, 34.385639, 39.816521>,  <35.735931, 34.618832, 39.776623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529949, 34.385639, 39.816521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349922, 34.197803, 39.512699>,  <36.241905, 34.085102, 39.330406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349922, 34.197803, 39.512699>,  <36.529949, 34.385639, 39.816521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349922, 34.197803, 39.512699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683845, 0.365755, -0.631332,
		0.574277, -0.803561, 0.156510,
		-0.450069, -0.469588, -0.759556,
		36.214901, 34.056927, 39.284832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092949, 34.102592, 39.488670>,  <36.529949, 34.385639, 39.816521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092949, 34.102592, 39.488670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792789, 34.133144, 39.226044>,  <36.612694, 34.151474, 39.068470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792789, 34.133144, 39.226044>,  <37.092949, 34.102592, 39.488670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792789, 34.133144, 39.226044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639487, 0.335193, -0.691883,
		0.167229, -0.939048, -0.300372,
		-0.750394, 0.076381, -0.656563,
		36.567673, 34.156059, 39.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398373, 33.898663, 38.911762>,  <37.092949, 34.102592, 39.488670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398373, 33.898663, 38.911762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076466, 34.092415, 38.774517>,  <36.883320, 34.208664, 38.692169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076466, 34.092415, 38.774517>,  <37.398373, 33.898663, 38.911762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076466, 34.092415, 38.774517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567195, 0.457036, -0.685134,
		-0.175047, -0.745987, -0.642544,
		-0.804766, 0.484378, -0.343117,
		36.835037, 34.237728, 38.671581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478756, 33.849625, 38.197140>,  <37.398373, 33.898663, 38.911762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478756, 33.849625, 38.197140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220097, 34.147686, 38.262371>,  <37.064899, 34.326523, 38.301510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220097, 34.147686, 38.262371>,  <37.478756, 33.849625, 38.197140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220097, 34.147686, 38.262371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471111, 0.558290, -0.682911,
		-0.599915, -0.364778, -0.712067,
		-0.646650, 0.745151, 0.163076,
		37.026100, 34.371231, 38.311295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238869, 34.020069, 37.500004>,  <37.478756, 33.849625, 38.197140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238869, 34.020069, 37.500004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157345, 34.335243, 37.732426>,  <37.108433, 34.524349, 37.871880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157345, 34.335243, 37.732426>,  <37.238869, 34.020069, 37.500004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157345, 34.335243, 37.732426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536092, 0.586438, -0.607204,
		-0.819188, 0.187745, -0.541925,
		-0.203805, 0.787936, 0.581052,
		37.096203, 34.571625, 37.906742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084709, 34.554424, 37.010387>,  <37.238869, 34.020069, 37.500004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084709, 34.554424, 37.010387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153530, 34.729969, 37.363159>,  <37.194824, 34.835297, 37.574821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153530, 34.729969, 37.363159>,  <37.084709, 34.554424, 37.010387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153530, 34.729969, 37.363159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412397, 0.780959, -0.469075,
		-0.894609, 0.444412, -0.046617,
		0.172057, 0.438863, 0.881927,
		37.205147, 34.861629, 37.627739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827908, 35.239689, 37.011116>,  <37.084709, 34.554424, 37.010387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827908, 35.239689, 37.011116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098347, 35.255825, 37.305401>,  <37.260609, 35.265507, 37.481972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098347, 35.255825, 37.305401>,  <36.827908, 35.239689, 37.011116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098347, 35.255825, 37.305401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389100, 0.828370, -0.402994,
		-0.625698, 0.558726, 0.544360,
		0.676095, 0.040342, 0.735710,
		37.301174, 35.267929, 37.526115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909786, 35.886616, 37.170879>,  <36.827908, 35.239689, 37.011116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909786, 35.886616, 37.170879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239517, 35.766220, 37.362667>,  <37.437355, 35.693985, 37.477741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239517, 35.766220, 37.362667>,  <36.909786, 35.886616, 37.170879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239517, 35.766220, 37.362667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483428, 0.814984, -0.319530,
		-0.294587, 0.495187, 0.817318,
		0.824328, -0.300985, 0.479470,
		37.486816, 35.675926, 37.506508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180614, 36.486614, 37.518002>,  <36.909786, 35.886616, 37.170879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180614, 36.486614, 37.518002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473331, 36.223713, 37.445900>,  <37.648960, 36.065971, 37.402637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473331, 36.223713, 37.445900>,  <37.180614, 36.486614, 37.518002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473331, 36.223713, 37.445900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552507, 0.726982, -0.407716,
		0.399017, 0.198772, 0.895140,
		0.731793, -0.657257, -0.180255,
		37.692871, 36.026535, 37.391823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744217, 36.914722, 37.571770>,  <37.180614, 36.486614, 37.518002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744217, 36.914722, 37.571770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883766, 36.590351, 37.383865>,  <37.967495, 36.395729, 37.271122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883766, 36.590351, 37.383865>,  <37.744217, 36.914722, 37.571770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883766, 36.590351, 37.383865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806320, 0.515200, -0.290544,
		0.477633, -0.277416, 0.833611,
		0.348875, -0.810931, -0.469763,
		37.988430, 36.347073, 37.242935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335838, 36.800434, 37.879768>,  <37.744217, 36.914722, 37.571770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335838, 36.800434, 37.879768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377621, 36.633240, 37.518799>,  <38.402691, 36.532921, 37.302216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377621, 36.633240, 37.518799>,  <38.335838, 36.800434, 37.879768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377621, 36.633240, 37.518799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877979, 0.464989, -0.113746,
		0.467163, -0.780430, 0.415558,
		0.104459, -0.417989, -0.902426,
		38.408958, 36.507843, 37.248070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928432, 36.486198, 37.851967>,  <38.335838, 36.800434, 37.879768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928432, 36.486198, 37.851967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869141, 36.548985, 37.461399>,  <38.833565, 36.586655, 37.227058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869141, 36.548985, 37.461399>,  <38.928432, 36.486198, 37.851967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869141, 36.548985, 37.461399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858984, 0.509704, -0.048467,
		0.490075, -0.845910, -0.210386,
		-0.148233, 0.156966, -0.976416,
		38.824669, 36.596073, 37.168472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623718, 36.625080, 37.579716>,  <38.928432, 36.486198, 37.851967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623718, 36.625080, 37.579716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389160, 36.718571, 37.269485>,  <39.248425, 36.774666, 37.083347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389160, 36.718571, 37.269485>,  <39.623718, 36.625080, 37.579716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389160, 36.718571, 37.269485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736762, 0.551811, -0.390752,
		0.336641, -0.800547, -0.495779,
		-0.586392, 0.233728, -0.775575,
		39.213242, 36.788689, 37.036812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020084, 36.520493, 36.908024>,  <39.623718, 36.625080, 37.579716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020084, 36.520493, 36.908024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724777, 36.790249, 36.902847>,  <39.547592, 36.952103, 36.899742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724777, 36.790249, 36.902847>,  <40.020084, 36.520493, 36.908024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724777, 36.790249, 36.902847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642682, 0.697472, -0.317006,
		-0.204759, -0.242352, -0.948335,
		-0.738264, 0.674388, -0.012941,
		39.503300, 36.992565, 36.898964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024906, 36.798943, 36.282837>,  <40.020084, 36.520493, 36.908024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024906, 36.798943, 36.282837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879974, 37.034473, 36.571835>,  <39.793015, 37.175793, 36.745232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879974, 37.034473, 36.571835>,  <40.024906, 36.798943, 36.282837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879974, 37.034473, 36.571835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689642, 0.690821, -0.217164,
		-0.626986, 0.419577, -0.656387,
		-0.362328, 0.588831, 0.722493,
		39.771275, 37.211124, 36.788582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996353, 37.165630, 35.688190>,  <40.024906, 36.798943, 36.282837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996353, 37.165630, 35.688190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944599, 37.560841, 35.721813>,  <39.913548, 37.797966, 35.741985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944599, 37.560841, 35.721813>,  <39.996353, 37.165630, 35.688190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944599, 37.560841, 35.721813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308182, -0.040503, 0.950465,
		0.942487, 0.148883, -0.299251,
		-0.129387, 0.988025, 0.084057,
		39.905785, 37.857246, 35.747028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603336, 37.584965, 35.953892>,  <39.996353, 37.165630, 35.688190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603336, 37.584965, 35.953892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226795, 37.676792, 36.052803>,  <40.000870, 37.731888, 36.112148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226795, 37.676792, 36.052803>,  <40.603336, 37.584965, 35.953892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226795, 37.676792, 36.052803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236709, -0.072931, 0.968840,
		0.240454, 0.970555, 0.014312,
		-0.941356, 0.229573, 0.247275,
		39.944389, 37.745663, 36.126987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260460, 37.328613, 35.608639>,  <40.603336, 37.584965, 35.953892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260460, 37.328613, 35.608639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339443, 36.945820, 35.523609>,  <41.386833, 36.716145, 35.472591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339443, 36.945820, 35.523609>,  <41.260460, 37.328613, 35.608639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339443, 36.945820, 35.523609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499550, 0.284807, -0.818129,
		0.843480, 0.055358, 0.534301,
		0.197462, -0.956985, -0.212575,
		41.398682, 36.658726, 35.459835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824635, 37.514446, 36.063393>,  <41.260460, 37.328613, 35.608639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824635, 37.514446, 36.063393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185184, 37.673698, 35.995255>,  <42.401512, 37.769249, 35.954372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185184, 37.673698, 35.995255>,  <41.824635, 37.514446, 36.063393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185184, 37.673698, 35.995255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077911, -0.536045, -0.840586,
		-0.425980, 0.744409, -0.514194,
		0.901371, 0.398135, -0.170347,
		42.455597, 37.793140, 35.944149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992538, 37.585434, 35.321404>,  <41.824635, 37.514446, 36.063393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992538, 37.585434, 35.321404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354511, 37.599777, 35.491024>,  <42.571693, 37.608383, 35.592796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354511, 37.599777, 35.491024>,  <41.992538, 37.585434, 35.321404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354511, 37.599777, 35.491024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379144, -0.520479, -0.765083,
		0.193276, 0.853121, -0.484592,
		0.904928, 0.035858, 0.424051,
		42.625988, 37.610535, 35.618240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640202, 37.280273, 34.961788>,  <41.992538, 37.585434, 35.321404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640202, 37.280273, 34.961788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976303, 37.065887, 34.994568>,  <43.177963, 36.937256, 35.014236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976303, 37.065887, 34.994568>,  <42.640202, 37.280273, 34.961788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976303, 37.065887, 34.994568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476673, -0.658201, 0.582713,
		-0.258380, -0.528686, -0.808536,
		0.840251, -0.535969, 0.081945,
		43.228378, 36.905098, 35.019150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558720, 36.496738, 34.735439>,  <42.640202, 37.280273, 34.961788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558720, 36.496738, 34.735439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854610, 36.519650, 35.003628>,  <43.032143, 36.533394, 35.164539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854610, 36.519650, 35.003628>,  <42.558720, 36.496738, 34.735439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854610, 36.519650, 35.003628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430817, -0.725089, 0.537255,
		0.516921, -0.686270, -0.511690,
		0.739723, 0.057274, 0.670470,
		43.076527, 36.536831, 35.204769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724087, 35.813747, 34.810280>,  <42.558720, 36.496738, 34.735439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724087, 35.813747, 34.810280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869114, 35.990112, 35.138702>,  <42.956131, 36.095932, 35.335758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869114, 35.990112, 35.138702>,  <42.724087, 35.813747, 34.810280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869114, 35.990112, 35.138702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349374, -0.752453, 0.558349,
		0.863994, -0.489294, -0.118768,
		0.362564, 0.440915, 0.821061,
		42.977882, 36.122387, 35.385021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995731, 35.280445, 35.175037>,  <42.724087, 35.813747, 34.810280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995731, 35.280445, 35.175037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948009, 35.569973, 35.446877>,  <42.919376, 35.743690, 35.609982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948009, 35.569973, 35.446877>,  <42.995731, 35.280445, 35.175037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948009, 35.569973, 35.446877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376274, -0.666387, 0.643698,
		0.918796, -0.178921, 0.351855,
		-0.119301, 0.723821, 0.679596,
		42.912220, 35.787121, 35.650757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230728, 34.909740, 35.769405>,  <42.995731, 35.280445, 35.175037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230728, 34.909740, 35.769405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017864, 35.228657, 35.883339>,  <42.890144, 35.420006, 35.951698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017864, 35.228657, 35.883339>,  <43.230728, 34.909740, 35.769405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017864, 35.228657, 35.883339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365782, -0.519919, 0.771938,
		0.763550, 0.306609, 0.568316,
		-0.532161, 0.797292, 0.284832,
		42.858215, 35.467846, 35.968788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466080, 35.108616, 36.377953>,  <43.230728, 34.909740, 35.769405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466080, 35.108616, 36.377953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096302, 35.257622, 36.345356>,  <42.874435, 35.347023, 36.325798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096302, 35.257622, 36.345356>,  <43.466080, 35.108616, 36.377953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096302, 35.257622, 36.345356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274507, -0.501774, 0.820286,
		0.264673, 0.780678, 0.566118,
		-0.924443, 0.372511, -0.081496,
		42.818970, 35.369373, 36.320908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361546, 35.420048, 37.101059>,  <43.466080, 35.108616, 36.377953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361546, 35.420048, 37.101059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022331, 35.338280, 36.905491>,  <42.818802, 35.289219, 36.788151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022331, 35.338280, 36.905491>,  <43.361546, 35.420048, 37.101059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022331, 35.338280, 36.905491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378134, -0.412963, 0.828539,
		-0.371275, 0.887511, 0.272910,
		-0.848038, -0.204419, -0.488921,
		42.767921, 35.276955, 36.758816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933075, 35.751999, 37.454407>,  <43.361546, 35.420048, 37.101059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933075, 35.751999, 37.454407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700073, 35.475597, 37.283203>,  <42.560272, 35.309757, 37.180481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700073, 35.475597, 37.283203>,  <42.933075, 35.751999, 37.454407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700073, 35.475597, 37.283203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397203, -0.217426, 0.891603,
		-0.709164, 0.689374, -0.147816,
		-0.582509, -0.691006, -0.428012,
		42.525322, 35.268295, 37.154800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352837, 35.737118, 37.831890>,  <42.933075, 35.751999, 37.454407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352837, 35.737118, 37.831890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336456, 35.380581, 37.651302>,  <42.326630, 35.166656, 37.542950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336456, 35.380581, 37.651302>,  <42.352837, 35.737118, 37.831890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336456, 35.380581, 37.651302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361488, -0.408022, 0.838358,
		-0.931477, 0.197533, -0.305502,
		-0.040952, -0.891347, -0.451469,
		42.324169, 35.113178, 37.515862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686775, 35.453960, 37.928146>,  <42.352837, 35.737118, 37.831890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686775, 35.453960, 37.928146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928970, 35.145756, 37.848454>,  <42.074287, 34.960835, 37.800636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928970, 35.145756, 37.848454>,  <41.686775, 35.453960, 37.928146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928970, 35.145756, 37.848454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242602, -0.417121, 0.875873,
		-0.757975, -0.481998, -0.439491,
		0.605490, -0.770512, -0.199234,
		42.110619, 34.914604, 37.788685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321651, 35.008408, 38.260216>,  <41.686775, 35.453960, 37.928146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321651, 35.008408, 38.260216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660320, 34.808372, 38.187500>,  <41.863522, 34.688351, 38.143871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660320, 34.808372, 38.187500>,  <41.321651, 35.008408, 38.260216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660320, 34.808372, 38.187500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194703, -0.609116, 0.768810,
		-0.495206, -0.615538, -0.613094,
		0.846677, -0.500090, -0.181791,
		41.914322, 34.658344, 38.132961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215256, 34.349308, 38.473286>,  <41.321651, 35.008408, 38.260216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215256, 34.349308, 38.473286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613316, 34.374416, 38.442993>,  <41.852150, 34.389481, 38.424816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613316, 34.374416, 38.442993>,  <41.215256, 34.349308, 38.473286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613316, 34.374416, 38.442993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098343, -0.651984, 0.751828,
		-0.002185, -0.755630, -0.654995,
		0.995150, 0.062772, -0.075735,
		41.911861, 34.393250, 38.420273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458195, 33.699783, 38.651806>,  <41.215256, 34.349308, 38.473286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458195, 33.699783, 38.651806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775833, 33.928280, 38.734837>,  <41.966415, 34.065376, 38.784657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775833, 33.928280, 38.734837>,  <41.458195, 33.699783, 38.651806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775833, 33.928280, 38.734837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048624, -0.400145, 0.915161,
		0.605841, -0.716635, -0.345530,
		0.794099, 0.571243, 0.207578,
		42.014061, 34.099651, 38.797112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798183, 33.249374, 38.918541>,  <41.458195, 33.699783, 38.651806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798183, 33.249374, 38.918541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973660, 33.585987, 39.044632>,  <42.078945, 33.787956, 39.120289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973660, 33.585987, 39.044632>,  <41.798183, 33.249374, 38.918541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973660, 33.585987, 39.044632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149374, -0.414194, 0.897848,
		0.886135, -0.346793, -0.307408,
		0.438694, 0.841533, 0.315230,
		42.105267, 33.838448, 39.139202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451565, 33.153137, 39.001755>,  <41.798183, 33.249374, 38.918541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451565, 33.153137, 39.001755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374596, 33.451328, 39.257015>,  <42.328415, 33.630241, 39.410172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374596, 33.451328, 39.257015>,  <42.451565, 33.153137, 39.001755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374596, 33.451328, 39.257015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333903, -0.561764, 0.756921,
		0.922758, 0.358732, -0.140819,
		-0.192425, 0.745475, 0.638154,
		42.316868, 33.674973, 39.448460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942703, 33.071304, 39.538006>,  <42.451565, 33.153137, 39.001755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942703, 33.071304, 39.538006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680923, 33.319267, 39.711170>,  <42.523853, 33.468044, 39.815071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680923, 33.319267, 39.711170>,  <42.942703, 33.071304, 39.538006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680923, 33.319267, 39.711170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061075, -0.527345, 0.847453,
		0.753633, 0.581057, 0.307261,
		-0.654451, 0.619903, 0.432913,
		42.484589, 33.505238, 39.841045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099186, 33.086578, 40.248604>,  <42.942703, 33.071304, 39.538006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099186, 33.086578, 40.248604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735596, 33.251892, 40.270393>,  <42.517441, 33.351078, 40.283466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735596, 33.251892, 40.270393>,  <43.099186, 33.086578, 40.248604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735596, 33.251892, 40.270393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147871, -0.441863, 0.884812,
		0.389748, 0.796214, 0.462753,
		-0.908972, 0.413281, 0.054478,
		42.462906, 33.375877, 40.286736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982128, 33.331089, 40.961849>,  <43.099186, 33.086578, 40.248604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982128, 33.331089, 40.961849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608437, 33.297821, 40.823109>,  <42.384224, 33.277859, 40.739864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608437, 33.297821, 40.823109>,  <42.982128, 33.331089, 40.961849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608437, 33.297821, 40.823109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213791, -0.647812, 0.731186,
		-0.285507, 0.757246, 0.587422,
		-0.934227, -0.083173, -0.346847,
		42.328167, 33.272869, 40.719055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488586, 33.368881, 41.639744>,  <42.982128, 33.331089, 40.961849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488586, 33.368881, 41.639744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288364, 33.191784, 41.342175>,  <42.168232, 33.085526, 41.163635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288364, 33.191784, 41.342175>,  <42.488586, 33.368881, 41.639744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288364, 33.191784, 41.342175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334196, -0.693886, 0.637837,
		-0.798596, 0.567890, 0.199366,
		-0.500558, -0.442746, -0.743920,
		42.138199, 33.058960, 41.118999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810249, 33.325535, 41.868618>,  <42.488586, 33.368881, 41.639744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810249, 33.325535, 41.868618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832924, 33.061646, 41.568871>,  <41.846527, 32.903313, 41.389023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832924, 33.061646, 41.568871>,  <41.810249, 33.325535, 41.868618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832924, 33.061646, 41.568871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445153, -0.688534, 0.572502,
		-0.893659, 0.301132, -0.332707,
		0.056681, -0.659727, -0.749364,
		41.849930, 32.863728, 41.344063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085220, 32.935108, 41.804890>,  <41.810249, 33.325535, 41.868618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085220, 32.935108, 41.804890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377552, 32.698589, 41.668503>,  <41.552952, 32.556679, 41.586670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377552, 32.698589, 41.668503>,  <41.085220, 32.935108, 41.804890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377552, 32.698589, 41.668503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229142, -0.683095, 0.693452,
		-0.642944, -0.428668, -0.634718,
		0.730833, -0.591291, -0.340966,
		41.596802, 32.521202, 41.566212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898033, 32.243267, 41.681606>,  <41.085220, 32.935108, 41.804890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898033, 32.243267, 41.681606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287182, 32.159370, 41.720650>,  <41.520672, 32.109032, 41.744076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287182, 32.159370, 41.720650>,  <40.898033, 32.243267, 41.681606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287182, 32.159370, 41.720650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227653, -0.792925, 0.565194,
		-0.041148, -0.572083, -0.819163,
		0.972872, -0.209741, 0.097609,
		41.579044, 32.096447, 41.749931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094215, 31.507042, 41.530247>,  <40.898033, 32.243267, 41.681606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094215, 31.507042, 41.530247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317184, 31.688766, 41.808205>,  <41.450966, 31.797800, 41.974979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317184, 31.688766, 41.808205>,  <41.094215, 31.507042, 41.530247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317184, 31.688766, 41.808205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181651, -0.749977, 0.636032,
		0.810114, -0.480767, -0.335527,
		0.557421, 0.454310, 0.694899,
		41.484409, 31.825060, 42.016674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575626, 31.090019, 41.646736>,  <41.094215, 31.507042, 41.530247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575626, 31.090019, 41.646736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553608, 31.279537, 41.998302>,  <41.540398, 31.393248, 42.209240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553608, 31.279537, 41.998302>,  <41.575626, 31.090019, 41.646736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553608, 31.279537, 41.998302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229961, -0.862600, 0.450600,
		0.971642, -0.177313, 0.156434,
		-0.055043, 0.473795, 0.878913,
		41.537094, 31.421677, 42.261978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129475, 31.013641, 41.005161>,  <41.575626, 31.090019, 41.646736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129475, 31.013641, 41.005161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353260, 31.009808, 40.673641>,  <41.487530, 31.007507, 40.474728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353260, 31.009808, 40.673641>,  <41.129475, 31.013641, 41.005161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353260, 31.009808, 40.673641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779761, 0.345117, 0.522367,
		0.281026, -0.938511, 0.200555,
		0.559462, -0.009586, -0.828801,
		41.521099, 31.006931, 40.424999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678288, 30.479654, 41.053646>,  <41.129475, 31.013641, 41.005161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678288, 30.479654, 41.053646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730255, 30.811760, 40.836838>,  <41.761436, 31.011023, 40.706753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730255, 30.811760, 40.836838>,  <41.678288, 30.479654, 41.053646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730255, 30.811760, 40.836838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690406, 0.316609, 0.650461,
		0.711662, -0.458718, -0.532087,
		0.129915, 0.830263, -0.542019,
		41.769230, 31.060839, 40.674232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415913, 30.587561, 40.888371>,  <41.678288, 30.479654, 41.053646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415913, 30.587561, 40.888371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204670, 30.925636, 40.921272>,  <42.077927, 31.128481, 40.941013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204670, 30.925636, 40.921272>,  <42.415913, 30.587561, 40.888371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204670, 30.925636, 40.921272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537327, 0.257580, 0.803077,
		0.657562, 0.468307, -0.590171,
		-0.528103, 0.845187, 0.082259,
		42.046238, 31.179192, 40.945950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459644, 30.188744, 40.181446>,  <42.415913, 30.587561, 40.888371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459644, 30.188744, 40.181446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572975, 29.949224, 39.881802>,  <42.640972, 29.805513, 39.702015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572975, 29.949224, 39.881802>,  <42.459644, 30.188744, 40.181446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572975, 29.949224, 39.881802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095697, 0.759567, -0.643351,
		0.954238, 0.253965, 0.157900,
		0.283324, -0.598799, -0.749111,
		42.657974, 29.769585, 39.657070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823593, 30.574816, 39.719952>,  <42.459644, 30.188744, 40.181446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823593, 30.574816, 39.719952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690128, 30.273373, 39.493416>,  <42.610050, 30.092506, 39.357494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690128, 30.273373, 39.493416>,  <42.823593, 30.574816, 39.719952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690128, 30.273373, 39.493416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018813, 0.605971, -0.795264,
		0.942504, -0.254697, -0.216369,
		-0.333665, -0.753610, -0.566339,
		42.590031, 30.047289, 39.323513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209782, 30.518848, 39.173203>,  <42.823593, 30.574816, 39.719952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209782, 30.518848, 39.173203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866035, 30.353115, 39.053322>,  <42.659786, 30.253675, 38.981396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866035, 30.353115, 39.053322>,  <43.209782, 30.518848, 39.173203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866035, 30.353115, 39.053322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101579, 0.436083, -0.894155,
		0.501177, -0.798846, -0.332665,
		-0.859362, -0.414339, -0.299701,
		42.608227, 30.228815, 38.963413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301819, 30.183416, 38.450756>,  <43.209782, 30.518848, 39.173203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301819, 30.183416, 38.450756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949146, 30.351297, 38.536995>,  <42.737541, 30.452026, 38.588737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949146, 30.351297, 38.536995>,  <43.301819, 30.183416, 38.450756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949146, 30.351297, 38.536995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053256, 0.542536, -0.838343,
		-0.468824, -0.727672, -0.500697,
		-0.881685, 0.419700, 0.215601,
		42.684639, 30.477207, 38.601677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990471, 30.203728, 37.866753>,  <43.301819, 30.183416, 38.450756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990471, 30.203728, 37.866753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798267, 30.477156, 38.086514>,  <42.682945, 30.641212, 38.218372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798267, 30.477156, 38.086514>,  <42.990471, 30.203728, 37.866753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798267, 30.477156, 38.086514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069167, 0.594977, -0.800761,
		-0.874261, -0.422770, -0.238609,
		-0.480504, 0.683570, 0.549406,
		42.654118, 30.682226, 38.251335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302849, 30.429609, 37.545128>,  <42.990471, 30.203728, 37.866753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302849, 30.429609, 37.545128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467651, 30.708572, 37.779690>,  <42.566532, 30.875950, 37.920429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467651, 30.708572, 37.779690>,  <42.302849, 30.429609, 37.545128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467651, 30.708572, 37.779690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006148, 0.645681, -0.763582,
		-0.911160, 0.310996, 0.270313,
		0.412007, 0.697407, 0.586407,
		42.591255, 30.917795, 37.955612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869492, 31.080866, 37.480663>,  <42.302849, 30.429609, 37.545128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869492, 31.080866, 37.480663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232944, 31.192945, 37.604511>,  <42.451015, 31.260193, 37.678822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232944, 31.192945, 37.604511>,  <41.869492, 31.080866, 37.480663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232944, 31.192945, 37.604511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031083, 0.694022, -0.719283,
		-0.416429, 0.663191, 0.621905,
		0.908637, 0.280199, 0.309625,
		42.505535, 31.277006, 37.697399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897987, 31.903412, 37.356480>,  <41.869492, 31.080866, 37.480663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897987, 31.903412, 37.356480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289639, 31.840218, 37.407635>,  <42.524628, 31.802301, 37.438328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289639, 31.840218, 37.407635>,  <41.897987, 31.903412, 37.356480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289639, 31.840218, 37.407635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193952, 0.537924, -0.820378,
		0.060813, 0.828057, 0.557336,
		0.979124, -0.157987, 0.127891,
		42.583374, 31.792822, 37.446003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215591, 32.534504, 37.260857>,  <41.897987, 31.903412, 37.356480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215591, 32.534504, 37.260857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499218, 32.263607, 37.182304>,  <42.669395, 32.101070, 37.135174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499218, 32.263607, 37.182304>,  <42.215591, 32.534504, 37.260857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499218, 32.263607, 37.182304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302117, 0.543419, -0.783212,
		0.637139, 0.496024, 0.589928,
		0.709070, -0.677242, -0.196376,
		42.711941, 32.060436, 37.123390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887039, 32.879971, 37.507000>,  <42.215591, 32.534504, 37.260857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887039, 32.879971, 37.507000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973454, 32.575058, 37.262951>,  <43.025303, 32.392109, 37.116520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973454, 32.575058, 37.262951>,  <42.887039, 32.879971, 37.507000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973454, 32.575058, 37.262951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686200, 0.563071, -0.460523,
		0.694593, -0.319179, 0.644722,
		0.216035, -0.762283, -0.610125,
		43.038265, 32.346375, 37.079914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599098, 32.936359, 37.465561>,  <42.887039, 32.879971, 37.507000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599098, 32.936359, 37.465561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499660, 32.706322, 37.153801>,  <43.439999, 32.568298, 36.966743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499660, 32.706322, 37.153801>,  <43.599098, 32.936359, 37.465561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499660, 32.706322, 37.153801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561162, 0.570356, -0.599826,
		0.789493, -0.586484, 0.180934,
		-0.248591, -0.575092, -0.779405,
		43.425083, 32.533794, 36.919979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177353, 32.878529, 37.184776>,  <43.599098, 32.936359, 37.465561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177353, 32.878529, 37.184776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933636, 32.786373, 36.881283>,  <43.787403, 32.731079, 36.699188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933636, 32.786373, 36.881283>,  <44.177353, 32.878529, 37.184776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933636, 32.786373, 36.881283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516327, 0.610930, -0.600142,
		0.601794, -0.757422, -0.253289,
		-0.609303, -0.230382, -0.758731,
		43.750847, 32.717255, 36.653664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662350, 32.804874, 36.643368>,  <44.177353, 32.878529, 37.184776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662350, 32.804874, 36.643368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293118, 32.859646, 36.499603>,  <44.071579, 32.892509, 36.413345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293118, 32.859646, 36.499603>,  <44.662350, 32.804874, 36.643368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293118, 32.859646, 36.499603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380384, 0.463151, -0.800499,
		0.056845, -0.875637, -0.479612,
		-0.923080, 0.136932, -0.359407,
		44.016193, 32.900726, 36.391781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787777, 32.508766, 35.900814>,  <44.662350, 32.804874, 36.643368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787777, 32.508766, 35.900814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471600, 32.753235, 35.884441>,  <44.281895, 32.899914, 35.874619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471600, 32.753235, 35.884441>,  <44.787777, 32.508766, 35.900814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471600, 32.753235, 35.884441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379621, 0.436334, -0.815783,
		-0.480719, -0.660368, -0.576908,
		-0.790441, 0.611169, -0.040935,
		44.234467, 32.936584, 35.872162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466927, 32.655006, 35.084404>,  <44.787777, 32.508766, 35.900814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466927, 32.655006, 35.084404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369797, 32.978432, 35.298790>,  <44.311520, 33.172489, 35.427422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369797, 32.978432, 35.298790>,  <44.466927, 32.655006, 35.084404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369797, 32.978432, 35.298790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254640, 0.586256, -0.769066,
		-0.936053, -0.050270, -0.348251,
		-0.242825, 0.808565, 0.535965,
		44.296947, 33.221001, 35.459579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225498, 33.108330, 34.577213>,  <44.466927, 32.655006, 35.084404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225498, 33.108330, 34.577213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307190, 33.332211, 34.898464>,  <44.356205, 33.466541, 35.091217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307190, 33.332211, 34.898464>,  <44.225498, 33.108330, 34.577213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307190, 33.332211, 34.898464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169486, 0.787816, -0.592132,
		-0.964139, 0.257050, 0.066033,
		0.204230, 0.559706, 0.803131,
		44.368458, 33.500122, 35.139404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916691, 33.704834, 34.374031>,  <44.225498, 33.108330, 34.577213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916691, 33.704834, 34.374031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141781, 33.845638, 34.673210>,  <44.276836, 33.930119, 34.852718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141781, 33.845638, 34.673210>,  <43.916691, 33.704834, 34.374031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141781, 33.845638, 34.673210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127396, 0.857065, -0.499209,
		-0.816766, 0.376205, 0.437451,
		0.562729, 0.352007, 0.747949,
		44.310600, 33.951241, 34.897594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701771, 34.293659, 34.559803>,  <43.916691, 33.704834, 34.374031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701771, 34.293659, 34.559803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079899, 34.312305, 34.688923>,  <44.306774, 34.323494, 34.766396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079899, 34.312305, 34.688923>,  <43.701771, 34.293659, 34.559803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079899, 34.312305, 34.688923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080883, 0.925310, -0.370484,
		-0.315956, 0.376335, 0.870944,
		0.945320, 0.046612, 0.322796,
		44.363495, 34.326290, 34.785763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781715, 34.851070, 34.828201>,  <43.701771, 34.293659, 34.559803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781715, 34.851070, 34.828201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166557, 34.761753, 34.765606>,  <44.397465, 34.708160, 34.728046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166557, 34.761753, 34.765606>,  <43.781715, 34.851070, 34.828201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166557, 34.761753, 34.765606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155718, 0.921067, -0.356914,
		0.223837, 0.319021, 0.920936,
		0.962106, -0.223297, -0.156492,
		44.455189, 34.694763, 34.718658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295933, 35.354782, 35.191620>,  <43.781715, 34.851070, 34.828201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295933, 35.354782, 35.191620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470432, 35.196362, 34.868427>,  <44.575134, 35.101311, 34.674511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470432, 35.196362, 34.868427>,  <44.295933, 35.354782, 35.191620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470432, 35.196362, 34.868427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232677, 0.917040, -0.323881,
		0.869221, -0.046704, 0.492214,
		0.436253, -0.396051, -0.807977,
		44.601307, 35.077545, 34.626034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809677, 35.956078, 35.048042>,  <44.295933, 35.354782, 35.191620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809677, 35.956078, 35.048042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873806, 35.708714, 34.740311>,  <44.912281, 35.560295, 34.555672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873806, 35.708714, 34.740311>,  <44.809677, 35.956078, 35.048042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873806, 35.708714, 34.740311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362756, 0.761783, -0.536745,
		0.917990, -0.193030, 0.346458,
		0.160318, -0.618406, -0.769332,
		44.921902, 35.523193, 34.509510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533306, 36.192410, 34.908867>,  <44.809677, 35.956078, 35.048042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533306, 36.192410, 34.908867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298653, 36.025455, 34.631264>,  <45.157860, 35.925282, 34.464703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298653, 36.025455, 34.631264>,  <45.533306, 36.192410, 34.908867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298653, 36.025455, 34.631264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096650, 0.814752, -0.571697,
		0.804066, -0.402452, -0.437619,
		-0.586631, -0.417386, -0.694012,
		45.122662, 35.900238, 34.423061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784561, 36.559418, 34.226036>,  <45.533306, 36.192410, 34.908867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784561, 36.559418, 34.226036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454136, 36.366669, 34.109135>,  <45.255882, 36.251019, 34.038994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454136, 36.366669, 34.109135>,  <45.784561, 36.559418, 34.226036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454136, 36.366669, 34.109135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163790, 0.701464, -0.693629,
		0.539251, -0.525112, -0.658381,
		-0.826063, -0.481877, -0.292257,
		45.206318, 36.222107, 34.021458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.873768, 36.318474, 33.518387>,  <45.784561, 36.559418, 34.226036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.873768, 36.318474, 33.518387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488354, 36.388256, 33.599541>,  <45.257103, 36.430126, 33.648232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488354, 36.388256, 33.599541>,  <45.873768, 36.318474, 33.518387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488354, 36.388256, 33.599541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003394, 0.750201, -0.661202,
		-0.267551, -0.637782, -0.722254,
		-0.963538, 0.174454, 0.202882,
		45.199291, 36.440594, 33.660404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986393, 35.684467, 33.837704>,  <45.873768, 36.318474, 33.518387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986393, 35.684467, 33.837704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328690, 35.887314, 33.796654>,  <46.534069, 36.009022, 33.772022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328690, 35.887314, 33.796654>,  <45.986393, 35.684467, 33.837704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328690, 35.887314, 33.796654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165495, 0.456205, 0.874350,
		0.490222, -0.731234, 0.474320,
		0.855742, 0.507123, -0.102626,
		46.585411, 36.039448, 33.765865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456692, 35.479931, 34.356903>,  <45.986393, 35.684467, 33.837704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456692, 35.479931, 34.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577450, 35.846157, 34.250626>,  <46.649906, 36.065895, 34.186859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577450, 35.846157, 34.250626>,  <46.456692, 35.479931, 34.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577450, 35.846157, 34.250626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448309, 0.382302, 0.808000,
		0.841354, -0.124822, 0.525874,
		0.301899, 0.915568, -0.265692,
		46.668018, 36.120827, 34.170918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228745, 35.123627, 34.926346>,  <46.456692, 35.479931, 34.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228745, 35.123627, 34.926346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355396, 34.745754, 34.960583>,  <46.431389, 34.519032, 34.981125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355396, 34.745754, 34.960583>,  <46.228745, 35.123627, 34.926346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355396, 34.745754, 34.960583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651802, 0.151131, -0.743178,
		0.689130, 0.291100, 0.663596,
		0.316629, -0.944680, 0.085590,
		46.450386, 34.462349, 34.986259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.952709, 35.189316, 35.002335>,  <46.228745, 35.123627, 34.926346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.952709, 35.189316, 35.002335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844864, 34.833630, 34.854492>,  <46.780159, 34.620216, 34.765785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844864, 34.833630, 34.854492>,  <46.952709, 35.189316, 35.002335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844864, 34.833630, 34.854492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623774, 0.131144, -0.770524,
		0.733633, -0.438291, 0.519311,
		-0.269609, -0.889214, -0.369606,
		46.763981, 34.566864, 34.743610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.621559, 35.372810, 35.104511>,  <46.952709, 35.189316, 35.002335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.621559, 35.372810, 35.104511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721386, 35.211891, 34.752174>,  <47.781281, 35.115341, 34.540771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721386, 35.211891, 34.752174>,  <47.621559, 35.372810, 35.104511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721386, 35.211891, 34.752174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255296, 0.904773, -0.340896,
		0.934099, -0.139798, 0.328504,
		0.249565, -0.402296, -0.880838,
		47.796257, 35.091202, 34.487923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.104015, 36.384285, 44.380798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.792900, 36.302433, 44.143082>,  <33.606232, 36.253323, 44.000454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.792900, 36.302433, 44.143082>,  <34.104015, 36.384285, 44.380798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792900, 36.302433, 44.143082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545999, 0.248401, -0.800114,
		0.311347, -0.946797, -0.081477,
		-0.777785, -0.204627, -0.594289,
		33.559566, 36.241047, 43.964794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380684, 36.254162, 43.785248>,  <34.104015, 36.384285, 44.380798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380684, 36.254162, 43.785248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.012733, 36.252106, 43.628376>,  <33.791965, 36.250870, 43.534252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.012733, 36.252106, 43.628376>,  <34.380684, 36.254162, 43.785248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012733, 36.252106, 43.628376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390630, -0.101871, -0.914894,
		-0.035245, -0.994784, 0.095718,
		-0.919873, -0.005145, -0.392183,
		33.736771, 36.250561, 43.510719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216602, 35.611576, 43.377399>,  <34.380684, 36.254162, 43.785248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216602, 35.611576, 43.377399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.999634, 35.915649, 43.234348>,  <33.869453, 36.098095, 43.148518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.999634, 35.915649, 43.234348>,  <34.216602, 35.611576, 43.377399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999634, 35.915649, 43.234348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300976, -0.221592, -0.927529,
		-0.784341, -0.610749, -0.108601,
		-0.542423, 0.760186, -0.357624,
		33.836906, 36.143703, 43.127060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093094, 35.380924, 42.646511>,  <34.216602, 35.611576, 43.377399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093094, 35.380924, 42.646511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978962, 35.764137, 42.635563>,  <33.910480, 35.994064, 42.628994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978962, 35.764137, 42.635563>,  <34.093094, 35.380924, 42.646511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978962, 35.764137, 42.635563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140039, 0.013422, -0.990055,
		-0.948142, -0.286329, -0.137993,
		-0.285333, 0.958037, -0.027371,
		33.893360, 36.051548, 42.627350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702766, 35.416210, 42.076225>,  <34.093094, 35.380924, 42.646511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702766, 35.416210, 42.076225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.770836, 35.807213, 42.126057>,  <33.811676, 36.041813, 42.155956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.770836, 35.807213, 42.126057>,  <33.702766, 35.416210, 42.076225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770836, 35.807213, 42.126057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039827, 0.119498, -0.992035,
		-0.984609, 0.173781, -0.018596,
		0.170174, 0.977507, 0.124580,
		33.821888, 36.100464, 42.163429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239517, 35.781258, 41.696785>,  <33.702766, 35.416210, 42.076225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239517, 35.781258, 41.696785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537205, 36.044350, 41.743298>,  <33.715816, 36.202206, 41.771206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537205, 36.044350, 41.743298>,  <33.239517, 35.781258, 41.696785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537205, 36.044350, 41.743298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001158, 0.175361, -0.984504,
		-0.667931, 0.732555, 0.131269,
		0.744222, 0.657732, 0.116280,
		33.760471, 36.241669, 41.778183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098331, 36.334515, 41.201927>,  <33.239517, 35.781258, 41.696785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098331, 36.334515, 41.201927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.480930, 36.420776, 41.280518>,  <33.710491, 36.472534, 41.327671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.480930, 36.420776, 41.280518>,  <33.098331, 36.334515, 41.201927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480930, 36.420776, 41.280518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100620, 0.388298, -0.916024,
		-0.273837, 0.895945, 0.349707,
		0.956498, 0.215654, 0.196481,
		33.767879, 36.485474, 41.339462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225491, 37.027069, 41.062664>,  <33.098331, 36.334515, 41.201927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225491, 37.027069, 41.062664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.584049, 36.851368, 41.038929>,  <33.799187, 36.745945, 41.024689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.584049, 36.851368, 41.038929>,  <33.225491, 37.027069, 41.062664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584049, 36.851368, 41.038929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140347, 0.408254, -0.902015,
		0.420440, 0.800239, 0.427607,
		0.896400, -0.439257, -0.059335,
		33.852970, 36.719589, 41.021130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716927, 37.495323, 40.693047>,  <33.225491, 37.027069, 41.062664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716927, 37.495323, 40.693047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.919704, 37.151222, 40.671261>,  <34.041370, 36.944759, 40.658188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.919704, 37.151222, 40.671261>,  <33.716927, 37.495323, 40.693047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919704, 37.151222, 40.671261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300841, 0.235794, -0.924065,
		0.807774, 0.452066, 0.378335,
		0.506948, -0.860254, -0.054468,
		34.071789, 36.893147, 40.654919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362801, 37.650604, 40.277576>,  <33.716927, 37.495323, 40.693047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362801, 37.650604, 40.277576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313774, 37.253963, 40.261101>,  <34.284359, 37.015980, 40.251217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313774, 37.253963, 40.261101>,  <34.362801, 37.650604, 40.277576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313774, 37.253963, 40.261101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484886, -0.023618, -0.874258,
		0.865946, -0.127126, 0.483711,
		-0.122565, -0.991606, -0.041190,
		34.277004, 36.956482, 40.248745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029991, 37.321449, 40.249962>,  <34.362801, 37.650604, 40.277576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029991, 37.321449, 40.249962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747562, 37.088070, 40.089436>,  <34.578106, 36.948040, 39.993122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747562, 37.088070, 40.089436>,  <35.029991, 37.321449, 40.249962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747562, 37.088070, 40.089436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541961, -0.080467, -0.836542,
		0.455789, -0.808152, 0.373023,
		-0.706070, -0.583451, -0.401311,
		34.535740, 36.913036, 39.969044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427292, 36.695610, 40.031998>,  <35.029991, 37.321449, 40.249962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427292, 36.695610, 40.031998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074318, 36.726612, 39.846397>,  <34.862534, 36.745213, 39.735039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074318, 36.726612, 39.846397>,  <35.427292, 36.695610, 40.031998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074318, 36.726612, 39.846397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457286, -0.090194, -0.884734,
		-0.110422, -0.992904, 0.044149,
		-0.882437, 0.077505, -0.464001,
		34.809586, 36.749863, 39.707195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439827, 36.189320, 39.526012>,  <35.427292, 36.695610, 40.031998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439827, 36.189320, 39.526012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166245, 36.456841, 39.409458>,  <35.002094, 36.617352, 39.339527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166245, 36.456841, 39.409458>,  <35.439827, 36.189320, 39.526012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166245, 36.456841, 39.409458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378470, -0.016159, -0.925472,
		-0.623666, -0.743266, -0.242069,
		-0.683960, 0.668801, -0.291382,
		34.961056, 36.657482, 39.322044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149147, 36.003880, 38.799286>,  <35.439827, 36.189320, 39.526012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149147, 36.003880, 38.799286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115002, 36.399574, 38.846825>,  <35.094513, 36.636990, 38.875347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115002, 36.399574, 38.846825>,  <35.149147, 36.003880, 38.799286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115002, 36.399574, 38.846825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371099, 0.142269, -0.917630,
		-0.924661, -0.034229, -0.379249,
		-0.085365, 0.989236, 0.118848,
		35.089394, 36.696346, 38.882481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157055, 36.270107, 38.096630>,  <35.149147, 36.003880, 38.799286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157055, 36.270107, 38.096630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187374, 36.622635, 38.283192>,  <35.205566, 36.834152, 38.395130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187374, 36.622635, 38.283192>,  <35.157055, 36.270107, 38.096630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187374, 36.622635, 38.283192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444492, 0.388838, -0.806990,
		-0.892570, 0.268482, -0.362265,
		0.075800, 0.881319, 0.466403,
		35.210114, 36.887032, 38.423111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955368, 36.641315, 37.574417>,  <35.157055, 36.270107, 38.096630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955368, 36.641315, 37.574417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144791, 36.903728, 37.809486>,  <35.258446, 37.061176, 37.950527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144791, 36.903728, 37.809486>,  <34.955368, 36.641315, 37.574417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144791, 36.903728, 37.809486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373267, 0.454864, -0.808561,
		-0.797757, 0.602258, -0.029473,
		0.473556, 0.656037, 0.587674,
		35.286858, 37.100540, 37.985790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809875, 37.358288, 37.275517>,  <34.955368, 36.641315, 37.574417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809875, 37.358288, 37.275517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136715, 37.376102, 37.505424>,  <35.332821, 37.386791, 37.643372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136715, 37.376102, 37.505424>,  <34.809875, 37.358288, 37.275517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136715, 37.376102, 37.505424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466376, 0.535001, -0.704462,
		-0.338880, 0.843677, 0.416378,
		0.817101, 0.044539, 0.574772,
		35.381844, 37.389465, 37.677856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985497, 38.049286, 37.306763>,  <34.809875, 37.358288, 37.275517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985497, 38.049286, 37.306763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321781, 37.856106, 37.404716>,  <35.523552, 37.740200, 37.463490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321781, 37.856106, 37.404716>,  <34.985497, 38.049286, 37.306763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321781, 37.856106, 37.404716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474814, 0.440106, -0.762140,
		0.260301, 0.757012, 0.599313,
		0.840711, -0.482948, 0.244880,
		35.573994, 37.711220, 37.478180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543499, 38.489258, 37.195663>,  <34.985497, 38.049286, 37.306763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543499, 38.489258, 37.195663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743565, 38.142948, 37.202183>,  <35.863605, 37.935162, 37.206093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743565, 38.142948, 37.202183>,  <35.543499, 38.489258, 37.195663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743565, 38.142948, 37.202183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562639, 0.310618, -0.766129,
		0.658235, 0.392360, 0.642480,
		0.500165, -0.865777, 0.016297,
		35.893616, 37.883217, 37.207073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208282, 38.654438, 37.192291>,  <35.543499, 38.489258, 37.195663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208282, 38.654438, 37.192291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221996, 38.278831, 37.055424>,  <36.230225, 38.053467, 36.973305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221996, 38.278831, 37.055424>,  <36.208282, 38.654438, 37.192291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221996, 38.278831, 37.055424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601999, 0.292694, -0.742918,
		0.797761, -0.180512, 0.575320,
		0.034287, -0.939013, -0.342168,
		36.232281, 37.997128, 36.952774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888214, 38.517544, 37.037361>,  <36.208282, 38.654438, 37.192291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888214, 38.517544, 37.037361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663391, 38.270348, 36.817478>,  <36.528496, 38.122032, 36.685547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663391, 38.270348, 36.817478>,  <36.888214, 38.517544, 37.037361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663391, 38.270348, 36.817478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442727, 0.336598, -0.831081,
		0.698628, -0.710488, 0.084411,
		-0.562060, -0.617987, -0.549709,
		36.494774, 38.084949, 36.652565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302376, 38.539513, 36.505039>,  <36.888214, 38.517544, 37.037361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302376, 38.539513, 36.505039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957382, 38.402081, 36.356403>,  <36.750385, 38.319622, 36.267223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957382, 38.402081, 36.356403>,  <37.302376, 38.539513, 36.505039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957382, 38.402081, 36.356403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289967, 0.266283, -0.919245,
		0.414786, -0.900579, -0.130036,
		-0.862480, -0.343584, -0.371589,
		36.698639, 38.299007, 36.244926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502201, 37.960159, 36.788059>,  <37.302376, 38.539513, 36.505039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502201, 37.960159, 36.788059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847660, 38.159801, 36.816360>,  <38.054935, 38.279587, 36.833344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847660, 38.159801, 36.816360>,  <37.502201, 37.960159, 36.788059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847660, 38.159801, 36.816360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046996, -0.219473, 0.974486,
		0.501901, -0.838287, -0.213003,
		0.863647, 0.499106, 0.070757,
		38.106754, 38.309532, 36.837589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023827, 37.561878, 37.188805>,  <37.502201, 37.960159, 36.788059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023827, 37.561878, 37.188805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151958, 37.940594, 37.201305>,  <38.228836, 38.167824, 37.208805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151958, 37.940594, 37.201305>,  <38.023827, 37.561878, 37.188805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151958, 37.940594, 37.201305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153738, -0.084506, 0.984492,
		0.934749, -0.310553, -0.172627,
		0.320325, 0.946792, 0.031248,
		38.248055, 38.224632, 37.210678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577148, 37.524612, 37.628269>,  <38.023827, 37.561878, 37.188805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577148, 37.524612, 37.628269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482456, 37.913242, 37.628269>,  <38.425640, 38.146420, 37.628269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482456, 37.913242, 37.628269>,  <38.577148, 37.524612, 37.628269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482456, 37.913242, 37.628269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167172, 0.040734, 0.985086,
		0.957085, 0.233199, -0.172063,
		-0.236730, 0.971575, -0.000001,
		38.411438, 38.204716, 37.628269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130383, 37.846684, 37.955280>,  <38.577148, 37.524612, 37.628269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130383, 37.846684, 37.955280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793571, 38.058914, 37.994217>,  <38.591484, 38.186253, 38.017578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793571, 38.058914, 37.994217>,  <39.130383, 37.846684, 37.955280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793571, 38.058914, 37.994217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079523, -0.056378, 0.995237,
		0.533535, 0.845762, 0.005280,
		-0.842031, 0.530574, 0.097337,
		38.540962, 38.218086, 38.023418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176460, 38.013371, 38.609947>,  <39.130383, 37.846684, 37.955280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176460, 38.013371, 38.609947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806923, 38.158966, 38.562569>,  <38.585201, 38.246323, 38.534142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806923, 38.158966, 38.562569>,  <39.176460, 38.013371, 38.609947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806923, 38.158966, 38.562569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159664, -0.085202, 0.983488,
		0.347888, 0.927498, 0.136829,
		-0.923840, 0.363991, -0.118447,
		38.529770, 38.268162, 38.527035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103683, 38.470325, 39.226738>,  <39.176460, 38.013371, 38.609947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103683, 38.470325, 39.226738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746544, 38.349545, 39.093086>,  <38.532261, 38.277077, 39.012897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746544, 38.349545, 39.093086>,  <39.103683, 38.470325, 39.226738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746544, 38.349545, 39.093086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228726, -0.335075, 0.914007,
		-0.387940, 0.892498, 0.230109,
		-0.892853, -0.301948, -0.334126,
		38.478687, 38.258961, 38.992847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475281, 38.687588, 39.761383>,  <39.103683, 38.470325, 39.226738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475281, 38.687588, 39.761383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296844, 38.404724, 39.541954>,  <38.189781, 38.235004, 39.410297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296844, 38.404724, 39.541954>,  <38.475281, 38.687588, 39.761383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296844, 38.404724, 39.541954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319338, -0.446825, 0.835686,
		-0.836076, 0.547974, -0.026496,
		-0.446095, -0.707158, -0.548568,
		38.163017, 38.192577, 39.377384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781387, 38.752708, 39.855556>,  <38.475281, 38.687588, 39.761383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781387, 38.752708, 39.855556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851082, 38.378384, 39.732983>,  <37.892899, 38.153790, 39.659439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851082, 38.378384, 39.732983>,  <37.781387, 38.752708, 39.855556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851082, 38.378384, 39.732983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463239, -0.352510, 0.813109,
		-0.868937, 0.000280, -0.494923,
		0.174237, -0.935808, -0.306439,
		37.903355, 38.097641, 39.641052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163414, 38.507504, 39.821934>,  <37.781387, 38.752708, 39.855556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163414, 38.507504, 39.821934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.389519, 38.177631, 39.829655>,  <37.525181, 37.979706, 39.834286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.389519, 38.177631, 39.829655>,  <37.163414, 38.507504, 39.821934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389519, 38.177631, 39.829655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507092, -0.328930, 0.796657,
		-0.650642, -0.460109, -0.604123,
		0.565263, -0.824685, 0.019301,
		37.559097, 37.930225, 39.835445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786377, 37.906952, 39.762608>,  <37.163414, 38.507504, 39.821934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786377, 37.906952, 39.762608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117378, 37.774300, 39.943829>,  <37.315979, 37.694706, 40.052563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117378, 37.774300, 39.943829>,  <36.786377, 37.906952, 39.762608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117378, 37.774300, 39.943829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554088, -0.351982, 0.754384,
		-0.090711, -0.875287, -0.475020,
		0.827501, -0.331634, 0.453058,
		37.365627, 37.674809, 40.079746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663887, 37.171314, 39.990547>,  <36.786377, 37.906952, 39.762608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663887, 37.171314, 39.990547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.977840, 37.303905, 40.199959>,  <37.166210, 37.383461, 40.325607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.977840, 37.303905, 40.199959>,  <36.663887, 37.171314, 39.990547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977840, 37.303905, 40.199959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411223, -0.353370, 0.840253,
		0.463526, -0.874786, -0.141041,
		0.784882, 0.331479, 0.523529,
		37.213306, 37.403351, 40.357018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804169, 36.595016, 40.384407>,  <36.663887, 37.171314, 39.990547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804169, 36.595016, 40.384407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007404, 36.887196, 40.566959>,  <37.129345, 37.062504, 40.676491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007404, 36.887196, 40.566959>,  <36.804169, 36.595016, 40.384407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007404, 36.887196, 40.566959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067980, -0.494208, 0.866682,
		0.858616, -0.471379, -0.201447,
		0.508092, 0.730452, 0.456379,
		37.159832, 37.106331, 40.703873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279099, 36.267765, 40.900215>,  <36.804169, 36.595016, 40.384407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279099, 36.267765, 40.900215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.177444, 36.647163, 40.975864>,  <37.116451, 36.874802, 41.021255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.177444, 36.647163, 40.975864>,  <37.279099, 36.267765, 40.900215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177444, 36.647163, 40.975864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268259, -0.256998, 0.928434,
		0.929221, 0.185217, 0.319756,
		-0.254138, 0.948497, 0.189122,
		37.101204, 36.931713, 41.032600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628704, 36.341366, 41.557568>,  <37.279099, 36.267765, 40.900215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628704, 36.341366, 41.557568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367168, 36.640438, 41.511162>,  <37.210247, 36.819881, 41.483318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367168, 36.640438, 41.511162>,  <37.628704, 36.341366, 41.557568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367168, 36.640438, 41.511162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313172, -0.127843, 0.941052,
		0.688777, 0.651633, 0.317743,
		-0.653842, 0.747684, -0.116018,
		37.171017, 36.864742, 41.476357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730476, 36.885769, 42.082371>,  <37.628704, 36.341366, 41.557568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730476, 36.885769, 42.082371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351322, 36.938602, 41.966400>,  <37.123829, 36.970303, 41.896816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351322, 36.938602, 41.966400>,  <37.730476, 36.885769, 42.082371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351322, 36.938602, 41.966400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307315, -0.139010, 0.941400,
		0.084041, 0.981442, 0.172358,
		-0.947889, 0.132085, -0.289929,
		37.066956, 36.978230, 41.879421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469387, 37.240120, 42.633106>,  <37.730476, 36.885769, 42.082371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469387, 37.240120, 42.633106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138386, 37.131222, 42.436687>,  <36.939785, 37.065884, 42.318836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138386, 37.131222, 42.436687>,  <37.469387, 37.240120, 42.633106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138386, 37.131222, 42.436687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471435, -0.138094, 0.871022,
		-0.304941, 0.952267, -0.014073,
		-0.827502, -0.272245, -0.491043,
		36.890137, 37.049549, 42.289375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854786, 37.719402, 42.818527>,  <37.469387, 37.240120, 42.633106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854786, 37.719402, 42.818527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715126, 37.370094, 42.682587>,  <36.631329, 37.160511, 42.601025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715126, 37.370094, 42.682587>,  <36.854786, 37.719402, 42.818527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715126, 37.370094, 42.682587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512561, -0.125630, 0.849411,
		-0.784458, 0.470767, -0.403739,
		-0.349153, -0.873268, -0.339848,
		36.610382, 37.108112, 42.580631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127399, 37.780098, 42.958309>,  <36.854786, 37.719402, 42.818527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127399, 37.780098, 42.958309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250061, 37.403423, 42.902908>,  <36.323658, 37.177418, 42.869667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250061, 37.403423, 42.902908>,  <36.127399, 37.780098, 42.958309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250061, 37.403423, 42.902908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360593, -0.249605, 0.898705,
		-0.880873, -0.225647, -0.416109,
		0.306653, -0.941690, -0.138504,
		36.342056, 37.120914, 42.861359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.463116, 37.327042, 43.211937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.774117, 37.075493, 43.211029>,  <35.960716, 36.924564, 43.210484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.774117, 37.075493, 43.211029>,  <35.463116, 37.327042, 43.211937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774117, 37.075493, 43.211029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344421, -0.428842, 0.835146,
		-0.526177, -0.648546, -0.550023,
		0.777504, -0.628874, -0.002273,
		36.007366, 36.886829, 43.210346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148201, 36.723778, 43.351006>,  <35.463116, 37.327042, 43.211937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148201, 36.723778, 43.351006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523529, 36.645222, 43.464832>,  <35.748726, 36.598087, 43.533127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523529, 36.645222, 43.464832>,  <35.148201, 36.723778, 43.351006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523529, 36.645222, 43.464832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344280, -0.454758, 0.821381,
		-0.031903, -0.868692, -0.494324,
		0.938325, -0.196391, 0.284565,
		35.805027, 36.586304, 43.550201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094982, 36.069550, 43.611958>,  <35.148201, 36.723778, 43.351006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094982, 36.069550, 43.611958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437260, 36.213947, 43.760262>,  <35.642628, 36.300587, 43.849243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437260, 36.213947, 43.760262>,  <35.094982, 36.069550, 43.611958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437260, 36.213947, 43.760262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200710, -0.428863, 0.880790,
		0.476965, -0.828107, -0.294523,
		0.855698, 0.360993, 0.370762,
		35.693970, 36.322247, 43.871490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343956, 35.600578, 43.971485>,  <35.094982, 36.069550, 43.611958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343956, 35.600578, 43.971485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535282, 35.916546, 44.124973>,  <35.650078, 36.106125, 44.217068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535282, 35.916546, 44.124973>,  <35.343956, 35.600578, 43.971485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535282, 35.916546, 44.124973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151233, -0.356331, 0.922040,
		0.865068, -0.499058, -0.050978,
		0.478316, 0.789917, 0.383724,
		35.678776, 36.153522, 44.240089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706322, 35.263569, 44.424488>,  <35.343956, 35.600578, 43.971485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706322, 35.263569, 44.424488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712006, 35.644264, 44.547115>,  <35.715416, 35.872681, 44.620693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712006, 35.644264, 44.547115>,  <35.706322, 35.263569, 44.424488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712006, 35.644264, 44.547115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151714, -0.300997, 0.941479,
		0.988322, -0.059889, 0.140116,
		0.014209, 0.951742, 0.306568,
		35.716267, 35.929787, 44.639088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106869, 35.254402, 44.967525>,  <35.706322, 35.263569, 44.424488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106869, 35.254402, 44.967525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895325, 35.591194, 45.010204>,  <35.768398, 35.793270, 45.035812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895325, 35.591194, 45.010204>,  <36.106869, 35.254402, 44.967525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895325, 35.591194, 45.010204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120269, -0.198800, 0.972632,
		0.840144, 0.501554, 0.206401,
		-0.528860, 0.841975, 0.106699,
		35.736668, 35.843788, 45.042213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423382, 35.660076, 45.507793>,  <36.106869, 35.254402, 44.967525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423382, 35.660076, 45.507793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037907, 35.761272, 45.473625>,  <35.806622, 35.821991, 45.453125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037907, 35.761272, 45.473625>,  <36.423382, 35.660076, 45.507793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037907, 35.761272, 45.473625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112622, -0.095053, 0.989081,
		0.242111, 0.962787, 0.120094,
		-0.963690, 0.252993, -0.085418,
		35.748798, 35.837170, 45.447998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292248, 36.068096, 46.150597>,  <36.423382, 35.660076, 45.507793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292248, 36.068096, 46.150597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924736, 35.967499, 46.028885>,  <35.704227, 35.907139, 45.955856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924736, 35.967499, 46.028885>,  <36.292248, 36.068096, 46.150597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924736, 35.967499, 46.028885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246479, -0.236609, 0.939821,
		-0.308358, 0.938491, 0.155404,
		-0.918784, -0.251497, -0.304278,
		35.649101, 35.892048, 45.937603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767727, 36.418236, 46.668262>,  <36.292248, 36.068096, 46.150597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767727, 36.418236, 46.668262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551991, 36.146812, 46.468800>,  <35.422546, 35.983959, 46.349121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551991, 36.146812, 46.468800>,  <35.767727, 36.418236, 46.668262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551991, 36.146812, 46.468800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439003, -0.278757, 0.854149,
		-0.718598, 0.679593, -0.147545,
		-0.539345, -0.678563, -0.498658,
		35.390186, 35.943245, 46.319202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073086, 36.596706, 46.850792>,  <35.767727, 36.418236, 46.668262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073086, 36.596706, 46.850792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077839, 36.215691, 46.729122>,  <35.080692, 35.987080, 46.656120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077839, 36.215691, 46.729122>,  <35.073086, 36.596706, 46.850792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077839, 36.215691, 46.729122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571517, -0.256082, 0.779609,
		-0.820504, 0.164575, -0.547438,
		0.011885, -0.952543, -0.304173,
		35.081406, 35.929928, 46.637871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309780, 36.380486, 46.859406>,  <35.073086, 36.596706, 46.850792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309780, 36.380486, 46.859406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556698, 36.067211, 46.889244>,  <34.704849, 35.879246, 46.907146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556698, 36.067211, 46.889244>,  <34.309780, 36.380486, 46.859406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556698, 36.067211, 46.889244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623553, -0.429244, 0.653400,
		-0.479716, -0.449853, -0.753329,
		0.617296, -0.783187, 0.074592,
		34.741886, 35.832256, 46.911621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816116, 35.785995, 46.879177>,  <34.309780, 36.380486, 46.859406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816116, 35.785995, 46.879177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154537, 35.663528, 47.053745>,  <34.357590, 35.590050, 47.158485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154537, 35.663528, 47.053745>,  <33.816116, 35.785995, 46.879177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154537, 35.663528, 47.053745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533101, -0.488012, 0.691121,
		0.001381, -0.817378, -0.576099,
		0.846051, -0.306165, 0.436419,
		34.408352, 35.571678, 47.184669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826351, 35.030956, 46.986282>,  <33.816116, 35.785995, 46.879177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826351, 35.030956, 46.986282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092789, 35.133923, 47.266296>,  <34.252651, 35.195702, 47.434303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092789, 35.133923, 47.266296>,  <33.826351, 35.030956, 46.986282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092789, 35.133923, 47.266296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339437, -0.731111, 0.591827,
		0.664151, -0.631832, -0.399614,
		0.666098, 0.257418, 0.700036,
		34.292618, 35.211147, 47.476307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845837, 34.512730, 47.414936>,  <33.826351, 35.030956, 46.986282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845837, 34.512730, 47.414936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060326, 34.754528, 47.650578>,  <34.189018, 34.899609, 47.791962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060326, 34.754528, 47.650578>,  <33.845837, 34.512730, 47.414936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060326, 34.754528, 47.650578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215095, -0.577025, 0.787894,
		0.816209, -0.549201, -0.179390,
		0.536225, 0.604500, 0.589103,
		34.221191, 34.935879, 47.827309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157799, 34.034405, 47.900944>,  <33.845837, 34.512730, 47.414936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157799, 34.034405, 47.900944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224602, 34.394730, 48.061268>,  <34.264683, 34.610924, 48.157463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224602, 34.394730, 48.061268>,  <34.157799, 34.034405, 47.900944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224602, 34.394730, 48.061268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120258, -0.384875, 0.915101,
		0.978594, -0.201029, 0.044053,
		0.167007, 0.900810, 0.400811,
		34.274704, 34.664974, 48.181511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707886, 33.926945, 48.473160>,  <34.157799, 34.034405, 47.900944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707886, 33.926945, 48.473160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.469227, 34.244659, 48.518986>,  <34.326031, 34.435287, 48.546482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.469227, 34.244659, 48.518986>,  <34.707886, 33.926945, 48.473160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469227, 34.244659, 48.518986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175733, -0.268612, 0.947083,
		0.783029, 0.544938, 0.299848,
		-0.596644, 0.794286, 0.114568,
		34.290234, 34.482944, 48.553356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919460, 34.160263, 49.173698>,  <34.707886, 33.926945, 48.473160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919460, 34.160263, 49.173698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.564354, 34.334946, 49.115505>,  <34.351292, 34.439754, 49.080589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.564354, 34.334946, 49.115505>,  <34.919460, 34.160263, 49.173698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564354, 34.334946, 49.115505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221621, -0.128512, 0.966628,
		0.403437, 0.890378, 0.210871,
		-0.887763, 0.436707, -0.145480,
		34.298023, 34.465958, 49.071861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758495, 34.595871, 49.829910>,  <34.919460, 34.160263, 49.173698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758495, 34.595871, 49.829910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.410412, 34.539524, 49.641068>,  <34.201561, 34.505718, 49.527760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.410412, 34.539524, 49.641068>,  <34.758495, 34.595871, 49.829910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410412, 34.539524, 49.641068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466299, -0.073870, 0.881538,
		-0.159051, 0.987270, -0.001401,
		-0.870212, -0.140862, -0.472112,
		34.149349, 34.497265, 49.499435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251869, 35.080902, 50.160542>,  <34.758495, 34.595871, 49.829910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251869, 35.080902, 50.160542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034168, 34.791836, 49.990116>,  <33.903545, 34.618397, 49.887859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034168, 34.791836, 49.990116>,  <34.251869, 35.080902, 50.160542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034168, 34.791836, 49.990116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392223, -0.229753, 0.890716,
		-0.741584, 0.651891, -0.158404,
		-0.544255, -0.722670, -0.426068,
		33.870892, 34.575035, 49.862297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644302, 34.983944, 50.642971>,  <34.251869, 35.080902, 50.160542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644302, 34.983944, 50.642971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.611313, 34.674141, 50.392101>,  <33.591518, 34.488258, 50.241581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.611313, 34.674141, 50.392101>,  <33.644302, 34.983944, 50.642971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611313, 34.674141, 50.392101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473369, -0.523349, 0.708539,
		-0.876995, 0.355318, -0.323464,
		-0.082472, -0.774503, -0.627171,
		33.586571, 34.441792, 50.203949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891785, 34.781757, 50.603268>,  <33.644302, 34.983944, 50.642971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891785, 34.781757, 50.603268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114880, 34.466114, 50.500313>,  <33.248737, 34.276730, 50.438541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114880, 34.466114, 50.500313>,  <32.891785, 34.781757, 50.603268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114880, 34.466114, 50.500313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461839, -0.552695, 0.693709,
		-0.689665, -0.268034, -0.672696,
		0.557733, -0.789105, -0.257386,
		33.282200, 34.229382, 50.423096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367348, 34.161835, 50.593990>,  <32.891785, 34.781757, 50.603268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367348, 34.161835, 50.593990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742783, 34.039162, 50.657249>,  <32.968044, 33.965557, 50.695206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742783, 34.039162, 50.657249>,  <32.367348, 34.161835, 50.593990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742783, 34.039162, 50.657249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327597, -0.648063, 0.687528,
		-0.108364, -0.697109, -0.708729,
		0.938583, -0.306680, 0.158144,
		33.024357, 33.947159, 50.704693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376137, 33.448654, 50.435581>,  <32.367348, 34.161835, 50.593990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376137, 33.448654, 50.435581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646694, 33.578876, 50.699852>,  <32.809029, 33.657009, 50.858414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646694, 33.578876, 50.699852>,  <32.376137, 33.448654, 50.435581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646694, 33.578876, 50.699852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294051, -0.703059, 0.647488,
		0.675294, -0.632233, -0.379816,
		0.676396, 0.325560, 0.660680,
		32.849613, 33.676544, 50.898056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609234, 32.832123, 50.809067>,  <32.376137, 33.448654, 50.435581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609234, 32.832123, 50.809067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649506, 33.176563, 51.008411>,  <32.673668, 33.383228, 51.128017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649506, 33.176563, 51.008411>,  <32.609234, 32.832123, 50.809067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649506, 33.176563, 51.008411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270256, -0.458407, 0.846655,
		0.957510, -0.219925, 0.186567,
		0.100677, 0.861102, 0.498365,
		32.679710, 33.434895, 51.157921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815010, 32.718384, 50.966763>,  <32.609234, 32.832123, 50.809067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815010, 32.718384, 50.966763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.473698, 32.741947, 50.759518>,  <31.268909, 32.756084, 50.635170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.473698, 32.741947, 50.759518>,  <31.815010, 32.718384, 50.966763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473698, 32.741947, 50.759518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489315, 0.433863, -0.756527,
		0.180227, -0.899051, -0.399030,
		-0.853281, 0.058904, -0.518113,
		31.217712, 32.759617, 50.604084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024002, 32.539314, 50.249352>,  <31.815010, 32.718384, 50.966763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024002, 32.539314, 50.249352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674244, 32.733391, 50.251366>,  <31.464390, 32.849834, 50.252575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674244, 32.733391, 50.251366>,  <32.024002, 32.539314, 50.249352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674244, 32.733391, 50.251366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186766, 0.346132, -0.919408,
		-0.447830, -0.802985, -0.393273,
		-0.874395, 0.485189, 0.005038,
		31.411926, 32.878948, 50.252876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686562, 32.294926, 49.590458>,  <32.024002, 32.539314, 50.249352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686562, 32.294926, 49.590458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514879, 32.645195, 49.678986>,  <31.411869, 32.855354, 49.732101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514879, 32.645195, 49.678986>,  <31.686562, 32.294926, 49.590458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514879, 32.645195, 49.678986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116709, 0.296754, -0.947795,
		-0.895635, -0.380969, -0.229567,
		-0.429206, 0.875671, 0.221321,
		31.386118, 32.907898, 49.745380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053059, 32.355652, 49.190422>,  <31.686562, 32.294926, 49.590458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053059, 32.355652, 49.190422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193420, 32.718292, 49.284180>,  <31.277637, 32.935875, 49.340435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193420, 32.718292, 49.284180>,  <31.053059, 32.355652, 49.190422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193420, 32.718292, 49.284180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158259, 0.189294, -0.969083,
		-0.922941, 0.377149, -0.077054,
		0.350903, 0.906601, 0.234395,
		31.298691, 32.990273, 49.354500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716059, 32.765965, 48.675907>,  <31.053059, 32.355652, 49.190422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716059, 32.765965, 48.675907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982338, 33.017723, 48.836262>,  <31.142105, 33.168777, 48.932476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982338, 33.017723, 48.836262>,  <30.716059, 32.765965, 48.675907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982338, 33.017723, 48.836262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364204, 0.194854, -0.910707,
		-0.651309, 0.752259, -0.099515,
		0.665697, 0.629395, 0.400886,
		31.182047, 33.206543, 48.956528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611763, 33.445312, 48.229343>,  <30.716059, 32.765965, 48.675907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611763, 33.445312, 48.229343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968794, 33.472408, 48.407654>,  <31.183012, 33.488667, 48.514641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968794, 33.472408, 48.407654>,  <30.611763, 33.445312, 48.229343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968794, 33.472408, 48.407654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422385, 0.220372, -0.879220,
		-0.157792, 0.973061, 0.168089,
		0.892576, 0.067736, 0.445780,
		31.236567, 33.492729, 48.541389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898544, 34.146309, 48.104172>,  <30.611763, 33.445312, 48.229343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898544, 34.146309, 48.104172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195448, 33.886284, 48.169250>,  <31.373590, 33.730270, 48.208298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195448, 33.886284, 48.169250>,  <30.898544, 34.146309, 48.104172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195448, 33.886284, 48.169250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503032, 0.380105, -0.776195,
		0.442734, 0.657980, 0.609138,
		0.742257, -0.650064, 0.162700,
		31.418125, 33.691265, 48.218060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434277, 34.535614, 48.178005>,  <30.898544, 34.146309, 48.104172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434277, 34.535614, 48.178005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.587486, 34.176563, 48.090778>,  <31.679413, 33.961132, 48.038441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.587486, 34.176563, 48.090778>,  <31.434277, 34.535614, 48.178005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587486, 34.176563, 48.090778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506719, 0.401555, -0.762882,
		0.772352, 0.181704, 0.608651,
		0.383026, -0.897629, -0.218069,
		31.702394, 33.907276, 48.025356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940012, 34.670357, 47.771950>,  <31.434277, 34.535614, 48.178005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940012, 34.670357, 47.771950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948492, 34.276398, 47.703213>,  <31.953581, 34.040024, 47.661972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948492, 34.276398, 47.703213>,  <31.940012, 34.670357, 47.771950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948492, 34.276398, 47.703213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399516, 0.165905, -0.901589,
		0.916481, -0.049540, 0.396999,
		0.021200, -0.984897, -0.171841,
		31.954851, 33.980930, 47.651661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614410, 34.558247, 47.588634>,  <31.940012, 34.670357, 47.771950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614410, 34.558247, 47.588634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394627, 34.257961, 47.441921>,  <32.262756, 34.077789, 47.353893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394627, 34.257961, 47.441921>,  <32.614410, 34.558247, 47.588634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394627, 34.257961, 47.441921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462881, 0.091964, -0.881637,
		0.695584, -0.654201, 0.296958,
		-0.549459, -0.750709, -0.366785,
		32.229790, 34.032749, 47.331886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071632, 34.152260, 47.233952>,  <32.614410, 34.558247, 47.588634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071632, 34.152260, 47.233952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706650, 34.077824, 47.088184>,  <32.487659, 34.033161, 47.000725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706650, 34.077824, 47.088184>,  <33.071632, 34.152260, 47.233952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706650, 34.077824, 47.088184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348745, 0.112165, -0.930482,
		0.214031, -0.976109, -0.037446,
		-0.912451, -0.186093, -0.364420,
		32.432915, 34.021996, 46.978859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168781, 33.507870, 46.826511>,  <33.071632, 34.152260, 47.233952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168781, 33.507870, 46.826511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850758, 33.711460, 46.694557>,  <32.659943, 33.833614, 46.615383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850758, 33.711460, 46.694557>,  <33.168781, 33.507870, 46.826511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850758, 33.711460, 46.694557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423510, 0.076499, -0.902656,
		-0.434196, -0.857373, -0.276379,
		-0.795055, 0.508979, -0.329890,
		32.612240, 33.864155, 46.595589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052105, 33.358555, 46.094845>,  <33.168781, 33.507870, 46.826511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052105, 33.358555, 46.094845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844353, 33.695988, 46.149422>,  <32.719700, 33.898445, 46.182167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844353, 33.695988, 46.149422>,  <33.052105, 33.358555, 46.094845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844353, 33.695988, 46.149422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334490, 0.347615, -0.875945,
		-0.786359, -0.409311, -0.462714,
		-0.519381, 0.843580, 0.136440,
		32.688538, 33.949062, 46.190353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865265, 33.655903, 45.439396>,  <33.052105, 33.358555, 46.094845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865265, 33.655903, 45.439396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754860, 33.981331, 45.644108>,  <32.688618, 34.176586, 45.766933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754860, 33.981331, 45.644108>,  <32.865265, 33.655903, 45.439396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754860, 33.981331, 45.644108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310480, 0.579388, -0.753599,
		-0.909626, -0.049104, -0.412515,
		-0.276011, 0.813571, 0.511780,
		32.672058, 34.225403, 45.797642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498253, 34.085396, 44.951229>,  <32.865265, 33.655903, 45.439396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498253, 34.085396, 44.951229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.605198, 34.352741, 45.228878>,  <32.669365, 34.513149, 45.395466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.605198, 34.352741, 45.228878>,  <32.498253, 34.085396, 44.951229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605198, 34.352741, 45.228878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091986, 0.699353, -0.708833,
		-0.959196, 0.253364, 0.125500,
		0.267361, 0.668365, 0.694122,
		32.685406, 34.553249, 45.437115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134205, 34.672092, 44.823994>,  <32.498253, 34.085396, 44.951229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134205, 34.672092, 44.823994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436275, 34.808895, 45.047688>,  <32.617519, 34.890976, 45.181904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436275, 34.808895, 45.047688>,  <32.134205, 34.672092, 44.823994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436275, 34.808895, 45.047688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115381, 0.770441, -0.626984,
		-0.645285, 0.538009, 0.542359,
		0.755179, 0.342005, 0.559230,
		32.662830, 34.911495, 45.215458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007538, 35.360523, 44.837757>,  <32.134205, 34.672092, 44.823994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007538, 35.360523, 44.837757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397263, 35.321384, 44.918892>,  <32.631096, 35.297901, 44.967571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397263, 35.321384, 44.918892>,  <32.007538, 35.360523, 44.837757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397263, 35.321384, 44.918892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188263, 0.848142, -0.495189,
		-0.123582, 0.520655, 0.844776,
		0.974312, -0.097844, 0.202835,
		32.689556, 35.292030, 44.979744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276482, 36.042793, 44.933517>,  <32.007538, 35.360523, 44.837757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276482, 36.042793, 44.933517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586517, 35.805553, 44.846363>,  <32.772537, 35.663212, 44.794071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586517, 35.805553, 44.846363>,  <32.276482, 36.042793, 44.933517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586517, 35.805553, 44.846363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295344, 0.644924, -0.704872,
		0.558577, 0.481987, 0.675041,
		0.775089, -0.593095, -0.217887,
		32.819046, 35.627625, 44.780998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777412, 36.497578, 44.759911>,  <32.276482, 36.042793, 44.933517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777412, 36.497578, 44.759911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947346, 36.157570, 44.635342>,  <33.049305, 35.953564, 44.560600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947346, 36.157570, 44.635342>,  <32.777412, 36.497578, 44.759911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947346, 36.157570, 44.635342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448306, 0.496412, -0.743368,
		0.786472, 0.176193, 0.591961,
		0.424833, -0.850018, -0.311426,
		33.074795, 35.902565, 44.541912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534054, 36.590870, 44.804859>,  <32.777412, 36.497578, 44.759911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534054, 36.590870, 44.804859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.416100, 36.314960, 44.540359>,  <33.345325, 36.149414, 44.381660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.416100, 36.314960, 44.540359>,  <33.534054, 36.590870, 44.804859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416100, 36.314960, 44.540359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492960, 0.483002, -0.723671,
		0.818555, -0.539373, 0.197599,
		-0.294888, -0.689773, -0.661252,
		33.327633, 36.108028, 44.341984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.536156, 31.842617, 40.935413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.255199, 32.054070, 41.126072>,  <42.086624, 32.180943, 41.240467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.255199, 32.054070, 41.126072>,  <42.536156, 31.842617, 40.935413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255199, 32.054070, 41.126072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129994, 0.753653, -0.644289,
		-0.699818, -0.390583, -0.598080,
		-0.702393, 0.528633, 0.476647,
		42.044483, 32.212658, 41.269066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116528, 31.970964, 40.436127>,  <42.536156, 31.842617, 40.935413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116528, 31.970964, 40.436127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004597, 32.241699, 40.708477>,  <41.937439, 32.404140, 40.871887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004597, 32.241699, 40.708477>,  <42.116528, 31.970964, 40.436127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004597, 32.241699, 40.708477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024041, 0.704043, -0.709751,
		-0.959749, -0.214978, -0.180741,
		-0.279830, 0.676837, 0.680872,
		41.920647, 32.444752, 40.912739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579086, 32.385635, 40.173656>,  <42.116528, 31.970964, 40.436127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579086, 32.385635, 40.173656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.731606, 32.603981, 40.472092>,  <41.823116, 32.734989, 40.651154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.731606, 32.603981, 40.472092>,  <41.579086, 32.385635, 40.173656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731606, 32.603981, 40.472092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117692, 0.771829, -0.624844,
		-0.916931, 0.326058, 0.230051,
		0.381295, 0.545864, 0.746088,
		41.845993, 32.767738, 40.695919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280087, 33.107086, 40.067474>,  <41.579086, 32.385635, 40.173656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280087, 33.107086, 40.067474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.595261, 33.182911, 40.301815>,  <41.784367, 33.228405, 40.442417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.595261, 33.182911, 40.301815>,  <41.280087, 33.107086, 40.067474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595261, 33.182911, 40.301815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191953, 0.828406, -0.526211,
		-0.585070, 0.527077, 0.616346,
		0.787939, 0.189561, 0.585849,
		41.831642, 33.239780, 40.477570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272160, 33.819019, 40.231548>,  <41.280087, 33.107086, 40.067474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272160, 33.819019, 40.231548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.649250, 33.695057, 40.280907>,  <41.875504, 33.620678, 40.310520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.649250, 33.695057, 40.280907>,  <41.272160, 33.819019, 40.231548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649250, 33.695057, 40.280907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310468, 0.679939, -0.664299,
		0.121972, 0.664561, 0.737212,
		0.942726, -0.309907, 0.123391,
		41.932068, 33.602085, 40.317924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831558, 34.365238, 40.533627>,  <41.272160, 33.819019, 40.231548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831558, 34.365238, 40.533627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.035824, 34.116493, 40.296139>,  <42.158382, 33.967247, 40.153645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.035824, 34.116493, 40.296139>,  <41.831558, 34.365238, 40.533627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035824, 34.116493, 40.296139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051272, 0.711347, -0.700969,
		0.858252, 0.327516, 0.395142,
		0.510662, -0.621867, -0.593722,
		42.189022, 33.929932, 40.118023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025852, 34.733784, 40.052795>,  <41.831558, 34.365238, 40.533627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025852, 34.733784, 40.052795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.108646, 34.393124, 39.860191>,  <42.158321, 34.188728, 39.744629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.108646, 34.393124, 39.860191>,  <42.025852, 34.733784, 40.052795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108646, 34.393124, 39.860191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133621, 0.512165, -0.848429,
		0.969177, 0.111271, 0.219808,
		0.206983, -0.851649, -0.481511,
		42.170742, 34.137630, 39.715736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591011, 34.918072, 39.621250>,  <42.025852, 34.733784, 40.052795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591011, 34.918072, 39.621250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.441498, 34.585140, 39.457539>,  <42.351788, 34.385380, 39.359310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.441498, 34.585140, 39.457539>,  <42.591011, 34.918072, 39.621250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441498, 34.585140, 39.457539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194325, 0.361198, -0.912016,
		0.906930, -0.420433, 0.026732,
		-0.373786, -0.832329, -0.409282,
		42.329361, 34.335442, 39.334755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087978, 34.779762, 39.001564>,  <42.591011, 34.918072, 39.621250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087978, 34.779762, 39.001564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740612, 34.592072, 38.937462>,  <42.532192, 34.479458, 38.899002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740612, 34.592072, 38.937462>,  <43.087978, 34.779762, 39.001564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740612, 34.592072, 38.937462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093533, 0.162366, -0.982288,
		0.486935, -0.868023, -0.097113,
		-0.868416, -0.469226, -0.160251,
		42.480087, 34.451305, 38.889385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234421, 34.538979, 38.406315>,  <43.087978, 34.779762, 39.001564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234421, 34.538979, 38.406315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839191, 34.478737, 38.419132>,  <42.602055, 34.442593, 38.426823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839191, 34.478737, 38.419132>,  <43.234421, 34.538979, 38.406315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839191, 34.478737, 38.419132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062611, 0.202872, -0.977201,
		0.140673, -0.967554, -0.209882,
		-0.988074, -0.150607, 0.032041,
		42.542770, 34.433556, 38.428745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121811, 34.064182, 37.867950>,  <43.234421, 34.538979, 38.406315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121811, 34.064182, 37.867950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763000, 34.228775, 37.932472>,  <42.547714, 34.327530, 37.971188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763000, 34.228775, 37.932472>,  <43.121811, 34.064182, 37.867950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763000, 34.228775, 37.932472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087150, 0.193127, -0.977296,
		-0.433292, -0.890721, -0.137380,
		-0.897030, 0.411482, 0.161307,
		42.493893, 34.352219, 37.980865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677998, 33.805286, 37.349586>,  <43.121811, 34.064182, 37.867950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677998, 33.805286, 37.349586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521229, 34.148785, 37.481625>,  <42.427170, 34.354881, 37.560848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521229, 34.148785, 37.481625>,  <42.677998, 33.805286, 37.349586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521229, 34.148785, 37.481625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078567, 0.326247, -0.942014,
		-0.916639, -0.395128, -0.060394,
		-0.391919, 0.858742, 0.330094,
		42.403652, 34.406406, 37.580654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183590, 33.957684, 36.908928>,  <42.677998, 33.805286, 37.349586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183590, 33.957684, 36.908928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235489, 34.308617, 37.093735>,  <42.266628, 34.519176, 37.204620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235489, 34.308617, 37.093735>,  <42.183590, 33.957684, 36.908928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235489, 34.308617, 37.093735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068834, 0.456861, -0.886871,
		-0.989155, 0.146873, -0.001113,
		0.129749, 0.877329, 0.462016,
		42.274414, 34.571815, 37.232338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705559, 34.468620, 36.503712>,  <42.183590, 33.957684, 36.908928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705559, 34.468620, 36.503712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.978973, 34.687271, 36.697193>,  <42.143024, 34.818462, 36.813282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.978973, 34.687271, 36.697193>,  <41.705559, 34.468620, 36.503712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978973, 34.687271, 36.697193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069366, 0.611040, -0.788555,
		-0.726611, 0.572560, 0.379752,
		0.683539, 0.546630, 0.483704,
		42.184036, 34.851261, 36.842304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617142, 35.088058, 36.157806>,  <41.705559, 34.468620, 36.503712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617142, 35.088058, 36.157806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962704, 35.144989, 36.351055>,  <42.170040, 35.179150, 36.467003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962704, 35.144989, 36.351055>,  <41.617142, 35.088058, 36.157806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962704, 35.144989, 36.351055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292029, 0.639971, -0.710743,
		-0.410341, 0.755102, 0.511312,
		0.863909, 0.142329, 0.483119,
		42.221878, 35.187687, 36.495991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598690, 35.806709, 36.183189>,  <41.617142, 35.088058, 36.157806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598690, 35.806709, 36.183189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972565, 35.677017, 36.241478>,  <42.196888, 35.599201, 36.276451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972565, 35.677017, 36.241478>,  <41.598690, 35.806709, 36.183189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972565, 35.677017, 36.241478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344733, 0.726804, -0.594066,
		0.086706, 0.605500, 0.791108,
		0.934688, -0.324230, 0.145717,
		42.252972, 35.579750, 36.285194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073807, 36.412186, 36.435314>,  <41.598690, 35.806709, 36.183189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073807, 36.412186, 36.435314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302094, 36.127541, 36.271416>,  <42.439064, 35.956753, 36.173077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302094, 36.127541, 36.271416>,  <42.073807, 36.412186, 36.435314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302094, 36.127541, 36.271416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576974, 0.702574, -0.416522,
		0.584279, 0.001302, 0.811552,
		0.570718, -0.711609, -0.409748,
		42.473309, 35.914059, 36.148491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817188, 36.647755, 36.638206>,  <42.073807, 36.412186, 36.435314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817188, 36.647755, 36.638206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836319, 36.391552, 36.331623>,  <42.847797, 36.237831, 36.147675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836319, 36.391552, 36.331623>,  <42.817188, 36.647755, 36.638206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836319, 36.391552, 36.331623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560272, 0.652462, -0.510283,
		0.826927, -0.405020, 0.390065,
		0.047828, -0.640509, -0.766460,
		42.850666, 36.199398, 36.101685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539829, 36.664028, 36.511059>,  <42.817188, 36.647755, 36.638206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539829, 36.664028, 36.511059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.397865, 36.501701, 36.174168>,  <43.312687, 36.404305, 35.972034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.397865, 36.501701, 36.174168>,  <43.539829, 36.664028, 36.511059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397865, 36.501701, 36.174168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561235, 0.628003, -0.539099,
		0.747698, -0.664021, 0.004873,
		-0.354912, -0.405818, -0.842228,
		43.291393, 36.379955, 35.921497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076321, 36.651333, 36.038311>,  <43.539829, 36.664028, 36.511059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076321, 36.651333, 36.038311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765121, 36.618130, 35.789207>,  <43.578403, 36.598206, 35.639744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765121, 36.618130, 35.789207>,  <44.076321, 36.651333, 36.038311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765121, 36.618130, 35.789207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413078, 0.679273, -0.606593,
		0.473376, -0.729176, -0.494183,
		-0.777998, -0.083011, -0.622758,
		43.531723, 36.593227, 35.602379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376526, 36.434029, 35.390308>,  <44.076321, 36.651333, 36.038311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376526, 36.434029, 35.390308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022057, 36.584492, 35.282085>,  <43.809376, 36.674770, 35.217152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022057, 36.584492, 35.282085>,  <44.376526, 36.434029, 35.390308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022057, 36.584492, 35.282085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452080, 0.573919, -0.682818,
		-0.101569, -0.727409, -0.678646,
		-0.886176, 0.376156, -0.270554,
		43.756203, 36.697338, 35.200920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293964, 36.335892, 34.634205>,  <44.376526, 36.434029, 35.390308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293964, 36.335892, 34.634205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091576, 36.649376, 34.778313>,  <43.970142, 36.837467, 34.864777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091576, 36.649376, 34.778313>,  <44.293964, 36.335892, 34.634205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091576, 36.649376, 34.778313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496123, 0.606095, -0.621700,
		-0.705591, -0.135823, -0.695481,
		-0.505969, 0.783710, 0.360270,
		43.939785, 36.884487, 34.886395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974560, 36.507477, 33.966454>,  <44.293964, 36.335892, 34.634205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974560, 36.507477, 33.966454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332569, 36.421398, 33.810184>,  <44.547375, 36.369751, 33.716423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332569, 36.421398, 33.810184>,  <43.974560, 36.507477, 33.966454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332569, 36.421398, 33.810184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122694, -0.723331, 0.679514,
		-0.428812, -0.656114, -0.620995,
		0.895023, -0.215192, -0.390674,
		44.601074, 36.356842, 33.692982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002087, 35.830307, 33.824768>,  <43.974560, 36.507477, 33.966454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002087, 35.830307, 33.824768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376331, 35.947784, 33.903122>,  <44.600880, 36.018269, 33.950134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376331, 35.947784, 33.903122>,  <44.002087, 35.830307, 33.824768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376331, 35.947784, 33.903122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145204, -0.825923, 0.544763,
		0.321779, -0.481245, -0.815390,
		0.935614, 0.293691, 0.195886,
		44.657017, 36.035892, 33.961887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427704, 35.339283, 33.373676>,  <44.002087, 35.830307, 33.824768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427704, 35.339283, 33.373676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627090, 35.526722, 33.665417>,  <44.746723, 35.639183, 33.840462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627090, 35.526722, 33.665417>,  <44.427704, 35.339283, 33.373676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627090, 35.526722, 33.665417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184814, -0.879421, 0.438704,
		0.846978, -0.083887, -0.524968,
		0.498469, 0.468594, 0.729347,
		44.776630, 35.667301, 33.884220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090157, 34.892750, 33.441685>,  <44.427704, 35.339283, 33.373676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090157, 34.892750, 33.441685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016045, 35.088177, 33.782734>,  <44.971577, 35.205433, 33.987362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016045, 35.088177, 33.782734>,  <45.090157, 34.892750, 33.441685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016045, 35.088177, 33.782734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068594, -0.871961, 0.484746,
		0.980288, 0.031331, 0.195073,
		-0.185283, 0.488572, 0.852624,
		44.960461, 35.234749, 34.038521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503639, 34.510048, 33.936756>,  <45.090157, 34.892750, 33.441685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503639, 34.510048, 33.936756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235565, 34.711121, 34.155174>,  <45.074722, 34.831764, 34.286224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235565, 34.711121, 34.155174>,  <45.503639, 34.510048, 33.936756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235565, 34.711121, 34.155174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021010, -0.722571, 0.690977,
		0.741900, 0.474553, 0.473693,
		-0.670182, 0.502684, 0.546046,
		45.034512, 34.861927, 34.318989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722298, 34.465275, 34.593220>,  <45.503639, 34.510048, 33.936756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722298, 34.465275, 34.593220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.332279, 34.538074, 34.644081>,  <45.098270, 34.581757, 34.674599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.332279, 34.538074, 34.644081>,  <45.722298, 34.465275, 34.593220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332279, 34.538074, 34.644081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058763, -0.763842, 0.642723,
		0.214104, 0.619210, 0.755473,
		-0.975042, 0.182003, 0.127155,
		45.039768, 34.592674, 34.682228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588993, 34.349209, 35.279915>,  <45.722298, 34.465275, 34.593220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588993, 34.349209, 35.279915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.221878, 34.343842, 35.121178>,  <45.001610, 34.340622, 35.025936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.221878, 34.343842, 35.121178>,  <45.588993, 34.349209, 35.279915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221878, 34.343842, 35.121178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285426, -0.672489, 0.682854,
		-0.276030, 0.739985, 0.613375,
		-0.917790, -0.013415, -0.396839,
		44.946541, 34.339817, 35.002125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088562, 34.334164, 35.851631>,  <45.588993, 34.349209, 35.279915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088562, 34.334164, 35.851631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846149, 34.216286, 35.556095>,  <44.700703, 34.145561, 35.378773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846149, 34.216286, 35.556095>,  <45.088562, 34.334164, 35.851631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846149, 34.216286, 35.556095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348553, -0.736540, 0.579672,
		-0.715009, 0.608824, 0.343651,
		-0.606031, -0.294690, -0.738840,
		44.664341, 34.127880, 35.334442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439671, 34.385925, 36.099560>,  <45.088562, 34.334164, 35.851631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439671, 34.385925, 36.099560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.433750, 34.098686, 35.821243>,  <44.430199, 33.926342, 35.654255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.433750, 34.098686, 35.821243>,  <44.439671, 34.385925, 36.099560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433750, 34.098686, 35.821243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343625, -0.649828, 0.677972,
		-0.938990, 0.249128, -0.237135,
		-0.014805, -0.718094, -0.695789,
		44.429310, 33.883259, 35.612507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860806, 34.024780, 36.378315>,  <44.439671, 34.385925, 36.099560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860806, 34.024780, 36.378315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986027, 33.807415, 36.066750>,  <44.061161, 33.676998, 35.879810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986027, 33.807415, 36.066750>,  <43.860806, 34.024780, 36.378315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986027, 33.807415, 36.066750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511832, -0.787378, 0.343604,
		-0.800013, 0.291101, -0.524633,
		0.313061, -0.543412, -0.778907,
		44.079945, 33.644394, 35.833076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272583, 33.796970, 36.056988>,  <43.860806, 34.024780, 36.378315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272583, 33.796970, 36.056988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550594, 33.523773, 35.967140>,  <43.717400, 33.359856, 35.913231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550594, 33.523773, 35.967140>,  <43.272583, 33.796970, 36.056988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550594, 33.523773, 35.967140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511857, -0.689430, 0.512532,
		-0.504915, -0.241252, -0.828769,
		0.695027, -0.682997, -0.224617,
		43.759102, 33.318874, 35.899754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836922, 33.216217, 35.940784>,  <43.272583, 33.796970, 36.056988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836922, 33.216217, 35.940784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.208351, 33.111126, 36.045643>,  <43.431210, 33.048073, 36.108559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.208351, 33.111126, 36.045643>,  <42.836922, 33.216217, 35.940784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208351, 33.111126, 36.045643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346214, -0.867658, 0.356799,
		0.133710, -0.422073, -0.896647,
		0.928578, -0.262724, 0.262142,
		43.486923, 33.032310, 36.124287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920753, 32.555538, 35.696587>,  <42.836922, 33.216217, 35.940784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920753, 32.555538, 35.696587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.196243, 32.580093, 35.985554>,  <43.361538, 32.594826, 36.158936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.196243, 32.580093, 35.985554>,  <42.920753, 32.555538, 35.696587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196243, 32.580093, 35.985554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507059, -0.671408, 0.540465,
		0.518218, -0.738541, -0.431286,
		0.688724, 0.061391, 0.722419,
		43.402863, 32.598511, 36.202278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150635, 31.842459, 35.819332>,  <42.920753, 32.555538, 35.696587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150635, 31.842459, 35.819332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232712, 32.058144, 36.146046>,  <43.281960, 32.187553, 36.342075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232712, 32.058144, 36.146046>,  <43.150635, 31.842459, 35.819332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232712, 32.058144, 36.146046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409898, -0.710484, 0.572011,
		0.888751, -0.452173, 0.075235,
		0.205195, 0.539214, 0.816788,
		43.294270, 32.219910, 36.391083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287071, 31.323004, 36.249187>,  <43.150635, 31.842459, 35.819332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287071, 31.323004, 36.249187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263832, 31.637934, 36.494705>,  <43.249889, 31.826891, 36.642017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263832, 31.637934, 36.494705>,  <43.287071, 31.323004, 36.249187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263832, 31.637934, 36.494705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397289, -0.582286, 0.709298,
		0.915853, -0.202643, 0.346627,
		-0.058102, 0.787324, 0.613796,
		43.246403, 31.874130, 36.678844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645466, 31.072805, 36.917290>,  <43.287071, 31.323004, 36.249187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645466, 31.072805, 36.917290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.363003, 31.352839, 36.959663>,  <43.193523, 31.520859, 36.985088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.363003, 31.352839, 36.959663>,  <43.645466, 31.072805, 36.917290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363003, 31.352839, 36.959663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307761, -0.438221, 0.844539,
		0.637670, 0.563776, 0.524912,
		-0.706159, 0.700085, 0.105932,
		43.151154, 31.562864, 36.991444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824741, 31.407928, 37.572182>,  <43.645466, 31.072805, 36.917290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824741, 31.407928, 37.572182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437904, 31.497894, 37.524601>,  <43.205803, 31.551874, 37.496052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437904, 31.497894, 37.524601>,  <43.824741, 31.407928, 37.572182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437904, 31.497894, 37.524601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190770, -0.331633, 0.923919,
		0.168353, 0.916206, 0.363626,
		-0.967091, 0.224913, -0.118953,
		43.147778, 31.565369, 37.488914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641441, 31.802744, 38.117191>,  <43.824741, 31.407928, 37.572182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641441, 31.802744, 38.117191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309956, 31.626686, 37.978916>,  <43.111061, 31.521051, 37.895950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309956, 31.626686, 37.978916>,  <43.641441, 31.802744, 38.117191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309956, 31.626686, 37.978916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143602, -0.429759, 0.891451,
		-0.540928, 0.788404, 0.292944,
		-0.828719, -0.440144, -0.345685,
		43.061340, 31.494642, 37.875210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094337, 31.866108, 38.668030>,  <43.641441, 31.802744, 38.117191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094337, 31.866108, 38.668030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940811, 31.563055, 38.456871>,  <42.848694, 31.381224, 38.330173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940811, 31.563055, 38.456871>,  <43.094337, 31.866108, 38.668030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940811, 31.563055, 38.456871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365166, -0.400552, 0.840364,
		-0.848138, 0.515317, -0.122923,
		-0.383817, -0.757632, -0.527900,
		42.825665, 31.335766, 38.298500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486229, 31.681295, 39.020702>,  <43.094337, 31.866108, 38.668030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486229, 31.681295, 39.020702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516438, 31.352724, 38.794586>,  <42.534561, 31.155581, 38.658916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516438, 31.352724, 38.794586>,  <42.486229, 31.681295, 39.020702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516438, 31.352724, 38.794586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177111, -0.568943, 0.803079,
		-0.981289, 0.039471, -0.188451,
		0.075519, -0.821429, -0.565288,
		42.539093, 31.106295, 38.625000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.724316, 38.014580, 41.411041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553905, 37.740295, 41.174973>,  <37.451660, 37.575726, 41.033329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553905, 37.740295, 41.174973>,  <37.724316, 38.014580, 41.411041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553905, 37.740295, 41.174973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623913, 0.249717, -0.740523,
		0.655159, -0.683700, 0.321436,
		-0.426027, -0.685708, -0.590174,
		37.426098, 37.534584, 40.997921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247650, 37.706783, 41.103497>,  <37.724316, 38.014580, 41.411041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247650, 37.706783, 41.103497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923553, 37.646420, 40.876961>,  <37.729095, 37.610203, 40.741039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923553, 37.646420, 40.876961>,  <38.247650, 37.706783, 41.103497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923553, 37.646420, 40.876961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511695, 0.289052, -0.809085,
		0.285826, -0.945339, -0.156963,
		-0.810230, -0.150941, -0.566344,
		37.680481, 37.601147, 40.707058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501102, 37.293713, 40.556137>,  <38.247650, 37.706783, 41.103497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501102, 37.293713, 40.556137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145172, 37.379631, 40.395103>,  <37.931614, 37.431183, 40.298485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145172, 37.379631, 40.395103>,  <38.501102, 37.293713, 40.556137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145172, 37.379631, 40.395103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441764, 0.184616, -0.877930,
		-0.114251, -0.959052, -0.259164,
		-0.889827, 0.214794, -0.402582,
		37.878223, 37.444069, 40.274330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370838, 36.935337, 39.858368>,  <38.501102, 37.293713, 40.556137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370838, 36.935337, 39.858368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101009, 37.230228, 39.843166>,  <37.939114, 37.407166, 39.834045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101009, 37.230228, 39.843166>,  <38.370838, 36.935337, 39.858368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101009, 37.230228, 39.843166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265678, 0.194427, -0.944253,
		-0.688745, -0.647061, -0.327021,
		-0.674571, 0.737231, -0.038000,
		37.898640, 37.451397, 39.831768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021667, 36.917709, 39.156967>,  <38.370838, 36.935337, 39.858368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021667, 36.917709, 39.156967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972221, 37.287060, 39.302349>,  <37.942554, 37.508671, 39.389580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972221, 37.287060, 39.302349>,  <38.021667, 36.917709, 39.156967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972221, 37.287060, 39.302349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189761, 0.381504, -0.904680,
		-0.974018, -0.042858, -0.222379,
		-0.123611, 0.923373, 0.363459,
		37.935139, 37.564072, 39.411388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770378, 37.250107, 38.631607>,  <38.021667, 36.917709, 39.156967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770378, 37.250107, 38.631607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852848, 37.558838, 38.872196>,  <37.902332, 37.744076, 39.016552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852848, 37.558838, 38.872196>,  <37.770378, 37.250107, 38.631607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852848, 37.558838, 38.872196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212458, 0.564710, -0.797474,
		-0.955171, 0.292211, -0.047550,
		0.206179, 0.771826, 0.601477,
		37.914703, 37.790386, 39.052639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346027, 37.829323, 38.554001>,  <37.770378, 37.250107, 38.631607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346027, 37.829323, 38.554001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686054, 37.996712, 38.681915>,  <37.890072, 38.097145, 38.758663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686054, 37.996712, 38.681915>,  <37.346027, 37.829323, 38.554001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686054, 37.996712, 38.681915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110297, 0.452262, -0.885039,
		-0.514992, 0.787615, 0.338297,
		0.850069, 0.418475, 0.319783,
		37.941074, 38.122253, 38.777851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254936, 38.402122, 38.316360>,  <37.346027, 37.829323, 38.554001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254936, 38.402122, 38.316360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648746, 38.409622, 38.386066>,  <37.885033, 38.414124, 38.427891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648746, 38.409622, 38.386066>,  <37.254936, 38.402122, 38.316360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648746, 38.409622, 38.386066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154742, 0.373895, -0.914471,
		-0.082301, 0.927281, 0.365206,
		0.984521, 0.018749, 0.174261,
		37.944103, 38.415245, 38.438343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563526, 39.052067, 38.121437>,  <37.254936, 38.402122, 38.316360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563526, 39.052067, 38.121437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857700, 38.782730, 38.091122>,  <38.034206, 38.621128, 38.072933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857700, 38.782730, 38.091122>,  <37.563526, 39.052067, 38.121437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857700, 38.782730, 38.091122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136235, 0.256501, -0.956895,
		0.663757, 0.693410, 0.280373,
		0.735436, -0.673342, -0.075787,
		38.078331, 38.580727, 38.068386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934425, 39.386017, 37.674126>,  <37.563526, 39.052067, 38.121437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934425, 39.386017, 37.674126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105595, 39.024559, 37.681206>,  <38.208294, 38.807686, 37.685455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105595, 39.024559, 37.681206>,  <37.934425, 39.386017, 37.674126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105595, 39.024559, 37.681206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264168, 0.106317, -0.958599,
		0.864349, 0.414881, 0.284209,
		0.427921, -0.903643, 0.017704,
		38.233971, 38.753468, 37.686516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667526, 39.424660, 37.216213>,  <37.934425, 39.386017, 37.674126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667526, 39.424660, 37.216213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516716, 39.054413, 37.229374>,  <38.426228, 38.832264, 37.237270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516716, 39.054413, 37.229374>,  <38.667526, 39.424660, 37.216213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516716, 39.054413, 37.229374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101976, -0.076790, -0.991818,
		0.920571, -0.370588, 0.123343,
		-0.377028, -0.925617, 0.032899,
		38.403606, 38.776726, 37.239243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186749, 39.016979, 36.861485>,  <38.667526, 39.424660, 37.216213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186749, 39.016979, 36.861485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830338, 38.835476, 36.866680>,  <38.616489, 38.726574, 36.869797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830338, 38.835476, 36.866680>,  <39.186749, 39.016979, 36.861485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830338, 38.835476, 36.866680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024185, 0.018887, -0.999529,
		0.453299, -0.890925, -0.027803,
		-0.891031, -0.453758, 0.012985,
		38.563026, 38.699348, 36.870575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289314, 38.436737, 36.562164>,  <39.186749, 39.016979, 36.861485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289314, 38.436737, 36.562164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903667, 38.541687, 36.546021>,  <38.672279, 38.604656, 36.536335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903667, 38.541687, 36.546021>,  <39.289314, 38.436737, 36.562164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903667, 38.541687, 36.546021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040940, -0.003240, -0.999156,
		-0.262289, -0.964959, -0.007618,
		-0.964120, 0.262380, -0.040356,
		38.614429, 38.620399, 36.533913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927711, 37.968552, 36.191544>,  <39.289314, 38.436737, 36.562164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927711, 37.968552, 36.191544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718678, 38.301373, 36.117153>,  <38.593258, 38.501064, 36.072521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718678, 38.301373, 36.117153>,  <38.927711, 37.968552, 36.191544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718678, 38.301373, 36.117153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097376, -0.158451, -0.982554,
		-0.847006, -0.531581, 0.001782,
		-0.522589, 0.832055, -0.185972,
		38.561901, 38.550987, 36.061363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510654, 37.345673, 36.133953>,  <38.927711, 37.968552, 36.191544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510654, 37.345673, 36.133953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753563, 37.142300, 36.378155>,  <38.899307, 37.020275, 36.524677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753563, 37.142300, 36.378155>,  <38.510654, 37.345673, 36.133953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753563, 37.142300, 36.378155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644143, -0.764896, 0.003726,
		0.465077, -0.395514, -0.792005,
		0.607275, -0.508432, 0.610503,
		38.935745, 36.989769, 36.561306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432808, 36.696316, 35.965267>,  <38.510654, 37.345673, 36.133953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432808, 36.696316, 35.965267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592899, 36.656460, 36.329659>,  <38.688953, 36.632545, 36.548294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592899, 36.656460, 36.329659>,  <38.432808, 36.696316, 35.965267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592899, 36.656460, 36.329659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487948, -0.864612, 0.119805,
		0.775707, -0.492461, -0.394667,
		0.400232, -0.099643, 0.910980,
		38.712971, 36.626568, 36.602951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723389, 36.047565, 36.085464>,  <38.432808, 36.696316, 35.965267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723389, 36.047565, 36.085464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608185, 36.170837, 36.448139>,  <38.539062, 36.244801, 36.665745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608185, 36.170837, 36.448139>,  <38.723389, 36.047565, 36.085464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608185, 36.170837, 36.448139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583331, -0.807331, 0.089115,
		0.759458, -0.503231, 0.412288,
		-0.288008, 0.308179, 0.906685,
		38.521782, 36.263290, 36.720146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560974, 35.447903, 36.525093>,  <38.723389, 36.047565, 36.085464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560974, 35.447903, 36.525093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374821, 35.713619, 36.759064>,  <38.263130, 35.873047, 36.899445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374821, 35.713619, 36.759064>,  <38.560974, 35.447903, 36.525093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374821, 35.713619, 36.759064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445450, -0.746844, 0.493760,
		0.764848, -0.030768, 0.643475,
		-0.465383, 0.664288, 0.584928,
		38.235207, 35.912907, 36.934544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621452, 35.108444, 37.156239>,  <38.560974, 35.447903, 36.525093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621452, 35.108444, 37.156239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367435, 35.407429, 37.234226>,  <38.215023, 35.586819, 37.281021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367435, 35.407429, 37.234226>,  <38.621452, 35.108444, 37.156239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367435, 35.407429, 37.234226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463121, -0.570410, 0.678345,
		0.618252, 0.340485, 0.708403,
		-0.635046, 0.747464, 0.194971,
		38.176922, 35.631668, 37.292717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563747, 35.177826, 37.860058>,  <38.621452, 35.108444, 37.156239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563747, 35.177826, 37.860058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217163, 35.361969, 37.782799>,  <38.009212, 35.472454, 37.736443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217163, 35.361969, 37.782799>,  <38.563747, 35.177826, 37.860058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217163, 35.361969, 37.782799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473081, -0.633544, 0.612222,
		0.159476, 0.621843, 0.766732,
		-0.866465, 0.460361, -0.193148,
		37.957222, 35.500076, 37.724854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172367, 35.376530, 38.503078>,  <38.563747, 35.177826, 37.860058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172367, 35.376530, 38.503078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905945, 35.353401, 38.205616>,  <37.746090, 35.339523, 38.027138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905945, 35.353401, 38.205616>,  <38.172367, 35.376530, 38.503078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905945, 35.353401, 38.205616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607214, -0.536993, 0.585602,
		-0.433200, 0.841603, 0.322556,
		-0.666055, -0.057822, -0.743658,
		37.706127, 35.336056, 37.982517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492615, 35.478916, 38.811405>,  <38.172367, 35.376530, 38.503078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492615, 35.478916, 38.811405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423992, 35.280743, 38.470791>,  <37.382820, 35.161839, 38.266422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423992, 35.280743, 38.470791>,  <37.492615, 35.478916, 38.811405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423992, 35.280743, 38.470791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640197, -0.600909, 0.478598,
		-0.748809, 0.627257, -0.214087,
		-0.171557, -0.495436, -0.851534,
		37.372524, 35.132111, 38.215332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808289, 35.500221, 38.810310>,  <37.492615, 35.478916, 38.811405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808289, 35.500221, 38.810310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918427, 35.224983, 38.541771>,  <36.984509, 35.059841, 38.380646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918427, 35.224983, 38.541771>,  <36.808289, 35.500221, 38.810310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918427, 35.224983, 38.541771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701784, -0.621151, 0.348812,
		-0.657026, 0.375099, -0.653925,
		0.275347, -0.688093, -0.671350,
		37.001030, 35.018555, 38.340366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145210, 35.278206, 38.587212>,  <36.808289, 35.500221, 38.810310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145210, 35.278206, 38.587212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412971, 34.996452, 38.492771>,  <36.573627, 34.827400, 38.436108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412971, 34.996452, 38.492771>,  <36.145210, 35.278206, 38.587212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412971, 34.996452, 38.492771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660859, -0.709783, 0.243872,
		-0.339363, -0.007216, -0.940628,
		0.669402, -0.704383, -0.236105,
		36.613792, 34.785137, 38.421940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744881, 34.836472, 38.363041>,  <36.145210, 35.278206, 38.587212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744881, 34.836472, 38.363041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082611, 34.636974, 38.441399>,  <36.285248, 34.517277, 38.488415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082611, 34.636974, 38.441399>,  <35.744881, 34.836472, 38.363041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082611, 34.636974, 38.441399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512010, -0.643128, 0.569414,
		-0.158007, -0.581069, -0.798369,
		0.844322, -0.498744, 0.195894,
		36.335907, 34.487350, 38.500168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710663, 34.066559, 38.106113>,  <35.744881, 34.836472, 38.363041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710663, 34.066559, 38.106113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962662, 34.101807, 38.414745>,  <36.113861, 34.122955, 38.599926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962662, 34.101807, 38.414745>,  <35.710663, 34.066559, 38.106113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962662, 34.101807, 38.414745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434862, -0.783141, 0.444505,
		0.643423, -0.615569, -0.455061,
		0.630001, 0.088116, 0.771579,
		36.151661, 34.128242, 38.646217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694279, 33.400291, 38.279400>,  <35.710663, 34.066559, 38.106113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694279, 33.400291, 38.279400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839542, 33.612869, 38.585518>,  <35.926701, 33.740417, 38.769188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839542, 33.612869, 38.585518>,  <35.694279, 33.400291, 38.279400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839542, 33.612869, 38.585518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418644, -0.640722, 0.643593,
		0.832379, -0.554114, -0.010197,
		0.363158, 0.531444, 0.765300,
		35.948490, 33.772301, 38.815109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982494, 32.912045, 38.801376>,  <35.694279, 33.400291, 38.279400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982494, 32.912045, 38.801376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919353, 33.251141, 39.003925>,  <35.881470, 33.454597, 39.125454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919353, 33.251141, 39.003925>,  <35.982494, 32.912045, 38.801376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919353, 33.251141, 39.003925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491084, -0.512287, 0.704556,
		0.856691, -0.137458, 0.497178,
		-0.157851, 0.847743, 0.506375,
		35.871998, 33.505463, 39.155838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284203, 32.240505, 38.553307>,  <35.982494, 32.912045, 38.801376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284203, 32.240505, 38.553307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027679, 31.936728, 38.509521>,  <35.873768, 31.754461, 38.483250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027679, 31.936728, 38.509521>,  <36.284203, 32.240505, 38.553307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027679, 31.936728, 38.509521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076219, 0.205007, -0.975788,
		0.763493, -0.617433, -0.189356,
		-0.641303, -0.759440, -0.109461,
		35.835289, 31.708895, 38.476685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520737, 31.845554, 38.010689>,  <36.284203, 32.240505, 38.553307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520737, 31.845554, 38.010689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131748, 31.765787, 38.058914>,  <35.898357, 31.717926, 38.087849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131748, 31.765787, 38.058914>,  <36.520737, 31.845554, 38.010689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131748, 31.765787, 38.058914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166682, 0.233674, -0.957922,
		0.162849, -0.951646, -0.260479,
		-0.972470, -0.199414, 0.120569,
		35.840008, 31.705961, 38.095085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331558, 31.624844, 37.362473>,  <36.520737, 31.845554, 38.010689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331558, 31.624844, 37.362473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980488, 31.702328, 37.537819>,  <35.769844, 31.748817, 37.643024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980488, 31.702328, 37.537819>,  <36.331558, 31.624844, 37.362473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980488, 31.702328, 37.537819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337653, 0.399185, -0.852433,
		-0.340112, -0.896174, -0.284948,
		-0.877675, 0.193709, 0.438364,
		35.717186, 31.760441, 37.669327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831017, 31.479782, 36.773544>,  <36.331558, 31.624844, 37.362473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831017, 31.479782, 36.773544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666481, 31.729757, 37.038952>,  <35.567760, 31.879742, 37.198196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666481, 31.729757, 37.038952>,  <35.831017, 31.479782, 36.773544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666481, 31.729757, 37.038952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460483, 0.485743, -0.742973,
		-0.786611, -0.611151, 0.087969,
		-0.411339, 0.624939, 0.663515,
		35.543079, 31.917238, 37.238007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066132, 31.569221, 36.560329>,  <35.831017, 31.479782, 36.773544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066132, 31.569221, 36.560329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159946, 31.891483, 36.777920>,  <35.216236, 32.084843, 36.908474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159946, 31.891483, 36.777920>,  <35.066132, 31.569221, 36.560329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159946, 31.891483, 36.777920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328774, 0.592349, -0.735548,
		-0.914823, -0.006336, 0.403805,
		0.234533, 0.805657, 0.543978,
		35.230305, 32.133179, 36.941113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448921, 31.932230, 36.637524>,  <35.066132, 31.569221, 36.560329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448921, 31.932230, 36.637524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750904, 32.191200, 36.679256>,  <34.932095, 32.346581, 36.704296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750904, 32.191200, 36.679256>,  <34.448921, 31.932230, 36.637524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750904, 32.191200, 36.679256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407900, 0.588183, -0.698326,
		-0.513479, 0.484648, 0.708136,
		0.754955, 0.647424, 0.104332,
		34.977390, 32.385429, 36.710556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094555, 32.573349, 36.559055>,  <34.448921, 31.932230, 36.637524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094555, 32.573349, 36.559055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484962, 32.642113, 36.505627>,  <34.719208, 32.683372, 36.473572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484962, 32.642113, 36.505627>,  <34.094555, 32.573349, 36.559055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484962, 32.642113, 36.505627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209700, 0.577588, -0.788935,
		-0.058476, 0.798022, 0.599785,
		0.976016, 0.171909, -0.133570,
		34.777767, 32.693684, 36.465557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097809, 33.348934, 36.450626>,  <34.094555, 32.573349, 36.559055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097809, 33.348934, 36.450626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430302, 33.182747, 36.302876>,  <34.629799, 33.083035, 36.214226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430302, 33.182747, 36.302876>,  <34.097809, 33.348934, 36.450626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430302, 33.182747, 36.302876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030847, 0.628942, -0.776840,
		0.555071, 0.657128, 0.509980,
		0.831231, -0.415470, -0.369378,
		34.679672, 33.058105, 36.192062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484158, 33.909561, 36.156883>,  <34.097809, 33.348934, 36.450626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484158, 33.909561, 36.156883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625851, 33.577206, 35.985233>,  <34.710865, 33.377792, 35.882244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625851, 33.577206, 35.985233>,  <34.484158, 33.909561, 36.156883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625851, 33.577206, 35.985233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190666, 0.513408, -0.836695,
		0.915514, 0.214564, 0.340287,
		0.354231, -0.830887, -0.429123,
		34.732121, 33.327938, 35.856495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046364, 34.074646, 35.793442>,  <34.484158, 33.909561, 36.156883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046364, 34.074646, 35.793442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014469, 33.724373, 35.602940>,  <34.995331, 33.514210, 35.488640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014469, 33.724373, 35.602940>,  <35.046364, 34.074646, 35.793442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014469, 33.724373, 35.602940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448954, 0.395027, -0.801495,
		0.889990, -0.277726, 0.361643,
		-0.079737, -0.875684, -0.476256,
		34.990547, 33.461666, 35.460064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793121, 34.721508, 35.992691>,  <35.046364, 34.074646, 35.793442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793121, 34.721508, 35.992691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936630, 35.082806, 35.898510>,  <35.022736, 35.299583, 35.841999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936630, 35.082806, 35.898510>,  <34.793121, 34.721508, 35.992691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936630, 35.082806, 35.898510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871218, -0.233491, 0.431811,
		0.335052, -0.360055, -0.870690,
		0.358774, 0.903240, -0.235455,
		35.044262, 35.353779, 35.827873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620373, 35.316311, 36.495438>,  <34.793121, 34.721508, 35.992691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620373, 35.316311, 36.495438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501709, 35.524235, 36.174988>,  <34.430511, 35.648987, 35.982719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501709, 35.524235, 36.174988>,  <34.620373, 35.316311, 36.495438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501709, 35.524235, 36.174988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611405, -0.747799, -0.258805,
		-0.733606, 0.413034, 0.539652,
		-0.296656, 0.519808, -0.801121,
		34.412712, 35.680176, 35.934650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.266197, 30.050312, 42.260113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903400, 30.104309, 42.100540>,  <35.685722, 30.136707, 42.004795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903400, 30.104309, 42.100540>,  <36.266197, 30.050312, 42.260113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903400, 30.104309, 42.100540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412470, 0.093382, -0.906172,
		-0.085075, -0.986436, -0.140377,
		-0.906990, 0.134994, -0.398931,
		35.631302, 30.144806, 41.980862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209995, 29.676844, 41.629608>,  <36.266197, 30.050312, 42.260113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209995, 29.676844, 41.629608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916607, 29.944946, 41.584408>,  <35.740574, 30.105808, 41.557285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916607, 29.944946, 41.584408>,  <36.209995, 29.676844, 41.629608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916607, 29.944946, 41.584408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341925, 0.220150, -0.913576,
		-0.587453, -0.708724, -0.390652,
		-0.733475, 0.670257, -0.113003,
		35.696564, 30.146023, 41.550507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938656, 29.549877, 40.920963>,  <36.209995, 29.676844, 41.629608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938656, 29.549877, 40.920963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778133, 29.905790, 41.007900>,  <35.681820, 30.119339, 41.060062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778133, 29.905790, 41.007900>,  <35.938656, 29.549877, 40.920963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778133, 29.905790, 41.007900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124529, 0.182084, -0.975366,
		-0.907439, -0.418486, 0.037732,
		-0.401307, 0.889783, 0.217343,
		35.657742, 30.172726, 41.073105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400291, 29.643818, 40.519909>,  <35.938656, 29.549877, 40.920963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400291, 29.643818, 40.519909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496666, 30.019606, 40.617355>,  <35.554489, 30.245077, 40.675823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496666, 30.019606, 40.617355>,  <35.400291, 29.643818, 40.519909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496666, 30.019606, 40.617355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005910, 0.252430, -0.967597,
		-0.970523, 0.231691, 0.066372,
		0.240937, 0.939467, 0.243620,
		35.568947, 30.301445, 40.690441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918636, 30.036221, 40.093403>,  <35.400291, 29.643818, 40.519909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918636, 30.036221, 40.093403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194813, 30.295792, 40.221272>,  <35.360519, 30.451534, 40.297993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194813, 30.295792, 40.221272>,  <34.918636, 30.036221, 40.093403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194813, 30.295792, 40.221272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087556, 0.513619, -0.853539,
		-0.718073, 0.561328, 0.411440,
		0.690439, 0.648927, 0.319669,
		35.401943, 30.490469, 40.317173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712357, 30.655626, 39.875603>,  <34.918636, 30.036221, 40.093403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712357, 30.655626, 39.875603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105381, 30.718712, 39.915009>,  <35.341194, 30.756563, 39.938652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105381, 30.718712, 39.915009>,  <34.712357, 30.655626, 39.875603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105381, 30.718712, 39.915009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011197, 0.578983, -0.815263,
		-0.185617, 0.799940, 0.570651,
		0.982558, 0.157716, 0.098512,
		35.400150, 30.766027, 39.944561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769531, 31.334055, 39.959461>,  <34.712357, 30.655626, 39.875603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769531, 31.334055, 39.959461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112240, 31.195107, 39.806999>,  <35.317863, 31.111736, 39.715523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112240, 31.195107, 39.806999>,  <34.769531, 31.334055, 39.959461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112240, 31.195107, 39.806999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096138, 0.618558, -0.779835,
		0.506660, 0.704782, 0.496566,
		0.856769, -0.347372, -0.381155,
		35.369270, 31.090895, 39.692654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249901, 31.951473, 39.690735>,  <34.769531, 31.334055, 39.959461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249901, 31.951473, 39.690735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423607, 31.644230, 39.502514>,  <35.527828, 31.459883, 39.389580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423607, 31.644230, 39.502514>,  <35.249901, 31.951473, 39.690735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423607, 31.644230, 39.502514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092614, 0.481543, -0.871515,
		0.896013, 0.422046, 0.137978,
		0.434262, -0.768110, -0.470556,
		35.553886, 31.413797, 39.361347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597527, 32.277340, 39.188202>,  <35.249901, 31.951473, 39.690735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597527, 32.277340, 39.188202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588043, 31.901787, 39.050831>,  <35.582352, 31.676455, 38.968410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588043, 31.901787, 39.050831>,  <35.597527, 32.277340, 39.188202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588043, 31.901787, 39.050831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092822, 0.344105, -0.934332,
		0.995400, 0.009723, -0.095308,
		-0.023712, -0.938881, -0.343424,
		35.580929, 31.620123, 38.947803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100552, 32.675114, 39.539062>,  <35.597527, 32.277340, 39.188202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100552, 32.675114, 39.539062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892288, 33.016212, 39.555721>,  <35.767330, 33.220871, 39.565716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892288, 33.016212, 39.555721>,  <36.100552, 32.675114, 39.539062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892288, 33.016212, 39.555721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396238, -0.284559, 0.872938,
		0.756248, 0.438001, 0.486050,
		-0.520658, 0.852749, 0.041644,
		35.736092, 33.272038, 39.568214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094620, 32.875381, 40.260040>,  <36.100552, 32.675114, 39.539062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094620, 32.875381, 40.260040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796795, 33.110603, 40.133663>,  <35.618099, 33.251736, 40.057838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796795, 33.110603, 40.133663>,  <36.094620, 32.875381, 40.260040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796795, 33.110603, 40.133663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472397, -0.129735, 0.871785,
		0.471673, 0.798345, 0.374392,
		-0.744557, 0.588059, -0.315944,
		35.573429, 33.287022, 40.038879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911736, 33.256954, 40.761578>,  <36.094620, 32.875381, 40.260040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911736, 33.256954, 40.761578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574680, 33.287701, 40.548389>,  <35.372448, 33.306149, 40.420479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574680, 33.287701, 40.548389>,  <35.911736, 33.256954, 40.761578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574680, 33.287701, 40.548389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536722, -0.039909, 0.842815,
		0.043514, 0.996243, 0.074884,
		-0.842636, 0.076866, -0.532969,
		35.321888, 33.310760, 40.388500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521240, 33.882652, 41.066933>,  <35.911736, 33.256954, 40.761578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521240, 33.882652, 41.066933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.284977, 33.630024, 40.866039>,  <35.143219, 33.478447, 40.745502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.284977, 33.630024, 40.866039>,  <35.521240, 33.882652, 41.066933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284977, 33.630024, 40.866039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649704, 0.003102, 0.760181,
		-0.478551, 0.775311, -0.412167,
		-0.590656, -0.631572, -0.502238,
		35.107780, 33.440552, 40.715366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892788, 34.134937, 41.260231>,  <35.521240, 33.882652, 41.066933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892788, 34.134937, 41.260231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803749, 33.764084, 41.139648>,  <34.750328, 33.541573, 41.067299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803749, 33.764084, 41.139648>,  <34.892788, 34.134937, 41.260231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803749, 33.764084, 41.139648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572111, -0.126149, 0.810416,
		-0.789392, 0.352862, -0.502343,
		-0.222595, -0.927132, -0.301458,
		34.736969, 33.485943, 41.049210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208973, 34.009739, 41.504475>,  <34.892788, 34.134937, 41.260231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208973, 34.009739, 41.504475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324074, 33.633305, 41.433426>,  <34.393135, 33.407444, 41.390797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324074, 33.633305, 41.433426>,  <34.208973, 34.009739, 41.504475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324074, 33.633305, 41.433426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447435, -0.296083, 0.843882,
		-0.846760, -0.163351, -0.506274,
		0.287748, -0.941090, -0.177622,
		34.410397, 33.350979, 41.380138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625320, 33.425682, 41.576302>,  <34.208973, 34.009739, 41.504475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625320, 33.425682, 41.576302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.991753, 33.272305, 41.623230>,  <34.211613, 33.180279, 41.651386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.991753, 33.272305, 41.623230>,  <33.625320, 33.425682, 41.576302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991753, 33.272305, 41.623230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216819, -0.227554, 0.949320,
		-0.337314, -0.895093, -0.291596,
		0.916083, -0.383442, 0.117316,
		34.266579, 33.157272, 41.658424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495907, 32.810387, 41.945473>,  <33.625320, 33.425682, 41.576302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495907, 32.810387, 41.945473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.887096, 32.838165, 42.024197>,  <34.121811, 32.854832, 42.071430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.887096, 32.838165, 42.024197>,  <33.495907, 32.810387, 41.945473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887096, 32.838165, 42.024197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188796, -0.107606, 0.976103,
		0.088961, -0.991765, -0.092126,
		0.977979, 0.069442, 0.196814,
		34.180489, 32.858997, 42.083241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558887, 32.389061, 42.439533>,  <33.495907, 32.810387, 41.945473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558887, 32.389061, 42.439533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.886051, 32.617283, 42.469196>,  <34.082348, 32.754215, 42.486996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.886051, 32.617283, 42.469196>,  <33.558887, 32.389061, 42.439533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886051, 32.617283, 42.469196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121720, 0.045611, 0.991516,
		0.562329, -0.819994, 0.106753,
		0.817906, 0.570552, 0.074161,
		34.131424, 32.788448, 42.491444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978981, 31.987535, 42.839790>,  <33.558887, 32.389061, 42.439533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978981, 31.987535, 42.839790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.100101, 32.366577, 42.880505>,  <34.172775, 32.594002, 42.904934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.100101, 32.366577, 42.880505>,  <33.978981, 31.987535, 42.839790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100101, 32.366577, 42.880505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211449, -0.170934, 0.962326,
		0.929301, -0.269871, -0.252129,
		0.302801, 0.947603, 0.101786,
		34.190941, 32.650860, 42.911041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738052, 32.050041, 43.112045>,  <33.978981, 31.987535, 42.839790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738052, 32.050041, 43.112045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.524902, 32.375473, 43.205105>,  <34.397011, 32.570732, 43.260941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.524902, 32.375473, 43.205105>,  <34.738052, 32.050041, 43.112045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524902, 32.375473, 43.205105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277730, -0.091544, 0.956287,
		0.799317, 0.574197, -0.177175,
		-0.532878, 0.813583, 0.232645,
		34.365040, 32.619549, 43.274899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152603, 32.245094, 43.587765>,  <34.738052, 32.050041, 43.112045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152603, 32.245094, 43.587765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838577, 32.485218, 43.648823>,  <34.650162, 32.629292, 43.685459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838577, 32.485218, 43.648823>,  <35.152603, 32.245094, 43.587765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838577, 32.485218, 43.648823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055834, -0.176853, 0.982652,
		0.616894, 0.779967, 0.105323,
		-0.785063, 0.600312, 0.152649,
		34.603058, 32.665310, 43.694618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340782, 32.686554, 44.044991>,  <35.152603, 32.245094, 43.587765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340782, 32.686554, 44.044991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943760, 32.702892, 44.090889>,  <34.705547, 32.712696, 44.118427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943760, 32.702892, 44.090889>,  <35.340782, 32.686554, 44.044991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943760, 32.702892, 44.090889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114521, -0.007726, 0.993391,
		0.041461, 0.999136, 0.002991,
		-0.992555, 0.040844, 0.114743,
		34.645992, 32.715145, 44.125313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227047, 33.184025, 44.618065>,  <35.340782, 32.686554, 44.044991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227047, 33.184025, 44.618065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.869579, 33.004742, 44.609505>,  <34.655098, 32.897171, 44.604370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.869579, 33.004742, 44.609505>,  <35.227047, 33.184025, 44.618065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869579, 33.004742, 44.609505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038408, -0.123922, 0.991548,
		-0.447073, 0.885298, 0.127960,
		-0.893673, -0.448209, -0.021400,
		34.601479, 32.870277, 44.603085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.373161, 34.283138, 44.332607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.674578, 34.030197, 44.260708>,  <30.855427, 33.878433, 44.217567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.674578, 34.030197, 44.260708>,  <30.373161, 34.283138, 44.332607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674578, 34.030197, 44.260708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315562, 0.587783, -0.744937,
		0.576713, 0.504619, 0.642465,
		0.753540, -0.632353, -0.179744,
		30.900640, 33.840492, 44.206783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855352, 34.715870, 44.238377>,  <30.373161, 34.283138, 44.332607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855352, 34.715870, 44.238377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.008570, 34.387684, 44.068619>,  <31.100500, 34.190773, 43.966766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.008570, 34.387684, 44.068619>,  <30.855352, 34.715870, 44.238377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008570, 34.387684, 44.068619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237369, 0.531431, -0.813165,
		0.892712, 0.210739, 0.398315,
		0.383042, -0.820469, -0.424392,
		31.123482, 34.141544, 43.941299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568069, 34.884411, 43.908318>,  <30.855352, 34.715870, 44.238377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568069, 34.884411, 43.908318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426718, 34.568226, 43.708202>,  <31.341906, 34.378513, 43.588135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426718, 34.568226, 43.708202>,  <31.568069, 34.884411, 43.908318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426718, 34.568226, 43.708202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289070, 0.416349, -0.862028,
		0.889697, -0.449242, 0.081369,
		-0.353381, -0.790465, -0.500287,
		31.320704, 34.331085, 43.558117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088020, 34.692425, 43.386974>,  <31.568069, 34.884411, 43.908318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088020, 34.692425, 43.386974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754105, 34.511513, 43.261387>,  <31.553755, 34.402966, 43.186035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754105, 34.511513, 43.261387>,  <32.088020, 34.692425, 43.386974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754105, 34.511513, 43.261387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202077, 0.278767, -0.938858,
		0.512149, -0.847192, -0.141316,
		-0.834787, -0.452278, -0.313967,
		31.503668, 34.375828, 43.167198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306046, 34.371685, 42.782776>,  <32.088020, 34.692425, 43.386974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306046, 34.371685, 42.782776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908932, 34.365540, 42.735222>,  <31.670662, 34.361851, 42.706688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908932, 34.365540, 42.735222>,  <32.306046, 34.371685, 42.782776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908932, 34.365540, 42.735222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114354, 0.176089, -0.977709,
		0.035958, -0.984254, -0.173062,
		-0.992789, -0.015366, -0.118885,
		31.611095, 34.360928, 42.699554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156708, 34.057758, 42.115227>,  <32.306046, 34.371685, 42.782776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156708, 34.057758, 42.115227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818695, 34.254963, 42.198036>,  <31.615887, 34.373287, 42.247723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818695, 34.254963, 42.198036>,  <32.156708, 34.057758, 42.115227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818695, 34.254963, 42.198036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057461, 0.301203, -0.951827,
		-0.531619, -0.816220, -0.226197,
		-0.845032, 0.493012, 0.207026,
		31.565186, 34.402866, 42.260143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697390, 33.905460, 41.606163>,  <32.156708, 34.057758, 42.115227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697390, 33.905460, 41.606163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598757, 34.269012, 41.740707>,  <31.539577, 34.487144, 41.821434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598757, 34.269012, 41.740707>,  <31.697390, 33.905460, 41.606163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598757, 34.269012, 41.740707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007249, 0.348801, -0.937169,
		-0.969095, -0.228650, -0.092596,
		-0.246581, 0.908877, 0.336363,
		31.524782, 34.541676, 41.841618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217184, 34.157459, 41.135693>,  <31.697390, 33.905460, 41.606163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217184, 34.157459, 41.135693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347122, 34.484261, 41.326260>,  <31.425085, 34.680344, 41.440601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347122, 34.484261, 41.326260>,  <31.217184, 34.157459, 41.135693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347122, 34.484261, 41.326260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024923, 0.510959, -0.859244,
		-0.945438, 0.267249, 0.186346,
		0.324847, 0.817006, 0.476419,
		31.444576, 34.729362, 41.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787128, 34.709686, 40.872128>,  <31.217184, 34.157459, 41.135693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787128, 34.709686, 40.872128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.112564, 34.870102, 41.040527>,  <31.307825, 34.966351, 41.141567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.112564, 34.870102, 41.040527>,  <30.787128, 34.709686, 40.872128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112564, 34.870102, 41.040527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254048, 0.406101, -0.877805,
		-0.523003, 0.821126, 0.228516,
		0.813589, 0.401041, 0.420997,
		31.356642, 34.990414, 41.166828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901827, 35.400928, 40.521626>,  <30.787128, 34.709686, 40.872128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901827, 35.400928, 40.521626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267937, 35.296566, 40.644398>,  <31.487602, 35.233948, 40.718060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267937, 35.296566, 40.644398>,  <30.901827, 35.400928, 40.521626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267937, 35.296566, 40.644398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387976, 0.365905, -0.845924,
		0.108396, 0.893333, 0.436127,
		0.915273, -0.260902, 0.306929,
		31.542519, 35.218296, 40.736477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306566, 35.887806, 40.305664>,  <30.901827, 35.400928, 40.521626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306566, 35.887806, 40.305664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590885, 35.625385, 40.407146>,  <31.761477, 35.467934, 40.468037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590885, 35.625385, 40.407146>,  <31.306566, 35.887806, 40.305664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590885, 35.625385, 40.407146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473704, 0.179833, -0.862128,
		0.519973, 0.732980, 0.438598,
		0.710797, -0.656049, 0.253708,
		31.804125, 35.428570, 40.483257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897364, 36.214466, 40.193653>,  <31.306566, 35.887806, 40.305664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897364, 36.214466, 40.193653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020958, 35.834435, 40.176289>,  <32.095116, 35.606415, 40.165871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020958, 35.834435, 40.176289>,  <31.897364, 36.214466, 40.193653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020958, 35.834435, 40.176289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282970, 0.135413, -0.949521,
		0.907995, 0.281107, 0.310684,
		0.308988, -0.950075, -0.043410,
		32.113655, 35.549412, 40.163265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640240, 36.254925, 40.053188>,  <31.897364, 36.214466, 40.193653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640240, 36.254925, 40.053188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.521339, 35.885769, 39.955273>,  <32.450001, 35.664276, 39.896523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.521339, 35.885769, 39.955273>,  <32.640240, 36.254925, 40.053188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521339, 35.885769, 39.955273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462323, 0.085198, -0.882609,
		0.835404, -0.375529, 0.401347,
		-0.297251, -0.922887, -0.244790,
		32.432163, 35.608902, 39.881836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291454, 35.853989, 39.779568>,  <32.640240, 36.254925, 40.053188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291454, 35.853989, 39.779568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.955994, 35.675983, 39.653946>,  <32.754719, 35.569180, 39.578571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.955994, 35.675983, 39.653946>,  <33.291454, 35.853989, 39.779568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955994, 35.675983, 39.653946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403626, -0.120608, -0.906940,
		0.365726, -0.887364, 0.280768,
		-0.838648, -0.445017, -0.314053,
		32.704399, 35.542477, 39.559731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103268, 35.749580, 39.943436>,  <33.291454, 35.853989, 39.779568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103268, 35.749580, 39.943436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179646, 36.118198, 40.078667>,  <34.225471, 36.339371, 40.159805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179646, 36.118198, 40.078667>,  <34.103268, 35.749580, 39.943436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179646, 36.118198, 40.078667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116496, -0.320708, 0.939987,
		0.974664, -0.218867, 0.046119,
		0.190941, 0.921544, 0.338080,
		34.236927, 36.394661, 40.180092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632797, 35.752468, 40.502224>,  <34.103268, 35.749580, 39.943436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632797, 35.752468, 40.502224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476837, 36.113823, 40.573624>,  <34.383259, 36.330635, 40.616463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476837, 36.113823, 40.573624>,  <34.632797, 35.752468, 40.502224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476837, 36.113823, 40.573624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048494, -0.213719, 0.975691,
		0.919577, 0.371770, 0.127139,
		-0.389905, 0.903389, 0.178503,
		34.359867, 36.384838, 40.627174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005508, 36.050156, 41.037395>,  <34.632797, 35.752468, 40.502224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005508, 36.050156, 41.037395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.666603, 36.262611, 41.039955>,  <34.463261, 36.390083, 41.041489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.666603, 36.262611, 41.039955>,  <35.005508, 36.050156, 41.037395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666603, 36.262611, 41.039955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040288, -0.076264, 0.996273,
		0.529648, 0.843845, 0.086014,
		-0.847260, 0.531139, 0.006396,
		34.412426, 36.421951, 41.041874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074543, 36.556236, 41.511955>,  <35.005508, 36.050156, 41.037395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074543, 36.556236, 41.511955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677845, 36.537045, 41.464382>,  <34.439827, 36.525528, 41.435837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677845, 36.537045, 41.464382>,  <35.074543, 36.556236, 41.511955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677845, 36.537045, 41.464382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116320, -0.054006, 0.991742,
		-0.054006, 0.997387, 0.047979,
		-0.991742, -0.047979, -0.118933,
		34.380322, 36.522652, 41.428703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777378, 37.134148, 41.931923>,  <35.074543, 36.556236, 41.511955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777378, 37.134148, 41.931923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480091, 36.871849, 41.878834>,  <34.301720, 36.714470, 41.846981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480091, 36.871849, 41.878834>,  <34.777378, 37.134148, 41.931923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480091, 36.871849, 41.878834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141711, -0.039579, 0.989117,
		-0.653866, 0.753940, -0.063512,
		-0.743221, -0.655750, -0.132721,
		34.257126, 36.675125, 41.839016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214451, 37.317482, 42.361313>,  <34.777378, 37.134148, 41.931923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214451, 37.317482, 42.361313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080925, 36.945347, 42.300610>,  <34.000809, 36.722065, 42.264187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080925, 36.945347, 42.300610>,  <34.214451, 37.317482, 42.361313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080925, 36.945347, 42.300610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329152, -0.035818, 0.943597,
		-0.883304, 0.364939, -0.294267,
		-0.333816, -0.930342, -0.151759,
		33.980782, 36.666245, 42.255081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570110, 37.303757, 42.577858>,  <34.214451, 37.317482, 42.361313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570110, 37.303757, 42.577858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648613, 36.911819, 42.592739>,  <33.695713, 36.676655, 42.601669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648613, 36.911819, 42.592739>,  <33.570110, 37.303757, 42.577858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648613, 36.911819, 42.592739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490636, -0.065278, 0.868917,
		-0.848976, -0.188785, -0.493559,
		0.196257, -0.979847, 0.037205,
		33.707489, 36.617867, 42.603901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938736, 37.000828, 42.701599>,  <33.570110, 37.303757, 42.577858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938736, 37.000828, 42.701599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232948, 36.762325, 42.830265>,  <33.409477, 36.619225, 42.907463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232948, 36.762325, 42.830265>,  <32.938736, 37.000828, 42.701599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232948, 36.762325, 42.830265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431910, -0.046901, 0.900696,
		-0.521963, -0.801420, -0.292029,
		0.735532, -0.596260, 0.321661,
		33.453609, 36.583447, 42.926762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578766, 36.445812, 42.937504>,  <32.938736, 37.000828, 42.701599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578766, 36.445812, 42.937504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.931046, 36.411049, 43.123756>,  <33.142414, 36.390190, 43.235508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.931046, 36.411049, 43.123756>,  <32.578766, 36.445812, 42.937504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931046, 36.411049, 43.123756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470578, -0.272776, 0.839136,
		0.054090, -0.958145, -0.281129,
		0.880699, -0.086905, 0.465636,
		33.195255, 36.384979, 43.263447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582962, 35.835438, 43.267574>,  <32.578766, 36.445812, 42.937504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582962, 35.835438, 43.267574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.885288, 35.973999, 43.489834>,  <33.066685, 36.057137, 43.623188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.885288, 35.973999, 43.489834>,  <32.582962, 35.835438, 43.267574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885288, 35.973999, 43.489834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247679, -0.634298, 0.732339,
		0.606128, -0.691139, -0.393619,
		0.755820, 0.346400, 0.555647,
		33.112034, 36.077919, 43.656528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929409, 35.221741, 43.466885>,  <32.582962, 35.835438, 43.267574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929409, 35.221741, 43.466885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033710, 35.502235, 43.732300>,  <33.096291, 35.670532, 43.891548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033710, 35.502235, 43.732300>,  <32.929409, 35.221741, 43.466885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033710, 35.502235, 43.732300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132000, -0.654961, 0.744044,
		0.956339, -0.281597, -0.078219,
		0.260751, 0.701234, 0.663536,
		33.111935, 35.712605, 43.931362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344170, 34.817085, 43.975990>,  <32.929409, 35.221741, 43.466885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344170, 34.817085, 43.975990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.277081, 35.167915, 44.156040>,  <33.236828, 35.378414, 44.264069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.277081, 35.167915, 44.156040>,  <33.344170, 34.817085, 43.975990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277081, 35.167915, 44.156040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050561, -0.463645, 0.884577,
		0.984536, 0.125609, 0.122111,
		-0.167727, 0.877072, 0.450124,
		33.226761, 35.431038, 44.291077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892418, 34.969952, 44.479424>,  <33.344170, 34.817085, 43.975990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892418, 34.969952, 44.479424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.559555, 35.168221, 44.578876>,  <33.359837, 35.287182, 44.638550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.559555, 35.168221, 44.578876>,  <33.892418, 34.969952, 44.479424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559555, 35.168221, 44.578876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045364, -0.507712, 0.860332,
		0.552681, 0.704652, 0.444982,
		-0.832157, 0.495675, 0.248637,
		33.309906, 35.316925, 44.653469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973305, 35.169411, 45.132736>,  <33.892418, 34.969952, 44.479424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973305, 35.169411, 45.132736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.577263, 35.165630, 45.076744>,  <33.339638, 35.163361, 45.043148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.577263, 35.165630, 45.076744>,  <33.973305, 35.169411, 45.132736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577263, 35.165630, 45.076744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117783, -0.486114, 0.865922,
		-0.076234, 0.873844, 0.480192,
		-0.990109, -0.009454, -0.139983,
		33.280231, 35.162792, 45.034748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435894, 35.730892, 45.390369>,  <33.973305, 35.169411, 45.132736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435894, 35.730892, 45.390369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.794144, 35.800442, 45.554134>,  <35.009094, 35.842171, 45.652393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.794144, 35.800442, 45.554134>,  <34.435894, 35.730892, 45.390369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794144, 35.800442, 45.554134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346808, 0.303377, -0.887517,
		-0.278524, 0.936872, 0.211411,
		0.895627, 0.173875, 0.409413,
		35.062832, 35.852604, 45.676960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622650, 36.432911, 45.255413>,  <34.435894, 35.730892, 45.390369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622650, 36.432911, 45.255413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.965744, 36.239910, 45.326389>,  <35.171600, 36.124111, 45.368977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.965744, 36.239910, 45.326389>,  <34.622650, 36.432911, 45.255413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965744, 36.239910, 45.326389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407426, 0.427500, -0.806999,
		0.313521, 0.764485, 0.563265,
		0.857734, -0.482500, 0.177440,
		35.223064, 36.095161, 45.379620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066414, 36.933071, 45.080677>,  <34.622650, 36.432911, 45.255413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066414, 36.933071, 45.080677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272060, 36.590164, 45.069553>,  <35.395447, 36.384418, 45.062878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272060, 36.590164, 45.069553>,  <35.066414, 36.933071, 45.080677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272060, 36.590164, 45.069553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531619, 0.343932, -0.774010,
		0.673101, 0.383146, 0.632562,
		0.514117, -0.857269, -0.027813,
		35.426296, 36.332985, 45.061211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721493, 37.115192, 45.103241>,  <35.066414, 36.933071, 45.080677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721493, 37.115192, 45.103241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686863, 36.749046, 44.945961>,  <35.666084, 36.529358, 44.851593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686863, 36.749046, 44.945961>,  <35.721493, 37.115192, 45.103241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686863, 36.749046, 44.945961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392450, 0.331431, -0.857983,
		0.915690, -0.228587, 0.330545,
		-0.086571, -0.915369, -0.393197,
		35.660892, 36.474434, 44.828003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336838, 37.067810, 44.922722>,  <35.721493, 37.115192, 45.103241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336838, 37.067810, 44.922722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135414, 36.814323, 44.687832>,  <36.014561, 36.662231, 44.546898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135414, 36.814323, 44.687832>,  <36.336838, 37.067810, 44.922722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135414, 36.814323, 44.687832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588626, 0.245878, -0.770106,
		0.632412, -0.733452, 0.249205,
		-0.503562, -0.633714, -0.587225,
		35.984344, 36.624210, 44.511665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817047, 36.799351, 44.441746>,  <36.336838, 37.067810, 44.922722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817047, 36.799351, 44.441746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480606, 36.683437, 44.259068>,  <36.278740, 36.613888, 44.149460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480606, 36.683437, 44.259068>,  <36.817047, 36.799351, 44.441746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480606, 36.683437, 44.259068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475946, 0.004576, -0.879462,
		0.256943, -0.957081, 0.134072,
		-0.841103, -0.289783, -0.456695,
		36.228275, 36.596504, 44.122059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014488, 36.418961, 43.914398>,  <36.817047, 36.799351, 44.441746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014488, 36.418961, 43.914398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.633289, 36.465904, 43.802673>,  <36.404568, 36.494072, 43.735638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.633289, 36.465904, 43.802673>,  <37.014488, 36.418961, 43.914398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633289, 36.465904, 43.802673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293109, 0.123908, -0.948016,
		-0.076650, -0.985329, -0.152484,
		-0.953002, 0.117360, -0.279311,
		36.347389, 36.501114, 43.718880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021389, 35.994663, 43.305744>,  <37.014488, 36.418961, 43.914398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021389, 35.994663, 43.305744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.732994, 36.269943, 43.273365>,  <36.559956, 36.435112, 43.253937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.732994, 36.269943, 43.273365>,  <37.021389, 35.994663, 43.305744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732994, 36.269943, 43.273365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326040, 0.233840, -0.915978,
		-0.611450, -0.686802, -0.392978,
		-0.720990, 0.688202, -0.080943,
		36.516697, 36.476402, 43.249081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473751, 35.804111, 42.734100>,  <37.021389, 35.994663, 43.305744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473751, 35.804111, 42.734100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.441265, 36.201393, 42.767467>,  <36.421772, 36.439762, 42.787487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.441265, 36.201393, 42.767467>,  <36.473751, 35.804111, 42.734100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441265, 36.201393, 42.767467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337575, 0.106158, -0.935293,
		-0.937788, -0.047801, -0.343901,
		-0.081216, 0.993200, 0.083418,
		36.416901, 36.499352, 42.792492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096996, 35.978630, 42.192703>,  <36.473751, 35.804111, 42.734100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096996, 35.978630, 42.192703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.270271, 36.317955, 42.314495>,  <36.374237, 36.521549, 42.387569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.270271, 36.317955, 42.314495>,  <36.096996, 35.978630, 42.192703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270271, 36.317955, 42.314495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272701, 0.198623, -0.941373,
		-0.859058, 0.490825, -0.145295,
		0.433191, 0.848316, 0.304478,
		36.400227, 36.572449, 42.405838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824051, 36.564808, 41.693520>,  <36.096996, 35.978630, 42.192703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824051, 36.564808, 41.693520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.157173, 36.692627, 41.874325>,  <36.357048, 36.769318, 41.982807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.157173, 36.692627, 41.874325>,  <35.824051, 36.564808, 41.693520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157173, 36.692627, 41.874325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270234, 0.477959, -0.835780,
		-0.483120, 0.818194, 0.311694,
		0.832807, 0.319552, 0.452016,
		36.407017, 36.788494, 42.009930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859463, 37.209499, 41.406185>,  <35.824051, 36.564808, 41.693520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859463, 37.209499, 41.406185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221901, 37.122334, 41.551239>,  <36.439365, 37.070034, 41.638271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221901, 37.122334, 41.551239>,  <35.859463, 37.209499, 41.406185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221901, 37.122334, 41.551239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422768, 0.433953, -0.795583,
		0.016000, 0.874185, 0.485329,
		0.906097, -0.217911, 0.362635,
		36.493729, 37.056961, 41.660030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222919, 37.755684, 41.181561>,  <35.859463, 37.209499, 41.406185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222919, 37.755684, 41.181561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507305, 37.496002, 41.289688>,  <36.677937, 37.340195, 41.354565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507305, 37.496002, 41.289688>,  <36.222919, 37.755684, 41.181561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507305, 37.496002, 41.289688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560612, 0.291161, -0.775203,
		0.424558, 0.702681, 0.570955,
		0.710960, -0.649203, 0.270317,
		36.720592, 37.301243, 41.370785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908115, 38.155643, 41.251423>,  <36.222919, 37.755684, 41.181561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908115, 38.155643, 41.251423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.011593, 37.772900, 41.198524>,  <37.073681, 37.543251, 41.166786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.011593, 37.772900, 41.198524>,  <36.908115, 38.155643, 41.251423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011593, 37.772900, 41.198524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700112, 0.280061, -0.656817,
		0.665521, 0.077330, 0.742362,
		0.258698, -0.956863, -0.132246,
		37.089203, 37.485840, 41.158852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.523605, 40.616417, 27.955828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447607, 40.298519, 27.725252>,  <26.402008, 40.107780, 27.586906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447607, 40.298519, 27.725252>,  <26.523605, 40.616417, 27.955828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447607, 40.298519, 27.725252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043495, -0.593371, 0.803753,
		-0.980821, 0.127639, 0.147307,
		-0.189998, -0.794745, -0.576438,
		26.390608, 40.060097, 27.552320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836432, 40.254440, 28.021420>,  <26.523605, 40.616417, 27.955828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836432, 40.254440, 28.021420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.083910, 39.959160, 27.913883>,  <26.232397, 39.781994, 27.849361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.083910, 39.959160, 27.913883>,  <25.836432, 40.254440, 28.021420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083910, 39.959160, 27.913883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009264, -0.349029, 0.937066,
		-0.785574, -0.577270, -0.222782,
		0.618698, -0.738199, -0.268841,
		26.269520, 39.737701, 27.833231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511084, 39.535984, 28.106665>,  <25.836432, 40.254440, 28.021420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511084, 39.535984, 28.106665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.909344, 39.515930, 28.138073>,  <26.148300, 39.503899, 28.156918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.909344, 39.515930, 28.138073>,  <25.511084, 39.535984, 28.106665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909344, 39.515930, 28.138073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092662, -0.445998, 0.890225,
		-0.009609, -0.893629, -0.448704,
		0.995651, -0.050132, 0.078520,
		26.208038, 39.500889, 28.161629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656797, 38.780846, 28.237017>,  <25.511084, 39.535984, 28.106665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656797, 38.780846, 28.237017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968519, 38.991196, 28.373333>,  <26.155552, 39.117405, 28.455122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968519, 38.991196, 28.373333>,  <25.656797, 38.780846, 28.237017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968519, 38.991196, 28.373333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117680, -0.411342, 0.903852,
		0.615498, -0.744480, -0.258676,
		0.779304, 0.525878, 0.340790,
		26.202311, 39.148960, 28.475571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025919, 38.264801, 28.575836>,  <25.656797, 38.780846, 28.237017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025919, 38.264801, 28.575836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140514, 38.608257, 28.745853>,  <26.209272, 38.814331, 28.847864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140514, 38.608257, 28.745853>,  <26.025919, 38.264801, 28.575836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140514, 38.608257, 28.745853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011243, -0.446622, 0.894652,
		0.958017, -0.251530, -0.137606,
		0.286490, 0.858639, 0.425044,
		26.226461, 38.865849, 28.873367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341764, 37.995800, 29.036901>,  <26.025919, 38.264801, 28.575836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341764, 37.995800, 29.036901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.365988, 38.375221, 29.161215>,  <26.380522, 38.602875, 29.235804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.365988, 38.375221, 29.161215>,  <26.341764, 37.995800, 29.036901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365988, 38.375221, 29.161215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092708, -0.315356, 0.944434,
		0.993850, -0.028382, -0.107035,
		0.060559, 0.948549, 0.310786,
		26.384155, 38.659786, 29.254450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925970, 38.088921, 29.517618>,  <26.341764, 37.995800, 29.036901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925970, 38.088921, 29.517618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685631, 38.399181, 29.594925>,  <26.541428, 38.585339, 29.641310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685631, 38.399181, 29.594925>,  <26.925970, 38.088921, 29.517618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685631, 38.399181, 29.594925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100411, -0.166628, 0.980894,
		0.793033, 0.608773, 0.022234,
		-0.600847, 0.775648, 0.193269,
		26.505377, 38.631874, 29.652906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284544, 38.469582, 30.006886>,  <26.925970, 38.088921, 29.517618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284544, 38.469582, 30.006886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.895485, 38.555550, 30.042131>,  <26.662048, 38.607128, 30.063278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.895485, 38.555550, 30.042131>,  <27.284544, 38.469582, 30.006886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895485, 38.555550, 30.042131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048858, -0.181565, 0.982165,
		0.227082, 0.959607, 0.166098,
		-0.972649, 0.214917, 0.088114,
		26.603689, 38.620026, 30.068565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176180, 38.925278, 30.547644>,  <27.284544, 38.469582, 30.006886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176180, 38.925278, 30.547644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812426, 38.760731, 30.522989>,  <26.594173, 38.662003, 30.508196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812426, 38.760731, 30.522989>,  <27.176180, 38.925278, 30.547644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812426, 38.760731, 30.522989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071701, -0.300990, 0.950928,
		-0.409730, 0.860340, 0.303211,
		-0.909385, -0.411364, -0.061638,
		26.539610, 38.637321, 30.504498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043514, 38.927288, 31.205738>,  <27.176180, 38.925278, 30.547644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043514, 38.927288, 31.205738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.768154, 38.691563, 31.036594>,  <26.602938, 38.550125, 30.935108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.768154, 38.691563, 31.036594>,  <27.043514, 38.927288, 31.205738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768154, 38.691563, 31.036594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151944, -0.452890, 0.878524,
		-0.709239, 0.669026, 0.222226,
		-0.688399, -0.589318, -0.422861,
		26.561634, 38.514767, 30.909737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640652, 38.836746, 31.738298>,  <27.043514, 38.927288, 31.205738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640652, 38.836746, 31.738298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571144, 38.536819, 31.482933>,  <26.529440, 38.356861, 31.329714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571144, 38.536819, 31.482933>,  <26.640652, 38.836746, 31.738298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571144, 38.536819, 31.482933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147461, -0.621155, 0.769689,
		-0.973683, 0.227891, -0.002631,
		-0.173771, -0.749822, -0.638413,
		26.519012, 38.311874, 31.291409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346283, 38.420914, 32.199905>,  <26.640652, 38.836746, 31.738298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346283, 38.420914, 32.199905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428608, 38.178890, 31.892258>,  <26.478003, 38.033676, 31.707668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428608, 38.178890, 31.892258>,  <26.346283, 38.420914, 32.199905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428608, 38.178890, 31.892258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082934, -0.772336, 0.629777,
		-0.975071, -0.193402, -0.108776,
		0.205812, -0.605056, -0.769122,
		26.490351, 37.997372, 31.661522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928461, 37.736622, 32.213902>,  <26.346283, 38.420914, 32.199905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928461, 37.736622, 32.213902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.239447, 37.630791, 31.985672>,  <26.426037, 37.567291, 31.848734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.239447, 37.630791, 31.985672>,  <25.928461, 37.736622, 32.213902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239447, 37.630791, 31.985672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299779, -0.641631, 0.706004,
		-0.552889, -0.719937, -0.419529,
		0.777462, -0.264575, -0.570573,
		26.472685, 37.551418, 31.814501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962372, 36.980030, 32.159130>,  <25.928461, 37.736622, 32.213902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962372, 36.980030, 32.159130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.326061, 37.122364, 32.072689>,  <26.544275, 37.207764, 32.020824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.326061, 37.122364, 32.072689>,  <25.962372, 36.980030, 32.159130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326061, 37.122364, 32.072689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412028, -0.694860, 0.589409,
		0.059569, -0.624943, -0.778394,
		0.909222, 0.355831, -0.216102,
		26.598827, 37.229115, 32.007858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455181, 36.427437, 32.054520>,  <25.962372, 36.980030, 32.159130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455181, 36.427437, 32.054520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.719093, 36.718151, 32.130917>,  <26.877439, 36.892578, 32.176754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.719093, 36.718151, 32.130917>,  <26.455181, 36.427437, 32.054520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719093, 36.718151, 32.130917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384686, -0.544999, 0.744978,
		0.645530, -0.418047, -0.639162,
		0.659779, 0.726782, 0.190996,
		26.917027, 36.936184, 32.188217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085072, 36.170086, 32.228291>,  <26.455181, 36.427437, 32.054520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085072, 36.170086, 32.228291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170872, 36.531033, 32.377811>,  <27.222351, 36.747601, 32.467525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170872, 36.531033, 32.377811>,  <27.085072, 36.170086, 32.228291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170872, 36.531033, 32.377811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505289, -0.430037, 0.748165,
		0.835867, 0.028398, -0.548197,
		0.214499, 0.902364, 0.373803,
		27.235222, 36.801743, 32.489952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781160, 36.138092, 32.392445>,  <27.085072, 36.170086, 32.228291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781160, 36.138092, 32.392445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635962, 36.421581, 32.634418>,  <27.548841, 36.591675, 32.779602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635962, 36.421581, 32.634418>,  <27.781160, 36.138092, 32.392445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635962, 36.421581, 32.634418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547014, -0.363485, 0.754092,
		0.754327, 0.604640, -0.255738,
		-0.362997, 0.708724, 0.604932,
		27.527061, 36.634197, 32.815899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384268, 36.531952, 32.700878>,  <27.781160, 36.138092, 32.392445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384268, 36.531952, 32.700878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077772, 36.587532, 32.951817>,  <27.893875, 36.620880, 33.102379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077772, 36.587532, 32.951817>,  <28.384268, 36.531952, 32.700878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077772, 36.587532, 32.951817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571047, -0.300352, 0.763998,
		0.294584, 0.943653, 0.150794,
		-0.766241, 0.138951, 0.627350,
		27.847900, 36.629219, 33.140022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595797, 36.987000, 33.284008>,  <28.384268, 36.531952, 32.700878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595797, 36.987000, 33.284008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305883, 36.743561, 33.413189>,  <28.131935, 36.597496, 33.490696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305883, 36.743561, 33.413189>,  <28.595797, 36.987000, 33.284008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305883, 36.743561, 33.413189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606189, -0.340511, 0.718740,
		-0.327455, 0.716700, 0.615722,
		-0.724781, -0.608599, 0.322953,
		28.088449, 36.560982, 33.510075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343548, 36.667244, 33.248920>,  <28.595797, 36.987000, 33.284008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343548, 36.667244, 33.248920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589663, 36.432961, 33.037880>,  <29.737331, 36.292389, 32.911255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589663, 36.432961, 33.037880>,  <29.343548, 36.667244, 33.248920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589663, 36.432961, 33.037880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088604, 0.613663, -0.784581,
		0.783308, 0.529490, 0.325682,
		0.615287, -0.585711, -0.527602,
		29.774248, 36.257248, 32.879601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917225, 37.098743, 32.904331>,  <29.343548, 36.667244, 33.248920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917225, 37.098743, 32.904331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.894674, 36.748966, 32.711597>,  <29.881144, 36.539101, 32.595955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.894674, 36.748966, 32.711597>,  <29.917225, 37.098743, 32.904331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894674, 36.748966, 32.711597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038802, 0.484159, -0.874119,
		0.997655, -0.030584, -0.061226,
		-0.056377, -0.874445, -0.481837,
		29.877762, 36.486633, 32.567047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564947, 36.961056, 32.554081>,  <29.917225, 37.098743, 32.904331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564947, 36.961056, 32.554081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264603, 36.755226, 32.388466>,  <30.084396, 36.631729, 32.289097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264603, 36.755226, 32.388466>,  <30.564947, 36.961056, 32.554081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264603, 36.755226, 32.388466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132477, 0.496806, -0.857691,
		0.647038, -0.698856, -0.304863,
		-0.750861, -0.514571, -0.414035,
		30.039345, 36.600857, 32.264256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753084, 36.962620, 31.842705>,  <30.564947, 36.961056, 32.554081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753084, 36.962620, 31.842705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.368423, 36.856838, 31.813601>,  <30.137627, 36.793369, 31.796139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.368423, 36.856838, 31.813601>,  <30.753084, 36.962620, 31.842705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368423, 36.856838, 31.813601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073768, 0.504872, -0.860036,
		0.264174, -0.821686, -0.505019,
		-0.961650, -0.264453, -0.072760,
		30.079929, 36.777504, 31.791773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664736, 36.591545, 31.212959>,  <30.753084, 36.962620, 31.842705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664736, 36.591545, 31.212959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314075, 36.743237, 31.331394>,  <30.103680, 36.834251, 31.402456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314075, 36.743237, 31.331394>,  <30.664736, 36.591545, 31.212959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314075, 36.743237, 31.331394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198808, 0.274887, -0.940698,
		-0.438132, -0.883528, -0.165586,
		-0.876650, 0.379230, 0.296089,
		30.051081, 36.857006, 31.420221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071247, 36.274929, 30.768265>,  <30.664736, 36.591545, 31.212959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071247, 36.274929, 30.768265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.867908, 36.593044, 30.900391>,  <29.745905, 36.783913, 30.979666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.867908, 36.593044, 30.900391>,  <30.071247, 36.274929, 30.768265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867908, 36.593044, 30.900391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274302, 0.214055, -0.937518,
		-0.816299, -0.567187, 0.109334,
		-0.508345, 0.795285, 0.330314,
		29.715405, 36.831631, 30.999485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321798, 36.298752, 30.488831>,  <30.071247, 36.274929, 30.768265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321798, 36.298752, 30.488831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.416859, 36.675434, 30.584093>,  <29.473896, 36.901443, 30.641251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.416859, 36.675434, 30.584093>,  <29.321798, 36.298752, 30.488831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416859, 36.675434, 30.584093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377667, 0.315471, -0.870543,
		-0.894924, 0.116942, 0.430622,
		0.237652, 0.941702, 0.238157,
		29.488153, 36.957943, 30.655540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781290, 36.683678, 30.161091>,  <29.321798, 36.298752, 30.488831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781290, 36.683678, 30.161091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059811, 36.952480, 30.261950>,  <29.226923, 37.113762, 30.322464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059811, 36.952480, 30.261950>,  <28.781290, 36.683678, 30.161091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059811, 36.952480, 30.261950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083891, 0.425087, -0.901256,
		-0.712830, 0.606393, 0.352364,
		0.696301, 0.672003, 0.252144,
		29.268702, 37.154079, 30.337593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508982, 37.373764, 29.890003>,  <28.781290, 36.683678, 30.161091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508982, 37.373764, 29.890003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904039, 37.419220, 29.933165>,  <29.141073, 37.446495, 29.959063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904039, 37.419220, 29.933165>,  <28.508982, 37.373764, 29.890003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904039, 37.419220, 29.933165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024417, 0.568557, -0.822281,
		-0.154797, 0.814757, 0.558757,
		0.987645, 0.113644, 0.107905,
		29.200333, 37.453312, 29.965536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602077, 38.132950, 29.879545>,  <28.508982, 37.373764, 29.890003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602077, 38.132950, 29.879545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.952232, 37.974491, 29.768717>,  <29.162325, 37.879417, 29.702219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.952232, 37.974491, 29.768717>,  <28.602077, 38.132950, 29.879545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952232, 37.974491, 29.768717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044774, 0.637122, -0.769461,
		0.481345, 0.661171, 0.575465,
		0.875387, -0.396142, -0.277072,
		29.214848, 37.855648, 29.685595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971790, 38.676636, 29.551138>,  <28.602077, 38.132950, 29.879545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971790, 38.676636, 29.551138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170298, 38.348240, 29.438217>,  <29.289402, 38.151203, 29.370464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170298, 38.348240, 29.438217>,  <28.971790, 38.676636, 29.551138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170298, 38.348240, 29.438217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193255, 0.421480, -0.886006,
		0.846387, 0.385140, 0.367827,
		0.496268, -0.820988, -0.282304,
		29.319178, 38.101944, 29.353525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629450, 38.962185, 29.262079>,  <28.971790, 38.676636, 29.551138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629450, 38.962185, 29.262079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564865, 38.599228, 29.106865>,  <29.526114, 38.381454, 29.013737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564865, 38.599228, 29.106865>,  <29.629450, 38.962185, 29.262079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564865, 38.599228, 29.106865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126424, 0.370939, -0.920011,
		0.978748, -0.197604, 0.054823,
		-0.161462, -0.907390, -0.388038,
		29.516426, 38.327011, 28.990454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136427, 38.968712, 28.706306>,  <29.629450, 38.962185, 29.262079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136427, 38.968712, 28.706306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869318, 38.672298, 28.678158>,  <29.709053, 38.494450, 28.661268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869318, 38.672298, 28.678158>,  <30.136427, 38.968712, 28.706306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869318, 38.672298, 28.678158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070092, 0.156720, -0.985153,
		0.741059, -0.652924, -0.156593,
		-0.667771, -0.741032, -0.070374,
		29.668987, 38.449989, 28.657045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335096, 38.518764, 28.168306>,  <30.136427, 38.968712, 28.706306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335096, 38.518764, 28.168306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940084, 38.473866, 28.212465>,  <29.703077, 38.446926, 28.238960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940084, 38.473866, 28.212465>,  <30.335096, 38.518764, 28.168306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940084, 38.473866, 28.212465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122465, 0.107010, -0.986687,
		0.098913, -0.987904, -0.119419,
		-0.987532, -0.112221, 0.110399,
		29.643826, 38.440189, 28.245584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168089, 38.047844, 27.600479>,  <30.335096, 38.518764, 28.168306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168089, 38.047844, 27.600479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813410, 38.199913, 27.705732>,  <29.600603, 38.291153, 27.768885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813410, 38.199913, 27.705732>,  <30.168089, 38.047844, 27.600479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813410, 38.199913, 27.705732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255752, 0.070815, -0.964145,
		-0.385175, -0.922201, 0.034439,
		-0.886697, 0.380173, 0.263131,
		29.547401, 38.313965, 27.784672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707207, 37.664875, 27.266893>,  <30.168089, 38.047844, 27.600479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707207, 37.664875, 27.266893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.484978, 37.986641, 27.351046>,  <29.351641, 38.179699, 27.401537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.484978, 37.986641, 27.351046>,  <29.707207, 37.664875, 27.266893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484978, 37.986641, 27.351046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402451, -0.038752, -0.914621,
		-0.727581, -0.592803, 0.345267,
		-0.555570, 0.804414, 0.210379,
		29.318306, 38.227966, 27.414160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084463, 37.535202, 26.817787>,  <29.707207, 37.664875, 27.266893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084463, 37.535202, 26.817787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069725, 37.924458, 26.908691>,  <29.060883, 38.158009, 26.963234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069725, 37.924458, 26.908691>,  <29.084463, 37.535202, 26.817787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069725, 37.924458, 26.908691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676422, 0.143113, -0.722476,
		-0.735592, -0.180345, 0.652978,
		-0.036845, 0.973137, 0.227262,
		29.058672, 38.216400, 26.976870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374016, 37.661022, 26.965389>,  <29.084463, 37.535202, 26.817787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374016, 37.661022, 26.965389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.546457, 38.017052, 26.906158>,  <28.649921, 38.230667, 26.870621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.546457, 38.017052, 26.906158>,  <28.374016, 37.661022, 26.965389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546457, 38.017052, 26.906158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728316, 0.246383, -0.639415,
		-0.532640, 0.383499, 0.754469,
		0.431103, 0.890070, -0.148075,
		28.675789, 38.284073, 26.861736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845062, 38.204536, 26.976807>,  <28.374016, 37.661022, 26.965389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845062, 38.204536, 26.976807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154661, 38.361389, 26.777945>,  <28.340420, 38.455502, 26.658627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154661, 38.361389, 26.777945>,  <27.845062, 38.204536, 26.976807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154661, 38.361389, 26.777945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630300, 0.402219, -0.664034,
		-0.060421, 0.827319, 0.558474,
		0.773997, 0.392128, -0.497157,
		28.386860, 38.479027, 26.628798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705118, 38.871147, 26.722551>,  <27.845062, 38.204536, 26.976807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705118, 38.871147, 26.722551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.995924, 38.772484, 26.466236>,  <28.170408, 38.713287, 26.312447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.995924, 38.772484, 26.466236>,  <27.705118, 38.871147, 26.722551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995924, 38.772484, 26.466236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466064, 0.508048, -0.724342,
		0.504214, 0.825256, 0.254403,
		0.727016, -0.246655, -0.640787,
		28.214029, 38.698486, 26.274000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701523, 39.412296, 26.178019>,  <27.705118, 38.871147, 26.722551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701523, 39.412296, 26.178019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918999, 39.135719, 25.987728>,  <28.049484, 38.969772, 25.873554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918999, 39.135719, 25.987728>,  <27.701523, 39.412296, 26.178019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918999, 39.135719, 25.987728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225046, 0.425964, -0.876304,
		0.808553, 0.583496, 0.075986,
		0.543688, -0.691438, -0.475728,
		28.082106, 38.928288, 25.845009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147711, 39.803848, 25.709141>,  <27.701523, 39.412296, 26.178019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147711, 39.803848, 25.709141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148508, 39.430721, 25.565004>,  <28.148987, 39.206844, 25.478521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148508, 39.430721, 25.565004>,  <28.147711, 39.803848, 25.709141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148508, 39.430721, 25.565004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146717, 0.356171, -0.922830,
		0.989176, 0.054708, -0.136150,
		0.001993, -0.932818, -0.360343,
		28.149105, 39.150875, 25.456902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544781, 39.782200, 25.000803>,  <28.147711, 39.803848, 25.709141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544781, 39.782200, 25.000803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304838, 39.462185, 24.996439>,  <28.160873, 39.270176, 24.993820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304838, 39.462185, 24.996439>,  <28.544781, 39.782200, 25.000803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304838, 39.462185, 24.996439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269130, 0.214593, -0.938892,
		0.753487, -0.560264, -0.344038,
		-0.599856, -0.800034, -0.010910,
		28.124882, 39.222176, 24.993166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.742916, 33.500294, 45.166130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575733, 33.143696, 45.096218>,  <34.475422, 32.929737, 45.054272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575733, 33.143696, 45.096218>,  <34.742916, 33.500294, 45.166130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575733, 33.143696, 45.096218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072241, -0.159168, 0.984605,
		-0.905589, 0.424152, 0.002123,
		-0.417960, -0.891494, -0.174782,
		34.450344, 32.876247, 45.043785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207645, 33.391098, 45.636253>,  <34.742916, 33.500294, 45.166130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207645, 33.391098, 45.636253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323936, 33.022579, 45.532951>,  <34.393711, 32.801468, 45.470970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323936, 33.022579, 45.532951>,  <34.207645, 33.391098, 45.636253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323936, 33.022579, 45.532951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016954, -0.274835, 0.961342,
		-0.956657, -0.275107, -0.095521,
		0.290724, -0.921293, -0.258258,
		34.411152, 32.746193, 45.455475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715664, 32.919754, 45.991093>,  <34.207645, 33.391098, 45.636253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715664, 32.919754, 45.991093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024666, 32.687000, 45.889393>,  <34.210068, 32.547348, 45.828373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024666, 32.687000, 45.889393>,  <33.715664, 32.919754, 45.991093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024666, 32.687000, 45.889393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072006, -0.317539, 0.945507,
		-0.630912, -0.748718, -0.203401,
		0.772506, -0.581885, -0.254251,
		34.256416, 32.512436, 45.813118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651505, 32.279827, 46.344006>,  <33.715664, 32.919754, 45.991093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651505, 32.279827, 46.344006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040432, 32.241814, 46.258625>,  <34.273788, 32.219006, 46.207397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040432, 32.241814, 46.258625>,  <33.651505, 32.279827, 46.344006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040432, 32.241814, 46.258625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125904, -0.556485, 0.821263,
		-0.196832, -0.825405, -0.529116,
		0.972320, -0.095032, -0.213456,
		34.332127, 32.213303, 46.194588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827129, 31.601595, 46.511311>,  <33.651505, 32.279827, 46.344006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827129, 31.601595, 46.511311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150364, 31.835806, 46.537067>,  <34.344307, 31.976334, 46.552521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150364, 31.835806, 46.537067>,  <33.827129, 31.601595, 46.511311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150364, 31.835806, 46.537067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275636, -0.472473, 0.837135,
		0.520593, -0.658730, -0.543193,
		0.808089, 0.585530, 0.064397,
		34.392792, 32.011463, 46.556385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308929, 31.193235, 46.869560>,  <33.827129, 31.601595, 46.511311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308929, 31.193235, 46.869560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483112, 31.553318, 46.868725>,  <34.587620, 31.769367, 46.868221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483112, 31.553318, 46.868725>,  <34.308929, 31.193235, 46.869560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483112, 31.553318, 46.868725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296433, -0.141198, 0.944559,
		0.850004, -0.411933, -0.328337,
		0.435455, 0.900208, -0.002092,
		34.613750, 31.823380, 46.868099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015377, 31.043575, 47.023045>,  <34.308929, 31.193235, 46.869560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015377, 31.043575, 47.023045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.942451, 31.425560, 47.116688>,  <34.898697, 31.654751, 47.172874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.942451, 31.425560, 47.116688>,  <35.015377, 31.043575, 47.023045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942451, 31.425560, 47.116688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045993, -0.229556, 0.972208,
		0.982164, 0.188012, -0.002071,
		-0.182312, 0.954964, 0.234109,
		34.887756, 31.712049, 47.186920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371822, 31.190571, 47.529911>,  <35.015377, 31.043575, 47.023045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371822, 31.190571, 47.529911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108635, 31.490263, 47.560188>,  <34.950722, 31.670078, 47.578354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108635, 31.490263, 47.560188>,  <35.371822, 31.190571, 47.529911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108635, 31.490263, 47.560188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000879, -0.099749, 0.995012,
		0.753046, 0.654752, 0.064973,
		-0.657968, 0.749232, 0.075691,
		34.911243, 31.715033, 47.582897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745087, 31.594151, 47.927773>,  <35.371822, 31.190571, 47.529911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745087, 31.594151, 47.927773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364014, 31.710033, 47.964569>,  <35.135368, 31.779564, 47.986649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364014, 31.710033, 47.964569>,  <35.745087, 31.594151, 47.927773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364014, 31.710033, 47.964569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101847, 0.019090, 0.994617,
		0.286392, 0.956925, -0.047692,
		-0.952684, 0.289707, 0.091993,
		35.078209, 31.796946, 47.992168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800621, 32.179272, 48.363396>,  <35.745087, 31.594151, 47.927773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800621, 32.179272, 48.363396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416595, 32.070801, 48.390957>,  <35.186180, 32.005718, 48.407494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416595, 32.070801, 48.390957>,  <35.800621, 32.179272, 48.363396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416595, 32.070801, 48.390957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056226, 0.054239, 0.996944,
		-0.274084, 0.961000, -0.036825,
		-0.960061, -0.271176, 0.068899,
		35.128578, 31.989449, 48.411625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497295, 32.599072, 48.945282>,  <35.800621, 32.179272, 48.363396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497295, 32.599072, 48.945282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228645, 32.304230, 48.915386>,  <35.067455, 32.127323, 48.897449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228645, 32.304230, 48.915386>,  <35.497295, 32.599072, 48.945282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228645, 32.304230, 48.915386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048650, -0.056778, 0.997201,
		-0.739289, 0.673385, 0.002273,
		-0.671629, -0.737109, -0.074735,
		35.027157, 32.083096, 48.892967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868526, 32.704681, 49.377720>,  <35.497295, 32.599072, 48.945282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868526, 32.704681, 49.377720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900696, 32.309433, 49.325352>,  <34.919998, 32.072285, 49.293930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900696, 32.309433, 49.325352>,  <34.868526, 32.704681, 49.377720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900696, 32.309433, 49.325352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225335, -0.109922, 0.968060,
		-0.970956, -0.107358, 0.213818,
		0.080426, -0.988125, -0.130921,
		34.924824, 32.012997, 49.286076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977978, 33.216015, 49.920864>,  <34.868526, 32.704681, 49.377720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977978, 33.216015, 49.920864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199093, 33.100910, 50.233688>,  <35.331760, 33.031849, 50.421383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199093, 33.100910, 50.233688>,  <34.977978, 33.216015, 49.920864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199093, 33.100910, 50.233688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290733, 0.946115, 0.142624,
		-0.780961, 0.148530, 0.606661,
		0.552787, -0.287760, 0.782061,
		35.364929, 33.014584, 50.468307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948757, 33.671989, 50.495872>,  <34.977978, 33.216015, 49.920864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948757, 33.671989, 50.495872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305134, 33.498840, 50.550774>,  <35.518959, 33.394951, 50.583714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305134, 33.498840, 50.550774>,  <34.948757, 33.671989, 50.495872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305134, 33.498840, 50.550774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444863, 0.892668, -0.072397,
		-0.091180, 0.125559, 0.987887,
		0.890945, -0.432874, 0.137250,
		35.572418, 33.368977, 50.591949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216976, 33.545029, 50.679184>,  <34.948757, 33.671989, 50.495872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216976, 33.545029, 50.679184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840450, 33.673981, 50.719158>,  <33.614532, 33.751354, 50.743141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840450, 33.673981, 50.719158>,  <34.216976, 33.545029, 50.679184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840450, 33.673981, 50.719158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127044, 0.612748, -0.780000,
		-0.312695, -0.721533, -0.617748,
		-0.941319, 0.322383, 0.099937,
		33.558056, 33.770695, 50.749138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994129, 33.195309, 50.058945>,  <34.216976, 33.545029, 50.679184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994129, 33.195309, 50.058945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792973, 33.519302, 50.179630>,  <33.672279, 33.713699, 50.252041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792973, 33.519302, 50.179630>,  <33.994129, 33.195309, 50.058945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792973, 33.519302, 50.179630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070566, 0.386376, -0.919638,
		-0.861467, -0.441183, -0.251460,
		-0.502887, 0.809982, 0.301717,
		33.642105, 33.762299, 50.270145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545216, 33.327034, 49.537357>,  <33.994129, 33.195309, 50.058945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545216, 33.327034, 49.537357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565041, 33.681103, 49.722404>,  <33.576935, 33.893543, 49.833431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565041, 33.681103, 49.722404>,  <33.545216, 33.327034, 49.537357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565041, 33.681103, 49.722404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076229, 0.458479, -0.885430,
		-0.995858, 0.079147, -0.044753,
		0.049561, 0.885174, 0.462613,
		33.579910, 33.946655, 49.861187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118721, 33.745609, 49.196625>,  <33.545216, 33.327034, 49.537357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118721, 33.745609, 49.196625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360397, 33.992466, 49.398251>,  <33.505405, 34.140579, 49.519226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360397, 33.992466, 49.398251>,  <33.118721, 33.745609, 49.196625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360397, 33.992466, 49.398251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218470, 0.480049, -0.849602,
		-0.766304, 0.623447, 0.155215,
		0.604193, 0.617144, 0.504067,
		33.541656, 34.177608, 49.549469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971561, 34.372486, 48.948509>,  <33.118721, 33.745609, 49.196625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971561, 34.372486, 48.948509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327763, 34.427528, 49.121979>,  <33.541485, 34.460552, 49.226059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327763, 34.427528, 49.121979>,  <32.971561, 34.372486, 48.948509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327763, 34.427528, 49.121979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274820, 0.596961, -0.753732,
		-0.362603, 0.790381, 0.493778,
		0.890502, 0.137605, 0.433672,
		33.594913, 34.468811, 49.252079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165825, 35.075623, 48.773220>,  <32.971561, 34.372486, 48.948509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165825, 35.075623, 48.773220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501259, 34.879372, 48.867931>,  <33.702518, 34.761623, 48.924759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501259, 34.879372, 48.867931>,  <33.165825, 35.075623, 48.773220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501259, 34.879372, 48.867931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521605, 0.597718, -0.608820,
		0.157174, 0.634052, 0.757149,
		0.838585, -0.490623, 0.236778,
		33.752834, 34.732185, 48.938965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585777, 35.563297, 48.904617>,  <33.165825, 35.075623, 48.773220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585777, 35.563297, 48.904617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793098, 35.238770, 48.796452>,  <33.917492, 35.044052, 48.731552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793098, 35.238770, 48.796452>,  <33.585777, 35.563297, 48.904617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793098, 35.238770, 48.796452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498549, 0.543564, -0.675269,
		0.694848, 0.215175, 0.686211,
		0.518300, -0.811319, -0.270419,
		33.948589, 34.995373, 48.715324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230808, 35.856728, 48.745014>,  <33.585777, 35.563297, 48.904617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230808, 35.856728, 48.745014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234421, 35.497829, 48.568439>,  <34.236588, 35.282490, 48.462494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234421, 35.497829, 48.568439>,  <34.230808, 35.856728, 48.745014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234421, 35.497829, 48.568439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614097, 0.353381, -0.705696,
		0.789179, -0.264713, 0.554187,
		0.009032, -0.897245, -0.441440,
		34.237129, 35.228657, 48.436008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871220, 35.736465, 48.565323>,  <34.230808, 35.856728, 48.745014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871220, 35.736465, 48.565323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681892, 35.483124, 48.320427>,  <34.568295, 35.331120, 48.173489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681892, 35.483124, 48.320427>,  <34.871220, 35.736465, 48.565323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681892, 35.483124, 48.320427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596298, 0.281209, -0.751898,
		0.648382, -0.720964, 0.244565,
		-0.473317, -0.633351, -0.612240,
		34.539898, 35.293118, 48.136753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354115, 35.503902, 48.101299>,  <34.871220, 35.736465, 48.565323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354115, 35.503902, 48.101299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020309, 35.388893, 47.913292>,  <34.820026, 35.319885, 47.800488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020309, 35.388893, 47.913292>,  <35.354115, 35.503902, 48.101299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020309, 35.388893, 47.913292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444887, 0.151643, -0.882655,
		0.325062, -0.945692, 0.001369,
		-0.834512, -0.287527, -0.470019,
		34.769955, 35.302635, 47.772285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449860, 34.910740, 47.622395>,  <35.354115, 35.503902, 48.101299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449860, 34.910740, 47.622395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137226, 35.110966, 47.473503>,  <34.949646, 35.231102, 47.384167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137226, 35.110966, 47.473503>,  <35.449860, 34.910740, 47.622395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137226, 35.110966, 47.473503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526523, 0.209397, -0.823970,
		-0.334510, -0.839990, -0.427223,
		-0.781586, 0.500569, -0.372229,
		34.902752, 35.261135, 47.361835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478748, 34.773937, 46.881767>,  <35.449860, 34.910740, 47.622395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478748, 34.773937, 46.881767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227764, 35.085033, 46.896832>,  <35.077175, 35.271690, 46.905869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227764, 35.085033, 46.896832>,  <35.478748, 34.773937, 46.881767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227764, 35.085033, 46.896832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330754, 0.310003, -0.891348,
		-0.704907, -0.546832, -0.451754,
		-0.627462, 0.777736, 0.037656,
		35.039524, 35.318356, 46.908127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064495, 34.742325, 46.179539>,  <35.478748, 34.773937, 46.881767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064495, 34.742325, 46.179539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073978, 35.109058, 46.338959>,  <35.079666, 35.329102, 46.434612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073978, 35.109058, 46.338959>,  <35.064495, 34.742325, 46.179539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073978, 35.109058, 46.338959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392412, 0.358137, -0.847202,
		-0.919484, 0.176479, -0.351289,
		0.023704, 0.916839, 0.398554,
		35.081089, 35.384109, 46.458527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511173, 35.155941, 45.841278>,  <35.064495, 34.742325, 46.179539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511173, 35.155941, 45.841278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819874, 35.373066, 45.973797>,  <35.005093, 35.503342, 46.053307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819874, 35.373066, 45.973797>,  <34.511173, 35.155941, 45.841278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819874, 35.373066, 45.973797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140762, 0.362229, -0.921399,
		-0.620154, 0.757722, 0.203141,
		0.771748, 0.542815, 0.331297,
		35.051399, 35.535912, 46.073185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697292, 35.275879, 45.908176>,  <34.511173, 35.155941, 45.841278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697292, 35.275879, 45.908176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373592, 35.168724, 45.699043>,  <33.179375, 35.104431, 45.573563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373592, 35.168724, 45.699043>,  <33.697292, 35.275879, 45.908176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373592, 35.168724, 45.699043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348896, -0.496865, 0.794605,
		-0.472641, 0.825447, 0.308623,
		-0.809248, -0.267885, -0.522834,
		33.130817, 35.088360, 45.542194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221313, 35.279404, 46.353127>,  <33.697292, 35.275879, 45.908176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221313, 35.279404, 46.353127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051891, 35.051712, 46.071255>,  <32.950237, 34.915096, 45.902130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051891, 35.051712, 46.071255>,  <33.221313, 35.279404, 46.353127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051891, 35.051712, 46.071255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512388, -0.490965, 0.704565,
		-0.747035, 0.659493, -0.083717,
		-0.423554, -0.569230, -0.704684,
		32.924824, 34.880943, 45.859848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447998, 35.245583, 46.499130>,  <33.221313, 35.279404, 46.353127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447998, 35.245583, 46.499130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533688, 34.918331, 46.285675>,  <32.585102, 34.721981, 46.157604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533688, 34.918331, 46.285675>,  <32.447998, 35.245583, 46.499130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533688, 34.918331, 46.285675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519577, -0.558061, 0.646999,
		-0.827132, 0.138662, -0.544633,
		0.214224, -0.818133, -0.533636,
		32.597954, 34.672890, 46.125584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847078, 34.869686, 46.367115>,  <32.447998, 35.245583, 46.499130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847078, 34.869686, 46.367115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122654, 34.583080, 46.323349>,  <32.287998, 34.411118, 46.297089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122654, 34.583080, 46.323349>,  <31.847078, 34.869686, 46.367115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122654, 34.583080, 46.323349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504384, -0.582331, 0.637564,
		-0.520536, -0.384058, -0.762589,
		0.688941, -0.716513, -0.109411,
		32.329334, 34.368126, 46.290527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462629, 34.293152, 46.259853>,  <31.847078, 34.869686, 46.367115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462629, 34.293152, 46.259853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820524, 34.159531, 46.378414>,  <32.035259, 34.079357, 46.449551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820524, 34.159531, 46.378414>,  <31.462629, 34.293152, 46.259853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820524, 34.159531, 46.378414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443136, -0.581599, 0.682182,
		-0.055496, -0.741721, -0.668409,
		0.894735, -0.334055, 0.296406,
		32.088943, 34.059315, 46.467335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311640, 33.603951, 46.450924>,  <31.462629, 34.293152, 46.259853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311640, 33.603951, 46.450924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.655169, 33.715450, 46.622841>,  <31.861286, 33.782352, 46.725990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.655169, 33.715450, 46.622841>,  <31.311640, 33.603951, 46.450924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655169, 33.715450, 46.622841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302411, -0.401330, 0.864571,
		0.413492, -0.872486, -0.260372,
		0.858820, 0.278754, 0.429796,
		31.912815, 33.799076, 46.751778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482489, 33.075527, 46.841328>,  <31.311640, 33.603951, 46.450924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482489, 33.075527, 46.841328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720922, 33.359768, 46.990852>,  <31.863983, 33.530312, 47.080566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720922, 33.359768, 46.990852>,  <31.482489, 33.075527, 46.841328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720922, 33.359768, 46.990852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194680, -0.323764, 0.925892,
		0.778964, -0.624682, -0.054651,
		0.596083, 0.710598, 0.373814,
		31.899748, 33.572948, 47.102997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460936, 32.336918, 46.795826>,  <31.482489, 33.075527, 46.841328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460936, 32.336918, 46.795826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.083233, 32.259323, 46.689434>,  <30.856611, 32.212765, 46.625599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.083233, 32.259323, 46.689434>,  <31.460936, 32.336918, 46.795826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083233, 32.259323, 46.689434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211959, 0.259959, -0.942069,
		0.251886, -0.945935, -0.204353,
		-0.944260, -0.193980, -0.265979,
		30.799955, 32.201126, 46.609638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557585, 32.151867, 46.094143>,  <31.460936, 32.336918, 46.795826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557585, 32.151867, 46.094143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.170544, 32.250023, 46.117905>,  <30.938318, 32.308914, 46.132160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.170544, 32.250023, 46.117905>,  <31.557585, 32.151867, 46.094143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170544, 32.250023, 46.117905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046775, 0.405435, -0.912926,
		-0.248103, -0.880572, -0.403778,
		-0.967604, 0.245387, 0.059401,
		30.880262, 32.323639, 46.135723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285440, 32.049236, 45.481125>,  <31.557585, 32.151867, 46.094143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285440, 32.049236, 45.481125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.985758, 32.288551, 45.594788>,  <30.805948, 32.432140, 45.662987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.985758, 32.288551, 45.594788>,  <31.285440, 32.049236, 45.481125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985758, 32.288551, 45.594788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002499, 0.426462, -0.904502,
		-0.662334, -0.678367, -0.318012,
		-0.749205, 0.598288, 0.284156,
		30.760996, 32.468037, 45.680035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676538, 31.909315, 45.086094>,  <31.285440, 32.049236, 45.481125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676538, 31.909315, 45.086094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.697636, 32.289078, 45.209927>,  <30.710293, 32.516937, 45.284225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.697636, 32.289078, 45.209927>,  <30.676538, 31.909315, 45.086094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697636, 32.289078, 45.209927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153145, 0.298659, -0.941992,
		-0.986795, 0.097093, -0.129646,
		0.052741, 0.949408, 0.309585,
		30.713457, 32.573898, 45.302803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548000, 32.252602, 44.523979>,  <30.676538, 31.909315, 45.086094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548000, 32.252602, 44.523979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.668898, 32.558918, 44.751034>,  <30.741436, 32.742706, 44.887268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.668898, 32.558918, 44.751034>,  <30.548000, 32.252602, 44.523979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668898, 32.558918, 44.751034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057478, 0.579764, -0.812754,
		-0.951496, 0.278276, 0.131214,
		0.302243, 0.765791, 0.567638,
		30.759571, 32.788654, 44.921326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307030, 32.827175, 44.165737>,  <30.548000, 32.252602, 44.523979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307030, 32.827175, 44.165737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.562410, 32.999290, 44.420994>,  <30.715639, 33.102558, 44.574150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.562410, 32.999290, 44.420994>,  <30.307030, 32.827175, 44.165737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562410, 32.999290, 44.420994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232626, 0.682466, -0.692911,
		-0.733664, 0.590840, 0.335626,
		0.638453, 0.430289, 0.638146,
		30.753946, 33.128376, 44.612438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119463, 33.553505, 44.280430>,  <30.307030, 32.827175, 44.165737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119463, 33.553505, 44.280430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.511177, 33.491394, 44.332417>,  <30.746206, 33.454128, 44.363609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.511177, 33.491394, 44.332417>,  <30.119463, 33.553505, 44.280430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511177, 33.491394, 44.332417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202485, 0.751493, -0.627900,
		-0.000170, 0.641208, 0.767367,
		0.979285, -0.155273, 0.129962,
		30.804962, 33.444813, 44.371407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.295868, 28.387402, 48.669945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444588, 28.758722, 48.667862>,  <34.533817, 28.981514, 48.666611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444588, 28.758722, 48.667862>,  <34.295868, 28.387402, 48.669945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444588, 28.758722, 48.667862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154854, 0.056484, -0.986321,
		-0.915308, 0.367517, 0.164751,
		0.371796, 0.928300, -0.005211,
		34.556126, 29.037212, 48.666298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860458, 28.888859, 48.191093>,  <34.295868, 28.387402, 48.669945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860458, 28.888859, 48.191093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.226868, 29.047749, 48.213406>,  <34.446712, 29.143082, 48.226791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.226868, 29.047749, 48.213406>,  <33.860458, 28.888859, 48.191093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226868, 29.047749, 48.213406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024632, 0.083090, -0.996238,
		-0.400364, 0.913952, 0.066329,
		0.916025, 0.397224, 0.055778,
		34.501675, 29.166916, 48.230141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845203, 29.504250, 47.823311>,  <33.860458, 28.888859, 48.191093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845203, 29.504250, 47.823311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.233013, 29.407259, 47.837303>,  <34.465698, 29.349066, 47.845699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.233013, 29.407259, 47.837303>,  <33.845203, 29.504250, 47.823311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233013, 29.407259, 47.837303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058693, 0.091259, -0.994096,
		0.237850, 0.965856, 0.102710,
		0.969527, -0.242474, 0.034983,
		34.523872, 29.334517, 47.847797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185871, 29.970873, 47.379383>,  <33.845203, 29.504250, 47.823311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185871, 29.970873, 47.379383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.440231, 29.668510, 47.441654>,  <34.592846, 29.487093, 47.479015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.440231, 29.668510, 47.441654>,  <34.185871, 29.970873, 47.379383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440231, 29.668510, 47.441654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288093, 0.045365, -0.956527,
		0.715983, 0.653106, 0.246619,
		0.635902, -0.755907, 0.155674,
		34.631001, 29.441738, 47.488358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835308, 30.193428, 47.030136>,  <34.185871, 29.970873, 47.379383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835308, 30.193428, 47.030136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862411, 29.795811, 47.064278>,  <34.878674, 29.557240, 47.084763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862411, 29.795811, 47.064278>,  <34.835308, 30.193428, 47.030136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862411, 29.795811, 47.064278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275876, -0.063551, -0.959090,
		0.958802, 0.088532, 0.269927,
		0.067756, -0.994044, 0.085357,
		34.882740, 29.497597, 47.089886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435066, 30.005203, 46.702381>,  <34.835308, 30.193428, 47.030136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435066, 30.005203, 46.702381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.217232, 29.669897, 46.691551>,  <35.086529, 29.468714, 46.685051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.217232, 29.669897, 46.691551>,  <35.435066, 30.005203, 46.702381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217232, 29.669897, 46.691551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172579, -0.080407, -0.981708,
		0.820755, -0.539300, 0.188456,
		-0.544589, -0.838266, -0.027078,
		35.053856, 29.418417, 46.683430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748489, 29.741638, 46.197384>,  <35.435066, 30.005203, 46.702381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748489, 29.741638, 46.197384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409542, 29.530254, 46.218170>,  <35.206173, 29.403425, 46.230640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409542, 29.530254, 46.218170>,  <35.748489, 29.741638, 46.197384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409542, 29.530254, 46.218170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081790, 0.033197, -0.996097,
		0.524670, -0.848310, -0.071352,
		-0.847368, -0.528458, 0.051966,
		35.155331, 29.371717, 46.233761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797264, 29.092842, 45.734909>,  <35.748489, 29.741638, 46.197384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797264, 29.092842, 45.734909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409859, 29.177792, 45.786880>,  <35.177418, 29.228762, 45.818062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409859, 29.177792, 45.786880>,  <35.797264, 29.092842, 45.734909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409859, 29.177792, 45.786880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112661, 0.091536, -0.989408,
		-0.222019, -0.972892, -0.064727,
		-0.968512, 0.212375, 0.129930,
		35.119305, 29.241505, 45.825859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480194, 28.630163, 45.265549>,  <35.797264, 29.092842, 45.734909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480194, 28.630163, 45.265549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.225945, 28.930103, 45.338985>,  <35.073395, 29.110067, 45.383049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.225945, 28.930103, 45.338985>,  <35.480194, 28.630163, 45.265549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225945, 28.930103, 45.338985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063274, 0.186412, -0.980432,
		-0.769399, -0.634806, -0.071043,
		-0.635627, 0.749848, 0.183591,
		35.035255, 29.155058, 45.394062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939579, 28.466049, 44.791756>,  <35.480194, 28.630163, 45.265549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939579, 28.466049, 44.791756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.898403, 28.849930, 44.896347>,  <34.873695, 29.080259, 44.959103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.898403, 28.849930, 44.896347>,  <34.939579, 28.466049, 44.791756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898403, 28.849930, 44.896347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130325, 0.247598, -0.960058,
		-0.986112, -0.132910, 0.099585,
		-0.102944, 0.959703, 0.261481,
		34.867519, 29.137840, 44.974792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200920, 28.758638, 44.677097>,  <34.939579, 28.466049, 44.791756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200920, 28.758638, 44.677097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.462383, 29.061195, 44.667263>,  <34.619263, 29.242729, 44.661362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.462383, 29.061195, 44.667263>,  <34.200920, 28.758638, 44.677097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462383, 29.061195, 44.667263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255018, 0.189557, -0.948174,
		-0.712528, 0.626053, 0.316798,
		0.653658, 0.756390, -0.024590,
		34.658482, 29.288113, 44.659885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859596, 29.142296, 44.186756>,  <34.200920, 28.758638, 44.677097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859596, 29.142296, 44.186756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220211, 29.315325, 44.191128>,  <34.436581, 29.419142, 44.193752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220211, 29.315325, 44.191128>,  <33.859596, 29.142296, 44.186756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220211, 29.315325, 44.191128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105604, 0.244447, -0.963895,
		-0.419625, 0.867829, 0.266058,
		0.901533, 0.432571, 0.010930,
		34.490669, 29.445097, 44.194408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241497, 29.577774, 44.356853>,  <33.859596, 29.142296, 44.186756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241497, 29.577774, 44.356853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.879951, 29.734604, 44.288380>,  <32.663025, 29.828701, 44.247295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.879951, 29.734604, 44.288380>,  <33.241497, 29.577774, 44.356853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879951, 29.734604, 44.288380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351487, -0.452463, 0.819594,
		0.243889, 0.800971, 0.546775,
		-0.903867, 0.392074, -0.171180,
		32.608791, 29.852226, 44.237026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031403, 29.889334, 44.931351>,  <33.241497, 29.577774, 44.356853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031403, 29.889334, 44.931351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.685150, 29.837339, 44.737946>,  <32.477398, 29.806143, 44.621902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.685150, 29.837339, 44.737946>,  <33.031403, 29.889334, 44.931351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685150, 29.837339, 44.737946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411383, -0.365792, 0.834841,
		-0.285383, 0.921574, 0.263167,
		-0.865633, -0.129987, -0.483511,
		32.425461, 29.798344, 44.592892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499943, 29.993013, 45.448738>,  <33.031403, 29.889334, 44.931351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499943, 29.993013, 45.448738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.329502, 29.800949, 45.142044>,  <32.227238, 29.685711, 44.958027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.329502, 29.800949, 45.142044>,  <32.499943, 29.993013, 45.448738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329502, 29.800949, 45.142044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528707, -0.555558, 0.641735,
		-0.734102, 0.678823, -0.017140,
		-0.426102, -0.480161, -0.766735,
		32.201672, 29.656900, 44.912025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830658, 30.105864, 45.520935>,  <32.499943, 29.993013, 45.448738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830658, 30.105864, 45.520935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.889111, 29.753859, 45.340172>,  <31.924183, 29.542656, 45.231712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.889111, 29.753859, 45.340172>,  <31.830658, 30.105864, 45.520935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889111, 29.753859, 45.340172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516430, -0.457489, 0.723881,
		-0.843769, 0.127598, -0.521318,
		0.146131, -0.880013, -0.451910,
		31.932951, 29.489855, 45.204597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180845, 29.737259, 45.487476>,  <31.830658, 30.105864, 45.520935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180845, 29.737259, 45.487476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.451336, 29.446096, 45.442101>,  <31.613630, 29.271399, 45.414875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.451336, 29.446096, 45.442101>,  <31.180845, 29.737259, 45.487476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451336, 29.446096, 45.442101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516373, -0.578164, 0.631732,
		-0.525430, -0.368616, -0.766842,
		0.676226, -0.727907, -0.113441,
		31.654203, 29.227724, 45.408066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828291, 29.142153, 45.430683>,  <31.180845, 29.737259, 45.487476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828291, 29.142153, 45.430683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.181824, 29.022768, 45.574772>,  <31.393944, 28.951138, 45.661224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.181824, 29.022768, 45.574772>,  <30.828291, 29.142153, 45.430683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181824, 29.022768, 45.574772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457991, -0.395205, 0.796277,
		-0.095297, -0.868755, -0.485988,
		0.883834, -0.298461, 0.360220,
		31.446974, 28.933229, 45.682838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793161, 28.442183, 45.473385>,  <30.828291, 29.142153, 45.430683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793161, 28.442183, 45.473385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.060066, 28.568663, 45.743134>,  <31.220209, 28.644550, 45.904984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.060066, 28.568663, 45.743134>,  <30.793161, 28.442183, 45.473385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060066, 28.568663, 45.743134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449763, -0.550650, 0.703206,
		0.593698, -0.772530, -0.225211,
		0.667260, 0.316201, 0.674375,
		31.260244, 28.663523, 45.945446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872671, 27.842100, 45.874207>,  <30.793161, 28.442183, 45.473385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872671, 27.842100, 45.874207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.067480, 28.118984, 46.087242>,  <31.184364, 28.285114, 46.215065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.067480, 28.118984, 46.087242>,  <30.872671, 27.842100, 45.874207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067480, 28.118984, 46.087242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519109, -0.260978, 0.813889,
		0.702379, -0.672854, 0.232232,
		0.487021, 0.692212, 0.532590,
		31.213587, 28.326649, 46.247021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264391, 27.485596, 46.352592>,  <30.872671, 27.842100, 45.874207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264391, 27.485596, 46.352592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.199181, 27.855206, 46.490925>,  <31.160053, 28.076971, 46.573925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.199181, 27.855206, 46.490925>,  <31.264391, 27.485596, 46.352592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199181, 27.855206, 46.490925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418899, -0.382182, 0.823687,
		0.893278, -0.010584, 0.449380,
		-0.163027, 0.924027, 0.345828,
		31.150272, 28.132414, 46.594673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492113, 27.551498, 47.092163>,  <31.264391, 27.485596, 46.352592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492113, 27.551498, 47.092163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.242514, 27.861853, 47.055012>,  <31.092754, 28.048065, 47.032719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.242514, 27.861853, 47.055012>,  <31.492113, 27.551498, 47.092163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242514, 27.861853, 47.055012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479161, -0.286020, 0.829818,
		0.617278, 0.562310, 0.550251,
		-0.623997, 0.775887, -0.092883,
		31.055315, 28.094618, 47.027145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282522, 27.694607, 47.797073>,  <31.492113, 27.551498, 47.092163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282522, 27.694607, 47.797073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.019180, 27.907190, 47.583862>,  <30.861176, 28.034740, 47.455936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.019180, 27.907190, 47.583862>,  <31.282522, 27.694607, 47.797073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019180, 27.907190, 47.583862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690031, -0.143226, 0.709467,
		0.300708, 0.834889, 0.461016,
		-0.658356, 0.531457, -0.533030,
		30.821674, 28.066628, 47.423954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024487, 28.238916, 48.224651>,  <31.282522, 27.694607, 47.797073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024487, 28.238916, 48.224651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.749256, 28.217793, 47.935165>,  <30.584118, 28.205118, 47.761475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.749256, 28.217793, 47.935165>,  <31.024487, 28.238916, 48.224651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749256, 28.217793, 47.935165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724876, 0.004247, 0.688866,
		-0.033305, 0.998595, -0.041202,
		-0.688074, -0.052809, -0.723716,
		30.542833, 28.201950, 47.718052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558655, 28.809492, 48.330357>,  <31.024487, 28.238916, 48.224651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558655, 28.809492, 48.330357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.352913, 28.525454, 48.138020>,  <30.229467, 28.355030, 48.022617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.352913, 28.525454, 48.138020>,  <30.558655, 28.809492, 48.330357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352913, 28.525454, 48.138020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660308, -0.029842, 0.750402,
		-0.547206, 0.703473, -0.453532,
		-0.514354, -0.710095, -0.480838,
		30.198606, 28.312426, 47.993767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847183, 29.073132, 48.209415>,  <30.558655, 28.809492, 48.330357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847183, 29.073132, 48.209415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.875017, 28.674234, 48.219746>,  <29.891718, 28.434896, 48.225945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.875017, 28.674234, 48.219746>,  <29.847183, 29.073132, 48.209415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875017, 28.674234, 48.219746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766482, -0.036879, 0.641207,
		-0.638486, -0.064408, -0.766934,
		0.069583, -0.997242, 0.025821,
		29.895891, 28.375061, 48.227493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602064, 29.738821, 48.264290>,  <29.847183, 29.073132, 48.209415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602064, 29.738821, 48.264290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683355, 30.074013, 48.466869>,  <29.732130, 30.275127, 48.588417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683355, 30.074013, 48.466869>,  <29.602064, 29.738821, 48.264290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683355, 30.074013, 48.466869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084894, 0.500217, -0.861729,
		-0.975444, 0.218122, 0.030519,
		0.203228, 0.837977, 0.506451,
		29.744324, 30.325405, 48.618805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255735, 30.252195, 47.872189>,  <29.602064, 29.738821, 48.264290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255735, 30.252195, 47.872189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.533136, 30.442436, 48.088654>,  <29.699577, 30.556581, 48.218533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.533136, 30.442436, 48.088654>,  <29.255735, 30.252195, 47.872189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533136, 30.442436, 48.088654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222344, 0.573186, -0.788683,
		-0.685286, 0.667278, 0.291759,
		0.693503, 0.475603, 0.541162,
		29.741188, 30.585117, 48.251003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212641, 30.870461, 47.592934>,  <29.255735, 30.252195, 47.872189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212641, 30.870461, 47.592934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.553186, 30.902315, 47.800331>,  <29.757513, 30.921429, 47.924770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.553186, 30.902315, 47.800331>,  <29.212641, 30.870461, 47.592934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553186, 30.902315, 47.800331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348829, 0.652261, -0.672959,
		-0.391787, 0.753799, 0.527532,
		0.851364, 0.079638, 0.518494,
		29.808596, 30.926207, 47.955879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336601, 31.642548, 47.787037>,  <29.212641, 30.870461, 47.592934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336601, 31.642548, 47.787037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.678316, 31.436865, 47.756618>,  <29.883345, 31.313456, 47.738369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.678316, 31.436865, 47.756618>,  <29.336601, 31.642548, 47.787037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678316, 31.436865, 47.756618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393046, 0.734754, -0.552858,
		0.340157, 0.442412, 0.829798,
		0.854288, -0.514207, -0.076043,
		29.934603, 31.282602, 47.733807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787329, 32.139927, 47.796734>,  <29.336601, 31.642548, 47.787037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787329, 32.139927, 47.796734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.985775, 31.826031, 47.648113>,  <30.104843, 31.637691, 47.558941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.985775, 31.826031, 47.648113>,  <29.787329, 32.139927, 47.796734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985775, 31.826031, 47.648113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408198, 0.588489, -0.697893,
		0.766319, 0.194569, 0.612289,
		0.496114, -0.784744, -0.371548,
		30.134609, 31.590607, 47.536648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550264, 32.375996, 47.789108>,  <29.787329, 32.139927, 47.796734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550264, 32.375996, 47.789108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.466799, 32.088406, 47.523922>,  <30.416719, 31.915852, 47.364811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.466799, 32.088406, 47.523922>,  <30.550264, 32.375996, 47.789108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466799, 32.088406, 47.523922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410007, 0.551131, -0.726739,
		0.887892, -0.423468, 0.179784,
		-0.208666, -0.718979, -0.662969,
		30.404200, 31.872711, 47.325031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060064, 32.463276, 47.397438>,  <30.550264, 32.375996, 47.789108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060064, 32.463276, 47.397438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.815596, 32.228191, 47.185375>,  <30.668915, 32.087139, 47.058140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.815596, 32.228191, 47.185375>,  <31.060064, 32.463276, 47.397438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815596, 32.228191, 47.185375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184670, 0.545439, -0.817553,
		0.769655, -0.597567, -0.224821,
		-0.611169, -0.587716, -0.530153,
		30.632244, 32.051876, 47.026329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741375, 32.761143, 47.430229>,  <31.060064, 32.463276, 47.397438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741375, 32.761143, 47.430229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.837074, 33.144684, 47.491375>,  <31.894493, 33.374809, 47.528061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.837074, 33.144684, 47.491375>,  <31.741375, 32.761143, 47.430229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837074, 33.144684, 47.491375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144300, -0.120575, 0.982161,
		0.960176, -0.257038, 0.109514,
		0.239248, 0.958850, 0.152863,
		31.908848, 33.432339, 47.537235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226536, 32.659496, 47.951916>,  <31.741375, 32.761143, 47.430229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226536, 32.659496, 47.951916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050926, 33.018795, 47.943764>,  <31.945560, 33.234375, 47.938873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050926, 33.018795, 47.943764>,  <32.226536, 32.659496, 47.951916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050926, 33.018795, 47.943764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036517, 0.040499, 0.998512,
		0.897733, 0.437627, -0.050581,
		-0.439024, 0.898244, -0.020377,
		31.919218, 33.288269, 47.937653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423840, 32.954823, 48.529194>,  <32.226536, 32.659496, 47.951916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423840, 32.954823, 48.529194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.117138, 33.193352, 48.434132>,  <31.933117, 33.336472, 48.377094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.117138, 33.193352, 48.434132>,  <32.423840, 32.954823, 48.529194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117138, 33.193352, 48.434132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309072, -0.018461, 0.950859,
		0.562635, 0.802529, 0.198463,
		-0.766757, 0.596327, -0.237653,
		31.887112, 33.372250, 48.362835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473480, 33.412235, 49.025837>,  <32.423840, 32.954823, 48.529194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473480, 33.412235, 49.025837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.094292, 33.444214, 48.902573>,  <31.866779, 33.463402, 48.828613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.094292, 33.444214, 48.902573>,  <32.473480, 33.412235, 49.025837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094292, 33.444214, 48.902573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304548, 0.054337, 0.950946,
		0.092767, 0.995317, -0.027163,
		-0.947969, 0.079944, -0.308163,
		31.809900, 33.468197, 48.810123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101788, 34.004150, 49.383396>,  <32.473480, 33.412235, 49.025837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101788, 34.004150, 49.383396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.820658, 33.744034, 49.268051>,  <31.651979, 33.587963, 49.198845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.820658, 33.744034, 49.268051>,  <32.101788, 34.004150, 49.383396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820658, 33.744034, 49.268051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378940, -0.000814, 0.925421,
		-0.602031, 0.759681, -0.245850,
		-0.702824, -0.650295, -0.288364,
		31.609810, 33.548946, 49.181541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518335, 34.239090, 49.735985>,  <32.101788, 34.004150, 49.383396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518335, 34.239090, 49.735985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458920, 33.859879, 49.623428>,  <31.423269, 33.632351, 49.555893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458920, 33.859879, 49.623428>,  <31.518335, 34.239090, 49.735985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458920, 33.859879, 49.623428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501234, -0.173112, 0.847818,
		-0.852467, 0.266979, -0.449469,
		-0.148541, -0.948027, -0.281391,
		31.414358, 33.575470, 49.539013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868286, 34.018429, 50.021908>,  <31.518335, 34.239090, 49.735985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868286, 34.018429, 50.021908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.016703, 33.656979, 49.936321>,  <31.105753, 33.440109, 49.884968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.016703, 33.656979, 49.936321>,  <30.868286, 34.018429, 50.021908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016703, 33.656979, 49.936321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508032, -0.390405, 0.767781,
		-0.777325, -0.176173, -0.603928,
		0.371039, -0.903630, -0.213969,
		31.128014, 33.385891, 49.872131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303568, 33.522339, 49.989750>,  <30.868286, 34.018429, 50.021908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303568, 33.522339, 49.989750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.641850, 33.324951, 50.071011>,  <30.844818, 33.206516, 50.119766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.641850, 33.324951, 50.071011>,  <30.303568, 33.522339, 49.989750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641850, 33.324951, 50.071011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494898, -0.582812, 0.644520,
		-0.199654, -0.645612, -0.737104,
		0.845704, -0.493472, 0.203152,
		30.895561, 33.176910, 50.131954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085451, 32.884159, 49.986851>,  <30.303568, 33.522339, 49.989750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085451, 32.884159, 49.986851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.432810, 32.867859, 50.184528>,  <30.641224, 32.858078, 50.303135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.432810, 32.867859, 50.184528>,  <30.085451, 32.884159, 49.986851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432810, 32.867859, 50.184528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364196, -0.728770, 0.579876,
		0.336526, -0.683546, -0.647700,
		0.868396, -0.040747, 0.494195,
		30.693329, 32.855637, 50.332787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.583801, 37.859344, 35.818745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957672, 37.860893, 35.960938>,  <36.181995, 37.861820, 36.046253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957672, 37.860893, 35.960938>,  <35.583801, 37.859344, 35.818745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957672, 37.860893, 35.960938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345379, -0.227005, 0.910594,
		0.084219, -0.973886, -0.210840,
		0.934677, 0.003870, 0.355478,
		36.238075, 37.862053, 36.067581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689335, 37.190918, 35.989635>,  <35.583801, 37.859344, 35.818745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689335, 37.190918, 35.989635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919922, 37.456696, 36.179874>,  <36.058273, 37.616161, 36.294018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919922, 37.456696, 36.179874>,  <35.689335, 37.190918, 35.989635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919922, 37.456696, 36.179874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241886, -0.417194, 0.876037,
		0.780495, -0.620050, -0.079780,
		0.576470, 0.664445, 0.475599,
		36.092865, 37.656029, 36.322556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023563, 36.799225, 36.488308>,  <35.689335, 37.190918, 35.989635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023563, 36.799225, 36.488308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105331, 37.162209, 36.635132>,  <36.154392, 37.379997, 36.723225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105331, 37.162209, 36.635132>,  <36.023563, 36.799225, 36.488308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105331, 37.162209, 36.635132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064479, -0.361679, 0.930070,
		0.976758, -0.213789, -0.015421,
		0.204416, 0.907459, 0.367058,
		36.166656, 37.434448, 36.745251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353870, 36.681984, 37.152050>,  <36.023563, 36.799225, 36.488308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353870, 36.681984, 37.152050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237923, 37.063465, 37.184101>,  <36.168354, 37.292355, 37.203331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237923, 37.063465, 37.184101>,  <36.353870, 36.681984, 37.152050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237923, 37.063465, 37.184101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290286, -0.167387, 0.942187,
		0.911981, 0.249854, 0.325368,
		-0.289871, 0.953706, 0.080125,
		36.150963, 37.349575, 37.208138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696297, 37.030136, 37.739048>,  <36.353870, 36.681984, 37.152050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696297, 37.030136, 37.739048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363708, 37.243805, 37.677963>,  <36.164158, 37.372005, 37.641312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363708, 37.243805, 37.677963>,  <36.696297, 37.030136, 37.739048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363708, 37.243805, 37.677963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304600, -0.208419, 0.929398,
		0.464631, 0.819280, 0.336003,
		-0.831466, 0.534174, -0.152715,
		36.114269, 37.404057, 37.632149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481625, 37.418156, 38.371510>,  <36.696297, 37.030136, 37.739048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481625, 37.418156, 38.371510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136154, 37.391663, 38.171635>,  <35.928871, 37.375767, 38.051712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136154, 37.391663, 38.171635>,  <36.481625, 37.418156, 38.371510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136154, 37.391663, 38.171635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483055, -0.174399, 0.858046,
		-0.143978, 0.982445, 0.118628,
		-0.863671, -0.066237, -0.499684,
		35.877052, 37.371792, 38.021729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078815, 37.865456, 38.712364>,  <36.481625, 37.418156, 38.371510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078815, 37.865456, 38.712364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846058, 37.610676, 38.510098>,  <35.706402, 37.457809, 38.388737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846058, 37.610676, 38.510098>,  <36.078815, 37.865456, 38.712364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846058, 37.610676, 38.510098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640703, -0.023916, 0.767416,
		-0.500899, 0.770534, -0.394179,
		-0.581893, -0.636950, -0.505663,
		35.671490, 37.419590, 38.358398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410843, 38.088058, 38.973488>,  <36.078815, 37.865456, 38.712364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410843, 38.088058, 38.973488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355564, 37.732059, 38.799679>,  <35.322399, 37.518459, 38.695393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355564, 37.732059, 38.799679>,  <35.410843, 38.088058, 38.973488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355564, 37.732059, 38.799679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718177, -0.212067, 0.662759,
		-0.682000, 0.403657, -0.609866,
		-0.138195, -0.889993, -0.434527,
		35.314106, 37.465061, 38.669319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716656, 37.929432, 38.927231>,  <35.410843, 38.088058, 38.973488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716656, 37.929432, 38.927231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853325, 37.553509, 38.929138>,  <34.935326, 37.327953, 38.930283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853325, 37.553509, 38.929138>,  <34.716656, 37.929432, 38.927231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853325, 37.553509, 38.929138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656929, -0.235193, 0.716330,
		-0.672091, -0.247881, -0.697746,
		0.341669, -0.939808, 0.004769,
		34.955826, 37.271564, 38.930569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050579, 37.509899, 38.881165>,  <34.716656, 37.929432, 38.927231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050579, 37.509899, 38.881165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331821, 37.258236, 39.013706>,  <34.500568, 37.107239, 39.093231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331821, 37.258236, 39.013706>,  <34.050579, 37.509899, 38.881165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331821, 37.258236, 39.013706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633622, -0.342840, 0.693531,
		-0.322736, -0.697585, -0.639701,
		0.703111, -0.629156, 0.331358,
		34.542755, 37.069489, 39.113113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793320, 36.877274, 38.919579>,  <34.050579, 37.509899, 38.881165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793320, 36.877274, 38.919579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091721, 36.849537, 39.184509>,  <34.270760, 36.832897, 39.343468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091721, 36.849537, 39.184509>,  <33.793320, 36.877274, 38.919579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091721, 36.849537, 39.184509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632464, -0.385143, 0.672052,
		0.208491, -0.920248, -0.331171,
		0.746003, -0.069337, 0.662323,
		34.315521, 36.828735, 39.383205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690666, 36.201942, 39.288120>,  <33.793320, 36.877274, 38.919579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690666, 36.201942, 39.288120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941216, 36.403820, 39.525753>,  <34.091545, 36.524948, 39.668335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941216, 36.403820, 39.525753>,  <33.690666, 36.201942, 39.288120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941216, 36.403820, 39.525753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504320, -0.318763, 0.802528,
		0.594407, -0.802290, 0.054866,
		0.626372, 0.504699, 0.594086,
		34.129128, 36.555229, 39.703979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560677, 35.457378, 39.266880>,  <33.690666, 36.201942, 39.288120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560677, 35.457378, 39.266880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166046, 35.445553, 39.202637>,  <32.929268, 35.438457, 39.164089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166046, 35.445553, 39.202637>,  <33.560677, 35.457378, 39.266880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166046, 35.445553, 39.202637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162379, -0.072812, -0.984038,
		0.017395, -0.996907, 0.076635,
		-0.986575, -0.029561, -0.160610,
		32.870075, 35.436684, 39.154453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388199, 34.863781, 38.873142>,  <33.560677, 35.457378, 39.266880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388199, 34.863781, 38.873142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088028, 35.119778, 38.807087>,  <32.907925, 35.273376, 38.767452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088028, 35.119778, 38.807087>,  <33.388199, 34.863781, 38.873142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088028, 35.119778, 38.807087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038114, -0.291331, -0.955863,
		-0.659855, -0.711010, 0.243015,
		-0.750426, 0.639993, -0.165137,
		32.862900, 35.311775, 38.757545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991352, 34.482635, 38.403683>,  <33.388199, 34.863781, 38.873142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991352, 34.482635, 38.403683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820961, 34.841358, 38.355881>,  <32.718727, 35.056591, 38.327202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820961, 34.841358, 38.355881>,  <32.991352, 34.482635, 38.403683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820961, 34.841358, 38.355881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248443, -0.242959, -0.937682,
		-0.869953, -0.369743, 0.326301,
		-0.425979, 0.896806, -0.119503,
		32.693169, 35.110401, 38.320030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362423, 34.389175, 37.977501>,  <32.991352, 34.482635, 38.403683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362423, 34.389175, 37.977501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473289, 34.770653, 37.930779>,  <32.539810, 34.999538, 37.902744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473289, 34.770653, 37.930779>,  <32.362423, 34.389175, 37.977501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473289, 34.770653, 37.930779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247721, -0.046527, -0.967714,
		-0.928340, 0.297150, 0.223355,
		0.277164, 0.953697, -0.116803,
		32.556438, 35.056763, 37.895737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900324, 34.782715, 37.531208>,  <32.362423, 34.389175, 37.977501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900324, 34.782715, 37.531208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175850, 35.071209, 37.501930>,  <32.341167, 35.244305, 37.484364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175850, 35.071209, 37.501930>,  <31.900324, 34.782715, 37.531208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175850, 35.071209, 37.501930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238367, 0.129981, -0.962437,
		-0.684626, 0.680389, 0.261451,
		0.688816, 0.721232, -0.073195,
		32.382496, 35.287579, 37.479973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569460, 35.416393, 37.280453>,  <31.900324, 34.782715, 37.531208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569460, 35.416393, 37.280453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960140, 35.426147, 37.195171>,  <32.194550, 35.431999, 37.144001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960140, 35.426147, 37.195171>,  <31.569460, 35.416393, 37.280453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960140, 35.426147, 37.195171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210830, 0.294405, -0.932136,
		0.040037, 0.955370, 0.292687,
		0.976703, 0.024387, -0.213207,
		32.253151, 35.433464, 37.131210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644464, 36.028381, 36.849453>,  <31.569460, 35.416393, 37.280453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644464, 36.028381, 36.849453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986540, 35.835247, 36.774063>,  <32.191784, 35.719368, 36.728828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986540, 35.835247, 36.774063>,  <31.644464, 36.028381, 36.849453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986540, 35.835247, 36.774063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039781, 0.301416, -0.952663,
		0.516790, 0.822203, 0.238559,
		0.855188, -0.482836, -0.188477,
		32.243095, 35.690395, 36.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855785, 36.413109, 36.224541>,  <31.644464, 36.028381, 36.849453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855785, 36.413109, 36.224541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067776, 36.074120, 36.212410>,  <32.194969, 35.870728, 36.205132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067776, 36.074120, 36.212410>,  <31.855785, 36.413109, 36.224541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067776, 36.074120, 36.212410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012992, 0.027640, -0.999533,
		0.847913, 0.530123, 0.003639,
		0.529976, -0.847470, -0.030324,
		32.226768, 35.819878, 36.203312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521488, 36.506111, 35.789459>,  <31.855785, 36.413109, 36.224541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521488, 36.506111, 35.789459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431248, 36.116852, 35.771160>,  <32.377106, 35.883297, 35.760181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431248, 36.116852, 35.771160>,  <32.521488, 36.506111, 35.789459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431248, 36.116852, 35.771160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022541, 0.041728, -0.998875,
		0.973959, -0.226377, 0.012522,
		-0.225599, -0.973146, -0.045744,
		32.363567, 35.824909, 35.757439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870903, 36.229843, 35.218876>,  <32.521488, 36.506111, 35.789459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870903, 36.229843, 35.218876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597088, 35.945526, 35.283604>,  <32.432796, 35.774937, 35.322441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597088, 35.945526, 35.283604>,  <32.870903, 36.229843, 35.218876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597088, 35.945526, 35.283604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044550, -0.180770, -0.982516,
		0.727613, -0.679780, 0.092079,
		-0.684540, -0.710789, 0.161815,
		32.391727, 35.732288, 35.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975922, 35.616528, 34.749264>,  <32.870903, 36.229843, 35.218876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975922, 35.616528, 34.749264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597195, 35.550930, 34.860008>,  <32.369961, 35.511570, 34.926453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597195, 35.550930, 34.860008>,  <32.975922, 35.616528, 34.749264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597195, 35.550930, 34.860008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223679, -0.283106, -0.932641,
		0.231328, -0.944964, 0.231367,
		-0.946813, -0.163994, 0.276859,
		32.313152, 35.501732, 34.943066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845482, 34.917450, 34.438084>,  <32.975922, 35.616528, 34.749264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845482, 34.917450, 34.438084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507095, 35.113426, 34.522263>,  <32.304062, 35.231014, 34.572769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507095, 35.113426, 34.522263>,  <32.845482, 34.917450, 34.438084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507095, 35.113426, 34.522263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302808, -0.116551, -0.945898,
		-0.438911, -0.863926, 0.246958,
		-0.845970, 0.489946, 0.210448,
		32.253304, 35.260410, 34.585396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293629, 34.480389, 34.095463>,  <32.845482, 34.917450, 34.438084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293629, 34.480389, 34.095463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150200, 34.849949, 34.148876>,  <32.064144, 35.071686, 34.180923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150200, 34.849949, 34.148876>,  <32.293629, 34.480389, 34.095463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150200, 34.849949, 34.148876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296658, 0.022851, -0.954710,
		-0.885112, -0.381942, 0.265890,
		-0.358568, 0.923904, 0.133532,
		32.042629, 35.127121, 34.188934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575075, 34.524879, 33.754044>,  <32.293629, 34.480389, 34.095463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575075, 34.524879, 33.754044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716965, 34.898865, 33.755173>,  <31.802099, 35.123257, 33.755848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716965, 34.898865, 33.755173>,  <31.575075, 34.524879, 33.754044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716965, 34.898865, 33.755173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294425, 0.114567, -0.948783,
		-0.887403, 0.335726, 0.315917,
		0.354724, 0.934967, 0.002821,
		31.823381, 35.179356, 33.756020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864557, 33.806152, 33.810593>,  <31.575075, 34.524879, 33.754044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864557, 33.806152, 33.810593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161789, 33.565823, 33.692715>,  <32.340126, 33.421627, 33.621986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161789, 33.565823, 33.692715>,  <31.864557, 33.806152, 33.810593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161789, 33.565823, 33.692715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066772, -0.504741, 0.860685,
		-0.665865, -0.619878, -0.415180,
		0.743078, -0.600823, -0.294699,
		32.384712, 33.385574, 33.604305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640884, 33.069710, 33.806065>,  <31.864557, 33.806152, 33.810593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640884, 33.069710, 33.806065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037540, 33.094639, 33.851265>,  <32.275536, 33.109596, 33.878384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037540, 33.094639, 33.851265>,  <31.640884, 33.069710, 33.806065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037540, 33.094639, 33.851265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047333, -0.638961, 0.767782,
		0.120053, -0.766710, -0.630668,
		0.991638, 0.062323, 0.113000,
		32.335033, 33.113335, 33.885166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007080, 32.406448, 33.746994>,  <31.640884, 33.069710, 33.806065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007080, 32.406448, 33.746994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234241, 32.640285, 33.978764>,  <32.370537, 32.780590, 34.117825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234241, 32.640285, 33.978764>,  <32.007080, 32.406448, 33.746994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234241, 32.640285, 33.978764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045470, -0.725166, 0.687071,
		0.821838, -0.363844, -0.438406,
		0.567904, 0.584595, 0.579425,
		32.404613, 32.815662, 34.152592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023453, 32.001648, 34.278522>,  <32.007080, 32.406448, 33.746994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023453, 32.001648, 34.278522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233826, 32.318619, 34.402111>,  <32.360050, 32.508801, 34.476265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233826, 32.318619, 34.402111>,  <32.023453, 32.001648, 34.278522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233826, 32.318619, 34.402111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197713, -0.467219, 0.861752,
		0.827230, -0.392132, -0.402396,
		0.525928, 0.792426, 0.308968,
		32.391605, 32.556347, 34.494801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538986, 31.742765, 34.701794>,  <32.023453, 32.001648, 34.278522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538986, 31.742765, 34.701794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478230, 32.119797, 34.820774>,  <32.441776, 32.346016, 34.892162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478230, 32.119797, 34.820774>,  <32.538986, 31.742765, 34.701794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478230, 32.119797, 34.820774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109923, -0.282963, 0.952811,
		0.982266, 0.177421, -0.060632,
		-0.151892, 0.942578, 0.297448,
		32.432663, 32.402569, 34.910007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016579, 31.816559, 35.157612>,  <32.538986, 31.742765, 34.701794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016579, 31.816559, 35.157612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757496, 32.110279, 35.238880>,  <32.602047, 32.286510, 35.287640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757496, 32.110279, 35.238880>,  <33.016579, 31.816559, 35.157612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757496, 32.110279, 35.238880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009012, -0.259262, 0.965765,
		0.761838, 0.627361, 0.161308,
		-0.647705, 0.734303, 0.203170,
		32.563183, 32.330570, 35.299831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365604, 32.239792, 35.651123>,  <33.016579, 31.816559, 35.157612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365604, 32.239792, 35.651123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970268, 32.294788, 35.677280>,  <32.733067, 32.327785, 35.692974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970268, 32.294788, 35.677280>,  <33.365604, 32.239792, 35.651123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970268, 32.294788, 35.677280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051602, -0.101561, 0.993490,
		0.143241, 0.985282, 0.093282,
		-0.988342, 0.137495, 0.065390,
		32.673767, 32.336037, 35.696896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413254, 32.727367, 36.139717>,  <33.365604, 32.239792, 35.651123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413254, 32.727367, 36.139717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040771, 32.581642, 36.135014>,  <32.817284, 32.494205, 36.132191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040771, 32.581642, 36.135014>,  <33.413254, 32.727367, 36.139717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040771, 32.581642, 36.135014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080829, 0.174939, 0.981256,
		-0.355428, 0.914698, -0.192351,
		-0.931202, -0.364314, -0.011756,
		32.761410, 32.472347, 36.131485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897957, 33.197201, 36.539970>,  <33.413254, 32.727367, 36.139717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897957, 33.197201, 36.539970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728725, 32.834831, 36.546928>,  <32.627186, 32.617409, 36.551102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728725, 32.834831, 36.546928>,  <32.897957, 33.197201, 36.539970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728725, 32.834831, 36.546928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157468, 0.092412, 0.983191,
		-0.892307, 0.413224, -0.181752,
		-0.423074, -0.905928, 0.017390,
		32.601803, 32.563053, 36.552147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317120, 33.279823, 36.955662>,  <32.897957, 33.197201, 36.539970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317120, 33.279823, 36.955662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376705, 32.884293, 36.953323>,  <32.412457, 32.646973, 36.951920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376705, 32.884293, 36.953323>,  <32.317120, 33.279823, 36.955662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376705, 32.884293, 36.953323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317361, -0.053409, 0.946800,
		-0.936533, -0.139179, -0.321770,
		0.148960, -0.988826, -0.005849,
		32.421394, 32.587646, 36.951569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684008, 33.021805, 37.250214>,  <32.317120, 33.279823, 36.955662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684008, 33.021805, 37.250214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980120, 32.755196, 37.285370>,  <32.157787, 32.595230, 37.306465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980120, 32.755196, 37.285370>,  <31.684008, 33.021805, 37.250214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980120, 32.755196, 37.285370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275807, -0.181861, 0.943852,
		-0.613118, -0.722958, -0.318461,
		0.740281, -0.666527, 0.087895,
		32.202206, 32.555237, 37.311737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396736, 32.517998, 37.642590>,  <31.684008, 33.021805, 37.250214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396736, 32.517998, 37.642590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790504, 32.455391, 37.674633>,  <32.026764, 32.417828, 37.693859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790504, 32.455391, 37.674633>,  <31.396736, 32.517998, 37.642590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790504, 32.455391, 37.674633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117637, -0.247703, 0.961668,
		-0.130671, -0.956110, -0.262256,
		0.984422, -0.156513, 0.080106,
		32.085831, 32.408436, 37.698666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461657, 32.019047, 38.092228>,  <31.396736, 32.517998, 37.642590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461657, 32.019047, 38.092228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841881, 32.142845, 38.102398>,  <32.070015, 32.217125, 38.108501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841881, 32.142845, 38.102398>,  <31.461657, 32.019047, 38.092228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841881, 32.142845, 38.102398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062316, -0.270320, 0.960751,
		0.304221, -0.911669, -0.276242,
		0.950561, 0.309495, 0.025425,
		32.127048, 32.235695, 38.110027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800730, 31.470142, 38.467415>,  <31.461657, 32.019047, 38.092228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800730, 31.470142, 38.467415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057423, 31.776499, 38.483337>,  <32.211437, 31.960314, 38.492889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057423, 31.776499, 38.483337>,  <31.800730, 31.470142, 38.467415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057423, 31.776499, 38.483337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254150, -0.261346, 0.931185,
		0.723592, -0.587457, -0.362367,
		0.641734, 0.765894, 0.039806,
		32.249943, 32.006268, 38.495277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224136, 31.127659, 38.772423>,  <31.800730, 31.470142, 38.467415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224136, 31.127659, 38.772423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320107, 31.507530, 38.852966>,  <32.377689, 31.735453, 38.901291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320107, 31.507530, 38.852966>,  <32.224136, 31.127659, 38.772423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320107, 31.507530, 38.852966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294114, -0.268776, 0.917200,
		0.925166, -0.160838, -0.343800,
		0.239926, 0.949679, 0.201358,
		32.392086, 31.792435, 38.913372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958324, 31.243395, 39.023994>,  <32.224136, 31.127659, 38.772423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958324, 31.243395, 39.023994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725780, 31.530293, 39.177658>,  <32.586254, 31.702431, 39.269855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725780, 31.530293, 39.177658>,  <32.958324, 31.243395, 39.023994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725780, 31.530293, 39.177658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143295, -0.374510, 0.916084,
		0.800929, 0.587623, 0.114948,
		-0.581361, 0.717246, 0.384159,
		32.551373, 31.745466, 39.292904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187023, 31.248913, 39.651596>,  <32.958324, 31.243395, 39.023994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187023, 31.248913, 39.651596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877491, 31.499922, 39.686005>,  <32.691772, 31.650528, 39.706650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877491, 31.499922, 39.686005>,  <33.187023, 31.248913, 39.651596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877491, 31.499922, 39.686005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019390, -0.159222, 0.987052,
		0.633095, 0.762144, 0.135378,
		-0.773831, 0.627523, 0.086025,
		32.645340, 31.688179, 39.711811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338032, 31.696180, 40.149212>,  <33.187023, 31.248913, 39.651596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338032, 31.696180, 40.149212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938519, 31.689806, 40.130512>,  <32.698811, 31.685982, 40.119293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938519, 31.689806, 40.130512>,  <33.338032, 31.696180, 40.149212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938519, 31.689806, 40.130512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044004, -0.142884, 0.988761,
		-0.022438, 0.989611, 0.142008,
		-0.998779, -0.015937, -0.046753,
		32.638885, 31.685024, 40.116486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043953, 32.165257, 40.562149>,  <33.338032, 31.696180, 40.149212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043953, 32.165257, 40.562149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761028, 31.883692, 40.536190>,  <32.591274, 31.714752, 40.520615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761028, 31.883692, 40.536190>,  <33.043953, 32.165257, 40.562149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761028, 31.883692, 40.536190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074034, -0.017538, 0.997102,
		-0.703010, 0.710070, -0.039709,
		-0.707316, -0.703913, -0.064898,
		32.548832, 31.672518, 40.516720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628296, 32.216812, 41.159512>,  <33.043953, 32.165257, 40.562149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628296, 32.216812, 41.159512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491592, 31.854279, 41.060108>,  <32.409569, 31.636759, 41.000465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491592, 31.854279, 41.060108>,  <32.628296, 32.216812, 41.159512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491592, 31.854279, 41.060108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222262, -0.178981, 0.958418,
		-0.913126, 0.382784, -0.140275,
		-0.341760, -0.906334, -0.248511,
		32.389065, 31.582378, 40.985554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202072, 32.137993, 41.608845>,  <32.628296, 32.216812, 41.159512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202072, 32.137993, 41.608845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204716, 31.769785, 41.452591>,  <32.206303, 31.548861, 41.358837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204716, 31.769785, 41.452591>,  <32.202072, 32.137993, 41.608845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204716, 31.769785, 41.452591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236578, -0.380992, 0.893799,
		-0.971590, 0.086513, -0.220292,
		0.006604, -0.920522, -0.390635,
		32.206696, 31.493628, 41.335400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493616, 31.788567, 41.766525>,  <32.202072, 32.137993, 41.608845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493616, 31.788567, 41.766525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807661, 31.542772, 41.735531>,  <31.996088, 31.395296, 41.716934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807661, 31.542772, 41.735531>,  <31.493616, 31.788567, 41.766525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807661, 31.542772, 41.735531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159096, -0.321001, 0.933620,
		-0.598572, -0.720668, -0.349785,
		0.785112, -0.614488, -0.077487,
		32.043194, 31.358425, 41.712284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549280, 31.481052, 42.489887>,  <31.493616, 31.788567, 41.766525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549280, 31.481052, 42.489887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818598, 31.269735, 42.282974>,  <31.980188, 31.142944, 42.158825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818598, 31.269735, 42.282974>,  <31.549280, 31.481052, 42.489887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818598, 31.269735, 42.282974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168076, -0.571947, 0.802887,
		-0.720020, -0.627520, -0.296293,
		0.673292, -0.528295, -0.517284,
		32.020584, 31.111246, 42.127789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400055, 30.792547, 42.457760>,  <31.549280, 31.481052, 42.489887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400055, 30.792547, 42.457760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798655, 30.825777, 42.461571>,  <32.037815, 30.845715, 42.463856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798655, 30.825777, 42.461571>,  <31.400055, 30.792547, 42.457760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798655, 30.825777, 42.461571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052858, -0.714085, 0.698060,
		0.064796, -0.695112, -0.715975,
		0.996498, 0.083076, 0.009528,
		32.097603, 30.850700, 42.464428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710939, 30.096651, 42.406128>,  <31.400055, 30.792547, 42.457760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710939, 30.096651, 42.406128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995876, 30.332729, 42.558044>,  <32.166840, 30.474377, 42.649193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995876, 30.332729, 42.558044>,  <31.710939, 30.096651, 42.406128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995876, 30.332729, 42.558044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170580, -0.670504, 0.722029,
		0.680788, -0.449547, -0.578304,
		0.712342, 0.590196, 0.379787,
		32.209579, 30.509789, 42.671982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319439, 29.619576, 42.536751>,  <31.710939, 30.096651, 42.406128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319439, 29.619576, 42.536751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389683, 29.956858, 42.739990>,  <32.431828, 30.159227, 42.861935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389683, 29.956858, 42.739990>,  <32.319439, 29.619576, 42.536751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389683, 29.956858, 42.739990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280184, -0.537582, 0.795300,
		0.943748, 0.002701, -0.330656,
		0.175607, 0.843207, 0.508098,
		32.442364, 30.209820, 42.892418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797077, 29.462383, 43.009132>,  <32.319439, 29.619576, 42.536751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797077, 29.462383, 43.009132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675705, 29.809427, 43.166702>,  <32.602882, 30.017654, 43.261246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675705, 29.809427, 43.166702>,  <32.797077, 29.462383, 43.009132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675705, 29.809427, 43.166702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117574, -0.376169, 0.919061,
		0.945570, 0.325191, 0.012134,
		-0.303435, 0.867610, 0.393928,
		32.584675, 30.069710, 43.284882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253418, 29.549444, 43.549908>,  <32.797077, 29.462383, 43.009132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253418, 29.549444, 43.549908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928051, 29.763014, 43.642235>,  <32.732830, 29.891155, 43.697632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928051, 29.763014, 43.642235>,  <33.253418, 29.549444, 43.549908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928051, 29.763014, 43.642235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095407, -0.513903, 0.852526,
		0.573803, 0.671438, 0.468958,
		-0.813417, 0.533924, 0.230819,
		32.684025, 29.923191, 43.711479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924526, 29.878006, 43.655857>,  <33.253418, 29.549444, 43.549908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924526, 29.878006, 43.655857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298584, 29.754246, 43.724884>,  <34.523018, 29.679989, 43.766300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298584, 29.754246, 43.724884>,  <33.924526, 29.878006, 43.655857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298584, 29.754246, 43.724884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312212, 0.489534, -0.814174,
		0.167427, 0.815247, 0.554383,
		0.935143, -0.309400, 0.172569,
		34.579128, 29.661427, 43.776653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250919, 30.518126, 43.608528>,  <33.924526, 29.878006, 43.655857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250919, 30.518126, 43.608528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528988, 30.234953, 43.558609>,  <34.695827, 30.065050, 43.528660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528988, 30.234953, 43.558609>,  <34.250919, 30.518126, 43.608528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528988, 30.234953, 43.558609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356397, 0.490189, -0.795422,
		0.624276, 0.508477, 0.593068,
		0.695170, -0.707931, -0.124793,
		34.737537, 30.022573, 43.521172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719257, 30.819843, 43.218945>,  <34.250919, 30.518126, 43.608528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719257, 30.819843, 43.218945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874039, 30.455931, 43.158859>,  <34.966908, 30.237583, 43.122807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874039, 30.455931, 43.158859>,  <34.719257, 30.819843, 43.218945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874039, 30.455931, 43.158859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455419, 0.330208, -0.826774,
		0.801787, 0.251511, 0.542107,
		0.386951, -0.909783, -0.150214,
		34.990124, 30.182997, 43.113796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462334, 30.858715, 43.118305>,  <34.719257, 30.819843, 43.218945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462334, 30.858715, 43.118305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315399, 30.544983, 42.918346>,  <35.227238, 30.356745, 42.798370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315399, 30.544983, 42.918346>,  <35.462334, 30.858715, 43.118305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315399, 30.544983, 42.918346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467210, 0.309133, -0.828342,
		0.804227, -0.537834, 0.252891,
		-0.367333, -0.784328, -0.499895,
		35.205200, 30.309685, 42.768379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032047, 30.508015, 42.746490>,  <35.462334, 30.858715, 43.118305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032047, 30.508015, 42.746490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714375, 30.365370, 42.549671>,  <35.523773, 30.279783, 42.431580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714375, 30.365370, 42.549671>,  <36.032047, 30.508015, 42.746490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714375, 30.365370, 42.549671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423358, 0.256187, -0.868986,
		0.435946, -0.898441, -0.052484,
		-0.794178, -0.356612, -0.492046,
		35.476120, 30.258387, 42.402058>
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
