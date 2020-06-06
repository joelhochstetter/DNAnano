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
	<24.127697, 34.869595, 34.663040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482269, 34.906277, 34.844513>,  <24.695013, 34.928288, 34.953396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482269, 34.906277, 34.844513>,  <24.127697, 34.869595, 34.663040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.482269, 34.906277, 34.844513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426452, -0.542871, -0.723484,
		0.179943, 0.834794, -0.520327,
		0.886430, 0.091708, 0.453686,
		24.748198, 34.933788, 34.980618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683092, 35.044781, 34.176392>,  <24.127697, 34.869595, 34.663040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683092, 35.044781, 34.176392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882271, 34.859539, 34.469673>,  <25.001778, 34.748394, 34.645641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882271, 34.859539, 34.469673>,  <24.683092, 35.044781, 34.176392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882271, 34.859539, 34.469673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449353, -0.585338, -0.674879,
		0.741710, 0.665520, -0.083370,
		0.497945, -0.463102, 0.733204,
		25.031654, 34.720608, 34.689636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393230, 35.058430, 33.912292>,  <24.683092, 35.044781, 34.176392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393230, 35.058430, 33.912292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361387, 34.792881, 34.209732>,  <25.342281, 34.633553, 34.388195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361387, 34.792881, 34.209732>,  <25.393230, 35.058430, 33.912292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361387, 34.792881, 34.209732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532747, -0.658827, -0.531157,
		0.842522, 0.353866, 0.406123,
		-0.079607, -0.663872, 0.743597,
		25.337505, 34.593719, 34.432812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013014, 34.892193, 34.239479>,  <25.393230, 35.058430, 33.912292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013014, 34.892193, 34.239479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726969, 34.613720, 34.214355>,  <25.555342, 34.446636, 34.199280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726969, 34.613720, 34.214355>,  <26.013014, 34.892193, 34.239479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726969, 34.613720, 34.214355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591590, -0.554905, -0.584895,
		0.372341, -0.455422, 0.808674,
		-0.715111, -0.696183, -0.062809,
		25.512436, 34.404865, 34.195511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197811, 34.280228, 34.598385>,  <26.013014, 34.892193, 34.239479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197811, 34.280228, 34.598385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976696, 34.291420, 34.265244>,  <25.844027, 34.298138, 34.065357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976696, 34.291420, 34.265244>,  <26.197811, 34.280228, 34.598385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976696, 34.291420, 34.265244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793104, -0.289074, -0.536117,
		-0.255758, -0.956897, 0.137604,
		-0.552787, 0.027983, -0.832852,
		25.810860, 34.299816, 34.015388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877359, 34.444641, 34.215958>,  <26.197811, 34.280228, 34.598385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877359, 34.444641, 34.215958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276150, 34.414776, 34.224575>,  <27.515425, 34.396858, 34.229748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276150, 34.414776, 34.224575>,  <26.877359, 34.444641, 34.215958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276150, 34.414776, 34.224575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018968, -0.035071, -0.999205,
		0.075357, 0.996592, -0.033549,
		0.996976, -0.074660, 0.021546,
		27.575243, 34.392376, 34.231037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087732, 35.133049, 33.980820>,  <26.877359, 34.444641, 34.215958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087732, 35.133049, 33.980820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310879, 34.820400, 33.869213>,  <27.444767, 34.632812, 33.802250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310879, 34.820400, 33.869213>,  <27.087732, 35.133049, 33.980820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310879, 34.820400, 33.869213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107804, 0.265101, -0.958175,
		0.822898, 0.564615, 0.063630,
		0.557868, -0.781621, -0.279019,
		27.478239, 34.585915, 33.785507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666407, 35.423351, 33.640579>,  <27.087732, 35.133049, 33.980820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666407, 35.423351, 33.640579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602436, 35.054222, 33.500393>,  <27.564053, 34.832745, 33.416279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602436, 35.054222, 33.500393>,  <27.666407, 35.423351, 33.640579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602436, 35.054222, 33.500393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058337, 0.345584, -0.936573,
		0.985404, -0.170229, -0.001434,
		-0.159927, -0.922819, -0.350470,
		27.554459, 34.777378, 33.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294930, 35.200481, 33.152359>,  <27.666407, 35.423351, 33.640579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294930, 35.200481, 33.152359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991388, 34.956989, 33.059761>,  <27.809263, 34.810894, 33.004200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991388, 34.956989, 33.059761>,  <28.294930, 35.200481, 33.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991388, 34.956989, 33.059761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027344, 0.384926, -0.922542,
		0.650687, -0.693744, -0.308747,
		-0.758853, -0.608729, -0.231497,
		27.763733, 34.774372, 32.990311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426727, 34.918816, 32.494545>,  <28.294930, 35.200481, 33.152359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426727, 34.918816, 32.494545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033524, 34.849754, 32.519474>,  <27.797602, 34.808319, 32.534431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033524, 34.849754, 32.519474>,  <28.426727, 34.918816, 32.494545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033524, 34.849754, 32.519474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129012, 0.408318, -0.903677,
		0.130574, -0.896363, -0.423655,
		-0.983009, -0.172654, 0.062326,
		27.738621, 34.797958, 32.538170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204910, 34.540215, 31.856010>,  <28.426727, 34.918816, 32.494545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204910, 34.540215, 31.856010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870558, 34.698750, 32.007915>,  <27.669945, 34.793869, 32.099060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870558, 34.698750, 32.007915>,  <28.204910, 34.540215, 31.856010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870558, 34.698750, 32.007915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297613, 0.254094, -0.920251,
		-0.461222, -0.882245, -0.094439,
		-0.835883, 0.396334, 0.379761,
		27.619793, 34.817650, 32.121845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754511, 34.366302, 31.398273>,  <28.204910, 34.540215, 31.856010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754511, 34.366302, 31.398273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536594, 34.646477, 31.582706>,  <27.405846, 34.814579, 31.693365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536594, 34.646477, 31.582706>,  <27.754511, 34.366302, 31.398273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536594, 34.646477, 31.582706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461832, 0.208331, -0.862154,
		-0.699940, -0.682635, 0.209986,
		-0.544790, 0.700434, 0.461082,
		27.373158, 34.856606, 31.721031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110645, 34.378822, 31.075943>,  <27.754511, 34.366302, 31.398273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110645, 34.378822, 31.075943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025414, 34.723186, 31.260736>,  <26.974274, 34.929806, 31.371613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025414, 34.723186, 31.260736>,  <27.110645, 34.378822, 31.075943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025414, 34.723186, 31.260736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316440, 0.386548, -0.866283,
		-0.924371, -0.330780, 0.190060,
		-0.213082, 0.860910, 0.461986,
		26.961489, 34.981461, 31.399332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447886, 34.650867, 30.796337>,  <27.110645, 34.378822, 31.075943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447886, 34.650867, 30.796337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651583, 34.967316, 30.931870>,  <26.773802, 35.157185, 31.013189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651583, 34.967316, 30.931870>,  <26.447886, 34.650867, 30.796337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651583, 34.967316, 30.931870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497094, 0.591771, -0.634589,
		-0.702544, 0.154730, 0.694615,
		0.509243, 0.791116, 0.338830,
		26.804356, 35.204651, 31.033518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972961, 35.211185, 30.848167>,  <26.447886, 34.650867, 30.796337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972961, 35.211185, 30.848167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337856, 35.373978, 30.829458>,  <26.556793, 35.471653, 30.818232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337856, 35.373978, 30.829458>,  <25.972961, 35.211185, 30.848167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337856, 35.373978, 30.829458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283143, 0.543869, -0.789960,
		-0.296059, 0.733876, 0.611372,
		0.912238, 0.406981, -0.046775,
		26.611528, 35.496071, 30.815426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846073, 35.939255, 30.809362>,  <25.972961, 35.211185, 30.848167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846073, 35.939255, 30.809362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208288, 35.880466, 30.650166>,  <26.425617, 35.845192, 30.554647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208288, 35.880466, 30.650166>,  <25.846073, 35.939255, 30.809362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208288, 35.880466, 30.650166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207555, 0.664688, -0.717712,
		0.370025, 0.732522, 0.571396,
		0.905540, -0.146975, -0.397990,
		26.479950, 35.836372, 30.530769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057177, 36.633205, 30.712261>,  <25.846073, 35.939255, 30.809362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057177, 36.633205, 30.712261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273973, 36.388405, 30.481890>,  <26.404053, 36.241524, 30.343668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273973, 36.388405, 30.481890>,  <26.057177, 36.633205, 30.712261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273973, 36.388405, 30.481890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365553, 0.445393, -0.817310,
		0.756712, 0.653509, 0.017680,
		0.541994, -0.612006, -0.575927,
		26.436571, 36.204803, 30.309113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370977, 37.066204, 30.246445>,  <26.057177, 36.633205, 30.712261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370977, 37.066204, 30.246445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426487, 36.711571, 30.069942>,  <26.459793, 36.498791, 29.964041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426487, 36.711571, 30.069942>,  <26.370977, 37.066204, 30.246445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426487, 36.711571, 30.069942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143747, 0.422813, -0.894744,
		0.979836, 0.187595, -0.068770,
		0.138773, -0.886588, -0.441253,
		26.468119, 36.445595, 29.937567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843164, 37.165844, 29.724440>,  <26.370977, 37.066204, 30.246445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843164, 37.165844, 29.724440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656754, 36.832920, 29.604387>,  <26.544907, 36.633167, 29.532356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656754, 36.832920, 29.604387>,  <26.843164, 37.165844, 29.724440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656754, 36.832920, 29.604387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118184, 0.394738, -0.911161,
		0.876843, -0.389153, -0.282323,
		-0.466025, -0.832311, -0.300131,
		26.516947, 36.583225, 29.514347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251404, 37.029369, 29.109896>,  <26.843164, 37.165844, 29.724440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251404, 37.029369, 29.109896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906857, 36.827698, 29.085072>,  <26.700129, 36.706696, 29.070177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906857, 36.827698, 29.085072>,  <27.251404, 37.029369, 29.109896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906857, 36.827698, 29.085072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040508, 0.189958, -0.980956,
		0.506363, -0.842451, -0.184047,
		-0.861369, -0.504176, -0.062061,
		26.648445, 36.676445, 29.066454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218885, 36.673107, 28.482727>,  <27.251404, 37.029369, 29.109896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218885, 36.673107, 28.482727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829620, 36.670860, 28.574743>,  <26.596062, 36.669514, 28.629953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829620, 36.670860, 28.574743>,  <27.218885, 36.673107, 28.482727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829620, 36.670860, 28.574743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228232, 0.151030, -0.961821,
		-0.029341, -0.988513, -0.148259,
		-0.973165, -0.005617, 0.230041,
		26.537670, 36.669174, 28.643755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947783, 36.216301, 28.024376>,  <27.218885, 36.673107, 28.482727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947783, 36.216301, 28.024376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654057, 36.454464, 28.154774>,  <26.477821, 36.597363, 28.233013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654057, 36.454464, 28.154774>,  <26.947783, 36.216301, 28.024376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654057, 36.454464, 28.154774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306626, 0.137512, -0.941844,
		-0.605606, -0.791571, 0.081590,
		-0.734317, 0.595404, 0.325994,
		26.433762, 36.633087, 28.252571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355339, 36.074932, 27.518417>,  <26.947783, 36.216301, 28.024376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355339, 36.074932, 27.518417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269207, 36.410030, 27.719141>,  <26.217527, 36.611088, 27.839575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269207, 36.410030, 27.719141>,  <26.355339, 36.074932, 27.518417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269207, 36.410030, 27.719141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455293, 0.368472, -0.810517,
		-0.863910, -0.402999, 0.302077,
		-0.215331, 0.837747, 0.501809,
		26.204607, 36.661354, 27.869684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671038, 36.182297, 27.402540>,  <26.355339, 36.074932, 27.518417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671038, 36.182297, 27.402540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817917, 36.541447, 27.499683>,  <25.906044, 36.756939, 27.557970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817917, 36.541447, 27.499683>,  <25.671038, 36.182297, 27.402540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817917, 36.541447, 27.499683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386823, 0.384859, -0.838004,
		-0.845892, 0.213770, 0.488640,
		0.367198, 0.897878, 0.242858,
		25.928076, 36.810810, 27.572540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130451, 36.732571, 27.321901>,  <25.671038, 36.182297, 27.402540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130451, 36.732571, 27.321901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506767, 36.852196, 27.258053>,  <25.732557, 36.923969, 27.219744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506767, 36.852196, 27.258053>,  <25.130451, 36.732571, 27.321901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506767, 36.852196, 27.258053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244260, 0.271515, -0.930923,
		-0.235063, 0.914791, 0.328487,
		0.940788, 0.299062, -0.159623,
		25.789003, 36.941914, 27.210165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157154, 37.437351, 27.087187>,  <25.130451, 36.732571, 27.321901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157154, 37.437351, 27.087187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493061, 37.271141, 26.947399>,  <25.694605, 37.171417, 26.863525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493061, 37.271141, 26.947399>,  <25.157154, 37.437351, 27.087187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493061, 37.271141, 26.947399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222089, 0.324459, -0.919458,
		0.495445, 0.849745, 0.180187,
		0.839768, -0.415523, -0.349471,
		25.744991, 37.146484, 26.842558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552359, 37.947739, 26.734957>,  <25.157154, 37.437351, 27.087187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552359, 37.947739, 26.734957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674749, 37.586700, 26.613825>,  <25.748184, 37.370079, 26.541145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674749, 37.586700, 26.613825>,  <25.552359, 37.947739, 26.734957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674749, 37.586700, 26.613825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059750, 0.335662, -0.940086,
		0.950162, 0.269551, 0.156635,
		0.305977, -0.902593, -0.302828,
		25.766542, 37.315922, 26.522976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158981, 38.086430, 26.223766>,  <25.552359, 37.947739, 26.734957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158981, 38.086430, 26.223766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978382, 37.737755, 26.147545>,  <25.870022, 37.528549, 26.101812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978382, 37.737755, 26.147545>,  <26.158981, 38.086430, 26.223766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978382, 37.737755, 26.147545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231014, 0.320478, -0.918655,
		0.861848, -0.370750, -0.346067,
		-0.451498, -0.871687, -0.190555,
		25.842932, 37.476250, 26.090378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253069, 38.609047, 25.807951>,  <26.158981, 38.086430, 26.223766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253069, 38.609047, 25.807951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595119, 38.765221, 25.671528>,  <26.800350, 38.858925, 25.589674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595119, 38.765221, 25.671528>,  <26.253069, 38.609047, 25.807951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595119, 38.765221, 25.671528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454399, -0.881178, 0.130565,
		-0.249557, -0.266626, -0.930931,
		0.855127, 0.390431, -0.341058,
		26.851658, 38.882351, 25.569210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612181, 38.173172, 25.330975>,  <26.253069, 38.609047, 25.807951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612181, 38.173172, 25.330975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888138, 38.400219, 25.510689>,  <27.053713, 38.536446, 25.618517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888138, 38.400219, 25.510689>,  <26.612181, 38.173172, 25.330975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888138, 38.400219, 25.510689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605898, -0.792393, 0.070713,
		0.396151, 0.223438, -0.890584,
		0.689893, 0.567616, 0.449288,
		27.095106, 38.570503, 25.645475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250719, 38.211624, 24.949760>,  <26.612181, 38.173172, 25.330975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250719, 38.211624, 24.949760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337292, 38.258747, 25.337427>,  <27.389235, 38.287022, 25.570026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337292, 38.258747, 25.337427>,  <27.250719, 38.211624, 24.949760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337292, 38.258747, 25.337427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555042, -0.831508, -0.022878,
		0.803173, 0.542878, -0.245350,
		0.216430, 0.117804, 0.969165,
		27.402222, 38.294090, 25.628176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050972, 37.956184, 24.956110>,  <27.250719, 38.211624, 24.949760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050972, 37.956184, 24.956110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844082, 37.884525, 25.290865>,  <27.719948, 37.841530, 25.491718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844082, 37.884525, 25.290865>,  <28.050972, 37.956184, 24.956110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844082, 37.884525, 25.290865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426550, -0.901704, 0.070604,
		0.741978, 0.393493, 0.542800,
		-0.517227, -0.179145, 0.836889,
		27.688913, 37.830780, 25.541931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391928, 38.271275, 25.436573>,  <28.050972, 37.956184, 24.956110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391928, 38.271275, 25.436573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742563, 38.394310, 25.584618>,  <28.952944, 38.468132, 25.673445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742563, 38.394310, 25.584618>,  <28.391928, 38.271275, 25.436573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742563, 38.394310, 25.584618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133836, -0.582919, 0.801432,
		0.462256, -0.752060, -0.469814,
		0.876589, 0.307589, 0.370111,
		29.005539, 38.486588, 25.695650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928867, 37.694141, 25.538263>,  <28.391928, 38.271275, 25.436573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928867, 37.694141, 25.538263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928905, 37.989670, 25.807825>,  <28.928928, 38.166985, 25.969563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928905, 37.989670, 25.807825>,  <28.928867, 37.694141, 25.538263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928905, 37.989670, 25.807825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338579, -0.634080, 0.695202,
		0.940938, -0.228238, 0.250087,
		0.000096, 0.738817, 0.673907,
		28.928934, 38.211315, 26.009996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207067, 37.422283, 26.224648>,  <28.928867, 37.694141, 25.538263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207067, 37.422283, 26.224648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936325, 37.712337, 26.275320>,  <28.773880, 37.886372, 26.305723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936325, 37.712337, 26.275320>,  <29.207067, 37.422283, 26.224648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936325, 37.712337, 26.275320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561483, -0.619866, 0.548181,
		0.476030, 0.299910, 0.826710,
		-0.676854, 0.725135, 0.126680,
		28.733269, 37.929878, 26.313324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718704, 37.011028, 26.580957>,  <29.207067, 37.422283, 26.224648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718704, 37.011028, 26.580957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641626, 37.112137, 26.960215>,  <28.595379, 37.172802, 27.187769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641626, 37.112137, 26.960215>,  <28.718704, 37.011028, 26.580957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641626, 37.112137, 26.960215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668387, -0.673622, 0.315423,
		0.718420, 0.694507, -0.039144,
		-0.192695, 0.252770, 0.948144,
		28.583818, 37.187969, 27.244658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298109, 37.075100, 26.969948>,  <28.718704, 37.011028, 26.580957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298109, 37.075100, 26.969948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995667, 36.976933, 27.212624>,  <28.814201, 36.918030, 27.358229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995667, 36.976933, 27.212624>,  <29.298109, 37.075100, 26.969948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995667, 36.976933, 27.212624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589485, -0.658072, 0.468453,
		0.284277, 0.711835, 0.642244,
		-0.756104, -0.245423, 0.606691,
		28.768835, 36.903305, 27.394630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573750, 37.167015, 27.783131>,  <29.298109, 37.075100, 26.969948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573750, 37.167015, 27.783131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253309, 36.928242, 27.765680>,  <29.061045, 36.784977, 27.755211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253309, 36.928242, 27.765680>,  <29.573750, 37.167015, 27.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253309, 36.928242, 27.765680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481908, -0.686524, 0.544472,
		-0.354964, 0.415155, 0.837644,
		-0.801102, -0.596936, -0.043625,
		29.012980, 36.749161, 27.752592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599493, 36.948666, 28.536041>,  <29.573750, 37.167015, 27.783131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599493, 36.948666, 28.536041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350809, 36.701664, 28.343304>,  <29.201599, 36.553463, 28.227661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350809, 36.701664, 28.343304>,  <29.599493, 36.948666, 28.536041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350809, 36.701664, 28.343304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239633, -0.735644, 0.633565,
		-0.745691, 0.278427, 0.605329,
		-0.621709, -0.617500, -0.481843,
		29.164297, 36.516415, 28.198751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157604, 36.627773, 28.969681>,  <29.599493, 36.948666, 28.536041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157604, 36.627773, 28.969681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149137, 36.375179, 28.659643>,  <29.144058, 36.223621, 28.473619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149137, 36.375179, 28.659643>,  <29.157604, 36.627773, 28.969681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149137, 36.375179, 28.659643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179460, -0.765077, 0.618426,
		-0.983538, -0.126009, 0.129520,
		-0.021166, -0.631489, -0.775096,
		29.142788, 36.185734, 28.427114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713083, 36.066284, 29.182993>,  <29.157604, 36.627773, 28.969681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713083, 36.066284, 29.182993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936890, 35.944172, 28.874775>,  <29.071175, 35.870903, 28.689844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936890, 35.944172, 28.874775>,  <28.713083, 36.066284, 29.182993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936890, 35.944172, 28.874775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140820, -0.881161, 0.451359,
		-0.816767, -0.361052, -0.450036,
		0.559518, -0.305281, -0.770547,
		29.104746, 35.852589, 28.643610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462729, 35.448708, 28.939426>,  <28.713083, 36.066284, 29.182993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462729, 35.448708, 28.939426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834038, 35.431240, 28.791693>,  <29.056824, 35.420761, 28.703053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834038, 35.431240, 28.791693>,  <28.462729, 35.448708, 28.939426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834038, 35.431240, 28.791693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083291, -0.943446, 0.320893,
		-0.362458, -0.328638, -0.872136,
		0.928271, -0.043669, -0.369332,
		29.112518, 35.418140, 28.680893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493294, 34.807766, 28.778856>,  <28.462729, 35.448708, 28.939426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493294, 34.807766, 28.778856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881170, 34.904984, 28.788874>,  <29.113895, 34.963314, 28.794884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881170, 34.904984, 28.788874>,  <28.493294, 34.807766, 28.778856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881170, 34.904984, 28.788874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190930, -0.817713, 0.543039,
		0.152462, -0.521798, -0.839334,
		0.969691, 0.243047, 0.025044,
		29.172077, 34.977898, 28.796387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782387, 34.194344, 28.535172>,  <28.493294, 34.807766, 28.778856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782387, 34.194344, 28.535172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058983, 34.411762, 28.725498>,  <29.224941, 34.542213, 28.839695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058983, 34.411762, 28.725498>,  <28.782387, 34.194344, 28.535172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058983, 34.411762, 28.725498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220894, -0.786224, 0.577111,
		0.687785, -0.293961, -0.663732,
		0.691490, 0.543543, 0.475819,
		29.266430, 34.574825, 28.868244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572350, 33.790543, 28.667833>,  <28.782387, 34.194344, 28.535172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572350, 33.790543, 28.667833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523521, 34.080032, 28.939516>,  <29.494225, 34.253727, 29.102526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523521, 34.080032, 28.939516>,  <29.572350, 33.790543, 28.667833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523521, 34.080032, 28.939516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351164, -0.608566, 0.711570,
		0.928322, 0.325375, -0.179858,
		-0.122072, 0.723726, 0.679205,
		29.486900, 34.297150, 29.143278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232378, 33.836395, 29.057066>,  <29.572350, 33.790543, 28.667833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232378, 33.836395, 29.057066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943722, 33.966953, 29.301264>,  <29.770529, 34.045288, 29.447783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943722, 33.966953, 29.301264>,  <30.232378, 33.836395, 29.057066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943722, 33.966953, 29.301264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384336, -0.544582, 0.745464,
		0.575780, 0.772591, 0.267546,
		-0.721639, 0.326395, 0.610494,
		29.727230, 34.064873, 29.484411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511320, 33.739155, 29.762423>,  <30.232378, 33.836395, 29.057066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511320, 33.739155, 29.762423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172003, 33.901306, 29.898697>,  <29.968412, 33.998596, 29.980461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172003, 33.901306, 29.898697>,  <30.511320, 33.739155, 29.762423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172003, 33.901306, 29.898697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135256, -0.456158, 0.879560,
		0.511959, 0.792205, 0.332127,
		-0.848294, 0.405377, 0.340685,
		29.917515, 34.022919, 30.000902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640343, 34.072968, 30.339882>,  <30.511320, 33.739155, 29.762423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640343, 34.072968, 30.339882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251801, 33.983051, 30.370691>,  <30.018675, 33.929100, 30.389177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251801, 33.983051, 30.370691>,  <30.640343, 34.072968, 30.339882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251801, 33.983051, 30.370691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140593, -0.282364, 0.948949,
		-0.191569, 0.932598, 0.305880,
		-0.971357, -0.224794, 0.077024,
		29.960394, 33.915615, 30.393799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517879, 34.279045, 31.037884>,  <30.640343, 34.072968, 30.339882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517879, 34.279045, 31.037884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221405, 34.057922, 30.885544>,  <30.043520, 33.925247, 30.794140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221405, 34.057922, 30.885544>,  <30.517879, 34.279045, 31.037884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221405, 34.057922, 30.885544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098884, -0.471238, 0.876445,
		-0.663977, 0.687269, 0.294611,
		-0.741186, -0.552807, -0.380851,
		29.999050, 33.892078, 30.771288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959345, 34.402626, 31.408733>,  <30.517879, 34.279045, 31.037884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959345, 34.402626, 31.408733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868906, 34.050575, 31.241760>,  <29.814642, 33.839344, 31.141577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868906, 34.050575, 31.241760>,  <29.959345, 34.402626, 31.408733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868906, 34.050575, 31.241760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081281, -0.409989, 0.908461,
		-0.970707, 0.239332, 0.021161,
		-0.226099, -0.880130, -0.417433,
		29.801077, 33.786537, 31.116531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328001, 34.202400, 31.719509>,  <29.959345, 34.402626, 31.408733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328001, 34.202400, 31.719509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501019, 33.863979, 31.594866>,  <29.604828, 33.660927, 31.520079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501019, 33.863979, 31.594866>,  <29.328001, 34.202400, 31.719509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501019, 33.863979, 31.594866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038203, -0.362502, 0.931200,
		-0.900804, -0.390879, -0.189120,
		0.432543, -0.846053, -0.311611,
		29.630781, 33.610165, 31.501383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000834, 33.714996, 32.099052>,  <29.328001, 34.202400, 31.719509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000834, 33.714996, 32.099052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341413, 33.543186, 31.978693>,  <29.545761, 33.440102, 31.906477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341413, 33.543186, 31.978693>,  <29.000834, 33.714996, 32.099052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341413, 33.543186, 31.978693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110210, -0.414401, 0.903397,
		-0.512728, -0.802358, -0.305503,
		0.851448, -0.429528, -0.300903,
		29.596848, 33.414330, 31.888422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833628, 33.128677, 32.283245>,  <29.000834, 33.714996, 32.099052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833628, 33.128677, 32.283245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231718, 33.114716, 32.246788>,  <29.470572, 33.106339, 32.224915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231718, 33.114716, 32.246788>,  <28.833628, 33.128677, 32.283245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231718, 33.114716, 32.246788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052477, -0.596047, 0.801233,
		-0.082290, -0.802191, -0.591370,
		0.995226, -0.034900, -0.091146,
		29.530285, 33.104244, 32.219444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034359, 32.422771, 32.317181>,  <28.833628, 33.128677, 32.283245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034359, 32.422771, 32.317181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361506, 32.632732, 32.411480>,  <29.557793, 32.758709, 32.468060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361506, 32.632732, 32.411480>,  <29.034359, 32.422771, 32.317181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361506, 32.632732, 32.411480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055750, -0.335488, 0.940393,
		0.572703, -0.782258, -0.245120,
		0.817865, 0.524900, 0.235746,
		29.606865, 32.790203, 32.482204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512571, 31.993092, 32.632259>,  <29.034359, 32.422771, 32.317181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512571, 31.993092, 32.632259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640903, 32.351349, 32.755474>,  <29.717903, 32.566303, 32.829403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640903, 32.351349, 32.755474>,  <29.512571, 31.993092, 32.632259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640903, 32.351349, 32.755474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012767, -0.321114, 0.946955,
		0.947051, -0.307744, -0.091588,
		0.320830, 0.895645, 0.308040,
		29.737152, 32.620041, 32.847885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149942, 31.903011, 32.985416>,  <29.512571, 31.993092, 32.632259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149942, 31.903011, 32.985416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041231, 32.248024, 33.156143>,  <29.976006, 32.455032, 33.258579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041231, 32.248024, 33.156143>,  <30.149942, 31.903011, 32.985416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041231, 32.248024, 33.156143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295470, -0.347307, 0.889986,
		0.915879, 0.367990, -0.160462,
		-0.271777, 0.862532, 0.426821,
		29.959698, 32.506783, 33.284191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520256, 31.955883, 33.592842>,  <30.149942, 31.903011, 32.985416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520256, 31.955883, 33.592842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251850, 32.242085, 33.670601>,  <30.090807, 32.413807, 33.717258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251850, 32.242085, 33.670601>,  <30.520256, 31.955883, 33.592842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251850, 32.242085, 33.670601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191685, -0.085868, 0.977693,
		0.716238, 0.693310, -0.079533,
		-0.671014, 0.715506, 0.194399,
		30.050547, 32.456738, 33.728920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184437, 32.159714, 33.881008>,  <30.520256, 31.955883, 33.592842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184437, 32.159714, 33.881008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011131, 32.398945, 33.611317>,  <30.907148, 32.542484, 33.449501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011131, 32.398945, 33.611317>,  <31.184437, 32.159714, 33.881008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011131, 32.398945, 33.611317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554566, -0.412788, -0.722539,
		-0.710450, -0.686953, -0.152829,
		-0.433265, 0.598082, -0.674225,
		30.881151, 32.578369, 33.409050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276073, 31.661406, 33.352440>,  <31.184437, 32.159714, 33.881008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276073, 31.661406, 33.352440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165628, 32.031940, 33.249947>,  <31.099361, 32.254261, 33.188450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165628, 32.031940, 33.249947>,  <31.276073, 31.661406, 33.352440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165628, 32.031940, 33.249947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448261, -0.111713, -0.886895,
		-0.850190, -0.359745, -0.384397,
		-0.276114, 0.926339, -0.256237,
		31.082794, 32.309841, 33.173077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466978, 30.951941, 33.321869>,  <31.276073, 31.661406, 33.352440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466978, 30.951941, 33.321869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703793, 31.270262, 33.372761>,  <31.845881, 31.461254, 33.403297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703793, 31.270262, 33.372761>,  <31.466978, 30.951941, 33.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703793, 31.270262, 33.372761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098461, -0.228116, 0.968642,
		0.799874, -0.560944, -0.213409,
		0.592036, 0.795804, 0.127233,
		31.881403, 31.509003, 33.410931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123943, 30.893829, 33.592319>,  <31.466978, 30.951941, 33.321869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123943, 30.893829, 33.592319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072399, 31.258324, 33.748802>,  <32.041473, 31.477020, 33.842693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072399, 31.258324, 33.748802>,  <32.123943, 30.893829, 33.592319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072399, 31.258324, 33.748802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070198, -0.385125, 0.920191,
		0.989175, 0.146034, -0.014341,
		-0.128857, 0.911237, 0.391207,
		32.033741, 31.531694, 33.866165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735603, 31.271442, 33.970535>,  <32.123943, 30.893829, 33.592319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735603, 31.271442, 33.970535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359734, 31.295954, 34.105148>,  <32.134212, 31.310661, 34.185917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359734, 31.295954, 34.105148>,  <32.735603, 31.271442, 33.970535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359734, 31.295954, 34.105148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270148, -0.470537, 0.840009,
		0.209825, 0.880250, 0.425598,
		-0.939677, 0.061280, 0.336528,
		32.077831, 31.314339, 34.206108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522972, 31.756327, 34.555779>,  <32.735603, 31.271442, 33.970535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522972, 31.756327, 34.555779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366627, 31.388622, 34.537086>,  <32.272820, 31.167999, 34.525871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366627, 31.388622, 34.537086>,  <32.522972, 31.756327, 34.555779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366627, 31.388622, 34.537086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391453, -0.211966, 0.895452,
		-0.833059, 0.331710, 0.442698,
		-0.390867, -0.919260, -0.046731,
		32.249367, 31.112844, 34.523067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091194, 31.614595, 35.185078>,  <32.522972, 31.756327, 34.555779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091194, 31.614595, 35.185078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251114, 31.278519, 35.038525>,  <32.347065, 31.076872, 34.950592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251114, 31.278519, 35.038525>,  <32.091194, 31.614595, 35.185078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251114, 31.278519, 35.038525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521299, -0.120357, 0.844844,
		-0.753929, -0.528763, 0.389874,
		0.399798, -0.840193, -0.366384,
		32.371052, 31.026461, 34.928608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970585, 30.948614, 35.566006>,  <32.091194, 31.614595, 35.185078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970585, 30.948614, 35.566006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327480, 30.933647, 35.386002>,  <32.541618, 30.924667, 35.278000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327480, 30.933647, 35.386002>,  <31.970585, 30.948614, 35.566006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327480, 30.933647, 35.386002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449066, -0.031076, 0.892958,
		-0.047413, -0.998816, -0.010916,
		0.892239, -0.037436, -0.450008,
		32.595154, 30.922421, 35.250999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297108, 30.438921, 35.883621>,  <31.970585, 30.948614, 35.566006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297108, 30.438921, 35.883621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598660, 30.636503, 35.710335>,  <32.779591, 30.755053, 35.606365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598660, 30.636503, 35.710335>,  <32.297108, 30.438921, 35.883621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598660, 30.636503, 35.710335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542504, -0.096050, 0.834544,
		0.370619, -0.864164, -0.340384,
		0.753877, 0.493958, -0.433214,
		32.824821, 30.784691, 35.580372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864555, 30.197268, 36.166531>,  <32.297108, 30.438921, 35.883621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864555, 30.197268, 36.166531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014118, 30.535469, 36.014046>,  <33.103855, 30.738390, 35.922554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014118, 30.535469, 36.014046>,  <32.864555, 30.197268, 36.166531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014118, 30.535469, 36.014046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753505, -0.037278, 0.656384,
		0.540765, -0.532666, -0.651030,
		0.373903, 0.845504, -0.381208,
		33.126289, 30.789120, 35.899685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567520, 30.121351, 36.042492>,  <32.864555, 30.197268, 36.166531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567520, 30.121351, 36.042492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529930, 30.515499, 36.099369>,  <33.507374, 30.751987, 36.133495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529930, 30.515499, 36.099369>,  <33.567520, 30.121351, 36.042492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529930, 30.515499, 36.099369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765403, -0.019823, 0.643245,
		0.636652, 0.169285, -0.752341,
		-0.093978, 0.985368, 0.142191,
		33.501736, 30.811110, 36.142025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253014, 30.289791, 36.440189>,  <33.567520, 30.121351, 36.042492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253014, 30.289791, 36.440189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039944, 30.627279, 36.466717>,  <33.912102, 30.829773, 36.482632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039944, 30.627279, 36.466717>,  <34.253014, 30.289791, 36.440189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039944, 30.627279, 36.466717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599368, 0.320760, 0.733397,
		0.597511, 0.430407, -0.676558,
		-0.532672, 0.843720, 0.066314,
		33.880142, 30.880396, 36.486610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746735, 30.832342, 36.428860>,  <34.253014, 30.289791, 36.440189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746735, 30.832342, 36.428860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429977, 30.935556, 36.650246>,  <34.239922, 30.997486, 36.783077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429977, 30.935556, 36.650246>,  <34.746735, 30.832342, 36.428860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429977, 30.935556, 36.650246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607972, 0.248175, 0.754174,
		0.057249, 0.933716, -0.353407,
		-0.791891, 0.258037, 0.553466,
		34.192410, 31.012968, 36.816284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995110, 31.467531, 36.745228>,  <34.746735, 30.832342, 36.428860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995110, 31.467531, 36.745228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661835, 31.385525, 36.950661>,  <34.461872, 31.336321, 37.073921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661835, 31.385525, 36.950661>,  <34.995110, 31.467531, 36.745228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661835, 31.385525, 36.950661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375021, 0.473057, 0.797231,
		-0.406402, 0.856846, -0.317258,
		-0.833185, -0.205018, 0.513586,
		34.411880, 31.324020, 37.104736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731503, 32.156898, 37.011635>,  <34.995110, 31.467531, 36.745228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731503, 32.156898, 37.011635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622009, 31.832956, 37.219173>,  <34.556313, 31.638592, 37.343697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622009, 31.832956, 37.219173>,  <34.731503, 32.156898, 37.011635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622009, 31.832956, 37.219173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427378, 0.380854, 0.819938,
		-0.861636, 0.446192, 0.241860,
		-0.273736, -0.809854, 0.518850,
		34.539886, 31.590000, 37.374828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438175, 32.352249, 37.683826>,  <34.731503, 32.156898, 37.011635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438175, 32.352249, 37.683826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506840, 31.962624, 37.742786>,  <34.548038, 31.728848, 37.778164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506840, 31.962624, 37.742786>,  <34.438175, 32.352249, 37.683826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506840, 31.962624, 37.742786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330157, 0.197850, 0.922958,
		-0.928185, -0.109773, 0.355559,
		0.171664, -0.974066, 0.147399,
		34.558338, 31.670404, 37.787006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234936, 32.302650, 38.361500>,  <34.438175, 32.352249, 37.683826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234936, 32.302650, 38.361500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464375, 31.983709, 38.286427>,  <34.602036, 31.792345, 38.241383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464375, 31.983709, 38.286427>,  <34.234936, 32.302650, 38.361500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464375, 31.983709, 38.286427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456971, 0.121323, 0.881168,
		-0.679829, -0.591197, 0.433956,
		0.573593, -0.797350, -0.187681,
		34.636452, 31.744505, 38.230122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198311, 31.940479, 38.892204>,  <34.234936, 32.302650, 38.361500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198311, 31.940479, 38.892204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512665, 31.762157, 38.720787>,  <34.701275, 31.655165, 38.617935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512665, 31.762157, 38.720787>,  <34.198311, 31.940479, 38.892204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512665, 31.762157, 38.720787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381350, -0.196145, 0.903382,
		-0.486788, -0.873376, 0.015861,
		0.785881, -0.445804, -0.428543,
		34.748428, 31.628416, 38.592224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338493, 31.256453, 39.281357>,  <34.198311, 31.940479, 38.892204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338493, 31.256453, 39.281357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678974, 31.344120, 39.090599>,  <34.883263, 31.396721, 38.976143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678974, 31.344120, 39.090599>,  <34.338493, 31.256453, 39.281357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678974, 31.344120, 39.090599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524138, -0.307828, 0.794054,
		0.027231, -0.925855, -0.376898,
		0.851198, 0.219169, -0.476893,
		34.934334, 31.409870, 38.947533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725754, 30.762938, 39.405052>,  <34.338493, 31.256453, 39.281357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725754, 30.762938, 39.405052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017365, 31.008415, 39.283791>,  <35.192329, 31.155703, 39.211033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017365, 31.008415, 39.283791>,  <34.725754, 30.762938, 39.405052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017365, 31.008415, 39.283791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499583, -0.174299, 0.848549,
		0.467911, -0.770064, -0.433660,
		0.729024, 0.613695, -0.303154,
		35.236073, 31.192524, 39.192844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431515, 30.328613, 39.283794>,  <34.725754, 30.762938, 39.405052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431515, 30.328613, 39.283794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489845, 30.715906, 39.365044>,  <35.524845, 30.948282, 39.413792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489845, 30.715906, 39.365044>,  <35.431515, 30.328613, 39.283794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489845, 30.715906, 39.365044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595286, -0.249863, 0.763677,
		0.790170, 0.009548, -0.612813,
		0.145828, 0.968234, 0.203118,
		35.533592, 31.006376, 39.425980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153652, 30.363968, 39.455204>,  <35.431515, 30.328613, 39.283794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153652, 30.363968, 39.455204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983795, 30.703146, 39.582119>,  <35.881882, 30.906652, 39.658268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983795, 30.703146, 39.582119>,  <36.153652, 30.363968, 39.455204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983795, 30.703146, 39.582119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413603, -0.130051, 0.901121,
		0.805363, 0.513885, -0.295486,
		-0.424645, 0.847944, 0.317283,
		35.856403, 30.957529, 39.677303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731846, 30.809893, 39.725933>,  <36.153652, 30.363968, 39.455204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731846, 30.809893, 39.725933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383347, 30.930294, 39.881020>,  <36.174248, 31.002535, 39.974072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383347, 30.930294, 39.881020>,  <36.731846, 30.809893, 39.725933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383347, 30.930294, 39.881020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370731, -0.114148, 0.921699,
		0.321691, 0.946767, -0.012139,
		-0.871248, 0.301002, 0.387716,
		36.121971, 31.020596, 39.997334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920994, 31.261435, 40.253830>,  <36.731846, 30.809893, 39.725933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920994, 31.261435, 40.253830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547482, 31.136896, 40.324398>,  <36.323376, 31.062172, 40.366737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547482, 31.136896, 40.324398>,  <36.920994, 31.261435, 40.253830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547482, 31.136896, 40.324398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215099, -0.094345, 0.972024,
		-0.285994, 0.945601, 0.155068,
		-0.933777, -0.311348, 0.176416,
		36.267349, 31.043491, 40.377323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754314, 31.613739, 40.852093>,  <36.920994, 31.261435, 40.253830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754314, 31.613739, 40.852093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489025, 31.314837, 40.835400>,  <36.329849, 31.135494, 40.825386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489025, 31.314837, 40.835400>,  <36.754314, 31.613739, 40.852093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489025, 31.314837, 40.835400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136338, -0.175454, 0.975002,
		-0.735897, 0.640957, 0.218245,
		-0.663226, -0.747255, -0.041729,
		36.290058, 31.090660, 40.822880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252888, 31.750931, 41.418125>,  <36.754314, 31.613739, 40.852093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252888, 31.750931, 41.418125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185001, 31.371206, 41.312294>,  <36.144268, 31.143372, 41.248795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185001, 31.371206, 41.312294>,  <36.252888, 31.750931, 41.418125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185001, 31.371206, 41.312294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272286, -0.212853, 0.938378,
		-0.947131, 0.231298, -0.222361,
		-0.169715, -0.949313, -0.264579,
		36.134087, 31.086412, 41.232922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659954, 31.579086, 41.783932>,  <36.252888, 31.750931, 41.418125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659954, 31.579086, 41.783932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813942, 31.223272, 41.685524>,  <35.906334, 31.009785, 41.626480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813942, 31.223272, 41.685524>,  <35.659954, 31.579086, 41.783932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813942, 31.223272, 41.685524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027986, -0.255191, 0.966486,
		-0.922504, -0.378956, -0.073347,
		0.384973, -0.889534, -0.246020,
		35.929432, 30.956411, 41.611717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314072, 31.175011, 42.273743>,  <35.659954, 31.579086, 41.783932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314072, 31.175011, 42.273743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623135, 30.975103, 42.117161>,  <35.808571, 30.855160, 42.023212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623135, 30.975103, 42.117161>,  <35.314072, 31.175011, 42.273743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623135, 30.975103, 42.117161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183207, -0.414856, 0.891252,
		-0.607816, -0.760347, -0.228979,
		0.772654, -0.499766, -0.391458,
		35.854931, 30.825174, 41.999725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187817, 30.486689, 42.407455>,  <35.314072, 31.175011, 42.273743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187817, 30.486689, 42.407455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581982, 30.512196, 42.344353>,  <35.818481, 30.527500, 42.306492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581982, 30.512196, 42.344353>,  <35.187817, 30.486689, 42.407455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581982, 30.512196, 42.344353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170116, -0.347968, 0.921943,
		0.003897, -0.935335, -0.353742,
		0.985416, 0.063770, -0.157760,
		35.877605, 30.531326, 42.297024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400063, 29.965292, 42.706341>,  <35.187817, 30.486689, 42.407455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400063, 29.965292, 42.706341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756908, 30.140909, 42.663696>,  <35.971016, 30.246281, 42.638111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756908, 30.140909, 42.663696>,  <35.400063, 29.965292, 42.706341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756908, 30.140909, 42.663696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279749, -0.351497, 0.893415,
		0.354776, -0.826855, -0.436399,
		0.892118, 0.439045, -0.106609,
		36.024544, 30.272623, 42.631714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885468, 29.441935, 42.596848>,  <35.400063, 29.965292, 42.706341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885468, 29.441935, 42.596848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066006, 29.752501, 42.772789>,  <36.174328, 29.938839, 42.878353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066006, 29.752501, 42.772789>,  <35.885468, 29.441935, 42.596848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066006, 29.752501, 42.772789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420365, -0.619790, 0.662687,
		0.787134, -0.114204, -0.606117,
		0.451347, 0.776413, 0.439850,
		36.201408, 29.985424, 42.904743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202984, 29.188105, 43.160858>,  <35.885468, 29.441935, 42.596848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202984, 29.188105, 43.160858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305386, 29.569435, 43.224903>,  <36.366825, 29.798233, 43.263329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305386, 29.569435, 43.224903>,  <36.202984, 29.188105, 43.160858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305386, 29.569435, 43.224903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396796, -0.254664, 0.881873,
		0.881485, -0.162230, -0.443470,
		0.256002, 0.953325, 0.160110,
		36.382187, 29.855433, 43.272938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930763, 29.196217, 43.453777>,  <36.202984, 29.188105, 43.160858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930763, 29.196217, 43.453777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738716, 29.533028, 43.552151>,  <36.623489, 29.735115, 43.611176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738716, 29.533028, 43.552151>,  <36.930763, 29.196217, 43.453777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738716, 29.533028, 43.552151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354630, -0.070110, 0.932374,
		0.802326, 0.534860, -0.264947,
		-0.480114, 0.842027, 0.245929,
		36.594681, 29.785635, 43.625931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387337, 29.646107, 43.713181>,  <36.930763, 29.196217, 43.453777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387337, 29.646107, 43.713181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032566, 29.767698, 43.852299>,  <36.819706, 29.840654, 43.935768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032566, 29.767698, 43.852299>,  <37.387337, 29.646107, 43.713181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032566, 29.767698, 43.852299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353695, -0.037355, 0.934615,
		0.297097, 0.951945, -0.074385,
		-0.886923, 0.303981, 0.347796,
		36.766487, 29.858892, 43.956638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444191, 30.268278, 44.270401>,  <37.387337, 29.646107, 43.713181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444191, 30.268278, 44.270401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096615, 30.077942, 44.324833>,  <36.888069, 29.963741, 44.357491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096615, 30.077942, 44.324833>,  <37.444191, 30.268278, 44.270401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096615, 30.077942, 44.324833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175985, -0.040099, 0.983576,
		-0.462567, 0.878618, 0.118585,
		-0.868942, -0.475839, 0.136075,
		36.835934, 29.935190, 44.365654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213978, 30.457300, 44.920937>,  <37.444191, 30.268278, 44.270401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213978, 30.457300, 44.920937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992092, 30.140394, 44.819267>,  <36.858959, 29.950251, 44.758266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992092, 30.140394, 44.819267>,  <37.213978, 30.457300, 44.920937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992092, 30.140394, 44.819267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155204, -0.398645, 0.903877,
		-0.817435, 0.461949, 0.344098,
		-0.554718, -0.792266, -0.254170,
		36.825676, 29.902714, 44.743015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651596, 30.379816, 45.382576>,  <37.213978, 30.457300, 44.920937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651596, 30.379816, 45.382576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624313, 29.999262, 45.262432>,  <36.607944, 29.770929, 45.190346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624313, 29.999262, 45.262432>,  <36.651596, 30.379816, 45.382576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624313, 29.999262, 45.262432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160417, -0.307603, 0.937895,
		-0.984690, 0.015790, 0.173599,
		-0.068209, -0.951384, -0.300360,
		36.603851, 29.713846, 45.172325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210072, 30.023752, 45.791817>,  <36.651596, 30.379816, 45.382576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210072, 30.023752, 45.791817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458832, 29.747892, 45.643425>,  <36.608086, 29.582376, 45.554390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458832, 29.747892, 45.643425>,  <36.210072, 30.023752, 45.791817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458832, 29.747892, 45.643425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313687, -0.214677, 0.924940,
		-0.717526, -0.691590, 0.082827,
		0.621898, -0.689650, -0.370980,
		36.645401, 29.540997, 45.532131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083740, 29.341591, 46.076813>,  <36.210072, 30.023752, 45.791817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083740, 29.341591, 46.076813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465324, 29.346504, 45.956944>,  <36.694275, 29.349453, 45.885021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465324, 29.346504, 45.956944>,  <36.083740, 29.341591, 46.076813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465324, 29.346504, 45.956944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288728, -0.308120, 0.906476,
		-0.081200, -0.951268, -0.297482,
		0.953961, 0.012285, -0.299677,
		36.751514, 29.350189, 45.867039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258373, 28.791294, 46.380199>,  <36.083740, 29.341591, 46.076813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258373, 28.791294, 46.380199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614651, 28.952765, 46.296577>,  <36.828419, 29.049646, 46.246407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614651, 28.952765, 46.296577>,  <36.258373, 28.791294, 46.380199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614651, 28.952765, 46.296577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389279, -0.439798, 0.809345,
		0.234773, -0.802261, -0.548870,
		0.890698, 0.403676, -0.209051,
		36.881859, 29.073868, 46.233864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778591, 28.303671, 46.561573>,  <36.258373, 28.791294, 46.380199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778591, 28.303671, 46.561573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981552, 28.648125, 46.574173>,  <37.103329, 28.854797, 46.581734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981552, 28.648125, 46.574173>,  <36.778591, 28.303671, 46.561573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981552, 28.648125, 46.574173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362694, -0.246581, 0.898694,
		0.781662, -0.444575, -0.437444,
		0.507403, 0.861133, 0.031498,
		37.133774, 28.906466, 46.583622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427769, 28.143120, 46.916672>,  <36.778591, 28.303671, 46.561573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427769, 28.143120, 46.916672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417751, 28.542976, 46.920567>,  <37.411743, 28.782890, 46.922905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417751, 28.542976, 46.920567>,  <37.427769, 28.143120, 46.916672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417751, 28.542976, 46.920567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612869, 0.007654, 0.790148,
		0.789788, 0.025753, -0.612839,
		-0.025039, 0.999639, 0.009739,
		37.410240, 28.842869, 46.923489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094479, 28.301445, 47.012718>,  <37.427769, 28.143120, 46.916672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094479, 28.301445, 47.012718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934208, 28.643793, 47.143528>,  <37.838047, 28.849203, 47.222012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934208, 28.643793, 47.143528>,  <38.094479, 28.301445, 47.012718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934208, 28.643793, 47.143528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307328, -0.210700, 0.927984,
		0.863139, 0.472323, -0.178611,
		-0.400675, 0.855872, 0.327022,
		37.814007, 28.900555, 47.241634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586388, 28.714659, 47.361122>,  <38.094479, 28.301445, 47.012718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586388, 28.714659, 47.361122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219765, 28.802532, 47.494781>,  <37.999790, 28.855257, 47.574978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219765, 28.802532, 47.494781>,  <38.586388, 28.714659, 47.361122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219765, 28.802532, 47.494781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274598, -0.261701, 0.925261,
		0.290712, 0.939815, 0.179540,
		-0.916560, 0.219683, 0.334151,
		37.944798, 28.868437, 47.595028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710220, 29.064886, 47.996414>,  <38.586388, 28.714659, 47.361122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710220, 29.064886, 47.996414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322269, 28.970871, 48.021988>,  <38.089497, 28.914461, 48.037331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322269, 28.970871, 48.021988>,  <38.710220, 29.064886, 47.996414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322269, 28.970871, 48.021988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152252, -0.380108, 0.912325,
		-0.190132, 0.894580, 0.404445,
		-0.969881, -0.235040, 0.063931,
		38.031303, 28.900358, 48.041168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503212, 29.326393, 48.557888>,  <38.710220, 29.064886, 47.996414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503212, 29.326393, 48.557888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233616, 29.035137, 48.508003>,  <38.071857, 28.860384, 48.478073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233616, 29.035137, 48.508003>,  <38.503212, 29.326393, 48.557888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233616, 29.035137, 48.508003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212257, -0.352575, 0.911393,
		-0.707592, 0.587797, 0.392184,
		-0.673989, -0.728138, -0.124716,
		38.031418, 28.816696, 48.470589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019569, 29.355309, 49.090256>,  <38.503212, 29.326393, 48.557888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019569, 29.355309, 49.090256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979362, 28.975147, 48.972527>,  <37.955238, 28.747049, 48.901890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979362, 28.975147, 48.972527>,  <38.019569, 29.355309, 49.090256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979362, 28.975147, 48.972527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041768, -0.291530, 0.955649,
		-0.994058, 0.108354, -0.010392,
		-0.100519, -0.950405, -0.294324,
		37.949207, 28.690025, 48.884228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492310, 28.912529, 49.576839>,  <38.019569, 29.355309, 49.090256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492310, 28.912529, 49.576839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751045, 28.663984, 49.399971>,  <37.906284, 28.514858, 49.293850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751045, 28.663984, 49.399971>,  <37.492310, 28.912529, 49.576839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751045, 28.663984, 49.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145948, -0.468224, 0.871473,
		-0.748535, -0.628233, -0.212177,
		0.646834, -0.621361, -0.442172,
		37.945095, 28.477575, 49.267319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363045, 28.115383, 49.791519>,  <37.492310, 28.912529, 49.576839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363045, 28.115383, 49.791519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724922, 28.265917, 49.711624>,  <37.942051, 28.356237, 49.663689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724922, 28.265917, 49.711624>,  <37.363045, 28.115383, 49.791519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724922, 28.265917, 49.711624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326788, -0.312136, 0.892065,
		0.273370, -0.872320, -0.405371,
		0.904698, 0.376335, -0.199735,
		37.996330, 28.378817, 49.651703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567917, 27.760490, 50.472477>,  <37.363045, 28.115383, 49.791519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567917, 27.760490, 50.472477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852398, 27.567453, 50.268009>,  <38.023087, 27.451632, 50.145329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852398, 27.567453, 50.268009>,  <37.567917, 27.760490, 50.472477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852398, 27.567453, 50.268009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044224, -0.756413, 0.652597,
		-0.701594, -0.441523, -0.559306,
		0.711203, -0.482593, -0.511169,
		38.065758, 27.422676, 50.114658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452782, 27.085039, 50.741779>,  <37.567917, 27.760490, 50.472477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452782, 27.085039, 50.741779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783257, 27.032190, 50.522705>,  <37.981541, 27.000481, 50.391262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783257, 27.032190, 50.522705>,  <37.452782, 27.085039, 50.741779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783257, 27.032190, 50.522705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028805, -0.960938, 0.275262,
		-0.562658, -0.243195, -0.790109,
		0.826188, -0.132120, -0.547685,
		38.031113, 26.992554, 50.358398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432076, 26.631083, 50.155926>,  <37.452782, 27.085039, 50.741779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432076, 26.631083, 50.155926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803345, 26.628866, 50.304768>,  <38.026108, 26.627537, 50.394073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803345, 26.628866, 50.304768>,  <37.432076, 26.631083, 50.155926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803345, 26.628866, 50.304768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058202, -0.989747, 0.130439,
		0.367568, -0.142728, -0.918979,
		0.928174, -0.005541, 0.372106,
		38.081799, 26.627203, 50.416401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872192, 26.255873, 49.866444>,  <37.432076, 26.631083, 50.155926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872192, 26.255873, 49.866444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068054, 26.235119, 50.214592>,  <38.185570, 26.222668, 50.423481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068054, 26.235119, 50.214592>,  <37.872192, 26.255873, 49.866444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068054, 26.235119, 50.214592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085672, -0.990535, -0.107243,
		0.867700, 0.127078, -0.480570,
		0.489650, -0.051883, 0.870374,
		38.214951, 26.219553, 50.475704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494316, 25.879095, 49.722260>,  <37.872192, 26.255873, 49.866444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494316, 25.879095, 49.722260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388767, 25.850910, 50.107052>,  <38.325436, 25.834000, 50.337929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388767, 25.850910, 50.107052>,  <38.494316, 25.879095, 49.722260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388767, 25.850910, 50.107052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113137, -0.988183, -0.103417,
		0.957899, -0.136125, 0.252783,
		-0.263874, -0.070464, 0.961980,
		38.309605, 25.829771, 50.395645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174709, 26.353495, 49.827724>,  <38.494316, 25.879095, 49.722260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174709, 26.353495, 49.827724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446995, 26.614025, 49.961830>,  <39.610367, 26.770344, 50.042294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446995, 26.614025, 49.961830>,  <39.174709, 26.353495, 49.827724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446995, 26.614025, 49.961830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141934, 0.331723, -0.932638,
		-0.718666, 0.682447, 0.133364,
		0.680716, 0.651326, 0.335261,
		39.651211, 26.809423, 50.062408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066273, 26.919369, 49.491222>,  <39.174709, 26.353495, 49.827724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066273, 26.919369, 49.491222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453636, 26.954739, 49.584488>,  <39.686054, 26.975960, 49.640446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453636, 26.954739, 49.584488>,  <39.066273, 26.919369, 49.491222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453636, 26.954739, 49.584488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175961, 0.420236, -0.890191,
		-0.176697, 0.903096, 0.391401,
		0.968409, 0.088423, 0.233164,
		39.744160, 26.981266, 49.654438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294613, 27.610449, 49.513050>,  <39.066273, 26.919369, 49.491222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294613, 27.610449, 49.513050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600281, 27.372257, 49.413895>,  <39.783680, 27.229342, 49.354401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600281, 27.372257, 49.413895>,  <39.294613, 27.610449, 49.513050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600281, 27.372257, 49.413895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204278, 0.587957, -0.782673,
		0.611813, 0.547457, 0.570942,
		0.764169, -0.595481, -0.247887,
		39.829533, 27.193613, 49.339527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811417, 28.112751, 49.250038>,  <39.294613, 27.610449, 49.513050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811417, 28.112751, 49.250038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845890, 27.733299, 49.128269>,  <39.866573, 27.505629, 49.055210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845890, 27.733299, 49.128269>,  <39.811417, 28.112751, 49.250038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845890, 27.733299, 49.128269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115765, 0.313022, -0.942664,
		0.989531, 0.046000, 0.136796,
		0.086183, -0.948631, -0.304420,
		39.871746, 27.448709, 49.036942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428307, 27.966297, 48.831745>,  <39.811417, 28.112751, 49.250038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428307, 27.966297, 48.831745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155521, 27.706451, 48.697327>,  <39.991852, 27.550545, 48.616676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155521, 27.706451, 48.697327>,  <40.428307, 27.966297, 48.831745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155521, 27.706451, 48.697327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377710, 0.080646, -0.922405,
		0.626308, -0.755975, 0.190367,
		-0.681963, -0.649613, -0.336049,
		39.950932, 27.511568, 48.596512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756382, 27.409828, 48.364059>,  <40.428307, 27.966297, 48.831745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756382, 27.409828, 48.364059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373890, 27.494143, 48.282883>,  <40.144394, 27.544731, 48.234177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373890, 27.494143, 48.282883>,  <40.756382, 27.409828, 48.364059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373890, 27.494143, 48.282883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241692, 0.178037, -0.953880,
		-0.164934, -0.961182, -0.221190,
		-0.956233, 0.210787, -0.202946,
		40.087021, 27.557379, 48.222000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624619, 26.914280, 47.828709>,  <40.756382, 27.409828, 48.364059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624619, 26.914280, 47.828709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341198, 27.192616, 47.781792>,  <40.171146, 27.359617, 47.753639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341198, 27.192616, 47.781792>,  <40.624619, 26.914280, 47.828709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341198, 27.192616, 47.781792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279892, 0.124545, -0.951918,
		-0.647773, -0.707317, -0.283007,
		-0.708556, 0.695838, -0.117296,
		40.128632, 27.401367, 47.746601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192390, 26.733727, 47.253582>,  <40.624619, 26.914280, 47.828709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192390, 26.733727, 47.253582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145889, 27.130062, 47.281059>,  <40.117989, 27.367865, 47.297546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145889, 27.130062, 47.281059>,  <40.192390, 26.733727, 47.253582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145889, 27.130062, 47.281059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212964, 0.092420, -0.972679,
		-0.970119, -0.098450, -0.221757,
		-0.116256, 0.990841, 0.068692,
		40.111012, 27.427315, 47.301666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753262, 26.942305, 46.746830>,  <40.192390, 26.733727, 47.253582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753262, 26.942305, 46.746830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951504, 27.282148, 46.818981>,  <40.070450, 27.486055, 46.862270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951504, 27.282148, 46.818981>,  <39.753262, 26.942305, 46.746830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951504, 27.282148, 46.818981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167167, 0.110488, -0.979718,
		-0.852308, 0.515708, -0.087268,
		0.495607, 0.849610, 0.180379,
		40.100185, 27.537031, 46.873096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668613, 27.391109, 46.133614>,  <39.753262, 26.942305, 46.746830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668613, 27.391109, 46.133614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982971, 27.546545, 46.326015>,  <40.171585, 27.639807, 46.441456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982971, 27.546545, 46.326015>,  <39.668613, 27.391109, 46.133614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982971, 27.546545, 46.326015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467554, 0.135639, -0.873496,
		-0.404674, 0.911373, -0.075088,
		0.785896, 0.388589, 0.481006,
		40.218739, 27.663122, 46.470318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816673, 28.046249, 45.831703>,  <39.668613, 27.391109, 46.133614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816673, 28.046249, 45.831703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144630, 27.940676, 46.034924>,  <40.341404, 27.877331, 46.156857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144630, 27.940676, 46.034924>,  <39.816673, 28.046249, 45.831703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144630, 27.940676, 46.034924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553310, 0.137385, -0.821568,
		0.147042, 0.954706, 0.258679,
		0.819895, -0.263935, 0.508046,
		40.390598, 27.861496, 46.187336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381851, 28.563681, 45.708462>,  <39.816673, 28.046249, 45.831703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381851, 28.563681, 45.708462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593601, 28.252617, 45.844116>,  <40.720650, 28.065979, 45.925510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593601, 28.252617, 45.844116>,  <40.381851, 28.563681, 45.708462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593601, 28.252617, 45.844116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559107, 0.019124, -0.828875,
		0.638096, 0.628397, 0.444918,
		0.529371, -0.777658, 0.339138,
		40.752411, 28.019320, 45.945858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122684, 28.759209, 45.575634>,  <40.381851, 28.563681, 45.708462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122684, 28.759209, 45.575634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102654, 28.362209, 45.620243>,  <41.090637, 28.124010, 45.647007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102654, 28.362209, 45.620243>,  <41.122684, 28.759209, 45.575634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102654, 28.362209, 45.620243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469255, -0.121947, -0.874602,
		0.881642, 0.008535, 0.471842,
		-0.050075, -0.992500, 0.111518,
		41.087631, 28.064459, 45.653698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774796, 28.529856, 45.272675>,  <41.122684, 28.759209, 45.575634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774796, 28.529856, 45.272675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510185, 28.229925, 45.277546>,  <41.351421, 28.049967, 45.280468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510185, 28.229925, 45.277546>,  <41.774796, 28.529856, 45.272675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510185, 28.229925, 45.277546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173156, -0.168527, -0.970369,
		0.729662, -0.639811, 0.241322,
		-0.661522, -0.749827, 0.012181,
		41.311729, 28.004976, 45.281200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090664, 27.987261, 44.909370>,  <41.774796, 28.529856, 45.272675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090664, 27.987261, 44.909370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705307, 27.880758, 44.896862>,  <41.474091, 27.816856, 44.889355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705307, 27.880758, 44.896862>,  <42.090664, 27.987261, 44.909370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705307, 27.880758, 44.896862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085619, -0.195027, -0.977054,
		0.254048, -0.943966, 0.210684,
		-0.963395, -0.266257, -0.031275,
		41.416290, 27.800880, 44.887478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077705, 27.409189, 44.442509>,  <42.090664, 27.987261, 44.909370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077705, 27.409189, 44.442509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704002, 27.551821, 44.443768>,  <41.479778, 27.637400, 44.444523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704002, 27.551821, 44.443768>,  <42.077705, 27.409189, 44.442509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704002, 27.551821, 44.443768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026785, -0.061367, -0.997756,
		-0.355585, -0.932248, 0.066884,
		-0.934260, 0.356578, 0.003149,
		41.423725, 27.658794, 44.444714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607132, 26.982351, 44.004169>,  <42.077705, 27.409189, 44.442509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607132, 26.982351, 44.004169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411892, 27.331190, 44.018009>,  <41.294746, 27.540493, 44.026314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411892, 27.331190, 44.018009>,  <41.607132, 26.982351, 44.004169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411892, 27.331190, 44.018009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203773, -0.075324, -0.976117,
		-0.848664, -0.483497, 0.214476,
		-0.488104, 0.872099, 0.034599,
		41.265461, 27.592819, 44.028389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067024, 26.892460, 43.464764>,  <41.607132, 26.982351, 44.004169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067024, 26.892460, 43.464764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107029, 27.285271, 43.528793>,  <41.131031, 27.520956, 43.567211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107029, 27.285271, 43.528793>,  <41.067024, 26.892460, 43.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107029, 27.285271, 43.528793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301226, 0.183215, -0.935786,
		-0.948293, 0.045374, 0.314136,
		0.100015, 0.982025, 0.160073,
		41.137032, 27.579878, 43.576817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438198, 27.024776, 43.279922>,  <41.067024, 26.892460, 43.464764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438198, 27.024776, 43.279922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678474, 27.343090, 43.249207>,  <40.822639, 27.534079, 43.230778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678474, 27.343090, 43.249207>,  <40.438198, 27.024776, 43.279922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678474, 27.343090, 43.249207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435287, 0.244976, -0.866321,
		-0.670592, 0.553819, 0.493549,
		0.600693, 0.795783, -0.076792,
		40.858681, 27.581825, 43.226170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043987, 27.669373, 42.996506>,  <40.438198, 27.024776, 43.279922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043987, 27.669373, 42.996506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424980, 27.763523, 42.919174>,  <40.653576, 27.820013, 42.872776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424980, 27.763523, 42.919174>,  <40.043987, 27.669373, 42.996506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424980, 27.763523, 42.919174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256643, 0.278294, -0.925574,
		-0.164055, 0.931209, 0.325477,
		0.952481, 0.235377, -0.193333,
		40.710724, 27.834137, 42.861176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026794, 28.168116, 42.419979>,  <40.043987, 27.669373, 42.996506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026794, 28.168116, 42.419979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407948, 28.047022, 42.412243>,  <40.636639, 27.974365, 42.407600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407948, 28.047022, 42.412243>,  <40.026794, 28.168116, 42.419979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407948, 28.047022, 42.412243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041003, -0.065349, -0.997020,
		0.300569, 0.950831, -0.074683,
		0.952878, -0.302736, -0.019345,
		40.693810, 27.956202, 42.406441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446732, 28.644337, 41.906639>,  <40.026794, 28.168116, 42.419979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446732, 28.644337, 41.906639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664673, 28.309614, 41.928169>,  <40.795437, 28.108782, 41.941090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664673, 28.309614, 41.928169>,  <40.446732, 28.644337, 41.906639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664673, 28.309614, 41.928169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103712, -0.130949, -0.985949,
		0.832096, 0.531611, -0.158134,
		0.544849, -0.836805, 0.053828,
		40.828129, 28.058573, 41.944317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881451, 28.720911, 41.372803>,  <40.446732, 28.644337, 41.906639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881451, 28.720911, 41.372803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873802, 28.332558, 41.468315>,  <40.869213, 28.099545, 41.525623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873802, 28.332558, 41.468315>,  <40.881451, 28.720911, 41.372803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873802, 28.332558, 41.468315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054580, -0.237456, -0.969864,
		0.998326, -0.031574, -0.048452,
		-0.019117, -0.970885, 0.238781,
		40.868069, 28.041292, 41.539951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114395, 28.396532, 40.833408>,  <40.881451, 28.720911, 41.372803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114395, 28.396532, 40.833408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908840, 28.093378, 40.994175>,  <40.785507, 27.911486, 41.090633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908840, 28.093378, 40.994175>,  <41.114395, 28.396532, 40.833408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908840, 28.093378, 40.994175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265523, -0.304979, -0.914596,
		0.815733, -0.576713, -0.044512,
		-0.513884, -0.757885, 0.401912,
		40.754677, 27.866013, 41.114750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261772, 27.874905, 40.361008>,  <41.114395, 28.396532, 40.833408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261772, 27.874905, 40.361008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934845, 27.768129, 40.565258>,  <40.738689, 27.704063, 40.687809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934845, 27.768129, 40.565258>,  <41.261772, 27.874905, 40.361008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934845, 27.768129, 40.565258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443513, -0.274257, -0.853276,
		0.367813, -0.923866, 0.105765,
		-0.817319, -0.266938, 0.510621,
		40.689648, 27.688047, 40.718445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014671, 27.221710, 40.035477>,  <41.261772, 27.874905, 40.361008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014671, 27.221710, 40.035477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697811, 27.316395, 40.260498>,  <40.507694, 27.373205, 40.395512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697811, 27.316395, 40.260498>,  <41.014671, 27.221710, 40.035477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697811, 27.316395, 40.260498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600653, -0.465835, -0.649780,
		0.108248, -0.852623, 0.511191,
		-0.792148, 0.236711, 0.562556,
		40.460167, 27.387409, 40.429264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630314, 26.640940, 40.075485>,  <41.014671, 27.221710, 40.035477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630314, 26.640940, 40.075485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396793, 26.960924, 40.130970>,  <40.256680, 27.152914, 40.164261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396793, 26.960924, 40.130970>,  <40.630314, 26.640940, 40.075485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396793, 26.960924, 40.130970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628660, -0.337287, -0.700731,
		-0.513772, -0.496288, 0.699812,
		-0.583801, 0.799960, 0.138708,
		40.221653, 27.200912, 40.172581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813732, 26.359861, 40.030640>,  <40.630314, 26.640940, 40.075485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813732, 26.359861, 40.030640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830849, 26.754309, 39.966461>,  <39.841118, 26.990976, 39.927952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830849, 26.754309, 39.966461>,  <39.813732, 26.359861, 40.030640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830849, 26.754309, 39.966461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511527, -0.116328, -0.851356,
		-0.858201, 0.118501, 0.499448,
		0.042787, 0.986116, -0.160450,
		39.843685, 27.050144, 39.918327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112778, 26.556740, 39.959076>,  <39.813732, 26.359861, 40.030640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112778, 26.556740, 39.959076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316730, 26.851160, 39.780975>,  <39.439102, 27.027813, 39.674114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316730, 26.851160, 39.780975>,  <39.112778, 26.556740, 39.959076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316730, 26.851160, 39.780975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656915, -0.001022, -0.753964,
		-0.555412, 0.676925, 0.483002,
		0.509884, 0.736052, -0.445249,
		39.469696, 27.071976, 39.647400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673382, 27.146963, 39.971645>,  <39.112778, 26.556740, 39.959076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673382, 27.146963, 39.971645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897335, 27.203329, 39.645046>,  <39.031708, 27.237148, 39.449085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897335, 27.203329, 39.645046>,  <38.673382, 27.146963, 39.971645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897335, 27.203329, 39.645046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827279, 0.150033, -0.541387,
		0.046212, 0.978587, 0.200578,
		0.559887, 0.140915, -0.816498,
		39.065300, 27.245604, 39.400097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195290, 27.549347, 39.617783>,  <38.673382, 27.146963, 39.971645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195290, 27.549347, 39.617783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478527, 27.449860, 39.353436>,  <38.648468, 27.390167, 39.194828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478527, 27.449860, 39.353436>,  <38.195290, 27.549347, 39.617783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478527, 27.449860, 39.353436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647599, 0.144310, -0.748191,
		0.281457, 0.957766, -0.058884,
		0.708094, -0.248716, -0.660865,
		38.690956, 27.375244, 39.155174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296120, 28.127512, 39.129745>,  <38.195290, 27.549347, 39.617783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296120, 28.127512, 39.129745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410030, 27.787479, 38.952541>,  <38.478378, 27.583460, 38.846218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410030, 27.787479, 38.952541>,  <38.296120, 28.127512, 39.129745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410030, 27.787479, 38.952541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581566, 0.214169, -0.784801,
		0.762026, 0.481135, -0.433389,
		0.284777, -0.850083, -0.443014,
		38.495464, 27.532455, 38.819637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450291, 28.263855, 38.427418>,  <38.296120, 28.127512, 39.129745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450291, 28.263855, 38.427418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372627, 27.872406, 38.454544>,  <38.326031, 27.637537, 38.470821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372627, 27.872406, 38.454544>,  <38.450291, 28.263855, 38.427418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372627, 27.872406, 38.454544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572259, 0.056840, -0.818100,
		0.796757, -0.197651, -0.571062,
		-0.194158, -0.978623, 0.067820,
		38.314381, 27.578819, 38.474892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701672, 28.048672, 37.753792>,  <38.450291, 28.263855, 38.427418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701672, 28.048672, 37.753792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446838, 27.775702, 37.897141>,  <38.293938, 27.611919, 37.983150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446838, 27.775702, 37.897141>,  <38.701672, 28.048672, 37.753792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446838, 27.775702, 37.897141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489603, -0.000824, -0.871946,
		0.595333, -0.730955, -0.333592,
		-0.637078, -0.682425, 0.358368,
		38.255714, 27.570974, 38.004650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604042, 27.728914, 37.112411>,  <38.701672, 28.048672, 37.753792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604042, 27.728914, 37.112411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317276, 27.629276, 37.372868>,  <38.145218, 27.569492, 37.529140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317276, 27.629276, 37.372868>,  <38.604042, 27.728914, 37.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317276, 27.629276, 37.372868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651100, -0.094645, -0.753068,
		0.249215, -0.963843, -0.094335,
		-0.716911, -0.249098, 0.651145,
		38.102203, 27.554546, 37.568211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255585, 27.197744, 36.728394>,  <38.604042, 27.728914, 37.112411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255585, 27.197744, 36.728394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006279, 27.288572, 37.027721>,  <37.856693, 27.343069, 37.207317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006279, 27.288572, 37.027721>,  <38.255585, 27.197744, 36.728394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006279, 27.288572, 37.027721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709760, 0.237470, -0.663211,
		-0.328298, -0.944483, 0.013157,
		-0.623267, 0.227069, 0.748317,
		37.819298, 27.356693, 37.252216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582542, 26.862082, 36.554741>,  <38.255585, 27.197744, 36.728394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582542, 26.862082, 36.554741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515896, 27.175755, 36.793839>,  <37.475910, 27.363958, 36.937298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515896, 27.175755, 36.793839>,  <37.582542, 26.862082, 36.554741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515896, 27.175755, 36.793839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529083, 0.440451, -0.725309,
		-0.832052, -0.437102, 0.341513,
		-0.166615, 0.784184, 0.597742,
		37.465912, 27.411009, 36.973160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780521, 27.034214, 36.432125>,  <37.582542, 26.862082, 36.554741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780521, 27.034214, 36.432125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955276, 27.342272, 36.618031>,  <37.060131, 27.527107, 36.729572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955276, 27.342272, 36.618031>,  <36.780521, 27.034214, 36.432125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955276, 27.342272, 36.618031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421130, 0.631679, -0.650869,
		-0.794843, 0.088634, 0.600307,
		0.436891, 0.770146, 0.464759,
		37.086342, 27.573317, 36.757458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240295, 27.367153, 36.696930>,  <36.780521, 27.034214, 36.432125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240295, 27.367153, 36.696930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536160, 27.635035, 36.670376>,  <36.713676, 27.795763, 36.654442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536160, 27.635035, 36.670376>,  <36.240295, 27.367153, 36.696930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536160, 27.635035, 36.670376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601708, 0.613914, -0.510937,
		-0.301421, 0.417863, 0.857051,
		0.739657, 0.669702, -0.066385,
		36.758057, 27.835945, 36.650459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997452, 28.135790, 36.934925>,  <36.240295, 27.367153, 36.696930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997452, 28.135790, 36.934925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317253, 28.192789, 36.701519>,  <36.509132, 28.226988, 36.561474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317253, 28.192789, 36.701519>,  <35.997452, 28.135790, 36.934925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317253, 28.192789, 36.701519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530273, 0.623763, -0.574221,
		0.282152, 0.768514, 0.574262,
		0.799500, 0.142498, -0.583518,
		36.557102, 28.235538, 36.526463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051559, 28.826614, 36.879391>,  <35.997452, 28.135790, 36.934925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051559, 28.826614, 36.879391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223885, 28.666683, 36.555775>,  <36.327278, 28.570724, 36.361607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223885, 28.666683, 36.555775>,  <36.051559, 28.826614, 36.879391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223885, 28.666683, 36.555775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385486, 0.729059, -0.565573,
		0.815968, 0.555526, 0.159957,
		0.430809, -0.399829, -0.809037,
		36.353127, 28.546734, 36.313065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352108, 29.318104, 36.515869>,  <36.051559, 28.826614, 36.879391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352108, 29.318104, 36.515869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331699, 29.056936, 36.213585>,  <36.319454, 28.900236, 36.032215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331699, 29.056936, 36.213585>,  <36.352108, 29.318104, 36.515869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331699, 29.056936, 36.213585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303686, 0.731004, -0.611071,
		0.951405, 0.198320, -0.235579,
		-0.051021, -0.652918, -0.755708,
		36.316395, 28.861061, 35.986874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781227, 29.510485, 36.060848>,  <36.352108, 29.318104, 36.515869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781227, 29.510485, 36.060848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524315, 29.278584, 35.860306>,  <36.370167, 29.139442, 35.739983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524315, 29.278584, 35.860306>,  <36.781227, 29.510485, 36.060848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524315, 29.278584, 35.860306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161504, 0.741794, -0.650890,
		0.749270, -0.337075, -0.570066,
		-0.642270, -0.579761, -0.501365,
		36.331631, 29.104656, 35.709900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936470, 29.717117, 35.415844>,  <36.781227, 29.510485, 36.060848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936470, 29.717117, 35.415844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580853, 29.538927, 35.373585>,  <36.367481, 29.432013, 35.348228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580853, 29.538927, 35.373585>,  <36.936470, 29.717117, 35.415844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580853, 29.538927, 35.373585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244608, 0.657233, -0.712890,
		0.387008, -0.607946, -0.693273,
		-0.889040, -0.445474, -0.105646,
		36.314140, 29.405285, 35.341892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348454, 30.237556, 35.662056>,  <36.936470, 29.717117, 35.415844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348454, 30.237556, 35.662056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426861, 30.561432, 35.440796>,  <37.473907, 30.755758, 35.308041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426861, 30.561432, 35.440796>,  <37.348454, 30.237556, 35.662056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426861, 30.561432, 35.440796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754031, 0.236173, 0.612911,
		0.626908, -0.537238, -0.564236,
		0.196021, 0.809690, -0.553152,
		37.485668, 30.804338, 35.274849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090157, 30.391846, 35.425877>,  <37.348454, 30.237556, 35.662056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090157, 30.391846, 35.425877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942852, 30.763552, 35.437561>,  <37.854469, 30.986576, 35.444572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942852, 30.763552, 35.437561>,  <38.090157, 30.391846, 35.425877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942852, 30.763552, 35.437561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816677, 0.308306, 0.487838,
		0.444324, 0.203506, -0.872446,
		-0.368258, 0.929265, 0.029211,
		37.832375, 31.042332, 35.446323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598930, 30.836613, 35.063435>,  <38.090157, 30.391846, 35.425877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598930, 30.836613, 35.063435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390903, 31.077726, 35.305485>,  <38.266087, 31.222395, 35.450714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390903, 31.077726, 35.305485>,  <38.598930, 30.836613, 35.063435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390903, 31.077726, 35.305485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825632, 0.173326, 0.536927,
		0.218766, 0.778853, -0.587818,
		-0.520071, 0.602782, 0.605128,
		38.234882, 31.258560, 35.487022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053055, 31.434893, 35.268543>,  <38.598930, 30.836613, 35.063435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053055, 31.434893, 35.268543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762859, 31.460991, 35.542599>,  <38.588741, 31.476650, 35.707031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762859, 31.460991, 35.542599>,  <39.053055, 31.434893, 35.268543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762859, 31.460991, 35.542599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661265, 0.342040, 0.667635,
		-0.190783, 0.937417, -0.291291,
		-0.725486, 0.065247, 0.685137,
		38.545212, 31.480566, 35.748138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073166, 32.091236, 35.439545>,  <39.053055, 31.434893, 35.268543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073166, 32.091236, 35.439545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932377, 31.873789, 35.744331>,  <38.847904, 31.743320, 35.927204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932377, 31.873789, 35.744331>,  <39.073166, 32.091236, 35.439545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932377, 31.873789, 35.744331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651287, 0.442434, 0.616503,
		-0.672263, 0.713253, 0.198325,
		-0.351977, -0.543619, 0.761965,
		38.826782, 31.710703, 35.972919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232723, 32.464363, 36.068508>,  <39.073166, 32.091236, 35.439545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232723, 32.464363, 36.068508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129036, 32.113468, 36.230133>,  <39.066822, 31.902931, 36.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129036, 32.113468, 36.230133>,  <39.232723, 32.464363, 36.068508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129036, 32.113468, 36.230133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647176, 0.152777, 0.746875,
		-0.716916, 0.455101, 0.528123,
		-0.259219, -0.877236, 0.404059,
		39.051270, 31.850298, 36.351349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131771, 32.507652, 36.680256>,  <39.232723, 32.464363, 36.068508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131771, 32.507652, 36.680256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209991, 32.115715, 36.696568>,  <39.256924, 31.880552, 36.706356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209991, 32.115715, 36.696568>,  <39.131771, 32.507652, 36.680256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209991, 32.115715, 36.696568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471648, 0.130424, 0.872088,
		-0.859830, -0.151307, 0.487646,
		0.195554, -0.979845, 0.040779,
		39.268658, 31.821762, 36.708801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076508, 32.368584, 37.420471>,  <39.131771, 32.507652, 36.680256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076508, 32.368584, 37.420471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234650, 32.038765, 37.258575>,  <39.329536, 31.840874, 37.161438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234650, 32.038765, 37.258575>,  <39.076508, 32.368584, 37.420471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234650, 32.038765, 37.258575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404160, -0.239524, 0.882770,
		-0.824830, -0.512589, 0.238552,
		0.395360, -0.824549, -0.404735,
		39.353256, 31.791401, 37.137154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940968, 31.856543, 37.957569>,  <39.076508, 32.368584, 37.420471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940968, 31.856543, 37.957569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238190, 31.760592, 37.707664>,  <39.416523, 31.703020, 37.557720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238190, 31.760592, 37.707664>,  <38.940968, 31.856543, 37.957569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238190, 31.760592, 37.707664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560329, -0.287448, 0.776791,
		-0.365921, -0.927271, -0.079180,
		0.743057, -0.239877, -0.624760,
		39.461105, 31.688627, 37.520237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111053, 31.172503, 38.067013>,  <38.940968, 31.856543, 37.957569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111053, 31.172503, 38.067013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440853, 31.339294, 37.914001>,  <39.638733, 31.439369, 37.822197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440853, 31.339294, 37.914001>,  <39.111053, 31.172503, 38.067013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440853, 31.339294, 37.914001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535666, -0.357271, 0.765128,
		0.182379, -0.835753, -0.517933,
		0.824500, 0.416982, -0.382526,
		39.688202, 31.464390, 37.799244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654999, 30.621193, 38.041134>,  <39.111053, 31.172503, 38.067013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654999, 30.621193, 38.041134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849304, 30.969982, 38.016808>,  <39.965885, 31.179256, 38.002213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849304, 30.969982, 38.016808>,  <39.654999, 30.621193, 38.041134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849304, 30.969982, 38.016808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677430, -0.331585, 0.656612,
		0.552383, -0.360155, -0.751772,
		0.485759, 0.871974, -0.060818,
		39.995033, 31.231575, 37.998562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365162, 30.421410, 38.001762>,  <39.654999, 30.621193, 38.041134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365162, 30.421410, 38.001762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390888, 30.804548, 38.113758>,  <40.406322, 31.034431, 38.180954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390888, 30.804548, 38.113758>,  <40.365162, 30.421410, 38.001762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390888, 30.804548, 38.113758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644192, -0.254129, 0.721412,
		0.762155, 0.133972, -0.633380,
		0.064311, 0.957846, 0.279990,
		40.410183, 31.091902, 38.197754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103199, 30.693439, 38.052170>,  <40.365162, 30.421410, 38.001762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103199, 30.693439, 38.052170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889637, 30.928856, 38.295010>,  <40.761501, 31.070107, 38.440712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889637, 30.928856, 38.295010>,  <41.103199, 30.693439, 38.052170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889637, 30.928856, 38.295010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658671, -0.160719, 0.735066,
		0.530189, 0.792331, -0.301848,
		-0.533902, 0.588542, 0.607097,
		40.729465, 31.105419, 38.477139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630222, 31.130192, 38.418438>,  <41.103199, 30.693439, 38.052170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630222, 31.130192, 38.418438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311535, 31.100899, 38.658398>,  <41.120323, 31.083323, 38.802372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311535, 31.100899, 38.658398>,  <41.630222, 31.130192, 38.418438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311535, 31.100899, 38.658398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600620, 0.014218, 0.799408,
		-0.067072, 0.997214, 0.032657,
		-0.796716, -0.073232, 0.599900,
		41.072521, 31.078930, 38.838367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844063, 31.488592, 38.924831>,  <41.630222, 31.130192, 38.418438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844063, 31.488592, 38.924831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515766, 31.332424, 39.091667>,  <41.318790, 31.238724, 39.191769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515766, 31.332424, 39.091667>,  <41.844063, 31.488592, 38.924831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515766, 31.332424, 39.091667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479529, -0.073927, 0.874407,
		-0.310552, 0.917664, 0.247893,
		-0.820737, -0.390421, 0.417088,
		41.269547, 31.215298, 39.216793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738567, 31.858450, 39.488049>,  <41.844063, 31.488592, 38.924831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738567, 31.858450, 39.488049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530476, 31.526537, 39.568871>,  <41.405621, 31.327389, 39.617363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530476, 31.526537, 39.568871>,  <41.738567, 31.858450, 39.488049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530476, 31.526537, 39.568871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635668, -0.218217, 0.740478,
		-0.570343, 0.513656, 0.640989,
		-0.520225, -0.829782, 0.202056,
		41.374409, 31.277603, 39.629486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662231, 31.789299, 40.272778>,  <41.738567, 31.858450, 39.488049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662231, 31.789299, 40.272778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554634, 31.422394, 40.155289>,  <41.490078, 31.202251, 40.084793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554634, 31.422394, 40.155289>,  <41.662231, 31.789299, 40.272778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554634, 31.422394, 40.155289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396145, -0.383341, 0.834337,
		-0.877903, 0.108072, 0.466484,
		-0.268991, -0.917262, -0.293724,
		41.473938, 31.147215, 40.067173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245094, 31.493046, 40.853851>,  <41.662231, 31.789299, 40.272778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245094, 31.493046, 40.853851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410969, 31.202290, 40.634884>,  <41.510494, 31.027836, 40.503506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410969, 31.202290, 40.634884>,  <41.245094, 31.493046, 40.853851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410969, 31.202290, 40.634884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208699, -0.509570, 0.834736,
		-0.885707, -0.460402, -0.059613,
		0.414690, -0.726890, -0.547415,
		41.535378, 30.984222, 40.470661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897533, 30.848581, 40.959648>,  <41.245094, 31.493046, 40.853851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897533, 30.848581, 40.959648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255169, 30.737406, 40.819160>,  <41.469749, 30.670700, 40.734867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255169, 30.737406, 40.819160>,  <40.897533, 30.848581, 40.959648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255169, 30.737406, 40.819160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167585, -0.519602, 0.837812,
		-0.415352, -0.807939, -0.417993,
		0.894091, -0.277937, -0.351216,
		41.523396, 30.654024, 40.713795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942108, 30.140085, 41.067478>,  <40.897533, 30.848581, 40.959648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942108, 30.140085, 41.067478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320869, 30.261110, 41.023983>,  <41.548126, 30.333725, 40.997887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320869, 30.261110, 41.023983>,  <40.942108, 30.140085, 41.067478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320869, 30.261110, 41.023983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238788, -0.435356, 0.868012,
		0.215289, -0.847892, -0.484490,
		0.946906, 0.302564, -0.108739,
		41.604942, 30.351879, 40.991360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342896, 29.672346, 41.395996>,  <40.942108, 30.140085, 41.067478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342896, 29.672346, 41.395996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657944, 29.916012, 41.358967>,  <41.846973, 30.062212, 41.336750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657944, 29.916012, 41.358967>,  <41.342896, 29.672346, 41.395996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657944, 29.916012, 41.358967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326311, -0.284941, 0.901294,
		0.522661, -0.740084, -0.423203,
		0.787621, 0.609167, -0.092570,
		41.894230, 30.098763, 41.331196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001640, 29.338865, 41.495518>,  <41.342896, 29.672346, 41.395996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001640, 29.338865, 41.495518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068104, 29.723349, 41.583584>,  <42.107983, 29.954039, 41.636421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068104, 29.723349, 41.583584>,  <42.001640, 29.338865, 41.495518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068104, 29.723349, 41.583584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391096, -0.269193, 0.880102,
		0.905226, -0.060132, -0.420653,
		0.166159, 0.961207, 0.220163,
		42.117950, 30.011711, 41.649632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647774, 29.333889, 41.849430>,  <42.001640, 29.338865, 41.495518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647774, 29.333889, 41.849430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456200, 29.672523, 41.942307>,  <42.341255, 29.875704, 41.998032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456200, 29.672523, 41.942307>,  <42.647774, 29.333889, 41.849430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456200, 29.672523, 41.942307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156646, -0.177833, 0.971513,
		0.863759, 0.501667, -0.047443,
		-0.478939, 0.846585, 0.232189,
		42.312519, 29.926498, 42.011963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080669, 29.694574, 42.242619>,  <42.647774, 29.333889, 41.849430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080669, 29.694574, 42.242619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731377, 29.856396, 42.351280>,  <42.521801, 29.953489, 42.416477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731377, 29.856396, 42.351280>,  <43.080669, 29.694574, 42.242619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731377, 29.856396, 42.351280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215162, -0.180082, 0.959831,
		0.437224, 0.896608, 0.070209,
		-0.873236, 0.404555, 0.271652,
		42.469406, 29.977762, 42.432777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284149, 30.056042, 42.869282>,  <43.080669, 29.694574, 42.242619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284149, 30.056042, 42.869282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885029, 30.046755, 42.894135>,  <42.645557, 30.041183, 42.909046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885029, 30.046755, 42.894135>,  <43.284149, 30.056042, 42.869282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885029, 30.046755, 42.894135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062640, -0.021809, 0.997798,
		-0.021809, 0.999493, 0.023215,
		-0.997798, -0.023215, 0.062132,
		42.585690, 30.039791, 42.912773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139824, 30.513758, 43.385971>,  <43.284149, 30.056042, 42.869282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139824, 30.513758, 43.385971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797260, 30.307531, 43.396931>,  <42.591721, 30.183796, 43.403507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797260, 30.307531, 43.396931>,  <43.139824, 30.513758, 43.385971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797260, 30.307531, 43.396931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023722, 0.092311, 0.995448,
		-0.515749, 0.851863, -0.091286,
		-0.856411, -0.515566, 0.027401,
		42.540337, 30.152861, 43.405151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695183, 30.783215, 43.888893>,  <43.139824, 30.513758, 43.385971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695183, 30.783215, 43.888893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560764, 30.410015, 43.837372>,  <42.480114, 30.186096, 43.806461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560764, 30.410015, 43.837372>,  <42.695183, 30.783215, 43.888893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560764, 30.410015, 43.837372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118491, -0.093785, 0.988516,
		-0.934363, 0.347445, -0.079036,
		-0.336043, -0.932998, -0.128799,
		42.459949, 30.130116, 43.798733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981930, 30.798319, 44.043243>,  <42.695183, 30.783215, 43.888893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981930, 30.798319, 44.043243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143661, 30.442001, 44.126194>,  <42.240700, 30.228210, 44.175964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143661, 30.442001, 44.126194>,  <41.981930, 30.798319, 44.043243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143661, 30.442001, 44.126194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339033, 0.064607, 0.938554,
		-0.849457, -0.449788, -0.275886,
		0.404326, -0.890796, 0.207374,
		42.264957, 30.174763, 44.188408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714645, 30.656372, 44.644939>,  <41.981930, 30.798319, 44.043243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714645, 30.656372, 44.644939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980278, 30.360723, 44.599869>,  <42.139656, 30.183334, 44.572826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980278, 30.360723, 44.599869>,  <41.714645, 30.656372, 44.644939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980278, 30.360723, 44.599869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124441, -0.039334, 0.991447,
		-0.737234, -0.672421, 0.065856,
		0.664079, -0.739123, -0.112675,
		42.179501, 30.138987, 44.566067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559212, 30.169291, 45.049099>,  <41.714645, 30.656372, 44.644939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559212, 30.169291, 45.049099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941940, 30.068857, 44.990505>,  <42.171577, 30.008596, 44.955349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941940, 30.068857, 44.990505>,  <41.559212, 30.169291, 45.049099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941940, 30.068857, 44.990505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160143, 0.034747, 0.986482,
		-0.242600, -0.967341, 0.073456,
		0.956817, -0.251084, -0.146483,
		42.228985, 29.993532, 44.946560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661194, 29.535452, 45.400902>,  <41.559212, 30.169291, 45.049099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661194, 29.535452, 45.400902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026897, 29.687157, 45.343933>,  <42.246319, 29.778179, 45.309753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026897, 29.687157, 45.343933>,  <41.661194, 29.535452, 45.400902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026897, 29.687157, 45.343933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206188, -0.133007, 0.969431,
		0.348725, -0.915680, -0.199803,
		0.914263, 0.379262, -0.142420,
		42.301178, 29.800936, 45.301208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043808, 29.141497, 45.781521>,  <41.661194, 29.535452, 45.400902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043808, 29.141497, 45.781521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242672, 29.484734, 45.730137>,  <42.361992, 29.690676, 45.699306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242672, 29.484734, 45.730137>,  <42.043808, 29.141497, 45.781521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242672, 29.484734, 45.730137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269897, -0.012235, 0.962811,
		0.824612, -0.513346, -0.237679,
		0.497163, 0.858095, -0.128461,
		42.391823, 29.742163, 45.691597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680233, 29.088661, 45.977085>,  <42.043808, 29.141497, 45.781521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680233, 29.088661, 45.977085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652744, 29.481321, 46.048233>,  <42.636250, 29.716917, 46.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652744, 29.481321, 46.048233>,  <42.680233, 29.088661, 45.977085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652744, 29.481321, 46.048233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547298, -0.111972, 0.829414,
		0.834112, 0.154345, -0.529561,
		-0.068720, 0.981652, 0.177870,
		42.632130, 29.775816, 46.101593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322926, 29.253471, 46.333282>,  <42.680233, 29.088661, 45.977085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322926, 29.253471, 46.333282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077602, 29.563299, 46.395111>,  <42.930408, 29.749197, 46.432209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077602, 29.563299, 46.395111>,  <43.322926, 29.253471, 46.333282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077602, 29.563299, 46.395111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163581, -0.066897, 0.984259,
		0.772719, 0.628940, -0.085677,
		-0.613308, 0.774571, 0.154574,
		42.893608, 29.795670, 46.441483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622482, 29.753639, 46.768738>,  <43.322926, 29.253471, 46.333282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622482, 29.753639, 46.768738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228764, 29.814751, 46.804115>,  <42.992535, 29.851418, 46.825340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228764, 29.814751, 46.804115>,  <43.622482, 29.753639, 46.768738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228764, 29.814751, 46.804115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094593, 0.033434, 0.994954,
		0.149050, 0.987695, -0.047361,
		-0.984295, 0.152778, 0.088445,
		42.933475, 29.860584, 46.830650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546787, 30.307093, 47.144203>,  <43.622482, 29.753639, 46.768738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546787, 30.307093, 47.144203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206287, 30.102545, 47.191303>,  <43.001987, 29.979816, 47.219563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206287, 30.102545, 47.191303>,  <43.546787, 30.307093, 47.144203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206287, 30.102545, 47.191303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115904, 0.035631, 0.992621,
		-0.511793, 0.858621, 0.028939,
		-0.851254, -0.511371, 0.117754,
		42.950912, 29.949133, 47.226631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008049, 30.656223, 47.520145>,  <43.546787, 30.307093, 47.144203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008049, 30.656223, 47.520145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971157, 30.261925, 47.576424>,  <42.949024, 30.025345, 47.610191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971157, 30.261925, 47.576424>,  <43.008049, 30.656223, 47.520145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971157, 30.261925, 47.576424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273095, 0.110839, 0.955581,
		-0.957556, 0.126552, 0.258980,
		-0.092226, -0.985748, 0.140695,
		42.943489, 29.966200, 47.618633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827065, 30.627466, 48.252392>,  <43.008049, 30.656223, 47.520145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827065, 30.627466, 48.252392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983639, 30.286421, 48.113926>,  <43.077583, 30.081795, 48.030846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983639, 30.286421, 48.113926>,  <42.827065, 30.627466, 48.252392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983639, 30.286421, 48.113926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482114, -0.130408, 0.866348,
		-0.783803, -0.506009, 0.360011,
		0.391432, -0.852613, -0.346168,
		43.101067, 30.030638, 48.010075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228188, 30.867453, 48.664192>,  <42.827065, 30.627466, 48.252392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228188, 30.867453, 48.664192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155998, 31.200464, 48.873695>,  <42.112682, 31.400270, 48.999397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155998, 31.200464, 48.873695>,  <42.228188, 30.867453, 48.664192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155998, 31.200464, 48.873695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280927, 0.466691, -0.838618,
		-0.942607, -0.298489, 0.149653,
		-0.180476, 0.832529, 0.523760,
		42.101856, 31.450222, 49.030823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523804, 31.022564, 48.447964>,  <42.228188, 30.867453, 48.664192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523804, 31.022564, 48.447964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671288, 31.358702, 48.606899>,  <41.759777, 31.560385, 48.702259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671288, 31.358702, 48.606899>,  <41.523804, 31.022564, 48.447964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671288, 31.358702, 48.606899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411361, 0.530829, -0.740947,
		-0.833567, 0.109746, 0.541407,
		0.368710, 0.840343, 0.397337,
		41.781902, 31.610806, 48.726101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963116, 31.654968, 48.404980>,  <41.523804, 31.022564, 48.447964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963116, 31.654968, 48.404980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340855, 31.785908, 48.417984>,  <41.567497, 31.864471, 48.425789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340855, 31.785908, 48.417984>,  <40.963116, 31.654968, 48.404980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340855, 31.785908, 48.417984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182789, 0.604335, -0.775479,
		-0.273501, 0.726376, 0.630535,
		0.944344, 0.327349, 0.032513,
		41.624157, 31.884113, 48.427738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806694, 32.349133, 48.268112>,  <40.963116, 31.654968, 48.404980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806694, 32.349133, 48.268112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196243, 32.297264, 48.193546>,  <41.429974, 32.266144, 48.148808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196243, 32.297264, 48.193546>,  <40.806694, 32.349133, 48.268112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196243, 32.297264, 48.193546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116364, 0.419961, -0.900051,
		0.195001, 0.898230, 0.393901,
		0.973876, -0.129675, -0.186415,
		41.488407, 32.258362, 48.137623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079678, 32.970810, 48.169846>,  <40.806694, 32.349133, 48.268112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079678, 32.970810, 48.169846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317425, 32.701859, 47.993374>,  <41.460075, 32.540489, 47.887493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317425, 32.701859, 47.993374>,  <41.079678, 32.970810, 48.169846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317425, 32.701859, 47.993374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210141, 0.399678, -0.892243,
		0.776251, 0.623031, 0.096263,
		0.594370, -0.672376, -0.441175,
		41.495735, 32.500145, 47.861023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433479, 33.351768, 47.684864>,  <41.079678, 32.970810, 48.169846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433479, 33.351768, 47.684864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523220, 32.983761, 47.556347>,  <41.577065, 32.762955, 47.479237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523220, 32.983761, 47.556347>,  <41.433479, 33.351768, 47.684864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523220, 32.983761, 47.556347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130660, 0.298319, -0.945481,
		0.965708, 0.254103, -0.053280,
		0.224355, -0.920020, -0.321290,
		41.590527, 32.707756, 47.459961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006557, 33.400520, 47.157162>,  <41.433479, 33.351768, 47.684864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006557, 33.400520, 47.157162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835049, 33.047993, 47.077732>,  <41.732143, 32.836475, 47.030075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835049, 33.047993, 47.077732>,  <42.006557, 33.400520, 47.157162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835049, 33.047993, 47.077732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145564, 0.284329, -0.947612,
		0.891607, -0.377407, -0.250201,
		-0.428775, -0.881318, -0.198573,
		41.706417, 32.783596, 47.018162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244469, 33.187637, 46.536057>,  <42.006557, 33.400520, 47.157162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244469, 33.187637, 46.536057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951508, 32.918034, 46.574650>,  <41.775730, 32.756271, 46.597805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951508, 32.918034, 46.574650>,  <42.244469, 33.187637, 46.536057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951508, 32.918034, 46.574650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167423, 0.040918, -0.985036,
		0.659972, -0.737592, -0.142812,
		-0.732398, -0.674006, 0.096485,
		41.731789, 32.715832, 46.603596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315468, 32.665451, 45.911827>,  <42.244469, 33.187637, 46.536057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315468, 32.665451, 45.911827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937981, 32.639019, 46.041458>,  <41.711487, 32.623158, 46.119236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937981, 32.639019, 46.041458>,  <42.315468, 32.665451, 45.911827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937981, 32.639019, 46.041458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319965, -0.065778, -0.945143,
		0.083778, -0.995644, 0.040931,
		-0.943718, -0.066086, 0.324082,
		41.654865, 32.619194, 46.138683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997192, 32.155613, 45.468113>,  <42.315468, 32.665451, 45.911827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997192, 32.155613, 45.468113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706425, 32.383480, 45.621510>,  <41.531963, 32.520203, 45.713547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706425, 32.383480, 45.621510>,  <41.997192, 32.155613, 45.468113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706425, 32.383480, 45.621510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445942, 0.033085, -0.894450,
		-0.522230, -0.821207, 0.229990,
		-0.726919, 0.569671, 0.383489,
		41.488350, 32.554382, 45.736557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414482, 31.882404, 45.242821>,  <41.997192, 32.155613, 45.468113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414482, 31.882404, 45.242821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298088, 32.248966, 45.352757>,  <41.228252, 32.468903, 45.418716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298088, 32.248966, 45.352757>,  <41.414482, 31.882404, 45.242821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298088, 32.248966, 45.352757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590002, 0.054257, -0.805577,
		-0.753145, -0.396563, 0.524891,
		-0.290982, 0.916403, 0.274836,
		41.210793, 32.523888, 45.435207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734230, 31.820061, 44.905182>,  <41.414482, 31.882404, 45.242821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734230, 31.820061, 44.905182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813530, 32.197502, 45.011246>,  <40.861111, 32.423965, 45.074883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813530, 32.197502, 45.011246>,  <40.734230, 31.820061, 44.905182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813530, 32.197502, 45.011246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321838, 0.318199, -0.891723,
		-0.925806, 0.091448, 0.366771,
		0.198253, 0.943603, 0.265159,
		40.873005, 32.480583, 45.090794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082821, 32.168343, 44.828194>,  <40.734230, 31.820061, 44.905182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082821, 32.168343, 44.828194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349121, 32.466446, 44.813404>,  <40.508900, 32.645309, 44.804531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349121, 32.466446, 44.813404>,  <40.082821, 32.168343, 44.828194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349121, 32.466446, 44.813404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271742, 0.196009, -0.942198,
		-0.694933, 0.637316, 0.333011,
		0.665751, 0.745257, -0.036972,
		40.548847, 32.690022, 44.802311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680397, 32.693073, 44.572704>,  <40.082821, 32.168343, 44.828194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680397, 32.693073, 44.572704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055080, 32.795753, 44.477467>,  <40.279892, 32.857361, 44.420326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055080, 32.795753, 44.477467>,  <39.680397, 32.693073, 44.572704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055080, 32.795753, 44.477467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308794, 0.285233, -0.907353,
		-0.165003, 0.923444, 0.346446,
		0.936707, 0.256696, -0.238090,
		40.336094, 32.872761, 44.406040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511028, 33.018051, 44.008141>,  <39.680397, 32.693073, 44.572704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511028, 33.018051, 44.008141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910069, 33.005692, 43.983383>,  <40.149494, 32.998276, 43.968529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910069, 33.005692, 43.983383>,  <39.511028, 33.018051, 44.008141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910069, 33.005692, 43.983383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052671, 0.240717, -0.969165,
		0.044843, 0.970104, 0.238513,
		0.997605, -0.030898, -0.061891,
		40.209351, 32.996422, 43.964817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759533, 33.643879, 43.699665>,  <39.511028, 33.018051, 44.008141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759533, 33.643879, 43.699665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019932, 33.347969, 43.631634>,  <40.176170, 33.170422, 43.590813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019932, 33.347969, 43.631634>,  <39.759533, 33.643879, 43.699665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019932, 33.347969, 43.631634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029526, 0.248574, -0.968163,
		0.758503, 0.625252, 0.183664,
		0.651000, -0.739778, -0.170083,
		40.215233, 33.126038, 43.580608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276905, 33.869888, 43.140808>,  <39.759533, 33.643879, 43.699665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276905, 33.869888, 43.140808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316261, 33.471828, 43.140999>,  <40.339874, 33.232994, 43.141113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316261, 33.471828, 43.140999>,  <40.276905, 33.869888, 43.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316261, 33.471828, 43.140999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008430, 0.000353, -0.999964,
		0.995113, 0.098388, 0.008424,
		0.098387, -0.995148, 0.000478,
		40.345776, 33.173283, 43.141144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861515, 33.675430, 42.779724>,  <40.276905, 33.869888, 43.140808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861515, 33.675430, 42.779724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640614, 33.341961, 42.779850>,  <40.508072, 33.141880, 42.779926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640614, 33.341961, 42.779850>,  <40.861515, 33.675430, 42.779724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640614, 33.341961, 42.779850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066143, -0.044193, -0.996831,
		0.831045, -0.550487, 0.079547,
		-0.552258, -0.833673, 0.000315,
		40.474937, 33.091858, 42.779945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158417, 33.215611, 42.315079>,  <40.861515, 33.675430, 42.779724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158417, 33.215611, 42.315079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788742, 33.067497, 42.352547>,  <40.566936, 32.978630, 42.375027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788742, 33.067497, 42.352547>,  <41.158417, 33.215611, 42.315079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788742, 33.067497, 42.352547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055273, -0.113006, -0.992056,
		0.377930, -0.922018, 0.083972,
		-0.924183, -0.370286, 0.093671,
		40.511486, 32.956413, 42.380650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058796, 32.707691, 41.791176>,  <41.158417, 33.215611, 42.315079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058796, 32.707691, 41.791176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677963, 32.786457, 41.884777>,  <40.449463, 32.833717, 41.940937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677963, 32.786457, 41.884777>,  <41.058796, 32.707691, 41.791176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677963, 32.786457, 41.884777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261062, -0.124710, -0.957233,
		-0.159322, -0.972454, 0.170144,
		-0.952084, 0.196926, 0.234002,
		40.392338, 32.845531, 41.954979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671516, 32.183384, 41.431885>,  <41.058796, 32.707691, 41.791176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671516, 32.183384, 41.431885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427338, 32.492126, 41.502975>,  <40.280830, 32.677372, 41.545631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427338, 32.492126, 41.502975>,  <40.671516, 32.183384, 41.431885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427338, 32.492126, 41.502975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274874, 0.003996, -0.961472,
		-0.742833, -0.635779, 0.209725,
		-0.610446, 0.771861, 0.177728,
		40.244205, 32.723686, 41.556293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964230, 31.977791, 41.029449>,  <40.671516, 32.183384, 41.431885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964230, 31.977791, 41.029449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015991, 32.367836, 41.101460>,  <40.047050, 32.601864, 41.144665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015991, 32.367836, 41.101460>,  <39.964230, 31.977791, 41.029449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015991, 32.367836, 41.101460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191286, 0.202691, -0.960378,
		-0.972966, 0.089845, 0.212755,
		0.129408, 0.975112, 0.180026,
		40.054813, 32.660370, 41.155468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383842, 32.235981, 40.746212>,  <39.964230, 31.977791, 41.029449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383842, 32.235981, 40.746212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571671, 32.586872, 40.786156>,  <39.684368, 32.797409, 40.810123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571671, 32.586872, 40.786156>,  <39.383842, 32.235981, 40.746212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571671, 32.586872, 40.786156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266675, 0.248743, -0.931135,
		-0.841660, 0.410600, 0.350737,
		0.469567, 0.877231, 0.099860,
		39.712540, 32.850040, 40.816113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965965, 32.673504, 40.639843>,  <39.383842, 32.235981, 40.746212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965965, 32.673504, 40.639843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300468, 32.875206, 40.553673>,  <39.501171, 32.996227, 40.501968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300468, 32.875206, 40.553673>,  <38.965965, 32.673504, 40.639843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300468, 32.875206, 40.553673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353959, 0.196345, -0.914419,
		-0.418799, 0.840939, 0.342679,
		0.836254, 0.504252, -0.215429,
		39.551346, 33.026482, 40.489044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777382, 33.152042, 40.142357>,  <38.965965, 32.673504, 40.639843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777382, 33.152042, 40.142357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171036, 33.145710, 40.071678>,  <39.407230, 33.141911, 40.029270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171036, 33.145710, 40.071678>,  <38.777382, 33.152042, 40.142357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171036, 33.145710, 40.071678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149203, 0.464940, -0.872680,
		0.095968, 0.885201, 0.455203,
		0.984139, -0.015832, -0.176693,
		39.466278, 33.140961, 40.018669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883011, 33.850216, 39.853882>,  <38.777382, 33.152042, 40.142357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883011, 33.850216, 39.853882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190998, 33.612812, 39.760159>,  <39.375790, 33.470371, 39.703926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190998, 33.612812, 39.760159>,  <38.883011, 33.850216, 39.853882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190998, 33.612812, 39.760159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055763, 0.428387, -0.901873,
		0.635640, 0.681348, 0.362941,
		0.769969, -0.593505, -0.234306,
		39.421989, 33.434761, 39.689865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290974, 34.241543, 39.380287>,  <38.883011, 33.850216, 39.853882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290974, 34.241543, 39.380287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459217, 33.885479, 39.310192>,  <39.560162, 33.671841, 39.268135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459217, 33.885479, 39.310192>,  <39.290974, 34.241543, 39.380287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459217, 33.885479, 39.310192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135490, 0.252615, -0.958034,
		0.897069, 0.379214, 0.226859,
		0.420608, -0.890159, -0.175233,
		39.585400, 33.618431, 39.257622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873726, 34.398407, 39.047897>,  <39.290974, 34.241543, 39.380287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873726, 34.398407, 39.047897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783855, 34.021069, 38.950230>,  <39.729935, 33.794666, 38.891628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783855, 34.021069, 38.950230>,  <39.873726, 34.398407, 39.047897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783855, 34.021069, 38.950230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134843, 0.218066, -0.966574,
		0.965059, -0.250091, 0.078210,
		-0.224676, -0.943346, -0.244170,
		39.716454, 33.738064, 38.876980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456532, 34.072300, 38.701912>,  <39.873726, 34.398407, 39.047897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456532, 34.072300, 38.701912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132416, 33.867699, 38.587517>,  <39.937946, 33.744938, 38.518879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132416, 33.867699, 38.587517>,  <40.456532, 34.072300, 38.701912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132416, 33.867699, 38.587517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169853, 0.262072, -0.949983,
		0.560872, -0.818339, -0.125473,
		-0.810291, -0.511507, -0.285986,
		39.889328, 33.714245, 38.501720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700665, 33.651817, 38.234150>,  <40.456532, 34.072300, 38.701912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700665, 33.651817, 38.234150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308636, 33.659531, 38.155064>,  <40.073418, 33.664158, 38.107613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308636, 33.659531, 38.155064>,  <40.700665, 33.651817, 38.234150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308636, 33.659531, 38.155064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194792, 0.288717, -0.937389,
		0.039004, -0.957220, -0.286720,
		-0.980069, 0.019289, -0.197720,
		40.014614, 33.665318, 38.095749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584999, 33.160294, 37.676071>,  <40.700665, 33.651817, 38.234150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584999, 33.160294, 37.676071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259804, 33.392891, 37.664009>,  <40.064686, 33.532448, 37.656773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259804, 33.392891, 37.664009>,  <40.584999, 33.160294, 37.676071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259804, 33.392891, 37.664009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227628, 0.269723, -0.935647,
		-0.535938, -0.767538, -0.351647,
		-0.812992, 0.581494, -0.030158,
		40.015907, 33.567341, 37.654961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244419, 32.993404, 37.044048>,  <40.584999, 33.160294, 37.676071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244419, 32.993404, 37.044048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100025, 33.350685, 37.151299>,  <40.013390, 33.565052, 37.215649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100025, 33.350685, 37.151299>,  <40.244419, 32.993404, 37.044048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100025, 33.350685, 37.151299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007037, 0.284890, -0.958535,
		-0.932546, -0.347901, -0.096554,
		-0.360982, 0.893199, 0.268121,
		39.991730, 33.618645, 37.231735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762592, 33.186180, 36.529476>,  <40.244419, 32.993404, 37.044048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762592, 33.186180, 36.529476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786240, 33.535023, 36.723766>,  <39.800426, 33.744328, 36.840340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786240, 33.535023, 36.723766>,  <39.762592, 33.186180, 36.529476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786240, 33.535023, 36.723766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002171, 0.486468, -0.873696,
		-0.998249, 0.052706, 0.026865,
		0.059118, 0.872107, 0.485730,
		39.803974, 33.796654, 36.869484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186058, 33.603985, 36.321449>,  <39.762592, 33.186180, 36.529476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186058, 33.603985, 36.321449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502510, 33.832207, 36.409615>,  <39.692379, 33.969139, 36.462513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502510, 33.832207, 36.409615>,  <39.186058, 33.603985, 36.321449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502510, 33.832207, 36.409615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129123, 0.508026, -0.851608,
		-0.597867, 0.645270, 0.475586,
		0.791127, 0.570558, 0.220413,
		39.739849, 34.003372, 36.475739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941193, 34.267555, 36.019669>,  <39.186058, 33.603985, 36.321449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941193, 34.267555, 36.019669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323689, 34.302299, 36.131424>,  <39.553185, 34.323147, 36.198479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323689, 34.302299, 36.131424>,  <38.941193, 34.267555, 36.019669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323689, 34.302299, 36.131424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077169, 0.846225, -0.527208,
		-0.282223, 0.525698, 0.802491,
		0.956240, 0.086863, 0.279392,
		39.610561, 34.328358, 36.215240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011387, 34.978008, 36.051830>,  <38.941193, 34.267555, 36.019669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011387, 34.978008, 36.051830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394432, 34.868645, 36.015549>,  <39.624260, 34.803024, 35.993778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394432, 34.868645, 36.015549>,  <39.011387, 34.978008, 36.051830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394432, 34.868645, 36.015549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170820, 0.792513, -0.585443,
		0.231953, 0.545132, 0.805623,
		0.957611, -0.273412, -0.090706,
		39.681717, 34.786621, 35.988338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465649, 35.495953, 36.345409>,  <39.011387, 34.978008, 36.051830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465649, 35.495953, 36.345409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660458, 35.277439, 36.072826>,  <39.777344, 35.146332, 35.909275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660458, 35.277439, 36.072826>,  <39.465649, 35.495953, 36.345409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660458, 35.277439, 36.072826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259291, 0.835502, -0.484464,
		0.834014, 0.059249, 0.548553,
		0.487021, -0.546284, -0.681457,
		39.806564, 35.113552, 35.868389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191784, 35.763756, 36.319988>,  <39.465649, 35.495953, 36.345409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191784, 35.763756, 36.319988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129768, 35.583397, 35.968388>,  <40.092560, 35.475182, 35.757427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129768, 35.583397, 35.968388>,  <40.191784, 35.763756, 36.319988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129768, 35.583397, 35.968388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327620, 0.815945, -0.476338,
		0.932003, -0.361830, 0.021222,
		-0.155037, -0.450901, -0.879006,
		40.083256, 35.448128, 35.704685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841160, 35.793262, 35.852188>,  <40.191784, 35.763756, 36.319988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841160, 35.793262, 35.852188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551788, 35.711842, 35.588303>,  <40.378166, 35.662991, 35.429974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551788, 35.711842, 35.588303>,  <40.841160, 35.793262, 35.852188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551788, 35.711842, 35.588303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460724, 0.569323, -0.680885,
		0.514184, -0.796516, -0.318083,
		-0.723428, -0.203551, -0.659711,
		40.334759, 35.650776, 35.390388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145454, 35.649166, 35.251389>,  <40.841160, 35.793262, 35.852188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145454, 35.649166, 35.251389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782642, 35.732548, 35.105053>,  <40.564953, 35.782578, 35.017250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782642, 35.732548, 35.105053>,  <41.145454, 35.649166, 35.251389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782642, 35.732548, 35.105053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406005, 0.663229, -0.628719,
		0.111577, -0.718802, -0.686203,
		-0.907034, 0.208452, -0.365838,
		40.510532, 35.795082, 34.995300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074497, 35.579617, 34.464054>,  <41.145454, 35.649166, 35.251389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074497, 35.579617, 34.464054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821346, 35.856712, 34.602375>,  <40.669456, 36.022968, 34.685368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821346, 35.856712, 34.602375>,  <41.074497, 35.579617, 34.464054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821346, 35.856712, 34.602375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385098, 0.669103, -0.635611,
		-0.671689, -0.269096, -0.690233,
		-0.632877, 0.692740, 0.345801,
		40.631485, 36.064533, 34.706116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736042, 36.060677, 34.541412>,  <41.074497, 35.579617, 34.464054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736042, 36.060677, 34.541412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897495, 36.424133, 34.498600>,  <41.994366, 36.642208, 34.472912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897495, 36.424133, 34.498600>,  <41.736042, 36.060677, 34.541412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897495, 36.424133, 34.498600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181993, 0.034904, 0.982680,
		0.896637, -0.416122, -0.151278,
		0.403634, 0.908639, -0.107027,
		42.018585, 36.696724, 34.466492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321667, 36.012054, 34.874260>,  <41.736042, 36.060677, 34.541412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321667, 36.012054, 34.874260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259983, 36.405689, 34.838940>,  <42.222973, 36.641869, 34.817745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259983, 36.405689, 34.838940>,  <42.321667, 36.012054, 34.874260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259983, 36.405689, 34.838940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447735, 0.149270, 0.881619,
		0.880769, 0.096416, -0.463628,
		-0.154208, 0.984085, -0.088304,
		42.213722, 36.700916, 34.812450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080215, 36.229130, 34.988602>,  <42.321667, 36.012054, 34.874260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080215, 36.229130, 34.988602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768269, 36.473267, 35.044151>,  <42.581100, 36.619747, 35.077480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768269, 36.473267, 35.044151>,  <43.080215, 36.229130, 34.988602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768269, 36.473267, 35.044151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325041, 0.205277, 0.923152,
		0.534931, 0.765078, -0.358476,
		-0.779870, 0.610342, 0.138872,
		42.534309, 36.656368, 35.085812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380394, 36.807785, 35.312309>,  <43.080215, 36.229130, 34.988602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380394, 36.807785, 35.312309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996651, 36.763927, 35.416313>,  <42.766403, 36.737614, 35.478718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996651, 36.763927, 35.416313>,  <43.380394, 36.807785, 35.312309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996651, 36.763927, 35.416313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206404, 0.355662, 0.911538,
		-0.192423, 0.928161, -0.318576,
		-0.959359, -0.109645, 0.260014,
		42.708843, 36.731033, 35.494316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104462, 37.434643, 35.697449>,  <43.380394, 36.807785, 35.312309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104462, 37.434643, 35.697449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881447, 37.123554, 35.813583>,  <42.747639, 36.936901, 35.883266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881447, 37.123554, 35.813583>,  <43.104462, 37.434643, 35.697449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881447, 37.123554, 35.813583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062903, 0.309157, 0.948928,
		-0.827766, 0.547325, -0.123445,
		-0.557536, -0.777726, 0.290338,
		42.714188, 36.890236, 35.900684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554474, 37.719059, 36.058445>,  <43.104462, 37.434643, 35.697449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554474, 37.719059, 36.058445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677227, 37.360661, 36.186829>,  <42.750881, 37.145622, 36.263859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677227, 37.360661, 36.186829>,  <42.554474, 37.719059, 36.058445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677227, 37.360661, 36.186829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050401, 0.352058, 0.934620,
		-0.950411, -0.270646, 0.153201,
		0.306887, -0.895994, 0.320959,
		42.769295, 37.091862, 36.283115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194111, 37.506897, 36.671829>,  <42.554474, 37.719059, 36.058445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194111, 37.506897, 36.671829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558762, 37.342907, 36.683533>,  <42.777554, 37.244514, 36.690556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558762, 37.342907, 36.683533>,  <42.194111, 37.506897, 36.671829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558762, 37.342907, 36.683533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154604, 0.407992, 0.899800,
		-0.380828, -0.815761, 0.435320,
		0.911629, -0.409972, 0.029255,
		42.832249, 37.219917, 36.692310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306576, 37.223328, 37.352352>,  <42.194111, 37.506897, 36.671829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306576, 37.223328, 37.352352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678421, 37.271980, 37.213196>,  <42.901527, 37.301170, 37.129704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678421, 37.271980, 37.213196>,  <42.306576, 37.223328, 37.352352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678421, 37.271980, 37.213196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257452, 0.461120, 0.849168,
		0.263701, -0.878962, 0.397350,
		0.929613, 0.121628, -0.347889,
		42.957306, 37.308468, 37.108829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780346, 36.974716, 37.926353>,  <42.306576, 37.223328, 37.352352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780346, 36.974716, 37.926353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974556, 37.227253, 37.684467>,  <43.091080, 37.378773, 37.539337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974556, 37.227253, 37.684467>,  <42.780346, 36.974716, 37.926353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974556, 37.227253, 37.684467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424982, 0.434032, 0.794359,
		0.763976, -0.642671, -0.057576,
		0.485521, 0.631340, -0.604714,
		43.120213, 37.416656, 37.503052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306606, 37.132504, 38.370247>,  <42.780346, 36.974716, 37.926353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306606, 37.132504, 38.370247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399082, 37.372776, 38.064114>,  <43.454567, 37.516941, 37.880436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399082, 37.372776, 38.064114>,  <43.306606, 37.132504, 38.370247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399082, 37.372776, 38.064114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381079, 0.667876, 0.639313,
		0.895170, -0.439453, -0.074502,
		0.231190, 0.600685, -0.765329,
		43.468441, 37.552982, 37.834515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034760, 37.264942, 38.335796>,  <43.306606, 37.132504, 38.370247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034760, 37.264942, 38.335796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834660, 37.575180, 38.181805>,  <43.714600, 37.761322, 38.089409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834660, 37.575180, 38.181805>,  <44.034760, 37.264942, 38.335796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834660, 37.575180, 38.181805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497690, 0.621380, 0.605138,
		0.708560, 0.111117, -0.696847,
		-0.500248, 0.775590, -0.384983,
		43.684586, 37.807858, 38.066311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461739, 37.797749, 38.229240>,  <44.034760, 37.264942, 38.335796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461739, 37.797749, 38.229240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101746, 37.971416, 38.244823>,  <43.885750, 38.075619, 38.254173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101746, 37.971416, 38.244823>,  <44.461739, 37.797749, 38.229240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101746, 37.971416, 38.244823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306280, 0.566211, 0.765243,
		0.310189, 0.700641, -0.642561,
		-0.899986, 0.434174, 0.038960,
		43.831749, 38.101669, 38.256512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630623, 38.459526, 38.028782>,  <44.461739, 37.797749, 38.229240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630623, 38.459526, 38.028782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280548, 38.463249, 38.222263>,  <44.070503, 38.465485, 38.338352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280548, 38.463249, 38.222263>,  <44.630623, 38.459526, 38.028782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280548, 38.463249, 38.222263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354449, 0.692825, 0.627980,
		-0.329274, 0.721046, -0.609649,
		-0.875183, 0.009312, 0.483703,
		44.017994, 38.466042, 38.367374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644154, 39.153950, 38.203808>,  <44.630623, 38.459526, 38.028782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644154, 39.153950, 38.203808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349102, 39.003639, 38.428200>,  <44.172073, 38.913452, 38.562836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349102, 39.003639, 38.428200>,  <44.644154, 39.153950, 38.203808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349102, 39.003639, 38.428200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099399, 0.761337, 0.640692,
		-0.667852, 0.528352, -0.524230,
		-0.737627, -0.375779, 0.560978,
		44.127815, 38.890907, 38.596493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131542, 39.622108, 38.289700>,  <44.644154, 39.153950, 38.203808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131542, 39.622108, 38.289700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056255, 39.381805, 38.600483>,  <44.011082, 39.237621, 38.786953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056255, 39.381805, 38.600483>,  <44.131542, 39.622108, 38.289700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056255, 39.381805, 38.600483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178508, 0.756993, 0.628567,
		-0.965769, 0.257000, -0.035238,
		-0.188217, -0.600760, 0.776957,
		43.999790, 39.201576, 38.833569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604095, 39.972855, 38.634556>,  <44.131542, 39.622108, 38.289700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604095, 39.972855, 38.634556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787254, 39.731014, 38.895260>,  <43.897152, 39.585911, 39.051682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787254, 39.731014, 38.895260>,  <43.604095, 39.972855, 38.634556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787254, 39.731014, 38.895260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080061, 0.758199, 0.647089,
		-0.885391, -0.244122, 0.395585,
		0.457901, -0.604597, 0.651758,
		43.924625, 39.549637, 39.090786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216988, 39.948307, 39.315399>,  <43.604095, 39.972855, 38.634556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216988, 39.948307, 39.315399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590511, 39.837833, 39.406368>,  <43.814625, 39.771549, 39.460949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590511, 39.837833, 39.406368>,  <43.216988, 39.948307, 39.315399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590511, 39.837833, 39.406368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091376, 0.798701, 0.594750,
		-0.345908, -0.534601, 0.771070,
		0.933808, -0.276186, 0.227427,
		43.870655, 39.754978, 39.474598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260418, 39.982468, 40.048656>,  <43.216988, 39.948307, 39.315399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260418, 39.982468, 40.048656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639011, 39.991714, 39.919888>,  <43.866169, 39.997261, 39.842625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639011, 39.991714, 39.919888>,  <43.260418, 39.982468, 40.048656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639011, 39.991714, 39.919888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167091, 0.818263, 0.550025,
		0.276134, -0.574380, 0.770609,
		0.946484, 0.023118, -0.321923,
		43.922955, 39.998650, 39.823311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635174, 40.162457, 40.583672>,  <43.260418, 39.982468, 40.048656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635174, 40.162457, 40.583672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924061, 40.232403, 40.315994>,  <44.097393, 40.274372, 40.155388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924061, 40.232403, 40.315994>,  <43.635174, 40.162457, 40.583672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924061, 40.232403, 40.315994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340640, 0.752116, 0.564168,
		0.601968, -0.635407, 0.483624,
		0.722218, 0.174869, -0.669195,
		44.140728, 40.284863, 40.115234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211723, 40.380993, 41.001213>,  <43.635174, 40.162457, 40.583672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211723, 40.380993, 41.001213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261539, 40.516415, 40.628143>,  <44.291428, 40.597668, 40.404301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261539, 40.516415, 40.628143>,  <44.211723, 40.380993, 41.001213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261539, 40.516415, 40.628143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399713, 0.843221, 0.359455,
		0.908140, -0.417567, -0.030308,
		0.124540, 0.338550, -0.932670,
		44.298901, 40.617981, 40.348343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675915, 40.961842, 41.064209>,  <44.211723, 40.380993, 41.001213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675915, 40.961842, 41.064209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546326, 41.042084, 40.694389>,  <44.468575, 41.090229, 40.472496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546326, 41.042084, 40.694389>,  <44.675915, 40.961842, 41.064209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546326, 41.042084, 40.694389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187459, 0.971495, 0.145108,
		0.927310, -0.126305, -0.352340,
		-0.323969, 0.200610, -0.924554,
		44.449135, 41.102268, 40.417023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189339, 41.353031, 40.721275>,  <44.675915, 40.961842, 41.064209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189339, 41.353031, 40.721275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860069, 41.431568, 40.508171>,  <44.662506, 41.478691, 40.380310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860069, 41.431568, 40.508171>,  <45.189339, 41.353031, 40.721275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860069, 41.431568, 40.508171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216009, 0.976046, 0.025959,
		0.525094, -0.093712, -0.845869,
		-0.823175, 0.196347, -0.532759,
		44.613117, 41.490471, 40.348343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309837, 41.837200, 40.194416>,  <45.189339, 41.353031, 40.721275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309837, 41.837200, 40.194416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916180, 41.875237, 40.254295>,  <44.679985, 41.898060, 40.290222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916180, 41.875237, 40.254295>,  <45.309837, 41.837200, 40.194416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916180, 41.875237, 40.254295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085948, 0.994081, -0.066447,
		-0.155132, -0.052527, -0.986496,
		-0.984148, 0.095096, 0.149699,
		44.620934, 41.903767, 40.299206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071045, 42.393906, 39.640514>,  <45.309837, 41.837200, 40.194416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071045, 42.393906, 39.640514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767166, 42.363426, 39.898834>,  <44.584839, 42.345139, 40.053825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767166, 42.363426, 39.898834>,  <45.071045, 42.393906, 39.640514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767166, 42.363426, 39.898834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183900, 0.977746, -0.100963,
		-0.623732, -0.195463, -0.756804,
		-0.759697, -0.076202, 0.645797,
		44.539257, 42.340565, 40.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517544, 42.796467, 39.374397>,  <45.071045, 42.393906, 39.640514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517544, 42.796467, 39.374397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404758, 42.756435, 39.756073>,  <44.337086, 42.732418, 39.985081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404758, 42.756435, 39.756073>,  <44.517544, 42.796467, 39.374397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404758, 42.756435, 39.756073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370001, 0.928955, -0.011907,
		-0.885209, -0.356409, -0.298961,
		-0.281965, -0.100076, 0.954191,
		44.320168, 42.726414, 40.042332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806030, 43.010323, 39.474388>,  <44.517544, 42.796467, 39.374397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806030, 43.010323, 39.474388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972355, 43.055008, 39.835415>,  <44.072151, 43.081818, 40.052029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972355, 43.055008, 39.835415>,  <43.806030, 43.010323, 39.474388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972355, 43.055008, 39.835415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432334, 0.897399, 0.088107,
		-0.800116, -0.426844, 0.421448,
		0.415815, 0.111710, 0.902562,
		44.097099, 43.088520, 40.106182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194496, 43.371624, 39.799561>,  <43.806030, 43.010323, 39.474388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194496, 43.371624, 39.799561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529301, 43.433853, 40.009403>,  <43.730183, 43.471191, 40.135307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529301, 43.433853, 40.009403>,  <43.194496, 43.371624, 39.799561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529301, 43.433853, 40.009403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186935, 0.982348, 0.006937,
		-0.514263, -0.103873, 0.851319,
		0.837012, 0.155574, 0.524602,
		43.780403, 43.480526, 40.166782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025330, 43.857063, 40.381733>,  <43.194496, 43.371624, 39.799561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025330, 43.857063, 40.381733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407963, 43.851456, 40.265285>,  <43.637543, 43.848091, 40.195415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407963, 43.851456, 40.265285>,  <43.025330, 43.857063, 40.381733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407963, 43.851456, 40.265285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005358, 0.999519, -0.030542,
		0.291409, 0.027657, 0.956199,
		0.956584, -0.014023, -0.291120,
		43.694939, 43.847248, 40.177948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332424, 44.386604, 40.841042>,  <43.025330, 43.857063, 40.381733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332424, 44.386604, 40.841042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517319, 44.308437, 40.495060>,  <43.628258, 44.261536, 40.287472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517319, 44.308437, 40.495060>,  <43.332424, 44.386604, 40.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517319, 44.308437, 40.495060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237039, 0.967150, -0.091832,
		0.854486, -0.162579, 0.493378,
		0.462241, -0.195419, -0.864953,
		43.655991, 44.249813, 40.235573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078999, 44.594917, 40.756584>,  <43.332424, 44.386604, 40.841042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078999, 44.594917, 40.756584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954075, 44.632877, 40.378490>,  <43.879120, 44.655651, 40.151634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954075, 44.632877, 40.378490>,  <44.078999, 44.594917, 40.756584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954075, 44.632877, 40.378490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573074, 0.812384, -0.107787,
		0.757661, -0.575349, -0.308096,
		-0.312308, 0.094896, -0.945229,
		43.860382, 44.661346, 40.094921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625324, 44.503139, 40.284744>,  <44.078999, 44.594917, 40.756584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625324, 44.503139, 40.284744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347973, 44.769028, 40.173489>,  <44.181561, 44.928562, 40.106735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347973, 44.769028, 40.173489>,  <44.625324, 44.503139, 40.284744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347973, 44.769028, 40.173489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688372, 0.725159, 0.016992,
		0.212993, -0.179684, -0.960389,
		-0.693382, 0.664724, -0.278143,
		44.139957, 44.968445, 40.090046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938953, 44.983444, 39.891956>,  <44.625324, 44.503139, 40.284744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938953, 44.983444, 39.891956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606083, 45.157703, 40.029186>,  <44.406361, 45.262260, 40.111523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606083, 45.157703, 40.029186>,  <44.938953, 44.983444, 39.891956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606083, 45.157703, 40.029186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461853, 0.886936, -0.005978,
		-0.306887, 0.153474, -0.939291,
		-0.832173, 0.435649, 0.343071,
		44.356430, 45.288399, 40.132107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768349, 45.560104, 39.411827>,  <44.938953, 44.983444, 39.891956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768349, 45.560104, 39.411827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578529, 45.603951, 39.761177>,  <44.464638, 45.630257, 39.970787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578529, 45.603951, 39.761177>,  <44.768349, 45.560104, 39.411827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578529, 45.603951, 39.761177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477675, 0.865476, 0.150922,
		-0.739346, 0.488811, -0.463068,
		-0.474547, 0.109613, 0.873379,
		44.436165, 45.636833, 40.023190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600300, 44.959385, 38.939285>,  <44.768349, 45.560104, 39.411827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600300, 44.959385, 38.939285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970757, 45.086998, 38.858810>,  <45.193031, 45.163567, 38.810524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970757, 45.086998, 38.858810>,  <44.600300, 44.959385, 38.939285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970757, 45.086998, 38.858810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314213, -0.947678, -0.056353,
		-0.208639, -0.011024, -0.977930,
		0.926142, 0.319036, -0.201186,
		45.248600, 45.182709, 38.798454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758331, 44.775188, 38.190186>,  <44.600300, 44.959385, 38.939285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758331, 44.775188, 38.190186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058189, 44.787010, 38.454659>,  <45.238102, 44.794106, 38.613342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058189, 44.787010, 38.454659>,  <44.758331, 44.775188, 38.190186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058189, 44.787010, 38.454659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227695, -0.949539, -0.215711,
		0.621442, 0.312254, -0.718545,
		0.749643, 0.029558, 0.661182,
		45.283081, 44.795876, 38.653011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370533, 44.550869, 37.874199>,  <44.758331, 44.775188, 38.190186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370533, 44.550869, 37.874199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489498, 44.532257, 38.255646>,  <45.560875, 44.521088, 38.484512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489498, 44.532257, 38.255646>,  <45.370533, 44.550869, 37.874199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489498, 44.532257, 38.255646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333743, -0.930733, -0.149503,
		0.894518, 0.362726, -0.261278,
		0.297409, -0.046534, 0.953615,
		45.578720, 44.518295, 38.541729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095833, 44.484104, 37.940277>,  <45.370533, 44.550869, 37.874199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095833, 44.484104, 37.940277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883041, 44.301167, 38.225327>,  <45.755367, 44.191406, 38.396358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883041, 44.301167, 38.225327>,  <46.095833, 44.484104, 37.940277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883041, 44.301167, 38.225327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435193, -0.869608, -0.233214,
		0.726364, 0.186065, 0.661645,
		-0.531979, -0.457342, 0.712626,
		45.723446, 44.163963, 38.439114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542740, 44.163048, 38.368534>,  <46.095833, 44.484104, 37.940277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542740, 44.163048, 38.368534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190964, 43.976864, 38.328682>,  <45.979897, 43.865154, 38.304771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190964, 43.976864, 38.328682>,  <46.542740, 44.163048, 38.368534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190964, 43.976864, 38.328682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463460, -0.789576, -0.402212,
		0.108544, -0.399899, 0.910109,
		-0.879445, -0.465457, -0.099634,
		45.927132, 43.837227, 38.298790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617950, 43.463379, 38.537624>,  <46.542740, 44.163048, 38.368534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617950, 43.463379, 38.537624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287754, 43.472355, 38.312035>,  <46.089638, 43.477741, 38.176682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287754, 43.472355, 38.312035>,  <46.617950, 43.463379, 38.537624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287754, 43.472355, 38.312035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286962, -0.843742, -0.453599,
		-0.486022, -0.536279, 0.690063,
		-0.825491, 0.022437, -0.563970,
		46.040108, 43.479088, 38.142845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177444, 42.923950, 38.751549>,  <46.617950, 43.463379, 38.537624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177444, 42.923950, 38.751549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064793, 42.990643, 38.373577>,  <45.997200, 43.030659, 38.146793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064793, 42.990643, 38.373577>,  <46.177444, 42.923950, 38.751549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064793, 42.990643, 38.373577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173828, -0.959627, -0.221133,
		-0.943646, -0.226533, 0.241280,
		-0.281633, 0.166730, -0.944926,
		45.980305, 43.040661, 38.090099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822437, 42.387966, 38.619392>,  <46.177444, 42.923950, 38.751549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822437, 42.387966, 38.619392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874451, 42.535896, 38.251411>,  <45.905659, 42.624653, 38.030621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874451, 42.535896, 38.251411>,  <45.822437, 42.387966, 38.619392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874451, 42.535896, 38.251411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109829, -0.927497, -0.357333,
		-0.985408, -0.054573, -0.161223,
		0.130034, 0.369826, -0.919957,
		45.913460, 42.646843, 37.975426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507122, 41.894310, 38.223099>,  <45.822437, 42.387966, 38.619392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507122, 41.894310, 38.223099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726830, 42.095161, 37.955917>,  <45.858654, 42.215672, 37.795609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726830, 42.095161, 37.955917>,  <45.507122, 41.894310, 38.223099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726830, 42.095161, 37.955917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144904, -0.844453, -0.515658,
		-0.822985, 0.186446, -0.536594,
		0.549270, 0.502133, -0.667955,
		45.891609, 42.245800, 37.755531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242775, 41.697220, 37.702457>,  <45.507122, 41.894310, 38.223099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242775, 41.697220, 37.702457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621792, 41.806709, 37.636436>,  <45.849201, 41.872402, 37.596825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621792, 41.806709, 37.636436>,  <45.242775, 41.697220, 37.702457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621792, 41.806709, 37.636436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177455, -0.879979, -0.440620,
		-0.265849, 0.388216, -0.882390,
		0.947541, 0.273723, -0.165051,
		45.906055, 41.888824, 37.586922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355736, 41.582935, 36.999302>,  <45.242775, 41.697220, 37.702457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355736, 41.582935, 36.999302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719326, 41.592468, 37.165768>,  <45.937481, 41.598190, 37.265648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719326, 41.592468, 37.165768>,  <45.355736, 41.582935, 36.999302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.719326, 41.592468, 37.165768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232584, -0.857507, -0.458898,
		0.345923, 0.513920, -0.784999,
		0.908979, 0.023835, 0.416161,
		45.992020, 41.599617, 37.290615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871449, 41.409561, 36.477085>,  <45.355736, 41.582935, 36.999302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871449, 41.409561, 36.477085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051819, 41.341621, 36.827587>,  <46.160042, 41.300858, 37.037888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051819, 41.341621, 36.827587>,  <45.871449, 41.409561, 36.477085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051819, 41.341621, 36.827587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311198, -0.890207, -0.332697,
		0.836553, 0.422710, -0.348562,
		0.450927, -0.169846, 0.876252,
		46.187096, 41.290668, 37.090462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552361, 41.278458, 36.250965>,  <45.871449, 41.409561, 36.477085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552361, 41.278458, 36.250965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.513206, 41.122425, 36.617191>,  <46.489716, 41.028805, 36.836926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.513206, 41.122425, 36.617191>,  <46.552361, 41.278458, 36.250965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.513206, 41.122425, 36.617191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142023, -0.916039, -0.375104,
		0.985012, 0.093314, 0.145068,
		-0.097886, -0.390085, 0.915561,
		46.483841, 41.005398, 36.891861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.155121, 40.923710, 36.208164>,  <46.552361, 41.278458, 36.250965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.155121, 40.923710, 36.208164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921757, 40.778751, 36.498901>,  <46.781738, 40.691776, 36.673344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921757, 40.778751, 36.498901>,  <47.155121, 40.923710, 36.208164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921757, 40.778751, 36.498901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294873, -0.928379, -0.226191,
		0.756759, 0.082365, 0.648484,
		-0.583408, -0.362393, 0.726847,
		46.746735, 40.670033, 36.716957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.562714, 40.416809, 36.622009>,  <47.155121, 40.923710, 36.208164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.562714, 40.416809, 36.622009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171734, 40.356697, 36.681351>,  <46.937145, 40.320629, 36.716957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171734, 40.356697, 36.681351>,  <47.562714, 40.416809, 36.622009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.171734, 40.356697, 36.681351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127467, -0.979990, -0.152876,
		0.168361, -0.130518, 0.977046,
		-0.977449, -0.150280, 0.148355,
		46.878498, 40.311615, 36.725857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.585220, 39.759216, 36.949753>,  <47.562714, 40.416809, 36.622009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.585220, 39.759216, 36.949753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196995, 39.770649, 36.854095>,  <46.964058, 39.777508, 36.796700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196995, 39.770649, 36.854095>,  <47.585220, 39.759216, 36.949753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.196995, 39.770649, 36.854095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008855, -0.996498, -0.083148,
		-0.240687, -0.078583, 0.967416,
		-0.970563, 0.028580, -0.239148,
		46.905827, 39.779224, 36.782352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.261463, 39.260204, 37.295258>,  <47.585220, 39.759216, 36.949753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.261463, 39.260204, 37.295258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007786, 39.321838, 36.992191>,  <46.855579, 39.358818, 36.810352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007786, 39.321838, 36.992191>,  <47.261463, 39.260204, 37.295258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007786, 39.321838, 36.992191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124908, -0.987487, -0.096267,
		-0.763015, 0.033586, 0.645507,
		-0.634197, 0.154083, -0.757663,
		46.817528, 39.368065, 36.764893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533264, 38.874107, 37.446377>,  <47.261463, 39.260204, 37.295258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533264, 38.874107, 37.446377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.576859, 38.945621, 37.055244>,  <46.603016, 38.988529, 36.820564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.576859, 38.945621, 37.055244>,  <46.533264, 38.874107, 37.446377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576859, 38.945621, 37.055244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283731, -0.937175, -0.202980,
		-0.952690, 0.299564, -0.051411,
		0.108987, 0.178790, -0.977832,
		46.609554, 38.999260, 36.761894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895882, 38.709232, 37.073895>,  <46.533264, 38.874107, 37.446377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895882, 38.709232, 37.073895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173855, 38.665222, 36.789654>,  <46.340641, 38.638817, 36.619110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173855, 38.665222, 36.789654>,  <45.895882, 38.709232, 37.073895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173855, 38.665222, 36.789654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455970, -0.831564, -0.317162,
		-0.556018, 0.544422, -0.628051,
		0.694935, -0.110025, -0.710605,
		46.382336, 38.632214, 36.576473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513123, 38.636173, 36.429298>,  <45.895882, 38.709232, 37.073895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513123, 38.636173, 36.429298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882786, 38.499603, 36.360748>,  <46.104584, 38.417660, 36.319618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882786, 38.499603, 36.360748>,  <45.513123, 38.636173, 36.429298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882786, 38.499603, 36.360748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381967, -0.833274, -0.399695,
		-0.006336, 0.434839, -0.900486,
		0.924154, -0.341423, -0.171374,
		46.160030, 38.397175, 36.309338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527153, 38.566826, 35.710430>,  <45.513123, 38.636173, 36.429298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527153, 38.566826, 35.710430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821579, 38.343338, 35.863293>,  <45.998234, 38.209244, 35.955009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821579, 38.343338, 35.863293>,  <45.527153, 38.566826, 35.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821579, 38.343338, 35.863293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260333, -0.754790, -0.602095,
		0.624851, 0.343691, -0.701026,
		0.736062, -0.558720, 0.382157,
		46.042397, 38.175720, 35.977940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819122, 38.263561, 35.152176>,  <45.527153, 38.566826, 35.710430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819122, 38.263561, 35.152176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917362, 38.019287, 35.453304>,  <45.976307, 37.872723, 35.633984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917362, 38.019287, 35.453304>,  <45.819122, 38.263561, 35.152176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917362, 38.019287, 35.453304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273630, -0.788704, -0.550520,
		0.929950, -0.070788, -0.360807,
		0.245600, -0.610684, 0.752825,
		45.991043, 37.836082, 35.679153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048931, 37.765511, 34.709057>,  <45.819122, 38.263561, 35.152176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048931, 37.765511, 34.709057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012821, 37.567932, 35.054974>,  <45.991154, 37.449387, 35.262524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012821, 37.567932, 35.054974>,  <46.048931, 37.765511, 34.709057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012821, 37.567932, 35.054974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199597, -0.841750, -0.501616,
		0.975711, -0.217895, -0.022599,
		-0.090277, -0.493943, 0.864795,
		45.985737, 37.419750, 35.314411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555824, 37.154087, 34.704872>,  <46.048931, 37.765511, 34.709057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555824, 37.154087, 34.704872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236656, 37.076763, 34.933243>,  <46.045155, 37.030369, 35.070267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236656, 37.076763, 34.933243>,  <46.555824, 37.154087, 34.704872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236656, 37.076763, 34.933243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161700, -0.843809, -0.511702,
		0.580671, -0.500615, 0.642032,
		-0.797919, -0.193314, 0.570925,
		45.997280, 37.018768, 35.104519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601818, 36.366085, 35.005074>,  <46.555824, 37.154087, 34.704872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601818, 36.366085, 35.005074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227093, 36.497017, 34.955696>,  <46.002258, 36.575577, 34.926071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227093, 36.497017, 34.955696>,  <46.601818, 36.366085, 35.005074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.227093, 36.497017, 34.955696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257476, -0.884028, -0.390129,
		-0.236825, -0.333695, 0.912448,
		-0.936814, 0.327326, -0.123441,
		45.946049, 36.595215, 34.918663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149376, 36.210361, 35.312450>,  <46.601818, 36.366085, 35.005074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149376, 36.210361, 35.312450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447014, 36.052933, 35.096516>,  <47.625595, 35.958473, 34.966953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447014, 36.052933, 35.096516>,  <47.149376, 36.210361, 35.312450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.447014, 36.052933, 35.096516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448852, -0.303996, 0.840308,
		-0.494833, -0.867575, -0.049544,
		0.744092, -0.393574, -0.539840,
		47.670242, 35.934860, 34.934563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.121784, 35.415768, 35.344318>,  <47.149376, 36.210361, 35.312450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.121784, 35.415768, 35.344318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484852, 35.582581, 35.325462>,  <47.702690, 35.682671, 35.314148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484852, 35.582581, 35.325462>,  <47.121784, 35.415768, 35.344318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.484852, 35.582581, 35.325462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229306, -0.398704, 0.887949,
		0.351510, -0.816773, -0.457519,
		0.907667, 0.417035, -0.047143,
		47.757153, 35.707691, 35.311321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.656822, 34.906696, 35.374466>,  <47.121784, 35.415768, 35.344318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.656822, 34.906696, 35.374466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797398, 35.256641, 35.507797>,  <47.881744, 35.466610, 35.587795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797398, 35.256641, 35.507797>,  <47.656822, 34.906696, 35.374466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.797398, 35.256641, 35.507797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460904, -0.471580, 0.751785,
		0.814897, -0.110578, -0.568960,
		0.351441, 0.874863, 0.333323,
		47.902828, 35.519100, 35.607796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480183, 34.918270, 34.653534>,  <47.656822, 34.906696, 35.374466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480183, 34.918270, 34.653534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816628, 34.805542, 34.838184>,  <48.018494, 34.737904, 34.948975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816628, 34.805542, 34.838184>,  <47.480183, 34.918270, 34.653534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.816628, 34.805542, 34.838184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124384, 0.729846, 0.672200,
		-0.526359, -0.622817, 0.578831,
		0.841115, -0.281821, 0.461630,
		48.068962, 34.720997, 34.976673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.588318, 34.321621, 43.384624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589188, 33.922947, 43.352097>,  <35.589710, 33.683743, 43.332581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589188, 33.922947, 43.352097>,  <35.588318, 34.321621, 43.384624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589188, 33.922947, 43.352097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158348, 0.080641, -0.984085,
		0.987381, -0.010736, 0.157999,
		0.002176, -0.996686, -0.081323,
		35.589840, 33.623940, 43.327698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228672, 34.122383, 42.885689>,  <35.588318, 34.321621, 43.384624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228672, 34.122383, 42.885689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959484, 33.827217, 42.865345>,  <35.797970, 33.650116, 42.853138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959484, 33.827217, 42.865345>,  <36.228672, 34.122383, 42.885689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959484, 33.827217, 42.865345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068013, 0.006730, -0.997662,
		0.736535, -0.674857, 0.045659,
		-0.672971, -0.737918, -0.050855,
		35.757591, 33.605843, 42.850090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453377, 33.649975, 42.430439>,  <36.228672, 34.122383, 42.885689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453377, 33.649975, 42.430439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058735, 33.585110, 42.437447>,  <35.821949, 33.546192, 42.441650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058735, 33.585110, 42.437447>,  <36.453377, 33.649975, 42.430439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058735, 33.585110, 42.437447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025118, 0.044930, -0.998674,
		0.161159, -0.985741, -0.048402,
		-0.986609, -0.162161, 0.017519,
		35.762753, 33.536461, 42.442703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287937, 33.087048, 42.010574>,  <36.453377, 33.649975, 42.430439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287937, 33.087048, 42.010574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948391, 33.297733, 42.028458>,  <35.744663, 33.424145, 42.039188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948391, 33.297733, 42.028458>,  <36.287937, 33.087048, 42.010574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948391, 33.297733, 42.028458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093157, -0.065798, -0.993475,
		-0.520340, -0.847489, 0.104921,
		-0.848862, 0.526719, 0.044712,
		35.693733, 33.455750, 42.041870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825481, 32.736324, 41.560005>,  <36.287937, 33.087048, 42.010574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825481, 32.736324, 41.560005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655472, 33.097240, 41.588917>,  <35.553467, 33.313789, 41.606266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655472, 33.097240, 41.588917>,  <35.825481, 32.736324, 41.560005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655472, 33.097240, 41.588917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183853, -0.007863, -0.982922,
		-0.886315, -0.431054, 0.169231,
		-0.425023, 0.902292, 0.072282,
		35.527966, 33.367928, 41.610600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212402, 32.676659, 41.159657>,  <35.825481, 32.736324, 41.560005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212402, 32.676659, 41.159657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302063, 33.064121, 41.202477>,  <35.355858, 33.296600, 41.228168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302063, 33.064121, 41.202477>,  <35.212402, 32.676659, 41.159657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302063, 33.064121, 41.202477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199323, 0.153086, -0.967902,
		-0.953953, 0.195619, 0.227390,
		0.224150, 0.968658, 0.107045,
		35.369308, 33.354717, 41.234589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738953, 33.027184, 40.746861>,  <35.212402, 32.676659, 41.159657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738953, 33.027184, 40.746861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989071, 33.329823, 40.823341>,  <35.139141, 33.511406, 40.869232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989071, 33.329823, 40.823341>,  <34.738953, 33.027184, 40.746861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989071, 33.329823, 40.823341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023209, 0.226877, -0.973647,
		-0.780041, 0.613257, 0.124306,
		0.625298, 0.756599, 0.191207,
		35.176659, 33.556801, 40.880703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422722, 33.659359, 40.397320>,  <34.738953, 33.027184, 40.746861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422722, 33.659359, 40.397320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822609, 33.664665, 40.405109>,  <35.062542, 33.667847, 40.409782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822609, 33.664665, 40.405109>,  <34.422722, 33.659359, 40.397320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822609, 33.664665, 40.405109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011175, 0.460763, -0.887453,
		-0.020743, 0.887424, 0.460487,
		0.999722, 0.013262, 0.019475,
		35.122524, 33.668644, 40.410954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469223, 33.946247, 39.840782>,  <34.422722, 33.659359, 40.397320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469223, 33.946247, 39.840782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853191, 33.865795, 39.918858>,  <35.083572, 33.817524, 39.965702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853191, 33.865795, 39.918858>,  <34.469223, 33.946247, 39.840782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853191, 33.865795, 39.918858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266547, 0.439935, -0.857560,
		0.086610, 0.875217, 0.475914,
		0.959923, -0.201127, 0.195184,
		35.141167, 33.805458, 39.977413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795540, 34.490551, 39.524811>,  <34.469223, 33.946247, 39.840782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795540, 34.490551, 39.524811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092628, 34.227791, 39.576721>,  <35.270882, 34.070133, 39.607868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092628, 34.227791, 39.576721>,  <34.795540, 34.490551, 39.524811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092628, 34.227791, 39.576721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397270, 0.276278, -0.875127,
		0.539019, 0.701533, 0.466165,
		0.742722, -0.656904, 0.129779,
		35.315445, 34.030720, 39.615654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481918, 34.817814, 39.511665>,  <34.795540, 34.490551, 39.524811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481918, 34.817814, 39.511665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529457, 34.436855, 39.399372>,  <35.557980, 34.208279, 39.331997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529457, 34.436855, 39.399372>,  <35.481918, 34.817814, 39.511665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529457, 34.436855, 39.399372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336641, 0.304643, -0.890991,
		0.934102, 0.011388, 0.356824,
		0.118850, -0.952398, -0.280734,
		35.565113, 34.151134, 39.315151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252182, 34.671917, 39.280300>,  <35.481918, 34.817814, 39.511665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252182, 34.671917, 39.280300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001312, 34.411514, 39.109257>,  <35.850792, 34.255272, 39.006630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001312, 34.411514, 39.109257>,  <36.252182, 34.671917, 39.280300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001312, 34.411514, 39.109257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411773, 0.188874, -0.891499,
		0.661135, -0.735198, 0.149612,
		-0.627170, -0.651007, -0.427606,
		35.813160, 34.216213, 38.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696739, 34.470909, 38.772411>,  <36.252182, 34.671917, 39.280300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696739, 34.470909, 38.772411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.338554, 34.316387, 38.683937>,  <36.123646, 34.223675, 38.630852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.338554, 34.316387, 38.683937>,  <36.696739, 34.470909, 38.772411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338554, 34.316387, 38.683937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201515, 0.091268, -0.975224,
		0.396922, -0.917844, -0.003880,
		-0.895458, -0.386305, -0.221186,
		36.069916, 34.200497, 38.617580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886318, 34.093624, 38.265388>,  <36.696739, 34.470909, 38.772411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886318, 34.093624, 38.265388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491447, 34.145535, 38.228195>,  <36.254524, 34.176682, 38.205879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491447, 34.145535, 38.228195>,  <36.886318, 34.093624, 38.265388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491447, 34.145535, 38.228195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116177, 0.184439, -0.975954,
		-0.109505, -0.974239, -0.197151,
		-0.987173, 0.129777, -0.092987,
		36.195297, 34.184467, 38.200298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798496, 33.895393, 37.529594>,  <36.886318, 34.093624, 38.265388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798496, 33.895393, 37.529594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459148, 34.073097, 37.644760>,  <36.255539, 34.179722, 37.713860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459148, 34.073097, 37.644760>,  <36.798496, 33.895393, 37.529594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459148, 34.073097, 37.644760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114706, 0.376677, -0.919215,
		-0.516825, -0.812862, -0.268603,
		-0.848372, 0.444263, 0.287916,
		36.204636, 34.206375, 37.731136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217987, 33.800484, 36.970612>,  <36.798496, 33.895393, 37.529594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217987, 33.800484, 36.970612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109062, 34.123066, 37.180553>,  <36.043705, 34.316616, 37.306519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109062, 34.123066, 37.180553>,  <36.217987, 33.800484, 36.970612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109062, 34.123066, 37.180553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151483, 0.502736, -0.851064,
		-0.950209, -0.311264, -0.014738,
		-0.272315, 0.806456, 0.524856,
		36.027367, 34.365002, 37.338009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778797, 34.087540, 36.586159>,  <36.217987, 33.800484, 36.970612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778797, 34.087540, 36.586159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881676, 34.404583, 36.807293>,  <35.943405, 34.594810, 36.939972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881676, 34.404583, 36.807293>,  <35.778797, 34.087540, 36.586159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881676, 34.404583, 36.807293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191957, 0.602581, -0.774628,
		-0.947101, 0.093115, 0.307130,
		0.257200, 0.792607, 0.552831,
		35.958836, 34.642365, 36.973141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223656, 34.726109, 36.537846>,  <35.778797, 34.087540, 36.586159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223656, 34.726109, 36.537846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574543, 34.873863, 36.660515>,  <35.785076, 34.962517, 36.734116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574543, 34.873863, 36.660515>,  <35.223656, 34.726109, 36.537846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574543, 34.873863, 36.660515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014076, 0.618712, -0.785492,
		-0.479893, 0.693362, 0.537543,
		0.877214, 0.369385, 0.306675,
		35.837708, 34.984680, 36.752518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246933, 35.308815, 36.280708>,  <35.223656, 34.726109, 36.537846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246933, 35.308815, 36.280708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629158, 35.321968, 36.397881>,  <35.858494, 35.329861, 36.468185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629158, 35.321968, 36.397881>,  <35.246933, 35.308815, 36.280708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629158, 35.321968, 36.397881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187910, 0.697717, -0.691289,
		-0.227117, 0.715619, 0.660536,
		0.955567, 0.032882, 0.292935,
		35.915829, 35.331833, 36.485760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395721, 36.029877, 36.362183>,  <35.246933, 35.308815, 36.280708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395721, 36.029877, 36.362183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733498, 35.833652, 36.276142>,  <35.936165, 35.715919, 36.224518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733498, 35.833652, 36.276142>,  <35.395721, 36.029877, 36.362183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733498, 35.833652, 36.276142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278543, 0.745163, -0.605926,
		0.457526, 0.451756, 0.765890,
		0.844443, -0.490560, -0.215098,
		35.986832, 35.686485, 36.211613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881325, 36.567207, 36.388817>,  <35.395721, 36.029877, 36.362183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881325, 36.567207, 36.388817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057171, 36.269817, 36.187229>,  <36.162678, 36.091381, 36.066277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057171, 36.269817, 36.187229>,  <35.881325, 36.567207, 36.388817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057171, 36.269817, 36.187229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283003, 0.647167, -0.707873,
		0.852438, 0.168565, 0.494909,
		0.439611, -0.743479, -0.503966,
		36.189053, 36.046772, 36.036041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675262, 36.659489, 36.282490>,  <35.881325, 36.567207, 36.388817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675262, 36.659489, 36.282490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.498611, 36.446739, 35.993473>,  <36.392620, 36.319088, 35.820065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.498611, 36.446739, 35.993473>,  <36.675262, 36.659489, 36.282490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498611, 36.446739, 35.993473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319080, 0.659573, -0.680552,
		0.838541, -0.531101, -0.121576,
		-0.441630, -0.531878, -0.722543,
		36.366123, 36.287174, 35.776711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256081, 36.582695, 35.754459>,  <36.675262, 36.659489, 36.282490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256081, 36.582695, 35.754459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.628628, 36.709743, 35.683262>,  <37.852154, 36.785973, 35.640545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.628628, 36.709743, 35.683262>,  <37.256081, 36.582695, 35.754459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628628, 36.709743, 35.683262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274222, -0.290339, 0.916791,
		0.239510, -0.902675, -0.357509,
		0.931363, 0.317618, -0.177994,
		37.908035, 36.805027, 35.629864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726505, 35.995850, 35.866150>,  <37.256081, 36.582695, 35.754459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726505, 35.995850, 35.866150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924202, 36.342274, 35.896236>,  <38.042820, 36.550129, 35.914288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924202, 36.342274, 35.896236>,  <37.726505, 35.995850, 35.866150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924202, 36.342274, 35.896236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436946, -0.322284, 0.839768,
		0.751532, -0.382186, -0.537710,
		0.494244, 0.866064, 0.075212,
		38.072475, 36.602093, 35.918800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454575, 35.764400, 36.119038>,  <37.726505, 35.995850, 35.866150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454575, 35.764400, 36.119038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394123, 36.147133, 36.218338>,  <38.357853, 36.376774, 36.277916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394123, 36.147133, 36.218338>,  <38.454575, 35.764400, 36.119038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394123, 36.147133, 36.218338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358572, -0.180964, 0.915794,
		0.921187, 0.227416, -0.315746,
		-0.151128, 0.956835, 0.248247,
		38.348785, 36.434185, 36.292812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904003, 35.872780, 36.580639>,  <38.454575, 35.764400, 36.119038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904003, 35.872780, 36.580639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726013, 36.226963, 36.634239>,  <38.619221, 36.439472, 36.666401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726013, 36.226963, 36.634239>,  <38.904003, 35.872780, 36.580639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726013, 36.226963, 36.634239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201186, -0.046969, 0.978426,
		0.872653, 0.462332, -0.157243,
		-0.444972, 0.885462, 0.134003,
		38.592522, 36.492603, 36.674438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325138, 36.175903, 36.956287>,  <38.904003, 35.872780, 36.580639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325138, 36.175903, 36.956287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961365, 36.335285, 37.003887>,  <38.743099, 36.430916, 37.032448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961365, 36.335285, 37.003887>,  <39.325138, 36.175903, 36.956287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961365, 36.335285, 37.003887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118045, -0.027024, 0.992640,
		0.398742, 0.916788, -0.022459,
		-0.909434, 0.398459, 0.118998,
		38.688534, 36.454823, 37.039585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437737, 36.692005, 37.505344>,  <39.325138, 36.175903, 36.956287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437737, 36.692005, 37.505344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051983, 36.586391, 37.499008>,  <38.820530, 36.523022, 37.495209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051983, 36.586391, 37.499008>,  <39.437737, 36.692005, 37.505344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051983, 36.586391, 37.499008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043292, -0.216620, 0.975296,
		-0.260944, 0.939873, 0.220335,
		-0.964383, -0.264037, -0.015837,
		38.762669, 36.507179, 37.494259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073776, 37.198048, 37.956123>,  <39.437737, 36.692005, 37.505344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073776, 37.198048, 37.956123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822556, 36.887833, 37.930546>,  <38.671825, 36.701702, 37.915199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822556, 36.887833, 37.930546>,  <39.073776, 37.198048, 37.956123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822556, 36.887833, 37.930546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110756, 0.007754, 0.993817,
		-0.770251, 0.631249, -0.090766,
		-0.628050, -0.775542, -0.063942,
		38.634140, 36.655170, 37.911362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461273, 37.330345, 38.426323>,  <39.073776, 37.198048, 37.956123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461273, 37.330345, 38.426323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445087, 36.937756, 38.351402>,  <38.435375, 36.702202, 38.306450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445087, 36.937756, 38.351402>,  <38.461273, 37.330345, 38.426323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445087, 36.937756, 38.351402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126616, -0.180903, 0.975317,
		-0.991126, 0.063183, -0.116949,
		-0.040467, -0.981469, -0.187298,
		38.432949, 36.643314, 38.295212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874691, 37.092007, 38.697742>,  <38.461273, 37.330345, 38.426323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874691, 37.092007, 38.697742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.090778, 36.758537, 38.651875>,  <38.220432, 36.558456, 38.624352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.090778, 36.758537, 38.651875>,  <37.874691, 37.092007, 38.697742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090778, 36.758537, 38.651875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279928, -0.306533, 0.909768,
		-0.793602, -0.459374, -0.398964,
		0.540220, -0.833675, -0.114674,
		38.252846, 36.508434, 38.617474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429821, 36.507549, 38.825108>,  <37.874691, 37.092007, 38.697742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429821, 36.507549, 38.825108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811268, 36.401897, 38.882877>,  <38.040134, 36.338509, 38.917542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811268, 36.401897, 38.882877>,  <37.429821, 36.507549, 38.825108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811268, 36.401897, 38.882877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237829, -0.366897, 0.899346,
		-0.184550, -0.891978, -0.412694,
		0.953613, -0.264125, 0.144427,
		38.097351, 36.322659, 38.926205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422394, 36.014378, 39.319103>,  <37.429821, 36.507549, 38.825108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422394, 36.014378, 39.319103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816578, 36.076080, 39.347569>,  <38.053089, 36.113102, 39.364647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816578, 36.076080, 39.347569>,  <37.422394, 36.014378, 39.319103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816578, 36.076080, 39.347569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029416, -0.257649, 0.965791,
		0.167317, -0.953846, -0.249366,
		0.985464, 0.154257, 0.071168,
		38.112217, 36.122356, 39.368919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748398, 35.330879, 39.387863>,  <37.422394, 36.014378, 39.319103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748398, 35.330879, 39.387863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982983, 35.610046, 39.552288>,  <38.123734, 35.777546, 39.650944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982983, 35.610046, 39.552288>,  <37.748398, 35.330879, 39.387863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982983, 35.610046, 39.552288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104929, -0.437762, 0.892947,
		0.803153, -0.566811, -0.183498,
		0.586460, 0.697919, 0.411064,
		38.158920, 35.819424, 39.675606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080490, 34.950741, 39.900799>,  <37.748398, 35.330879, 39.387863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080490, 34.950741, 39.900799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206680, 35.317715, 39.997787>,  <38.282394, 35.537899, 40.055981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206680, 35.317715, 39.997787>,  <38.080490, 34.950741, 39.900799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206680, 35.317715, 39.997787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208090, -0.316184, 0.925595,
		0.925837, -0.241547, -0.290657,
		0.315476, 0.917433, 0.242471,
		38.301323, 35.592945, 40.070530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794552, 34.903950, 40.333691>,  <38.080490, 34.950741, 39.900799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794552, 34.903950, 40.333691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554218, 35.215244, 40.406723>,  <38.410019, 35.402023, 40.450542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554218, 35.215244, 40.406723>,  <38.794552, 34.903950, 40.333691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554218, 35.215244, 40.406723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152679, -0.112476, 0.981854,
		0.784654, 0.617813, -0.051241,
		-0.600839, 0.778239, 0.182582,
		38.373966, 35.448715, 40.461498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133675, 35.356220, 40.800694>,  <38.794552, 34.903950, 40.333691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133675, 35.356220, 40.800694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.748203, 35.451305, 40.849388>,  <38.516922, 35.508354, 40.878605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.748203, 35.451305, 40.849388>,  <39.133675, 35.356220, 40.800694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748203, 35.451305, 40.849388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123482, -0.007597, 0.992318,
		0.236808, 0.971307, -0.022031,
		-0.963677, 0.237709, 0.121738,
		38.459099, 35.522617, 40.885910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199715, 35.816967, 41.289345>,  <39.133675, 35.356220, 40.800694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199715, 35.816967, 41.289345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811981, 35.719753, 41.303913>,  <38.579342, 35.661427, 41.312653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811981, 35.719753, 41.303913>,  <39.199715, 35.816967, 41.289345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811981, 35.719753, 41.303913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021945, 0.233219, 0.972176,
		-0.244766, 0.941564, -0.231401,
		-0.969334, -0.243034, 0.036421,
		38.521179, 35.646843, 41.314838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922783, 36.236874, 41.790752>,  <39.199715, 35.816967, 41.289345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922783, 36.236874, 41.790752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636021, 35.958046, 41.785923>,  <38.463963, 35.790749, 41.783028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636021, 35.958046, 41.785923>,  <38.922783, 36.236874, 41.790752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636021, 35.958046, 41.785923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031556, -0.049740, 0.998264,
		-0.696455, 0.715280, 0.057656,
		-0.716906, -0.697065, -0.012070,
		38.420948, 35.748928, 41.782303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354935, 36.515610, 42.253773>,  <38.922783, 36.236874, 41.790752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354935, 36.515610, 42.253773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252522, 36.129566, 42.231781>,  <38.191074, 35.897942, 42.218586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252522, 36.129566, 42.231781>,  <38.354935, 36.515610, 42.253773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252522, 36.129566, 42.231781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035903, -0.066329, 0.997152,
		-0.966002, 0.253326, 0.051633,
		-0.256029, -0.965104, -0.054979,
		38.175713, 35.840034, 42.215286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.089184, 36.039410, 42.591858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380272, 35.765305, 42.580334>,  <37.554924, 35.600842, 42.573418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380272, 35.765305, 42.580334>,  <37.089184, 36.039410, 42.591858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380272, 35.765305, 42.580334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232919, -0.286427, 0.929359,
		-0.645111, -0.669604, -0.368051,
		0.727723, -0.685266, -0.028814,
		37.598587, 35.559727, 42.571690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806656, 35.417625, 42.794765>,  <37.089184, 36.039410, 42.591858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806656, 35.417625, 42.794765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202900, 35.403622, 42.847641>,  <37.440647, 35.395222, 42.879364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202900, 35.403622, 42.847641>,  <36.806656, 35.417625, 42.794765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202900, 35.403622, 42.847641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136738, -0.246161, 0.959535,
		-0.001049, -0.968597, -0.248635,
		0.990607, -0.035004, 0.132186,
		37.500080, 35.393120, 42.887295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948814, 34.691956, 43.128452>,  <36.806656, 35.417625, 42.794765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948814, 34.691956, 43.128452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.262833, 34.921879, 43.220802>,  <37.451244, 35.059834, 43.276211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.262833, 34.921879, 43.220802>,  <36.948814, 34.691956, 43.128452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262833, 34.921879, 43.220802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047523, -0.315723, 0.947661,
		0.617612, -0.754929, -0.220540,
		0.785046, 0.574805, 0.230871,
		37.498348, 35.094322, 43.290062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414631, 34.229607, 43.444431>,  <36.948814, 34.691956, 43.128452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414631, 34.229607, 43.444431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517452, 34.599388, 43.557079>,  <37.579144, 34.821259, 43.624668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517452, 34.599388, 43.557079>,  <37.414631, 34.229607, 43.444431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517452, 34.599388, 43.557079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036623, -0.300519, 0.953072,
		0.965704, -0.234674, -0.111105,
		0.257050, 0.924455, 0.281618,
		37.594566, 34.876724, 43.641563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898293, 34.065289, 43.866978>,  <37.414631, 34.229607, 43.444431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898293, 34.065289, 43.866978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787010, 34.436131, 43.967442>,  <37.720242, 34.658634, 44.027721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787010, 34.436131, 43.967442>,  <37.898293, 34.065289, 43.866978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787010, 34.436131, 43.967442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102226, -0.231424, 0.967467,
		0.955066, 0.294831, -0.030391,
		-0.278206, 0.927102, 0.251164,
		37.703548, 34.714260, 44.042789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378616, 34.150066, 44.336739>,  <37.898293, 34.065289, 43.866978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378616, 34.150066, 44.336739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106922, 34.434723, 44.408527>,  <37.943905, 34.605518, 44.451599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106922, 34.434723, 44.408527>,  <38.378616, 34.150066, 44.336739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106922, 34.434723, 44.408527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195876, -0.059887, 0.978798,
		0.707301, 0.699986, -0.098716,
		-0.679234, 0.711641, 0.179468,
		37.903152, 34.648216, 44.462368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689152, 34.610802, 44.837769>,  <38.378616, 34.150066, 44.336739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689152, 34.610802, 44.837769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.293560, 34.644554, 44.886421>,  <38.056206, 34.664806, 44.915611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.293560, 34.644554, 44.886421>,  <38.689152, 34.610802, 44.837769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293560, 34.644554, 44.886421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097841, -0.243996, 0.964828,
		0.111095, 0.966098, 0.233051,
		-0.988982, 0.084385, 0.121631,
		37.996864, 34.669868, 44.922909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650780, 34.883472, 45.495125>,  <38.689152, 34.610802, 44.837769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650780, 34.883472, 45.495125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271759, 34.779789, 45.420341>,  <38.044346, 34.717579, 45.375473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271759, 34.779789, 45.420341>,  <38.650780, 34.883472, 45.495125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271759, 34.779789, 45.420341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111466, -0.280215, 0.953444,
		-0.299528, 0.924278, 0.236626,
		-0.947554, -0.259207, -0.186958,
		37.987492, 34.702026, 45.364254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179909, 35.254318, 45.942577>,  <38.650780, 34.883472, 45.495125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179909, 35.254318, 45.942577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013371, 34.903484, 45.846771>,  <37.913448, 34.692982, 45.789288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013371, 34.903484, 45.846771>,  <38.179909, 35.254318, 45.942577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013371, 34.903484, 45.846771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120760, -0.207757, 0.970698,
		-0.901150, 0.433072, -0.019418,
		-0.416348, -0.877089, -0.239518,
		37.888466, 34.640358, 45.774918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742699, 35.104431, 46.410862>,  <38.179909, 35.254318, 45.942577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742699, 35.104431, 46.410862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807987, 34.736111, 46.269173>,  <37.847160, 34.515118, 46.184158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807987, 34.736111, 46.269173>,  <37.742699, 35.104431, 46.410862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807987, 34.736111, 46.269173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134040, -0.376410, 0.916705,
		-0.977441, -0.102147, -0.184863,
		0.163223, -0.920805, -0.354227,
		37.856953, 34.459869, 46.162903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517815, 34.596081, 46.984051>,  <37.742699, 35.104431, 46.410862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517815, 34.596081, 46.984051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690815, 34.314960, 46.758129>,  <37.794617, 34.146286, 46.622574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690815, 34.314960, 46.758129>,  <37.517815, 34.596081, 46.984051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690815, 34.314960, 46.758129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113870, -0.578833, 0.807456,
		-0.894412, -0.413543, -0.170320,
		0.432504, -0.702804, -0.564806,
		37.820568, 34.104118, 46.588688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263515, 33.979668, 47.167957>,  <37.517815, 34.596081, 46.984051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263515, 33.979668, 47.167957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.620571, 33.886974, 47.013298>,  <37.834805, 33.831360, 46.920502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.620571, 33.886974, 47.013298>,  <37.263515, 33.979668, 47.167957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620571, 33.886974, 47.013298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277342, -0.393843, 0.876339,
		-0.355349, -0.889489, -0.287292,
		0.892641, -0.231728, -0.386644,
		37.888363, 33.817455, 46.897305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389820, 33.391239, 47.487366>,  <37.263515, 33.979668, 47.167957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389820, 33.391239, 47.487366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754559, 33.506279, 47.370182>,  <37.973400, 33.575302, 47.299873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754559, 33.506279, 47.370182>,  <37.389820, 33.391239, 47.487366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754559, 33.506279, 47.370182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400407, -0.465516, 0.789284,
		0.090624, -0.837007, -0.539636,
		0.911846, 0.287602, -0.292956,
		38.028111, 33.592560, 47.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841858, 32.811058, 47.719124>,  <37.389820, 33.391239, 47.487366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841858, 32.811058, 47.719124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067127, 33.140697, 47.694828>,  <38.202290, 33.338482, 47.680252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067127, 33.140697, 47.694828>,  <37.841858, 32.811058, 47.719124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067127, 33.140697, 47.694828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501971, -0.282795, 0.817345,
		0.656399, -0.490797, -0.572939,
		0.563174, 0.824103, -0.060740,
		38.236080, 33.387928, 47.676605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489750, 32.610039, 47.779160>,  <37.841858, 32.811058, 47.719124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489750, 32.610039, 47.779160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577511, 32.993916, 47.849419>,  <38.630169, 33.224243, 47.891575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577511, 32.993916, 47.849419>,  <38.489750, 32.610039, 47.779160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577511, 32.993916, 47.849419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627345, -0.276652, 0.727944,
		0.747196, -0.049520, -0.662756,
		0.219401, 0.959693, 0.175647,
		38.643330, 33.281822, 47.902111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272797, 32.692341, 47.842617>,  <38.489750, 32.610039, 47.779160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272797, 32.692341, 47.842617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120270, 33.019089, 48.015739>,  <39.028755, 33.215137, 48.119614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120270, 33.019089, 48.015739>,  <39.272797, 32.692341, 47.842617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120270, 33.019089, 48.015739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626800, -0.115666, 0.770547,
		0.679499, 0.565103, -0.467910,
		-0.381317, 0.816872, 0.432802,
		39.005875, 33.264149, 48.145580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839828, 33.062855, 48.142418>,  <39.272797, 32.692341, 47.842617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839828, 33.062855, 48.142418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518921, 33.185360, 48.347385>,  <39.326378, 33.258862, 48.470367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518921, 33.185360, 48.347385>,  <39.839828, 33.062855, 48.142418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518921, 33.185360, 48.347385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499437, -0.125857, 0.857160,
		0.327006, 0.943591, -0.051987,
		-0.802266, 0.306261, 0.512420,
		39.278240, 33.277237, 48.501110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043636, 33.486435, 48.700428>,  <39.839828, 33.062855, 48.142418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043636, 33.486435, 48.700428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.679592, 33.368721, 48.817116>,  <39.461166, 33.298092, 48.887127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.679592, 33.368721, 48.817116>,  <40.043636, 33.486435, 48.700428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679592, 33.368721, 48.817116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329853, -0.088425, 0.939882,
		-0.250794, 0.951620, 0.177546,
		-0.910109, -0.294281, 0.291719,
		39.406559, 33.280437, 48.904633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915707, 33.842300, 49.300377>,  <40.043636, 33.486435, 48.700428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915707, 33.842300, 49.300377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.670734, 33.526363, 49.287277>,  <39.523750, 33.336800, 49.279419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.670734, 33.526363, 49.287277>,  <39.915707, 33.842300, 49.300377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670734, 33.526363, 49.287277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272060, -0.249484, 0.929377,
		-0.742236, 0.560268, 0.367677,
		-0.612429, -0.789847, -0.032749,
		39.487007, 33.289410, 49.277454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584652, 33.791500, 50.032429>,  <39.915707, 33.842300, 49.300377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584652, 33.791500, 50.032429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.551098, 33.439053, 49.846272>,  <39.530964, 33.227585, 49.734577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.551098, 33.439053, 49.846272>,  <39.584652, 33.791500, 50.032429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551098, 33.439053, 49.846272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234753, -0.471368, 0.850119,
		-0.968429, -0.037940, 0.246386,
		-0.083885, -0.881120, -0.465393,
		39.525932, 33.174717, 49.706654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283630, 33.405807, 50.580311>,  <39.584652, 33.791500, 50.032429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283630, 33.405807, 50.580311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.426514, 33.149426, 50.308556>,  <39.512245, 32.995594, 50.145500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.426514, 33.149426, 50.308556>,  <39.283630, 33.405807, 50.580311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426514, 33.149426, 50.308556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289558, -0.615552, 0.732974,
		-0.888007, -0.458549, -0.034286,
		0.357210, -0.640959, -0.679392,
		39.533676, 32.957138, 50.104736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980572, 32.793587, 50.648777>,  <39.283630, 33.405807, 50.580311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980572, 32.793587, 50.648777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317772, 32.692608, 50.458778>,  <39.520092, 32.632019, 50.344780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317772, 32.692608, 50.458778>,  <38.980572, 32.793587, 50.648777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317772, 32.692608, 50.458778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201208, -0.670949, 0.713682,
		-0.498866, -0.697207, -0.514816,
		0.843000, -0.252447, -0.474997,
		39.570671, 32.616875, 50.316280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074429, 32.032986, 50.697609>,  <38.980572, 32.793587, 50.648777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074429, 32.032986, 50.697609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.416954, 32.226357, 50.624920>,  <39.622471, 32.342381, 50.581306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.416954, 32.226357, 50.624920>,  <39.074429, 32.032986, 50.697609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416954, 32.226357, 50.624920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442799, -0.506139, 0.740103,
		0.265811, -0.714226, -0.647476,
		0.856314, 0.483429, -0.181721,
		39.673847, 32.371384, 50.570404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902203, 31.339687, 50.635208>,  <39.074429, 32.032986, 50.697609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902203, 31.339687, 50.635208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941368, 30.948996, 50.558876>,  <38.964867, 30.714581, 50.513077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941368, 30.948996, 50.558876>,  <38.902203, 31.339687, 50.635208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941368, 30.948996, 50.558876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200982, 0.168396, -0.965013,
		0.974690, 0.132840, -0.179817,
		0.097911, -0.976728, -0.190832,
		38.970741, 30.655977, 50.501625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318237, 31.281414, 50.047436>,  <38.902203, 31.339687, 50.635208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318237, 31.281414, 50.047436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066307, 30.971519, 50.069717>,  <38.915150, 30.785583, 50.083084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066307, 30.971519, 50.069717>,  <39.318237, 31.281414, 50.047436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066307, 30.971519, 50.069717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248835, 0.133319, -0.959327,
		0.735798, -0.618070, -0.276749,
		-0.629827, -0.774735, 0.055701,
		38.877357, 30.739100, 50.086430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418579, 30.901014, 49.494251>,  <39.318237, 31.281414, 50.047436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418579, 30.901014, 49.494251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046551, 30.794222, 49.595192>,  <38.823334, 30.730146, 49.655758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046551, 30.794222, 49.595192>,  <39.418579, 30.901014, 49.494251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046551, 30.794222, 49.595192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333926, 0.328009, -0.883688,
		0.153153, -0.906163, -0.394224,
		-0.930074, -0.266981, 0.252356,
		38.767529, 30.714127, 49.670898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174675, 30.639563, 48.818035>,  <39.418579, 30.901014, 49.494251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174675, 30.639563, 48.818035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846195, 30.703255, 49.037224>,  <38.649109, 30.741470, 49.168739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846195, 30.703255, 49.037224>,  <39.174675, 30.639563, 48.818035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846195, 30.703255, 49.037224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439723, 0.435456, -0.785507,
		-0.363697, -0.886015, -0.287579,
		-0.821199, 0.159231, 0.547976,
		38.599834, 30.751024, 49.201618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628773, 30.182751, 48.517521>,  <39.174675, 30.639563, 48.818035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628773, 30.182751, 48.517521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.453579, 30.461103, 48.745174>,  <38.348465, 30.628115, 48.881767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.453579, 30.461103, 48.745174>,  <38.628773, 30.182751, 48.517521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453579, 30.461103, 48.745174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608454, 0.236580, -0.757504,
		-0.661781, -0.678067, 0.319796,
		-0.437982, 0.695884, 0.569137,
		38.322186, 30.669868, 48.915916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948189, 30.063879, 48.370323>,  <38.628773, 30.182751, 48.517521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948189, 30.063879, 48.370323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955284, 30.438904, 48.509270>,  <37.959541, 30.663919, 48.592636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955284, 30.438904, 48.509270>,  <37.948189, 30.063879, 48.370323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955284, 30.438904, 48.509270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713522, 0.255242, -0.652485,
		-0.700408, -0.236278, 0.673500,
		0.017738, 0.937563, 0.347363,
		37.960606, 30.720173, 48.613480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251015, 30.221670, 48.522953>,  <37.948189, 30.063879, 48.370323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251015, 30.221670, 48.522953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452477, 30.555279, 48.432850>,  <37.573353, 30.755444, 48.378788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452477, 30.555279, 48.432850>,  <37.251015, 30.221670, 48.522953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452477, 30.555279, 48.432850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693135, 0.234484, -0.681602,
		-0.515651, 0.499427, 0.696187,
		0.503655, 0.834021, -0.225258,
		37.603573, 30.805485, 48.365273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786850, 30.633053, 48.252613>,  <37.251015, 30.221670, 48.522953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786850, 30.633053, 48.252613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111282, 30.829723, 48.125870>,  <37.305943, 30.947725, 48.049824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111282, 30.829723, 48.125870>,  <36.786850, 30.633053, 48.252613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111282, 30.829723, 48.125870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526945, 0.379019, -0.760706,
		-0.253925, 0.783962, 0.566502,
		0.811080, 0.491678, -0.316863,
		37.354607, 30.977226, 48.030811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532600, 31.337444, 48.208881>,  <36.786850, 30.633053, 48.252613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532600, 31.337444, 48.208881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853004, 31.282482, 47.975811>,  <37.045246, 31.249504, 47.835968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853004, 31.282482, 47.975811>,  <36.532600, 31.337444, 48.208881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853004, 31.282482, 47.975811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419595, 0.565361, -0.710146,
		0.427000, 0.813318, 0.395203,
		0.801007, -0.137407, -0.582673,
		37.093307, 31.241261, 47.801010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566013, 31.962246, 47.786072>,  <36.532600, 31.337444, 48.208881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566013, 31.962246, 47.786072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827328, 31.729900, 47.591831>,  <36.984116, 31.590492, 47.475288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827328, 31.729900, 47.591831>,  <36.566013, 31.962246, 47.786072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827328, 31.729900, 47.591831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358902, 0.327149, -0.874164,
		0.666636, 0.745365, 0.005249,
		0.653288, -0.580866, -0.485602,
		37.023315, 31.555641, 47.446152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901836, 32.434036, 47.353203>,  <36.566013, 31.962246, 47.786072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901836, 32.434036, 47.353203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961323, 32.068447, 47.202187>,  <36.997017, 31.849094, 47.111576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961323, 32.068447, 47.202187>,  <36.901836, 32.434036, 47.353203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961323, 32.068447, 47.202187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034511, 0.376756, -0.925669,
		0.988277, 0.150694, 0.024489,
		0.148720, -0.913973, -0.377540,
		37.005939, 31.794256, 47.088924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409615, 32.440002, 46.973110>,  <36.901836, 32.434036, 47.353203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409615, 32.440002, 46.973110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226719, 32.120491, 46.816708>,  <37.116982, 31.928785, 46.722866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226719, 32.120491, 46.816708>,  <37.409615, 32.440002, 46.973110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226719, 32.120491, 46.816708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145588, 0.500958, -0.853139,
		0.877347, -0.333161, -0.345349,
		-0.457238, -0.798777, -0.391010,
		37.089546, 31.880857, 46.699406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644650, 32.468960, 46.324024>,  <37.409615, 32.440002, 46.973110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644650, 32.468960, 46.324024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335918, 32.215641, 46.301315>,  <37.150681, 32.063648, 46.287689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335918, 32.215641, 46.301315>,  <37.644650, 32.468960, 46.324024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335918, 32.215641, 46.301315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234285, 0.366260, -0.900535,
		0.591098, -0.681755, -0.431060,
		-0.771824, -0.633296, -0.056770,
		37.104370, 32.025654, 46.284283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717068, 32.248520, 45.639603>,  <37.644650, 32.468960, 46.324024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717068, 32.248520, 45.639603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351536, 32.138027, 45.758678>,  <37.132217, 32.071732, 45.830124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351536, 32.138027, 45.758678>,  <37.717068, 32.248520, 45.639603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351536, 32.138027, 45.758678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379058, 0.317138, -0.869332,
		0.145733, -0.907258, -0.394518,
		-0.913825, -0.276235, 0.297686,
		37.077389, 32.055157, 45.847984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374802, 31.819614, 45.130165>,  <37.717068, 32.248520, 45.639603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374802, 31.819614, 45.130165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082596, 32.001884, 45.333618>,  <36.907272, 32.111248, 45.455692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082596, 32.001884, 45.333618>,  <37.374802, 31.819614, 45.130165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082596, 32.001884, 45.333618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342972, 0.399257, -0.850273,
		-0.590526, -0.795583, -0.135378,
		-0.730513, 0.455677, 0.508635,
		36.863441, 32.138588, 45.486210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843433, 31.737963, 44.738243>,  <37.374802, 31.819614, 45.130165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843433, 31.737963, 44.738243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702415, 32.023945, 44.979755>,  <36.617805, 32.195534, 45.124660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702415, 32.023945, 44.979755>,  <36.843433, 31.737963, 44.738243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702415, 32.023945, 44.979755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400350, 0.467946, -0.787875,
		-0.845832, -0.519485, 0.121260,
		-0.352546, 0.714956, 0.603779,
		36.596653, 32.238430, 45.160889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049519, 31.781128, 44.718399>,  <36.843433, 31.737963, 44.738243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049519, 31.781128, 44.718399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148827, 32.153507, 44.825504>,  <36.208412, 32.376934, 44.889767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148827, 32.153507, 44.825504>,  <36.049519, 31.781128, 44.718399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148827, 32.153507, 44.825504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578037, 0.364185, -0.730235,
		-0.777325, 0.026522, 0.628540,
		0.248272, 0.930949, 0.267760,
		36.223309, 32.432793, 44.905830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399933, 32.172924, 44.888626>,  <36.049519, 31.781128, 44.718399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399933, 32.172924, 44.888626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687355, 32.442612, 44.820377>,  <35.859806, 32.604424, 44.779427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687355, 32.442612, 44.820377>,  <35.399933, 32.172924, 44.888626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687355, 32.442612, 44.820377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575211, 0.438240, -0.690709,
		-0.390915, 0.594456, 0.702715,
		0.718554, 0.674218, -0.170623,
		35.902920, 32.644878, 44.769192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035889, 32.650829, 44.693134>,  <35.399933, 32.172924, 44.888626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035889, 32.650829, 44.693134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387791, 32.809292, 44.587990>,  <35.598930, 32.904369, 44.524902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387791, 32.809292, 44.587990>,  <35.035889, 32.650829, 44.693134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387791, 32.809292, 44.587990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410857, 0.355290, -0.839622,
		-0.239231, 0.846657, 0.475332,
		0.879753, 0.396157, -0.262859,
		35.651718, 32.928139, 44.509132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008842, 33.441376, 44.568993>,  <35.035889, 32.650829, 44.693134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008842, 33.441376, 44.568993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312195, 33.293793, 44.354057>,  <35.494205, 33.205242, 44.225098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312195, 33.293793, 44.354057>,  <35.008842, 33.441376, 44.568993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312195, 33.293793, 44.354057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368913, 0.436660, -0.820507,
		0.537364, 0.820487, 0.195042,
		0.758382, -0.368958, -0.537334,
		35.539711, 33.183105, 44.192856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007885, 33.895679, 44.020203>,  <35.008842, 33.441376, 44.568993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007885, 33.895679, 44.020203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255112, 33.605747, 43.898472>,  <35.403450, 33.431789, 43.825432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255112, 33.605747, 43.898472>,  <35.007885, 33.895679, 44.020203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255112, 33.605747, 43.898472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301211, 0.139223, -0.943339,
		0.726127, 0.674717, -0.132277,
		0.618071, -0.724827, -0.304326,
		35.440533, 33.388298, 43.807175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.995884, 43.696732, 40.828728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643532, 43.629063, 40.651901>,  <44.432121, 43.588463, 40.545803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643532, 43.629063, 40.651901>,  <44.995884, 43.696732, 40.828728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643532, 43.629063, 40.651901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009882, -0.927176, 0.374495,
		-0.473230, 0.334255, 0.815063,
		-0.880884, -0.169168, -0.442070,
		44.379265, 43.578312, 40.519279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631489, 43.303452, 41.303772>,  <44.995884, 43.696732, 40.828728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631489, 43.303452, 41.303772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472324, 43.255341, 40.939972>,  <44.376823, 43.226475, 40.721691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472324, 43.255341, 40.939972>,  <44.631489, 43.303452, 41.303772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472324, 43.255341, 40.939972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007038, -0.991739, 0.128078,
		-0.917395, 0.044563, 0.395473,
		-0.397914, -0.120282, -0.909504,
		44.352951, 43.219257, 40.667122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075298, 42.719166, 41.310230>,  <44.631489, 43.303452, 41.303772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075298, 42.719166, 41.310230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154678, 42.721622, 40.918194>,  <44.202309, 42.723099, 40.682972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154678, 42.721622, 40.918194>,  <44.075298, 42.719166, 41.310230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154678, 42.721622, 40.918194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080663, -0.996486, -0.022579,
		-0.976786, 0.083538, -0.197259,
		0.198452, 0.006144, -0.980091,
		44.214214, 42.723465, 40.624165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538643, 42.215790, 40.932449>,  <44.075298, 42.719166, 41.310230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538643, 42.215790, 40.932449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.838207, 42.259922, 40.671082>,  <44.017948, 42.286404, 40.514263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.838207, 42.259922, 40.671082>,  <43.538643, 42.215790, 40.932449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838207, 42.259922, 40.671082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090835, -0.959642, -0.266151,
		-0.656411, 0.258677, -0.708668,
		0.748915, 0.110332, -0.653416,
		44.062881, 42.293022, 40.475056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318027, 41.916546, 40.312653>,  <43.538643, 42.215790, 40.932449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318027, 41.916546, 40.312653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.718006, 41.920540, 40.313705>,  <43.957993, 41.922935, 40.314339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.718006, 41.920540, 40.313705>,  <43.318027, 41.916546, 40.312653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718006, 41.920540, 40.313705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010011, -0.874161, -0.485534,
		-0.002544, 0.485534, -0.874214,
		0.999947, 0.009987, 0.002636,
		44.017990, 41.923534, 40.314495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496998, 41.526478, 39.764450>,  <43.318027, 41.916546, 40.312653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496998, 41.526478, 39.764450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856136, 41.515820, 39.940250>,  <44.071621, 41.509426, 40.045731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856136, 41.515820, 39.940250>,  <43.496998, 41.526478, 39.764450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856136, 41.515820, 39.940250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137349, -0.931415, -0.337048,
		0.418338, 0.362982, -0.832609,
		0.897847, -0.026642, 0.439501,
		44.125492, 41.507828, 40.072102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968922, 41.378365, 39.266472>,  <43.496998, 41.526478, 39.764450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968922, 41.378365, 39.266472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106995, 41.274490, 39.627228>,  <44.189838, 41.212166, 39.843681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106995, 41.274490, 39.627228>,  <43.968922, 41.378365, 39.266472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106995, 41.274490, 39.627228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221732, -0.911191, -0.347225,
		0.911966, 0.319835, -0.256948,
		0.345184, -0.259684, 0.901894,
		44.210548, 41.196587, 39.897797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515915, 40.967918, 39.108379>,  <43.968922, 41.378365, 39.266472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515915, 40.967918, 39.108379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.452484, 40.867764, 39.490406>,  <44.414425, 40.807671, 39.719624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.452484, 40.867764, 39.490406>,  <44.515915, 40.967918, 39.108379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452484, 40.867764, 39.490406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180703, -0.958332, -0.221239,
		0.970670, 0.137502, 0.197211,
		-0.158573, -0.250387, 0.955071,
		44.404911, 40.792648, 39.776928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031361, 40.511364, 39.200356>,  <44.515915, 40.967918, 39.108379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031361, 40.511364, 39.200356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.744720, 40.443966, 39.471088>,  <44.572739, 40.403526, 39.633526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.744720, 40.443966, 39.471088>,  <45.031361, 40.511364, 39.200356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744720, 40.443966, 39.471088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015009, -0.966432, -0.256485,
		0.697325, -0.193955, 0.690014,
		-0.716598, -0.168497, 0.676828,
		44.529739, 40.393417, 39.674137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117565, 39.963612, 39.356628>,  <45.031361, 40.511364, 39.200356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117565, 39.963612, 39.356628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.750660, 39.974892, 39.515541>,  <44.530518, 39.981659, 39.610889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.750660, 39.974892, 39.515541>,  <45.117565, 39.963612, 39.356628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750660, 39.974892, 39.515541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206433, -0.886707, -0.413686,
		0.340603, -0.461471, 0.819166,
		-0.917265, 0.028200, 0.397279,
		44.475479, 39.983353, 39.634724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026665, 39.324963, 39.786533>,  <45.117565, 39.963612, 39.356628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026665, 39.324963, 39.786533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671867, 39.471096, 39.673561>,  <44.458988, 39.558777, 39.605778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671867, 39.471096, 39.673561>,  <45.026665, 39.324963, 39.786533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671867, 39.471096, 39.673561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288275, -0.915884, -0.279381,
		-0.360743, -0.166392, 0.917703,
		-0.886996, 0.365336, -0.282432,
		44.405769, 39.580696, 39.588833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582512, 38.886089, 40.009144>,  <45.026665, 39.324963, 39.786533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582512, 38.886089, 40.009144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371368, 39.076805, 39.727993>,  <44.244682, 39.191235, 39.559303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371368, 39.076805, 39.727993>,  <44.582512, 38.886089, 40.009144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371368, 39.076805, 39.727993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311118, -0.878591, -0.362332,
		-0.790300, 0.027420, 0.612106,
		-0.527856, 0.476788, -0.702881,
		44.213013, 39.219841, 39.517128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997414, 38.412605, 39.842861>,  <44.582512, 38.886089, 40.009144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997414, 38.412605, 39.842861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007881, 38.683662, 39.548889>,  <44.014160, 38.846298, 39.372505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007881, 38.683662, 39.548889>,  <43.997414, 38.412605, 39.842861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007881, 38.683662, 39.548889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450322, -0.648368, -0.613864,
		-0.892483, 0.347018, 0.288190,
		0.026168, 0.677641, -0.734927,
		44.015732, 38.886955, 39.328411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363811, 38.249081, 39.420799>,  <43.997414, 38.412605, 39.842861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363811, 38.249081, 39.420799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573101, 38.466633, 39.158371>,  <43.698673, 38.597164, 39.000912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573101, 38.466633, 39.158371>,  <43.363811, 38.249081, 39.420799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573101, 38.466633, 39.158371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462884, -0.465018, -0.754650,
		-0.715525, 0.698536, 0.008445,
		0.523223, 0.543879, -0.656073,
		43.730068, 38.629795, 38.961548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844654, 38.551529, 38.908714>,  <43.363811, 38.249081, 39.420799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844654, 38.551529, 38.908714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.208244, 38.526508, 38.743866>,  <43.426399, 38.511497, 38.644955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.208244, 38.526508, 38.743866>,  <42.844654, 38.551529, 38.908714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208244, 38.526508, 38.743866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381117, -0.525176, -0.760881,
		-0.168844, 0.848691, -0.501213,
		0.908978, -0.062550, -0.412124,
		43.480938, 38.507744, 38.620228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705082, 38.729057, 38.295532>,  <42.844654, 38.551529, 38.908714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705082, 38.729057, 38.295532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045528, 38.519459, 38.282722>,  <43.249798, 38.393700, 38.275036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045528, 38.519459, 38.282722>,  <42.705082, 38.729057, 38.295532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045528, 38.519459, 38.282722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316455, -0.463434, -0.827699,
		0.418871, 0.714603, -0.560259,
		0.851119, -0.523996, -0.032021,
		43.300865, 38.362259, 38.273117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886448, 38.746086, 37.609718>,  <42.705082, 38.729057, 38.295532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886448, 38.746086, 37.609718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141117, 38.463654, 37.733719>,  <43.293919, 38.294193, 37.808121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141117, 38.463654, 37.733719>,  <42.886448, 38.746086, 37.609718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141117, 38.463654, 37.733719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304544, -0.599558, -0.740124,
		0.708451, 0.376805, -0.596753,
		0.636671, -0.706079, 0.310003,
		43.332119, 38.251831, 37.826721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431244, 38.705177, 37.091228>,  <42.886448, 38.746086, 37.609718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431244, 38.705177, 37.091228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399174, 38.363216, 37.296253>,  <43.379932, 38.158039, 37.419270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399174, 38.363216, 37.296253>,  <43.431244, 38.705177, 37.091228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399174, 38.363216, 37.296253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125932, -0.501410, -0.855996,
		0.988793, -0.133179, -0.067458,
		-0.080177, -0.854898, 0.512563,
		43.375122, 38.106747, 37.450024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873333, 38.139725, 36.722584>,  <43.431244, 38.705177, 37.091228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873333, 38.139725, 36.722584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.623489, 37.930832, 36.954838>,  <43.473583, 37.805496, 37.094189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.623489, 37.930832, 36.954838>,  <43.873333, 38.139725, 36.722584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623489, 37.930832, 36.954838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137130, -0.658609, -0.739885,
		0.768805, -0.541759, 0.339757,
		-0.624607, -0.522237, 0.580634,
		43.436108, 37.774162, 37.129028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088997, 37.467091, 36.634098>,  <43.873333, 38.139725, 36.722584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088997, 37.467091, 36.634098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.713646, 37.442333, 36.770115>,  <43.488438, 37.427479, 36.851723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.713646, 37.442333, 36.770115>,  <44.088997, 37.467091, 36.634098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713646, 37.442333, 36.770115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222873, -0.643604, -0.732190,
		0.264167, -0.762852, 0.590146,
		-0.938373, -0.061893, 0.340038,
		43.432133, 37.423767, 36.872128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018154, 36.639614, 36.748131>,  <44.088997, 37.467091, 36.634098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018154, 36.639614, 36.748131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.661976, 36.821339, 36.737495>,  <43.448269, 36.930374, 36.731113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.661976, 36.821339, 36.737495>,  <44.018154, 36.639614, 36.748131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661976, 36.821339, 36.737495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273863, -0.581597, -0.765992,
		-0.363463, -0.674793, 0.642300,
		-0.890446, 0.454312, -0.026588,
		43.394840, 36.957634, 36.729519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765564, 36.459042, 36.663116>,  <44.018154, 36.639614, 36.748131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765564, 36.459042, 36.663116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965389, 36.783882, 36.542492>,  <45.085285, 36.978786, 36.470116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965389, 36.783882, 36.542492>,  <44.765564, 36.459042, 36.663116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965389, 36.783882, 36.542492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425368, 0.533209, 0.731266,
		0.754654, -0.237036, 0.611810,
		0.499559, 0.812097, -0.301560,
		45.115257, 37.027512, 36.452023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170761, 36.636108, 36.059193>,  <44.765564, 36.459042, 36.663116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170761, 36.636108, 36.059193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397369, 36.813026, 35.781075>,  <45.533333, 36.919178, 35.614204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397369, 36.813026, 35.781075>,  <45.170761, 36.636108, 36.059193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397369, 36.813026, 35.781075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431263, 0.559846, 0.707520,
		0.702191, -0.700676, 0.126416,
		0.566515, 0.442296, -0.695295,
		45.567326, 36.945713, 35.572487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820389, 36.727901, 36.399284>,  <45.170761, 36.636108, 36.059193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820389, 36.727901, 36.399284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856075, 36.951565, 36.069584>,  <45.877487, 37.085762, 35.871765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856075, 36.951565, 36.069584>,  <45.820389, 36.727901, 36.399284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856075, 36.951565, 36.069584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485569, 0.698127, 0.526157,
		0.869634, -0.447171, -0.209224,
		0.089217, 0.559157, -0.824247,
		45.882839, 37.119312, 35.822311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566360, 36.924759, 36.406090>,  <45.820389, 36.727901, 36.399284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566360, 36.924759, 36.406090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378487, 37.208122, 36.195358>,  <46.265762, 37.378139, 36.068920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378487, 37.208122, 36.195358>,  <46.566360, 36.924759, 36.406090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378487, 37.208122, 36.195358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513269, 0.704649, 0.489923,
		0.718298, -0.040297, -0.694568,
		-0.469684, 0.708411, -0.526831,
		46.237583, 37.420647, 36.037308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051601, 37.468765, 36.298450>,  <46.566360, 36.924759, 36.406090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051601, 37.468765, 36.298450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.728138, 37.682564, 36.200153>,  <46.534061, 37.810841, 36.141174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.728138, 37.682564, 36.200153>,  <47.051601, 37.468765, 36.298450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728138, 37.682564, 36.200153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461974, 0.835600, 0.297240,
		0.364218, 0.126837, -0.922636,
		-0.808656, 0.534494, -0.245745,
		46.485542, 37.842911, 36.126431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.362453, 37.965351, 35.926910>,  <47.051601, 37.468765, 36.298450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.362453, 37.965351, 35.926910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.006832, 38.105049, 36.045311>,  <46.793461, 38.188869, 36.116352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.006832, 38.105049, 36.045311>,  <47.362453, 37.965351, 35.926910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.006832, 38.105049, 36.045311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403071, 0.903710, 0.144369,
		-0.217076, 0.247660, -0.944215,
		-0.889051, 0.349247, 0.295998,
		46.740116, 38.209824, 36.134109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.265785, 38.681065, 35.628899>,  <47.362453, 37.965351, 35.926910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.265785, 38.681065, 35.628899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.980328, 38.670155, 35.908890>,  <46.809052, 38.663609, 36.076885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.980328, 38.670155, 35.908890>,  <47.265785, 38.681065, 35.628899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.980328, 38.670155, 35.908890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115124, 0.981088, 0.155603,
		-0.690983, 0.191629, -0.697008,
		-0.713645, -0.027277, 0.699976,
		46.766235, 38.661972, 36.118881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806946, 39.306480, 35.530766>,  <47.265785, 38.681065, 35.628899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806946, 39.306480, 35.530766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.729580, 39.190624, 35.905720>,  <46.683159, 39.121109, 36.130692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.729580, 39.190624, 35.905720>,  <46.806946, 39.306480, 35.530766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729580, 39.190624, 35.905720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112195, 0.955692, 0.272149,
		-0.974681, -0.052533, -0.217340,
		-0.193414, -0.289643, 0.937389,
		46.671555, 39.103733, 36.186935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065617, 39.594948, 35.713219>,  <46.806946, 39.306480, 35.530766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065617, 39.594948, 35.713219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.279472, 39.523273, 36.043564>,  <46.407787, 39.480270, 36.241772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.279472, 39.523273, 36.043564>,  <46.065617, 39.594948, 35.713219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279472, 39.523273, 36.043564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069684, 0.964586, 0.254398,
		-0.842200, -0.193562, 0.503223,
		0.534644, -0.179187, 0.825862,
		46.439865, 39.469517, 36.291321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707630, 39.819225, 36.303570>,  <46.065617, 39.594948, 35.713219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.707630, 39.819225, 36.303570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.080292, 39.819984, 36.448902>,  <46.303890, 39.820438, 36.536102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.080292, 39.819984, 36.448902>,  <45.707630, 39.819225, 36.303570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080292, 39.819984, 36.448902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164725, 0.893516, 0.417726,
		-0.323855, -0.449027, 0.832762,
		0.931656, 0.001894, 0.363335,
		46.359787, 39.820553, 36.557903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683979, 39.941284, 37.055840>,  <45.707630, 39.819225, 36.303570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683979, 39.941284, 37.055840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.044075, 40.060112, 36.928520>,  <46.260132, 40.131409, 36.852127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.044075, 40.060112, 36.928520>,  <45.683979, 39.941284, 37.055840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044075, 40.060112, 36.928520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103769, 0.856396, 0.505784,
		0.422845, -0.422298, 0.801789,
		0.900241, 0.297070, -0.318301,
		46.314148, 40.149235, 36.833031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947277, 40.148022, 37.590374>,  <45.683979, 39.941284, 37.055840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947277, 40.148022, 37.590374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.190544, 40.321964, 37.324734>,  <46.336506, 40.426331, 37.165348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.190544, 40.321964, 37.324734>,  <45.947277, 40.148022, 37.590374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190544, 40.321964, 37.324734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054295, 0.811855, 0.581330,
		0.791950, -0.389603, 0.470133,
		0.608167, 0.434857, -0.664101,
		46.372993, 40.452423, 37.125504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434258, 40.488411, 38.064617>,  <45.947277, 40.148022, 37.590374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434258, 40.488411, 38.064617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.457027, 40.655926, 37.702099>,  <46.470688, 40.756435, 37.484589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.457027, 40.655926, 37.702099>,  <46.434258, 40.488411, 38.064617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457027, 40.655926, 37.702099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117852, 0.904241, 0.410438,
		0.991398, 0.083446, 0.100826,
		0.056922, 0.418790, -0.906297,
		46.474106, 40.781563, 37.430210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986713, 40.995197, 38.066269>,  <46.434258, 40.488411, 38.064617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986713, 40.995197, 38.066269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.719395, 41.095352, 37.786076>,  <46.559002, 41.155445, 37.617958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.719395, 41.095352, 37.786076>,  <46.986713, 40.995197, 38.066269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719395, 41.095352, 37.786076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033124, 0.930700, 0.364282,
		0.743153, 0.266653, -0.613694,
		-0.668301, 0.250389, -0.700484,
		46.518906, 41.170467, 37.575932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094372, 41.702278, 37.923828>,  <46.986713, 40.995197, 38.066269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094372, 41.702278, 37.923828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.755707, 41.663578, 37.714523>,  <46.552509, 41.640358, 37.588940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.755707, 41.663578, 37.714523>,  <47.094372, 41.702278, 37.923828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755707, 41.663578, 37.714523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230314, 0.953084, 0.196433,
		0.479707, 0.286827, -0.829224,
		-0.846662, -0.096752, -0.523261,
		46.501709, 41.634552, 37.557545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128422, 42.176224, 37.324982>,  <47.094372, 41.702278, 37.923828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128422, 42.176224, 37.324982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.745281, 42.090740, 37.401775>,  <46.515396, 42.039452, 37.447853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.745281, 42.090740, 37.401775>,  <47.128422, 42.176224, 37.324982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745281, 42.090740, 37.401775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208531, 0.976885, 0.047005,
		-0.197594, 0.004988, -0.980271,
		-0.957847, -0.213705, 0.191987,
		46.457928, 42.026630, 37.459370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823078, 42.866447, 37.158062>,  <47.128422, 42.176224, 37.324982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823078, 42.866447, 37.158062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512234, 42.661026, 37.303589>,  <46.325726, 42.537773, 37.390903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512234, 42.661026, 37.303589>,  <46.823078, 42.866447, 37.158062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512234, 42.661026, 37.303589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449909, 0.857529, 0.249452,
		-0.440090, 0.030167, -0.897447,
		-0.777112, -0.513551, 0.363817,
		46.279099, 42.506962, 37.412735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131115, 43.076603, 36.766537>,  <46.823078, 42.866447, 37.158062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131115, 43.076603, 36.766537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068344, 42.935032, 37.135342>,  <46.030682, 42.850090, 37.356625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068344, 42.935032, 37.135342>,  <46.131115, 43.076603, 36.766537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068344, 42.935032, 37.135342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390129, 0.879869, 0.271347,
		-0.907290, -0.317125, -0.276148,
		-0.156923, -0.353923, 0.922016,
		46.021267, 42.828854, 37.411945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459023, 43.274097, 36.959057>,  <46.131115, 43.076603, 36.766537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459023, 43.274097, 36.959057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628986, 43.210224, 37.315472>,  <45.730965, 43.171902, 37.529320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628986, 43.210224, 37.315472>,  <45.459023, 43.274097, 36.959057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628986, 43.210224, 37.315472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365650, 0.870170, 0.330309,
		-0.828099, -0.466162, 0.311360,
		0.424913, -0.159680, 0.891039,
		45.756462, 43.162319, 37.582783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934753, 43.399220, 37.480713>,  <45.459023, 43.274097, 36.959057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934753, 43.399220, 37.480713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.285683, 43.424591, 37.670986>,  <45.496239, 43.439812, 37.785152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.285683, 43.424591, 37.670986>,  <44.934753, 43.399220, 37.480713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285683, 43.424591, 37.670986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315683, 0.822850, 0.472507,
		-0.361450, -0.564708, 0.741929,
		0.877324, 0.063427, 0.475688,
		45.548882, 43.443619, 37.813694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661915, 43.656342, 38.060333>,  <44.934753, 43.399220, 37.480713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661915, 43.656342, 38.060333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057644, 43.709152, 38.084999>,  <45.295082, 43.740841, 38.099800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057644, 43.709152, 38.084999>,  <44.661915, 43.656342, 38.060333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057644, 43.709152, 38.084999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143305, 0.804795, 0.575993,
		0.026420, -0.578682, 0.815125,
		0.989326, 0.132029, 0.061666,
		45.354443, 43.748760, 38.103500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.094017, 36.637039, 40.112820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826885, 36.368656, 39.983929>,  <38.666607, 36.207626, 39.906593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826885, 36.368656, 39.983929>,  <39.094017, 36.637039, 40.112820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826885, 36.368656, 39.983929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238004, 0.217686, -0.946556,
		0.705241, -0.708824, 0.014315,
		-0.667825, -0.670956, -0.322223,
		38.626537, 36.167370, 39.887260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334961, 36.235340, 39.611763>,  <39.094017, 36.637039, 40.112820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334961, 36.235340, 39.611763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942936, 36.220783, 39.533634>,  <38.707722, 36.212048, 39.486755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942936, 36.220783, 39.533634>,  <39.334961, 36.235340, 39.611763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942936, 36.220783, 39.533634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193678, 0.044323, -0.980064,
		0.044323, -0.998354, -0.036392,
		0.980064, 0.036392, 0.195324,
		38.648918, 36.209866, 39.475037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284504, 35.801315, 39.029163>,  <39.334961, 36.235340, 39.611763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284504, 35.801315, 39.029163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938000, 36.001156, 39.028622>,  <38.730099, 36.121059, 39.028297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938000, 36.001156, 39.028622>,  <39.284504, 35.801315, 39.029163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938000, 36.001156, 39.028622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009548, 0.013851, -0.999858,
		-0.499507, -0.866147, -0.016769,
		-0.866257, 0.499597, -0.001351,
		38.678123, 36.151035, 39.028217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945477, 35.456673, 38.437626>,  <39.284504, 35.801315, 39.029163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945477, 35.456673, 38.437626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726276, 35.784389, 38.505093>,  <38.594757, 35.981022, 38.545574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726276, 35.784389, 38.505093>,  <38.945477, 35.456673, 38.437626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726276, 35.784389, 38.505093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151872, 0.100840, -0.983243,
		-0.822575, -0.564434, 0.069167,
		-0.548001, 0.819296, 0.168670,
		38.561874, 36.030178, 38.555695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318577, 35.343616, 38.111317>,  <38.945477, 35.456673, 38.437626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318577, 35.343616, 38.111317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353466, 35.738129, 38.167370>,  <38.374397, 35.974838, 38.201000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353466, 35.738129, 38.167370>,  <38.318577, 35.343616, 38.111317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353466, 35.738129, 38.167370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001560, 0.140800, -0.990037,
		-0.996188, 0.086132, 0.013819,
		0.087219, 0.986284, 0.140128,
		38.379631, 36.034016, 38.209408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744202, 35.684868, 37.665314>,  <38.318577, 35.343616, 38.111317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744202, 35.684868, 37.665314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024906, 35.961308, 37.734505>,  <38.193329, 36.127171, 37.776020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024906, 35.961308, 37.734505>,  <37.744202, 35.684868, 37.665314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024906, 35.961308, 37.734505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131496, 0.364287, -0.921957,
		-0.700175, 0.624244, 0.346517,
		0.701757, 0.691097, 0.172979,
		38.235432, 36.168636, 37.786400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429729, 36.285671, 37.444386>,  <37.744202, 35.684868, 37.665314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429729, 36.285671, 37.444386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824871, 36.344257, 37.423622>,  <38.061954, 36.379410, 37.411163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824871, 36.344257, 37.423622>,  <37.429729, 36.285671, 37.444386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824871, 36.344257, 37.423622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109844, 0.421879, -0.899973,
		-0.109915, 0.894743, 0.432843,
		0.987853, 0.146466, -0.051912,
		38.121227, 36.388199, 37.408051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530552, 37.001995, 37.145760>,  <37.429729, 36.285671, 37.444386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530552, 37.001995, 37.145760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884377, 36.819229, 37.108257>,  <38.096672, 36.709572, 37.085754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884377, 36.819229, 37.108257>,  <37.530552, 37.001995, 37.145760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884377, 36.819229, 37.108257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085718, 0.356823, -0.930231,
		0.458487, 0.814806, 0.354796,
		0.884558, -0.456911, -0.093756,
		38.149742, 36.682156, 37.080132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982910, 37.576832, 37.009048>,  <37.530552, 37.001995, 37.145760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982910, 37.576832, 37.009048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188545, 37.261791, 36.873169>,  <38.311924, 37.072765, 36.791641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188545, 37.261791, 36.873169>,  <37.982910, 37.576832, 37.009048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188545, 37.261791, 36.873169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084716, 0.347478, -0.933854,
		0.853545, 0.508858, 0.111911,
		0.514086, -0.787606, -0.339696,
		38.342770, 37.025509, 36.771259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473728, 37.734863, 36.405464>,  <37.982910, 37.576832, 37.009048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473728, 37.734863, 36.405464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448959, 37.337238, 36.369667>,  <38.434097, 37.098663, 36.348186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448959, 37.337238, 36.369667>,  <38.473728, 37.734863, 36.405464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448959, 37.337238, 36.369667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016385, 0.088645, -0.995929,
		0.997947, -0.063136, 0.010798,
		-0.061922, -0.994060, -0.089497,
		38.430382, 37.039021, 36.342819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944859, 37.516094, 35.922421>,  <38.473728, 37.734863, 36.405464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944859, 37.516094, 35.922421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662758, 37.232567, 35.928123>,  <38.493500, 37.062450, 35.931545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662758, 37.232567, 35.928123>,  <38.944859, 37.516094, 35.922421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662758, 37.232567, 35.928123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125241, 0.104762, -0.986580,
		0.697811, -0.697569, -0.162656,
		-0.705247, -0.708818, 0.014260,
		38.451183, 37.019920, 35.932400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113586, 37.176067, 35.388309>,  <38.944859, 37.516094, 35.922421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113586, 37.176067, 35.388309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732964, 37.076366, 35.460327>,  <38.504589, 37.016544, 35.503536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732964, 37.076366, 35.460327>,  <39.113586, 37.176067, 35.388309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732964, 37.076366, 35.460327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214232, 0.117408, -0.969701,
		0.220564, -0.961294, -0.165119,
		-0.951554, -0.249255, 0.180044,
		38.447498, 37.001591, 35.514339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873699, 36.756794, 34.871723>,  <39.113586, 37.176067, 35.388309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873699, 36.756794, 34.871723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562214, 36.956024, 35.024311>,  <38.375320, 37.075562, 35.115864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562214, 36.956024, 35.024311>,  <38.873699, 36.756794, 34.871723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562214, 36.956024, 35.024311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139207, 0.455711, -0.879175,
		-0.611737, -0.737732, -0.285534,
		-0.778716, 0.498075, 0.381473,
		38.328598, 37.105446, 35.138752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485432, 36.586281, 34.583801>,  <38.873699, 36.756794, 34.871723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485432, 36.586281, 34.583801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811222, 36.355213, 34.562145>,  <40.006695, 36.216572, 34.549152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811222, 36.355213, 34.562145>,  <39.485432, 36.586281, 34.583801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811222, 36.355213, 34.562145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379680, -0.601223, 0.703117,
		-0.438715, -0.552118, -0.709010,
		0.814477, -0.577665, -0.054137,
		40.055565, 36.181911, 34.545902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319187, 35.893501, 34.434429>,  <39.485432, 36.586281, 34.583801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319187, 35.893501, 34.434429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675961, 35.871597, 34.613968>,  <39.890022, 35.858456, 34.721691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675961, 35.871597, 34.613968>,  <39.319187, 35.893501, 34.434429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675961, 35.871597, 34.613968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376864, -0.638560, 0.670980,
		0.249869, -0.767621, -0.590190,
		0.891930, -0.054765, 0.448845,
		39.943539, 35.855167, 34.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359333, 35.186913, 34.600384>,  <39.319187, 35.893501, 34.434429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359333, 35.186913, 34.600384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668659, 35.316059, 34.818645>,  <39.854256, 35.393547, 34.949600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668659, 35.316059, 34.818645>,  <39.359333, 35.186913, 34.600384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668659, 35.316059, 34.818645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218899, -0.671741, 0.707706,
		0.595030, -0.666725, -0.448795,
		0.773319, 0.322865, 0.545652,
		39.900654, 35.412918, 34.982342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739773, 34.653030, 34.679893>,  <39.359333, 35.186913, 34.600384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739773, 34.653030, 34.679893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842720, 34.906208, 34.971962>,  <39.904488, 35.058113, 35.147202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842720, 34.906208, 34.971962>,  <39.739773, 34.653030, 34.679893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842720, 34.906208, 34.971962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125246, -0.727400, 0.674687,
		0.958162, -0.265094, -0.107936,
		0.257368, 0.632941, 0.730169,
		39.919930, 35.096092, 35.191013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373329, 34.443790, 34.945530>,  <39.739773, 34.653030, 34.679893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373329, 34.443790, 34.945530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208210, 34.660580, 35.238342>,  <40.109138, 34.790653, 35.414028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208210, 34.660580, 35.238342>,  <40.373329, 34.443790, 34.945530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208210, 34.660580, 35.238342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012807, -0.800165, 0.599643,
		0.910733, 0.256907, 0.323366,
		-0.412798, 0.541973, 0.732027,
		40.084370, 34.823170, 35.457951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763451, 34.236111, 35.556728>,  <40.373329, 34.443790, 34.945530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763451, 34.236111, 35.556728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430847, 34.418999, 35.682934>,  <40.231285, 34.528732, 35.758656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430847, 34.418999, 35.682934>,  <40.763451, 34.236111, 35.556728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430847, 34.418999, 35.682934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030701, -0.529268, 0.847899,
		0.554666, 0.714720, 0.426053,
		-0.831506, 0.457221, 0.315509,
		40.181396, 34.556164, 35.777588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870003, 34.440098, 36.190460>,  <40.763451, 34.236111, 35.556728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870003, 34.440098, 36.190460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470638, 34.436100, 36.212666>,  <40.231022, 34.433701, 36.225990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470638, 34.436100, 36.212666>,  <40.870003, 34.440098, 36.190460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470638, 34.436100, 36.212666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053555, -0.476966, 0.877289,
		0.017707, 0.878865, 0.476742,
		-0.998408, -0.009998, 0.055513,
		40.171116, 34.433102, 36.229321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690594, 34.656231, 36.904671>,  <40.870003, 34.440098, 36.190460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690594, 34.656231, 36.904671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351154, 34.490658, 36.772884>,  <40.147491, 34.391315, 36.693813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351154, 34.490658, 36.772884>,  <40.690594, 34.656231, 36.904671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351154, 34.490658, 36.772884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165554, -0.383706, 0.908494,
		-0.502469, 0.825489, 0.257085,
		-0.848597, -0.413928, -0.329464,
		40.096577, 34.366478, 36.674046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176975, 34.860817, 37.431213>,  <40.690594, 34.656231, 36.904671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176975, 34.860817, 37.431213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039806, 34.527924, 37.256950>,  <39.957504, 34.328186, 37.152393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039806, 34.527924, 37.256950>,  <40.176975, 34.860817, 37.431213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039806, 34.527924, 37.256950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181946, -0.396150, 0.899978,
		-0.921576, 0.387885, -0.015574,
		-0.342918, -0.832232, -0.435657,
		39.936932, 34.278255, 37.126255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436798, 34.676701, 37.664108>,  <40.176975, 34.860817, 37.431213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436798, 34.676701, 37.664108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611176, 34.351315, 37.510101>,  <39.715801, 34.156082, 37.417698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611176, 34.351315, 37.510101>,  <39.436798, 34.676701, 37.664108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611176, 34.351315, 37.510101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174893, -0.496225, 0.850396,
		-0.882819, -0.303383, -0.358593,
		0.435939, -0.813461, -0.385018,
		39.741959, 34.107277, 37.394596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895004, 34.238441, 37.812145>,  <39.436798, 34.676701, 37.664108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895004, 34.238441, 37.812145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243229, 34.047565, 37.764137>,  <39.452164, 33.933041, 37.735332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243229, 34.047565, 37.764137>,  <38.895004, 34.238441, 37.812145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243229, 34.047565, 37.764137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102952, -0.415166, 0.903902,
		-0.481168, -0.774546, -0.410556,
		0.870562, -0.477196, -0.120023,
		39.504398, 33.904408, 37.728130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694618, 33.603325, 38.036129>,  <38.895004, 34.238441, 37.812145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694618, 33.603325, 38.036129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094494, 33.612198, 38.040787>,  <39.334419, 33.617523, 38.043583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094494, 33.612198, 38.040787>,  <38.694618, 33.603325, 38.036129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094494, 33.612198, 38.040787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002447, -0.549096, 0.835756,
		0.024936, -0.835465, -0.548978,
		0.999686, 0.022184, 0.011648,
		39.394402, 33.618855, 38.044281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820309, 32.975662, 38.321022>,  <38.694618, 33.603325, 38.036129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820309, 32.975662, 38.321022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164192, 33.176125, 38.360500>,  <39.370522, 33.296402, 38.384186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164192, 33.176125, 38.360500>,  <38.820309, 32.975662, 38.321022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164192, 33.176125, 38.360500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109759, -0.369970, 0.922537,
		0.498847, -0.782284, -0.373074,
		0.859712, 0.501153, 0.098696,
		39.422108, 33.326469, 38.390110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277756, 32.531654, 38.632397>,  <38.820309, 32.975662, 38.321022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277756, 32.531654, 38.632397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414066, 32.900982, 38.703220>,  <39.495853, 33.122578, 38.745716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414066, 32.900982, 38.703220>,  <39.277756, 32.531654, 38.632397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414066, 32.900982, 38.703220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144623, -0.237572, 0.960544,
		0.928954, -0.301723, -0.214492,
		0.340775, 0.923321, 0.177058,
		39.516300, 33.177979, 38.756336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956364, 32.479309, 38.879169>,  <39.277756, 32.531654, 38.632397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956364, 32.479309, 38.879169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815685, 32.824814, 39.023521>,  <39.731277, 33.032116, 39.110134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815685, 32.824814, 39.023521>,  <39.956364, 32.479309, 38.879169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815685, 32.824814, 39.023521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375602, -0.222912, 0.899574,
		0.857459, 0.451921, -0.246033,
		-0.351693, 0.863758, 0.360880,
		39.710178, 33.083942, 39.131786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367924, 32.408310, 38.358303>,  <39.956364, 32.479309, 38.879169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367924, 32.408310, 38.358303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407040, 32.014168, 38.302429>,  <40.430508, 31.777683, 38.268906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407040, 32.014168, 38.302429>,  <40.367924, 32.408310, 38.358303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407040, 32.014168, 38.302429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535832, 0.066143, -0.841730,
		0.838643, 0.157157, -0.521517,
		0.097789, -0.985356, -0.139680,
		40.436375, 31.718561, 38.260525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605206, 32.329262, 37.705215>,  <40.367924, 32.408310, 38.358303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605206, 32.329262, 37.705215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443527, 31.974335, 37.794033>,  <40.346519, 31.761379, 37.847324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443527, 31.974335, 37.794033>,  <40.605206, 32.329262, 37.705215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443527, 31.974335, 37.794033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457714, -0.013959, -0.888990,
		0.791912, -0.460956, -0.400494,
		-0.404195, -0.887313, 0.222041,
		40.322269, 31.708141, 37.860645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654121, 32.059860, 37.081284>,  <40.605206, 32.329262, 37.705215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654121, 32.059860, 37.081284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383766, 31.865179, 37.302662>,  <40.221554, 31.748369, 37.435490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383766, 31.865179, 37.302662>,  <40.654121, 32.059860, 37.081284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383766, 31.865179, 37.302662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628436, -0.011717, -0.777773,
		0.385030, -0.873488, -0.297944,
		-0.675884, -0.486704, 0.553443,
		40.181000, 31.719168, 37.468697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551441, 31.397552, 36.810768>,  <40.654121, 32.059860, 37.081284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551441, 31.397552, 36.810768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215439, 31.494860, 37.004761>,  <40.013836, 31.553244, 37.121155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215439, 31.494860, 37.004761>,  <40.551441, 31.397552, 36.810768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215439, 31.494860, 37.004761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535953, -0.232856, -0.811500,
		-0.084480, -0.941594, 0.325980,
		-0.840010, 0.243266, 0.484979,
		39.963436, 31.567841, 37.150253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081696, 30.893805, 36.573177>,  <40.551441, 31.397552, 36.810768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081696, 30.893805, 36.573177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848000, 31.155289, 36.765564>,  <39.707783, 31.312180, 36.880997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848000, 31.155289, 36.765564>,  <40.081696, 30.893805, 36.573177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848000, 31.155289, 36.765564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715967, -0.136088, -0.684742,
		-0.382168, -0.744409, 0.547543,
		-0.584242, 0.653709, 0.480964,
		39.672726, 31.351400, 36.909855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508152, 30.566376, 36.724159>,  <40.081696, 30.893805, 36.573177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508152, 30.566376, 36.724159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418995, 30.956217, 36.715462>,  <39.365501, 31.190121, 36.710243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418995, 30.956217, 36.715462>,  <39.508152, 30.566376, 36.724159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418995, 30.956217, 36.715462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689366, -0.173347, -0.703367,
		-0.689271, -0.141786, 0.710494,
		-0.222890, 0.974601, -0.021741,
		39.352127, 31.248596, 36.708939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816551, 30.661594, 36.755939>,  <39.508152, 30.566376, 36.724159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816551, 30.661594, 36.755939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888447, 31.035055, 36.632011>,  <38.931583, 31.259132, 36.557655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888447, 31.035055, 36.632011>,  <38.816551, 30.661594, 36.755939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888447, 31.035055, 36.632011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840932, -0.017587, -0.540855,
		-0.510419, 0.357750, 0.781976,
		0.179738, 0.933652, -0.309821,
		38.942368, 31.315151, 36.539066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212986, 31.019260, 36.923679>,  <38.816551, 30.661594, 36.755939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212986, 31.019260, 36.923679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376583, 31.256731, 36.646473>,  <38.474743, 31.399214, 36.480148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376583, 31.256731, 36.646473>,  <38.212986, 31.019260, 36.923679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376583, 31.256731, 36.646473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851873, -0.023884, -0.523203,
		-0.327165, 0.804349, 0.495968,
		0.408992, 0.593676, -0.693018,
		38.499279, 31.434834, 36.438568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648079, 31.532082, 36.705730>,  <38.212986, 31.019260, 36.923679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648079, 31.532082, 36.705730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928570, 31.518772, 36.420864>,  <38.096863, 31.510786, 36.249947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928570, 31.518772, 36.420864>,  <37.648079, 31.532082, 36.705730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928570, 31.518772, 36.420864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701314, -0.211844, -0.680647,
		-0.128218, 0.976737, -0.171887,
		0.701226, -0.033275, -0.712162,
		38.138939, 31.508789, 36.207214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506977, 32.083855, 36.224964>,  <37.648079, 31.532082, 36.705730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506977, 32.083855, 36.224964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725178, 31.807528, 36.035141>,  <37.856098, 31.641731, 35.921249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725178, 31.807528, 36.035141>,  <37.506977, 32.083855, 36.224964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725178, 31.807528, 36.035141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745647, -0.141495, -0.651145,
		0.382674, 0.709051, -0.592290,
		0.545501, -0.690816, -0.474555,
		37.888828, 31.600283, 35.892773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232811, 32.134491, 35.527187>,  <37.506977, 32.083855, 36.224964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232811, 32.134491, 35.527187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415916, 31.779533, 35.505356>,  <37.525780, 31.566557, 35.492256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415916, 31.779533, 35.505356>,  <37.232811, 32.134491, 35.527187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415916, 31.779533, 35.505356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624698, -0.277350, -0.729952,
		0.632619, 0.368241, -0.681316,
		0.457761, -0.887398, -0.054583,
		37.553246, 31.513313, 35.488979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471424, 31.895462, 34.775154>,  <37.232811, 32.134491, 35.527187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471424, 31.895462, 34.775154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394569, 31.590525, 35.022350>,  <37.348457, 31.407562, 35.170670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394569, 31.590525, 35.022350>,  <37.471424, 31.895462, 34.775154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394569, 31.590525, 35.022350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688424, -0.344085, -0.638497,
		0.699396, -0.548119, -0.458705,
		-0.192139, -0.762346, 0.617990,
		37.336929, 31.361820, 35.207748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.727573, 31.078573, 41.362194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.468555, 30.774015, 41.349773>,  <42.313145, 30.591280, 41.342319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.468555, 30.774015, 41.349773>,  <42.727573, 31.078573, 41.362194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468555, 30.774015, 41.349773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000358, 0.040448, -0.999181,
		0.762027, -0.647026, -0.025919,
		-0.647545, -0.761394, -0.031054,
		42.274292, 30.545597, 41.340458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870899, 30.616394, 40.837601>,  <42.727573, 31.078573, 41.362194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870899, 30.616394, 40.837601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.475895, 30.561283, 40.868153>,  <42.238892, 30.528215, 40.886482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.475895, 30.561283, 40.868153>,  <42.870899, 30.616394, 40.837601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475895, 30.561283, 40.868153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093139, 0.119634, -0.988440,
		0.127055, -0.983210, -0.130974,
		-0.987513, -0.137785, 0.076375,
		42.179642, 30.519949, 40.891064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633038, 30.187588, 40.232071>,  <42.870899, 30.616394, 40.837601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633038, 30.187588, 40.232071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.299667, 30.353039, 40.378666>,  <42.099644, 30.452309, 40.466625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.299667, 30.353039, 40.378666>,  <42.633038, 30.187588, 40.232071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299667, 30.353039, 40.378666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314199, 0.190901, -0.929966,
		-0.454623, -0.890207, -0.029140,
		-0.833425, 0.413628, 0.366490,
		42.049641, 30.477127, 40.488613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092407, 29.997704, 39.848900>,  <42.633038, 30.187588, 40.232071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092407, 29.997704, 39.848900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.904961, 30.306982, 40.019810>,  <41.792492, 30.492550, 40.122356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.904961, 30.306982, 40.019810>,  <42.092407, 29.997704, 39.848900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904961, 30.306982, 40.019810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538573, 0.133330, -0.831963,
		-0.700240, -0.619991, 0.353942,
		-0.468618, 0.773197, 0.427273,
		41.764374, 30.538940, 40.147991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324356, 29.896711, 39.739594>,  <42.092407, 29.997704, 39.848900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324356, 29.896711, 39.739594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.384296, 30.285421, 39.812473>,  <41.420261, 30.518648, 39.856201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.384296, 30.285421, 39.812473>,  <41.324356, 29.896711, 39.739594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384296, 30.285421, 39.812473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689865, 0.234775, -0.684812,
		-0.708258, -0.023068, 0.705576,
		0.149854, 0.971776, 0.182195,
		41.429253, 30.576954, 39.867130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685276, 30.169899, 39.764668>,  <41.324356, 29.896711, 39.739594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685276, 30.169899, 39.764668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.907013, 30.498087, 39.708763>,  <41.040054, 30.695000, 39.675220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.907013, 30.498087, 39.708763>,  <40.685276, 30.169899, 39.764668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907013, 30.498087, 39.708763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709869, 0.378421, -0.594040,
		-0.434503, 0.428514, 0.792201,
		0.554340, 0.820472, -0.139764,
		41.073315, 30.744228, 39.666836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226063, 30.812700, 39.908779>,  <40.685276, 30.169899, 39.764668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226063, 30.812700, 39.908779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.527298, 30.933475, 39.674961>,  <40.708038, 31.005941, 39.534672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.527298, 30.933475, 39.674961>,  <40.226063, 30.812700, 39.908779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527298, 30.933475, 39.674961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657549, 0.375161, -0.653364,
		0.022021, 0.876406, 0.481070,
		0.753090, 0.301939, -0.584541,
		40.753223, 31.024057, 39.499599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027557, 31.292614, 39.594715>,  <40.226063, 30.812700, 39.908779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027557, 31.292614, 39.594715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.340218, 31.224745, 39.354637>,  <40.527813, 31.184023, 39.210590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.340218, 31.224745, 39.354637>,  <40.027557, 31.292614, 39.594715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340218, 31.224745, 39.354637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501692, 0.400706, -0.766642,
		0.370580, 0.900359, 0.228088,
		0.781649, -0.169673, -0.600197,
		40.574711, 31.173843, 39.174580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148254, 31.897455, 39.267933>,  <40.027557, 31.292614, 39.594715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148254, 31.897455, 39.267933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335583, 31.665829, 39.000992>,  <40.447979, 31.526854, 38.840828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335583, 31.665829, 39.000992>,  <40.148254, 31.897455, 39.267933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335583, 31.665829, 39.000992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528269, 0.421921, -0.736827,
		0.708240, 0.697614, -0.108307,
		0.468324, -0.579066, -0.667349,
		40.476082, 31.492109, 38.800789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445923, 32.636654, 39.416580>,  <40.148254, 31.897455, 39.267933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445923, 32.636654, 39.416580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142799, 32.883900, 39.500168>,  <39.960926, 33.032246, 39.550320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142799, 32.883900, 39.500168>,  <40.445923, 32.636654, 39.416580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142799, 32.883900, 39.500168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177966, -0.112312, 0.977606,
		0.627739, 0.778026, -0.024892,
		-0.757807, 0.618112, 0.208964,
		39.915459, 33.069332, 39.562859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734066, 33.160156, 39.894577>,  <40.445923, 32.636654, 39.416580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734066, 33.160156, 39.894577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336010, 33.136108, 39.925751>,  <40.097176, 33.121677, 39.944454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336010, 33.136108, 39.925751>,  <40.734066, 33.160156, 39.894577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336010, 33.136108, 39.925751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087104, -0.169226, 0.981721,
		-0.045837, 0.983742, 0.173641,
		-0.995144, -0.060124, 0.077931,
		40.037468, 33.118073, 39.949131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619865, 33.726994, 40.324905>,  <40.734066, 33.160156, 39.894577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619865, 33.726994, 40.324905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.293121, 33.497841, 40.351860>,  <40.097076, 33.360348, 40.368034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.293121, 33.497841, 40.351860>,  <40.619865, 33.726994, 40.324905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293121, 33.497841, 40.351860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110998, -0.041470, 0.992955,
		-0.566055, 0.818586, 0.097464,
		-0.816860, -0.572886, 0.067387,
		40.048061, 33.325974, 40.372078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430290, 33.922520, 40.882027>,  <40.619865, 33.726994, 40.324905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430290, 33.922520, 40.882027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.217468, 33.583836, 40.881306>,  <40.089775, 33.380627, 40.880871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.217468, 33.583836, 40.881306>,  <40.430290, 33.922520, 40.882027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217468, 33.583836, 40.881306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107033, -0.069373, 0.991832,
		-0.839918, 0.527515, 0.127536,
		-0.532054, -0.846709, -0.001806,
		40.057854, 33.329823, 40.880764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802197, 33.931980, 41.294682>,  <40.430290, 33.922520, 40.882027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802197, 33.931980, 41.294682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.916405, 33.550175, 41.260319>,  <39.984928, 33.321091, 41.239700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.916405, 33.550175, 41.260319>,  <39.802197, 33.931980, 41.294682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916405, 33.550175, 41.260319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088384, -0.115482, 0.989370,
		-0.954288, -0.274893, -0.117337,
		0.285521, -0.954514, -0.085907,
		40.002060, 33.263821, 41.234547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286472, 33.515057, 41.687416>,  <39.802197, 33.931980, 41.294682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286472, 33.515057, 41.687416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630806, 33.312622, 41.666077>,  <39.837406, 33.191162, 41.653275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630806, 33.312622, 41.666077>,  <39.286472, 33.515057, 41.687416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630806, 33.312622, 41.666077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013137, -0.126901, 0.991828,
		-0.508717, -0.853098, -0.115889,
		0.860833, -0.506083, -0.053349,
		39.889057, 33.160797, 41.650070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175488, 33.014133, 42.217602>,  <39.286472, 33.515057, 41.687416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175488, 33.014133, 42.217602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.562939, 32.960358, 42.133999>,  <39.795410, 32.928093, 42.083836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.562939, 32.960358, 42.133999>,  <39.175488, 33.014133, 42.217602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562939, 32.960358, 42.133999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191543, -0.131989, 0.972569,
		-0.158346, -0.982091, -0.102096,
		0.968626, -0.134447, -0.209012,
		39.853527, 32.920025, 42.071297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332561, 32.544907, 42.606529>,  <39.175488, 33.014133, 42.217602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332561, 32.544907, 42.606529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696201, 32.692249, 42.528702>,  <39.914383, 32.780655, 42.482006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696201, 32.692249, 42.528702>,  <39.332561, 32.544907, 42.606529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696201, 32.692249, 42.528702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274997, -0.179808, 0.944482,
		0.312920, -0.912132, -0.264759,
		0.909097, 0.368355, -0.194568,
		39.968929, 32.802757, 42.470333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744610, 32.039677, 42.987965>,  <39.332561, 32.544907, 42.606529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744610, 32.039677, 42.987965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970753, 32.363686, 42.925690>,  <40.106438, 32.558090, 42.888325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970753, 32.363686, 42.925690>,  <39.744610, 32.039677, 42.987965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970753, 32.363686, 42.925690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428132, -0.126843, 0.894770,
		0.705036, -0.572517, -0.418508,
		0.565356, 0.810022, -0.155684,
		40.140358, 32.606693, 42.878986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382507, 31.848545, 43.166626>,  <39.744610, 32.039677, 42.987965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382507, 31.848545, 43.166626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.349041, 32.246288, 43.192707>,  <40.328960, 32.484936, 43.208355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.349041, 32.246288, 43.192707>,  <40.382507, 31.848545, 43.166626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349041, 32.246288, 43.192707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502432, -0.014412, 0.864497,
		0.860559, 0.105094, -0.498391,
		-0.083671, 0.994358, 0.065205,
		40.323940, 32.544594, 43.212269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036095, 32.155258, 43.444584>,  <40.382507, 31.848545, 43.166626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036095, 32.155258, 43.444584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.772427, 32.451283, 43.497944>,  <40.614223, 32.628899, 43.529961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.772427, 32.451283, 43.497944>,  <41.036095, 32.155258, 43.444584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772427, 32.451283, 43.497944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417869, 0.212997, 0.883186,
		0.625202, 0.637915, -0.449652,
		-0.659172, 0.740065, 0.133399,
		40.574677, 32.673302, 43.537964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482513, 32.636864, 43.809299>,  <41.036095, 32.155258, 43.444584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482513, 32.636864, 43.809299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097706, 32.733307, 43.860493>,  <40.866821, 32.791172, 43.891209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097706, 32.733307, 43.860493>,  <41.482513, 32.636864, 43.809299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097706, 32.733307, 43.860493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152273, 0.084890, 0.984686,
		0.226552, 0.966778, -0.118380,
		-0.962022, 0.241108, 0.127982,
		40.809097, 32.805641, 43.898888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625599, 33.185501, 44.179596>,  <41.482513, 32.636864, 43.809299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625599, 33.185501, 44.179596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241741, 33.102413, 44.255424>,  <41.011429, 33.052559, 44.300922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.241741, 33.102413, 44.255424>,  <41.625599, 33.185501, 44.179596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241741, 33.102413, 44.255424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181420, 0.057805, 0.981705,
		-0.214881, 0.976478, -0.017787,
		-0.959642, -0.207723, 0.189574,
		40.953850, 33.040096, 44.312298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355869, 33.668770, 44.602978>,  <41.625599, 33.185501, 44.179596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355869, 33.668770, 44.602978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.104790, 33.367058, 44.679970>,  <40.954140, 33.186031, 44.726166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.104790, 33.367058, 44.679970>,  <41.355869, 33.668770, 44.602978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104790, 33.367058, 44.679970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204596, 0.078711, 0.975677,
		-0.751088, 0.651813, 0.104917,
		-0.627701, -0.754284, 0.192477,
		40.916481, 33.140774, 44.737713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.665482, 30.298923, 44.402832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011055, 30.154449, 44.262455>,  <36.218399, 30.067764, 44.178230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011055, 30.154449, 44.262455>,  <35.665482, 30.298923, 44.402832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011055, 30.154449, 44.262455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134944, 0.505343, -0.852302,
		0.485186, 0.783691, 0.387844,
		0.863936, -0.361187, -0.350939,
		36.270237, 30.046093, 44.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982426, 30.879387, 44.115444>,  <35.665482, 30.298923, 44.402832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982426, 30.879387, 44.115444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190735, 30.573374, 43.963905>,  <36.315720, 30.389767, 43.872982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190735, 30.573374, 43.963905>,  <35.982426, 30.879387, 44.115444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190735, 30.573374, 43.963905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191027, 0.328094, -0.925129,
		0.832050, 0.554149, 0.024720,
		0.520769, -0.765032, -0.378848,
		36.346966, 30.343864, 43.850250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504189, 31.132978, 43.604660>,  <35.982426, 30.879387, 44.115444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504189, 31.132978, 43.604660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448452, 30.746300, 43.518799>,  <36.415009, 30.514292, 43.467281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448452, 30.746300, 43.518799>,  <36.504189, 31.132978, 43.604660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448452, 30.746300, 43.518799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153433, 0.235232, -0.959752,
		0.978285, -0.100802, -0.181102,
		-0.139346, -0.966698, -0.214658,
		36.406647, 30.456291, 43.454403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014984, 30.954185, 43.223263>,  <36.504189, 31.132978, 43.604660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014984, 30.954185, 43.223263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.723679, 30.690163, 43.149551>,  <36.548897, 30.531748, 43.105324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.723679, 30.690163, 43.149551>,  <37.014984, 30.954185, 43.223263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723679, 30.690163, 43.149551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021889, 0.291169, -0.956421,
		0.684950, -0.692491, -0.226495,
		-0.728261, -0.660058, -0.184278,
		36.505199, 30.492146, 43.094269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087658, 31.000578, 42.559044>,  <37.014984, 30.954185, 43.223263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087658, 31.000578, 42.559044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.793247, 30.731434, 42.588768>,  <36.616600, 30.569948, 42.606602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.793247, 30.731434, 42.588768>,  <37.087658, 31.000578, 42.559044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793247, 30.731434, 42.588768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294736, 0.219696, -0.929981,
		0.609420, -0.706395, -0.360019,
		-0.736028, -0.672859, 0.074313,
		36.572437, 30.529575, 42.611061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102947, 30.645365, 41.951675>,  <37.087658, 31.000578, 42.559044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102947, 30.645365, 41.951675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.722549, 30.594524, 42.064430>,  <36.494312, 30.564020, 42.132084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.722549, 30.594524, 42.064430>,  <37.102947, 30.645365, 41.951675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722549, 30.594524, 42.064430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308509, 0.328258, -0.892787,
		0.020940, -0.935998, -0.351382,
		-0.950991, -0.127099, 0.281890,
		36.437252, 30.556395, 42.148998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900784, 30.261986, 41.426773>,  <37.102947, 30.645365, 41.951675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900784, 30.261986, 41.426773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.597725, 30.435337, 41.621979>,  <36.415890, 30.539349, 41.739101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.597725, 30.435337, 41.621979>,  <36.900784, 30.261986, 41.426773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597725, 30.435337, 41.621979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388826, 0.300841, -0.870809,
		-0.524206, -0.849516, -0.059421,
		-0.757643, 0.433379, 0.488017,
		36.370434, 30.565351, 41.768383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339153, 29.772549, 41.361275>,  <36.900784, 30.261986, 41.426773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339153, 29.772549, 41.361275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.216259, 30.146557, 41.432087>,  <36.142521, 30.370962, 41.474575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.216259, 30.146557, 41.432087>,  <36.339153, 29.772549, 41.361275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216259, 30.146557, 41.432087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190437, 0.121856, -0.974107,
		-0.932383, -0.332997, 0.140624,
		-0.307239, 0.935021, 0.177031,
		36.124088, 30.427063, 41.485195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831940, 29.870420, 40.818630>,  <36.339153, 29.772549, 41.361275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831940, 29.870420, 40.818630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.908142, 30.238926, 40.954266>,  <35.953861, 30.460030, 41.035645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.908142, 30.238926, 40.954266>,  <35.831940, 29.870420, 40.818630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908142, 30.238926, 40.954266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178868, 0.372203, -0.910753,
		-0.965254, 0.112850, 0.235691,
		0.190503, 0.921265, 0.339085,
		35.965294, 30.515305, 41.055992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307407, 30.184986, 40.694099>,  <35.831940, 29.870420, 40.818630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307407, 30.184986, 40.694099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595585, 30.459068, 40.736904>,  <35.768494, 30.623518, 40.762589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595585, 30.459068, 40.736904>,  <35.307407, 30.184986, 40.694099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595585, 30.459068, 40.736904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299820, 0.446876, -0.842858,
		-0.625350, 0.575151, 0.527388,
		0.720448, 0.685203, 0.107012,
		35.811718, 30.664629, 40.769009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008919, 30.804850, 40.624882>,  <35.307407, 30.184986, 40.694099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008919, 30.804850, 40.624882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397194, 30.864079, 40.549152>,  <35.630157, 30.899616, 40.503716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397194, 30.864079, 40.549152>,  <35.008919, 30.804850, 40.624882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397194, 30.864079, 40.549152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236147, 0.440840, -0.865964,
		-0.044764, 0.885288, 0.462884,
		0.970686, 0.148073, -0.189325,
		35.688400, 30.908501, 40.492355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089081, 31.596392, 40.503120>,  <35.008919, 30.804850, 40.624882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089081, 31.596392, 40.503120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412403, 31.417261, 40.350235>,  <35.606396, 31.309782, 40.258503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412403, 31.417261, 40.350235>,  <35.089081, 31.596392, 40.503120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412403, 31.417261, 40.350235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135083, 0.490804, -0.860734,
		0.573054, 0.747369, 0.336227,
		0.808308, -0.447829, -0.382214,
		35.654896, 31.282913, 40.235569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171848, 32.108093, 40.090057>,  <35.089081, 31.596392, 40.503120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171848, 32.108093, 40.090057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.354336, 31.767551, 39.986469>,  <35.463829, 31.563227, 39.924316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.354336, 31.767551, 39.986469>,  <35.171848, 32.108093, 40.090057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354336, 31.767551, 39.986469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054008, 0.263991, -0.963012,
		0.888226, 0.453333, 0.074459,
		0.456221, -0.851351, -0.258967,
		35.491203, 31.512146, 39.908779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692200, 32.253937, 39.623684>,  <35.171848, 32.108093, 40.090057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692200, 32.253937, 39.623684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623703, 31.865377, 39.557884>,  <35.582603, 31.632242, 39.518406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623703, 31.865377, 39.557884>,  <35.692200, 32.253937, 39.623684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623703, 31.865377, 39.557884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142818, 0.189674, -0.971405,
		0.974823, -0.142851, -0.171213,
		-0.171241, -0.971400, -0.164497,
		35.572330, 31.573957, 39.508533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099491, 32.959976, 39.685047>,  <35.692200, 32.253937, 39.623684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099491, 32.959976, 39.685047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.894344, 33.301994, 39.654419>,  <35.771255, 33.507206, 39.636040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.894344, 33.301994, 39.654419>,  <36.099491, 32.959976, 39.685047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894344, 33.301994, 39.654419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034874, 0.068373, 0.997050,
		0.857757, 0.514028, -0.005248,
		-0.512871, 0.855044, -0.076573,
		35.740482, 33.558506, 39.631447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393528, 33.437695, 40.090645>,  <36.099491, 32.959976, 39.685047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393528, 33.437695, 40.090645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011589, 33.545948, 40.041615>,  <35.782425, 33.610901, 40.012196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011589, 33.545948, 40.041615>,  <36.393528, 33.437695, 40.090645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011589, 33.545948, 40.041615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110171, 0.060628, 0.992062,
		0.275921, 0.960770, -0.028074,
		-0.954846, 0.270638, -0.122577,
		35.725136, 33.627140, 40.004841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400867, 34.006332, 40.632622>,  <36.393528, 33.437695, 40.090645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400867, 34.006332, 40.632622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033672, 33.874477, 40.544407>,  <35.813354, 33.795364, 40.491478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033672, 33.874477, 40.544407>,  <36.400867, 34.006332, 40.632622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033672, 33.874477, 40.544407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286574, 0.166898, 0.943409,
		-0.274172, 0.929240, -0.247675,
		-0.917990, -0.329634, -0.220537,
		35.758274, 33.775589, 40.478245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133377, 34.455856, 41.012981>,  <36.400867, 34.006332, 40.632622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133377, 34.455856, 41.012981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.852402, 34.175613, 40.962807>,  <35.683819, 34.007469, 40.932701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.852402, 34.175613, 40.962807>,  <36.133377, 34.455856, 41.012981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852402, 34.175613, 40.962807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203564, 0.028881, 0.978635,
		-0.682015, 0.712963, -0.162905,
		-0.702436, -0.700606, -0.125436,
		35.641670, 33.965431, 40.925175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517063, 34.678905, 41.359802>,  <36.133377, 34.455856, 41.012981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517063, 34.678905, 41.359802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493927, 34.280521, 41.332329>,  <35.480045, 34.041492, 41.315845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493927, 34.280521, 41.332329>,  <35.517063, 34.678905, 41.359802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493927, 34.280521, 41.332329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232369, -0.053482, 0.971156,
		-0.970906, 0.072132, -0.228337,
		-0.057840, -0.995960, -0.068687,
		35.476574, 33.981735, 41.311722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999432, 34.506229, 41.840309>,  <35.517063, 34.678905, 41.359802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999432, 34.506229, 41.840309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.164261, 34.152893, 41.750957>,  <35.263157, 33.940891, 41.697346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.164261, 34.152893, 41.750957>,  <34.999432, 34.506229, 41.840309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164261, 34.152893, 41.750957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061853, -0.217474, 0.974104,
		-0.909049, -0.415220, -0.034977,
		0.412074, -0.883345, -0.223377,
		35.287884, 33.887890, 41.683945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507999, 33.905258, 42.069759>,  <34.999432, 34.506229, 41.840309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507999, 33.905258, 42.069759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894703, 33.802998, 42.068085>,  <35.126724, 33.741642, 42.067078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894703, 33.802998, 42.068085>,  <34.507999, 33.905258, 42.069759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894703, 33.802998, 42.068085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069393, -0.278114, 0.958038,
		-0.246086, -0.925903, -0.286610,
		0.966761, -0.255648, -0.004189,
		35.184731, 33.726299, 42.066826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514427, 33.261562, 42.583210>,  <34.507999, 33.905258, 42.069759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514427, 33.261562, 42.583210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899452, 33.353905, 42.526402>,  <35.130466, 33.409309, 42.492317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899452, 33.353905, 42.526402>,  <34.514427, 33.261562, 42.583210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899452, 33.353905, 42.526402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160452, -0.063010, 0.985030,
		0.218451, -0.970945, -0.097693,
		0.962567, 0.230856, -0.142026,
		35.188221, 33.423161, 42.483795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891186, 32.639748, 42.808834>,  <34.514427, 33.261562, 42.583210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891186, 32.639748, 42.808834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.145351, 32.948353, 42.821507>,  <35.297852, 33.133518, 42.829109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.145351, 32.948353, 42.821507>,  <34.891186, 32.639748, 42.808834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145351, 32.948353, 42.821507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280973, -0.269239, 0.921176,
		0.719234, -0.576429, -0.387855,
		0.635418, 0.771518, 0.031685,
		35.335976, 33.179810, 42.831013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429131, 32.377335, 43.050591>,  <34.891186, 32.639748, 42.808834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429131, 32.377335, 43.050591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475590, 32.764477, 43.139824>,  <35.503464, 32.996761, 43.193363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475590, 32.764477, 43.139824>,  <35.429131, 32.377335, 43.050591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475590, 32.764477, 43.139824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392120, -0.251038, 0.884999,
		0.912553, -0.015314, -0.408672,
		0.116145, 0.967856, 0.223080,
		35.510433, 33.054832, 43.206749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181850, 32.508106, 43.229752>,  <35.429131, 32.377335, 43.050591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181850, 32.508106, 43.229752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951355, 32.767235, 43.429058>,  <35.813057, 32.922710, 43.548641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951355, 32.767235, 43.429058>,  <36.181850, 32.508106, 43.229752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951355, 32.767235, 43.429058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407457, -0.300776, 0.862272,
		0.708466, 0.699900, -0.090640,
		-0.576241, 0.647822, 0.498269,
		35.778484, 32.961582, 43.578537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678932, 32.849182, 43.666935>,  <36.181850, 32.508106, 43.229752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678932, 32.849182, 43.666935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.323936, 32.933128, 43.831043>,  <36.110939, 32.983498, 43.929508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.323936, 32.933128, 43.831043>,  <36.678932, 32.849182, 43.666935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323936, 32.933128, 43.831043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377542, -0.179388, 0.908450,
		0.264252, 0.961132, 0.079971,
		-0.887487, 0.209868, 0.410271,
		36.057690, 32.996090, 43.954124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835468, 33.430016, 44.097767>,  <36.678932, 32.849182, 43.666935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835468, 33.430016, 44.097767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483788, 33.286167, 44.222782>,  <36.272778, 33.199860, 44.297791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483788, 33.286167, 44.222782>,  <36.835468, 33.430016, 44.097767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483788, 33.286167, 44.222782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334249, 0.001916, 0.942483,
		-0.339532, 0.933098, 0.118517,
		-0.879202, -0.359617, 0.312538,
		36.220028, 33.178284, 44.316544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763264, 33.587246, 44.680790>,  <36.835468, 33.430016, 44.097767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763264, 33.587246, 44.680790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.495960, 33.289703, 44.684795>,  <36.335579, 33.111176, 44.687199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.495960, 33.289703, 44.684795>,  <36.763264, 33.587246, 44.680790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495960, 33.289703, 44.684795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361831, -0.313234, 0.878045,
		-0.650004, 0.590389, 0.478473,
		-0.668262, -0.743859, 0.010017,
		36.295483, 33.066547, 44.687801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800747, 34.234142, 45.196396>,  <36.763264, 33.587246, 44.680790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800747, 34.234142, 45.196396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172615, 34.377361, 45.231087>,  <37.395737, 34.463291, 45.251900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172615, 34.377361, 45.231087>,  <36.800747, 34.234142, 45.196396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172615, 34.377361, 45.231087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087001, 0.442130, -0.892722,
		-0.357976, 0.822390, 0.442185,
		0.929669, 0.358044, 0.086723,
		37.451515, 34.484776, 45.257103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703568, 34.876961, 44.898876>,  <36.800747, 34.234142, 45.196396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703568, 34.876961, 44.898876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.097633, 34.808327, 44.897896>,  <37.334072, 34.767147, 44.897308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.097633, 34.808327, 44.897896>,  <36.703568, 34.876961, 44.898876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097633, 34.808327, 44.897896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101691, 0.595237, -0.797090,
		0.138229, 0.785016, 0.603856,
		0.985166, -0.171588, -0.002450,
		37.393185, 34.756851, 44.897160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928761, 35.527199, 44.770992>,  <36.703568, 34.876961, 44.898876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928761, 35.527199, 44.770992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223419, 35.276001, 44.670609>,  <37.400215, 35.125282, 44.610378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223419, 35.276001, 44.670609>,  <36.928761, 35.527199, 44.770992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223419, 35.276001, 44.670609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173599, 0.534251, -0.827308,
		0.653620, 0.565864, 0.502572,
		0.736644, -0.627991, -0.250963,
		37.444412, 35.087605, 44.595318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432983, 35.942524, 44.398739>,  <36.928761, 35.527199, 44.770992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432983, 35.942524, 44.398739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507553, 35.565556, 44.287678>,  <37.552296, 35.339375, 44.221039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507553, 35.565556, 44.287678>,  <37.432983, 35.942524, 44.398739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507553, 35.565556, 44.287678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102422, 0.299713, -0.948516,
		0.977116, 0.148388, 0.152398,
		0.186424, -0.942419, -0.277656,
		37.563480, 35.282829, 44.204380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016468, 36.008560, 44.014370>,  <37.432983, 35.942524, 44.398739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016468, 36.008560, 44.014370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886150, 35.653122, 43.885212>,  <37.807961, 35.439861, 43.807716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886150, 35.653122, 43.885212>,  <38.016468, 36.008560, 44.014370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886150, 35.653122, 43.885212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235707, 0.254405, -0.937934,
		0.915587, -0.381683, 0.126563,
		-0.325795, -0.888592, -0.322895,
		37.788410, 35.386543, 43.788345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521450, 35.824898, 43.401524>,  <38.016468, 36.008560, 44.014370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521450, 35.824898, 43.401524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.174931, 35.627003, 43.373924>,  <37.967018, 35.508266, 43.357365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.174931, 35.627003, 43.373924>,  <38.521450, 35.824898, 43.401524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174931, 35.627003, 43.373924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068306, 0.019506, -0.997474,
		0.494835, -0.868823, 0.016896,
		-0.866299, -0.494739, -0.068998,
		37.915039, 35.478580, 43.353226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777294, 35.283451, 42.993958>,  <38.521450, 35.824898, 43.401524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777294, 35.283451, 42.993958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.378799, 35.309086, 42.970592>,  <38.139702, 35.324467, 42.956573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.378799, 35.309086, 42.970592>,  <38.777294, 35.283451, 42.993958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378799, 35.309086, 42.970592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060016, 0.023318, -0.997925,
		-0.062597, -0.997671, -0.027077,
		-0.996233, 0.064092, -0.058416,
		38.079929, 35.328312, 42.953068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538685, 34.691273, 42.495678>,  <38.777294, 35.283451, 42.993958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538685, 34.691273, 42.495678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.291912, 35.005230, 42.518810>,  <38.143848, 35.193604, 42.532692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.291912, 35.005230, 42.518810>,  <38.538685, 34.691273, 42.495678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291912, 35.005230, 42.518810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035809, 0.045415, -0.998326,
		-0.786202, -0.617970, 0.000088,
		-0.616932, 0.784889, 0.057834,
		38.106834, 35.240696, 42.536160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845757, 34.561329, 42.178020>,  <38.538685, 34.691273, 42.495678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845757, 34.561329, 42.178020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.952412, 34.946846, 42.179047>,  <38.016403, 35.178158, 42.179665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.952412, 34.946846, 42.179047>,  <37.845757, 34.561329, 42.178020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952412, 34.946846, 42.179047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038560, 0.013331, -0.999167,
		-0.963025, 0.266318, 0.040718,
		0.266639, 0.963793, 0.002569,
		38.032402, 35.235985, 42.179817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425922, 34.940380, 41.713936>,  <37.845757, 34.561329, 42.178020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425922, 34.940380, 41.713936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738121, 35.189106, 41.739773>,  <37.925442, 35.338341, 41.755276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738121, 35.189106, 41.739773>,  <37.425922, 34.940380, 41.713936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738121, 35.189106, 41.739773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066449, 0.185245, -0.980443,
		-0.621619, 0.760941, 0.185902,
		0.780496, 0.621815, 0.064588,
		37.972271, 35.375652, 41.759148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240803, 35.519695, 41.297211>,  <37.425922, 34.940380, 41.713936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240803, 35.519695, 41.297211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.639572, 35.543121, 41.318058>,  <37.878834, 35.557178, 41.330566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.639572, 35.543121, 41.318058>,  <37.240803, 35.519695, 41.297211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639572, 35.543121, 41.318058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023515, 0.410798, -0.911423,
		-0.074789, 0.909843, 0.408157,
		0.996922, 0.058567, 0.052119,
		37.938648, 35.560692, 41.333694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339977, 36.117157, 40.949448>,  <37.240803, 35.519695, 41.297211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339977, 36.117157, 40.949448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.689857, 35.923325, 40.945946>,  <37.899784, 35.807026, 40.943844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.689857, 35.923325, 40.945946>,  <37.339977, 36.117157, 40.949448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689857, 35.923325, 40.945946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248045, 0.463104, -0.850887,
		0.416381, 0.742099, 0.525276,
		0.874700, -0.484585, -0.008754,
		37.952267, 35.777950, 40.943321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760170, 36.605385, 40.657154>,  <37.339977, 36.117157, 40.949448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760170, 36.605385, 40.657154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940090, 36.254776, 40.588581>,  <38.048042, 36.044411, 40.547436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940090, 36.254776, 40.588581>,  <37.760170, 36.605385, 40.657154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940090, 36.254776, 40.588581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494306, 0.404182, -0.769610,
		0.743870, 0.261431, 0.615071,
		0.449800, -0.876522, -0.171432,
		38.075031, 35.991817, 40.537151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425331, 36.833118, 40.442230>,  <37.760170, 36.605385, 40.657154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425331, 36.833118, 40.442230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413784, 36.441715, 40.360550>,  <38.406857, 36.206875, 40.311543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413784, 36.441715, 40.360550>,  <38.425331, 36.833118, 40.442230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413784, 36.441715, 40.360550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525142, 0.158977, -0.836034,
		0.850525, -0.131365, 0.509264,
		-0.028865, -0.978504, -0.204199,
		38.405125, 36.148163, 40.299290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.776983, 37.535484, 27.283039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386215, 37.452042, 27.301416>,  <26.151754, 37.401978, 27.312443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386215, 37.452042, 27.301416>,  <26.776983, 37.535484, 27.283039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386215, 37.452042, 27.301416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109060, -0.302163, 0.946997,
		-0.183667, 0.930151, 0.317940,
		-0.976920, -0.208606, 0.045945,
		26.093140, 37.389462, 27.315201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467596, 37.948166, 27.887516>,  <26.776983, 37.535484, 27.283039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467596, 37.948166, 27.887516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.298475, 37.596611, 27.799162>,  <26.197002, 37.385677, 27.746149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.298475, 37.596611, 27.799162>,  <26.467596, 37.948166, 27.887516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298475, 37.596611, 27.799162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121532, -0.296533, 0.947258,
		-0.898035, 0.373659, 0.232188,
		-0.422803, -0.878890, -0.220885,
		26.171635, 37.332943, 27.732897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935026, 37.874065, 28.383125>,  <26.467596, 37.948166, 27.887516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935026, 37.874065, 28.383125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.025291, 37.508808, 28.247335>,  <26.079451, 37.289654, 28.165861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.025291, 37.508808, 28.247335>,  <25.935026, 37.874065, 28.383125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025291, 37.508808, 28.247335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218866, -0.292035, 0.931028,
		-0.949302, -0.284396, 0.133956,
		0.225661, -0.913145, -0.339474,
		26.092989, 37.234863, 28.145493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517260, 37.478046, 28.762121>,  <25.935026, 37.874065, 28.383125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517260, 37.478046, 28.762121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.801189, 37.243652, 28.605776>,  <25.971548, 37.103016, 28.511969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.801189, 37.243652, 28.605776>,  <25.517260, 37.478046, 28.762121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801189, 37.243652, 28.605776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117999, -0.448137, 0.886143,
		-0.694423, -0.675129, -0.248955,
		0.709827, -0.585981, -0.390861,
		26.014137, 37.067860, 28.488518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310568, 36.736320, 29.009966>,  <25.517260, 37.478046, 28.762121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310568, 36.736320, 29.009966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690365, 36.701984, 28.889238>,  <25.918243, 36.681385, 28.816801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690365, 36.701984, 28.889238>,  <25.310568, 36.736320, 29.009966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690365, 36.701984, 28.889238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159288, -0.696866, 0.699289,
		-0.270351, -0.712046, -0.647997,
		0.949493, -0.085835, -0.301819,
		25.975212, 36.676235, 28.798693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450535, 36.004398, 28.934048>,  <25.310568, 36.736320, 29.009966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450535, 36.004398, 28.934048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.798004, 36.191223, 29.000088>,  <26.006485, 36.303318, 29.039711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.798004, 36.191223, 29.000088>,  <25.450535, 36.004398, 28.934048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798004, 36.191223, 29.000088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239999, -0.688335, 0.684540,
		0.433367, -0.555018, -0.710033,
		0.868673, 0.467065, 0.165098,
		26.058605, 36.331341, 29.049618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831917, 35.461647, 29.217005>,  <25.450535, 36.004398, 28.934048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831917, 35.461647, 29.217005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.038897, 35.796875, 29.286160>,  <26.163084, 35.998013, 29.327652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.038897, 35.796875, 29.286160>,  <25.831917, 35.461647, 29.217005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038897, 35.796875, 29.286160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429668, -0.429183, 0.794473,
		0.740022, -0.336815, -0.582171,
		0.517449, 0.838067, 0.172886,
		26.194132, 36.048294, 29.338026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586636, 35.356407, 29.263109>,  <25.831917, 35.461647, 29.217005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586636, 35.356407, 29.263109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527834, 35.683514, 29.485695>,  <26.492554, 35.879776, 29.619247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527834, 35.683514, 29.485695>,  <26.586636, 35.356407, 29.263109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527834, 35.683514, 29.485695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624943, -0.359283, 0.693082,
		0.766705, 0.449644, -0.458240,
		-0.147002, 0.817763, 0.556466,
		26.483734, 35.928841, 29.652636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258204, 35.552151, 29.467741>,  <26.586636, 35.356407, 29.263109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258204, 35.552151, 29.467741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.009665, 35.713165, 29.736633>,  <26.860542, 35.809772, 29.897968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.009665, 35.713165, 29.736633>,  <27.258204, 35.552151, 29.467741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009665, 35.713165, 29.736633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578596, -0.342811, 0.740073,
		0.528352, 0.848792, -0.019899,
		-0.621346, 0.402533, 0.672232,
		26.823261, 35.833923, 29.938303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669155, 35.770031, 30.064833>,  <27.258204, 35.552151, 29.467741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669155, 35.770031, 30.064833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300314, 35.771030, 30.219608>,  <27.079010, 35.771629, 30.312473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300314, 35.771030, 30.219608>,  <27.669155, 35.770031, 30.064833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300314, 35.771030, 30.219608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365224, -0.324701, 0.872457,
		0.127823, 0.945814, 0.298493,
		-0.922102, 0.002503, 0.386938,
		27.023684, 35.771782, 30.335690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762209, 36.081772, 30.729616>,  <27.669155, 35.770031, 30.064833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762209, 36.081772, 30.729616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402704, 35.906704, 30.740011>,  <27.187002, 35.801662, 30.746248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402704, 35.906704, 30.740011>,  <27.762209, 36.081772, 30.729616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402704, 35.906704, 30.740011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143765, -0.238187, 0.960520,
		-0.414200, 0.867013, 0.276995,
		-0.898760, -0.437670, 0.025989,
		27.133076, 35.775402, 30.747808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570847, 36.162392, 31.406235>,  <27.762209, 36.081772, 30.729616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570847, 36.162392, 31.406235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318161, 35.873440, 31.293730>,  <27.166550, 35.700069, 31.226227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318161, 35.873440, 31.293730>,  <27.570847, 36.162392, 31.406235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318161, 35.873440, 31.293730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149028, -0.469224, 0.870414,
		-0.760743, 0.507935, 0.404069,
		-0.631712, -0.722379, -0.281262,
		27.128647, 35.656727, 31.209351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223486, 36.055569, 32.024162>,  <27.570847, 36.162392, 31.406235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223486, 36.055569, 32.024162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156385, 35.719269, 31.818249>,  <27.116125, 35.517490, 31.694700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156385, 35.719269, 31.818249>,  <27.223486, 36.055569, 32.024162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156385, 35.719269, 31.818249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086489, -0.532724, 0.841858,
		-0.982028, 0.096701, 0.162081,
		-0.167753, -0.840746, -0.514787,
		27.106060, 35.467045, 31.663813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693893, 35.762943, 32.314320>,  <27.223486, 36.055569, 32.024162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693893, 35.762943, 32.314320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.905554, 35.474979, 32.134663>,  <27.032551, 35.302200, 32.026871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.905554, 35.474979, 32.134663>,  <26.693893, 35.762943, 32.314320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905554, 35.474979, 32.134663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037383, -0.509023, 0.859940,
		-0.847704, -0.471828, -0.242437,
		0.529150, -0.719912, -0.449140,
		27.064299, 35.259007, 31.999920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553953, 35.181114, 32.678432>,  <26.693893, 35.762943, 32.314320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553953, 35.181114, 32.678432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864616, 35.033115, 32.474506>,  <27.051014, 34.944317, 32.352150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864616, 35.033115, 32.474506>,  <26.553953, 35.181114, 32.678432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864616, 35.033115, 32.474506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190883, -0.633035, 0.750220,
		-0.600311, -0.679976, -0.421022,
		0.776653, -0.370000, -0.509814,
		27.097614, 34.922115, 32.321564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500092, 34.432167, 32.628651>,  <26.553953, 35.181114, 32.678432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500092, 34.432167, 32.628651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.880196, 34.555618, 32.611900>,  <27.108259, 34.629688, 32.601852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.880196, 34.555618, 32.611900>,  <26.500092, 34.432167, 32.628651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880196, 34.555618, 32.611900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235736, -0.624844, 0.744310,
		0.203550, -0.717160, -0.666520,
		0.950261, 0.308627, -0.041873,
		27.165274, 34.648205, 32.599339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865084, 33.839359, 32.728291>,  <26.500092, 34.432167, 32.628651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865084, 33.839359, 32.728291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122822, 34.135807, 32.803726>,  <27.277464, 34.313675, 32.848988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122822, 34.135807, 32.803726>,  <26.865084, 33.839359, 32.728291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122822, 34.135807, 32.803726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327018, -0.489953, 0.808087,
		0.691289, -0.459012, -0.558057,
		0.644344, 0.741116, 0.188594,
		27.316126, 34.358143, 32.860306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456186, 33.515751, 33.019283>,  <26.865084, 33.839359, 32.728291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456186, 33.515751, 33.019283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514580, 33.899307, 33.116623>,  <27.549616, 34.129440, 33.175026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514580, 33.899307, 33.116623>,  <27.456186, 33.515751, 33.019283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514580, 33.899307, 33.116623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378677, -0.281408, 0.881710,
		0.913943, -0.036566, -0.404191,
		0.145983, 0.958891, 0.243345,
		27.558374, 34.186974, 33.189625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178720, 33.618256, 33.189720>,  <27.456186, 33.515751, 33.019283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178720, 33.618256, 33.189720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983055, 33.909790, 33.381355>,  <27.865656, 34.084709, 33.496334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983055, 33.909790, 33.381355>,  <28.178720, 33.618256, 33.189720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983055, 33.909790, 33.381355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422900, -0.282205, 0.861113,
		0.762808, 0.623829, -0.170179,
		-0.489162, 0.728833, 0.479086,
		27.836306, 34.128441, 33.525082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624645, 33.925339, 33.674759>,  <28.178720, 33.618256, 33.189720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624645, 33.925339, 33.674759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.249384, 33.991032, 33.796669>,  <28.024227, 34.030449, 33.869816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.249384, 33.991032, 33.796669>,  <28.624645, 33.925339, 33.674759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249384, 33.991032, 33.796669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237671, -0.334606, 0.911894,
		0.251748, 0.927936, 0.274878,
		-0.938155, 0.164237, 0.304780,
		27.967937, 34.040302, 33.888103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066425, 33.321243, 33.943718>,  <28.624645, 33.925339, 33.674759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066425, 33.321243, 33.943718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384901, 33.086418, 33.885151>,  <29.575987, 32.945522, 33.850010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384901, 33.086418, 33.885151>,  <29.066425, 33.321243, 33.943718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384901, 33.086418, 33.885151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092999, 0.357861, -0.929132,
		0.597858, 0.726148, 0.339522,
		0.796189, -0.587065, -0.146419,
		29.623758, 32.910297, 33.841225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538494, 33.715424, 33.597153>,  <29.066425, 33.321243, 33.943718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538494, 33.715424, 33.597153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.656754, 33.340786, 33.521912>,  <29.727709, 33.116005, 33.476765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.656754, 33.340786, 33.521912>,  <29.538494, 33.715424, 33.597153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656754, 33.340786, 33.521912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011149, 0.200276, -0.979676,
		0.955232, 0.287541, 0.069653,
		0.295647, -0.936595, -0.188105,
		29.745447, 33.059807, 33.465481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172060, 33.751652, 33.228481>,  <29.538494, 33.715424, 33.597153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172060, 33.751652, 33.228481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.061815, 33.387615, 33.104687>,  <29.995668, 33.169193, 33.030411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.061815, 33.387615, 33.104687>,  <30.172060, 33.751652, 33.228481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061815, 33.387615, 33.104687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017609, 0.317118, -0.948223,
		0.961108, -0.266789, -0.071375,
		-0.275610, -0.910088, -0.309483,
		29.979132, 33.114590, 33.011841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695574, 33.523079, 32.750866>,  <30.172060, 33.751652, 33.228481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695574, 33.523079, 32.750866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.367128, 33.306030, 32.680058>,  <30.170061, 33.175800, 32.637573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.367128, 33.306030, 32.680058>,  <30.695574, 33.523079, 32.750866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367128, 33.306030, 32.680058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066012, 0.217775, -0.973764,
		0.566935, -0.811256, -0.142999,
		-0.821113, -0.542621, -0.177017,
		30.120794, 33.143246, 32.626953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811211, 33.240292, 32.092556>,  <30.695574, 33.523079, 32.750866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811211, 33.240292, 32.092556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.422937, 33.150806, 32.127720>,  <30.189974, 33.097115, 32.148819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.422937, 33.150806, 32.127720>,  <30.811211, 33.240292, 32.092556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422937, 33.150806, 32.127720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148133, 0.268759, -0.951748,
		0.189291, -0.936868, -0.294019,
		-0.970683, -0.223712, 0.087907,
		30.131733, 33.083691, 32.154091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653458, 32.783218, 31.530369>,  <30.811211, 33.240292, 32.092556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653458, 32.783218, 31.530369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320671, 32.979591, 31.633764>,  <30.120998, 33.097416, 31.695801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320671, 32.979591, 31.633764>,  <30.653458, 32.783218, 31.530369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320671, 32.979591, 31.633764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198229, 0.172121, -0.964925,
		-0.518203, -0.854026, -0.045882,
		-0.831968, 0.490932, 0.258487,
		30.071081, 33.126869, 31.711309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140379, 32.477718, 31.110346>,  <30.653458, 32.783218, 31.530369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140379, 32.477718, 31.110346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988071, 32.830612, 31.221106>,  <29.896687, 33.042347, 31.287561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988071, 32.830612, 31.221106>,  <30.140379, 32.477718, 31.110346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988071, 32.830612, 31.221106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393200, 0.116549, -0.912036,
		-0.836904, -0.456154, 0.302517,
		-0.380771, 0.882236, 0.276900,
		29.873840, 33.095284, 31.304176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636396, 32.577728, 30.579538>,  <30.140379, 32.477718, 31.110346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636396, 32.577728, 30.579538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.669861, 32.936802, 30.752588>,  <29.689939, 33.152245, 30.856419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.669861, 32.936802, 30.752588>,  <29.636396, 32.577728, 30.579538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669861, 32.936802, 30.752588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316769, 0.435583, -0.842570,
		-0.944806, -0.066552, 0.320800,
		0.083660, 0.897685, 0.432623,
		29.694960, 33.206108, 30.882376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131153, 33.023739, 30.181658>,  <29.636396, 32.577728, 30.579538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131153, 33.023739, 30.181658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369469, 33.272846, 30.384516>,  <29.512457, 33.422310, 30.506229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369469, 33.272846, 30.384516>,  <29.131153, 33.023739, 30.181658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369469, 33.272846, 30.384516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074052, 0.671356, -0.737426,
		-0.799721, 0.401794, 0.446103,
		0.595788, 0.622770, 0.507144,
		29.548204, 33.459679, 30.536659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744970, 33.591633, 30.440832>,  <29.131153, 33.023739, 30.181658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744970, 33.591633, 30.440832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.126057, 33.713173, 30.440285>,  <29.354710, 33.786098, 30.439957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.126057, 33.713173, 30.440285>,  <28.744970, 33.591633, 30.440832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126057, 33.713173, 30.440285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224005, 0.699297, -0.678826,
		-0.205308, 0.647036, 0.734297,
		0.952718, 0.303854, -0.001368,
		29.411873, 33.804329, 30.439875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694521, 34.298817, 30.414244>,  <28.744970, 33.591633, 30.440832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694521, 34.298817, 30.414244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060349, 34.211792, 30.277872>,  <29.279844, 34.159576, 30.196049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060349, 34.211792, 30.277872>,  <28.694521, 34.298817, 30.414244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060349, 34.211792, 30.277872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108432, 0.680205, -0.724957,
		0.389627, 0.699990, 0.598503,
		0.914567, -0.217566, -0.340928,
		29.334719, 34.146523, 30.175594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069689, 34.848190, 30.278528>,  <28.694521, 34.298817, 30.414244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069689, 34.848190, 30.278528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.241314, 34.591988, 30.023764>,  <29.344290, 34.438267, 29.870905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.241314, 34.591988, 30.023764>,  <29.069689, 34.848190, 30.278528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241314, 34.591988, 30.023764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057417, 0.684347, -0.726892,
		0.901448, 0.348452, 0.256852,
		0.429063, -0.640508, -0.636910,
		29.370033, 34.399834, 29.832691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566484, 35.329407, 29.911837>,  <29.069689, 34.848190, 30.278528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566484, 35.329407, 29.911837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552135, 35.005806, 29.677155>,  <29.543526, 34.811646, 29.536345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552135, 35.005806, 29.677155>,  <29.566484, 35.329407, 29.911837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552135, 35.005806, 29.677155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068358, 0.583722, -0.809071,
		0.997016, -0.069129, 0.034363,
		-0.035872, -0.809005, -0.586706,
		29.541374, 34.763103, 29.501143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111279, 35.339283, 29.491268>,  <29.566484, 35.329407, 29.911837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111279, 35.339283, 29.491268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877550, 35.093689, 29.279005>,  <29.737312, 34.946335, 29.151648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877550, 35.093689, 29.279005>,  <30.111279, 35.339283, 29.491268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877550, 35.093689, 29.279005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147901, 0.562379, -0.813544,
		0.797931, -0.553856, -0.237802,
		-0.584321, -0.613981, -0.530656,
		29.702253, 34.909496, 29.119808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433817, 35.252007, 28.870811>,  <30.111279, 35.339283, 29.491268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433817, 35.252007, 28.870811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.038820, 35.193874, 28.846334>,  <29.801823, 35.158997, 28.831648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.038820, 35.193874, 28.846334>,  <30.433817, 35.252007, 28.870811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038820, 35.193874, 28.846334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057873, 0.695007, -0.716670,
		0.146679, -0.704163, -0.694723,
		-0.987489, -0.145326, -0.061191,
		29.742573, 35.150276, 28.827976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311550, 35.389885, 28.278244>,  <30.433817, 35.252007, 28.870811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311550, 35.389885, 28.278244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.931526, 35.395046, 28.402966>,  <29.703512, 35.398144, 28.477798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.931526, 35.395046, 28.402966>,  <30.311550, 35.389885, 28.278244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931526, 35.395046, 28.402966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240454, 0.606626, -0.757751,
		-0.198925, -0.794883, -0.573228,
		-0.950059, 0.012901, 0.311806,
		29.646509, 35.398918, 28.496508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794853, 35.309372, 27.656275>,  <30.311550, 35.389885, 28.278244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794853, 35.309372, 27.656275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556849, 35.466030, 27.937010>,  <29.414045, 35.560024, 28.105450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556849, 35.466030, 27.937010>,  <29.794853, 35.309372, 27.656275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556849, 35.466030, 27.937010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307315, 0.696015, -0.648937,
		-0.742642, -0.601811, -0.293779,
		-0.595013, 0.391645, 0.701836,
		29.378345, 35.583523, 28.147560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171118, 35.443039, 27.353281>,  <29.794853, 35.309372, 27.656275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171118, 35.443039, 27.353281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129057, 35.658752, 27.687496>,  <29.103821, 35.788181, 27.888025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129057, 35.658752, 27.687496>,  <29.171118, 35.443039, 27.353281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129057, 35.658752, 27.687496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464031, 0.716510, -0.520854,
		-0.879556, -0.442483, 0.174901,
		-0.105151, 0.539280, 0.835536,
		29.097511, 35.820538, 27.938156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495363, 35.720486, 27.429270>,  <29.171118, 35.443039, 27.353281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495363, 35.720486, 27.429270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691828, 35.969833, 27.672636>,  <28.809706, 36.119442, 27.818655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691828, 35.969833, 27.672636>,  <28.495363, 35.720486, 27.429270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691828, 35.969833, 27.672636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570646, 0.757984, -0.315948,
		-0.658121, -0.192007, 0.728018,
		0.491162, 0.623373, 0.608413,
		28.839176, 36.156845, 27.855160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986994, 35.950455, 27.916214>,  <28.495363, 35.720486, 27.429270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986994, 35.950455, 27.916214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297159, 36.198357, 27.867813>,  <28.483259, 36.347095, 27.838772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297159, 36.198357, 27.867813>,  <27.986994, 35.950455, 27.916214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297159, 36.198357, 27.867813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630458, 0.749090, -0.203439,
		-0.035439, 0.234037, 0.971582,
		0.775414, 0.619751, -0.121004,
		28.529783, 36.384281, 27.831512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915131, 36.621647, 28.329710>,  <27.986994, 35.950455, 27.916214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915131, 36.621647, 28.329710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157494, 36.698719, 28.020969>,  <28.302912, 36.744961, 27.835726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157494, 36.698719, 28.020969>,  <27.915131, 36.621647, 28.329710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157494, 36.698719, 28.020969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461660, 0.875307, -0.143901,
		0.647879, 0.443523, 0.619306,
		0.605907, 0.192678, -0.771850,
		28.339266, 36.756523, 27.789415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382196, 37.267410, 28.387918>,  <27.915131, 36.621647, 28.329710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382196, 37.267410, 28.387918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307728, 37.197086, 28.001255>,  <28.263046, 37.154892, 27.769257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307728, 37.197086, 28.001255>,  <28.382196, 37.267410, 28.387918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307728, 37.197086, 28.001255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442750, 0.893315, -0.077204,
		0.877106, 0.413615, -0.244149,
		-0.186169, -0.175813, -0.966659,
		28.251877, 37.144344, 27.711258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.178577, 33.725727, 45.399948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057659, 33.359211, 45.294853>,  <40.985107, 33.139301, 45.231796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057659, 33.359211, 45.294853>,  <41.178577, 33.725727, 45.399948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057659, 33.359211, 45.294853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220770, -0.335438, 0.915829,
		-0.927295, 0.218852, 0.303692,
		-0.302300, -0.916289, -0.262734,
		40.966969, 33.084324, 45.216034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721573, 33.611095, 45.884823>,  <41.178577, 33.725727, 45.399948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721573, 33.611095, 45.884823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866219, 33.274323, 45.724628>,  <40.953007, 33.072258, 45.628513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866219, 33.274323, 45.724628>,  <40.721573, 33.611095, 45.884823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866219, 33.274323, 45.724628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177719, -0.359429, 0.916093,
		-0.915234, -0.402443, 0.019654,
		0.361611, -0.841933, -0.400484,
		40.974701, 33.021744, 45.604485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372173, 33.164093, 46.223701>,  <40.721573, 33.611095, 45.884823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372173, 33.164093, 46.223701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.690239, 32.966061, 46.083641>,  <40.881077, 32.847240, 45.999603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.690239, 32.966061, 46.083641>,  <40.372173, 33.164093, 46.223701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690239, 32.966061, 46.083641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210325, -0.316419, 0.925010,
		-0.568750, -0.809181, -0.147477,
		0.795165, -0.495081, -0.350154,
		40.928787, 32.817535, 45.978596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348873, 32.593689, 46.536858>,  <40.372173, 33.164093, 46.223701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348873, 32.593689, 46.536858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.736877, 32.594589, 46.439629>,  <40.969681, 32.595131, 46.381290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.736877, 32.594589, 46.439629>,  <40.348873, 32.593689, 46.536858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736877, 32.594589, 46.439629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228735, -0.346879, 0.909591,
		-0.082269, -0.937907, -0.336990,
		0.970006, 0.002251, -0.243070,
		41.027878, 32.595264, 46.366707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686893, 32.002987, 46.796535>,  <40.348873, 32.593689, 46.536858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686893, 32.002987, 46.796535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.012390, 32.226475, 46.732449>,  <41.207687, 32.360565, 46.693996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.012390, 32.226475, 46.732449>,  <40.686893, 32.002987, 46.796535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012390, 32.226475, 46.732449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414372, -0.364363, 0.833988,
		0.407586, -0.745035, -0.528012,
		0.813738, 0.558715, -0.160213,
		41.256512, 32.394089, 46.684383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274567, 31.582346, 46.809528>,  <40.686893, 32.002987, 46.796535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274567, 31.582346, 46.809528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.403503, 31.954107, 46.881424>,  <41.480865, 32.177166, 46.924561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.403503, 31.954107, 46.881424>,  <41.274567, 31.582346, 46.809528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403503, 31.954107, 46.881424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427108, -0.312237, 0.848579,
		0.844793, -0.196766, -0.497602,
		0.322342, 0.929404, 0.179735,
		41.500206, 32.232929, 46.935345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857456, 31.451893, 47.121529>,  <41.274567, 31.582346, 46.809528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857456, 31.451893, 47.121529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.792606, 31.838449, 47.201332>,  <41.753696, 32.070385, 47.249214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.792606, 31.838449, 47.201332>,  <41.857456, 31.451893, 47.121529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792606, 31.838449, 47.201332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322082, -0.139289, 0.936409,
		0.932727, 0.216069, -0.288676,
		-0.162120, 0.966392, 0.199510,
		41.743969, 32.128368, 47.261185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461330, 31.665741, 47.497253>,  <41.857456, 31.451893, 47.121529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461330, 31.665741, 47.497253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.174137, 31.934713, 47.569180>,  <42.001820, 32.096096, 47.612335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.174137, 31.934713, 47.569180>,  <42.461330, 31.665741, 47.497253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174137, 31.934713, 47.569180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240159, -0.003153, 0.970729,
		0.653316, 0.740152, -0.159227,
		-0.717985, 0.672432, 0.179814,
		41.958740, 32.136444, 47.623123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819462, 32.217789, 47.930656>,  <42.461330, 31.665741, 47.497253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819462, 32.217789, 47.930656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.423992, 32.203945, 47.989079>,  <42.186710, 32.195637, 48.024132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.423992, 32.203945, 47.989079>,  <42.819462, 32.217789, 47.930656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423992, 32.203945, 47.989079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148192, -0.070555, 0.986439,
		-0.023838, 0.996907, 0.074885,
		-0.988671, -0.034612, 0.146051,
		42.127392, 32.193562, 48.032894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711887, 32.503414, 48.662975>,  <42.819462, 32.217789, 47.930656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711887, 32.503414, 48.662975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.370811, 32.310791, 48.581959>,  <42.166164, 32.195217, 48.533348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.370811, 32.310791, 48.581959>,  <42.711887, 32.503414, 48.662975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370811, 32.310791, 48.581959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051135, -0.462773, 0.885000,
		-0.519910, 0.744274, 0.419226,
		-0.852689, -0.481557, -0.202542,
		42.115005, 32.166325, 48.521194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229198, 32.706367, 49.156647>,  <42.711887, 32.503414, 48.662975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229198, 32.706367, 49.156647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.085564, 32.362278, 49.011837>,  <41.999382, 32.155823, 48.924950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.085564, 32.362278, 49.011837>,  <42.229198, 32.706367, 49.156647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085564, 32.362278, 49.011837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088560, -0.417554, 0.904326,
		-0.929093, 0.292671, 0.226121,
		-0.359088, -0.860228, -0.362027,
		41.977837, 32.104210, 48.903229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764553, 32.455814, 49.731445>,  <42.229198, 32.706367, 49.156647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764553, 32.455814, 49.731445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.894859, 32.145718, 49.514973>,  <41.973045, 31.959661, 49.385090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.894859, 32.145718, 49.514973>,  <41.764553, 32.455814, 49.731445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894859, 32.145718, 49.514973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144782, -0.524753, 0.838852,
		-0.934298, -0.351626, -0.058707,
		0.325769, -0.775238, -0.541185,
		41.992592, 31.913147, 49.352615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498459, 31.909473, 50.103428>,  <41.764553, 32.455814, 49.731445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498459, 31.909473, 50.103428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.799713, 31.768345, 49.881329>,  <41.980465, 31.683668, 49.748070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.799713, 31.768345, 49.881329>,  <41.498459, 31.909473, 50.103428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799713, 31.768345, 49.881329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263151, -0.611976, 0.745813,
		-0.602924, -0.707820, -0.368067,
		0.753150, -0.352811, -0.555239,
		42.025654, 31.662498, 49.714756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873814, 32.186394, 50.260998>,  <41.498459, 31.909473, 50.103428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873814, 32.186394, 50.260998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.478073, 32.189156, 50.319141>,  <40.240627, 32.190811, 50.354027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.478073, 32.189156, 50.319141>,  <40.873814, 32.186394, 50.260998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478073, 32.189156, 50.319141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115481, 0.570581, -0.813082,
		-0.088552, -0.821213, -0.563709,
		-0.989355, 0.006902, 0.145361,
		40.181267, 32.191227, 50.362751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553089, 32.267136, 49.580257>,  <40.873814, 32.186394, 50.260998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553089, 32.267136, 49.580257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.255123, 32.372890, 49.825272>,  <40.076344, 32.436344, 49.972279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.255123, 32.372890, 49.825272>,  <40.553089, 32.267136, 49.580257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255123, 32.372890, 49.825272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335240, 0.645461, -0.686291,
		-0.576815, -0.716575, -0.392180,
		-0.744915, 0.264389, 0.612536,
		40.031647, 32.452206, 50.009033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071270, 32.041336, 49.256271>,  <40.553089, 32.267136, 49.580257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071270, 32.041336, 49.256271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.904732, 32.306034, 49.505672>,  <39.804810, 32.464851, 49.655312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.904732, 32.306034, 49.505672>,  <40.071270, 32.041336, 49.256271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904732, 32.306034, 49.505672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467528, 0.432332, -0.771043,
		-0.779790, -0.612526, 0.129382,
		-0.416348, 0.661741, 0.623501,
		39.779827, 32.504555, 49.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265717, 32.043571, 49.281731>,  <40.071270, 32.041336, 49.256271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265717, 32.043571, 49.281731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.386524, 32.411144, 49.383202>,  <39.459007, 32.631687, 49.444084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.386524, 32.411144, 49.383202>,  <39.265717, 32.043571, 49.281731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386524, 32.411144, 49.383202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521328, 0.381992, -0.763085,
		-0.798125, 0.098215, 0.594432,
		0.302015, 0.918932, 0.253675,
		39.477127, 32.686825, 49.459305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679996, 32.305073, 49.102871>,  <39.265717, 32.043571, 49.281731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679996, 32.305073, 49.102871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.922085, 32.613583, 49.181698>,  <39.067337, 32.798691, 49.228996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.922085, 32.613583, 49.181698>,  <38.679996, 32.305073, 49.102871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922085, 32.613583, 49.181698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483531, 0.552834, -0.678655,
		-0.632378, 0.315448, 0.707524,
		0.605224, 0.771277, 0.197071,
		39.103653, 32.844967, 49.240818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276951, 32.929535, 49.262802>,  <38.679996, 32.305073, 49.102871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276951, 32.929535, 49.262802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633060, 33.083492, 49.165428>,  <38.846725, 33.175869, 49.107002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633060, 33.083492, 49.165428>,  <38.276951, 32.929535, 49.262802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633060, 33.083492, 49.165428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413926, 0.460941, -0.784983,
		-0.189927, 0.799617, 0.569684,
		0.890277, 0.384897, -0.243437,
		38.900143, 33.198963, 49.092396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128017, 33.580879, 49.031487>,  <38.276951, 32.929535, 49.262802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128017, 33.580879, 49.031487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496689, 33.528286, 48.885490>,  <38.717892, 33.496731, 48.797894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496689, 33.528286, 48.885490>,  <38.128017, 33.580879, 49.031487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496689, 33.528286, 48.885490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278093, 0.432081, -0.857887,
		0.270502, 0.892199, 0.361676,
		0.921679, -0.131481, -0.364993,
		38.773193, 33.488842, 48.775993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516075, 34.243862, 48.806374>,  <38.128017, 33.580879, 49.031487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516075, 34.243862, 48.806374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.650692, 33.932949, 48.593742>,  <38.731461, 33.746403, 48.466164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.650692, 33.932949, 48.593742>,  <38.516075, 34.243862, 48.806374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650692, 33.932949, 48.593742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341169, 0.425507, -0.838181,
		0.877693, 0.463438, -0.121986,
		0.336539, -0.777284, -0.531575,
		38.751656, 33.699764, 48.434269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826626, 34.524765, 48.149681>,  <38.516075, 34.243862, 48.806374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826626, 34.524765, 48.149681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.765308, 34.133396, 48.094273>,  <38.728516, 33.898575, 48.061028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.765308, 34.133396, 48.094273>,  <38.826626, 34.524765, 48.149681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765308, 34.133396, 48.094273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156354, 0.162432, -0.974253,
		0.975732, -0.127692, -0.177881,
		-0.153298, -0.978422, -0.138525,
		38.719318, 33.839870, 48.052715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056004, 34.382896, 47.455173>,  <38.826626, 34.524765, 48.149681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056004, 34.382896, 47.455173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792202, 34.093948, 47.538345>,  <38.633923, 33.920578, 47.588249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792202, 34.093948, 47.538345>,  <39.056004, 34.382896, 47.455173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792202, 34.093948, 47.538345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277342, -0.023269, -0.960490,
		0.698671, -0.691111, -0.184999,
		-0.659500, -0.722374, 0.207931,
		38.594353, 33.877235, 47.600723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244148, 34.039185, 46.900234>,  <39.056004, 34.382896, 47.455173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244148, 34.039185, 46.900234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.877575, 33.914722, 47.000900>,  <38.657631, 33.840046, 47.061298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.877575, 33.914722, 47.000900>,  <39.244148, 34.039185, 46.900234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877575, 33.914722, 47.000900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294331, 0.097985, -0.950667,
		0.271144, -0.945295, -0.181379,
		-0.916434, -0.311153, 0.251661,
		38.602646, 33.821377, 47.076397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073589, 33.470322, 46.391888>,  <39.244148, 34.039185, 46.900234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073589, 33.470322, 46.391888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.731476, 33.612427, 46.542763>,  <38.526207, 33.697689, 46.633286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.731476, 33.612427, 46.542763>,  <39.073589, 33.470322, 46.391888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731476, 33.612427, 46.542763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302810, 0.247993, -0.920220,
		-0.420463, -0.901269, -0.104527,
		-0.855288, 0.355266, 0.377185,
		38.474888, 33.719006, 46.655918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597481, 33.280708, 45.910686>,  <39.073589, 33.470322, 46.391888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597481, 33.280708, 45.910686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368221, 33.543129, 46.107094>,  <38.230667, 33.700581, 46.224937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368221, 33.543129, 46.107094>,  <38.597481, 33.280708, 45.910686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368221, 33.543129, 46.107094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421501, 0.277837, -0.863217,
		-0.702739, -0.701714, 0.117286,
		-0.573145, 0.656052, 0.491020,
		38.196278, 33.739944, 46.254398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936874, 33.301659, 45.616043>,  <38.597481, 33.280708, 45.910686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936874, 33.301659, 45.616043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.946316, 33.653999, 45.805168>,  <37.951981, 33.865402, 45.918644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.946316, 33.653999, 45.805168>,  <37.936874, 33.301659, 45.616043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946316, 33.653999, 45.805168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517067, 0.415528, -0.748317,
		-0.855619, -0.226814, 0.465265,
		0.023602, 0.880848, 0.472811,
		37.953396, 33.918255, 45.947010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280777, 33.581024, 45.267914>,  <37.936874, 33.301659, 45.616043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280777, 33.581024, 45.267914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477467, 33.880077, 45.446461>,  <37.595482, 34.059509, 45.553589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477467, 33.880077, 45.446461>,  <37.280777, 33.581024, 45.267914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477467, 33.880077, 45.446461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070828, 0.545272, -0.835262,
		-0.867865, 0.379103, 0.321078,
		0.491725, 0.747636, 0.446371,
		37.624985, 34.104366, 45.580372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512577, 33.568108, 45.421146>,  <37.280777, 33.581024, 45.267914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512577, 33.568108, 45.421146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426136, 33.213821, 45.256805>,  <36.374271, 33.001247, 45.158199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426136, 33.213821, 45.256805>,  <36.512577, 33.568108, 45.421146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426136, 33.213821, 45.256805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255733, -0.457457, 0.851665,
		-0.942284, 0.078981, 0.325367,
		-0.216106, -0.885717, -0.410856,
		36.361305, 32.948105, 45.133549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077003, 33.148476, 45.909657>,  <36.512577, 33.568108, 45.421146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077003, 33.148476, 45.909657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.213268, 32.842609, 45.690845>,  <36.295025, 32.659092, 45.559559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.213268, 32.842609, 45.690845>,  <36.077003, 33.148476, 45.909657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213268, 32.842609, 45.690845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228542, -0.497032, 0.837095,
		-0.911987, -0.410183, 0.005439,
		0.340659, -0.764663, -0.547030,
		36.315468, 32.613209, 45.526737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850815, 32.519527, 46.263744>,  <36.077003, 33.148476, 45.909657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850815, 32.519527, 46.263744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152630, 32.405941, 46.027092>,  <36.333721, 32.337788, 45.885101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152630, 32.405941, 46.027092>,  <35.850815, 32.519527, 46.263744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152630, 32.405941, 46.027092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297263, -0.655849, 0.693900,
		-0.585068, -0.699446, -0.410452,
		0.754540, -0.283966, -0.591635,
		36.378990, 32.320751, 45.849602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878685, 31.833763, 46.213223>,  <35.850815, 32.519527, 46.263744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878685, 31.833763, 46.213223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257496, 31.921516, 46.119411>,  <36.484783, 31.974169, 46.063126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257496, 31.921516, 46.119411>,  <35.878685, 31.833763, 46.213223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257496, 31.921516, 46.119411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321099, -0.658595, 0.680550,
		-0.005156, -0.719808, -0.694154,
		0.947032, 0.219383, -0.234526,
		36.541607, 31.987331, 46.049053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146698, 31.151457, 46.097813>,  <35.878685, 31.833763, 46.213223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146698, 31.151457, 46.097813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422157, 31.430429, 46.177162>,  <36.587433, 31.597813, 46.224773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422157, 31.430429, 46.177162>,  <36.146698, 31.151457, 46.097813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422157, 31.430429, 46.177162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377872, -0.578686, 0.722728,
		0.618849, -0.422746, -0.662051,
		0.688650, 0.697430, 0.198375,
		36.628754, 31.639658, 46.236675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706451, 30.801685, 46.101486>,  <36.146698, 31.151457, 46.097813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706451, 30.801685, 46.101486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828625, 31.127916, 46.298073>,  <36.901928, 31.323654, 46.416027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828625, 31.127916, 46.298073>,  <36.706451, 30.801685, 46.101486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828625, 31.127916, 46.298073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215246, -0.561911, 0.798702,
		0.927567, -0.138162, -0.347175,
		0.305432, 0.815578, 0.491471,
		36.920254, 31.372589, 46.445515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331543, 30.647120, 46.491745>,  <36.706451, 30.801685, 46.101486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331543, 30.647120, 46.491745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213497, 30.983105, 46.673897>,  <37.142670, 31.184696, 46.783188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213497, 30.983105, 46.673897>,  <37.331543, 30.647120, 46.491745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213497, 30.983105, 46.673897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307616, -0.367707, 0.877590,
		0.904590, 0.399069, -0.149871,
		-0.295110, 0.839962, 0.455384,
		37.124966, 31.235094, 46.810513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687641, 30.017370, 46.369377>,  <37.331543, 30.647120, 46.491745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687641, 30.017370, 46.369377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.533619, 29.662321, 46.470459>,  <37.441204, 29.449291, 46.531109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.533619, 29.662321, 46.470459>,  <37.687641, 30.017370, 46.369377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533619, 29.662321, 46.470459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046034, -0.255001, -0.965844,
		0.921745, -0.383535, 0.057329,
		-0.385054, -0.887623, 0.252702,
		37.418102, 29.396034, 46.546268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081947, 29.457912, 46.096710>,  <37.687641, 30.017370, 46.369377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081947, 29.457912, 46.096710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699265, 29.343443, 46.117958>,  <37.469654, 29.274761, 46.130707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699265, 29.343443, 46.117958>,  <38.081947, 29.457912, 46.096710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699265, 29.343443, 46.117958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033112, -0.074311, -0.996685,
		0.289173, -0.955291, 0.061618,
		-0.956704, -0.286175, 0.053121,
		37.412254, 29.257591, 46.133896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927406, 29.076778, 45.527119>,  <38.081947, 29.457912, 46.096710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927406, 29.076778, 45.527119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551090, 29.167372, 45.628006>,  <37.325298, 29.221727, 45.688538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551090, 29.167372, 45.628006>,  <37.927406, 29.076778, 45.527119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551090, 29.167372, 45.628006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245504, 0.057812, -0.967670,
		-0.233743, -0.972297, 0.001213,
		-0.940793, 0.226484, 0.252216,
		37.268852, 29.235317, 45.703671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475082, 28.674097, 45.041840>,  <37.927406, 29.076778, 45.527119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475082, 28.674097, 45.041840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235416, 28.948116, 45.207592>,  <37.091618, 29.112528, 45.307041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235416, 28.948116, 45.207592>,  <37.475082, 28.674097, 45.041840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235416, 28.948116, 45.207592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428819, 0.162482, -0.888659,
		-0.676101, -0.710149, 0.196407,
		-0.599168, 0.685046, 0.414379,
		37.055668, 29.153629, 45.331905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799206, 28.634846, 44.604198>,  <37.475082, 28.674097, 45.041840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799206, 28.634846, 44.604198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756260, 28.978088, 44.805046>,  <36.730492, 29.184034, 44.925556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756260, 28.978088, 44.805046>,  <36.799206, 28.634846, 44.604198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756260, 28.978088, 44.805046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672520, 0.309282, -0.672355,
		-0.732249, -0.409877, 0.543886,
		-0.107369, 0.858106, 0.502122,
		36.724049, 29.235519, 44.955681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118420, 28.887012, 44.592152>,  <36.799206, 28.634846, 44.604198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118420, 28.887012, 44.592152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.340820, 29.217419, 44.629166>,  <36.474262, 29.415663, 44.651375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.340820, 29.217419, 44.629166>,  <36.118420, 28.887012, 44.592152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340820, 29.217419, 44.629166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522268, 0.433795, -0.734206,
		-0.646604, 0.359894, 0.672591,
		0.556003, 0.826014, 0.092532,
		36.507622, 29.465223, 44.656925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662491, 29.467596, 44.579018>,  <36.118420, 28.887012, 44.592152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662491, 29.467596, 44.579018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.023643, 29.622292, 44.503925>,  <36.240334, 29.715109, 44.458870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.023643, 29.622292, 44.503925>,  <35.662491, 29.467596, 44.579018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023643, 29.622292, 44.503925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398661, 0.589815, -0.702274,
		-0.160867, 0.708910, 0.686708,
		0.902879, 0.386737, -0.187733,
		36.294506, 29.738312, 44.447605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.883842, 28.968431, 48.030128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.691025, 29.317883, 48.056679>,  <42.575333, 29.527554, 48.072609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.691025, 29.317883, 48.056679>,  <42.883842, 28.968431, 48.030128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691025, 29.317883, 48.056679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031652, 0.093074, -0.995156,
		-0.875573, -0.477613, -0.072518,
		-0.482048, 0.873626, 0.066376,
		42.546410, 29.579971, 48.076591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247337, 28.928423, 47.568954>,  <42.883842, 28.968431, 48.030128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247337, 28.928423, 47.568954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.413906, 29.287527, 47.626392>,  <42.513847, 29.502989, 47.660854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.413906, 29.287527, 47.626392>,  <42.247337, 28.928423, 47.568954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413906, 29.287527, 47.626392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039785, 0.139797, -0.989380,
		-0.908300, 0.417715, 0.022498,
		0.416424, 0.897759, 0.143596,
		42.538834, 29.556854, 47.669472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814034, 29.361921, 47.198242>,  <42.247337, 28.928423, 47.568954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814034, 29.361921, 47.198242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.155891, 29.567068, 47.230598>,  <42.361008, 29.690157, 47.250011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.155891, 29.567068, 47.230598>,  <41.814034, 29.361921, 47.198242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155891, 29.567068, 47.230598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115968, 0.340422, -0.933094,
		-0.506090, 0.788087, 0.350418,
		0.854649, 0.512867, 0.080891,
		42.412285, 29.720928, 47.254868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716652, 30.118677, 46.977489>,  <41.814034, 29.361921, 47.198242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716652, 30.118677, 46.977489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.102444, 30.030668, 46.919010>,  <42.333920, 29.977863, 46.883923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.102444, 30.030668, 46.919010>,  <41.716652, 30.118677, 46.977489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102444, 30.030668, 46.919010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028482, 0.463598, -0.885588,
		0.262628, 0.858293, 0.440862,
		0.964477, -0.220024, -0.146200,
		42.391788, 29.964661, 46.875149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048553, 30.793804, 46.612751>,  <41.716652, 30.118677, 46.977489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048553, 30.793804, 46.612751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.293968, 30.482399, 46.559849>,  <42.441216, 30.295555, 46.528107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.293968, 30.482399, 46.559849>,  <42.048553, 30.793804, 46.612751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293968, 30.482399, 46.559849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044090, 0.133451, -0.990074,
		0.788435, 0.613277, 0.047552,
		0.613535, -0.778513, -0.132257,
		42.478027, 30.248844, 46.520172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426540, 30.976555, 45.983570>,  <42.048553, 30.793804, 46.612751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426540, 30.976555, 45.983570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.511707, 30.586216, 46.003124>,  <42.562809, 30.352013, 46.014858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.511707, 30.586216, 46.003124>,  <42.426540, 30.976555, 45.983570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511707, 30.586216, 46.003124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011681, -0.047489, -0.998804,
		0.977000, 0.213233, 0.001288,
		0.212917, -0.975847, 0.048888,
		42.575581, 30.293463, 46.017792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080997, 30.823578, 45.667725>,  <42.426540, 30.976555, 45.983570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080997, 30.823578, 45.667725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.877949, 30.478947, 45.668182>,  <42.756119, 30.272167, 45.668457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.877949, 30.478947, 45.668182>,  <43.080997, 30.823578, 45.667725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877949, 30.478947, 45.668182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156424, -0.093472, -0.983257,
		0.847260, -0.498946, 0.182221,
		-0.507624, -0.861578, 0.001148,
		42.725662, 30.220474, 45.668526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478703, 30.341856, 45.178875>,  <43.080997, 30.823578, 45.667725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478703, 30.341856, 45.178875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.109272, 30.192146, 45.212181>,  <42.887615, 30.102320, 45.232166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.109272, 30.192146, 45.212181>,  <43.478703, 30.341856, 45.178875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109272, 30.192146, 45.212181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002907, -0.223991, -0.974587,
		0.383413, -0.899860, 0.207960,
		-0.923572, -0.374274, 0.083265,
		42.832199, 30.079865, 45.237160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497692, 29.685665, 44.820465>,  <43.478703, 30.341856, 45.178875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497692, 29.685665, 44.820465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.109524, 29.772053, 44.863628>,  <42.876621, 29.823885, 44.889526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.109524, 29.772053, 44.863628>,  <43.497692, 29.685665, 44.820465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109524, 29.772053, 44.863628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186106, -0.384483, -0.904178,
		-0.153788, -0.897513, 0.413303,
		-0.970420, 0.215970, 0.107904,
		42.818398, 29.836843, 44.896000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109226, 29.159986, 44.502182>,  <43.497692, 29.685665, 44.820465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109226, 29.159986, 44.502182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.827583, 29.443995, 44.506199>,  <42.658596, 29.614399, 44.508610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.827583, 29.443995, 44.506199>,  <43.109226, 29.159986, 44.502182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827583, 29.443995, 44.506199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364314, -0.349073, -0.863379,
		-0.609513, -0.611571, 0.504456,
		-0.704109, 0.710020, 0.010040,
		42.616352, 29.657001, 44.509212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482410, 28.950201, 44.290306>,  <43.109226, 29.159986, 44.502182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482410, 28.950201, 44.290306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.387386, 29.336843, 44.251850>,  <42.330372, 29.568829, 44.228775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.387386, 29.336843, 44.251850>,  <42.482410, 28.950201, 44.290306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387386, 29.336843, 44.251850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364110, -0.180369, -0.913724,
		-0.900550, -0.182055, 0.394799,
		-0.237557, 0.966604, -0.096143,
		42.316120, 29.626825, 44.223007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821766, 29.017488, 43.925228>,  <42.482410, 28.950201, 44.290306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821766, 29.017488, 43.925228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.993298, 29.374130, 43.867058>,  <42.096214, 29.588116, 43.832157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.993298, 29.374130, 43.867058>,  <41.821766, 29.017488, 43.925228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993298, 29.374130, 43.867058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213477, -0.056402, -0.975319,
		-0.877802, 0.449287, 0.166150,
		0.428826, 0.891606, -0.145422,
		42.121944, 29.641611, 43.823433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163658, 28.869205, 43.748314>,  <41.821766, 29.017488, 43.925228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163658, 28.869205, 43.748314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.137882, 28.474085, 43.691608>,  <41.122417, 28.237013, 43.657585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.137882, 28.474085, 43.691608>,  <41.163658, 28.869205, 43.748314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137882, 28.474085, 43.691608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108736, -0.134261, 0.984962,
		-0.991980, 0.078886, -0.098758,
		-0.064440, -0.987801, -0.141762,
		41.118549, 28.177744, 43.649078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601444, 28.745214, 44.065693>,  <41.163658, 28.869205, 43.748314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601444, 28.745214, 44.065693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.832535, 28.419298, 44.046307>,  <40.971188, 28.223749, 44.034676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.832535, 28.419298, 44.046307>,  <40.601444, 28.745214, 44.065693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832535, 28.419298, 44.046307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099022, -0.128902, 0.986701,
		-0.810202, -0.565243, -0.155153,
		0.577725, -0.814791, -0.048465,
		41.005852, 28.174860, 44.031769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257442, 28.230484, 44.543793>,  <40.601444, 28.745214, 44.065693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257442, 28.230484, 44.543793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.625622, 28.079063, 44.504848>,  <40.846527, 27.988211, 44.481483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.625622, 28.079063, 44.504848>,  <40.257442, 28.230484, 44.543793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625622, 28.079063, 44.504848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054856, -0.371727, 0.926720,
		-0.387016, -0.847649, -0.362919,
		0.920440, -0.378564, -0.097366,
		40.901756, 27.965498, 44.475639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169300, 27.556309, 44.725285>,  <40.257442, 28.230484, 44.543793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169300, 27.556309, 44.725285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.552502, 27.657799, 44.778732>,  <40.782421, 27.718693, 44.810802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.552502, 27.657799, 44.778732>,  <40.169300, 27.556309, 44.725285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552502, 27.657799, 44.778732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039699, -0.344128, 0.938083,
		0.284000, -0.903990, -0.319603,
		0.958002, 0.253728, 0.133620,
		40.839901, 27.733917, 44.818817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430676, 27.003809, 45.187447>,  <40.169300, 27.556309, 44.725285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430676, 27.003809, 45.187447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.671860, 27.322676, 45.199905>,  <40.816570, 27.513996, 45.207378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.671860, 27.322676, 45.199905>,  <40.430676, 27.003809, 45.187447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671860, 27.322676, 45.199905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009296, -0.046056, 0.998896,
		0.797719, -0.602003, -0.035180,
		0.602958, 0.797165, 0.031143,
		40.852749, 27.561825, 45.209248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984158, 26.743906, 45.701061>,  <40.430676, 27.003809, 45.187447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984158, 26.743906, 45.701061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.982643, 27.142389, 45.666302>,  <40.981735, 27.381479, 45.645447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.982643, 27.142389, 45.666302>,  <40.984158, 26.743906, 45.701061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982643, 27.142389, 45.666302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237509, 0.083520, 0.967788,
		0.971378, 0.024307, 0.236292,
		-0.003789, 0.996210, -0.086903,
		40.981506, 27.441252, 45.640232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302902, 26.905704, 46.402454>,  <40.984158, 26.743906, 45.701061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302902, 26.905704, 46.402454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.142971, 27.239031, 46.249760>,  <41.047012, 27.439028, 46.158142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.142971, 27.239031, 46.249760>,  <41.302902, 26.905704, 46.402454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142971, 27.239031, 46.249760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454826, 0.181203, 0.871951,
		0.795783, 0.522252, 0.306564,
		-0.399828, 0.833317, -0.381733,
		41.023022, 27.489025, 46.135239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358925, 27.450668, 46.915569>,  <41.302902, 26.905704, 46.402454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358925, 27.450668, 46.915569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.068954, 27.587646, 46.676498>,  <40.894974, 27.669834, 46.533054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.068954, 27.587646, 46.676498>,  <41.358925, 27.450668, 46.915569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068954, 27.587646, 46.676498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559663, 0.213026, 0.800872,
		0.401577, 0.915068, 0.037227,
		-0.724923, 0.342446, -0.597677,
		40.851479, 27.690380, 46.497196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247799, 28.261530, 47.037426>,  <41.358925, 27.450668, 46.915569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247799, 28.261530, 47.037426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.929947, 28.071171, 46.886646>,  <40.739235, 27.956955, 46.796181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.929947, 28.071171, 46.886646>,  <41.247799, 28.261530, 47.037426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929947, 28.071171, 46.886646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531945, 0.246563, 0.810087,
		-0.292576, 0.844233, -0.449076,
		-0.794628, -0.475896, -0.376947,
		40.691559, 27.928402, 46.773563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581741, 28.599098, 47.270710>,  <41.247799, 28.261530, 47.037426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581741, 28.599098, 47.270710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.483303, 28.223307, 47.175365>,  <40.424240, 27.997831, 47.118160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.483303, 28.223307, 47.175365>,  <40.581741, 28.599098, 47.270710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483303, 28.223307, 47.175365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622601, -0.035246, 0.781745,
		-0.742835, 0.340788, -0.576246,
		-0.246099, -0.939479, -0.238357,
		40.409473, 27.941463, 47.103859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884747, 28.693012, 47.437237>,  <40.581741, 28.599098, 47.270710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884747, 28.693012, 47.437237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.966881, 28.302647, 47.407768>,  <40.016159, 28.068426, 47.390087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.966881, 28.302647, 47.407768>,  <39.884747, 28.693012, 47.437237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966881, 28.302647, 47.407768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648771, -0.192090, 0.736340,
		-0.732758, -0.103396, -0.672588,
		0.205332, -0.975915, -0.073676,
		40.028481, 28.009872, 47.385666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266655, 28.394930, 47.676571>,  <39.884747, 28.693012, 47.437237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266655, 28.394930, 47.676571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.526360, 28.090788, 47.683750>,  <39.682182, 27.908302, 47.688057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.526360, 28.090788, 47.683750>,  <39.266655, 28.394930, 47.676571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526360, 28.090788, 47.683750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464292, -0.377536, 0.801186,
		-0.602410, -0.528512, -0.598145,
		0.649258, -0.760356, 0.017952,
		39.721138, 27.862680, 47.689137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882362, 27.861488, 47.985580>,  <39.266655, 28.394930, 47.676571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882362, 27.861488, 47.985580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.262936, 27.755079, 48.047554>,  <39.491280, 27.691235, 48.084736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.262936, 27.755079, 48.047554>,  <38.882362, 27.861488, 47.985580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262936, 27.755079, 48.047554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238042, -0.316610, 0.918202,
		-0.195208, -0.910490, -0.364558,
		0.951436, -0.266020, 0.154930,
		39.548367, 27.675272, 48.094032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957558, 27.084129, 48.271011>,  <38.882362, 27.861488, 47.985580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957558, 27.084129, 48.271011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.242496, 27.342524, 48.380745>,  <39.413460, 27.497561, 48.446583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.242496, 27.342524, 48.380745>,  <38.957558, 27.084129, 48.271011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242496, 27.342524, 48.380745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292580, -0.081956, 0.952722,
		0.637929, -0.758936, 0.130622,
		0.712350, 0.645987, 0.274332,
		39.456203, 27.536320, 48.463043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412315, 27.533915, 48.576492>,  <38.957558, 27.084129, 48.271011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412315, 27.533915, 48.576492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.201927, 27.777843, 48.813633>,  <38.075695, 27.924200, 48.955917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.201927, 27.777843, 48.813633>,  <38.412315, 27.533915, 48.576492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201927, 27.777843, 48.813633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249345, 0.555869, -0.792992,
		-0.813133, -0.564913, -0.140312,
		-0.525966, 0.609823, 0.592854,
		38.044136, 27.960791, 48.991489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733089, 27.478079, 48.463505>,  <38.412315, 27.533915, 48.576492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733089, 27.478079, 48.463505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.794983, 27.849457, 48.598591>,  <37.832119, 28.072283, 48.679642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.794983, 27.849457, 48.598591>,  <37.733089, 27.478079, 48.463505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794983, 27.849457, 48.598591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368994, 0.371401, -0.852001,
		-0.916462, 0.007217, 0.400057,
		0.154731, 0.928445, 0.337712,
		37.841404, 28.127991, 48.699905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133938, 27.915165, 48.312439>,  <37.733089, 27.478079, 48.463505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133938, 27.915165, 48.312439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.414368, 28.197206, 48.355000>,  <37.582626, 28.366432, 48.380535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.414368, 28.197206, 48.355000>,  <37.133938, 27.915165, 48.312439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414368, 28.197206, 48.355000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302758, 0.429424, -0.850842,
		-0.645624, 0.564290, 0.514535,
		0.701076, 0.705104, 0.106403,
		37.624691, 28.408737, 48.386921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777710, 28.553146, 48.190632>,  <37.133938, 27.915165, 48.312439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777710, 28.553146, 48.190632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.161457, 28.654230, 48.140415>,  <37.391705, 28.714880, 48.110287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.161457, 28.654230, 48.140415>,  <36.777710, 28.553146, 48.190632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161457, 28.654230, 48.140415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214732, 0.365199, -0.905825,
		-0.183064, 0.895973, 0.404624,
		0.959363, 0.252709, -0.125539,
		37.449265, 28.730043, 48.102753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754520, 29.296108, 47.949009>,  <36.777710, 28.553146, 48.190632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754520, 29.296108, 47.949009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107536, 29.150568, 47.829857>,  <37.319347, 29.063244, 47.758366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107536, 29.150568, 47.829857>,  <36.754520, 29.296108, 47.949009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107536, 29.150568, 47.829857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137243, 0.406588, -0.903244,
		0.449762, 0.838032, 0.308895,
		0.882541, -0.363851, -0.297882,
		37.372299, 29.041412, 47.740494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066936, 29.885611, 47.586487>,  <36.754520, 29.296108, 47.949009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066936, 29.885611, 47.586487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.303066, 29.575687, 47.495979>,  <37.444744, 29.389734, 47.441677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.303066, 29.575687, 47.495979>,  <37.066936, 29.885611, 47.586487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303066, 29.575687, 47.495979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037134, 0.253953, -0.966504,
		0.806315, 0.578948, 0.121142,
		0.590320, -0.774808, -0.226265,
		37.480164, 29.343245, 47.428101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565796, 30.124153, 47.087894>,  <37.066936, 29.885611, 47.586487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565796, 30.124153, 47.087894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510063, 29.730490, 47.044044>,  <37.476624, 29.494291, 47.017735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510063, 29.730490, 47.044044>,  <37.565796, 30.124153, 47.087894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510063, 29.730490, 47.044044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145810, 0.129890, -0.980749,
		0.979451, -0.120669, -0.161599,
		-0.139336, -0.984158, -0.109626,
		37.468262, 29.435242, 47.011158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910324, 30.767746, 46.886211>,  <37.565796, 30.124153, 47.087894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910324, 30.767746, 46.886211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.642616, 31.006124, 47.063717>,  <37.481991, 31.149153, 47.170219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.642616, 31.006124, 47.063717>,  <37.910324, 30.767746, 46.886211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642616, 31.006124, 47.063717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415450, -0.195013, 0.888466,
		0.616018, 0.778984, -0.117069,
		-0.669271, 0.595947, 0.443760,
		37.441833, 31.184908, 47.196846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333855, 31.103376, 47.272503>,  <37.910324, 30.767746, 46.886211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333855, 31.103376, 47.272503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.961636, 31.142551, 47.413635>,  <37.738304, 31.166056, 47.498314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.961636, 31.142551, 47.413635>,  <38.333855, 31.103376, 47.272503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961636, 31.142551, 47.413635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333887, -0.168652, 0.927403,
		0.150332, 0.980798, 0.124239,
		-0.930548, 0.097937, 0.352830,
		37.682472, 31.171932, 47.519485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392891, 31.733576, 47.736408>,  <38.333855, 31.103376, 47.272503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392891, 31.733576, 47.736408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.092010, 31.485363, 47.825069>,  <37.911484, 31.336435, 47.878265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.092010, 31.485363, 47.825069>,  <38.392891, 31.733576, 47.736408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092010, 31.485363, 47.825069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379975, -0.133657, 0.915290,
		-0.538342, 0.772706, 0.336324,
		-0.752201, -0.620534, 0.221656,
		37.866348, 31.299204, 47.891567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424984, 31.876787, 48.371529>,  <38.392891, 31.733576, 47.736408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424984, 31.876787, 48.371529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.150085, 31.586222, 48.372849>,  <37.985146, 31.411882, 48.373638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.150085, 31.586222, 48.372849>,  <38.424984, 31.876787, 48.371529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150085, 31.586222, 48.372849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340320, -0.317957, 0.884921,
		-0.641773, 0.609282, 0.465729,
		-0.687248, -0.726415, 0.003295,
		37.943913, 31.368298, 48.373837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062489, 31.949453, 48.997417>,  <38.424984, 31.876787, 48.371529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062489, 31.949453, 48.997417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.045513, 31.572311, 48.865219>,  <38.035328, 31.346027, 48.785900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.045513, 31.572311, 48.865219>,  <38.062489, 31.949453, 48.997417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045513, 31.572311, 48.865219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351638, -0.323721, 0.878382,
		-0.935174, -0.078940, 0.345281,
		-0.042435, -0.942854, -0.330494,
		38.032784, 31.289455, 48.766071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724060, 31.586824, 49.624046>,  <38.062489, 31.949453, 48.997417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724060, 31.586824, 49.624046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.903973, 31.307947, 49.400753>,  <38.011921, 31.140621, 49.266777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.903973, 31.307947, 49.400753>,  <37.724060, 31.586824, 49.624046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903973, 31.307947, 49.400753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475777, -0.341925, 0.810384,
		-0.755867, -0.630088, 0.177917,
		0.449779, -0.697192, -0.558232,
		38.038906, 31.098789, 49.233284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552467, 30.990311, 50.002594>,  <37.724060, 31.586824, 49.624046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552467, 30.990311, 50.002594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.860298, 30.899227, 49.763966>,  <38.044994, 30.844576, 49.620789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.860298, 30.899227, 49.763966>,  <37.552467, 30.990311, 50.002594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860298, 30.899227, 49.763966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431977, -0.502385, 0.749003,
		-0.470264, -0.834121, -0.288258,
		0.769576, -0.227709, -0.596575,
		38.091171, 30.830914, 49.584991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618671, 30.289516, 50.011791>,  <37.552467, 30.990311, 50.002594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618671, 30.289516, 50.011791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.975777, 30.418144, 49.885578>,  <38.190041, 30.495321, 49.809849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.975777, 30.418144, 49.885578>,  <37.618671, 30.289516, 50.011791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975777, 30.418144, 49.885578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446713, -0.540971, 0.712600,
		0.058455, -0.777138, -0.626609,
		0.892766, 0.321570, -0.315535,
		38.243607, 30.514616, 49.790916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065872, 29.741089, 50.029930>,  <37.618671, 30.289516, 50.011791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065872, 29.741089, 50.029930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324360, 30.044962, 50.059029>,  <38.479450, 30.227285, 50.076488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324360, 30.044962, 50.059029>,  <38.065872, 29.741089, 50.029930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324360, 30.044962, 50.059029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435262, -0.445186, 0.782532,
		0.626860, -0.474020, -0.618346,
		0.646214, 0.759681, 0.072746,
		38.518223, 30.272865, 50.080853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.102543, 35.210110, 35.173695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310730, 35.525238, 35.305424>,  <36.435642, 35.714314, 35.384460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310730, 35.525238, 35.305424>,  <36.102543, 35.210110, 35.173695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310730, 35.525238, 35.305424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026948, -0.370335, 0.928507,
		0.853455, -0.492134, -0.171517,
		0.520469, 0.787818, 0.329327,
		36.466869, 35.761581, 35.404221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788227, 35.006447, 35.448841>,  <36.102543, 35.210110, 35.173695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788227, 35.006447, 35.448841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645554, 35.335125, 35.626644>,  <36.559948, 35.532333, 35.733326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645554, 35.335125, 35.626644>,  <36.788227, 35.006447, 35.448841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645554, 35.335125, 35.626644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032641, -0.464556, 0.884942,
		0.933655, 0.330153, 0.138879,
		-0.356683, 0.821697, 0.444512,
		36.538548, 35.581635, 35.759998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141422, 35.088535, 36.061081>,  <36.788227, 35.006447, 35.448841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141422, 35.088535, 36.061081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797180, 35.284668, 36.116116>,  <36.590633, 35.402348, 36.149136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797180, 35.284668, 36.116116>,  <37.141422, 35.088535, 36.061081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797180, 35.284668, 36.116116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091670, -0.414909, 0.905233,
		0.500953, 0.766436, 0.402022,
		-0.860606, 0.490332, 0.137591,
		36.538998, 35.431767, 36.157394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156818, 35.416035, 36.735115>,  <37.141422, 35.088535, 36.061081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156818, 35.416035, 36.735115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771347, 35.364223, 36.641697>,  <36.540062, 35.333138, 36.585648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771347, 35.364223, 36.641697>,  <37.156818, 35.416035, 36.735115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771347, 35.364223, 36.641697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184376, -0.309947, 0.932705,
		-0.193193, 0.941890, 0.274809,
		-0.963681, -0.129524, -0.233541,
		36.482243, 35.325367, 36.571636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835709, 35.570992, 37.396122>,  <37.156818, 35.416035, 36.735115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835709, 35.570992, 37.396122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536865, 35.398468, 37.193817>,  <36.357559, 35.294952, 37.072433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536865, 35.398468, 37.193817>,  <36.835709, 35.570992, 37.396122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536865, 35.398468, 37.193817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310831, -0.445873, 0.839394,
		-0.587547, 0.784326, 0.199051,
		-0.747110, -0.431312, -0.505764,
		36.312733, 35.269073, 37.042088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289051, 35.622765, 37.781502>,  <36.835709, 35.570992, 37.396122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289051, 35.622765, 37.781502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184540, 35.317410, 37.545204>,  <36.121834, 35.134197, 37.403423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184540, 35.317410, 37.545204>,  <36.289051, 35.622765, 37.781502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184540, 35.317410, 37.545204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260601, -0.533493, 0.804657,
		-0.929421, 0.364186, -0.059549,
		-0.261275, -0.763383, -0.590746,
		36.106155, 35.088394, 37.367981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597900, 35.404491, 37.934464>,  <36.289051, 35.622765, 37.781502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597900, 35.404491, 37.934464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727032, 35.069527, 37.758049>,  <35.804512, 34.868546, 37.652199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727032, 35.069527, 37.758049>,  <35.597900, 35.404491, 37.934464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727032, 35.069527, 37.758049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342321, -0.537753, 0.770479,
		-0.882381, -0.097757, -0.460268,
		0.322830, -0.837416, -0.441038,
		35.823879, 34.818302, 37.625736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032501, 34.915070, 38.040550>,  <35.597900, 35.404491, 37.934464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032501, 34.915070, 38.040550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356617, 34.702003, 37.942818>,  <35.551086, 34.574165, 37.884178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356617, 34.702003, 37.942818>,  <35.032501, 34.915070, 38.040550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356617, 34.702003, 37.942818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115677, -0.554109, 0.824368,
		-0.574506, -0.639709, -0.510604,
		0.810285, -0.532669, -0.244339,
		35.599705, 34.542206, 37.869518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884674, 34.218845, 37.973900>,  <35.032501, 34.915070, 38.040550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884674, 34.218845, 37.973900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273380, 34.224178, 38.068123>,  <35.506603, 34.227379, 38.124657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273380, 34.224178, 38.068123>,  <34.884674, 34.218845, 37.973900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273380, 34.224178, 38.068123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181973, -0.593107, 0.784289,
		0.150165, -0.805013, -0.573938,
		0.971770, 0.013331, 0.235554,
		35.564911, 34.228176, 38.138790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881145, 33.729675, 38.459389>,  <34.884674, 34.218845, 37.973900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881145, 33.729675, 38.459389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244614, 33.895313, 38.480686>,  <35.462696, 33.994698, 38.493465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244614, 33.895313, 38.480686>,  <34.881145, 33.729675, 38.459389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244614, 33.895313, 38.480686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091885, -0.322744, 0.942016,
		0.407270, -0.851093, -0.331318,
		0.908673, 0.414098, 0.053241,
		35.517216, 34.019543, 38.496658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187233, 33.139442, 38.614746>,  <34.881145, 33.729675, 38.459389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187233, 33.139442, 38.614746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407696, 33.460609, 38.705559>,  <35.539974, 33.653309, 38.760048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407696, 33.460609, 38.705559>,  <35.187233, 33.139442, 38.614746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407696, 33.460609, 38.705559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013383, -0.263548, 0.964553,
		0.834292, -0.534662, -0.134512,
		0.551160, 0.802919, 0.227031,
		35.573044, 33.701485, 38.773666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687092, 32.890842, 38.948757>,  <35.187233, 33.139442, 38.614746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687092, 32.890842, 38.948757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632664, 33.271591, 39.058605>,  <35.600006, 33.500042, 39.124516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632664, 33.271591, 39.058605>,  <35.687092, 32.890842, 38.948757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632664, 33.271591, 39.058605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026438, -0.280591, 0.959463,
		0.990346, 0.123294, 0.063346,
		-0.136070, 0.951876, 0.274622,
		35.591843, 33.557156, 39.140991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037262, 32.155190, 38.989563>,  <35.687092, 32.890842, 38.948757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037262, 32.155190, 38.989563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784225, 31.850603, 39.046131>,  <35.632404, 31.667852, 39.080074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784225, 31.850603, 39.046131>,  <36.037262, 32.155190, 38.989563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784225, 31.850603, 39.046131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305125, 0.077199, -0.949178,
		0.711845, -0.643597, -0.281176,
		-0.632595, -0.761462, 0.141424,
		35.594448, 31.622164, 39.088558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070747, 31.655298, 38.336132>,  <36.037262, 32.155190, 38.989563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070747, 31.655298, 38.336132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725193, 31.590267, 38.526825>,  <35.517860, 31.551249, 38.641239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725193, 31.590267, 38.526825>,  <36.070747, 31.655298, 38.336132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725193, 31.590267, 38.526825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484986, 0.012948, -0.874426,
		0.135991, -0.986611, -0.090034,
		-0.863884, -0.162579, 0.476731,
		35.466026, 31.541494, 38.669846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759663, 31.181795, 37.995449>,  <36.070747, 31.655298, 38.336132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759663, 31.181795, 37.995449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444397, 31.302896, 38.209793>,  <35.255238, 31.375557, 38.338398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444397, 31.302896, 38.209793>,  <35.759663, 31.181795, 37.995449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444397, 31.302896, 38.209793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587499, -0.110600, -0.801631,
		-0.183433, -0.946629, 0.265040,
		-0.788161, 0.302756, 0.535856,
		35.207947, 31.393723, 38.370548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318157, 30.615797, 37.855133>,  <35.759663, 31.181795, 37.995449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318157, 30.615797, 37.855133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120205, 30.941263, 37.977146>,  <35.001434, 31.136543, 38.050354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120205, 30.941263, 37.977146>,  <35.318157, 30.615797, 37.855133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120205, 30.941263, 37.977146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658896, -0.122505, -0.742192,
		-0.566526, -0.568281, 0.596745,
		-0.494878, 0.813664, 0.305036,
		34.971741, 31.185362, 38.068657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709454, 30.407284, 37.975574>,  <35.318157, 30.615797, 37.855133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709454, 30.407284, 37.975574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683086, 30.802542, 37.920109>,  <34.667267, 31.039696, 37.886829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683086, 30.802542, 37.920109>,  <34.709454, 30.407284, 37.975574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683086, 30.802542, 37.920109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794978, -0.135998, -0.591198,
		-0.603046, 0.071266, 0.794516,
		-0.065920, 0.988142, -0.138669,
		34.663311, 31.098984, 37.878510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061054, 30.581705, 38.087204>,  <34.709454, 30.407284, 37.975574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061054, 30.581705, 38.087204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214638, 30.880766, 37.870468>,  <34.306786, 31.060202, 37.740425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214638, 30.880766, 37.870468>,  <34.061054, 30.581705, 38.087204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214638, 30.880766, 37.870468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786846, -0.042138, -0.615709,
		-0.483169, 0.662752, 0.572108,
		0.383955, 0.747652, -0.541844,
		34.329823, 31.105061, 37.707916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460316, 31.000959, 37.890602>,  <34.061054, 30.581705, 38.087204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460316, 31.000959, 37.890602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761330, 31.088232, 37.642056>,  <33.941936, 31.140596, 37.492928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761330, 31.088232, 37.642056>,  <33.460316, 31.000959, 37.890602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761330, 31.088232, 37.642056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649099, 0.086398, -0.755782,
		-0.111213, 0.972076, 0.206638,
		0.752531, 0.218182, -0.621365,
		33.987087, 31.153687, 37.455647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158218, 31.417545, 37.426456>,  <33.460316, 31.000959, 37.890602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158218, 31.417545, 37.426456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472618, 31.285355, 37.217461>,  <33.661259, 31.206039, 37.092064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472618, 31.285355, 37.217461>,  <33.158218, 31.417545, 37.426456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472618, 31.285355, 37.217461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516824, 0.112548, -0.848661,
		0.339269, 0.937079, -0.082337,
		0.785996, -0.330478, -0.522489,
		33.708416, 31.186211, 37.060715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259109, 31.903164, 36.895855>,  <33.158218, 31.417545, 37.426456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259109, 31.903164, 36.895855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434364, 31.563162, 36.778873>,  <33.539516, 31.359161, 36.708683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434364, 31.563162, 36.778873>,  <33.259109, 31.903164, 36.895855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434364, 31.563162, 36.778873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564715, -0.007145, -0.825255,
		0.699381, 0.526728, -0.483140,
		0.438137, -0.850004, -0.292454,
		33.565804, 31.308161, 36.691135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481625, 32.071590, 36.247181>,  <33.259109, 31.903164, 36.895855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481625, 32.071590, 36.247181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488300, 31.673563, 36.208057>,  <33.492306, 31.434748, 36.184582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488300, 31.673563, 36.208057>,  <33.481625, 32.071590, 36.247181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488300, 31.673563, 36.208057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540664, 0.073308, -0.838039,
		0.841073, 0.066866, -0.536773,
		0.016686, -0.995065, -0.097809,
		33.493305, 31.375044, 36.178715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493145, 31.965240, 35.511005>,  <33.481625, 32.071590, 36.247181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493145, 31.965240, 35.511005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388901, 31.601793, 35.641541>,  <33.326355, 31.383724, 35.719860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388901, 31.601793, 35.641541>,  <33.493145, 31.965240, 35.511005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388901, 31.601793, 35.641541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399573, -0.206193, -0.893211,
		0.878875, -0.363178, -0.309322,
		-0.260615, -0.908617, 0.326334,
		33.310715, 31.329208, 35.739441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746437, 31.529406, 35.011326>,  <33.493145, 31.965240, 35.511005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746437, 31.529406, 35.011326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482788, 31.284315, 35.185738>,  <33.324596, 31.137260, 35.290386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482788, 31.284315, 35.185738>,  <33.746437, 31.529406, 35.011326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482788, 31.284315, 35.185738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329853, -0.285505, -0.899824,
		0.675833, -0.736923, -0.013925,
		-0.659125, -0.612725, 0.436031,
		33.285049, 31.100498, 35.316547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760914, 30.865213, 34.763687>,  <33.746437, 31.529406, 35.011326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760914, 30.865213, 34.763687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386326, 30.877949, 34.903408>,  <33.161572, 30.885590, 34.987240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386326, 30.877949, 34.903408>,  <33.760914, 30.865213, 34.763687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386326, 30.877949, 34.903408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342042, -0.303390, -0.889361,
		0.077659, -0.952335, 0.295005,
		-0.936470, 0.031837, 0.349299,
		33.105385, 30.887501, 35.008198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387501, 30.395691, 35.019821>,  <33.760914, 30.865213, 34.763687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387501, 30.395691, 35.019821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610435, 30.345667, 34.691494>,  <34.744194, 30.315653, 34.494499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610435, 30.345667, 34.691494>,  <34.387501, 30.395691, 35.019821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610435, 30.345667, 34.691494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602058, -0.619897, 0.503244,
		-0.571757, -0.774654, -0.270196,
		0.557333, -0.125060, -0.820816,
		34.777634, 30.308149, 34.445248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474354, 29.646189, 34.800182>,  <34.387501, 30.395691, 35.019821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474354, 29.646189, 34.800182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797405, 29.865149, 34.712471>,  <34.991238, 29.996525, 34.659843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797405, 29.865149, 34.712471>,  <34.474354, 29.646189, 34.800182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797405, 29.865149, 34.712471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546387, -0.554806, 0.627417,
		0.221789, -0.626534, -0.747171,
		0.807633, 0.547399, -0.219280,
		35.039696, 30.029367, 34.646687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007706, 29.319176, 34.405029>,  <34.474354, 29.646189, 34.800182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007706, 29.319176, 34.405029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326225, 29.173908, 34.211525>,  <35.517338, 29.086748, 34.095425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326225, 29.173908, 34.211525>,  <35.007706, 29.319176, 34.405029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326225, 29.173908, 34.211525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035549, 0.826436, -0.561907,
		0.603861, 0.430248, 0.670998,
		0.796296, -0.363167, -0.483758,
		35.565113, 29.064959, 34.066399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172176, 28.776899, 35.019203>,  <35.007706, 29.319176, 34.405029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172176, 28.776899, 35.019203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531853, 28.935526, 35.093174>,  <35.747658, 29.030703, 35.137554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531853, 28.935526, 35.093174>,  <35.172176, 28.776899, 35.019203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531853, 28.935526, 35.093174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296508, -0.863025, 0.408987,
		0.321784, -0.312925, -0.893607,
		0.899187, 0.396568, 0.184923,
		35.801609, 29.054497, 35.148651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754589, 28.274591, 34.886265>,  <35.172176, 28.776899, 35.019203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754589, 28.274591, 34.886265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910126, 28.538212, 35.143776>,  <36.003448, 28.696384, 35.298283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910126, 28.538212, 35.143776>,  <35.754589, 28.274591, 34.886265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910126, 28.538212, 35.143776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393401, -0.750639, 0.530827,
		0.833089, 0.046855, -0.551151,
		0.388843, 0.659050, 0.643781,
		36.026779, 28.735928, 35.336910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431023, 27.965193, 35.064682>,  <35.754589, 28.274591, 34.886265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431023, 27.965193, 35.064682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402847, 28.238653, 35.355244>,  <36.385941, 28.402729, 35.529579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402847, 28.238653, 35.355244>,  <36.431023, 27.965193, 35.064682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402847, 28.238653, 35.355244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637217, -0.529423, 0.560059,
		0.767459, 0.502326, -0.398341,
		-0.070442, 0.683652, 0.726400,
		36.381714, 28.443748, 35.573162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083946, 28.060005, 35.375202>,  <36.431023, 27.965193, 35.064682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083946, 28.060005, 35.375202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874451, 28.242640, 35.662876>,  <36.748753, 28.352221, 35.835480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874451, 28.242640, 35.662876>,  <37.083946, 28.060005, 35.375202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874451, 28.242640, 35.662876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593933, -0.409502, 0.692496,
		0.610693, 0.789834, -0.056711,
		-0.523734, 0.456585, 0.719189,
		36.717331, 28.379616, 35.878632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579369, 28.369596, 35.745827>,  <37.083946, 28.060005, 35.375202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579369, 28.369596, 35.745827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253330, 28.319534, 35.972084>,  <37.057709, 28.289497, 36.107838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253330, 28.319534, 35.972084>,  <37.579369, 28.369596, 35.745827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253330, 28.319534, 35.972084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563130, -0.400433, 0.722868,
		0.136032, 0.907739, 0.396870,
		-0.815095, -0.125156, 0.565646,
		37.008801, 28.281988, 36.141777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848198, 28.524929, 36.416798>,  <37.579369, 28.369596, 35.745827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848198, 28.524929, 36.416798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506580, 28.332226, 36.495296>,  <37.301609, 28.216604, 36.542397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506580, 28.332226, 36.495296>,  <37.848198, 28.524929, 36.416798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506580, 28.332226, 36.495296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446245, -0.484623, 0.752334,
		-0.267337, 0.730103, 0.628873,
		-0.854047, -0.481758, 0.196247,
		37.250366, 28.187698, 36.554173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542427, 28.725956, 37.156551>,  <37.848198, 28.524929, 36.416798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542427, 28.725956, 37.156551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401596, 28.365837, 37.054173>,  <37.317097, 28.149765, 36.992744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401596, 28.365837, 37.054173>,  <37.542427, 28.725956, 37.156551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401596, 28.365837, 37.054173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410529, -0.394284, 0.822196,
		-0.841136, 0.184402, 0.508416,
		-0.352075, -0.900298, -0.255944,
		37.295975, 28.095747, 36.977390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233032, 28.439125, 37.711548>,  <37.542427, 28.725956, 37.156551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233032, 28.439125, 37.711548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312393, 28.116564, 37.488712>,  <37.360008, 27.923027, 37.355011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312393, 28.116564, 37.488712>,  <37.233032, 28.439125, 37.711548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312393, 28.116564, 37.488712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459732, -0.425415, 0.779531,
		-0.865611, -0.410772, 0.286326,
		0.198403, -0.806404, -0.557089,
		37.371914, 27.874643, 37.321587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011940, 27.918652, 38.171616>,  <37.233032, 28.439125, 37.711548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011940, 27.918652, 38.171616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255039, 27.748558, 37.903339>,  <37.400898, 27.646502, 37.742374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255039, 27.748558, 37.903339>,  <37.011940, 27.918652, 38.171616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255039, 27.748558, 37.903339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388172, -0.577717, 0.718028,
		-0.692798, -0.696721, -0.186041,
		0.607745, -0.425233, -0.670689,
		37.437363, 27.620989, 37.702133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033951, 27.171612, 38.243057>,  <37.011940, 27.918652, 38.171616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033951, 27.171612, 38.243057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378971, 27.279522, 38.071835>,  <37.585983, 27.344269, 37.969101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378971, 27.279522, 38.071835>,  <37.033951, 27.171612, 38.243057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378971, 27.279522, 38.071835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502051, -0.561465, 0.657801,
		-0.062879, -0.782290, -0.619732,
		0.862549, 0.269775, -0.428053,
		37.637737, 27.360455, 37.943417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407700, 26.645283, 38.363461>,  <37.033951, 27.171612, 38.243057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407700, 26.645283, 38.363461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692268, 26.899538, 38.243568>,  <37.863010, 27.052092, 38.171631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692268, 26.899538, 38.243568>,  <37.407700, 26.645283, 38.363461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692268, 26.899538, 38.243568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619854, -0.366587, 0.693827,
		0.331142, -0.679397, -0.654801,
		0.711425, 0.635636, -0.299734,
		37.905697, 27.090229, 38.153648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200027, 26.303644, 38.319126>,  <37.407700, 26.645283, 38.363461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200027, 26.303644, 38.319126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258846, 26.697142, 38.360359>,  <38.294140, 26.933239, 38.385101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258846, 26.697142, 38.360359>,  <38.200027, 26.303644, 38.319126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258846, 26.697142, 38.360359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793906, -0.179550, 0.580926,
		0.589990, -0.003584, -0.807402,
		0.147051, 0.983742, 0.103087,
		38.302963, 26.992264, 38.391285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944744, 26.490532, 38.190765>,  <38.200027, 26.303644, 38.319126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944744, 26.490532, 38.190765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813541, 26.823357, 38.369686>,  <38.734818, 27.023052, 38.477039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813541, 26.823357, 38.369686>,  <38.944744, 26.490532, 38.190765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813541, 26.823357, 38.369686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868986, 0.080055, 0.488319,
		0.370504, 0.548873, -0.749310,
		-0.328011, 0.832064, 0.447302,
		38.715137, 27.072975, 38.503876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445786, 27.106001, 38.095356>,  <38.944744, 26.490532, 38.190765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445786, 27.106001, 38.095356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231548, 27.174700, 38.426086>,  <39.103004, 27.215919, 38.624523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231548, 27.174700, 38.426086>,  <39.445786, 27.106001, 38.095356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231548, 27.174700, 38.426086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841434, 0.191554, 0.505269,
		-0.071604, 0.966339, -0.247107,
		-0.535595, 0.171745, 0.826826,
		39.070869, 27.226223, 38.674133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924393, 27.604782, 38.508160>,  <39.445786, 27.106001, 38.095356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924393, 27.604782, 38.508160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655334, 27.476542, 38.774921>,  <39.493900, 27.399597, 38.934978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655334, 27.476542, 38.774921>,  <39.924393, 27.604782, 38.508160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655334, 27.476542, 38.774921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600771, 0.289547, 0.745142,
		-0.431995, 0.901874, -0.002154,
		-0.672648, -0.320603, 0.666902,
		39.453541, 27.380360, 38.974991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988010, 28.035809, 39.031570>,  <39.924393, 27.604782, 38.508160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988010, 28.035809, 39.031570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832821, 27.730162, 39.237717>,  <39.739708, 27.546774, 39.361404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832821, 27.730162, 39.237717>,  <39.988010, 28.035809, 39.031570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832821, 27.730162, 39.237717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497570, 0.297032, 0.814983,
		-0.775821, 0.572625, 0.264959,
		-0.387978, -0.764116, 0.515364,
		39.716427, 27.500927, 39.392326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913944, 28.299131, 39.685509>,  <39.988010, 28.035809, 39.031570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913944, 28.299131, 39.685509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885151, 27.909214, 39.769978>,  <39.867874, 27.675262, 39.820660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885151, 27.909214, 39.769978>,  <39.913944, 28.299131, 39.685509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885151, 27.909214, 39.769978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422961, 0.161906, 0.891566,
		-0.903284, 0.153498, 0.400646,
		-0.071986, -0.974795, 0.211171,
		39.863556, 27.616776, 39.833328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501244, 28.253971, 40.370644>,  <39.913944, 28.299131, 39.685509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501244, 28.253971, 40.370644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693859, 27.913311, 40.287876>,  <39.809429, 27.708916, 40.238216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693859, 27.913311, 40.287876>,  <39.501244, 28.253971, 40.370644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693859, 27.913311, 40.287876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435736, 0.027795, 0.899645,
		-0.760431, -0.523374, 0.384479,
		0.481538, -0.851649, -0.206917,
		39.838322, 27.657816, 40.225800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398945, 27.841106, 40.944603>,  <39.501244, 28.253971, 40.370644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398945, 27.841106, 40.944603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737469, 27.697645, 40.787060>,  <39.940582, 27.611568, 40.692532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737469, 27.697645, 40.787060>,  <39.398945, 27.841106, 40.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737469, 27.697645, 40.787060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427671, 0.016669, 0.903781,
		-0.317579, -0.933322, 0.167493,
		0.846310, -0.358654, -0.393861,
		39.991364, 27.590050, 40.668903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610687, 27.294842, 41.305813>,  <39.398945, 27.841106, 40.944603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610687, 27.294842, 41.305813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956993, 27.399368, 41.135086>,  <40.164776, 27.462084, 41.032650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956993, 27.399368, 41.135086>,  <39.610687, 27.294842, 41.305813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956993, 27.399368, 41.135086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431899, 0.040728, 0.901002,
		0.252830, -0.964393, -0.077601,
		0.865760, 0.261316, -0.426818,
		40.216721, 27.477762, 41.007042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088844, 27.024342, 41.756981>,  <39.610687, 27.294842, 41.305813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088844, 27.024342, 41.756981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332970, 27.259291, 41.544376>,  <40.479446, 27.400261, 41.416813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332970, 27.259291, 41.544376>,  <40.088844, 27.024342, 41.756981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332970, 27.259291, 41.544376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595973, 0.101557, 0.796557,
		0.521856, -0.802919, -0.288077,
		0.610314, 0.587374, -0.531516,
		40.516064, 27.435503, 41.384922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822712, 26.769369, 41.845814>,  <40.088844, 27.024342, 41.756981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822712, 26.769369, 41.845814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834576, 27.156469, 41.745754>,  <40.841694, 27.388729, 41.685719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834576, 27.156469, 41.745754>,  <40.822712, 26.769369, 41.845814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834576, 27.156469, 41.745754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486595, 0.204623, 0.849326,
		0.873124, -0.146915, -0.464834,
		0.029663, 0.967753, -0.250149,
		40.843475, 27.446795, 41.670708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485786, 27.007666, 41.988281>,  <40.822712, 26.769369, 41.845814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485786, 27.007666, 41.988281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245373, 27.327147, 41.976734>,  <41.101124, 27.518835, 41.969807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245373, 27.327147, 41.976734>,  <41.485786, 27.007666, 41.988281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245373, 27.327147, 41.976734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299817, 0.258799, 0.918223,
		0.740859, 0.543226, -0.395011,
		-0.601031, 0.798705, -0.028866,
		41.065063, 27.566757, 41.968075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951595, 27.625664, 42.247257>,  <41.485786, 27.007666, 41.988281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951595, 27.625664, 42.247257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569000, 27.713818, 42.323738>,  <41.339443, 27.766710, 42.369629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569000, 27.713818, 42.323738>,  <41.951595, 27.625664, 42.247257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569000, 27.713818, 42.323738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244672, 0.248860, 0.937126,
		0.158943, 0.943133, -0.291953,
		-0.956490, 0.220383, 0.191204,
		41.282055, 27.779932, 42.381100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920444, 28.243986, 42.676792>,  <41.951595, 27.625664, 42.247257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920444, 28.243986, 42.676792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549667, 28.110714, 42.745808>,  <41.327202, 28.030750, 42.787216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549667, 28.110714, 42.745808>,  <41.920444, 28.243986, 42.676792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549667, 28.110714, 42.745808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080760, 0.271894, 0.958933,
		-0.366408, 0.902810, -0.225123,
		-0.926943, -0.333179, 0.172535,
		41.271584, 28.010759, 42.797569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596050, 28.657364, 43.156578>,  <41.920444, 28.243986, 42.676792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596050, 28.657364, 43.156578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362919, 28.334480, 43.193932>,  <41.223038, 28.140749, 43.216343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362919, 28.334480, 43.193932>,  <41.596050, 28.657364, 43.156578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362919, 28.334480, 43.193932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016730, 0.102972, 0.994544,
		-0.812421, 0.581213, -0.046510,
		-0.582831, -0.807210, 0.093380,
		41.188068, 28.092318, 43.221947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430637, 29.427698, 43.349014>,  <41.596050, 28.657364, 43.156578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430637, 29.427698, 43.349014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780693, 29.619989, 43.371067>,  <41.990726, 29.735363, 43.384296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780693, 29.619989, 43.371067>,  <41.430637, 29.427698, 43.349014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780693, 29.619989, 43.371067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095862, 0.283920, -0.954044,
		-0.474287, 0.829633, 0.294552,
		0.875135, 0.480727, 0.055130,
		42.043232, 29.764208, 43.387608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307571, 29.917246, 42.863487>,  <41.430637, 29.427698, 43.349014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307571, 29.917246, 42.863487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702553, 29.955860, 42.913460>,  <41.939541, 29.979029, 42.943443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702553, 29.955860, 42.913460>,  <41.307571, 29.917246, 42.863487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702553, 29.955860, 42.913460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082590, 0.358569, -0.929843,
		-0.134563, 0.928498, 0.346099,
		0.987457, 0.096538, 0.124935,
		41.998791, 29.984821, 42.950939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443188, 30.629454, 42.752220>,  <41.307571, 29.917246, 42.863487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443188, 30.629454, 42.752220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768970, 30.413790, 42.666462>,  <41.964439, 30.284391, 42.615009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768970, 30.413790, 42.666462>,  <41.443188, 30.629454, 42.752220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768970, 30.413790, 42.666462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030111, 0.329728, -0.943596,
		0.579442, 0.774974, 0.252315,
		0.814457, -0.539161, -0.214393,
		42.013309, 30.252041, 42.602142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866489, 31.081247, 42.411629>,  <41.443188, 30.629454, 42.752220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866489, 31.081247, 42.411629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984100, 30.723410, 42.277020>,  <42.054668, 30.508707, 42.196255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984100, 30.723410, 42.277020>,  <41.866489, 31.081247, 42.411629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984100, 30.723410, 42.277020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012674, 0.355709, -0.934511,
		0.955712, 0.270508, 0.115927,
		0.294029, -0.894593, -0.336527,
		42.072308, 30.455032, 42.176060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373829, 31.180206, 42.005287>,  <41.866489, 31.081247, 42.411629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373829, 31.180206, 42.005287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257290, 30.818977, 41.879066>,  <42.187366, 30.602240, 41.803333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257290, 30.818977, 41.879066>,  <42.373829, 31.180206, 42.005287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257290, 30.818977, 41.879066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137011, 0.287071, -0.948060,
		0.946755, -0.319448, 0.040094,
		-0.291346, -0.903074, -0.315554,
		42.169888, 30.548056, 41.784401>
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
