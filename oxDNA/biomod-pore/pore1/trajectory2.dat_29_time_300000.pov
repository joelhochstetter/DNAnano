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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<46.231911, 40.689465, 45.422375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221535, 40.745003, 45.818363>,  <46.215309, 40.778324, 46.055958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221535, 40.745003, 45.818363>,  <46.231911, 40.689465, 45.422375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221535, 40.745003, 45.818363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812943, -0.579251, 0.059940,
		0.581766, -0.803237, 0.127900,
		-0.025940, 0.138847, 0.989974,
		46.213753, 40.786655, 46.115356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046013, 39.982197, 45.614422>,  <46.231911, 40.689465, 45.422375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046013, 39.982197, 45.614422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958664, 40.267471, 45.880859>,  <45.906254, 40.438637, 46.040722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958664, 40.267471, 45.880859>,  <46.046013, 39.982197, 45.614422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958664, 40.267471, 45.880859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919790, -0.378464, 0.103685,
		0.326038, -0.590023, 0.738629,
		-0.218368, 0.713189, 0.666091,
		45.893154, 40.481426, 46.080688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560242, 39.497875, 46.085098>,  <46.046013, 39.982197, 45.614422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560242, 39.497875, 46.085098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496422, 39.876984, 46.195572>,  <45.458130, 40.104446, 46.261856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496422, 39.876984, 46.195572>,  <45.560242, 39.497875, 46.085098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496422, 39.876984, 46.195572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965151, -0.208545, 0.158092,
		0.207432, -0.241340, 0.948012,
		-0.159549, 0.947768, 0.276188,
		45.448559, 40.161316, 46.278427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291077, 39.595314, 46.826260>,  <45.560242, 39.497875, 46.085098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291077, 39.595314, 46.826260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162895, 39.898575, 46.599098>,  <45.085987, 40.080532, 46.462799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162895, 39.898575, 46.599098>,  <45.291077, 39.595314, 46.826260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162895, 39.898575, 46.599098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939255, -0.176507, 0.294355,
		0.122927, 0.627735, 0.768659,
		-0.320451, 0.758152, -0.567906,
		45.066761, 40.126019, 46.428726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886105, 39.868275, 47.222694>,  <45.291077, 39.595314, 46.826260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886105, 39.868275, 47.222694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757828, 40.032249, 46.881142>,  <44.680862, 40.130634, 46.676208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757828, 40.032249, 46.881142>,  <44.886105, 39.868275, 47.222694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757828, 40.032249, 46.881142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936112, 0.000263, 0.351703,
		0.144399, 0.912116, 0.383658,
		-0.320692, 0.409932, -0.853880,
		44.661621, 40.155228, 46.624977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486355, 40.423889, 47.433296>,  <44.886105, 39.868275, 47.222694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486355, 40.423889, 47.433296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369392, 40.345711, 47.058853>,  <44.299217, 40.298805, 46.834187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369392, 40.345711, 47.058853>,  <44.486355, 40.423889, 47.433296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369392, 40.345711, 47.058853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952156, -0.031480, 0.303987,
		-0.088881, 0.980210, -0.176888,
		-0.292402, -0.195443, -0.936110,
		44.281673, 40.287079, 46.778019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992634, 40.968010, 47.205284>,  <44.486355, 40.423889, 47.433296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992634, 40.968010, 47.205284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945038, 40.640137, 46.981152>,  <43.916481, 40.443413, 46.846672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945038, 40.640137, 46.981152>,  <43.992634, 40.968010, 47.205284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945038, 40.640137, 46.981152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951226, -0.067660, 0.300984,
		-0.284622, 0.568813, -0.771649,
		-0.118994, -0.819679, -0.560327,
		43.909340, 40.394234, 46.813053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303173, 40.958050, 46.963524>,  <43.992634, 40.968010, 47.205284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303173, 40.958050, 46.963524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397377, 40.579628, 46.874512>,  <43.453899, 40.352573, 46.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397377, 40.579628, 46.874512>,  <43.303173, 40.958050, 46.963524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397377, 40.579628, 46.874512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937036, -0.281788, 0.206300,
		-0.257876, 0.159929, -0.952850,
		0.235509, -0.946054, -0.222525,
		43.468029, 40.295811, 46.807755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820244, 40.684887, 46.478836>,  <43.303173, 40.958050, 46.963524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820244, 40.684887, 46.478836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976227, 40.361809, 46.655731>,  <43.069817, 40.167961, 46.761868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976227, 40.361809, 46.655731>,  <42.820244, 40.684887, 46.478836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976227, 40.361809, 46.655731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920676, -0.350901, 0.170951,
		0.017104, -0.473817, -0.880457,
		0.389953, -0.807692, 0.442234,
		43.093212, 40.119503, 46.788403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384098, 40.182751, 46.362377>,  <42.820244, 40.684887, 46.478836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384098, 40.182751, 46.362377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581001, 39.999146, 46.658215>,  <42.699142, 39.888985, 46.835716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581001, 39.999146, 46.658215>,  <42.384098, 40.182751, 46.362377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581001, 39.999146, 46.658215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831792, -0.498450, 0.244273,
		0.256524, -0.735430, -0.627166,
		0.492256, -0.459010, 0.739590,
		42.728680, 39.861443, 46.880093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271095, 39.419441, 46.386562>,  <42.384098, 40.182751, 46.362377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271095, 39.419441, 46.386562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378967, 39.526207, 46.756649>,  <42.443691, 39.590267, 46.978703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378967, 39.526207, 46.756649>,  <42.271095, 39.419441, 46.386562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378967, 39.526207, 46.756649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758050, -0.533668, 0.374912,
		0.593827, -0.802470, 0.058410,
		0.269684, 0.266910, 0.925218,
		42.459873, 39.606281, 47.034214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097153, 38.862854, 46.792561>,  <42.271095, 39.419441, 46.386562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097153, 38.862854, 46.792561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120148, 39.145889, 47.074272>,  <42.133945, 39.315712, 47.243301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120148, 39.145889, 47.074272>,  <42.097153, 38.862854, 46.792561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120148, 39.145889, 47.074272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759103, -0.427208, 0.491179,
		0.648427, -0.562861, 0.512571,
		0.057491, 0.707588, 0.704283,
		42.137394, 39.358166, 47.285557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986176, 38.463158, 47.367847>,  <42.097153, 38.862854, 46.792561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986176, 38.463158, 47.367847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905975, 38.835030, 47.491459>,  <41.857857, 39.058151, 47.565628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905975, 38.835030, 47.491459>,  <41.986176, 38.463158, 47.367847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905975, 38.835030, 47.491459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623850, -0.364370, 0.691408,
		0.755389, -0.054165, 0.653035,
		-0.200496, 0.929678, 0.309032,
		41.845825, 39.113934, 47.584167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996983, 38.514786, 48.098969>,  <41.986176, 38.463158, 47.367847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996983, 38.514786, 48.098969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791161, 38.847054, 48.013905>,  <41.667667, 39.046413, 47.962868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791161, 38.847054, 48.013905>,  <41.996983, 38.514786, 48.098969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791161, 38.847054, 48.013905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501701, -0.090531, 0.860290,
		0.695366, 0.549355, 0.463331,
		-0.514551, 0.830670, -0.212660,
		41.636795, 39.096256, 47.950108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085285, 38.884315, 48.662304>,  <41.996983, 38.514786, 48.098969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085285, 38.884315, 48.662304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755154, 38.997185, 48.466667>,  <41.557076, 39.064907, 48.349285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755154, 38.997185, 48.466667>,  <42.085285, 38.884315, 48.662304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755154, 38.997185, 48.466667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548469, -0.194726, 0.813181,
		0.134216, 0.939395, 0.315475,
		-0.825329, 0.282170, -0.489093,
		41.507553, 39.081837, 48.319939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933605, 39.527023, 48.931683>,  <42.085285, 38.884315, 48.662304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933605, 39.527023, 48.931683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603981, 39.358192, 48.780540>,  <41.406208, 39.256893, 48.689857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603981, 39.358192, 48.780540>,  <41.933605, 39.527023, 48.931683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603981, 39.358192, 48.780540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409516, -0.017029, 0.912144,
		-0.391432, 0.906399, -0.158815,
		-0.824062, -0.422079, -0.377851,
		41.356762, 39.231567, 48.667187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393326, 39.777679, 49.280762>,  <41.933605, 39.527023, 48.931683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393326, 39.777679, 49.280762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186325, 39.473549, 49.123745>,  <41.062122, 39.291069, 49.029533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186325, 39.473549, 49.123745>,  <41.393326, 39.777679, 49.280762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186325, 39.473549, 49.123745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499574, -0.103976, 0.860009,
		-0.694704, 0.641163, -0.326032,
		-0.517506, -0.760328, -0.392541,
		41.031075, 39.245449, 49.005981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670799, 39.917610, 49.571079>,  <41.393326, 39.777679, 49.280762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670799, 39.917610, 49.571079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662346, 39.541458, 49.435291>,  <40.657272, 39.315769, 49.353817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662346, 39.541458, 49.435291>,  <40.670799, 39.917610, 49.571079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662346, 39.541458, 49.435291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472777, -0.289785, 0.832170,
		-0.880929, 0.178082, -0.438465,
		-0.021134, -0.940378, -0.339473,
		40.656006, 39.259346, 49.333450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004486, 39.688446, 49.769539>,  <40.670799, 39.917610, 49.571079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004486, 39.688446, 49.769539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218987, 39.361275, 49.686184>,  <40.347687, 39.164970, 49.636169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218987, 39.361275, 49.686184>,  <40.004486, 39.688446, 49.769539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218987, 39.361275, 49.686184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528616, -0.517925, 0.672547,
		-0.658026, -0.250496, -0.710108,
		0.536253, -0.817927, -0.208391,
		40.379864, 39.115898, 49.623665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527191, 39.220249, 49.735619>,  <40.004486, 39.688446, 49.769539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527191, 39.220249, 49.735619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883621, 39.063789, 49.827698>,  <40.097481, 38.969913, 49.882946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883621, 39.063789, 49.827698>,  <39.527191, 39.220249, 49.735619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883621, 39.063789, 49.827698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432170, -0.576351, 0.693577,
		-0.138615, -0.717513, -0.682613,
		0.891075, -0.391145, 0.230197,
		40.150944, 38.946445, 49.896755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418045, 38.495850, 49.729065>,  <39.527191, 39.220249, 49.735619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418045, 38.495850, 49.729065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750725, 38.525444, 49.949173>,  <39.950333, 38.543201, 50.081238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750725, 38.525444, 49.949173>,  <39.418045, 38.495850, 49.729065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750725, 38.525444, 49.949173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396911, -0.613789, 0.682440,
		0.388244, -0.785995, -0.481122,
		0.831702, 0.073991, 0.550270,
		40.000237, 38.547642, 50.114254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614693, 37.826519, 49.865761>,  <39.418045, 38.495850, 49.729065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614693, 37.826519, 49.865761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786728, 38.062096, 50.139454>,  <39.889950, 38.203442, 50.303669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786728, 38.062096, 50.139454>,  <39.614693, 37.826519, 49.865761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786728, 38.062096, 50.139454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396778, -0.557479, 0.729236,
		0.810923, -0.585121, -0.006084,
		0.430083, 0.588940, 0.684236,
		39.915752, 38.238777, 50.344723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807426, 37.362663, 50.349068>,  <39.614693, 37.826519, 49.865761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807426, 37.362663, 50.349068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828907, 37.701225, 50.560997>,  <39.841797, 37.904362, 50.688156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828907, 37.701225, 50.560997>,  <39.807426, 37.362663, 50.349068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828907, 37.701225, 50.560997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395381, -0.469204, 0.789634,
		0.916946, -0.251890, 0.309453,
		0.053704, 0.846403, 0.529828,
		39.845020, 37.955147, 50.719944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020386, 37.197716, 51.021858>,  <39.807426, 37.362663, 50.349068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020386, 37.197716, 51.021858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875042, 37.567947, 51.064346>,  <39.787838, 37.790085, 51.089840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875042, 37.567947, 51.064346>,  <40.020386, 37.197716, 51.021858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875042, 37.567947, 51.064346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339145, -0.237601, 0.910234,
		0.867728, 0.294716, 0.400238,
		-0.363357, 0.925575, 0.106222,
		39.766033, 37.845619, 51.096214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218937, 37.405598, 51.653976>,  <40.020386, 37.197716, 51.021858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218937, 37.405598, 51.653976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887756, 37.601151, 51.544079>,  <39.689049, 37.718483, 51.478142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887756, 37.601151, 51.544079>,  <40.218937, 37.405598, 51.653976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887756, 37.601151, 51.544079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505126, -0.437336, 0.744033,
		0.243591, 0.754805, 0.609042,
		-0.827956, 0.488883, -0.274741,
		39.639370, 37.747814, 51.461655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052437, 37.920414, 52.178017>,  <40.218937, 37.405598, 51.653976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052437, 37.920414, 52.178017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710899, 37.850906, 51.981750>,  <39.505978, 37.809200, 51.863991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710899, 37.850906, 51.981750>,  <40.052437, 37.920414, 52.178017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710899, 37.850906, 51.981750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435911, -0.276467, 0.856474,
		-0.284486, 0.945182, 0.160310,
		-0.853844, -0.173773, -0.490666,
		39.454746, 37.798775, 51.834549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543152, 38.099098, 52.605282>,  <40.052437, 37.920414, 52.178017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543152, 38.099098, 52.605282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349098, 37.873215, 52.338226>,  <39.232666, 37.737682, 52.177994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349098, 37.873215, 52.338226>,  <39.543152, 38.099098, 52.605282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349098, 37.873215, 52.338226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580632, -0.362861, 0.728833,
		-0.653841, 0.741237, -0.151853,
		-0.485137, -0.564712, -0.667639,
		39.203556, 37.703800, 52.137936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839661, 38.170410, 52.839268>,  <39.543152, 38.099098, 52.605282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839661, 38.170410, 52.839268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853188, 37.855186, 52.593399>,  <38.861305, 37.666054, 52.445877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853188, 37.855186, 52.593399>,  <38.839661, 38.170410, 52.839268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853188, 37.855186, 52.593399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677940, -0.469984, 0.565255,
		-0.734339, 0.397592, -0.550152,
		0.033822, -0.788058, -0.614671,
		38.863335, 37.618771, 52.408997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143387, 38.014328, 52.628494>,  <38.839661, 38.170410, 52.839268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143387, 38.014328, 52.628494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362267, 37.681664, 52.590748>,  <38.493595, 37.482063, 52.568100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362267, 37.681664, 52.590748>,  <38.143387, 38.014328, 52.628494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362267, 37.681664, 52.590748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675753, -0.505496, 0.536499,
		-0.493882, -0.229815, -0.838609,
		0.547210, -0.831661, -0.094357,
		38.526428, 37.432163, 52.562439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717403, 37.505112, 52.384338>,  <38.143387, 38.014328, 52.628494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717403, 37.505112, 52.384338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010574, 37.274513, 52.528816>,  <38.186478, 37.136154, 52.615501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010574, 37.274513, 52.528816>,  <37.717403, 37.505112, 52.384338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010574, 37.274513, 52.528816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678358, -0.659428, 0.324014,
		0.051388, -0.482499, -0.874388,
		0.732932, -0.576498, 0.361194,
		38.230453, 37.101562, 52.637173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553944, 36.755630, 52.185055>,  <37.717403, 37.505112, 52.384338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553944, 36.755630, 52.185055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796021, 36.773018, 52.503010>,  <37.941269, 36.783451, 52.693783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796021, 36.773018, 52.503010>,  <37.553944, 36.755630, 52.185055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796021, 36.773018, 52.503010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607652, -0.619849, 0.496534,
		0.514293, -0.783516, -0.348719,
		0.605196, 0.043464, 0.794889,
		37.977581, 36.786057, 52.741478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685593, 36.102150, 52.406506>,  <37.553944, 36.755630, 52.185055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685593, 36.102150, 52.406506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778687, 36.318283, 52.729958>,  <37.834545, 36.447964, 52.924026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778687, 36.318283, 52.729958>,  <37.685593, 36.102150, 52.406506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778687, 36.318283, 52.729958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311958, -0.746047, 0.588300,
		0.921149, -0.389177, -0.005073,
		0.232737, 0.540329, 0.808627,
		37.848507, 36.480381, 52.972546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923149, 35.692078, 52.865856>,  <37.685593, 36.102150, 52.406506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923149, 35.692078, 52.865856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821148, 35.988358, 53.114479>,  <37.759949, 36.166126, 53.263653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821148, 35.988358, 53.114479>,  <37.923149, 35.692078, 52.865856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821148, 35.988358, 53.114479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498239, -0.651556, 0.572043,
		0.828692, -0.163811, 0.535196,
		-0.255003, 0.740703, 0.621556,
		37.744648, 36.210567, 53.300945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866974, 35.337326, 53.580627>,  <37.923149, 35.692078, 52.865856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866974, 35.337326, 53.580627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675873, 35.678902, 53.663136>,  <37.561211, 35.883846, 53.712639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675873, 35.678902, 53.663136>,  <37.866974, 35.337326, 53.580627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675873, 35.678902, 53.663136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645522, -0.500499, 0.576889,
		0.595863, 0.142460, 0.790349,
		-0.477753, 0.853935, 0.206268,
		37.532547, 35.935081, 53.725018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892841, 35.543316, 54.303448>,  <37.866974, 35.337326, 53.580627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892841, 35.543316, 54.303448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574089, 35.735291, 54.156673>,  <37.382839, 35.850475, 54.068611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574089, 35.735291, 54.156673>,  <37.892841, 35.543316, 54.303448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574089, 35.735291, 54.156673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562283, -0.367076, 0.741009,
		0.220947, 0.796815, 0.562377,
		-0.796882, 0.479939, -0.366931,
		37.335026, 35.879272, 54.046593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611607, 35.760849, 54.954643>,  <37.892841, 35.543316, 54.303448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611607, 35.760849, 54.954643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344429, 35.789650, 54.658356>,  <37.184120, 35.806931, 54.480583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344429, 35.789650, 54.658356>,  <37.611607, 35.760849, 54.954643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344429, 35.789650, 54.658356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740515, -0.163363, 0.651882,
		-0.074068, 0.983935, 0.162436,
		-0.667946, 0.072003, -0.740719,
		37.144047, 35.811253, 54.436142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973763, 36.198742, 55.196133>,  <37.611607, 35.760849, 54.954643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973763, 36.198742, 55.196133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860870, 35.942574, 54.910416>,  <36.793137, 35.788872, 54.738987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860870, 35.942574, 54.910416>,  <36.973763, 36.198742, 55.196133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860870, 35.942574, 54.910416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701409, -0.370217, 0.609069,
		-0.654500, 0.672909, -0.344707,
		-0.282231, -0.640416, -0.714292,
		36.776199, 35.750450, 54.696129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277889, 36.164459, 55.279175>,  <36.973763, 36.198742, 55.196133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277889, 36.164459, 55.279175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355988, 35.831200, 55.072197>,  <36.402847, 35.631245, 54.948009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355988, 35.831200, 55.072197>,  <36.277889, 36.164459, 55.279175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355988, 35.831200, 55.072197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615284, -0.514909, 0.596904,
		-0.763744, 0.201832, -0.613155,
		0.195245, -0.833146, -0.517442,
		36.414562, 35.581257, 54.916965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635208, 35.787029, 55.297451>,  <36.277889, 36.164459, 55.279175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635208, 35.787029, 55.297451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919479, 35.524017, 55.197384>,  <36.090042, 35.366211, 55.137344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919479, 35.524017, 55.197384>,  <35.635208, 35.787029, 55.297451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919479, 35.524017, 55.197384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494786, -0.719947, 0.486686,
		-0.500121, -0.222098, -0.836989,
		0.710680, -0.657533, -0.250170,
		36.132683, 35.326759, 55.122334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305725, 35.211597, 55.353004>,  <35.635208, 35.787029, 55.297451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305725, 35.211597, 55.353004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672462, 35.052429, 55.340008>,  <35.892506, 34.956928, 55.332211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672462, 35.052429, 55.340008>,  <35.305725, 35.211597, 55.353004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672462, 35.052429, 55.340008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326763, -0.794671, 0.511589,
		-0.229388, -0.458432, -0.858616,
		0.916846, -0.397916, -0.032490,
		35.947517, 34.933056, 55.330261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208389, 34.462784, 55.222073>,  <35.305725, 35.211597, 55.353004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208389, 34.462784, 55.222073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566689, 34.532013, 55.385872>,  <35.781666, 34.573551, 55.484150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566689, 34.532013, 55.385872>,  <35.208389, 34.462784, 55.222073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566689, 34.532013, 55.385872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112819, -0.802456, 0.585949,
		0.430018, -0.571059, -0.699268,
		0.895744, 0.173078, 0.409496,
		35.835411, 34.583935, 55.508720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530922, 33.829754, 55.167908>,  <35.208389, 34.462784, 55.222073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530922, 33.829754, 55.167908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717957, 34.038269, 55.453461>,  <35.830177, 34.163380, 55.624790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717957, 34.038269, 55.453461>,  <35.530922, 33.829754, 55.167908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717957, 34.038269, 55.453461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042556, -0.819942, 0.570863,
		0.882924, -0.236547, -0.405575,
		0.467584, 0.521288, 0.713880,
		35.858231, 34.194656, 55.667625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276649, 33.535606, 55.360760>,  <35.530922, 33.829754, 55.167908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276649, 33.535606, 55.360760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066750, 33.676712, 55.670650>,  <35.940807, 33.761375, 55.856583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066750, 33.676712, 55.670650>,  <36.276649, 33.535606, 55.360760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066750, 33.676712, 55.670650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114367, -0.872628, 0.474805,
		0.843538, 0.337757, 0.417569,
		-0.524752, 0.352760, 0.774723,
		35.909325, 33.782539, 55.903069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596699, 33.275806, 56.000130>,  <36.276649, 33.535606, 55.360760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596699, 33.275806, 56.000130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222008, 33.377251, 56.096645>,  <35.997192, 33.438118, 56.154552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222008, 33.377251, 56.096645>,  <36.596699, 33.275806, 56.000130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222008, 33.377251, 56.096645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171560, -0.933434, 0.315068,
		0.305129, 0.253739, 0.917885,
		-0.936730, 0.253609, 0.241286,
		35.940990, 33.453335, 56.169033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359314, 33.102512, 56.756054>,  <36.596699, 33.275806, 56.000130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359314, 33.102512, 56.756054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044491, 33.120934, 56.509987>,  <35.855598, 33.131985, 56.362347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044491, 33.120934, 56.509987>,  <36.359314, 33.102512, 56.756054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044491, 33.120934, 56.509987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267740, -0.923890, 0.273392,
		-0.555753, 0.379878, 0.739480,
		-0.787053, 0.046050, -0.615163,
		35.808376, 33.134750, 56.325439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530132, 33.146919, 57.062004>,  <36.359314, 33.102512, 56.756054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530132, 33.146919, 57.062004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577751, 32.941956, 56.721825>,  <35.606323, 32.818977, 56.517715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577751, 32.941956, 56.721825>,  <35.530132, 33.146919, 57.062004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577751, 32.941956, 56.721825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066143, -0.858729, 0.508143,
		-0.990683, -0.004244, -0.136124,
		0.119050, -0.512412, -0.850448,
		35.613464, 32.788231, 56.466690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703182, 33.665005, 57.610081>,  <35.530132, 33.146919, 57.062004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703182, 33.665005, 57.610081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353420, 33.786751, 57.458931>,  <35.143562, 33.859798, 57.368240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353420, 33.786751, 57.458931>,  <35.703182, 33.665005, 57.610081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353420, 33.786751, 57.458931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464570, 0.300480, -0.832999,
		-0.139993, -0.903921, -0.404139,
		-0.874401, 0.304364, -0.377869,
		35.091099, 33.878059, 57.345570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156876, 33.641022, 58.241203>,  <35.703182, 33.665005, 57.610081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156876, 33.641022, 58.241203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373985, 33.818474, 58.526463>,  <35.504253, 33.924946, 58.697620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373985, 33.818474, 58.526463>,  <35.156876, 33.641022, 58.241203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373985, 33.818474, 58.526463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679226, 0.267585, -0.683411,
		-0.494010, 0.855331, -0.156085,
		0.542777, 0.443629, 0.713153,
		35.536819, 33.951561, 58.740410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390491, 34.272171, 57.928257>,  <35.156876, 33.641022, 58.241203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390491, 34.272171, 57.928257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633835, 34.162346, 58.226120>,  <35.779839, 34.096451, 58.404839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633835, 34.162346, 58.226120>,  <35.390491, 34.272171, 57.928257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633835, 34.162346, 58.226120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768083, 0.439966, -0.465272,
		-0.199879, 0.855012, 0.478543,
		0.608356, -0.274563, 0.744660,
		35.816341, 34.079975, 58.449516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730961, 34.984577, 58.235558>,  <35.390491, 34.272171, 57.928257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730961, 34.984577, 58.235558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940338, 34.650864, 58.304806>,  <36.065964, 34.450634, 58.346355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940338, 34.650864, 58.304806>,  <35.730961, 34.984577, 58.235558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940338, 34.650864, 58.304806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821384, 0.440049, -0.362885,
		0.226570, 0.332147, 0.915612,
		0.523445, -0.834288, 0.173118,
		36.097370, 34.400578, 58.356743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323280, 35.114502, 58.645653>,  <35.730961, 34.984577, 58.235558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323280, 35.114502, 58.645653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406403, 34.760208, 58.479622>,  <36.456276, 34.547634, 58.380001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406403, 34.760208, 58.479622>,  <36.323280, 35.114502, 58.645653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406403, 34.760208, 58.479622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902081, 0.337621, -0.268817,
		0.378240, -0.318574, 0.869164,
		0.207810, -0.885733, -0.415081,
		36.468746, 34.494488, 58.355099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980854, 35.012684, 58.939491>,  <36.323280, 35.114502, 58.645653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980854, 35.012684, 58.939491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928284, 34.801422, 58.603928>,  <36.896740, 34.674664, 58.402588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928284, 34.801422, 58.603928>,  <36.980854, 35.012684, 58.939491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928284, 34.801422, 58.603928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843597, 0.384866, -0.374464,
		0.520645, -0.756920, 0.394970,
		-0.131429, -0.528158, -0.838914,
		36.888855, 34.642975, 58.352253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590794, 34.560856, 58.739689>,  <36.980854, 35.012684, 58.939491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590794, 34.560856, 58.739689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375000, 34.663681, 58.418968>,  <37.245525, 34.725376, 58.226536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375000, 34.663681, 58.418968>,  <37.590794, 34.560856, 58.739689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375000, 34.663681, 58.418968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798828, 0.457262, -0.390878,
		0.266150, -0.851369, -0.452035,
		-0.539479, 0.257066, -0.801797,
		37.213158, 34.740799, 58.178429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006355, 34.371628, 58.079674>,  <37.590794, 34.560856, 58.739689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006355, 34.371628, 58.079674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734932, 34.635696, 57.950844>,  <37.572079, 34.794136, 57.873547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734932, 34.635696, 57.950844>,  <38.006355, 34.371628, 58.079674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734932, 34.635696, 57.950844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697250, 0.440951, -0.565159,
		-0.231082, -0.608061, -0.759515,
		-0.678560, 0.660170, -0.322075,
		37.531364, 34.833748, 57.854221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188747, 34.385239, 57.416843>,  <38.006355, 34.371628, 58.079674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188747, 34.385239, 57.416843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971924, 34.710602, 57.501266>,  <37.841831, 34.905819, 57.551922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971924, 34.710602, 57.501266>,  <38.188747, 34.385239, 57.416843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971924, 34.710602, 57.501266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537453, 0.528640, -0.657026,
		-0.646003, -0.242711, -0.723720,
		-0.542056, 0.813407, 0.211057,
		37.809307, 34.954624, 57.564583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209377, 34.737858, 56.816578>,  <38.188747, 34.385239, 57.416843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209377, 34.737858, 56.816578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096085, 35.023796, 57.072319>,  <38.028111, 35.195358, 57.225765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096085, 35.023796, 57.072319>,  <38.209377, 34.737858, 56.816578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096085, 35.023796, 57.072319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391855, 0.694727, -0.603162,
		-0.875345, 0.079701, -0.476884,
		-0.283232, 0.714845, 0.639357,
		38.011116, 35.238251, 57.264126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016819, 35.283310, 56.339466>,  <38.209377, 34.737858, 56.816578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016819, 35.283310, 56.339466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075027, 35.461655, 56.692741>,  <38.109951, 35.568661, 56.904709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075027, 35.461655, 56.692741>,  <38.016819, 35.283310, 56.339466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075027, 35.461655, 56.692741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564310, 0.695836, -0.444259,
		-0.812637, 0.563041, -0.150351,
		0.145517, 0.445866, 0.883192,
		38.118683, 35.595413, 56.957699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936447, 35.942322, 56.164043>,  <38.016819, 35.283310, 56.339466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936447, 35.942322, 56.164043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165573, 35.914017, 56.490692>,  <38.303051, 35.897034, 56.686680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165573, 35.914017, 56.490692>,  <37.936447, 35.942322, 56.164043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165573, 35.914017, 56.490692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625785, 0.681213, -0.379923,
		-0.529409, 0.728657, 0.434495,
		0.572817, -0.070766, 0.816623,
		38.337418, 35.892788, 56.735680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032192, 36.651596, 56.341408>,  <37.936447, 35.942322, 56.164043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032192, 36.651596, 56.341408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324078, 36.445251, 56.520920>,  <38.499210, 36.321445, 56.628628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324078, 36.445251, 56.520920>,  <38.032192, 36.651596, 56.341408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324078, 36.445251, 56.520920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613666, 0.783570, -0.097121,
		-0.301546, 0.346269, 0.888351,
		0.729715, -0.515864, 0.448776,
		38.542992, 36.290493, 56.655552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261208, 37.045330, 56.812298>,  <38.032192, 36.651596, 56.341408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261208, 37.045330, 56.812298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553947, 36.785545, 56.729736>,  <38.729591, 36.629677, 56.680199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553947, 36.785545, 56.729736>,  <38.261208, 37.045330, 56.812298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553947, 36.785545, 56.729736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625792, 0.760394, -0.173737,
		0.269781, -0.002015, 0.962919,
		0.731848, -0.649458, -0.206401,
		38.773502, 36.590710, 56.667816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847263, 37.345058, 57.155041>,  <38.261208, 37.045330, 56.812298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847263, 37.345058, 57.155041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972950, 37.090309, 56.873428>,  <39.048363, 36.937458, 56.704460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972950, 37.090309, 56.873428>,  <38.847263, 37.345058, 57.155041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972950, 37.090309, 56.873428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697253, 0.658105, -0.284143,
		0.644290, -0.401607, 0.650848,
		0.314212, -0.636875, -0.704032,
		39.067215, 36.899246, 56.662220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521374, 37.539692, 57.123081>,  <38.847263, 37.345058, 57.155041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521374, 37.539692, 57.123081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437965, 37.360008, 56.775581>,  <39.387920, 37.252197, 56.567081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437965, 37.360008, 56.775581>,  <39.521374, 37.539692, 57.123081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437965, 37.360008, 56.775581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542722, 0.685814, -0.484883,
		0.813615, -0.572601, 0.100785,
		-0.208525, -0.449207, -0.868753,
		39.375408, 37.225246, 56.514957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128403, 37.455067, 56.800674>,  <39.521374, 37.539692, 57.123081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128403, 37.455067, 56.800674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868164, 37.408951, 56.500427>,  <39.712021, 37.381283, 56.320278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868164, 37.408951, 56.500427>,  <40.128403, 37.455067, 56.800674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868164, 37.408951, 56.500427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507708, 0.669023, -0.542808,
		0.564764, -0.734245, -0.376729,
		-0.650595, -0.115291, -0.750623,
		39.672985, 37.374363, 56.275242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558723, 37.217979, 56.337177>,  <40.128403, 37.455067, 56.800674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558723, 37.217979, 56.337177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245407, 37.368355, 56.139137>,  <40.057419, 37.458580, 56.020313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245407, 37.368355, 56.139137>,  <40.558723, 37.217979, 56.337177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245407, 37.368355, 56.139137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621230, 0.502894, -0.600975,
		0.023053, -0.778309, -0.627458,
		-0.783289, 0.375942, -0.495102,
		40.010422, 37.481136, 55.990608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731411, 37.145851, 55.634182>,  <40.558723, 37.217979, 56.337177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731411, 37.145851, 55.634182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445518, 37.425003, 55.652576>,  <40.273983, 37.592495, 55.663612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445518, 37.425003, 55.652576>,  <40.731411, 37.145851, 55.634182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445518, 37.425003, 55.652576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516603, 0.571111, -0.637929,
		-0.471459, -0.432197, -0.768721,
		-0.714736, 0.697881, 0.045981,
		40.231098, 37.634369, 55.666370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467754, 37.117325, 55.006008>,  <40.731411, 37.145851, 55.634182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467754, 37.117325, 55.006008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374069, 37.480316, 55.145508>,  <40.317856, 37.698112, 55.229206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374069, 37.480316, 55.145508>,  <40.467754, 37.117325, 55.006008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374069, 37.480316, 55.145508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508981, 0.420093, -0.751306,
		-0.828301, 0.001537, -0.560282,
		-0.234216, 0.907480, 0.348746,
		40.303806, 37.752560, 55.250130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131672, 37.514481, 54.532696>,  <40.467754, 37.117325, 55.006008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131672, 37.514481, 54.532696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296448, 37.781883, 54.780373>,  <40.395313, 37.942326, 54.928978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296448, 37.781883, 54.780373>,  <40.131672, 37.514481, 54.532696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296448, 37.781883, 54.780373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569367, 0.341697, -0.747706,
		-0.711426, 0.660557, -0.239869,
		0.411940, 0.668511, 0.619192,
		40.420029, 37.982437, 54.966129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052509, 38.154354, 54.139332>,  <40.131672, 37.514481, 54.532696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052509, 38.154354, 54.139332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342361, 38.209610, 54.409393>,  <40.516273, 38.242764, 54.571430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342361, 38.209610, 54.409393>,  <40.052509, 38.154354, 54.139332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342361, 38.209610, 54.409393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547895, 0.478770, -0.685996,
		-0.418005, 0.867005, 0.271246,
		0.724626, 0.138136, 0.675156,
		40.559750, 38.251049, 54.611938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326027, 38.813587, 54.014748>,  <40.052509, 38.154354, 54.139332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326027, 38.813587, 54.014748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641342, 38.679779, 54.221317>,  <40.830532, 38.599495, 54.345261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641342, 38.679779, 54.221317>,  <40.326027, 38.813587, 54.014748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641342, 38.679779, 54.221317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613728, 0.487537, -0.621004,
		-0.044040, 0.806476, 0.589624,
		0.788289, -0.334519, 0.516428,
		40.877831, 38.579422, 54.376247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789352, 39.386654, 54.205101>,  <40.326027, 38.813587, 54.014748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789352, 39.386654, 54.205101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023186, 39.063408, 54.233994>,  <41.163486, 38.869461, 54.251328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023186, 39.063408, 54.233994>,  <40.789352, 39.386654, 54.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023186, 39.063408, 54.233994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672398, 0.432730, -0.600521,
		0.454034, 0.399619, 0.796340,
		0.584580, -0.808115, 0.072229,
		41.198559, 38.820972, 54.255661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446533, 39.659710, 54.235260>,  <40.789352, 39.386654, 54.205101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446533, 39.659710, 54.235260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525089, 39.275635, 54.155792>,  <41.572224, 39.045189, 54.108112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525089, 39.275635, 54.155792>,  <41.446533, 39.659710, 54.235260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525089, 39.275635, 54.155792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738217, 0.278148, -0.614547,
		0.645341, -0.025972, 0.763453,
		0.196392, -0.960187, -0.198673,
		41.584007, 38.987579, 54.096191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168037, 39.609787, 54.259888>,  <41.446533, 39.659710, 54.235260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168037, 39.609787, 54.259888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061447, 39.277657, 54.064114>,  <41.997494, 39.078377, 53.946648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061447, 39.277657, 54.064114>,  <42.168037, 39.609787, 54.259888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061447, 39.277657, 54.064114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780174, 0.112364, -0.615388,
		0.565969, -0.545831, 0.617857,
		-0.266473, -0.830327, -0.489438,
		41.981506, 39.028557, 53.917282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679230, 39.167648, 54.197903>,  <42.168037, 39.609787, 54.259888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679230, 39.167648, 54.197903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443291, 39.079422, 53.887180>,  <42.301727, 39.026485, 53.700748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443291, 39.079422, 53.887180>,  <42.679230, 39.167648, 54.197903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443291, 39.079422, 53.887180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804057, -0.071515, -0.590236,
		0.074634, -0.972746, 0.219532,
		-0.589850, -0.220568, -0.776805,
		42.266335, 39.013252, 53.654137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119946, 38.807785, 53.708263>,  <42.679230, 39.167648, 54.197903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119946, 38.807785, 53.708263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795067, 38.896255, 53.492332>,  <42.600140, 38.949337, 53.362774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795067, 38.896255, 53.492332>,  <43.119946, 38.807785, 53.708263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795067, 38.896255, 53.492332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562590, 0.052111, -0.825092,
		-0.154362, -0.973840, -0.166757,
		-0.812198, 0.221179, -0.539829,
		42.551407, 38.962608, 53.330383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230415, 38.536121, 53.011936>,  <43.119946, 38.807785, 53.708263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230415, 38.536121, 53.011936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949478, 38.817421, 52.967834>,  <42.780914, 38.986202, 52.941376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949478, 38.817421, 52.967834>,  <43.230415, 38.536121, 53.011936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949478, 38.817421, 52.967834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443043, 0.310634, -0.840964,
		-0.557158, -0.639492, -0.529741,
		-0.702345, 0.703248, -0.110250,
		42.738773, 39.028397, 52.934761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071739, 38.497780, 52.298168>,  <43.230415, 38.536121, 53.011936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071739, 38.497780, 52.298168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964699, 38.863579, 52.419548>,  <42.900475, 39.083057, 52.492378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964699, 38.863579, 52.419548>,  <43.071739, 38.497780, 52.298168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964699, 38.863579, 52.419548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353260, 0.386126, -0.852123,
		-0.896436, -0.120830, -0.426383,
		-0.267599, 0.914498, 0.303453,
		42.884418, 39.137928, 52.510582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775803, 38.820034, 51.725269>,  <43.071739, 38.497780, 52.298168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775803, 38.820034, 51.725269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888378, 39.129204, 51.952732>,  <42.955925, 39.314705, 52.089211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888378, 39.129204, 51.952732>,  <42.775803, 38.820034, 51.725269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888378, 39.129204, 51.952732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284469, 0.498768, -0.818723,
		-0.916443, 0.392189, -0.079500,
		0.281442, 0.772928, 0.568658,
		42.972809, 39.361084, 52.123329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412903, 39.358051, 51.478081>,  <42.775803, 38.820034, 51.725269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412903, 39.358051, 51.478081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719131, 39.497803, 51.694168>,  <42.902870, 39.581654, 51.823822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719131, 39.497803, 51.694168>,  <42.412903, 39.358051, 51.478081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719131, 39.497803, 51.694168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265662, 0.593081, -0.760052,
		-0.585938, 0.725389, 0.361229,
		0.765572, 0.349379, 0.540217,
		42.948803, 39.602615, 51.856232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552044, 40.008137, 51.152187>,  <42.412903, 39.358051, 51.478081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552044, 40.008137, 51.152187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886532, 39.960785, 51.366371>,  <43.087227, 39.932373, 51.494881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886532, 39.960785, 51.366371>,  <42.552044, 40.008137, 51.152187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886532, 39.960785, 51.366371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500970, 0.562093, -0.658088,
		-0.223072, 0.818558, 0.529341,
		0.836222, -0.118383, 0.535460,
		43.137398, 39.925270, 51.527008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898972, 40.668797, 51.176014>,  <42.552044, 40.008137, 51.152187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898972, 40.668797, 51.176014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168335, 40.381889, 51.247620>,  <43.329952, 40.209743, 51.290581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168335, 40.381889, 51.247620>,  <42.898972, 40.668797, 51.176014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168335, 40.381889, 51.247620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643233, 0.449138, -0.620102,
		0.364380, 0.532728, 0.763825,
		0.673408, -0.717270, 0.179011,
		43.370358, 40.166710, 51.301323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529930, 41.036015, 51.174805>,  <42.898972, 40.668797, 51.176014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529930, 41.036015, 51.174805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685043, 40.667603, 51.160240>,  <43.778111, 40.446556, 51.151501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685043, 40.667603, 51.160240>,  <43.529930, 41.036015, 51.174805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685043, 40.667603, 51.160240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742417, 0.335501, -0.579876,
		0.546299, 0.197836, 0.813891,
		0.387782, -0.921032, -0.036407,
		43.801376, 40.391293, 51.149319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262981, 41.155552, 51.115154>,  <43.529930, 41.036015, 51.174805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262981, 41.155552, 51.115154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230595, 40.770210, 51.012863>,  <44.211163, 40.539005, 50.951488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230595, 40.770210, 51.012863>,  <44.262981, 41.155552, 51.115154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230595, 40.770210, 51.012863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839457, 0.072415, -0.538580,
		0.537361, -0.258276, 0.802831,
		-0.080965, -0.963353, -0.255725,
		44.206306, 40.481205, 50.936146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852306, 40.923946, 51.216225>,  <44.262981, 41.155552, 51.115154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852306, 40.923946, 51.216225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711727, 40.629707, 50.984577>,  <44.627380, 40.453163, 50.845589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711727, 40.629707, 50.984577>,  <44.852306, 40.923946, 51.216225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711727, 40.629707, 50.984577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751979, 0.146682, -0.642661,
		0.557685, -0.661349, 0.501602,
		-0.351447, -0.735596, -0.579123,
		44.606293, 40.409027, 50.810841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376759, 40.417133, 51.134266>,  <44.852306, 40.923946, 51.216225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376759, 40.417133, 51.134266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149361, 40.396721, 50.805824>,  <45.012920, 40.384472, 50.608761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149361, 40.396721, 50.805824>,  <45.376759, 40.417133, 51.134266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149361, 40.396721, 50.805824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810137, 0.138932, -0.569540,
		0.143157, -0.988985, -0.037618,
		-0.568493, -0.051058, -0.821102,
		44.978813, 40.381413, 50.559494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751827, 40.059055, 50.612709>,  <45.376759, 40.417133, 51.134266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751827, 40.059055, 50.612709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469139, 40.209763, 50.373177>,  <45.299526, 40.300186, 50.229458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469139, 40.209763, 50.373177>,  <45.751827, 40.059055, 50.612709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469139, 40.209763, 50.373177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631332, -0.046183, -0.774137,
		-0.319322, -0.925157, -0.205225,
		-0.706720, 0.376764, -0.598828,
		45.257122, 40.322792, 50.193527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707798, 39.654980, 50.021873>,  <45.751827, 40.059055, 50.612709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.707798, 39.654980, 50.021873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521118, 39.991653, 49.913231>,  <45.409111, 40.193657, 49.848045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521118, 39.991653, 49.913231>,  <45.707798, 39.654980, 50.021873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521118, 39.991653, 49.913231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554152, 0.038948, -0.831504,
		-0.689282, -0.538570, -0.484595,
		-0.466697, 0.841680, -0.271604,
		45.381107, 40.244156, 49.831749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556950, 39.612217, 49.252968>,  <45.707798, 39.654980, 50.021873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556950, 39.612217, 49.252968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573090, 40.001152, 49.344997>,  <45.582771, 40.234512, 49.400215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573090, 40.001152, 49.344997>,  <45.556950, 39.612217, 49.252968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573090, 40.001152, 49.344997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631203, 0.153692, -0.760238,
		-0.774568, 0.175895, -0.607541,
		0.040348, 0.972337, 0.230070,
		45.585194, 40.292854, 49.414017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541264, 40.136482, 48.600586>,  <45.556950, 39.612217, 49.252968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541264, 40.136482, 48.600586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707924, 40.363976, 48.884262>,  <45.807922, 40.500469, 49.054466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707924, 40.363976, 48.884262>,  <45.541264, 40.136482, 48.600586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707924, 40.363976, 48.884262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634015, 0.377278, -0.675046,
		-0.651479, 0.730896, -0.203388,
		0.416654, 0.568729, 0.709188,
		45.832920, 40.534595, 49.097019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722492, 40.849190, 48.254658>,  <45.541264, 40.136482, 48.600586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722492, 40.849190, 48.254658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924309, 40.861664, 48.599785>,  <46.045399, 40.869148, 48.806862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924309, 40.861664, 48.599785>,  <45.722492, 40.849190, 48.254658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924309, 40.861664, 48.599785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791306, 0.383038, -0.476567,
		-0.345354, 0.923206, 0.168586,
		0.504545, 0.031181, 0.862822,
		46.075672, 40.871017, 48.858631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939434, 41.617622, 48.352547>,  <45.722492, 40.849190, 48.254658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939434, 41.617622, 48.352547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180176, 41.386101, 48.572639>,  <46.324619, 41.247189, 48.704693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180176, 41.386101, 48.572639>,  <45.939434, 41.617622, 48.352547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180176, 41.386101, 48.572639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791609, 0.523386, -0.315312,
		-0.105477, 0.625339, 0.773192,
		0.601855, -0.578808, 0.550229,
		46.360733, 41.212460, 48.737709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441429, 41.999584, 48.586761>,  <45.939434, 41.617622, 48.352547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441429, 41.999584, 48.586761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603203, 41.637955, 48.642029>,  <46.700268, 41.420979, 48.675190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603203, 41.637955, 48.642029>,  <46.441429, 41.999584, 48.586761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603203, 41.637955, 48.642029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896742, 0.362318, -0.254127,
		0.179687, 0.226681, 0.957250,
		0.404434, -0.904070, 0.138170,
		46.724533, 41.366734, 48.683479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953953, 42.028389, 49.171562>,  <46.441429, 41.999584, 48.586761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953953, 42.028389, 49.171562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022598, 41.732140, 48.911709>,  <47.063786, 41.554390, 48.755798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022598, 41.732140, 48.911709>,  <46.953953, 42.028389, 49.171562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022598, 41.732140, 48.911709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883523, 0.407418, -0.231079,
		0.435815, -0.534308, 0.724279,
		0.171617, -0.740625, -0.649633,
		47.074085, 41.509953, 48.716820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.739716, 41.975163, 49.917107>,  <46.953953, 42.028389, 49.171562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.739716, 41.975163, 49.917107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.048759, 42.182678, 50.063488>,  <47.234188, 42.307190, 50.151318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.048759, 42.182678, 50.063488>,  <46.739716, 41.975163, 49.917107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.048759, 42.182678, 50.063488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488011, 0.116599, 0.865014,
		0.406095, -0.846910, 0.343264,
		0.772613, 0.518795, 0.365951,
		47.280544, 42.338318, 50.173275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977112, 41.698296, 50.620975>,  <46.739716, 41.975163, 49.917107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977112, 41.698296, 50.620975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.046028, 42.092209, 50.630047>,  <47.087376, 42.328556, 50.635490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.046028, 42.092209, 50.630047>,  <46.977112, 41.698296, 50.620975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.046028, 42.092209, 50.630047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533340, 0.073902, 0.842666,
		0.828170, -0.157276, 0.537958,
		0.172287, 0.984786, 0.022678,
		47.097713, 42.387646, 50.636852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.197498, 41.823483, 51.207214>,  <46.977112, 41.698296, 50.620975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.197498, 41.823483, 51.207214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030350, 42.168274, 51.092415>,  <46.930061, 42.375149, 51.023537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030350, 42.168274, 51.092415>,  <47.197498, 41.823483, 51.207214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030350, 42.168274, 51.092415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539293, 0.018873, 0.841907,
		0.731124, 0.506588, 0.456974,
		-0.417875, 0.861981, -0.286998,
		46.904987, 42.426868, 51.006317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.228779, 42.285587, 51.814129>,  <47.197498, 41.823483, 51.207214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.228779, 42.285587, 51.814129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948341, 42.439247, 51.573830>,  <46.780079, 42.531445, 51.429649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948341, 42.439247, 51.573830>,  <47.228779, 42.285587, 51.814129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948341, 42.439247, 51.573830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554357, 0.236270, 0.798038,
		0.448505, 0.892527, 0.047309,
		-0.701093, 0.384150, -0.600747,
		46.738014, 42.554493, 51.393604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968121, 42.843155, 52.291222>,  <47.228779, 42.285587, 51.814129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968121, 42.843155, 52.291222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692696, 42.801857, 52.004105>,  <46.527443, 42.777081, 51.831833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692696, 42.801857, 52.004105>,  <46.968121, 42.843155, 52.291222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692696, 42.801857, 52.004105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722932, 0.175601, 0.668232,
		0.057056, 0.979033, -0.195549,
		-0.688559, -0.103242, -0.717793,
		46.486126, 42.770885, 51.788765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438362, 43.364582, 52.416836>,  <46.968121, 42.843155, 52.291222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438362, 43.364582, 52.416836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260788, 43.088036, 52.188820>,  <46.154243, 42.922108, 52.052010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260788, 43.088036, 52.188820>,  <46.438362, 43.364582, 52.416836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260788, 43.088036, 52.188820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835103, 0.088591, 0.542913,
		-0.324850, 0.717055, -0.616688,
		-0.443932, -0.691363, -0.570036,
		46.127609, 42.880627, 52.017811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749142, 43.563824, 52.339493>,  <46.438362, 43.364582, 52.416836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749142, 43.563824, 52.339493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697739, 43.185486, 52.220249>,  <45.666897, 42.958485, 52.148705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697739, 43.185486, 52.220249>,  <45.749142, 43.563824, 52.339493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697739, 43.185486, 52.220249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886528, -0.025165, 0.461990,
		-0.444471, 0.323650, -0.835282,
		-0.128503, -0.945843, -0.298110,
		45.659187, 42.901733, 52.130817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095665, 43.548157, 52.227669>,  <45.749142, 43.563824, 52.339493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095665, 43.548157, 52.227669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189980, 43.162766, 52.278458>,  <45.246571, 42.931530, 52.308933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189980, 43.162766, 52.278458>,  <45.095665, 43.548157, 52.227669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189980, 43.162766, 52.278458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869836, -0.150974, 0.469672,
		-0.433346, -0.221192, -0.873662,
		0.235788, -0.963473, 0.126977,
		45.260715, 42.873722, 52.316551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388805, 43.221867, 52.419601>,  <45.095665, 43.548157, 52.227669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388805, 43.221867, 52.419601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682816, 42.969795, 52.519684>,  <44.859222, 42.818550, 52.579731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682816, 42.969795, 52.519684>,  <44.388805, 43.221867, 52.419601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682816, 42.969795, 52.519684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567856, -0.370502, 0.735029,
		-0.370502, -0.682347, -0.630183,
		-0.735029, 0.630183, -0.250203,
		44.903324, 42.780739, 52.594746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013100, 42.552189, 52.623299>,  <44.388805, 43.221867, 52.419601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013100, 42.552189, 52.623299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374329, 42.552528, 52.795097>,  <44.591064, 42.552731, 52.898178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374329, 42.552528, 52.795097>,  <44.013100, 42.552189, 52.623299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374329, 42.552528, 52.795097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388071, -0.426886, 0.816804,
		0.184036, -0.904305, -0.385179,
		0.903068, 0.000845, 0.429496,
		44.645248, 42.552780, 52.923946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176838, 41.791389, 52.827438>,  <44.013100, 42.552189, 52.623299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176838, 41.791389, 52.827438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363945, 42.053581, 53.064602>,  <44.476212, 42.210896, 53.206902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363945, 42.053581, 53.064602>,  <44.176838, 41.791389, 52.827438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363945, 42.053581, 53.064602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350889, -0.477976, 0.805243,
		0.811214, -0.584714, 0.006416,
		0.467770, 0.655476, 0.592911,
		44.504276, 42.250225, 53.242474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303349, 41.446766, 53.375580>,  <44.176838, 41.791389, 52.827438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303349, 41.446766, 53.375580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381012, 41.811058, 53.521385>,  <44.427608, 42.029633, 53.608868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381012, 41.811058, 53.521385>,  <44.303349, 41.446766, 53.375580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381012, 41.811058, 53.521385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167503, -0.335345, 0.927085,
		0.966564, -0.241058, 0.087440,
		0.194159, 0.910733, 0.364510,
		44.439259, 42.084278, 53.630737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826229, 41.392269, 53.902317>,  <44.303349, 41.446766, 53.375580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826229, 41.392269, 53.902317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613293, 41.718315, 53.993713>,  <44.485531, 41.913940, 54.048550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613293, 41.718315, 53.993713>,  <44.826229, 41.392269, 53.902317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613293, 41.718315, 53.993713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332436, -0.449522, 0.829106,
		0.778523, 0.365410, 0.510271,
		-0.532342, 0.815111, 0.228487,
		44.453590, 41.962849, 54.062260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909824, 41.540173, 54.603054>,  <44.826229, 41.392269, 53.902317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909824, 41.540173, 54.603054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584023, 41.750252, 54.504467>,  <44.388542, 41.876301, 54.445316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584023, 41.750252, 54.504467>,  <44.909824, 41.540173, 54.603054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584023, 41.750252, 54.504467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510982, -0.448258, 0.733459,
		0.274729, 0.723349, 0.633475,
		-0.814507, 0.525197, -0.246468,
		44.339672, 41.907810, 54.430527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600357, 41.845024, 55.281464>,  <44.909824, 41.540173, 54.603054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600357, 41.845024, 55.281464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310520, 41.811722, 55.007812>,  <44.136616, 41.791740, 54.843620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310520, 41.811722, 55.007812>,  <44.600357, 41.845024, 55.281464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310520, 41.811722, 55.007812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577352, -0.468730, 0.668548,
		-0.376335, 0.879409, 0.291569,
		-0.724594, -0.083260, -0.684128,
		44.093143, 41.786743, 54.802574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036739, 42.168800, 55.541271>,  <44.600357, 41.845024, 55.281464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036739, 42.168800, 55.541271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901230, 41.915916, 55.262550>,  <43.819923, 41.764187, 55.095318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901230, 41.915916, 55.262550>,  <44.036739, 42.168800, 55.541271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901230, 41.915916, 55.262550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651919, -0.376272, 0.658347,
		-0.678404, 0.677293, -0.284680,
		-0.338777, -0.632213, -0.696805,
		43.799595, 41.726254, 55.053509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275387, 42.248634, 55.601574>,  <44.036739, 42.168800, 55.541271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275387, 42.248634, 55.601574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289780, 41.919868, 55.374184>,  <43.298416, 41.722610, 55.237747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289780, 41.919868, 55.374184>,  <43.275387, 42.248634, 55.601574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289780, 41.919868, 55.374184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779682, -0.378924, 0.498509,
		-0.625140, 0.425297, -0.654463,
		0.035978, -0.821911, -0.568478,
		43.300571, 41.673294, 55.203640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584435, 42.186703, 55.360615>,  <43.275387, 42.248634, 55.601574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584435, 42.186703, 55.360615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734413, 41.821152, 55.298328>,  <42.824402, 41.601822, 55.260956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734413, 41.821152, 55.298328>,  <42.584435, 42.186703, 55.360615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734413, 41.821152, 55.298328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768765, -0.400387, 0.498690,
		-0.518088, -0.067270, -0.852678,
		0.374948, -0.913874, -0.155721,
		42.846897, 41.546989, 55.251614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085716, 41.771370, 55.126305>,  <42.584435, 42.186703, 55.360615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085716, 41.771370, 55.126305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353218, 41.509819, 55.267849>,  <42.513718, 41.352890, 55.352776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353218, 41.509819, 55.267849>,  <42.085716, 41.771370, 55.126305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353218, 41.509819, 55.267849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724118, -0.464901, 0.509431,
		-0.168592, -0.596923, -0.784385,
		0.668752, -0.653874, 0.353864,
		42.553844, 41.313656, 55.374008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742188, 41.164124, 55.012543>,  <42.085716, 41.771370, 55.126305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742188, 41.164124, 55.012543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012642, 41.083603, 55.296043>,  <42.174915, 41.035290, 55.466145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012642, 41.083603, 55.296043>,  <41.742188, 41.164124, 55.012543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012642, 41.083603, 55.296043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712809, -0.422105, 0.560117,
		0.186412, -0.883914, -0.428889,
		0.676132, -0.201303, 0.708747,
		42.215481, 41.023212, 55.508667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803406, 40.365959, 55.129028>,  <41.742188, 41.164124, 55.012543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803406, 40.365959, 55.129028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936405, 40.562988, 55.450729>,  <42.016205, 40.681206, 55.643749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936405, 40.562988, 55.450729>,  <41.803406, 40.365959, 55.129028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936405, 40.562988, 55.450729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546862, -0.594071, 0.589934,
		0.768368, -0.635963, 0.071845,
		0.332495, 0.492576, 0.804249,
		42.036152, 40.710762, 55.692005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010380, 39.812332, 55.590298>,  <41.803406, 40.365959, 55.129028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010380, 39.812332, 55.590298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983093, 40.141182, 55.816383>,  <41.966721, 40.338490, 55.952034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983093, 40.141182, 55.816383>,  <42.010380, 39.812332, 55.590298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983093, 40.141182, 55.816383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302201, -0.556941, 0.773623,
		0.950801, -0.118035, 0.286437,
		-0.068214, 0.822122, 0.565209,
		41.962627, 40.387817, 55.985947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292194, 39.609955, 56.207298>,  <42.010380, 39.812332, 55.590298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292194, 39.609955, 56.207298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064980, 39.926788, 56.296692>,  <41.928650, 40.116886, 56.350327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064980, 39.926788, 56.296692>,  <42.292194, 39.609955, 56.207298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064980, 39.926788, 56.296692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448276, -0.525502, 0.723116,
		0.690208, 0.310572, 0.653574,
		-0.568034, 0.792081, 0.223483,
		41.894569, 40.164413, 56.363735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274357, 39.463139, 56.848518>,  <42.292194, 39.609955, 56.207298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274357, 39.463139, 56.848518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974072, 39.717308, 56.776222>,  <41.793900, 39.869808, 56.732845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974072, 39.717308, 56.776222>,  <42.274357, 39.463139, 56.848518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974072, 39.717308, 56.776222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576929, -0.497299, 0.647956,
		0.321844, 0.590704, 0.739923,
		-0.750713, 0.635423, -0.180742,
		41.748859, 39.907936, 56.722000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938274, 39.471859, 57.443462>,  <42.274357, 39.463139, 56.848518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938274, 39.471859, 57.443462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657429, 39.622810, 57.201927>,  <41.488922, 39.713383, 57.057007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657429, 39.622810, 57.201927>,  <41.938274, 39.471859, 57.443462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657429, 39.622810, 57.201927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711169, -0.414211, 0.568039,
		-0.035752, 0.828260, 0.559202,
		-0.702112, 0.377379, -0.603842,
		41.446796, 39.736023, 57.020775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321960, 39.827663, 57.870815>,  <41.938274, 39.471859, 57.443462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321960, 39.827663, 57.870815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176453, 39.744423, 57.507637>,  <41.089149, 39.694477, 57.289730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176453, 39.744423, 57.507637>,  <41.321960, 39.827663, 57.870815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176453, 39.744423, 57.507637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765693, -0.488277, 0.418688,
		-0.530459, 0.847513, 0.018277,
		-0.363768, -0.208102, -0.907946,
		41.067322, 39.681992, 57.235252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704433, 40.150299, 57.853909>,  <41.321960, 39.827663, 57.870815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704433, 40.150299, 57.853909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678272, 39.871376, 57.568398>,  <40.662575, 39.704021, 57.397091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678272, 39.871376, 57.568398>,  <40.704433, 40.150299, 57.853909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678272, 39.871376, 57.568398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875876, -0.302591, 0.375872,
		-0.478082, 0.649766, -0.590967,
		-0.065408, -0.697312, -0.713778,
		40.658649, 39.662182, 57.354263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000401, 40.201996, 57.667179>,  <40.704433, 40.150299, 57.853909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000401, 40.201996, 57.667179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117470, 39.838577, 57.547920>,  <40.187710, 39.620525, 57.476364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117470, 39.838577, 57.547920>,  <40.000401, 40.201996, 57.667179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117470, 39.838577, 57.547920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844447, -0.391860, 0.365178,
		-0.448613, 0.144895, -0.881902,
		0.292670, -0.908544, -0.298150,
		40.205273, 39.566013, 57.458477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348541, 39.910156, 57.257683>,  <40.000401, 40.201996, 57.667179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348541, 39.910156, 57.257683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594223, 39.622444, 57.387531>,  <39.741634, 39.449818, 57.465443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594223, 39.622444, 57.387531>,  <39.348541, 39.910156, 57.257683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594223, 39.622444, 57.387531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775510, -0.474026, 0.416994,
		-0.146055, -0.507871, -0.848961,
		0.614209, -0.719282, 0.324625,
		39.778484, 39.406658, 57.484921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043152, 39.339905, 56.915348>,  <39.348541, 39.910156, 57.257683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043152, 39.339905, 56.915348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261253, 39.208809, 57.223969>,  <39.392113, 39.130150, 57.409142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261253, 39.208809, 57.223969>,  <39.043152, 39.339905, 56.915348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261253, 39.208809, 57.223969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787624, -0.515378, 0.337689,
		0.286965, -0.791816, -0.539146,
		0.545251, -0.327739, 0.771549,
		39.424828, 39.110489, 57.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848152, 38.568913, 57.061104>,  <39.043152, 39.339905, 56.915348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848152, 38.568913, 57.061104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014595, 38.720459, 57.391754>,  <39.114460, 38.811386, 57.590145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014595, 38.720459, 57.391754>,  <38.848152, 38.568913, 57.061104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014595, 38.720459, 57.391754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808222, -0.262477, 0.527146,
		0.416690, -0.887448, 0.196990,
		0.416110, 0.378868, 0.826627,
		39.139427, 38.834118, 57.639744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695263, 38.069607, 57.626926>,  <38.848152, 38.568913, 57.061104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695263, 38.069607, 57.626926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781494, 38.402687, 57.830940>,  <38.833233, 38.602535, 57.953350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781494, 38.402687, 57.830940>,  <38.695263, 38.069607, 57.626926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781494, 38.402687, 57.830940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731454, -0.208327, 0.649288,
		0.646917, -0.513041, 0.564170,
		0.215579, 0.832700, 0.510036,
		38.846169, 38.652496, 57.983952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576496, 37.916660, 58.325939>,  <38.695263, 38.069607, 57.626926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576496, 37.916660, 58.325939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567780, 38.316444, 58.335747>,  <38.562550, 38.556316, 58.341629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567780, 38.316444, 58.335747>,  <38.576496, 37.916660, 58.325939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567780, 38.316444, 58.335747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733696, -0.032643, 0.678693,
		0.679128, -0.003199, 0.734013,
		-0.021789, 0.999462, 0.024516,
		38.561241, 38.616283, 58.343102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539288, 38.194901, 59.045483>,  <38.576496, 37.916660, 58.325939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539288, 38.194901, 59.045483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417599, 38.505867, 58.825275>,  <38.344585, 38.692448, 58.693150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417599, 38.505867, 58.825275>,  <38.539288, 38.194901, 59.045483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417599, 38.505867, 58.825275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800218, 0.104977, 0.590450,
		0.516817, 0.620165, 0.590165,
		-0.304223, 0.777416, -0.550521,
		38.326332, 38.739090, 58.660118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309807, 38.692307, 59.616737>,  <38.539288, 38.194901, 59.045483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309807, 38.692307, 59.616737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146076, 38.803864, 59.269249>,  <38.047840, 38.870796, 59.060757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146076, 38.803864, 59.269249>,  <38.309807, 38.692307, 59.616737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146076, 38.803864, 59.269249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795428, 0.357325, 0.489502,
		0.446932, 0.891370, 0.075574,
		-0.409323, 0.278888, -0.868721,
		38.023281, 38.887531, 59.008633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128948, 39.249023, 59.853683>,  <38.309807, 38.692307, 59.616737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128948, 39.249023, 59.853683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934464, 39.202713, 59.507229>,  <37.817772, 39.174927, 59.299355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934464, 39.202713, 59.507229>,  <38.128948, 39.249023, 59.853683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934464, 39.202713, 59.507229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864581, 0.207640, 0.457586,
		0.126867, 0.971330, -0.201056,
		-0.486214, -0.115777, -0.866136,
		37.788601, 39.167980, 59.247387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710487, 39.843647, 59.800182>,  <38.128948, 39.249023, 59.853683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710487, 39.843647, 59.800182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536263, 39.577362, 59.557827>,  <37.431728, 39.417591, 59.412415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536263, 39.577362, 59.557827>,  <37.710487, 39.843647, 59.800182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536263, 39.577362, 59.557827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892405, 0.231200, 0.387505,
		-0.117886, 0.709484, -0.694791,
		-0.435564, -0.665717, -0.605892,
		37.405594, 39.377647, 59.376060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146202, 40.171600, 59.601265>,  <37.710487, 39.843647, 59.800182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146202, 40.171600, 59.601265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083214, 39.778702, 59.560493>,  <37.045422, 39.542961, 59.536030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083214, 39.778702, 59.560493>,  <37.146202, 40.171600, 59.601265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083214, 39.778702, 59.560493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787797, 0.062711, 0.612734,
		-0.595465, 0.176788, -0.783688,
		-0.157470, -0.982249, -0.101931,
		37.035973, 39.484028, 59.529915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506237, 39.828281, 59.669621>,  <37.146202, 40.171600, 59.601265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506237, 39.828281, 59.669621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228096, 40.004562, 59.442547>,  <36.061211, 40.110332, 59.306305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228096, 40.004562, 59.442547>,  <36.506237, 39.828281, 59.669621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228096, 40.004562, 59.442547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716962, 0.371007, -0.590185,
		-0.049483, -0.817394, -0.573950,
		-0.695354, 0.440705, -0.567682,
		36.019489, 40.136772, 59.272243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722095, 39.637566, 58.996807>,  <36.506237, 39.828281, 59.669621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722095, 39.637566, 58.996807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465351, 39.939339, 58.941906>,  <36.311302, 40.120403, 58.908966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465351, 39.939339, 58.941906>,  <36.722095, 39.637566, 58.996807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465351, 39.939339, 58.941906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605417, 0.388733, -0.694520,
		-0.470617, -0.528880, -0.706261,
		-0.641865, 0.754435, -0.137249,
		36.272793, 40.165668, 58.900730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539616, 39.708305, 58.293571>,  <36.722095, 39.637566, 58.996807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539616, 39.708305, 58.293571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483994, 40.070213, 58.454597>,  <36.450619, 40.287357, 58.551212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483994, 40.070213, 58.454597>,  <36.539616, 39.708305, 58.293571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483994, 40.070213, 58.454597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476358, 0.417503, -0.773805,
		-0.868186, 0.084163, -0.489050,
		-0.139054, 0.904769, 0.402562,
		36.442276, 40.341644, 58.575367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346344, 40.078537, 57.682041>,  <36.539616, 39.708305, 58.293571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346344, 40.078537, 57.682041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445335, 40.351692, 57.956970>,  <36.504730, 40.515587, 58.121929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445335, 40.351692, 57.956970>,  <36.346344, 40.078537, 57.682041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445335, 40.351692, 57.956970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521685, 0.503867, -0.688450,
		-0.816456, 0.528943, -0.231558,
		0.247477, 0.682889, 0.687327,
		36.519577, 40.556561, 58.163170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361629, 40.623302, 57.300293>,  <36.346344, 40.078537, 57.682041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361629, 40.623302, 57.300293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542263, 40.748924, 57.634346>,  <36.650642, 40.824295, 57.834778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542263, 40.748924, 57.634346>,  <36.361629, 40.623302, 57.300293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542263, 40.748924, 57.634346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569417, 0.619168, -0.540737,
		-0.686906, 0.719725, 0.100779,
		0.451581, 0.314050, 0.835133,
		36.677738, 40.843140, 57.884888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420765, 41.274281, 57.134258>,  <36.361629, 40.623302, 57.300293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420765, 41.274281, 57.134258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683277, 41.239326, 57.434036>,  <36.840782, 41.218353, 57.613903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683277, 41.239326, 57.434036>,  <36.420765, 41.274281, 57.134258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683277, 41.239326, 57.434036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583205, 0.688947, -0.430378,
		-0.478718, 0.719526, 0.503102,
		0.656278, -0.087382, 0.749442,
		36.880161, 41.213112, 57.658871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638943, 41.973743, 57.412670>,  <36.420765, 41.274281, 57.134258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638943, 41.973743, 57.412670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943779, 41.728706, 57.496521>,  <37.126682, 41.581684, 57.546829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943779, 41.728706, 57.496521>,  <36.638943, 41.973743, 57.412670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943779, 41.728706, 57.496521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608650, 0.567399, -0.554621,
		0.220816, 0.550261, 0.805266,
		0.762093, -0.612594, 0.209625,
		37.172405, 41.544930, 57.559410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165947, 42.379848, 57.632904>,  <36.638943, 41.973743, 57.412670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165947, 42.379848, 57.632904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350441, 42.034958, 57.549168>,  <37.461136, 41.828022, 57.498924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350441, 42.034958, 57.549168>,  <37.165947, 42.379848, 57.632904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350441, 42.034958, 57.549168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692352, 0.497300, -0.522821,
		0.554898, 0.096204, 0.826337,
		0.461235, -0.862228, -0.209344,
		37.488811, 41.776291, 57.486366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832630, 42.527641, 57.837406>,  <37.165947, 42.379848, 57.632904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832630, 42.527641, 57.837406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840721, 42.221901, 57.579617>,  <37.845577, 42.038456, 57.424942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840721, 42.221901, 57.579617>,  <37.832630, 42.527641, 57.837406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840721, 42.221901, 57.579617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810650, 0.389830, -0.436898,
		0.585182, -0.513608, 0.627509,
		0.020227, -0.764355, -0.644478,
		37.846790, 41.992596, 57.386272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489544, 42.111450, 57.905357>,  <37.832630, 42.527641, 57.837406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489544, 42.111450, 57.905357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359978, 42.035492, 57.534622>,  <38.282238, 41.989918, 57.312183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359978, 42.035492, 57.534622>,  <38.489544, 42.111450, 57.905357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359978, 42.035492, 57.534622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874009, 0.314987, -0.369988,
		0.362201, -0.929904, 0.063945,
		-0.323911, -0.189898, -0.926833,
		38.262806, 41.978523, 57.256573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107826, 41.992317, 57.570145>,  <38.489544, 42.111450, 57.905357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107826, 41.992317, 57.570145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849331, 42.059235, 57.272316>,  <38.694233, 42.099384, 57.093620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849331, 42.059235, 57.272316>,  <39.107826, 41.992317, 57.570145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849331, 42.059235, 57.272316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758029, 0.253380, -0.600991,
		0.088116, -0.952791, -0.290560,
		-0.646241, 0.167296, -0.744570,
		38.655460, 42.109425, 57.048946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341190, 41.567455, 57.050125>,  <39.107826, 41.992317, 57.570145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341190, 41.567455, 57.050125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111389, 41.853889, 56.891548>,  <38.973507, 42.025749, 56.796402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111389, 41.853889, 56.891548>,  <39.341190, 41.567455, 57.050125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111389, 41.853889, 56.891548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735550, 0.239219, -0.633830,
		-0.359039, -0.655742, -0.664148,
		-0.574506, 0.716084, -0.396443,
		38.939037, 42.068714, 56.772614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297733, 41.468739, 56.374813>,  <39.341190, 41.567455, 57.050125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297733, 41.468739, 56.374813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185303, 41.852257, 56.391312>,  <39.117844, 42.082367, 56.401211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185303, 41.852257, 56.391312>,  <39.297733, 41.468739, 56.374813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185303, 41.852257, 56.391312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702244, 0.234780, -0.672110,
		-0.654102, -0.159948, -0.739301,
		-0.281076, 0.958799, 0.041248,
		39.100979, 42.139896, 56.403687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111282, 41.771873, 55.698147>,  <39.297733, 41.468739, 56.374813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111282, 41.771873, 55.698147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224770, 42.082016, 55.923828>,  <39.292862, 42.268101, 56.059238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224770, 42.082016, 55.923828>,  <39.111282, 41.771873, 55.698147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224770, 42.082016, 55.923828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671578, 0.259312, -0.694075,
		-0.684460, 0.575829, -0.447141,
		0.283719, 0.775357, 0.564203,
		39.309887, 42.314625, 56.093090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038551, 42.392830, 55.134407>,  <39.111282, 41.771873, 55.698147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038551, 42.392830, 55.134407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261444, 42.524757, 55.439224>,  <39.395180, 42.603912, 55.622116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261444, 42.524757, 55.439224>,  <39.038551, 42.392830, 55.134407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261444, 42.524757, 55.439224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624689, 0.438099, -0.646401,
		-0.547045, 0.836236, 0.038090,
		0.557231, 0.329815, 0.762047,
		39.428612, 42.623703, 55.667839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215225, 43.093887, 54.975880>,  <39.038551, 42.392830, 55.134407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215225, 43.093887, 54.975880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486267, 42.989929, 55.251068>,  <39.648891, 42.927555, 55.416183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486267, 42.989929, 55.251068>,  <39.215225, 43.093887, 54.975880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486267, 42.989929, 55.251068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730185, 0.349242, -0.587248,
		-0.087646, 0.900270, 0.426419,
		0.677605, -0.259894, 0.687973,
		39.689548, 42.911961, 55.457458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652416, 43.630932, 54.975449>,  <39.215225, 43.093887, 54.975880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652416, 43.630932, 54.975449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879402, 43.340950, 55.131611>,  <40.015594, 43.166962, 55.225307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879402, 43.340950, 55.131611>,  <39.652416, 43.630932, 54.975449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879402, 43.340950, 55.131611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791141, 0.348641, -0.502539,
		0.228208, 0.594040, 0.771387,
		0.567465, -0.724959, 0.390407,
		40.049641, 43.123463, 55.248734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272678, 43.943855, 55.248806>,  <39.652416, 43.630932, 54.975449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272678, 43.943855, 55.248806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390633, 43.564682, 55.200699>,  <40.461403, 43.337177, 55.171837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390633, 43.564682, 55.200699>,  <40.272678, 43.943855, 55.248806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390633, 43.564682, 55.200699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886749, 0.318368, -0.335138,
		0.355978, -0.007817, 0.934462,
		0.294883, -0.947935, -0.120264,
		40.479099, 43.280300, 55.164619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926960, 43.801857, 55.704578>,  <40.272678, 43.943855, 55.248806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926960, 43.801857, 55.704578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892315, 43.546967, 55.398262>,  <40.871529, 43.394032, 55.214474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892315, 43.546967, 55.398262>,  <40.926960, 43.801857, 55.704578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892315, 43.546967, 55.398262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980402, 0.082006, -0.179129,
		0.176946, -0.766298, 0.617639,
		-0.086616, -0.637230, -0.765790,
		40.866329, 43.355797, 55.168526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484543, 43.380829, 55.731777>,  <40.926960, 43.801857, 55.704578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484543, 43.380829, 55.731777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365234, 43.365440, 55.350296>,  <41.293648, 43.356209, 55.121407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365234, 43.365440, 55.350296>,  <41.484543, 43.380829, 55.731777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365234, 43.365440, 55.350296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937253, 0.177173, -0.300277,
		0.180524, -0.983427, -0.016785,
		-0.298274, -0.038475, -0.953704,
		41.275753, 43.353901, 55.064186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902653, 42.963116, 55.438366>,  <41.484543, 43.380829, 55.731777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902653, 42.963116, 55.438366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750542, 43.143356, 55.115295>,  <41.659275, 43.251503, 54.921452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750542, 43.143356, 55.115295>,  <41.902653, 42.963116, 55.438366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750542, 43.143356, 55.115295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914754, 0.054437, -0.400327,
		-0.136422, -0.891062, -0.432894,
		-0.380282, 0.450605, -0.807676,
		41.636456, 43.278538, 54.872993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215614, 42.593899, 54.842976>,  <41.902653, 42.963116, 55.438366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215614, 42.593899, 54.842976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116753, 42.964745, 54.730278>,  <42.057438, 43.187252, 54.662659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116753, 42.964745, 54.730278>,  <42.215614, 42.593899, 54.842976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116753, 42.964745, 54.730278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894846, 0.106841, -0.433400,
		-0.371710, -0.359230, -0.856029,
		-0.247150, 0.927113, -0.281741,
		42.042606, 43.242878, 54.645756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396835, 42.683052, 54.124531>,  <42.215614, 42.593899, 54.842976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396835, 42.683052, 54.124531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353577, 43.072578, 54.204521>,  <42.327621, 43.306293, 54.252514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353577, 43.072578, 54.204521>,  <42.396835, 42.683052, 54.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353577, 43.072578, 54.204521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761376, 0.210471, -0.613195,
		-0.639227, 0.085941, -0.764201,
		-0.108144, 0.973815, 0.199973,
		42.321133, 43.364723, 54.264511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347912, 43.079628, 53.445091>,  <42.396835, 42.683052, 54.124531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347912, 43.079628, 53.445091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450768, 43.359978, 53.711220>,  <42.512482, 43.528187, 53.870899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450768, 43.359978, 53.711220>,  <42.347912, 43.079628, 53.445091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450768, 43.359978, 53.711220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675424, 0.362051, -0.642433,
		-0.691146, 0.614569, -0.380291,
		0.257135, 0.700874, 0.665325,
		42.527908, 43.570240, 53.910816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484985, 43.636616, 52.969101>,  <42.347912, 43.079628, 53.445091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484985, 43.636616, 52.969101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648590, 43.761864, 53.311954>,  <42.746754, 43.837013, 53.517666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648590, 43.761864, 53.311954>,  <42.484985, 43.636616, 52.969101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648590, 43.761864, 53.311954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676426, 0.526432, -0.515089,
		-0.612503, 0.790460, 0.003516,
		0.409009, 0.313115, 0.857129,
		42.771294, 43.855797, 53.569092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568291, 44.433331, 52.959160>,  <42.484985, 43.636616, 52.969101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568291, 44.433331, 52.959160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821465, 44.282875, 53.229839>,  <42.973370, 44.192604, 53.392246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821465, 44.282875, 53.229839>,  <42.568291, 44.433331, 52.959160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821465, 44.282875, 53.229839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731075, 0.578033, -0.362501,
		-0.254802, 0.724154, 0.640841,
		0.632934, -0.376136, 0.676695,
		43.011345, 44.170033, 53.432846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806793, 44.946579, 53.388222>,  <42.568291, 44.433331, 52.959160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806793, 44.946579, 53.388222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083191, 44.657738, 53.374950>,  <43.249031, 44.484432, 53.366989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083191, 44.657738, 53.374950>,  <42.806793, 44.946579, 53.388222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083191, 44.657738, 53.374950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667816, 0.655270, -0.353048,
		0.276675, 0.221798, 0.935017,
		0.690994, -0.722099, -0.033177,
		43.290489, 44.441109, 53.364998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394062, 45.338821, 53.368881>,  <42.806793, 44.946579, 53.388222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394062, 45.338821, 53.368881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523975, 44.967018, 53.298985>,  <43.601925, 44.743938, 53.257046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523975, 44.967018, 53.298985>,  <43.394062, 45.338821, 53.368881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523975, 44.967018, 53.298985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699373, 0.360411, -0.617238,
		0.636704, 0.078261, 0.767127,
		0.324786, -0.929505, -0.174741,
		43.621410, 44.688168, 53.246563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045841, 45.406891, 53.305275>,  <43.394062, 45.338821, 53.368881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045841, 45.406891, 53.305275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997688, 45.051949, 53.127239>,  <43.968796, 44.838982, 53.020420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997688, 45.051949, 53.127239>,  <44.045841, 45.406891, 53.305275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997688, 45.051949, 53.127239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780546, 0.192422, -0.594745,
		0.613397, -0.419006, 0.669461,
		-0.120382, -0.887360, -0.445084,
		43.961575, 44.785740, 52.993713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681862, 44.968842, 53.357674>,  <44.045841, 45.406891, 53.305275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681862, 44.968842, 53.357674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484833, 44.842209, 53.033413>,  <44.366615, 44.766228, 52.838856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484833, 44.842209, 53.033413>,  <44.681862, 44.968842, 53.357674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484833, 44.842209, 53.033413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785633, 0.238951, -0.570686,
		0.374375, -0.917974, 0.131018,
		-0.492568, -0.316583, -0.810649,
		44.337063, 44.747234, 52.790218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196037, 44.620800, 52.926586>,  <44.681862, 44.968842, 53.357674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196037, 44.620800, 52.926586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877441, 44.695389, 52.696514>,  <44.686283, 44.740143, 52.558472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877441, 44.695389, 52.696514>,  <45.196037, 44.620800, 52.926586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877441, 44.695389, 52.696514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598462, 0.378936, -0.705869,
		0.086329, -0.906440, -0.413417,
		-0.796486, 0.186477, -0.575183,
		44.638496, 44.751331, 52.523960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296062, 44.345200, 52.165287>,  <45.196037, 44.620800, 52.926586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296062, 44.345200, 52.165287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999321, 44.606827, 52.106159>,  <44.821278, 44.763802, 52.070683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999321, 44.606827, 52.106159>,  <45.296062, 44.345200, 52.165287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999321, 44.606827, 52.106159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396416, 0.249971, -0.883385,
		-0.540844, -0.713938, -0.444724,
		-0.741850, 0.654069, -0.147821,
		44.776764, 44.803047, 52.061813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130230, 44.261604, 51.459080>,  <45.296062, 44.345200, 52.165287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130230, 44.261604, 51.459080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003334, 44.622902, 51.574677>,  <44.927197, 44.839680, 51.644035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003334, 44.622902, 51.574677>,  <45.130230, 44.261604, 51.459080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003334, 44.622902, 51.574677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217854, 0.365995, -0.904758,
		-0.922985, -0.224062, -0.312881,
		-0.317235, 0.903241, 0.288995,
		44.908165, 44.893875, 51.661373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667885, 44.456036, 50.967846>,  <45.130230, 44.261604, 51.459080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667885, 44.456036, 50.967846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803360, 44.789444, 51.142441>,  <44.884647, 44.989491, 51.247200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803360, 44.789444, 51.142441>,  <44.667885, 44.456036, 50.967846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803360, 44.789444, 51.142441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275551, 0.355698, -0.893057,
		-0.899644, 0.422747, -0.109206,
		0.338692, 0.833525, 0.436490,
		44.904968, 45.039501, 51.273388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391415, 44.861229, 50.544605>,  <44.667885, 44.456036, 50.967846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391415, 44.861229, 50.544605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678928, 45.065987, 50.732780>,  <44.851437, 45.188843, 50.845684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678928, 45.065987, 50.732780>,  <44.391415, 44.861229, 50.544605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678928, 45.065987, 50.732780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308361, 0.371726, -0.875633,
		-0.623106, 0.774457, 0.109343,
		0.718786, 0.511895, 0.470437,
		44.894566, 45.219555, 50.873913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443996, 45.469978, 50.189533>,  <44.391415, 44.861229, 50.544605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443996, 45.469978, 50.189533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791275, 45.442902, 50.386166>,  <44.999641, 45.426655, 50.504147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791275, 45.442902, 50.386166>,  <44.443996, 45.469978, 50.189533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791275, 45.442902, 50.386166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470188, 0.428858, -0.771365,
		-0.158606, 0.900833, 0.404160,
		0.868198, -0.067688, 0.491580,
		45.051735, 45.422596, 50.533638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826275, 46.183346, 50.081024>,  <44.443996, 45.469978, 50.189533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826275, 46.183346, 50.081024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080399, 45.882401, 50.150681>,  <45.232872, 45.701832, 50.192474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080399, 45.882401, 50.150681>,  <44.826275, 46.183346, 50.081024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080399, 45.882401, 50.150681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485354, 0.213611, -0.847822,
		0.600675, 0.623149, 0.500874,
		0.635312, -0.752366, 0.174137,
		45.270992, 45.656689, 50.202923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429779, 46.581009, 50.017605>,  <44.826275, 46.183346, 50.081024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429779, 46.581009, 50.017605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537346, 46.196152, 49.999878>,  <45.601887, 45.965237, 49.989243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537346, 46.196152, 49.999878>,  <45.429779, 46.581009, 50.017605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537346, 46.196152, 49.999878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640297, 0.212957, -0.738017,
		0.719517, 0.170084, 0.673325,
		0.268914, -0.962144, -0.044322,
		45.618019, 45.907509, 49.986580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109680, 46.602249, 50.099018>,  <45.429779, 46.581009, 50.017605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109680, 46.602249, 50.099018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030708, 46.256035, 49.914902>,  <45.983326, 46.048306, 49.804432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030708, 46.256035, 49.914902>,  <46.109680, 46.602249, 50.099018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030708, 46.256035, 49.914902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606830, 0.260854, -0.750808,
		0.769920, -0.427551, 0.473733,
		-0.197434, -0.865538, -0.460287,
		45.971478, 45.996372, 49.776817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.837975, 46.271503, 49.823792>,  <46.109680, 46.602249, 50.099018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.837975, 46.271503, 49.823792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515640, 46.149109, 49.621010>,  <46.322239, 46.075672, 49.499340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515640, 46.149109, 49.621010>,  <46.837975, 46.271503, 49.823792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.515640, 46.149109, 49.621010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522821, 0.034287, -0.851753,
		0.278007, -0.951418, 0.132347,
		-0.805835, -0.305987, -0.506953,
		46.273891, 46.057312, 49.468925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.753536, 40.469143, 51.357853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.709942, 40.198929, 51.066158>,  <37.683784, 40.036800, 50.891144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.709942, 40.198929, 51.066158>,  <37.753536, 40.469143, 51.357853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709942, 40.198929, 51.066158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820448, 0.353065, -0.449679,
		0.561238, -0.647304, 0.515761,
		-0.108982, -0.675532, -0.729232,
		37.677246, 39.996269, 50.847389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450142, 40.263771, 51.114292>,  <37.753536, 40.469143, 51.357853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450142, 40.263771, 51.114292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230671, 40.130127, 50.807743>,  <38.098988, 40.049942, 50.623814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230671, 40.130127, 50.807743>,  <38.450142, 40.263771, 51.114292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230671, 40.130127, 50.807743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717043, 0.283289, -0.636865,
		0.429887, -0.898954, 0.084135,
		-0.548678, -0.334108, -0.766371,
		38.066067, 40.029896, 50.577831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807079, 39.891529, 50.710690>,  <38.450142, 40.263771, 51.114292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807079, 39.891529, 50.710690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519501, 40.019554, 50.463894>,  <38.346954, 40.096367, 50.315815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519501, 40.019554, 50.463894>,  <38.807079, 39.891529, 50.710690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519501, 40.019554, 50.463894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694123, 0.284446, -0.661274,
		-0.036148, -0.903688, -0.426663,
		-0.718949, 0.320060, -0.616988,
		38.303818, 40.115574, 50.278797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089146, 39.804253, 50.046410>,  <38.807079, 39.891529, 50.710690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089146, 39.804253, 50.046410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764057, 40.022522, 49.964699>,  <38.569004, 40.153484, 49.915672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764057, 40.022522, 49.964699>,  <39.089146, 39.804253, 50.046410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764057, 40.022522, 49.964699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435103, 0.335203, -0.835658,
		-0.387523, -0.768036, -0.509850,
		-0.812718, 0.545674, -0.204276,
		38.520241, 40.186226, 49.903416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910885, 39.633194, 49.300182>,  <39.089146, 39.804253, 50.046410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910885, 39.633194, 49.300182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739571, 39.987595, 49.371258>,  <38.636784, 40.200233, 49.413902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739571, 39.987595, 49.371258>,  <38.910885, 39.633194, 49.300182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739571, 39.987595, 49.371258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455592, 0.381528, -0.804284,
		-0.780391, -0.263508, -0.567057,
		-0.428284, 0.886002, 0.177689,
		38.611084, 40.253395, 49.424564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654980, 39.713070, 48.707542>,  <38.910885, 39.633194, 49.300182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654980, 39.713070, 48.707542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.664921, 40.076485, 48.874367>,  <38.670887, 40.294533, 48.974461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.664921, 40.076485, 48.874367>,  <38.654980, 39.713070, 48.707542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664921, 40.076485, 48.874367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495182, 0.351225, -0.794629,
		-0.868434, 0.226271, -0.441162,
		0.024854, 0.908538, 0.417061,
		38.672379, 40.349045, 48.999485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627945, 40.213860, 48.119213>,  <38.654980, 39.713070, 48.707542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627945, 40.213860, 48.119213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744484, 40.415253, 48.444572>,  <38.814407, 40.536087, 48.639790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744484, 40.415253, 48.444572>,  <38.627945, 40.213860, 48.119213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744484, 40.415253, 48.444572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670840, 0.498640, -0.548937,
		-0.681974, 0.705595, -0.192476,
		0.291352, 0.503481, 0.813401,
		38.831890, 40.566296, 48.688591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641640, 40.922485, 47.909775>,  <38.627945, 40.213860, 48.119213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641640, 40.922485, 47.909775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876289, 40.854568, 48.226517>,  <39.017078, 40.813820, 48.416561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876289, 40.854568, 48.226517>,  <38.641640, 40.922485, 47.909775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876289, 40.854568, 48.226517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766547, 0.431881, -0.475273,
		-0.261293, 0.885805, 0.383505,
		0.586627, -0.169789, 0.791859,
		39.052277, 40.803631, 48.464073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968151, 41.440617, 47.877254>,  <38.641640, 40.922485, 47.909775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968151, 41.440617, 47.877254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203987, 41.241371, 48.131584>,  <39.345490, 41.121822, 48.284184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203987, 41.241371, 48.131584>,  <38.968151, 41.440617, 47.877254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203987, 41.241371, 48.131584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780245, 0.554754, -0.288906,
		-0.208817, 0.666433, 0.715725,
		0.589588, -0.498112, 0.635823,
		39.380863, 41.091938, 48.322330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268112, 41.925945, 48.365059>,  <38.968151, 41.440617, 47.877254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268112, 41.925945, 48.365059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.508163, 41.610626, 48.310745>,  <39.652195, 41.421436, 48.278156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.508163, 41.610626, 48.310745>,  <39.268112, 41.925945, 48.365059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508163, 41.610626, 48.310745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765385, 0.615223, -0.188910,
		0.232456, 0.009440, 0.972561,
		0.600126, -0.788296, -0.135787,
		39.688202, 41.374138, 48.270008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901237, 42.103947, 48.712269>,  <39.268112, 41.925945, 48.365059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901237, 42.103947, 48.712269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.974339, 41.816490, 48.443893>,  <40.018200, 41.644016, 48.282867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.974339, 41.816490, 48.443893>,  <39.901237, 42.103947, 48.712269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974339, 41.816490, 48.443893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754951, 0.539735, -0.372471,
		0.629800, -0.438452, 0.641179,
		0.182756, -0.718642, -0.670936,
		40.029163, 41.600899, 48.242611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680431, 41.957043, 48.704987>,  <39.901237, 42.103947, 48.712269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680431, 41.957043, 48.704987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564964, 41.802711, 48.354488>,  <40.495686, 41.710114, 48.144188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564964, 41.802711, 48.354488>,  <40.680431, 41.957043, 48.704987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564964, 41.802711, 48.354488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828223, 0.358517, -0.430711,
		0.480330, -0.850060, 0.216059,
		-0.288669, -0.385828, -0.876246,
		40.478363, 41.686962, 48.091614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265350, 41.641903, 48.370689>,  <40.680431, 41.957043, 48.704987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265350, 41.641903, 48.370689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.031490, 41.619011, 48.046986>,  <40.891174, 41.605274, 47.852764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.031490, 41.619011, 48.046986>,  <41.265350, 41.641903, 48.370689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031490, 41.619011, 48.046986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790016, 0.186728, -0.583959,
		0.184506, -0.980746, -0.063995,
		-0.584665, -0.057187, -0.809257,
		40.856094, 41.601841, 47.804207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667439, 41.297195, 47.966915>,  <41.265350, 41.641903, 48.370689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667439, 41.297195, 47.966915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.412506, 41.512177, 47.746025>,  <41.259544, 41.641163, 47.613491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.412506, 41.512177, 47.746025>,  <41.667439, 41.297195, 47.966915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412506, 41.512177, 47.746025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765973, 0.363533, -0.530216,
		-0.084211, -0.760916, -0.643363,
		-0.637334, 0.537448, -0.552227,
		41.221306, 41.673412, 47.580357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772995, 41.143433, 47.323494>,  <41.667439, 41.297195, 47.966915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772995, 41.143433, 47.323494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.611282, 41.509285, 47.322601>,  <41.514256, 41.728798, 47.322063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.611282, 41.509285, 47.322601>,  <41.772995, 41.143433, 47.323494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611282, 41.509285, 47.322601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742660, 0.326839, -0.584493,
		-0.533866, -0.237958, -0.811396,
		-0.404280, 0.914632, -0.002233,
		41.489998, 41.783676, 47.321930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799648, 41.300537, 46.678814>,  <41.772995, 41.143433, 47.323494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799648, 41.300537, 46.678814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742302, 41.654076, 46.856922>,  <41.707893, 41.866199, 46.963787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742302, 41.654076, 46.856922>,  <41.799648, 41.300537, 46.678814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742302, 41.654076, 46.856922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683817, 0.413714, -0.601028,
		-0.715430, 0.218317, -0.663700,
		-0.143368, 0.883843, 0.445272,
		41.699291, 41.919228, 46.990505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855347, 41.858200, 46.143227>,  <41.799648, 41.300537, 46.678814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855347, 41.858200, 46.143227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.899643, 42.035713, 46.498932>,  <41.926220, 42.142220, 46.712357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.899643, 42.035713, 46.498932>,  <41.855347, 41.858200, 46.143227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899643, 42.035713, 46.498932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763521, 0.534801, -0.361972,
		-0.636216, 0.719060, -0.279609,
		0.110745, 0.443780, 0.889266,
		41.932865, 42.168846, 46.765713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204453, 42.589252, 45.917278>,  <41.855347, 41.858200, 46.143227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204453, 42.589252, 45.917278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.271664, 42.525558, 46.306412>,  <42.311993, 42.487343, 46.539894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.271664, 42.525558, 46.306412>,  <42.204453, 42.589252, 45.917278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271664, 42.525558, 46.306412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882165, 0.464717, -0.076305,
		-0.439943, 0.871024, 0.218560,
		0.168032, -0.159236, 0.972835,
		42.322075, 42.477787, 46.598263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363995, 43.238838, 46.145481>,  <42.204453, 42.589252, 45.917278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363995, 43.238838, 46.145481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.498188, 42.979034, 46.418415>,  <42.578705, 42.823151, 46.582176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.498188, 42.979034, 46.418415>,  <42.363995, 43.238838, 46.145481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498188, 42.979034, 46.418415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868394, 0.493984, 0.043255,
		-0.365158, 0.578025, 0.729758,
		0.335487, -0.649512, 0.682336,
		42.598835, 42.784180, 46.623116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667427, 43.661804, 46.596840>,  <42.363995, 43.238838, 46.145481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667427, 43.661804, 46.596840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.833893, 43.306068, 46.672623>,  <42.933773, 43.092628, 46.718094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.833893, 43.306068, 46.672623>,  <42.667427, 43.661804, 46.596840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833893, 43.306068, 46.672623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909169, 0.410390, -0.070654,
		-0.014916, 0.201651, 0.979344,
		0.416160, -0.889335, 0.189456,
		42.958740, 43.039268, 46.729458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183907, 43.828827, 47.013039>,  <42.667427, 43.661804, 46.596840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183907, 43.828827, 47.013039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.267578, 43.458755, 46.886364>,  <43.317780, 43.236713, 46.810360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.267578, 43.458755, 46.886364>,  <43.183907, 43.828827, 47.013039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267578, 43.458755, 46.886364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973960, 0.226070, -0.017126,
		0.087437, -0.304854, 0.948377,
		0.209179, -0.925179, -0.316682,
		43.330330, 43.181202, 46.791359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663136, 43.644005, 47.433441>,  <43.183907, 43.828827, 47.013039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663136, 43.644005, 47.433441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.695854, 43.434624, 47.094193>,  <43.715485, 43.308994, 46.890644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.695854, 43.434624, 47.094193>,  <43.663136, 43.644005, 47.433441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695854, 43.434624, 47.094193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986619, 0.162956, -0.005424,
		0.141045, -0.836327, 0.529777,
		0.081794, -0.523453, -0.848120,
		43.720394, 43.277588, 46.839756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055809, 44.295246, 47.595821>,  <43.663136, 43.644005, 47.433441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055809, 44.295246, 47.595821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.053669, 44.633209, 47.809776>,  <44.052383, 44.835987, 47.938148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.053669, 44.633209, 47.809776>,  <44.055809, 44.295246, 47.595821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053669, 44.633209, 47.809776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331094, -0.506222, 0.796314,
		0.943583, -0.172835, 0.282453,
		-0.005353, 0.844907, 0.534887,
		44.052063, 44.886681, 47.970242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307606, 44.107849, 48.322239>,  <44.055809, 44.295246, 47.595821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307606, 44.107849, 48.322239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.101715, 44.445000, 48.384995>,  <43.978180, 44.647289, 48.422649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.101715, 44.445000, 48.384995>,  <44.307606, 44.107849, 48.322239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101715, 44.445000, 48.384995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387984, -0.392181, 0.834064,
		0.764541, 0.368446, 0.528889,
		-0.514728, 0.842877, 0.156888,
		43.947296, 44.697865, 48.432060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371281, 44.171062, 48.970695>,  <44.307606, 44.107849, 48.322239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371281, 44.171062, 48.970695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.060867, 44.408241, 48.884727>,  <43.874619, 44.550549, 48.833145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.060867, 44.408241, 48.884727>,  <44.371281, 44.171062, 48.970695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060867, 44.408241, 48.884727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481981, -0.337769, 0.808459,
		0.406778, 0.730977, 0.547908,
		-0.776032, 0.592945, -0.214920,
		43.828056, 44.586124, 48.820251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171249, 44.377705, 49.572880>,  <44.371281, 44.171062, 48.970695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171249, 44.377705, 49.572880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.850353, 44.444984, 49.343750>,  <43.657818, 44.485352, 49.206272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.850353, 44.444984, 49.343750>,  <44.171249, 44.377705, 49.572880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850353, 44.444984, 49.343750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577260, -0.463266, 0.672425,
		-0.152269, 0.870112, 0.468742,
		-0.802237, 0.168196, -0.572822,
		43.609680, 44.495445, 49.171902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646191, 44.586514, 50.031055>,  <44.171249, 44.377705, 49.572880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646191, 44.586514, 50.031055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.423508, 44.497696, 49.710861>,  <43.289898, 44.444405, 49.518745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.423508, 44.497696, 49.710861>,  <43.646191, 44.586514, 50.031055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423508, 44.497696, 49.710861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730809, -0.327239, 0.599026,
		-0.394961, 0.918482, 0.019902,
		-0.556708, -0.222047, -0.800482,
		43.256496, 44.431080, 49.470718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042339, 44.947941, 50.129330>,  <43.646191, 44.586514, 50.031055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042339, 44.947941, 50.129330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.968765, 44.648674, 49.874325>,  <42.924622, 44.469116, 49.721321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.968765, 44.648674, 49.874325>,  <43.042339, 44.947941, 50.129330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968765, 44.648674, 49.874325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785984, -0.277516, 0.552461,
		-0.590250, 0.602692, -0.536998,
		-0.183939, -0.748163, -0.637510,
		42.913582, 44.424225, 49.683071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363708, 45.014545, 49.855118>,  <43.042339, 44.947941, 50.129330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363708, 45.014545, 49.855118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.457638, 44.626892, 49.825096>,  <42.513996, 44.394299, 49.807083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.457638, 44.626892, 49.825096>,  <42.363708, 45.014545, 49.855118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457638, 44.626892, 49.825096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823262, -0.239340, 0.514739,
		-0.516817, -0.059079, -0.854055,
		0.234820, -0.969137, -0.075057,
		42.528084, 44.336151, 49.802578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779408, 44.698986, 49.669174>,  <42.363708, 45.014545, 49.855118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779408, 44.698986, 49.669174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.013470, 44.404335, 49.804806>,  <42.153908, 44.227543, 49.886185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.013470, 44.404335, 49.804806>,  <41.779408, 44.698986, 49.669174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013470, 44.404335, 49.804806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760872, -0.354110, 0.543765,
		-0.280484, -0.576178, -0.767690,
		0.585152, -0.736631, 0.339075,
		42.189014, 44.183346, 49.906528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367462, 44.101151, 49.465092>,  <41.779408, 44.698986, 49.669174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367462, 44.101151, 49.465092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.623760, 44.001472, 49.755569>,  <41.777538, 43.941666, 49.929855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.623760, 44.001472, 49.755569>,  <41.367462, 44.101151, 49.465092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623760, 44.001472, 49.755569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720736, -0.521157, 0.457094,
		0.264557, -0.816272, -0.513527,
		0.640741, -0.249190, 0.726193,
		41.815983, 43.926716, 49.973427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170998, 43.334919, 49.460117>,  <41.367462, 44.101151, 49.465092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170998, 43.334919, 49.460117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.357040, 43.452179, 49.794239>,  <41.468666, 43.522533, 49.994713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.357040, 43.452179, 49.794239>,  <41.170998, 43.334919, 49.460117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357040, 43.452179, 49.794239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588735, -0.602236, 0.539169,
		0.661108, -0.742547, -0.107520,
		0.465110, 0.293148, 0.835306,
		41.496574, 43.540123, 50.044830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284683, 42.769009, 49.760788>,  <41.170998, 43.334919, 49.460117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284683, 42.769009, 49.760788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.324310, 43.025154, 50.065453>,  <41.348087, 43.178841, 50.248249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.324310, 43.025154, 50.065453>,  <41.284683, 42.769009, 49.760788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324310, 43.025154, 50.065453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543360, -0.606427, 0.580522,
		0.833634, -0.471365, 0.287870,
		0.099066, 0.640360, 0.761660,
		41.354031, 43.217262, 50.293949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393631, 42.373569, 50.428680>,  <41.284683, 42.769009, 49.760788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393631, 42.373569, 50.428680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255470, 42.734940, 50.530277>,  <41.172573, 42.951763, 50.591236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255470, 42.734940, 50.530277>,  <41.393631, 42.373569, 50.428680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255470, 42.734940, 50.530277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601124, -0.420831, 0.679376,
		0.720656, 0.081977, 0.688429,
		-0.345405, 0.903427, 0.253996,
		41.151848, 43.005966, 50.606476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374352, 42.337261, 51.095818>,  <41.393631, 42.373569, 50.428680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374352, 42.337261, 51.095818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.124512, 42.640465, 51.020668>,  <40.974609, 42.822388, 50.975578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.124512, 42.640465, 51.020668>,  <41.374352, 42.337261, 51.095818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124512, 42.640465, 51.020668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669678, -0.396115, 0.628191,
		0.401754, 0.518184, 0.755036,
		-0.624600, 0.758009, -0.187875,
		40.937130, 42.867867, 50.964306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170288, 42.599342, 51.725193>,  <41.374352, 42.337261, 51.095818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170288, 42.599342, 51.725193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.883404, 42.758545, 51.496384>,  <40.711273, 42.854065, 51.359100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.883404, 42.758545, 51.496384>,  <41.170288, 42.599342, 51.725193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883404, 42.758545, 51.496384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695029, -0.468004, 0.545808,
		-0.050475, 0.789029, 0.612279,
		-0.717207, 0.398003, -0.572021,
		40.668243, 42.877945, 51.324776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604980, 42.958073, 52.178936>,  <41.170288, 42.599342, 51.725193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604980, 42.958073, 52.178936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430161, 42.867607, 51.830723>,  <40.325268, 42.813328, 51.621796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430161, 42.867607, 51.830723>,  <40.604980, 42.958073, 52.178936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430161, 42.867607, 51.830723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823910, -0.287553, 0.488350,
		-0.360774, 0.930678, -0.060665,
		-0.437052, -0.226166, -0.870537,
		40.299046, 42.799759, 51.569561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939049, 43.243763, 52.361603>,  <40.604980, 42.958073, 52.178936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939049, 43.243763, 52.361603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.908119, 42.996155, 52.048981>,  <39.889561, 42.847591, 51.861408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.908119, 42.996155, 52.048981>,  <39.939049, 43.243763, 52.361603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908119, 42.996155, 52.048981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873562, -0.335757, 0.352358,
		-0.480531, 0.709986, -0.514791,
		-0.077325, -0.619021, -0.781558,
		39.884922, 42.810448, 51.814514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291744, 43.242851, 52.309231>,  <39.939049, 43.243763, 52.361603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291744, 43.242851, 52.309231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.376026, 42.918648, 52.090622>,  <39.426598, 42.724125, 51.959457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.376026, 42.918648, 52.090622>,  <39.291744, 43.242851, 52.309231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376026, 42.918648, 52.090622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899491, -0.379665, 0.216266,
		-0.382778, 0.446015, -0.809044,
		0.210708, -0.810509, -0.546514,
		39.439240, 42.675495, 51.926666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717834, 43.069023, 51.931644>,  <39.291744, 43.242851, 52.309231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717834, 43.069023, 51.931644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.924683, 42.726997, 51.946869>,  <39.048790, 42.521782, 51.956001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.924683, 42.726997, 51.946869>,  <38.717834, 43.069023, 51.931644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924683, 42.726997, 51.946869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813643, -0.477293, 0.331928,
		-0.265657, -0.202611, -0.942536,
		0.517118, -0.855068, 0.038056,
		39.079819, 42.470478, 51.958286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.352802, 42.574081, 51.544865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592278, 42.347878, 51.771767>,  <38.735962, 42.212158, 51.907906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592278, 42.347878, 51.771767>,  <38.352802, 42.574081, 51.544865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592278, 42.347878, 51.771767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800977, -0.425031, 0.421645,
		0.002657, -0.706791, -0.707417,
		0.598689, -0.565505, 0.567253,
		38.771885, 42.178226, 51.941944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234097, 41.865585, 51.315300>,  <38.352802, 42.574081, 51.544865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234097, 41.865585, 51.315300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367889, 41.881302, 51.691933>,  <38.448166, 41.890732, 51.917912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367889, 41.881302, 51.691933>,  <38.234097, 41.865585, 51.315300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367889, 41.881302, 51.691933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767712, -0.568111, 0.296424,
		0.546569, -0.822013, -0.159862,
		0.334484, 0.039288, 0.941582,
		38.468235, 41.893089, 51.974407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298264, 41.165928, 51.504616>,  <38.234097, 41.865585, 51.315300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298264, 41.165928, 51.504616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.292534, 41.354439, 51.857365>,  <38.289097, 41.467545, 52.069012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.292534, 41.354439, 51.857365>,  <38.298264, 41.165928, 51.504616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292534, 41.354439, 51.857365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610284, -0.702751, 0.365641,
		0.792053, -0.532951, 0.297684,
		-0.014329, 0.471279, 0.881867,
		38.288235, 41.495823, 52.121925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295582, 40.584518, 52.039360>,  <38.298264, 41.165928, 51.504616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295582, 40.584518, 52.039360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171452, 40.909737, 52.236397>,  <38.096973, 41.104870, 52.354618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171452, 40.909737, 52.236397>,  <38.295582, 40.584518, 52.039360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171452, 40.909737, 52.236397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586835, -0.571500, 0.573596,
		0.747880, -0.111071, 0.654476,
		-0.310324, 0.813050, 0.492594,
		38.078354, 41.153652, 52.384174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461082, 40.476761, 52.775158>,  <38.295582, 40.584518, 52.039360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461082, 40.476761, 52.775158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167503, 40.746567, 52.743290>,  <37.991356, 40.908451, 52.724167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167503, 40.746567, 52.743290>,  <38.461082, 40.476761, 52.775158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167503, 40.746567, 52.743290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598145, -0.586321, 0.546305,
		0.321777, 0.448616, 0.833788,
		-0.733949, 0.674515, -0.079673,
		37.947319, 40.948921, 52.719387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144550, 40.560669, 53.453682>,  <38.461082, 40.476761, 52.775158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144550, 40.560669, 53.453682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863480, 40.730293, 53.225151>,  <37.694836, 40.832066, 53.088032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863480, 40.730293, 53.225151>,  <38.144550, 40.560669, 53.453682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863480, 40.730293, 53.225151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698753, -0.259940, 0.666465,
		0.134108, 0.867529, 0.478966,
		-0.702680, 0.424057, -0.571328,
		37.652676, 40.857510, 53.053753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770855, 41.057514, 53.883072>,  <38.144550, 40.560669, 53.453682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770855, 41.057514, 53.883072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533195, 40.998001, 53.566879>,  <37.390602, 40.962292, 53.377163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533195, 40.998001, 53.566879>,  <37.770855, 41.057514, 53.883072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533195, 40.998001, 53.566879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698638, -0.391564, 0.598818,
		-0.398618, 0.908042, 0.128699,
		-0.594146, -0.148786, -0.790477,
		37.354950, 40.953365, 53.329735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061432, 41.309391, 54.054764>,  <37.770855, 41.057514, 53.883072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061432, 41.309391, 54.054764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992027, 41.057220, 53.752121>,  <36.950382, 40.905918, 53.570534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992027, 41.057220, 53.752121>,  <37.061432, 41.309391, 54.054764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992027, 41.057220, 53.752121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733265, -0.430158, 0.526581,
		-0.657431, 0.646162, -0.387632,
		-0.173514, -0.630427, -0.756607,
		36.939972, 40.868092, 53.525139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367477, 41.346478, 53.879280>,  <37.061432, 41.309391, 54.054764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367477, 41.346478, 53.879280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464783, 40.985634, 53.736717>,  <36.523167, 40.769127, 53.651180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464783, 40.985634, 53.736717>,  <36.367477, 41.346478, 53.879280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464783, 40.985634, 53.736717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706677, -0.416530, 0.571936,
		-0.664402, 0.112735, -0.738824,
		0.243266, -0.902105, -0.356410,
		36.537762, 40.715004, 53.629795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698193, 41.019794, 53.728165>,  <36.367477, 41.346478, 53.879280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698193, 41.019794, 53.728165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990070, 40.751007, 53.778751>,  <36.165199, 40.589733, 53.809105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990070, 40.751007, 53.778751>,  <35.698193, 41.019794, 53.728165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990070, 40.751007, 53.778751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584389, -0.516854, 0.625581,
		-0.355007, -0.530392, -0.769841,
		0.729698, -0.671972, 0.126468,
		36.208981, 40.549416, 53.816692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321461, 40.418537, 53.731110>,  <35.698193, 41.019794, 53.728165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321461, 40.418537, 53.731110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659233, 40.334496, 53.928207>,  <35.861897, 40.284073, 54.046467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659233, 40.334496, 53.928207>,  <35.321461, 40.418537, 53.731110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659233, 40.334496, 53.928207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512256, -0.585710, 0.628122,
		0.156637, -0.782816, -0.602216,
		0.844428, -0.210102, 0.492746,
		35.912563, 40.271465, 54.076031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141224, 39.706367, 53.941860>,  <35.321461, 40.418537, 53.731110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141224, 39.706367, 53.941860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443157, 39.823586, 54.176586>,  <35.624317, 39.893917, 54.317421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443157, 39.823586, 54.176586>,  <35.141224, 39.706367, 53.941860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443157, 39.823586, 54.176586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445627, -0.427359, 0.786626,
		0.481299, -0.855272, -0.191995,
		0.754830, 0.293044, 0.586819,
		35.669605, 39.911499, 54.352631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402946, 39.134117, 54.318104>,  <35.141224, 39.706367, 53.941860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402946, 39.134117, 54.318104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534882, 39.451935, 54.522026>,  <35.614044, 39.642628, 54.644379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534882, 39.451935, 54.522026>,  <35.402946, 39.134117, 54.318104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534882, 39.451935, 54.522026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324079, -0.411905, 0.851649,
		0.886667, -0.446123, 0.121634,
		0.329839, 0.794549, 0.509802,
		35.633835, 39.690300, 54.674965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560085, 38.919399, 54.976402>,  <35.402946, 39.134117, 54.318104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560085, 38.919399, 54.976402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495274, 39.304558, 55.062733>,  <35.456387, 39.535652, 55.114529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495274, 39.304558, 55.062733>,  <35.560085, 38.919399, 54.976402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495274, 39.304558, 55.062733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377711, -0.262574, 0.887913,
		0.911637, 0.062346, 0.406240,
		-0.162026, 0.962896, 0.215823,
		35.446667, 39.593426, 55.127480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887238, 39.069942, 55.663826>,  <35.560085, 38.919399, 54.976402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887238, 39.069942, 55.663826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628769, 39.374542, 55.643501>,  <35.473690, 39.557301, 55.631306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628769, 39.374542, 55.643501>,  <35.887238, 39.069942, 55.663826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628769, 39.374542, 55.643501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338217, -0.226035, 0.913519,
		0.684159, 0.607475, 0.403609,
		-0.646170, 0.761500, -0.050815,
		35.434917, 39.602993, 55.628258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948200, 39.450459, 56.198906>,  <35.887238, 39.069942, 55.663826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948200, 39.450459, 56.198906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585327, 39.573868, 56.084480>,  <35.367603, 39.647915, 56.015823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585327, 39.573868, 56.084480>,  <35.948200, 39.450459, 56.198906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585327, 39.573868, 56.084480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323931, -0.078277, 0.942837,
		0.268499, 0.947989, 0.170952,
		-0.907181, 0.308527, -0.286066,
		35.313171, 39.666428, 55.998661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799385, 39.953732, 56.714619>,  <35.948200, 39.450459, 56.198906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799385, 39.953732, 56.714619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470749, 39.794014, 56.551861>,  <35.273567, 39.698185, 56.454208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470749, 39.794014, 56.551861>,  <35.799385, 39.953732, 56.714619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470749, 39.794014, 56.551861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387844, -0.131616, 0.912280,
		-0.417820, 0.907327, -0.046729,
		-0.821586, -0.399293, -0.406893,
		35.224274, 39.674225, 56.429794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337868, 40.046844, 57.291466>,  <35.799385, 39.953732, 56.714619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337868, 40.046844, 57.291466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124741, 39.826149, 57.034813>,  <34.996864, 39.693733, 56.880821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124741, 39.826149, 57.034813>,  <35.337868, 40.046844, 57.291466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124741, 39.826149, 57.034813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554232, -0.345451, 0.757292,
		-0.639478, 0.759111, -0.121728,
		-0.532818, -0.551737, -0.641632,
		34.964897, 39.660629, 56.842323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649517, 40.203232, 57.420776>,  <35.337868, 40.046844, 57.291466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649517, 40.203232, 57.420776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705208, 39.836365, 57.271420>,  <34.738621, 39.616245, 57.181805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705208, 39.836365, 57.271420>,  <34.649517, 40.203232, 57.420776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705208, 39.836365, 57.271420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385490, -0.397520, 0.832691,
		-0.912148, 0.028011, -0.408902,
		0.139222, -0.917166, -0.373396,
		34.746975, 39.561214, 57.159401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133980, 39.911045, 57.661518>,  <34.649517, 40.203232, 57.420776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133980, 39.911045, 57.661518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.363625, 39.602592, 57.551422>,  <34.501411, 39.417522, 57.485363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.363625, 39.602592, 57.551422>,  <34.133980, 39.911045, 57.661518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363625, 39.602592, 57.551422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237613, -0.478607, 0.845266,
		-0.783540, -0.419877, -0.458004,
		0.574112, -0.771128, -0.275240,
		34.535858, 39.371254, 57.468849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669865, 39.386322, 57.696926>,  <34.133980, 39.911045, 57.661518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669865, 39.386322, 57.696926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048389, 39.258255, 57.714760>,  <34.275505, 39.181416, 57.725460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048389, 39.258255, 57.714760>,  <33.669865, 39.386322, 57.696926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048389, 39.258255, 57.714760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207172, -0.494806, 0.843947,
		-0.248138, -0.807875, -0.534570,
		0.946312, -0.320164, 0.044589,
		34.332283, 39.162205, 57.728138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583351, 38.731098, 57.978168>,  <33.669865, 39.386322, 57.696926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583351, 38.731098, 57.978168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971153, 38.813713, 58.030933>,  <34.203835, 38.863281, 58.062592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971153, 38.813713, 58.030933>,  <33.583351, 38.731098, 57.978168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971153, 38.813713, 58.030933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011264, -0.575246, 0.817903,
		0.244809, -0.791476, -0.560031,
		0.969506, 0.206538, 0.131911,
		34.262005, 38.875675, 58.070507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858627, 38.055473, 58.039967>,  <33.583351, 38.731098, 57.978168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858627, 38.055473, 58.039967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085037, 38.338081, 58.209885>,  <34.220882, 38.507645, 58.311836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085037, 38.338081, 58.209885>,  <33.858627, 38.055473, 58.039967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085037, 38.338081, 58.209885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126415, -0.583575, 0.802159,
		0.814639, -0.400341, -0.419632,
		0.566024, 0.706517, 0.424794,
		34.254845, 38.550037, 58.337322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899933, 37.601341, 57.427017>,  <33.858627, 38.055473, 58.039967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899933, 37.601341, 57.427017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004189, 37.215355, 57.414986>,  <34.066742, 36.983761, 57.407768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004189, 37.215355, 57.414986>,  <33.899933, 37.601341, 57.427017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004189, 37.215355, 57.414986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285138, 0.106702, -0.952529,
		0.922369, 0.239688, 0.302959,
		0.260636, -0.964969, -0.030075,
		34.082378, 36.925865, 57.405964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578293, 37.498001, 57.185749>,  <33.899933, 37.601341, 57.427017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578293, 37.498001, 57.185749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373230, 37.165199, 57.100945>,  <34.250191, 36.965519, 57.050060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373230, 37.165199, 57.100945>,  <34.578293, 37.498001, 57.185749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373230, 37.165199, 57.100945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308863, 0.051693, -0.949701,
		0.801115, -0.552356, 0.230475,
		-0.512659, -0.832005, -0.212015,
		34.219433, 36.915600, 57.037338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057980, 37.073383, 56.817108>,  <34.578293, 37.498001, 57.185749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057980, 37.073383, 56.817108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687584, 36.950195, 56.729744>,  <34.465347, 36.876282, 56.677326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687584, 36.950195, 56.729744>,  <35.057980, 37.073383, 56.817108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687584, 36.950195, 56.729744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292822, -0.220640, -0.930362,
		0.238334, -0.925458, 0.294491,
		-0.925987, -0.307971, -0.218409,
		34.409786, 36.857803, 56.664223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186680, 36.445709, 56.416607>,  <35.057980, 37.073383, 56.817108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186680, 36.445709, 56.416607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811729, 36.568230, 56.350266>,  <34.586758, 36.641743, 56.310463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811729, 36.568230, 56.350266>,  <35.186680, 36.445709, 56.416607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811729, 36.568230, 56.350266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046993, -0.360579, -0.931544,
		-0.345122, -0.881005, 0.323607,
		-0.937381, 0.306289, -0.165844,
		34.530518, 36.660122, 56.300510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893574, 35.922287, 56.017593>,  <35.186680, 36.445709, 56.416607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893574, 35.922287, 56.017593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.689285, 36.260551, 55.955597>,  <34.566711, 36.463509, 55.918400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.689285, 36.260551, 55.955597>,  <34.893574, 35.922287, 56.017593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689285, 36.260551, 55.955597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056895, -0.213120, -0.975368,
		-0.857863, -0.489321, 0.156959,
		-0.510719, 0.845662, -0.154988,
		34.536068, 36.514252, 55.909100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469299, 35.733479, 55.428440>,  <34.893574, 35.922287, 56.017593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469299, 35.733479, 55.428440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480392, 36.133224, 55.437309>,  <34.487049, 36.373074, 55.442631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480392, 36.133224, 55.437309>,  <34.469299, 35.733479, 55.428440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480392, 36.133224, 55.437309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223864, 0.015409, -0.974499,
		-0.974226, 0.031986, -0.223295,
		0.027729, 0.999370, 0.022172,
		34.488712, 36.433037, 55.443962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118465, 36.062321, 54.717255>,  <34.469299, 35.733479, 55.428440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118465, 36.062321, 54.717255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329559, 36.381317, 54.834213>,  <34.456215, 36.572716, 54.904388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329559, 36.381317, 54.834213>,  <34.118465, 36.062321, 54.717255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329559, 36.381317, 54.834213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388626, 0.079396, -0.917969,
		-0.755290, 0.598080, -0.268026,
		0.527738, 0.797494, 0.292397,
		34.487881, 36.620564, 54.921932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966003, 36.665806, 54.314934>,  <34.118465, 36.062321, 54.717255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966003, 36.665806, 54.314934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331375, 36.739845, 54.459923>,  <34.550598, 36.784267, 54.546917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331375, 36.739845, 54.459923>,  <33.966003, 36.665806, 54.314934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331375, 36.739845, 54.459923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301428, 0.290766, -0.908073,
		-0.273477, 0.938719, 0.209800,
		0.913429, 0.185098, 0.362474,
		34.605404, 36.795376, 54.568665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151772, 37.350639, 53.931953>,  <33.966003, 36.665806, 54.314934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151772, 37.350639, 53.931953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.496544, 37.202827, 54.070816>,  <34.703407, 37.114140, 54.154133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.496544, 37.202827, 54.070816>,  <34.151772, 37.350639, 53.931953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496544, 37.202827, 54.070816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487231, 0.414269, -0.768757,
		0.140265, 0.831762, 0.537120,
		0.861935, -0.369531, 0.347153,
		34.755123, 37.091969, 54.174961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588196, 37.953644, 53.883389>,  <34.151772, 37.350639, 53.931953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588196, 37.953644, 53.883389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842979, 37.646172, 53.906784>,  <34.995850, 37.461689, 53.920822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842979, 37.646172, 53.906784>,  <34.588196, 37.953644, 53.883389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842979, 37.646172, 53.906784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555452, 0.405006, -0.726253,
		0.534567, 0.495078, 0.684935,
		0.636955, -0.768679, 0.058488,
		35.034065, 37.415569, 53.924332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239311, 38.308090, 53.827641>,  <34.588196, 37.953644, 53.883389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239311, 38.308090, 53.827641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291794, 37.919182, 53.750198>,  <35.323284, 37.685837, 53.703732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291794, 37.919182, 53.750198>,  <35.239311, 38.308090, 53.827641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291794, 37.919182, 53.750198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552052, 0.233869, -0.800340,
		0.823422, -0.001870, 0.567427,
		0.131207, -0.972266, -0.193605,
		35.331158, 37.627502, 53.692116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890118, 38.316147, 53.997421>,  <35.239311, 38.308090, 53.827641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890118, 38.316147, 53.997421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755993, 38.033325, 53.748379>,  <35.675518, 37.863632, 53.598953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755993, 38.033325, 53.748379>,  <35.890118, 38.316147, 53.997421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755993, 38.033325, 53.748379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559714, 0.382086, -0.735344,
		0.757817, -0.595053, 0.267630,
		-0.335311, -0.707052, -0.622611,
		35.655399, 37.821209, 53.561596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472763, 38.127979, 53.660332>,  <35.890118, 38.316147, 53.997421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472763, 38.127979, 53.660332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190231, 38.022728, 53.397465>,  <36.020714, 37.959576, 53.239746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190231, 38.022728, 53.397465>,  <36.472763, 38.127979, 53.660332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190231, 38.022728, 53.397465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526226, 0.425781, -0.736069,
		0.473492, -0.865721, -0.162272,
		-0.706323, -0.263131, -0.657169,
		35.978333, 37.943790, 53.200314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810463, 37.914108, 53.085068>,  <36.472763, 38.127979, 53.660332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810463, 37.914108, 53.085068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445110, 37.992386, 52.942272>,  <36.225899, 38.039352, 52.856594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445110, 37.992386, 52.942272>,  <36.810463, 37.914108, 53.085068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445110, 37.992386, 52.942272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404562, 0.338370, -0.849609,
		-0.045473, -0.920439, -0.388232,
		-0.913379, 0.195698, -0.356988,
		36.171097, 38.051094, 52.835175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865597, 37.573189, 52.441963>,  <36.810463, 37.914108, 53.085068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865597, 37.573189, 52.441963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560680, 37.831009, 52.418434>,  <36.377731, 37.985703, 52.404316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560680, 37.831009, 52.418434>,  <36.865597, 37.573189, 52.441963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560680, 37.831009, 52.418434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373919, 0.364390, -0.852880,
		-0.528292, -0.672140, -0.518783,
		-0.762294, 0.644553, -0.058822,
		36.331993, 38.024376, 52.400787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619583, 37.566147, 51.780621>,  <36.865597, 37.573189, 52.441963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619583, 37.566147, 51.780621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456589, 37.906319, 51.913723>,  <36.358791, 38.110420, 51.993584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456589, 37.906319, 51.913723>,  <36.619583, 37.566147, 51.780621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456589, 37.906319, 51.913723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384009, 0.490167, -0.782479,
		-0.828546, -0.191073, -0.526310,
		-0.407490, 0.850428, 0.332752,
		36.334343, 38.161446, 52.013550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349457, 37.935043, 51.271103>,  <36.619583, 37.566147, 51.780621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349457, 37.935043, 51.271103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373878, 38.241600, 51.526890>,  <36.388531, 38.425533, 51.680363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373878, 38.241600, 51.526890>,  <36.349457, 37.935043, 51.271103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373878, 38.241600, 51.526890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498734, 0.531530, -0.684646,
		-0.864602, 0.360727, -0.349771,
		0.061057, 0.766389, 0.639469,
		36.392197, 38.471516, 51.718731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042664, 38.573753, 50.968197>,  <36.349457, 37.935043, 51.271103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042664, 38.573753, 50.968197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314247, 38.688286, 51.238613>,  <36.477196, 38.757004, 51.400864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314247, 38.688286, 51.238613>,  <36.042664, 38.573753, 50.968197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314247, 38.688286, 51.238613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377744, 0.653344, -0.656087,
		-0.629543, 0.700827, 0.335436,
		0.678959, 0.286327, 0.676041,
		36.517933, 38.774185, 51.441425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074490, 39.375542, 50.852959>,  <36.042664, 38.573753, 50.968197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074490, 39.375542, 50.852959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.397308, 39.279503, 51.068745>,  <36.591000, 39.221878, 51.198215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.397308, 39.279503, 51.068745>,  <36.074490, 39.375542, 50.852959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397308, 39.279503, 51.068745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517185, 0.728281, -0.449584,
		-0.284937, 0.641840, 0.711936,
		0.807050, -0.240100, 0.539464,
		36.639423, 39.207474, 51.230583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433056, 40.063984, 50.956379>,  <36.074490, 39.375542, 50.852959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433056, 40.063984, 50.956379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711098, 39.781670, 51.011078>,  <36.877922, 39.612282, 51.043896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711098, 39.781670, 51.011078>,  <36.433056, 40.063984, 50.956379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711098, 39.781670, 51.011078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689630, 0.600893, -0.404151,
		0.203075, 0.375229, 0.904413,
		0.695105, -0.705784, 0.136743,
		36.919628, 39.569935, 51.052101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983654, 40.407330, 51.208775>,  <36.433056, 40.063984, 50.956379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983654, 40.407330, 51.208775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131409, 40.065544, 51.062653>,  <37.220062, 39.860474, 50.974979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131409, 40.065544, 51.062653>,  <36.983654, 40.407330, 51.208775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131409, 40.065544, 51.062653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701818, 0.514181, -0.493021,
		0.609101, -0.074261, 0.789608,
		0.369389, -0.854461, -0.365306,
		37.242226, 39.809204, 50.953060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.753384, 44.166935, 51.049603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876541, 43.808571, 50.921509>,  <40.950436, 43.593552, 50.844654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876541, 43.808571, 50.921509>,  <40.753384, 44.166935, 51.049603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876541, 43.808571, 50.921509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818389, 0.421049, -0.391098,
		0.485221, -0.141657, 0.862841,
		0.307896, -0.895908, -0.320232,
		40.968910, 43.539799, 50.825439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441383, 44.159267, 51.215160>,  <40.753384, 44.166935, 51.049603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441383, 44.159267, 51.215160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.427971, 43.867683, 50.941666>,  <41.419922, 43.692734, 50.777569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.427971, 43.867683, 50.941666>,  <41.441383, 44.159267, 51.215160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427971, 43.867683, 50.941666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891796, 0.287019, -0.349741,
		0.451192, -0.621477, 0.640462,
		-0.033531, -0.728962, -0.683732,
		41.417912, 43.648994, 50.736546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117653, 43.813705, 51.185692>,  <41.441383, 44.159267, 51.215160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117653, 43.813705, 51.185692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940254, 43.739532, 50.834938>,  <41.833817, 43.695030, 50.624485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940254, 43.739532, 50.834938>,  <42.117653, 43.813705, 51.185692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940254, 43.739532, 50.834938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854506, 0.207715, -0.476102,
		0.270427, -0.960452, 0.066333,
		-0.443495, -0.185433, -0.876884,
		41.807205, 43.683903, 50.571873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655224, 43.482784, 50.821102>,  <42.117653, 43.813705, 51.185692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655224, 43.482784, 50.821102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392147, 43.615616, 50.550644>,  <42.234303, 43.695316, 50.388371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392147, 43.615616, 50.550644>,  <42.655224, 43.482784, 50.821102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392147, 43.615616, 50.550644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753188, 0.275204, -0.597470,
		-0.012331, -0.902212, -0.431117,
		-0.657689, 0.332079, -0.676142,
		42.194839, 43.715240, 50.347801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775711, 43.108906, 50.240669>,  <42.655224, 43.482784, 50.821102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775711, 43.108906, 50.240669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598351, 43.453033, 50.140068>,  <42.491936, 43.659508, 50.079708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598351, 43.453033, 50.140068>,  <42.775711, 43.108906, 50.240669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598351, 43.453033, 50.140068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733300, 0.186822, -0.653734,
		-0.515432, -0.474292, -0.713707,
		-0.443397, 0.860317, -0.251505,
		42.465332, 43.711128, 50.064617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781788, 43.110218, 49.491486>,  <42.775711, 43.108906, 50.240669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781788, 43.110218, 49.491486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717049, 43.486649, 49.610260>,  <42.678204, 43.712509, 49.681526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717049, 43.486649, 49.610260>,  <42.781788, 43.110218, 49.491486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717049, 43.486649, 49.610260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681531, 0.324216, -0.656049,
		-0.713666, 0.096191, -0.693850,
		-0.161851, 0.941080, 0.296939,
		42.668491, 43.768974, 49.699341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725998, 43.424862, 48.864464>,  <42.781788, 43.110218, 49.491486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725998, 43.424862, 48.864464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.782154, 43.724487, 49.123444>,  <42.815845, 43.904263, 49.278831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.782154, 43.724487, 49.123444>,  <42.725998, 43.424862, 48.864464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782154, 43.724487, 49.123444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536324, 0.492141, -0.685678,
		-0.832255, 0.443502, -0.332653,
		0.140388, 0.749068, 0.647447,
		42.824272, 43.949207, 49.317677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592022, 43.987595, 48.462200>,  <42.725998, 43.424862, 48.864464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592022, 43.987595, 48.462200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.794090, 44.121323, 48.780457>,  <42.915329, 44.201557, 48.971409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.794090, 44.121323, 48.780457>,  <42.592022, 43.987595, 48.462200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794090, 44.121323, 48.780457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502052, 0.636029, -0.586013,
		-0.701962, 0.695486, 0.153457,
		0.505167, 0.334315, 0.795638,
		42.945641, 44.221619, 49.019150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515911, 44.793507, 48.484322>,  <42.592022, 43.987595, 48.462200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515911, 44.793507, 48.484322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.846817, 44.702110, 48.689621>,  <43.045361, 44.647274, 48.812801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.846817, 44.702110, 48.689621>,  <42.515911, 44.793507, 48.484322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846817, 44.702110, 48.689621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498755, 0.719200, -0.483730,
		-0.258603, 0.656160, 0.708928,
		0.827265, -0.228487, 0.513251,
		43.094997, 44.633564, 48.843597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810966, 45.442268, 48.558651>,  <42.515911, 44.793507, 48.484322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810966, 45.442268, 48.558651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112099, 45.194214, 48.646900>,  <43.292778, 45.045380, 48.699852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112099, 45.194214, 48.646900>,  <42.810966, 45.442268, 48.558651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112099, 45.194214, 48.646900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625516, 0.569706, -0.533072,
		0.204888, 0.539316, 0.816798,
		0.752829, -0.620140, 0.220625,
		43.337948, 45.008171, 48.713089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395096, 45.825619, 48.546684>,  <42.810966, 45.442268, 48.558651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395096, 45.825619, 48.546684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561913, 45.462646, 48.526146>,  <43.662003, 45.244862, 48.513824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561913, 45.462646, 48.526146>,  <43.395096, 45.825619, 48.546684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561913, 45.462646, 48.526146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723390, 0.365599, -0.585700,
		0.550256, 0.207120, 0.808900,
		0.417043, -0.907435, -0.051345,
		43.687027, 45.190414, 48.510742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073425, 45.941540, 48.631126>,  <43.395096, 45.825619, 48.546684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073425, 45.941540, 48.631126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079689, 45.604057, 48.416496>,  <44.083447, 45.401569, 48.287716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079689, 45.604057, 48.416496>,  <44.073425, 45.941540, 48.631126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079689, 45.604057, 48.416496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787487, 0.341089, -0.513345,
		0.616133, -0.414513, 0.669746,
		0.015655, -0.843705, -0.536580,
		44.084385, 45.350945, 48.255524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713562, 45.705555, 48.575237>,  <44.073425, 45.941540, 48.631126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713562, 45.705555, 48.575237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504780, 45.591934, 48.253525>,  <44.379509, 45.523762, 48.060497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504780, 45.591934, 48.253525>,  <44.713562, 45.705555, 48.575237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504780, 45.591934, 48.253525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602390, 0.544821, -0.583350,
		0.603894, -0.788977, -0.113262,
		-0.521957, -0.284053, -0.804285,
		44.348194, 45.506718, 48.012238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251953, 45.477497, 47.963505>,  <44.713562, 45.705555, 48.575237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251953, 45.477497, 47.963505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898567, 45.650131, 47.890598>,  <44.686535, 45.753712, 47.846855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898567, 45.650131, 47.890598>,  <45.251953, 45.477497, 47.963505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898567, 45.650131, 47.890598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465733, 0.766877, -0.441580,
		-0.050805, -0.475008, -0.878514,
		-0.883466, 0.431587, -0.182266,
		44.633526, 45.779606, 47.835918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339123, 45.446514, 48.788517>,  <45.251953, 45.477497, 47.963505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339123, 45.446514, 48.788517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604668, 45.642311, 49.014683>,  <45.763996, 45.759789, 49.150383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604668, 45.642311, 49.014683>,  <45.339123, 45.446514, 48.788517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604668, 45.642311, 49.014683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258752, -0.559009, 0.787754,
		0.701665, -0.669261, -0.244449,
		0.663862, 0.489488, 0.565410,
		45.803825, 45.789158, 49.184307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609253, 44.886322, 49.214626>,  <45.339123, 45.446514, 48.788517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609253, 44.886322, 49.214626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.734291, 45.225410, 49.386044>,  <45.809315, 45.428864, 49.488895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.734291, 45.225410, 49.386044>,  <45.609253, 44.886322, 49.214626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734291, 45.225410, 49.386044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189995, -0.386240, 0.902619,
		0.930692, -0.363574, 0.040327,
		0.312592, 0.847722, 0.428548,
		45.828068, 45.479729, 49.514606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870701, 44.643444, 49.776741>,  <45.609253, 44.886322, 49.214626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870701, 44.643444, 49.776741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.835358, 45.033501, 49.858025>,  <45.814152, 45.267532, 49.906796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.835358, 45.033501, 49.858025>,  <45.870701, 44.643444, 49.776741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835358, 45.033501, 49.858025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242305, -0.218923, 0.945178,
		0.966168, 0.034279, 0.255626,
		-0.088362, 0.975139, 0.203211,
		45.808849, 45.326042, 49.918987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.217152, 44.789249, 50.526882>,  <45.870701, 44.643444, 49.776741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.217152, 44.789249, 50.526882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.935616, 45.057571, 50.433392>,  <45.766693, 45.218563, 50.377296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.935616, 45.057571, 50.433392>,  <46.217152, 44.789249, 50.526882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935616, 45.057571, 50.433392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346248, -0.036675, 0.937426,
		0.620256, 0.740728, 0.258078,
		-0.703843, 0.670803, -0.233728,
		45.724464, 45.258812, 50.363274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180531, 45.262772, 51.151222>,  <46.217152, 44.789249, 50.526882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180531, 45.262772, 51.151222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834534, 45.314720, 50.957348>,  <45.626934, 45.345890, 50.841022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834534, 45.314720, 50.957348>,  <46.180531, 45.262772, 51.151222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834534, 45.314720, 50.957348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492619, -0.035997, 0.869500,
		0.095478, 0.990877, 0.095115,
		-0.864992, 0.129874, -0.484687,
		45.575035, 45.353683, 50.811943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880615, 45.648247, 51.616459>,  <46.180531, 45.262772, 51.151222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880615, 45.648247, 51.616459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.580048, 45.535614, 51.377769>,  <45.399708, 45.468033, 51.234554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.580048, 45.535614, 51.377769>,  <45.880615, 45.648247, 51.616459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580048, 45.535614, 51.377769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606991, -0.059592, 0.792471,
		-0.258705, 0.957685, -0.126139,
		-0.751421, -0.281582, -0.596723,
		45.354622, 45.451138, 51.198753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259735, 46.149715, 51.793774>,  <45.880615, 45.648247, 51.616459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259735, 46.149715, 51.793774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183937, 45.787590, 51.641724>,  <45.138458, 45.570312, 51.550495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183937, 45.787590, 51.641724>,  <45.259735, 46.149715, 51.793774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183937, 45.787590, 51.641724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660852, -0.168730, 0.731303,
		-0.726199, 0.389786, -0.566306,
		-0.189499, -0.905316, -0.380122,
		45.127087, 45.515995, 51.527687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518658, 46.098354, 52.023621>,  <45.259735, 46.149715, 51.793774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518658, 46.098354, 52.023621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.600082, 45.732056, 51.885075>,  <44.648937, 45.512276, 51.801949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.600082, 45.732056, 51.885075>,  <44.518658, 46.098354, 52.023621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600082, 45.732056, 51.885075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680815, -0.386638, 0.622095,
		-0.703600, 0.109174, -0.702160,
		0.203566, -0.915747, -0.346366,
		44.661152, 45.457333, 51.781166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838112, 45.704628, 52.026554>,  <44.518658, 46.098354, 52.023621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838112, 45.704628, 52.026554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138496, 45.440529, 52.021805>,  <44.318726, 45.282070, 52.018955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138496, 45.440529, 52.021805>,  <43.838112, 45.704628, 52.026554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138496, 45.440529, 52.021805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543077, -0.627724, 0.557701,
		-0.375674, -0.412360, -0.829957,
		0.750957, -0.660244, -0.011876,
		44.363785, 45.242455, 52.018242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648838, 45.039726, 51.722683>,  <43.838112, 45.704628, 52.026554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648838, 45.039726, 51.722683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955582, 44.947395, 51.962234>,  <44.139626, 44.891998, 52.105965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955582, 44.947395, 51.962234>,  <43.648838, 45.039726, 51.722683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955582, 44.947395, 51.962234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578740, -0.652088, 0.489735,
		0.277477, -0.722150, -0.633645,
		0.766854, -0.230825, 0.598877,
		44.185638, 44.878147, 52.141899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620560, 44.325474, 51.807156>,  <43.648838, 45.039726, 51.722683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620560, 44.325474, 51.807156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821884, 44.452934, 52.128437>,  <43.942680, 44.529411, 52.321205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821884, 44.452934, 52.128437>,  <43.620560, 44.325474, 51.807156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821884, 44.452934, 52.128437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537885, -0.611950, 0.579825,
		0.676283, -0.723865, -0.136605,
		0.503311, 0.318648, 0.803207,
		43.972878, 44.548527, 52.369400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696587, 43.754166, 52.273685>,  <43.620560, 44.325474, 51.807156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696587, 43.754166, 52.273685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777054, 44.073242, 52.501095>,  <43.825336, 44.264687, 52.637539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777054, 44.073242, 52.501095>,  <43.696587, 43.754166, 52.273685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777054, 44.073242, 52.501095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431874, -0.448708, 0.782398,
		0.879213, -0.402926, 0.254236,
		0.201171, 0.797692, 0.568523,
		43.837406, 44.312550, 52.671650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015240, 43.525108, 52.973824>,  <43.696587, 43.754166, 52.273685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015240, 43.525108, 52.973824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873360, 43.890205, 53.054901>,  <43.788231, 44.109264, 53.103546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873360, 43.890205, 53.054901>,  <44.015240, 43.525108, 52.973824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873360, 43.890205, 53.054901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459338, -0.358938, 0.812510,
		0.814367, 0.195097, 0.546575,
		-0.354704, 0.912744, 0.202692,
		43.766949, 44.164028, 53.115707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178188, 43.548855, 53.594334>,  <44.015240, 43.525108, 52.973824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178188, 43.548855, 53.594334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888916, 43.814514, 53.518536>,  <43.715351, 43.973911, 53.473057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888916, 43.814514, 53.518536>,  <44.178188, 43.548855, 53.594334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888916, 43.814514, 53.518536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514348, -0.334796, 0.789531,
		0.460923, 0.668445, 0.583723,
		-0.723185, 0.664149, -0.189498,
		43.671959, 44.013760, 53.461685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620907, 43.276417, 54.092358>,  <44.178188, 43.548855, 53.594334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620907, 43.276417, 54.092358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588600, 42.896469, 53.971546>,  <44.569214, 42.668499, 53.899059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588600, 42.896469, 53.971546>,  <44.620907, 43.276417, 54.092358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588600, 42.896469, 53.971546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558813, 0.207760, -0.802847,
		0.825351, -0.233622, 0.514020,
		-0.080770, -0.949872, -0.302026,
		44.564369, 42.611507, 53.880939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284878, 42.943691, 53.976696>,  <44.620907, 43.276417, 54.092358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284878, 42.943691, 53.976696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.029877, 42.732491, 53.752266>,  <44.876877, 42.605770, 53.617607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.029877, 42.732491, 53.752266>,  <45.284878, 42.943691, 53.976696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029877, 42.732491, 53.752266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672801, -0.026676, -0.739342,
		0.375409, -0.848822, 0.372248,
		-0.637500, -0.528005, -0.561074,
		44.838627, 42.574089, 53.583942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820026, 42.557873, 53.539326>,  <45.284878, 42.943691, 53.976696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820026, 42.557873, 53.539326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461693, 42.552544, 53.361649>,  <45.246693, 42.549347, 53.255043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461693, 42.552544, 53.361649>,  <45.820026, 42.557873, 53.539326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461693, 42.552544, 53.361649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442585, 0.063266, -0.894492,
		0.040011, -0.997908, -0.050784,
		-0.895833, -0.013313, -0.444190,
		45.192944, 42.548546, 53.228390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790726, 42.046864, 53.156086>,  <45.820026, 42.557873, 53.539326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790726, 42.046864, 53.156086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.528374, 42.291222, 52.978714>,  <45.370964, 42.437836, 52.872292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.528374, 42.291222, 52.978714>,  <45.790726, 42.046864, 53.156086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.528374, 42.291222, 52.978714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529800, -0.045909, -0.846879,
		-0.537711, -0.790380, -0.293541,
		-0.655880, 0.610894, -0.443429,
		45.331608, 42.474491, 52.845684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785591, 41.743568, 52.546104>,  <45.790726, 42.046864, 53.156086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785591, 41.743568, 52.546104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620407, 42.100525, 52.473335>,  <45.521294, 42.314701, 52.429676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620407, 42.100525, 52.473335>,  <45.785591, 41.743568, 52.546104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620407, 42.100525, 52.473335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621251, 0.129960, -0.772760,
		-0.665964, -0.432140, -0.608069,
		-0.412965, 0.892393, -0.181919,
		45.496517, 42.368244, 52.418758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488804, 41.690895, 51.820168>,  <45.785591, 41.743568, 52.546104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488804, 41.690895, 51.820168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.567589, 42.070557, 51.918404>,  <45.614861, 42.298355, 51.977345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.567589, 42.070557, 51.918404>,  <45.488804, 41.690895, 51.820168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567589, 42.070557, 51.918404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669772, 0.052666, -0.740696,
		-0.715969, 0.310375, -0.625344,
		0.196959, 0.949154, 0.245587,
		45.626678, 42.355305, 51.992081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686020, 41.974083, 51.209660>,  <45.488804, 41.690895, 51.820168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686020, 41.974083, 51.209660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.781830, 42.274628, 51.455616>,  <45.839314, 42.454956, 51.603188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.781830, 42.274628, 51.455616>,  <45.686020, 41.974083, 51.209660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781830, 42.274628, 51.455616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688122, 0.315404, -0.653459,
		-0.684921, 0.579635, -0.441482,
		0.239522, 0.751361, 0.614886,
		45.853687, 42.500034, 51.640083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565155, 42.648487, 50.909634>,  <45.686020, 41.974083, 51.209660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565155, 42.648487, 50.909634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.857536, 42.685715, 51.180054>,  <46.032967, 42.708050, 51.342304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.857536, 42.685715, 51.180054>,  <45.565155, 42.648487, 50.909634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857536, 42.685715, 51.180054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644960, 0.229521, -0.728936,
		-0.223007, 0.968844, 0.107746,
		0.730955, 0.093066, 0.676050,
		46.076824, 42.713634, 51.382870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928127, 43.281570, 50.738960>,  <45.565155, 42.648487, 50.909634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928127, 43.281570, 50.738960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180229, 43.058273, 50.954792>,  <46.331490, 42.924297, 51.084293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180229, 43.058273, 50.954792>,  <45.928127, 43.281570, 50.738960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180229, 43.058273, 50.954792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750586, 0.260418, -0.607292,
		0.198497, 0.787751, 0.583136,
		0.630254, -0.558239, 0.539582,
		46.369305, 42.890800, 51.116665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561169, 43.688587, 50.874397>,  <45.928127, 43.281570, 50.738960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561169, 43.688587, 50.874397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.667336, 43.303596, 50.896965>,  <46.731037, 43.072601, 50.910507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.667336, 43.303596, 50.896965>,  <46.561169, 43.688587, 50.874397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.667336, 43.303596, 50.896965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824261, 0.196171, -0.531140,
		0.500144, 0.187479, 0.845404,
		0.265421, -0.962480, 0.056418,
		46.746964, 43.014851, 50.913891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287540, 43.715485, 50.759689>,  <46.561169, 43.688587, 50.874397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287540, 43.715485, 50.759689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.187965, 43.334457, 50.689659>,  <47.128220, 43.105843, 50.647640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.187965, 43.334457, 50.689659>,  <47.287540, 43.715485, 50.759689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.187965, 43.334457, 50.689659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665653, -0.036966, -0.745345,
		0.703517, -0.302083, 0.643280,
		-0.248936, -0.952565, -0.175076,
		47.113285, 43.048687, 50.637135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.820312, 43.284336, 50.724026>,  <47.287540, 43.715485, 50.759689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.820312, 43.284336, 50.724026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.543091, 43.112503, 50.492462>,  <47.376759, 43.009403, 50.353523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.543091, 43.112503, 50.492462>,  <47.820312, 43.284336, 50.724026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.543091, 43.112503, 50.492462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638179, 0.007863, -0.769848,
		0.335263, -0.902995, 0.268699,
		-0.693056, -0.429579, -0.578908,
		47.335175, 42.983627, 50.318790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.599354, 41.174347, 56.801540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429565, 41.057205, 56.458832>,  <42.327694, 40.986919, 56.253204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429565, 41.057205, 56.458832>,  <42.599354, 41.174347, 56.801540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429565, 41.057205, 56.458832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865125, 0.148041, -0.479209,
		0.267175, -0.944628, 0.190514,
		-0.424471, -0.292852, -0.856774,
		42.302223, 40.969349, 56.201801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123970, 40.892452, 56.501411>,  <42.599354, 41.174347, 56.801540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123970, 40.892452, 56.501411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859226, 40.938683, 56.205143>,  <42.700382, 40.966419, 56.027382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859226, 40.938683, 56.205143>,  <43.123970, 40.892452, 56.501411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859226, 40.938683, 56.205143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749022, 0.062162, -0.659622,
		-0.030194, -0.991352, -0.127709,
		-0.661857, 0.115574, -0.740668,
		42.660667, 40.973354, 55.982944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500610, 40.627087, 55.981380>,  <43.123970, 40.892452, 56.501411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500610, 40.627087, 55.981380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201981, 40.809761, 55.787861>,  <43.022804, 40.919365, 55.671749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201981, 40.809761, 55.787861>,  <43.500610, 40.627087, 55.981380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201981, 40.809761, 55.787861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636902, 0.280402, -0.718144,
		-0.192305, -0.844283, -0.500205,
		-0.746575, 0.456684, -0.483803,
		42.978008, 40.946766, 55.642719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605766, 40.438335, 55.244431>,  <43.500610, 40.627087, 55.981380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605766, 40.438335, 55.244431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363647, 40.756737, 55.244076>,  <43.218376, 40.947777, 55.243862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363647, 40.756737, 55.244076>,  <43.605766, 40.438335, 55.244431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363647, 40.756737, 55.244076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519848, 0.394464, -0.757731,
		-0.602805, -0.459112, -0.652566,
		-0.605297, 0.795999, -0.000884,
		43.182060, 40.995537, 55.243809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357410, 40.554771, 54.567715>,  <43.605766, 40.438335, 55.244431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357410, 40.554771, 54.567715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359020, 40.898438, 54.772388>,  <43.359985, 41.104637, 54.895191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359020, 40.898438, 54.772388>,  <43.357410, 40.554771, 54.567715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359020, 40.898438, 54.772388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574534, 0.416815, -0.704398,
		-0.818471, 0.296815, -0.491941,
		0.004028, 0.859166, 0.511681,
		43.360229, 41.156189, 54.925892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950882, 41.072872, 54.185551>,  <43.357410, 40.554771, 54.567715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950882, 41.072872, 54.185551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222656, 41.243416, 54.424412>,  <43.385719, 41.345741, 54.567730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222656, 41.243416, 54.424412>,  <42.950882, 41.072872, 54.185551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222656, 41.243416, 54.424412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318924, 0.561349, -0.763659,
		-0.660802, 0.709301, 0.245423,
		0.679432, 0.426357, 0.597153,
		43.426487, 41.371323, 54.603558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066658, 41.831890, 54.006310>,  <42.950882, 41.072872, 54.185551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066658, 41.831890, 54.006310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383244, 41.827652, 54.250759>,  <43.573196, 41.825111, 54.397430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383244, 41.827652, 54.250759>,  <43.066658, 41.831890, 54.006310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383244, 41.827652, 54.250759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514534, 0.551221, -0.656818,
		-0.329908, 0.834292, 0.441721,
		0.791464, -0.010591, 0.611124,
		43.620682, 41.824474, 54.434097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313614, 42.573738, 54.015011>,  <43.066658, 41.831890, 54.006310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313614, 42.573738, 54.015011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625618, 42.370552, 54.161194>,  <43.812820, 42.248642, 54.248905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625618, 42.370552, 54.161194>,  <43.313614, 42.573738, 54.015011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625618, 42.370552, 54.161194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605667, 0.465987, -0.644999,
		0.157339, 0.724450, 0.671131,
		0.780008, -0.507966, 0.365457,
		43.859619, 42.218163, 54.270832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838623, 43.083836, 54.155106>,  <43.313614, 42.573738, 54.015011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838623, 43.083836, 54.155106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027229, 42.731964, 54.130295>,  <44.140392, 42.520844, 54.115410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027229, 42.731964, 54.130295>,  <43.838623, 43.083836, 54.155106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027229, 42.731964, 54.130295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748562, 0.436433, -0.499181,
		0.466185, 0.188943, 0.864275,
		0.471515, -0.879674, -0.062023,
		44.168682, 42.468063, 54.111687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879421, 43.735645, 54.272739>,  <43.838623, 43.083836, 54.155106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879421, 43.735645, 54.272739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609009, 43.873871, 54.012409>,  <43.446762, 43.956806, 53.856213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609009, 43.873871, 54.012409>,  <43.879421, 43.735645, 54.272739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609009, 43.873871, 54.012409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736100, -0.357244, 0.574920,
		-0.033833, 0.867735, 0.495874,
		-0.676026, 0.345562, -0.650827,
		43.406200, 43.977539, 53.817162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410946, 44.074703, 54.690865>,  <43.879421, 43.735645, 54.272739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410946, 44.074703, 54.690865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214603, 44.013947, 54.347706>,  <43.096798, 43.977493, 54.141811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214603, 44.013947, 54.347706>,  <43.410946, 44.074703, 54.690865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214603, 44.013947, 54.347706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833241, -0.205799, 0.513183,
		-0.254505, 0.966734, -0.025549,
		-0.490853, -0.151896, -0.857899,
		43.067348, 43.968376, 54.090336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848717, 44.474407, 54.770916>,  <43.410946, 44.074703, 54.690865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848717, 44.474407, 54.770916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767368, 44.176292, 54.516930>,  <42.718559, 43.997425, 54.364536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767368, 44.176292, 54.516930>,  <42.848717, 44.474407, 54.770916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767368, 44.176292, 54.516930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879429, -0.146038, 0.453076,
		-0.430401, 0.650553, -0.625728,
		-0.203370, -0.745288, -0.634970,
		42.706356, 43.952705, 54.326439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170639, 44.625870, 54.473804>,  <42.848717, 44.474407, 54.770916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170639, 44.625870, 54.473804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216663, 44.230461, 54.434654>,  <42.244278, 43.993214, 54.411163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216663, 44.230461, 54.434654>,  <42.170639, 44.625870, 54.473804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216663, 44.230461, 54.434654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911822, -0.144199, 0.384430,
		-0.394132, 0.045010, -0.917951,
		0.115064, -0.988525, -0.097875,
		42.251183, 43.933903, 54.405293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505558, 44.388226, 54.216274>,  <42.170639, 44.625870, 54.473804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505558, 44.388226, 54.216274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665886, 44.037003, 54.320854>,  <41.762081, 43.826267, 54.383602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665886, 44.037003, 54.320854>,  <41.505558, 44.388226, 54.216274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665886, 44.037003, 54.320854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901100, -0.326312, 0.285551,
		-0.165416, -0.350048, -0.922011,
		0.400819, -0.878059, 0.261451,
		41.786133, 43.773586, 54.399288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155903, 43.847633, 53.832893>,  <41.505558, 44.388226, 54.216274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155903, 43.847633, 53.832893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321075, 43.684692, 54.158730>,  <41.420177, 43.586929, 54.354233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321075, 43.684692, 54.158730>,  <41.155903, 43.847633, 53.832893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321075, 43.684692, 54.158730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897376, -0.334762, 0.287490,
		0.155585, -0.849706, -0.503778,
		0.412928, -0.407349, 0.814590,
		41.444954, 43.562489, 54.403107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810631, 43.204929, 53.902580>,  <41.155903, 43.847633, 53.832893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810631, 43.204929, 53.902580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967384, 43.247635, 54.268101>,  <41.061436, 43.273258, 54.487411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967384, 43.247635, 54.268101>,  <40.810631, 43.204929, 53.902580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967384, 43.247635, 54.268101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774001, -0.498675, 0.390188,
		0.497347, -0.860189, -0.112787,
		0.391879, 0.106761, 0.913801,
		41.084949, 43.279663, 54.542240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803684, 42.497551, 54.231270>,  <40.810631, 43.204929, 53.902580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803684, 42.497551, 54.231270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817551, 42.781288, 54.512875>,  <40.825871, 42.951530, 54.681839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817551, 42.781288, 54.512875>,  <40.803684, 42.497551, 54.231270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817551, 42.781288, 54.512875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709325, -0.478777, 0.517330,
		0.704029, -0.517308, 0.486555,
		0.034668, 0.709341, 0.704012,
		40.827950, 42.994091, 54.724079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832314, 42.103230, 54.922428>,  <40.803684, 42.497551, 54.231270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832314, 42.103230, 54.922428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713814, 42.479240, 54.990051>,  <40.642715, 42.704845, 55.030624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713814, 42.479240, 54.990051>,  <40.832314, 42.103230, 54.922428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713814, 42.479240, 54.990051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628294, -0.325120, 0.706784,
		0.719362, 0.103166, 0.686931,
		-0.296251, 0.940029, 0.169061,
		40.624939, 42.761250, 55.040768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746223, 42.180614, 55.677807>,  <40.832314, 42.103230, 54.922428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746223, 42.180614, 55.677807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532181, 42.489304, 55.540340>,  <40.403755, 42.674515, 55.457859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532181, 42.489304, 55.540340>,  <40.746223, 42.180614, 55.677807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532181, 42.489304, 55.540340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689825, -0.164333, 0.705079,
		0.487646, 0.614366, 0.620287,
		-0.535110, 0.771718, -0.343669,
		40.371647, 42.720818, 55.437241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616928, 42.649723, 56.253872>,  <40.746223, 42.180614, 55.677807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616928, 42.649723, 56.253872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313137, 42.721138, 56.003651>,  <40.130863, 42.763988, 55.853519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313137, 42.721138, 56.003651>,  <40.616928, 42.649723, 56.253872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313137, 42.721138, 56.003651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649275, -0.148311, 0.745953,
		0.040406, 0.972691, 0.228561,
		-0.759480, 0.178540, -0.625551,
		40.085293, 42.774700, 55.815987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172165, 42.950684, 56.724133>,  <40.616928, 42.649723, 56.253872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172165, 42.950684, 56.724133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964352, 42.854500, 56.396164>,  <39.839664, 42.796791, 56.199383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964352, 42.854500, 56.396164>,  <40.172165, 42.950684, 56.724133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964352, 42.854500, 56.396164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801069, -0.196784, 0.565301,
		-0.297277, 0.950503, -0.090386,
		-0.519534, -0.240457, -0.819918,
		39.808491, 42.782364, 56.150188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447536, 43.282413, 56.846058>,  <40.172165, 42.950684, 56.724133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447536, 43.282413, 56.846058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384647, 42.990242, 56.580200>,  <39.346912, 42.814938, 56.420685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384647, 42.990242, 56.580200>,  <39.447536, 43.282413, 56.846058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384647, 42.990242, 56.580200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864861, -0.223063, 0.449732,
		-0.476756, 0.645532, -0.596651,
		-0.157226, -0.730433, -0.664642,
		39.337479, 42.771111, 56.380806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766014, 43.355053, 56.656776>,  <39.447536, 43.282413, 56.846058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766014, 43.355053, 56.656776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867386, 42.984131, 56.546585>,  <38.928207, 42.761578, 56.480469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867386, 42.984131, 56.546585>,  <38.766014, 43.355053, 56.656776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867386, 42.984131, 56.546585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866262, -0.344290, 0.362016,
		-0.430542, 0.146894, -0.890537,
		0.253425, -0.927301, -0.275480,
		38.943413, 42.705940, 56.463940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.020218, 36.540382, 51.734436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970310, 36.877335, 51.944130>,  <38.940365, 37.079506, 52.069946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970310, 36.877335, 51.944130>,  <39.020218, 36.540382, 51.734436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970310, 36.877335, 51.944130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353158, 0.531466, -0.769950,
		-0.927207, 0.089071, -0.363805,
		-0.124770, 0.842383, 0.524235,
		38.932880, 37.130051, 52.101402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481350, 37.035809, 51.329140>,  <39.020218, 36.540382, 51.734436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481350, 37.035809, 51.329140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733738, 37.225967, 51.574379>,  <38.885170, 37.340061, 51.721523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733738, 37.225967, 51.574379>,  <38.481350, 37.035809, 51.329140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733738, 37.225967, 51.574379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272414, 0.604180, -0.748837,
		-0.726411, 0.639506, 0.251713,
		0.630966, 0.475393, 0.613093,
		38.923027, 37.368584, 51.758308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345570, 37.708115, 51.162895>,  <38.481350, 37.035809, 51.329140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345570, 37.708115, 51.162895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.687229, 37.748909, 51.366871>,  <38.892223, 37.773384, 51.489258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.687229, 37.748909, 51.366871>,  <38.345570, 37.708115, 51.162895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687229, 37.748909, 51.366871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321163, 0.667789, -0.671501,
		-0.409013, 0.737332, 0.537634,
		0.854144, 0.101985, 0.509938,
		38.943474, 37.779503, 51.519852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564659, 38.356865, 51.004845>,  <38.345570, 37.708115, 51.162895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564659, 38.356865, 51.004845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898392, 38.198936, 51.158737>,  <39.098629, 38.104179, 51.251072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898392, 38.198936, 51.158737>,  <38.564659, 38.356865, 51.004845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898392, 38.198936, 51.158737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545187, 0.487566, -0.681946,
		0.081667, 0.778714, 0.622041,
		0.834327, -0.394821, 0.384727,
		39.148689, 38.080490, 51.274155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074333, 38.936127, 51.175732>,  <38.564659, 38.356865, 51.004845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074333, 38.936127, 51.175732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286438, 38.597694, 51.153908>,  <39.413700, 38.394634, 51.140812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286438, 38.597694, 51.153908>,  <39.074333, 38.936127, 51.175732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286438, 38.597694, 51.153908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632037, 0.437370, -0.639717,
		0.565112, 0.304734, 0.766672,
		0.530262, -0.846076, -0.054559,
		39.445518, 38.343872, 51.137539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738697, 39.170006, 51.130600>,  <39.074333, 38.936127, 51.175732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738697, 39.170006, 51.130600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788227, 38.788200, 51.022110>,  <39.817947, 38.559116, 50.957016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788227, 38.788200, 51.022110>,  <39.738697, 39.170006, 51.130600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788227, 38.788200, 51.022110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744829, 0.270007, -0.610185,
		0.655665, -0.126456, 0.744387,
		0.123829, -0.954518, -0.271222,
		39.825375, 38.501846, 50.940742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476002, 38.994419, 51.249271>,  <39.738697, 39.170006, 51.130600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476002, 38.994419, 51.249271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300545, 38.759331, 50.977337>,  <40.195271, 38.618279, 50.814178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300545, 38.759331, 50.977337>,  <40.476002, 38.994419, 51.249271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300545, 38.759331, 50.977337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686365, 0.269212, -0.675595,
		0.580082, -0.762958, 0.285305,
		-0.438643, -0.587724, -0.679833,
		40.168953, 38.583015, 50.773388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099789, 38.776505, 50.765331>,  <40.476002, 38.994419, 51.249271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099789, 38.776505, 50.765331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766396, 38.693230, 50.560600>,  <40.566360, 38.643265, 50.437763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766396, 38.693230, 50.560600>,  <41.099789, 38.776505, 50.765331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766396, 38.693230, 50.560600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465939, 0.233087, -0.853564,
		0.296999, -0.949910, -0.097272,
		-0.833482, -0.208185, -0.511827,
		40.516350, 38.630775, 50.407051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272903, 38.343372, 50.130180>,  <41.099789, 38.776505, 50.765331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272903, 38.343372, 50.130180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.921310, 38.519447, 50.056831>,  <40.710354, 38.625092, 50.012821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.921310, 38.519447, 50.056831>,  <41.272903, 38.343372, 50.130180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921310, 38.519447, 50.056831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307621, 0.229608, -0.923390,
		-0.364364, -0.868051, -0.337232,
		-0.878981, 0.440190, -0.183370,
		40.657616, 38.651505, 50.001820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953487, 37.950169, 49.500366>,  <41.272903, 38.343372, 50.130180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953487, 37.950169, 49.500366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.817341, 38.324165, 49.540226>,  <40.735653, 38.548565, 49.564144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.817341, 38.324165, 49.540226>,  <40.953487, 37.950169, 49.500366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817341, 38.324165, 49.540226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348133, 0.223757, -0.910349,
		-0.873471, -0.275163, -0.401663,
		-0.340369, 0.934996, 0.099652,
		40.715229, 38.604664, 49.570122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687248, 38.061565, 48.794922>,  <40.953487, 37.950169, 49.500366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687248, 38.061565, 48.794922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662560, 38.421928, 48.966766>,  <40.647747, 38.638145, 49.069874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662560, 38.421928, 48.966766>,  <40.687248, 38.061565, 48.794922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662560, 38.421928, 48.966766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183956, 0.433325, -0.882264,
		-0.980994, 0.024570, -0.192474,
		-0.061726, 0.900903, 0.429609,
		40.644043, 38.692200, 49.095650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327587, 38.417217, 48.364792>,  <40.687248, 38.061565, 48.794922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327587, 38.417217, 48.364792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.545719, 38.681526, 48.571091>,  <40.676598, 38.840111, 48.694870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.545719, 38.681526, 48.571091>,  <40.327587, 38.417217, 48.364792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545719, 38.681526, 48.571091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246510, 0.461655, -0.852119,
		-0.801154, 0.591824, 0.088868,
		0.545331, 0.660772, 0.515747,
		40.709320, 38.879757, 48.725815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257969, 38.964691, 48.020309>,  <40.327587, 38.417217, 48.364792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257969, 38.964691, 48.020309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586235, 39.049667, 48.232491>,  <40.783195, 39.100651, 48.359798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586235, 39.049667, 48.232491>,  <40.257969, 38.964691, 48.020309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586235, 39.049667, 48.232491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408702, 0.430546, -0.804732,
		-0.399339, 0.877212, 0.266510,
		0.820665, 0.212438, 0.530452,
		40.832436, 39.113400, 48.391624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467796, 39.694012, 47.861233>,  <40.257969, 38.964691, 48.020309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467796, 39.694012, 47.861233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.788979, 39.484253, 47.974564>,  <40.981689, 39.358398, 48.042564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.788979, 39.484253, 47.974564>,  <40.467796, 39.694012, 47.861233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788979, 39.484253, 47.974564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536440, 0.428605, -0.727000,
		0.259797, 0.735738, 0.625456,
		0.802956, -0.524392, 0.283329,
		41.029865, 39.326935, 48.059563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481983, 40.345406, 48.183117>,  <40.467796, 39.694012, 47.861233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481983, 40.345406, 48.183117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240471, 40.663902, 48.198311>,  <40.095566, 40.855000, 48.207428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240471, 40.663902, 48.198311>,  <40.481983, 40.345406, 48.183117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240471, 40.663902, 48.198311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646394, -0.516924, 0.561217,
		0.466504, 0.314295, 0.826796,
		-0.603779, 0.796246, 0.037988,
		40.059338, 40.902775, 48.209709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268921, 40.336929, 48.777496>,  <40.481983, 40.345406, 48.183117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268921, 40.336929, 48.777496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.981251, 40.592537, 48.668358>,  <39.808647, 40.745903, 48.602875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.981251, 40.592537, 48.668358>,  <40.268921, 40.336929, 48.777496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981251, 40.592537, 48.668358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616598, -0.405924, 0.674561,
		0.320303, 0.653362, 0.685947,
		-0.719175, 0.639018, -0.272843,
		39.765499, 40.784241, 48.586506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954140, 40.679108, 49.398052>,  <40.268921, 40.336929, 48.777496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954140, 40.679108, 49.398052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667091, 40.733856, 49.124912>,  <39.494862, 40.766705, 48.961029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667091, 40.733856, 49.124912>,  <39.954140, 40.679108, 49.398052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667091, 40.733856, 49.124912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688053, -0.290954, 0.664777,
		-0.107691, 0.946897, 0.302968,
		-0.717625, 0.136868, -0.682848,
		39.451805, 40.774918, 48.920059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439293, 41.147091, 49.691395>,  <39.954140, 40.679108, 49.398052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439293, 41.147091, 49.691395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249283, 40.972076, 49.386002>,  <39.135277, 40.867069, 49.202766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249283, 40.972076, 49.386002>,  <39.439293, 41.147091, 49.691395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249283, 40.972076, 49.386002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759619, -0.234096, 0.606777,
		-0.444214, 0.868196, -0.221155,
		-0.475030, -0.437532, -0.763487,
		39.106773, 40.840816, 49.156956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827671, 41.496433, 49.680840>,  <39.439293, 41.147091, 49.691395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827671, 41.496433, 49.680840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770203, 41.159721, 49.472702>,  <38.735722, 40.957695, 49.347820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770203, 41.159721, 49.472702>,  <38.827671, 41.496433, 49.680840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770203, 41.159721, 49.472702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777427, -0.229343, 0.585670,
		-0.612345, 0.488674, -0.621475,
		-0.143671, -0.841783, -0.520346,
		38.727100, 40.907185, 49.316597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034481, 41.363735, 49.689426>,  <38.827671, 41.496433, 49.680840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034481, 41.363735, 49.689426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217567, 41.024147, 49.583794>,  <38.327419, 40.820393, 49.520412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217567, 41.024147, 49.583794>,  <38.034481, 41.363735, 49.689426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217567, 41.024147, 49.583794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679859, -0.525615, 0.511391,
		-0.572964, -0.054531, -0.817764,
		0.457716, -0.848973, -0.264085,
		38.354881, 40.769455, 49.504566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516235, 40.922855, 49.643780>,  <38.034481, 41.363735, 49.689426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516235, 40.922855, 49.643780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.836617, 40.692665, 49.709873>,  <38.028847, 40.554550, 49.749527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.836617, 40.692665, 49.709873>,  <37.516235, 40.922855, 49.643780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836617, 40.692665, 49.709873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586666, -0.699244, 0.408510,
		-0.119549, -0.424134, -0.897674,
		0.800956, -0.575472, 0.165231,
		38.076904, 40.520023, 49.759441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369129, 40.278919, 49.342632>,  <37.516235, 40.922855, 49.643780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369129, 40.278919, 49.342632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645363, 40.219521, 49.625771>,  <37.811104, 40.183884, 49.795654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645363, 40.219521, 49.625771>,  <37.369129, 40.278919, 49.342632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645363, 40.219521, 49.625771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597621, -0.668395, 0.442829,
		0.407362, -0.728833, -0.550326,
		0.690583, -0.148495, 0.707845,
		37.852539, 40.174973, 49.838123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225731, 39.647224, 49.632465>,  <37.369129, 40.278919, 49.342632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225731, 39.647224, 49.632465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491272, 39.752693, 49.912399>,  <37.650597, 39.815975, 50.080360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491272, 39.752693, 49.912399>,  <37.225731, 39.647224, 49.632465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491272, 39.752693, 49.912399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307861, -0.756469, 0.577040,
		0.681554, -0.598525, -0.421013,
		0.663856, 0.263671, 0.699837,
		37.690430, 39.831795, 50.122349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494812, 39.067303, 49.937866>,  <37.225731, 39.647224, 49.632465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494812, 39.067303, 49.937866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.562141, 39.333565, 50.228676>,  <37.602539, 39.493324, 50.403160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.562141, 39.333565, 50.228676>,  <37.494812, 39.067303, 49.937866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562141, 39.333565, 50.228676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372723, -0.639810, 0.672101,
		0.912548, -0.384112, 0.140409,
		0.168327, 0.665658, 0.727025,
		37.612640, 39.533264, 50.446785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706135, 38.651089, 50.575073>,  <37.494812, 39.067303, 49.937866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706135, 38.651089, 50.575073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561394, 39.010208, 50.675495>,  <37.474548, 39.225677, 50.735748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561394, 39.010208, 50.675495>,  <37.706135, 38.651089, 50.575073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561394, 39.010208, 50.675495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419303, -0.397266, 0.816311,
		0.832616, 0.190114, 0.520199,
		-0.361849, 0.897795, 0.251055,
		37.452839, 39.279549, 50.750813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846909, 38.674690, 51.287350>,  <37.706135, 38.651089, 50.575073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846909, 38.674690, 51.287350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560738, 38.934364, 51.184032>,  <37.389034, 39.090168, 51.122044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560738, 38.934364, 51.184032>,  <37.846909, 38.674690, 51.287350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560738, 38.934364, 51.184032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571773, -0.331543, 0.750437,
		0.401538, 0.684570, 0.608383,
		-0.715432, 0.649186, -0.258291,
		37.346107, 39.129120, 51.106544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667587, 38.918369, 51.982380>,  <37.846909, 38.674690, 51.287350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667587, 38.918369, 51.982380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360882, 39.010620, 51.742752>,  <37.176857, 39.065971, 51.598976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360882, 39.010620, 51.742752>,  <37.667587, 38.918369, 51.982380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360882, 39.010620, 51.742752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641343, -0.235413, 0.730246,
		0.027385, 0.944136, 0.328417,
		-0.766765, 0.230626, -0.599068,
		37.130852, 39.079807, 51.563030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203144, 39.283207, 52.395386>,  <37.667587, 38.918369, 51.982380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203144, 39.283207, 52.395386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029015, 39.092865, 52.089691>,  <36.924538, 38.978661, 51.906273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029015, 39.092865, 52.089691>,  <37.203144, 39.283207, 52.395386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029015, 39.092865, 52.089691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602100, -0.477220, 0.640107,
		-0.669306, 0.738800, -0.078765,
		-0.435323, -0.475852, -0.764238,
		36.898418, 38.950108, 51.860420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824165, 39.971241, 52.581249>,  <37.203144, 39.283207, 52.395386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824165, 39.971241, 52.581249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858360, 40.241478, 52.874168>,  <36.878876, 40.403622, 53.049919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858360, 40.241478, 52.874168>,  <36.824165, 39.971241, 52.581249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858360, 40.241478, 52.874168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592505, 0.556435, -0.582511,
		-0.801018, 0.483690, -0.352724,
		0.085487, 0.675592, 0.732303,
		36.884007, 40.444157, 53.093861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685520, 40.584911, 52.257355>,  <36.824165, 39.971241, 52.581249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685520, 40.584911, 52.257355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860390, 40.705536, 52.596279>,  <36.965313, 40.777912, 52.799633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860390, 40.705536, 52.596279>,  <36.685520, 40.584911, 52.257355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860390, 40.705536, 52.596279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640124, 0.557444, -0.528675,
		-0.631758, 0.773508, 0.050662,
		0.437175, 0.301565, 0.847311,
		36.991543, 40.796005, 52.850471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785038, 41.255898, 52.187538>,  <36.685520, 40.584911, 52.257355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785038, 41.255898, 52.187538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044277, 41.131943, 52.465801>,  <37.199821, 41.057568, 52.632759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044277, 41.131943, 52.465801>,  <36.785038, 41.255898, 52.187538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044277, 41.131943, 52.465801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717909, 0.553420, -0.422296,
		-0.254125, 0.773107, 0.581142,
		0.648095, -0.309891, 0.695658,
		37.238705, 41.038975, 52.674500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035500, 41.841667, 52.600998>,  <36.785038, 41.255898, 52.187538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035500, 41.841667, 52.600998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319504, 41.561607, 52.631126>,  <37.489906, 41.393570, 52.649204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319504, 41.561607, 52.631126>,  <37.035500, 41.841667, 52.600998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319504, 41.561607, 52.631126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690340, 0.670950, -0.270660,
		0.138966, 0.244170, 0.959724,
		0.710013, -0.700148, 0.075321,
		37.532509, 41.351562, 52.653721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630257, 42.215492, 52.983444>,  <37.035500, 41.841667, 52.600998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630257, 42.215492, 52.983444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760628, 41.899948, 52.775036>,  <37.838848, 41.710621, 52.649990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760628, 41.899948, 52.775036>,  <37.630257, 42.215492, 52.983444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760628, 41.899948, 52.775036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841733, 0.493051, -0.219970,
		0.430418, -0.366870, 0.824710,
		0.325923, -0.788865, -0.521025,
		37.858406, 41.663288, 52.618729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250404, 42.166325, 53.254623>,  <37.630257, 42.215492, 52.983444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250404, 42.166325, 53.254623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248787, 41.948456, 52.919167>,  <38.247814, 41.817734, 52.717892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248787, 41.948456, 52.919167>,  <38.250404, 42.166325, 53.254623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248787, 41.948456, 52.919167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926592, 0.313332, -0.207968,
		0.376047, -0.777919, 0.503419,
		-0.004045, -0.544670, -0.838641,
		38.247574, 41.785053, 52.667576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960846, 41.751499, 53.170296>,  <38.250404, 42.166325, 53.254623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960846, 41.751499, 53.170296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787300, 41.799294, 52.813087>,  <38.683170, 41.827972, 52.598763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787300, 41.799294, 52.813087>,  <38.960846, 41.751499, 53.170296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787300, 41.799294, 52.813087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872666, 0.302247, -0.383537,
		0.224084, -0.945711, -0.235410,
		-0.433867, 0.119490, -0.893018,
		38.657139, 41.835140, 52.545181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554039, 41.549629, 52.768085>,  <38.960846, 41.751499, 53.170296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554039, 41.549629, 52.768085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303173, 41.747826, 52.527702>,  <39.152653, 41.866741, 52.383472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303173, 41.747826, 52.527702>,  <39.554039, 41.549629, 52.768085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303173, 41.747826, 52.527702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773148, 0.302559, -0.557405,
		-0.094362, -0.814217, -0.572841,
		-0.627167, 0.495489, -0.600960,
		39.115025, 41.896473, 52.347416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711876, 41.363403, 52.081570>,  <39.554039, 41.549629, 52.768085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711876, 41.363403, 52.081570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526451, 41.715424, 52.040348>,  <39.415195, 41.926636, 52.015614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526451, 41.715424, 52.040348>,  <39.711876, 41.363403, 52.081570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526451, 41.715424, 52.040348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823186, 0.384716, -0.417561,
		-0.327827, -0.278402, -0.902786,
		-0.463566, 0.880049, -0.103057,
		39.387383, 41.979439, 52.009430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691456, 41.499874, 51.361397>,  <39.711876, 41.363403, 52.081570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691456, 41.499874, 51.361397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632744, 41.866913, 51.509167>,  <39.597515, 42.087135, 51.597828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632744, 41.866913, 51.509167>,  <39.691456, 41.499874, 51.361397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632744, 41.866913, 51.509167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711413, 0.357410, -0.605103,
		-0.687275, 0.173996, -0.705250,
		-0.146778, 0.917596, 0.369423,
		39.588711, 42.142193, 51.619995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690777, 42.048542, 50.751793>,  <39.691456, 41.499874, 51.361397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690777, 42.048542, 50.751793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.749352, 42.287582, 51.067116>,  <39.784496, 42.431007, 51.256310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.749352, 42.287582, 51.067116>,  <39.690777, 42.048542, 50.751793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749352, 42.287582, 51.067116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783597, 0.416303, -0.461159,
		-0.603765, 0.685245, -0.407318,
		0.146439, 0.597604, 0.788305,
		39.793282, 42.466866, 51.303608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914459, 42.547123, 50.387962>,  <39.690777, 42.048542, 50.751793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914459, 42.547123, 50.387962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010597, 42.639938, 50.764980>,  <40.068279, 42.695629, 50.991192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010597, 42.639938, 50.764980>,  <39.914459, 42.547123, 50.387962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010597, 42.639938, 50.764980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707360, 0.623090, -0.333767,
		-0.664739, 0.746937, -0.014382,
		0.240342, 0.232041, 0.942546,
		40.082699, 42.709549, 51.047745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814774, 43.332371, 50.442211>,  <39.914459, 42.547123, 50.387962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814774, 43.332371, 50.442211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069412, 43.195190, 50.718510>,  <40.222195, 43.112881, 50.884289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069412, 43.195190, 50.718510>,  <39.814774, 43.332371, 50.442211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069412, 43.195190, 50.718510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716163, 0.595181, -0.364514,
		-0.286108, 0.726735, 0.624499,
		0.636595, -0.342952, 0.690746,
		40.260391, 43.092304, 50.925735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103336, 43.877506, 50.720848>,  <39.814774, 43.332371, 50.442211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103336, 43.877506, 50.720848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.356270, 43.572845, 50.777481>,  <40.508030, 43.390049, 50.811459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.356270, 43.572845, 50.777481>,  <40.103336, 43.877506, 50.720848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356270, 43.572845, 50.777481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718080, 0.507669, -0.476060,
		0.290715, 0.402695, 0.867941,
		0.632334, -0.761649, 0.141580,
		40.545971, 43.344349, 50.819954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.229210, 42.970863, 56.221741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.431183, 42.652527, 56.355415>,  <38.552364, 42.461525, 56.435619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.431183, 42.652527, 56.355415>,  <38.229210, 42.970863, 56.221741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431183, 42.652527, 56.355415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834508, -0.351168, 0.424591,
		-0.220552, -0.493270, -0.841452,
		0.504929, -0.795843, 0.334187,
		38.582661, 42.413773, 56.455673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844646, 42.382092, 56.045349>,  <38.229210, 42.970863, 56.221741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844646, 42.382092, 56.045349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.086906, 42.304176, 56.353958>,  <38.232262, 42.257427, 56.539124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.086906, 42.304176, 56.353958>,  <37.844646, 42.382092, 56.045349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086906, 42.304176, 56.353958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751116, -0.460032, 0.473492,
		0.262697, -0.866274, -0.424924,
		0.605652, -0.194782, 0.771521,
		38.268600, 42.245743, 56.585415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925327, 41.654850, 56.072117>,  <37.844646, 42.382092, 56.045349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925327, 41.654850, 56.072117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017883, 41.781662, 56.440018>,  <38.073418, 41.857750, 56.660759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017883, 41.781662, 56.440018>,  <37.925327, 41.654850, 56.072117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017883, 41.781662, 56.440018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660305, -0.643124, 0.387799,
		0.714462, -0.697052, 0.060525,
		0.231391, 0.317033, 0.919754,
		38.087299, 41.876770, 56.715942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827713, 41.029358, 56.465351>,  <37.925327, 41.654850, 56.072117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827713, 41.029358, 56.465351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.833000, 41.326523, 56.733055>,  <37.836170, 41.504822, 56.893677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.833000, 41.326523, 56.733055>,  <37.827713, 41.029358, 56.465351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833000, 41.326523, 56.733055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421196, -0.602902, 0.677571,
		0.906873, -0.290844, 0.304944,
		0.013216, 0.742913, 0.669258,
		37.836964, 41.549397, 56.933834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079018, 40.750145, 57.046856>,  <37.827713, 41.029358, 56.465351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079018, 40.750145, 57.046856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884537, 41.071762, 57.183750>,  <37.767849, 41.264732, 57.265888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884537, 41.071762, 57.183750>,  <38.079018, 40.750145, 57.046856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884537, 41.071762, 57.183750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470208, -0.570831, 0.673095,
		0.736556, 0.166335, 0.655605,
		-0.486199, 0.804043, 0.342237,
		37.738678, 41.312973, 57.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115467, 40.737003, 57.777729>,  <38.079018, 40.750145, 57.046856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115467, 40.737003, 57.777729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822670, 41.004089, 57.723557>,  <37.646992, 41.164341, 57.691051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822670, 41.004089, 57.723557>,  <38.115467, 40.737003, 57.777729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822670, 41.004089, 57.723557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561267, -0.478294, 0.675436,
		0.386222, 0.570428, 0.724875,
		-0.731991, 0.667717, -0.135435,
		37.603073, 41.204403, 57.682926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890541, 40.943069, 58.433060>,  <38.115467, 40.737003, 57.777729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890541, 40.943069, 58.433060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.565598, 41.013657, 58.210732>,  <37.370632, 41.056007, 58.077335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.565598, 41.013657, 58.210732>,  <37.890541, 40.943069, 58.433060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565598, 41.013657, 58.210732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576435, -0.387283, 0.719537,
		-0.088285, 0.904916, 0.416334,
		-0.812360, 0.176466, -0.555816,
		37.321888, 41.066597, 58.043987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387901, 41.288528, 58.866329>,  <37.890541, 40.943069, 58.433060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387901, 41.288528, 58.866329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185059, 41.126549, 58.561996>,  <37.063354, 41.029362, 58.379398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185059, 41.126549, 58.561996>,  <37.387901, 41.288528, 58.866329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185059, 41.126549, 58.561996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698151, -0.324639, 0.638118,
		-0.505402, 0.854765, -0.118091,
		-0.507104, -0.404952, -0.760828,
		37.032928, 41.005062, 58.333748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687225, 41.510864, 59.015259>,  <37.387901, 41.288528, 58.866329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687225, 41.510864, 59.015259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.640388, 41.201523, 58.766033>,  <36.612286, 41.015919, 58.616497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.640388, 41.201523, 58.766033>,  <36.687225, 41.510864, 59.015259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640388, 41.201523, 58.766033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843677, -0.253518, 0.473220,
		-0.523926, 0.581077, -0.622778,
		-0.117092, -0.773355, -0.623066,
		36.605263, 40.969517, 58.579113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001812, 41.472664, 59.046555>,  <36.687225, 41.510864, 59.015259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001812, 41.472664, 59.046555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131294, 41.138802, 58.868309>,  <36.208984, 40.938484, 58.761360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131294, 41.138802, 58.868309>,  <36.001812, 41.472664, 59.046555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131294, 41.138802, 58.868309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783233, -0.500607, 0.368698,
		-0.530813, 0.229673, -0.815774,
		0.323703, -0.834651, -0.445616,
		36.228405, 40.888405, 58.734623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465984, 41.165962, 58.670250>,  <36.001812, 41.472664, 59.046555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465984, 41.165962, 58.670250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720356, 40.867889, 58.750557>,  <35.872978, 40.689045, 58.798740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720356, 40.867889, 58.750557>,  <35.465984, 41.165962, 58.670250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720356, 40.867889, 58.750557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733991, -0.503613, 0.455665,
		-0.238445, -0.437128, -0.867216,
		0.635925, -0.745180, 0.200764,
		35.911133, 40.644337, 58.810787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107212, 40.504288, 58.481060>,  <35.465984, 41.165962, 58.670250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107212, 40.504288, 58.481060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.395515, 40.417641, 58.744446>,  <35.568497, 40.365654, 58.902477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.395515, 40.417641, 58.744446>,  <35.107212, 40.504288, 58.481060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395515, 40.417641, 58.744446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669840, -0.462089, 0.581195,
		0.178374, -0.859972, -0.478154,
		0.720761, -0.216617, 0.658468,
		35.611744, 40.352657, 58.941986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951889, 39.783607, 58.538998>,  <35.107212, 40.504288, 58.481060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951889, 39.783607, 58.538998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162674, 39.908852, 58.855042>,  <35.289143, 39.983997, 59.044670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162674, 39.908852, 58.855042>,  <34.951889, 39.783607, 58.538998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162674, 39.908852, 58.855042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552994, -0.579633, 0.598517,
		0.645378, -0.752321, -0.132294,
		0.526958, 0.313112, 0.790112,
		35.320763, 40.002785, 59.092075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299652, 39.317486, 59.030823>,  <34.951889, 39.783607, 58.538998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299652, 39.317486, 59.030823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136406, 39.633301, 59.214157>,  <35.038456, 39.822788, 59.324158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136406, 39.633301, 59.214157>,  <35.299652, 39.317486, 59.030823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136406, 39.633301, 59.214157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615003, -0.608807, 0.501125,
		0.674693, -0.077357, 0.734034,
		-0.408119, 0.789538, 0.458332,
		35.013969, 39.870163, 59.351658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456120, 39.289913, 58.327660>,  <35.299652, 39.317486, 59.030823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456120, 39.289913, 58.327660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096638, 39.144356, 58.229752>,  <34.880947, 39.057022, 58.171005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096638, 39.144356, 58.229752>,  <35.456120, 39.289913, 58.327660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096638, 39.144356, 58.229752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125651, 0.321087, -0.938677,
		0.420173, -0.874348, -0.242839,
		-0.898703, -0.363894, -0.244775,
		34.827026, 39.035187, 58.156319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628639, 38.767658, 57.751793>,  <35.456120, 39.289913, 58.327660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628639, 38.767658, 57.751793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245327, 38.881943, 57.755035>,  <35.015339, 38.950516, 57.756981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245327, 38.881943, 57.755035>,  <35.628639, 38.767658, 57.751793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245327, 38.881943, 57.755035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015129, 0.079009, -0.996759,
		-0.285431, -0.955052, -0.080035,
		-0.958280, 0.285717, 0.008102,
		34.957844, 38.967659, 57.757465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341164, 38.422039, 57.141739>,  <35.628639, 38.767658, 57.751793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341164, 38.422039, 57.141739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.093384, 38.723274, 57.230415>,  <34.944717, 38.904015, 57.283623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.093384, 38.723274, 57.230415>,  <35.341164, 38.422039, 57.141739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093384, 38.723274, 57.230415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005293, 0.278381, -0.960456,
		-0.785022, -0.596124, -0.168456,
		-0.619445, 0.753087, 0.221690,
		34.907551, 38.949200, 57.296921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944351, 38.476948, 56.557648>,  <35.341164, 38.422039, 57.141739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944351, 38.476948, 56.557648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881161, 38.829704, 56.735329>,  <34.843246, 39.041359, 56.841938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881161, 38.829704, 56.735329>,  <34.944351, 38.476948, 56.557648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881161, 38.829704, 56.735329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015477, 0.452007, -0.891880,
		-0.987322, -0.134020, -0.085055,
		-0.157976, 0.881889, 0.444202,
		34.833767, 39.094273, 56.868587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409115, 38.714745, 56.162518>,  <34.944351, 38.476948, 56.557648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409115, 38.714745, 56.162518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568913, 39.024178, 56.359283>,  <34.664791, 39.209835, 56.477345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568913, 39.024178, 56.359283>,  <34.409115, 38.714745, 56.162518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568913, 39.024178, 56.359283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022767, 0.528057, -0.848903,
		-0.916455, 0.350328, 0.193342,
		0.399490, 0.773580, 0.491917,
		34.688759, 39.256252, 56.506859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125942, 39.293770, 55.898426>,  <34.409115, 38.714745, 56.162518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125942, 39.293770, 55.898426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.451973, 39.449982, 56.069603>,  <34.647591, 39.543709, 56.172310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.451973, 39.449982, 56.069603>,  <34.125942, 39.293770, 55.898426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451973, 39.449982, 56.069603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225764, 0.466160, -0.855409,
		-0.533556, 0.793837, 0.291787,
		0.815075, 0.390534, 0.427943,
		34.696495, 39.567142, 56.197987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155304, 40.024372, 55.673306>,  <34.125942, 39.293770, 55.898426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155304, 40.024372, 55.673306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.524555, 39.900703, 55.764744>,  <34.746105, 39.826504, 55.819607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.524555, 39.900703, 55.764744>,  <34.155304, 40.024372, 55.673306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524555, 39.900703, 55.764744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345677, 0.406990, -0.845498,
		0.168368, 0.859519, 0.482576,
		0.923125, -0.309170, 0.228592,
		34.801491, 39.807953, 55.833321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559429, 40.498653, 55.324833>,  <34.155304, 40.024372, 55.673306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559429, 40.498653, 55.324833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827789, 40.227516, 55.445114>,  <34.988804, 40.064835, 55.517281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827789, 40.227516, 55.445114>,  <34.559429, 40.498653, 55.324833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827789, 40.227516, 55.445114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468083, 0.072602, -0.880697,
		0.575144, 0.731613, 0.365995,
		0.670901, -0.677844, 0.300699,
		35.029060, 40.024162, 55.535324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280823, 40.849648, 55.378540>,  <34.559429, 40.498653, 55.324833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280823, 40.849648, 55.378540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334023, 40.462173, 55.294678>,  <35.365944, 40.229691, 55.244358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334023, 40.462173, 55.294678>,  <35.280823, 40.849648, 55.378540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334023, 40.462173, 55.294678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568504, 0.247841, -0.784460,
		0.811858, -0.014859, 0.583665,
		0.133000, -0.968687, -0.209660,
		35.373924, 40.171566, 55.231781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950714, 40.821442, 55.260086>,  <35.280823, 40.849648, 55.378540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950714, 40.821442, 55.260086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839882, 40.485435, 55.073494>,  <35.773380, 40.283833, 54.961540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839882, 40.485435, 55.073494>,  <35.950714, 40.821442, 55.260086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839882, 40.485435, 55.073494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577250, 0.242578, -0.779704,
		0.768119, -0.485317, 0.417684,
		-0.277083, -0.840014, -0.466478,
		35.756756, 40.233433, 54.933552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576572, 40.439674, 55.076252>,  <35.950714, 40.821442, 55.260086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576572, 40.439674, 55.076252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288086, 40.285530, 54.846001>,  <36.114994, 40.193043, 54.707851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288086, 40.285530, 54.846001>,  <36.576572, 40.439674, 55.076252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288086, 40.285530, 54.846001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618816, 0.015028, -0.785392,
		0.311309, -0.922644, 0.227629,
		-0.721217, -0.385360, -0.575625,
		36.071720, 40.169922, 54.673313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973019, 39.906750, 54.591251>,  <36.576572, 40.439674, 55.076252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973019, 39.906750, 54.591251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.636398, 40.018059, 54.406055>,  <36.434425, 40.084843, 54.294937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.636398, 40.018059, 54.406055>,  <36.973019, 39.906750, 54.591251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636398, 40.018059, 54.406055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519815, 0.184028, -0.834222,
		-0.146935, -0.942709, -0.299517,
		-0.841547, 0.278270, -0.462994,
		36.383934, 40.101540, 54.267159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099361, 39.639660, 54.020695>,  <36.973019, 39.906750, 54.591251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099361, 39.639660, 54.020695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827881, 39.924515, 53.948891>,  <36.664993, 40.095428, 53.905807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827881, 39.924515, 53.948891>,  <37.099361, 39.639660, 54.020695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827881, 39.924515, 53.948891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456317, 0.217388, -0.862854,
		-0.575448, -0.667534, -0.472503,
		-0.678701, 0.712139, -0.179511,
		36.624271, 40.138157, 53.895039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945320, 39.581322, 53.264835>,  <37.099361, 39.639660, 54.020695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945320, 39.581322, 53.264835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820564, 39.934372, 53.405518>,  <36.745712, 40.146202, 53.489925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820564, 39.934372, 53.405518>,  <36.945320, 39.581322, 53.264835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820564, 39.934372, 53.405518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355037, 0.451618, -0.818529,
		-0.881292, -0.130421, -0.454219,
		-0.311887, 0.882628, 0.351703,
		36.726997, 40.199162, 53.511028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467796, 39.357006, 52.622074>,  <36.945320, 39.581322, 53.264835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467796, 39.357006, 52.622074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435825, 39.093193, 52.323109>,  <36.416641, 38.934906, 52.143730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435825, 39.093193, 52.323109>,  <36.467796, 39.357006, 52.622074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435825, 39.093193, 52.323109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622359, -0.552693, 0.554256,
		-0.778640, 0.509462, -0.366288,
		-0.079928, -0.659529, -0.747418,
		36.411846, 38.895336, 52.098885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761021, 39.268051, 52.426159>,  <36.467796, 39.357006, 52.622074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761021, 39.268051, 52.426159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933525, 38.927673, 52.306221>,  <36.037029, 38.723446, 52.234261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933525, 38.927673, 52.306221>,  <35.761021, 39.268051, 52.426159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933525, 38.927673, 52.306221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574211, -0.515211, 0.636270,
		-0.695912, -0.102227, -0.710813,
		0.431263, -0.850945, -0.299842,
		36.062904, 38.672390, 52.216270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232273, 38.811348, 52.472015>,  <35.761021, 39.268051, 52.426159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232273, 38.811348, 52.472015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.564560, 38.589043, 52.459152>,  <35.763931, 38.455658, 52.451435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.564560, 38.589043, 52.459152>,  <35.232273, 38.811348, 52.472015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564560, 38.589043, 52.459152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374477, -0.600609, 0.706424,
		-0.411918, -0.574798, -0.707058,
		0.830717, -0.555766, -0.032153,
		35.813774, 38.422314, 52.449505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011265, 38.113506, 52.238548>,  <35.232273, 38.811348, 52.472015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011265, 38.113506, 52.238548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.366936, 38.094933, 52.420631>,  <35.580338, 38.083790, 52.529881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.366936, 38.094933, 52.420631>,  <35.011265, 38.113506, 52.238548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366936, 38.094933, 52.420631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359011, -0.687587, 0.631138,
		0.283686, -0.724616, -0.628056,
		0.889175, -0.046434, 0.455204,
		35.633690, 38.081001, 52.557194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044662, 37.419067, 52.397984>,  <35.011265, 38.113506, 52.238548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044662, 37.419067, 52.397984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309837, 37.584396, 52.647678>,  <35.468945, 37.683594, 52.797497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309837, 37.584396, 52.647678>,  <35.044662, 37.419067, 52.397984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309837, 37.584396, 52.647678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274494, -0.641540, 0.716296,
		0.696538, -0.646210, -0.311846,
		0.662939, 0.413327, 0.624237,
		35.508720, 37.708393, 52.834949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436234, 36.832787, 52.704430>,  <35.044662, 37.419067, 52.397984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436234, 36.832787, 52.704430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487629, 37.136185, 52.959984>,  <35.518467, 37.318226, 53.113316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487629, 37.136185, 52.959984>,  <35.436234, 36.832787, 52.704430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487629, 37.136185, 52.959984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308569, -0.581666, 0.752629,
		0.942484, -0.293842, 0.159313,
		0.128487, 0.758500, 0.638881,
		35.526176, 37.363735, 53.151649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614891, 36.452976, 53.244282>,  <35.436234, 36.832787, 52.704430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614891, 36.452976, 53.244282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544441, 36.807907, 53.414757>,  <35.502171, 37.020866, 53.517044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544441, 36.807907, 53.414757>,  <35.614891, 36.452976, 53.244282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544441, 36.807907, 53.414757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359075, -0.461036, 0.811487,
		0.916540, -0.010113, 0.399814,
		-0.176122, 0.887324, 0.426189,
		35.491604, 37.074104, 53.542614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387829, 36.479786, 53.449173>,  <35.614891, 36.452976, 53.244282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387829, 36.479786, 53.449173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.666706, 36.284622, 53.659264>,  <36.834034, 36.167526, 53.785316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.666706, 36.284622, 53.659264>,  <36.387829, 36.479786, 53.449173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666706, 36.284622, 53.659264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706755, 0.590508, -0.389613,
		-0.120055, 0.642843, 0.756531,
		0.697197, -0.487907, 0.525226,
		36.875866, 36.138248, 53.816830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748428, 36.932560, 53.781670>,  <36.387829, 36.479786, 53.449173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748428, 36.932560, 53.781670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028191, 36.646881, 53.770641>,  <37.196049, 36.475475, 53.764027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028191, 36.646881, 53.770641>,  <36.748428, 36.932560, 53.781670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028191, 36.646881, 53.770641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667605, 0.666576, -0.331631,
		0.255226, 0.213539, 0.943006,
		0.699402, -0.714197, -0.027568,
		37.238010, 36.432621, 53.762371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385796, 37.079308, 54.114361>,  <36.748428, 36.932560, 53.781670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385796, 37.079308, 54.114361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502857, 36.814072, 53.838776>,  <37.573093, 36.654930, 53.673424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502857, 36.814072, 53.838776>,  <37.385796, 37.079308, 54.114361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502857, 36.814072, 53.838776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684648, 0.648293, -0.333126,
		0.667543, -0.374209, 0.643703,
		0.292649, -0.663086, -0.688965,
		37.590652, 36.615147, 53.632088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214848, 37.151714, 54.085361>,  <37.385796, 37.079308, 54.114361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214848, 37.151714, 54.085361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.113487, 36.941383, 53.760574>,  <38.052673, 36.815186, 53.565701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.113487, 36.941383, 53.760574>,  <38.214848, 37.151714, 54.085361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113487, 36.941383, 53.760574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790257, 0.371586, -0.487256,
		0.557929, -0.765135, 0.321380,
		-0.253396, -0.525827, -0.811971,
		38.037468, 36.783634, 53.516983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780167, 36.764076, 53.784389>,  <38.214848, 37.151714, 54.085361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780167, 36.764076, 53.784389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525040, 36.778313, 53.476646>,  <38.371964, 36.786854, 53.292000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525040, 36.778313, 53.476646>,  <38.780167, 36.764076, 53.784389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525040, 36.778313, 53.476646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737709, 0.315250, -0.596995,
		0.221291, -0.948341, -0.227333,
		-0.637822, 0.035596, -0.769362,
		38.333694, 36.788990, 53.245838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215664, 36.456142, 53.165379>,  <38.780167, 36.764076, 53.784389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215664, 36.456142, 53.165379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.895103, 36.637497, 53.009327>,  <38.702766, 36.746311, 52.915695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.895103, 36.637497, 53.009327>,  <39.215664, 36.456142, 53.165379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895103, 36.637497, 53.009327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578031, 0.419371, -0.700006,
		-0.153762, -0.786492, -0.598154,
		-0.801397, 0.453386, -0.390133,
		38.654686, 36.773514, 52.892288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182232, 36.326290, 52.452557>,  <39.215664, 36.456142, 53.165379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182232, 36.326290, 52.452557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990990, 36.676552, 52.479809>,  <38.876244, 36.886711, 52.496159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990990, 36.676552, 52.479809>,  <39.182232, 36.326290, 52.452557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990990, 36.676552, 52.479809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564352, 0.365716, -0.740107,
		-0.672996, -0.315399, -0.669029,
		-0.478104, 0.875657, 0.068130,
		38.847557, 36.939247, 52.500248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.898945, 38.197681, 59.507320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919899, 38.597008, 59.497284>,  <36.932472, 38.836601, 59.491264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919899, 38.597008, 59.497284>,  <36.898945, 38.197681, 59.507320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919899, 38.597008, 59.497284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793979, -0.056872, -0.605280,
		-0.605685, 0.011786, -0.795617,
		0.052382, 0.998312, -0.025089,
		36.935616, 38.896500, 59.489758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943863, 38.297684, 58.792061>,  <36.898945, 38.197681, 59.507320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943863, 38.297684, 58.792061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.062935, 38.636765, 58.967693>,  <37.134377, 38.840214, 59.073074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.062935, 38.636765, 58.967693>,  <36.943863, 38.297684, 58.792061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062935, 38.636765, 58.967693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777785, 0.051346, -0.626430,
		-0.553569, 0.527989, -0.644042,
		0.297679, 0.847698, 0.439085,
		37.152237, 38.891075, 59.099419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151302, 38.694420, 58.185570>,  <36.943863, 38.297684, 58.792061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151302, 38.694420, 58.185570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324341, 38.832008, 58.518929>,  <37.428165, 38.914562, 58.718945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324341, 38.832008, 58.518929>,  <37.151302, 38.694420, 58.185570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324341, 38.832008, 58.518929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883436, 0.022837, -0.467996,
		-0.180009, 0.938703, -0.293996,
		0.432595, 0.343970, 0.833394,
		37.454121, 38.935200, 58.768948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453144, 39.375484, 57.975834>,  <37.151302, 38.694420, 58.185570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453144, 39.375484, 57.975834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.625523, 39.197830, 58.290039>,  <37.728951, 39.091236, 58.478561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.625523, 39.197830, 58.290039>,  <37.453144, 39.375484, 57.975834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625523, 39.197830, 58.290039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892751, 0.083045, -0.442831,
		0.131445, 0.892102, 0.432292,
		0.430950, -0.444136, 0.785509,
		37.754807, 39.064590, 58.525692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964176, 39.681107, 57.891014>,  <37.453144, 39.375484, 57.975834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964176, 39.681107, 57.891014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.069176, 39.387367, 58.141396>,  <38.132175, 39.211124, 58.291626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.069176, 39.387367, 58.141396>,  <37.964176, 39.681107, 57.891014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069176, 39.387367, 58.141396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932987, 0.027627, -0.358848,
		0.246227, 0.678207, 0.692393,
		0.262502, -0.734352, 0.625956,
		38.147926, 39.167061, 58.329182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540657, 39.970146, 58.227722>,  <37.964176, 39.681107, 57.891014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540657, 39.970146, 58.227722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559776, 39.573242, 58.273563>,  <38.571247, 39.335098, 58.301067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559776, 39.573242, 58.273563>,  <38.540657, 39.970146, 58.227722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559776, 39.573242, 58.273563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935517, 0.004269, -0.353257,
		0.350034, 0.124098, 0.928481,
		0.047802, -0.992261, 0.114601,
		38.574116, 39.275562, 58.307945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125534, 39.746937, 58.644440>,  <38.540657, 39.970146, 58.227722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125534, 39.746937, 58.644440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.031395, 39.420967, 58.432587>,  <38.974911, 39.225384, 58.305473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.031395, 39.420967, 58.432587>,  <39.125534, 39.746937, 58.644440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031395, 39.420967, 58.432587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884023, 0.046961, -0.465078,
		0.403875, -0.577663, 0.709359,
		-0.235346, -0.814923, -0.529634,
		38.960793, 39.176491, 58.273697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712669, 39.292004, 58.750282>,  <39.125534, 39.746937, 58.644440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712669, 39.292004, 58.750282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.513824, 39.186958, 58.419487>,  <39.394516, 39.123932, 58.221008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.513824, 39.186958, 58.419487>,  <39.712669, 39.292004, 58.750282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513824, 39.186958, 58.419487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854473, 0.017518, -0.519200,
		0.150837, -0.964741, 0.215691,
		-0.497115, -0.262617, -0.826988,
		39.364689, 39.108173, 58.171391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068741, 38.707771, 58.483883>,  <39.712669, 39.292004, 58.750282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068741, 38.707771, 58.483883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.859325, 38.846062, 58.172401>,  <39.733677, 38.929035, 57.985512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.859325, 38.846062, 58.172401>,  <40.068741, 38.707771, 58.483883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859325, 38.846062, 58.172401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839412, 0.052751, -0.540929,
		-0.145935, -0.936852, -0.317823,
		-0.523536, 0.345725, -0.778707,
		39.702263, 38.949780, 57.938789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552666, 38.431255, 57.830482>,  <40.068741, 38.707771, 58.483883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552666, 38.431255, 57.830482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.312828, 38.727440, 57.709023>,  <40.168926, 38.905151, 57.636147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.312828, 38.727440, 57.709023>,  <40.552666, 38.431255, 57.830482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312828, 38.727440, 57.709023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604099, 0.169887, -0.778590,
		-0.524925, -0.650278, -0.549174,
		-0.599598, 0.740457, -0.303654,
		40.132950, 38.949577, 57.617928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672699, 38.429123, 57.117329>,  <40.552666, 38.431255, 57.830482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672699, 38.429123, 57.117329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.519302, 38.785751, 57.213692>,  <40.427265, 38.999729, 57.271511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.519302, 38.785751, 57.213692>,  <40.672699, 38.429123, 57.117329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519302, 38.785751, 57.213692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607783, 0.440041, -0.661032,
		-0.695366, -0.107081, -0.710634,
		-0.383492, 0.891570, 0.240908,
		40.404255, 39.053223, 57.285965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554462, 38.735126, 56.442924>,  <40.672699, 38.429123, 57.117329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554462, 38.735126, 56.442924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.600449, 39.018776, 56.721184>,  <40.628040, 39.188965, 56.888138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.600449, 39.018776, 56.721184>,  <40.554462, 38.735126, 56.442924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600449, 39.018776, 56.721184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654607, 0.472651, -0.589992,
		-0.747176, 0.523205, -0.409859,
		0.114967, 0.709124, 0.695647,
		40.634937, 39.231514, 56.929878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945908, 38.877254, 55.824837>,  <40.554462, 38.735126, 56.442924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945908, 38.877254, 55.824837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.044296, 38.544136, 55.626465>,  <40.103329, 38.344265, 55.507442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.044296, 38.544136, 55.626465>,  <39.945908, 38.877254, 55.824837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044296, 38.544136, 55.626465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684094, -0.511624, 0.519862,
		-0.686670, 0.211394, -0.695555,
		0.245967, -0.832798, -0.495930,
		40.118088, 38.294296, 55.477688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313217, 38.536945, 55.567867>,  <39.945908, 38.877254, 55.824837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313217, 38.536945, 55.567867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.596870, 38.256386, 55.596603>,  <39.767063, 38.088051, 55.613846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.596870, 38.256386, 55.596603>,  <39.313217, 38.536945, 55.567867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596870, 38.256386, 55.596603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667384, -0.634870, 0.389279,
		-0.227432, -0.323997, -0.918314,
		0.709136, -0.701403, 0.071841,
		39.809612, 38.045963, 55.618156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968353, 37.946480, 55.308830>,  <39.313217, 38.536945, 55.567867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968353, 37.946480, 55.308830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270508, 37.811821, 55.533707>,  <39.451801, 37.731026, 55.668633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270508, 37.811821, 55.533707>,  <38.968353, 37.946480, 55.308830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270508, 37.811821, 55.533707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579382, -0.743920, 0.333016,
		0.306119, -0.577281, -0.756993,
		0.755385, -0.336646, 0.562195,
		39.497124, 37.710827, 55.702366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930771, 37.273769, 55.280270>,  <38.968353, 37.946480, 55.308830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930771, 37.273769, 55.280270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.181656, 37.302238, 55.590504>,  <39.332188, 37.319321, 55.776646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.181656, 37.302238, 55.590504>,  <38.930771, 37.273769, 55.280270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181656, 37.302238, 55.590504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469928, -0.759548, 0.449728,
		0.621105, -0.646546, -0.442952,
		0.627213, 0.071172, 0.775589,
		39.369820, 37.323589, 55.823181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285000, 36.590137, 55.386887>,  <38.930771, 37.273769, 55.280270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285000, 36.590137, 55.386887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.303589, 36.780746, 55.738060>,  <39.314743, 36.895111, 55.948765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.303589, 36.780746, 55.738060>,  <39.285000, 36.590137, 55.386887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303589, 36.780746, 55.738060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271794, -0.839693, 0.470153,
		0.961232, -0.260467, 0.090491,
		0.046474, 0.476521, 0.877934,
		39.317532, 36.923702, 56.001442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667709, 36.112713, 55.868004>,  <39.285000, 36.590137, 55.386887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667709, 36.112713, 55.868004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482067, 36.356766, 56.124863>,  <39.370682, 36.503197, 56.278976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482067, 36.356766, 56.124863>,  <39.667709, 36.112713, 55.868004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482067, 36.356766, 56.124863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417309, -0.790061, 0.449063,
		0.781321, -0.059563, 0.621280,
		-0.464102, 0.610128, 0.642148,
		39.342838, 36.539803, 56.317509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669010, 35.703068, 56.498283>,  <39.667709, 36.112713, 55.868004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669010, 35.703068, 56.498283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.379463, 35.977043, 56.531467>,  <39.205734, 36.141426, 56.551376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.379463, 35.977043, 56.531467>,  <39.669010, 35.703068, 56.498283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379463, 35.977043, 56.531467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517222, -0.618297, 0.591769,
		0.456619, 0.385452, 0.801827,
		-0.723866, 0.684935, 0.082962,
		39.162304, 36.182522, 56.556355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471672, 35.550411, 57.092911>,  <39.669010, 35.703068, 56.498283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471672, 35.550411, 57.092911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179432, 35.792305, 56.966095>,  <39.004086, 35.937443, 56.890007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179432, 35.792305, 56.966095>,  <39.471672, 35.550411, 57.092911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179432, 35.792305, 56.966095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616620, -0.384935, 0.686735,
		0.293255, 0.697223, 0.654127,
		-0.730603, 0.604737, -0.317038,
		38.960251, 35.973724, 56.870983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123615, 35.845619, 57.723003>,  <39.471672, 35.550411, 57.092911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123615, 35.845619, 57.723003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861145, 35.890091, 57.424454>,  <38.703663, 35.916775, 57.245323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861145, 35.890091, 57.424454>,  <39.123615, 35.845619, 57.723003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861145, 35.890091, 57.424454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717867, -0.396847, 0.571996,
		-0.232606, 0.911127, 0.340209,
		-0.656172, 0.111175, -0.746377,
		38.664295, 35.923443, 57.200542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461864, 36.088474, 58.081955>,  <39.123615, 35.845619, 57.723003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461864, 36.088474, 58.081955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.350300, 35.930313, 57.731899>,  <38.283360, 35.835415, 57.521866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.350300, 35.930313, 57.731899>,  <38.461864, 36.088474, 58.081955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350300, 35.930313, 57.731899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798708, -0.410446, 0.440000,
		-0.533173, 0.821701, -0.201332,
		-0.278912, -0.395402, -0.875137,
		38.266624, 35.811691, 57.469357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689308, 36.137924, 58.125729>,  <38.461864, 36.088474, 58.081955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689308, 36.137924, 58.125729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777630, 35.845703, 57.867260>,  <37.830624, 35.670368, 57.712177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777630, 35.845703, 57.867260>,  <37.689308, 36.137924, 58.125729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777630, 35.845703, 57.867260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770118, -0.537125, 0.344116,
		-0.598470, 0.421647, -0.681210,
		0.220800, -0.730555, -0.646171,
		37.843868, 35.626537, 57.673409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108471, 36.060333, 57.735817>,  <37.689308, 36.137924, 58.125729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108471, 36.060333, 57.735817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.322197, 35.724724, 57.694733>,  <37.450432, 35.523357, 57.670082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.322197, 35.724724, 57.694733>,  <37.108471, 36.060333, 57.735817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322197, 35.724724, 57.694733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788046, -0.538392, 0.298524,
		-0.305765, -0.078568, -0.948860,
		0.534313, -0.839024, -0.102707,
		37.482491, 35.473015, 57.663921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656826, 35.662022, 57.457157>,  <37.108471, 36.060333, 57.735817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656826, 35.662022, 57.457157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.940491, 35.422852, 57.606594>,  <37.110691, 35.279350, 57.696255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.940491, 35.422852, 57.606594>,  <36.656826, 35.662022, 57.457157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940491, 35.422852, 57.606594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693429, -0.687300, 0.216277,
		0.127449, -0.412432, -0.902029,
		0.709164, -0.597928, 0.373588,
		37.153240, 35.243473, 57.718670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507229, 35.092949, 57.146927>,  <36.656826, 35.662022, 57.457157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507229, 35.092949, 57.146927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.722900, 34.972496, 57.461533>,  <36.852303, 34.900227, 57.650295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.722900, 34.972496, 57.461533>,  <36.507229, 35.092949, 57.146927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722900, 34.972496, 57.461533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660758, -0.730306, 0.173357,
		0.522195, -0.613167, -0.592738,
		0.539177, -0.301130, 0.786517,
		36.884655, 34.882156, 57.697487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631432, 34.815937, 56.504948>,  <36.507229, 35.092949, 57.146927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631432, 34.815937, 56.504948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.425720, 34.586945, 56.249519>,  <36.302292, 34.449551, 56.096260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.425720, 34.586945, 56.249519>,  <36.631432, 34.815937, 56.504948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425720, 34.586945, 56.249519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274301, 0.595678, -0.754935,
		0.812572, -0.563411, -0.149315,
		-0.514282, -0.572481, -0.638575,
		36.271435, 34.415199, 56.057945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022175, 34.775639, 55.979633>,  <36.631432, 34.815937, 56.504948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022175, 34.775639, 55.979633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667435, 34.691032, 55.815315>,  <36.454590, 34.640266, 55.716724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667435, 34.691032, 55.815315>,  <37.022175, 34.775639, 55.979633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667435, 34.691032, 55.815315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184599, 0.652827, -0.734670,
		0.423571, -0.727377, -0.539916,
		-0.886854, -0.211517, -0.410792,
		36.401379, 34.627579, 55.692078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160461, 34.518517, 55.385284>,  <37.022175, 34.775639, 55.979633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160461, 34.518517, 55.385284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.789127, 34.666100, 55.367146>,  <36.566326, 34.754650, 55.356262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.789127, 34.666100, 55.367146>,  <37.160461, 34.518517, 55.385284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789127, 34.666100, 55.367146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219089, 0.444499, -0.868574,
		-0.300310, -0.816266, -0.493480,
		-0.928339, 0.368957, -0.045348,
		36.510624, 34.776787, 55.353542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007122, 34.486889, 54.721283>,  <37.160461, 34.518517, 55.385284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007122, 34.486889, 54.721283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.734974, 34.752426, 54.845490>,  <36.571686, 34.911747, 54.920013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.734974, 34.752426, 54.845490>,  <37.007122, 34.486889, 54.721283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734974, 34.752426, 54.845490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190708, 0.569466, -0.799587,
		-0.707623, -0.484795, -0.514045,
		-0.680367, 0.663839, 0.310513,
		36.530865, 34.951576, 54.938644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649242, 34.572296, 54.177876>,  <37.007122, 34.486889, 54.721283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649242, 34.572296, 54.177876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.562706, 34.891602, 54.402721>,  <36.510784, 35.083183, 54.537628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.562706, 34.891602, 54.402721>,  <36.649242, 34.572296, 54.177876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562706, 34.891602, 54.402721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186290, 0.598921, -0.778839,
		-0.958380, -0.063779, -0.278279,
		-0.216340, 0.798265, 0.562113,
		36.497803, 35.131081, 54.571354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303326, 35.076588, 53.686989>,  <36.649242, 34.572296, 54.177876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303326, 35.076588, 53.686989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.473343, 35.282471, 53.984825>,  <36.575352, 35.405998, 54.163528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.473343, 35.282471, 53.984825>,  <36.303326, 35.076588, 53.686989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473343, 35.282471, 53.984825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281151, 0.706841, -0.649099,
		-0.860402, 0.485239, 0.155729,
		0.425044, 0.514703, 0.744593,
		36.600857, 35.436882, 54.208202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138981, 35.763992, 53.489799>,  <36.303326, 35.076588, 53.686989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138981, 35.763992, 53.489799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.436676, 35.770348, 53.756889>,  <36.615295, 35.774162, 53.917141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.436676, 35.770348, 53.756889>,  <36.138981, 35.763992, 53.489799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436676, 35.770348, 53.756889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521097, 0.611550, -0.595369,
		-0.417808, 0.791046, 0.446859,
		0.744241, 0.015893, 0.667722,
		36.659946, 35.775116, 53.957207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826797, 36.362843, 54.024361>,  <36.138981, 35.763992, 53.489799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826797, 36.362843, 54.024361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.594475, 36.687424, 53.998447>,  <35.455082, 36.882172, 53.982899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.594475, 36.687424, 53.998447>,  <35.826797, 36.362843, 54.024361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594475, 36.687424, 53.998447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276478, -0.121785, 0.953273,
		0.765650, 0.571582, 0.295083,
		-0.580810, 0.811457, -0.064785,
		35.420231, 36.930862, 53.979012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975986, 36.788967, 54.584091>,  <35.826797, 36.362843, 54.024361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975986, 36.788967, 54.584091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.603046, 36.883339, 54.474503>,  <35.379280, 36.939960, 54.408749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.603046, 36.883339, 54.474503>,  <35.975986, 36.788967, 54.584091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603046, 36.883339, 54.474503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317554, -0.172085, 0.932494,
		0.172855, 0.956413, 0.235363,
		-0.932352, 0.235927, -0.273967,
		35.323341, 36.954117, 54.392311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691635, 37.157139, 55.175426>,  <35.975986, 36.788967, 54.584091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691635, 37.157139, 55.175426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.368408, 37.035294, 54.973736>,  <35.174473, 36.962189, 54.852722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.368408, 37.035294, 54.973736>,  <35.691635, 37.157139, 55.175426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368408, 37.035294, 54.973736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464175, -0.197804, 0.863374,
		-0.362731, 0.931711, 0.018446,
		-0.808064, -0.304611, -0.504227,
		35.125988, 36.943909, 54.822468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147419, 37.549149, 55.506088>,  <35.691635, 37.157139, 55.175426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147419, 37.549149, 55.506088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.928841, 37.283386, 55.302143>,  <34.797691, 37.123928, 55.179775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.928841, 37.283386, 55.302143>,  <35.147419, 37.549149, 55.506088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928841, 37.283386, 55.302143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541328, -0.184325, 0.820359,
		-0.639029, 0.724288, -0.258936,
		-0.546448, -0.664402, -0.509867,
		34.764908, 37.084064, 55.149181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418568, 37.728500, 55.552864>,  <35.147419, 37.549149, 55.506088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418568, 37.728500, 55.552864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.428680, 37.331184, 55.507732>,  <34.434750, 37.092793, 55.480656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.428680, 37.331184, 55.507732>,  <34.418568, 37.728500, 55.552864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428680, 37.331184, 55.507732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414970, -0.113108, 0.902777,
		-0.909484, 0.023994, -0.415046,
		0.025284, -0.993293, -0.112826,
		34.436264, 37.033195, 55.473885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767601, 37.489101, 55.598228>,  <34.418568, 37.728500, 55.552864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767601, 37.489101, 55.598228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.006153, 37.186279, 55.704960>,  <34.149284, 37.004585, 55.768997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.006153, 37.186279, 55.704960>,  <33.767601, 37.489101, 55.598228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006153, 37.186279, 55.704960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312660, 0.087072, 0.945866,
		-0.739310, -0.647518, -0.184774,
		0.596377, -0.757059, 0.266826,
		34.185066, 36.959160, 55.785007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289322, 37.033142, 55.962971>,  <33.767601, 37.489101, 55.598228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289322, 37.033142, 55.962971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665478, 36.940231, 56.062340>,  <33.891171, 36.884487, 56.121964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665478, 36.940231, 56.062340>,  <33.289322, 37.033142, 55.962971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665478, 36.940231, 56.062340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287611, -0.153289, 0.945401,
		-0.181520, -0.960493, -0.210958,
		0.940388, -0.232283, 0.248423,
		33.947594, 36.870548, 56.136868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245529, 36.312424, 56.303917>,  <33.289322, 37.033142, 55.962971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245529, 36.312424, 56.303917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.588306, 36.495064, 56.399551>,  <33.793972, 36.604649, 56.456932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.588306, 36.495064, 56.399551>,  <33.245529, 36.312424, 56.303917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588306, 36.495064, 56.399551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149238, -0.224194, 0.963050,
		0.493335, -0.860959, -0.123978,
		0.856942, 0.456604, 0.239090,
		33.845390, 36.632046, 56.471279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497765, 35.920288, 56.749718>,  <33.245529, 36.312424, 56.303917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497765, 35.920288, 56.749718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.703644, 36.252068, 56.836521>,  <33.827171, 36.451138, 56.888603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.703644, 36.252068, 56.836521>,  <33.497765, 35.920288, 56.749718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703644, 36.252068, 56.836521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014282, -0.261373, 0.965132,
		0.857252, -0.493653, -0.146374,
		0.514699, 0.829452, 0.217012,
		33.858055, 36.500904, 56.901627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.552799, 42.646378, 45.825573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.729599, 42.728409, 46.174877>,  <43.835678, 42.777626, 46.384460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.729599, 42.728409, 46.174877>,  <43.552799, 42.646378, 45.825573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729599, 42.728409, 46.174877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772218, -0.408346, 0.486758,
		0.456413, -0.889493, -0.022126,
		0.442003, 0.205077, 0.873257,
		43.862202, 42.789932, 46.436855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725803, 42.046043, 46.298443>,  <43.552799, 42.646378, 45.825573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725803, 42.046043, 46.298443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.612045, 42.391937, 46.464020>,  <43.543789, 42.599476, 46.563366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.612045, 42.391937, 46.464020>,  <43.725803, 42.046043, 46.298443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612045, 42.391937, 46.464020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729311, -0.475393, 0.492043,
		0.622274, -0.161958, 0.765862,
		-0.284395, 0.864737, 0.413943,
		43.526726, 42.651360, 46.588203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428837, 41.865993, 46.849285>,  <43.725803, 42.046043, 46.298443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428837, 41.865993, 46.849285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.287598, 42.238388, 46.812244>,  <43.202854, 42.461826, 46.790020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.287598, 42.238388, 46.812244>,  <43.428837, 41.865993, 46.849285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287598, 42.238388, 46.812244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907749, -0.316951, 0.274836,
		0.226520, 0.181104, 0.957022,
		-0.353102, 0.930991, -0.092601,
		43.181667, 42.517685, 46.784466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001717, 41.927563, 47.431557>,  <43.428837, 41.865993, 46.849285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001717, 41.927563, 47.431557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.895676, 42.210785, 47.169754>,  <42.832050, 42.380718, 47.012672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.895676, 42.210785, 47.169754>,  <43.001717, 41.927563, 47.431557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895676, 42.210785, 47.169754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960741, -0.136355, 0.241628,
		0.081839, 0.692871, 0.716402,
		-0.265103, 0.708052, -0.654510,
		42.816143, 42.423199, 46.973400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606533, 42.356789, 47.853142>,  <43.001717, 41.927563, 47.431557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606533, 42.356789, 47.853142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.508560, 42.406952, 47.468582>,  <42.449776, 42.437050, 47.237846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.508560, 42.406952, 47.468582>,  <42.606533, 42.356789, 47.853142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508560, 42.406952, 47.468582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946466, -0.245972, 0.209043,
		-0.210261, 0.961130, 0.178941,
		-0.244932, 0.125408, -0.961395,
		42.435081, 42.444572, 47.180164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055012, 42.847195, 47.838554>,  <42.606533, 42.356789, 47.853142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055012, 42.847195, 47.838554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.015007, 42.626152, 47.507587>,  <41.991005, 42.493526, 47.309006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.015007, 42.626152, 47.507587>,  <42.055012, 42.847195, 47.838554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015007, 42.626152, 47.507587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947975, -0.199670, 0.247941,
		-0.302225, 0.809169, -0.503890,
		-0.100015, -0.552609, -0.827418,
		41.985004, 42.460369, 47.259361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421585, 43.095131, 47.429760>,  <42.055012, 42.847195, 47.838554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421585, 43.095131, 47.429760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.501122, 42.721062, 47.312515>,  <41.548843, 42.496620, 47.242168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.501122, 42.721062, 47.312515>,  <41.421585, 43.095131, 47.429760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501122, 42.721062, 47.312515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913187, -0.285362, 0.290959,
		-0.355741, 0.209817, -0.910728,
		0.198839, -0.935171, -0.293117,
		41.560772, 42.440510, 47.224579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761044, 42.831432, 47.229378>,  <41.421585, 43.095131, 47.429760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761044, 42.831432, 47.229378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.010071, 42.522263, 47.278355>,  <41.159489, 42.336761, 47.307739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.010071, 42.522263, 47.278355>,  <40.761044, 42.831432, 47.229378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010071, 42.522263, 47.278355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769519, -0.576206, 0.275368,
		-0.142287, -0.265657, -0.953510,
		0.622571, -0.772925, 0.122442,
		41.196842, 42.290386, 47.315086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345894, 42.327415, 46.814774>,  <40.761044, 42.831432, 47.229378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345894, 42.327415, 46.814774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.596649, 42.153183, 47.073162>,  <40.747101, 42.048645, 47.228195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.596649, 42.153183, 47.073162>,  <40.345894, 42.327415, 46.814774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596649, 42.153183, 47.073162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767810, -0.486091, 0.417353,
		0.132213, -0.757620, -0.639165,
		0.626887, -0.435578, 0.645975,
		40.784714, 42.022511, 47.266956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008442, 41.763493, 46.872940>,  <40.345894, 42.327415, 46.814774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008442, 41.763493, 46.872940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286545, 41.741722, 47.159618>,  <40.453407, 41.728661, 47.331627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286545, 41.741722, 47.159618>,  <40.008442, 41.763493, 46.872940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286545, 41.741722, 47.159618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657739, -0.450234, 0.603878,
		0.289815, -0.891251, -0.348826,
		0.695260, -0.054423, 0.716695,
		40.495125, 41.725395, 47.374626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163029, 41.077385, 47.007683>,  <40.008442, 41.763493, 46.872940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163029, 41.077385, 47.007683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247093, 41.291656, 47.334824>,  <40.297531, 41.420219, 47.531109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247093, 41.291656, 47.334824>,  <40.163029, 41.077385, 47.007683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247093, 41.291656, 47.334824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492669, -0.664527, 0.561856,
		0.844459, -0.521008, 0.124258,
		0.210158, 0.535682, 0.817850,
		40.310143, 41.452362, 47.580177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348370, 40.611507, 47.469883>,  <40.163029, 41.077385, 47.007683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348370, 40.611507, 47.469883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.258831, 40.914177, 47.715595>,  <40.205109, 41.095779, 47.863022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.258831, 40.914177, 47.715595>,  <40.348370, 40.611507, 47.469883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258831, 40.914177, 47.715595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515922, -0.626716, 0.583996,
		0.826873, -0.186197, 0.530671,
		-0.223842, 0.756675, 0.614278,
		40.191677, 41.141178, 47.899879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930031, 40.117134, 47.524296>,  <40.348370, 40.611507, 47.469883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930031, 40.117134, 47.524296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.145252, 39.821259, 47.685966>,  <41.274384, 39.643734, 47.782967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.145252, 39.821259, 47.685966>,  <40.930031, 40.117134, 47.524296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145252, 39.821259, 47.685966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758191, 0.215198, -0.615497,
		0.368299, 0.637612, 0.676614,
		0.538054, -0.739689, 0.404175,
		41.306667, 39.599350, 47.807220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616009, 40.399658, 47.834740>,  <40.930031, 40.117134, 47.524296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616009, 40.399658, 47.834740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.675362, 40.010674, 47.762856>,  <41.710972, 39.777283, 47.719727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.675362, 40.010674, 47.762856>,  <41.616009, 40.399658, 47.834740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675362, 40.010674, 47.762856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946101, 0.192489, -0.260463,
		0.287882, -0.131373, 0.948612,
		0.148380, -0.972465, -0.179706,
		41.719875, 39.718933, 47.708942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234215, 40.266174, 48.161564>,  <41.616009, 40.399658, 47.834740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234215, 40.266174, 48.161564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.205639, 39.974457, 47.889381>,  <42.188492, 39.799427, 47.726070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.205639, 39.974457, 47.889381>,  <42.234215, 40.266174, 48.161564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205639, 39.974457, 47.889381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911948, 0.228584, -0.340735,
		0.404039, -0.644887, 0.648748,
		-0.071442, -0.729294, -0.680460,
		42.184208, 39.755669, 47.685242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901379, 40.017284, 48.144478>,  <42.234215, 40.266174, 48.161564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901379, 40.017284, 48.144478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.777157, 39.827332, 47.815105>,  <42.702625, 39.713360, 47.617481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.777157, 39.827332, 47.815105>,  <42.901379, 40.017284, 48.144478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777157, 39.827332, 47.815105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914813, 0.086007, -0.394614,
		0.258216, -0.875837, 0.407718,
		-0.310551, -0.474881, -0.823435,
		42.683990, 39.684868, 47.568073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367611, 39.496967, 47.979168>,  <42.901379, 40.017284, 48.144478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367611, 39.496967, 47.979168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.187561, 39.589256, 47.634109>,  <43.079533, 39.644630, 47.427074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.187561, 39.589256, 47.634109>,  <43.367611, 39.496967, 47.979168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187561, 39.589256, 47.634109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886592, 0.000235, -0.462553,
		-0.106518, -0.973020, -0.204661,
		-0.450122, 0.230721, -0.862646,
		43.052525, 39.658474, 47.375317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688671, 39.158997, 47.504192>,  <43.367611, 39.496967, 47.979168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688671, 39.158997, 47.504192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.512520, 39.433327, 47.272430>,  <43.406830, 39.597923, 47.133373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.512520, 39.433327, 47.272430>,  <43.688671, 39.158997, 47.504192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512520, 39.433327, 47.272430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796722, 0.001016, -0.604345,
		-0.413886, -0.727767, -0.546858,
		-0.440378, 0.685824, -0.579408,
		43.380405, 39.639072, 47.098610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721367, 39.032330, 46.692112>,  <43.688671, 39.158997, 47.504192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721367, 39.032330, 46.692112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.627983, 39.421265, 46.695038>,  <43.571953, 39.654625, 46.696793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.627983, 39.421265, 46.695038>,  <43.721367, 39.032330, 46.692112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627983, 39.421265, 46.695038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757779, 0.186649, -0.625247,
		-0.609318, -0.140422, -0.780393,
		-0.233458, 0.972339, 0.007319,
		43.557945, 39.712967, 46.697235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748653, 39.381260, 45.975716>,  <43.721367, 39.032330, 46.692112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748653, 39.381260, 45.975716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.818039, 39.683640, 46.228207>,  <43.859673, 39.865067, 46.379700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.818039, 39.683640, 46.228207>,  <43.748653, 39.381260, 45.975716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818039, 39.683640, 46.228207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864139, 0.190616, -0.465756,
		-0.472411, 0.626261, -0.620182,
		0.173468, 0.755952, 0.631225,
		43.870079, 39.910423, 46.417576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027237, 40.026917, 45.506535>,  <43.748653, 39.381260, 45.975716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027237, 40.026917, 45.506535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.109447, 40.092102, 45.892529>,  <44.158772, 40.131214, 46.124126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.109447, 40.092102, 45.892529>,  <44.027237, 40.026917, 45.506535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109447, 40.092102, 45.892529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865480, 0.430026, -0.256948,
		-0.456843, 0.887987, -0.052659,
		0.205522, 0.162960, 0.964990,
		44.171104, 40.140991, 46.182026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364883, 40.576218, 45.493279>,  <44.027237, 40.026917, 45.506535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364883, 40.576218, 45.493279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.455704, 40.452423, 45.862637>,  <44.510197, 40.378147, 46.084251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.455704, 40.452423, 45.862637>,  <44.364883, 40.576218, 45.493279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455704, 40.452423, 45.862637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892370, 0.445844, -0.069994,
		-0.390028, 0.839904, 0.377411,
		0.227054, -0.309491, 0.923397,
		44.523819, 40.359577, 46.139656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620911, 41.228874, 45.822922>,  <44.364883, 40.576218, 45.493279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620911, 41.228874, 45.822922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.753777, 40.900887, 46.009392>,  <44.833496, 40.704094, 46.121273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.753777, 40.900887, 46.009392>,  <44.620911, 41.228874, 45.822922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753777, 40.900887, 46.009392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911081, 0.406841, 0.066428,
		-0.244128, 0.402660, 0.882194,
		0.332165, -0.819967, 0.466177,
		44.853424, 40.654896, 46.149246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068291, 41.418232, 46.387810>,  <44.620911, 41.228874, 45.822922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068291, 41.418232, 46.387810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.196358, 41.039505, 46.375023>,  <45.273197, 40.812267, 46.367352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.196358, 41.039505, 46.375023>,  <45.068291, 41.418232, 46.387810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196358, 41.039505, 46.375023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945414, 0.317165, 0.074821,
		-0.060705, -0.054174, 0.996685,
		0.320166, -0.946822, -0.031963,
		45.292408, 40.755459, 46.365433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529705, 41.349216, 47.021294>,  <45.068291, 41.418232, 46.387810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529705, 41.349216, 47.021294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.632584, 41.075447, 46.748409>,  <45.694313, 40.911186, 46.584679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.632584, 41.075447, 46.748409>,  <45.529705, 41.349216, 47.021294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632584, 41.075447, 46.748409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966339, 0.177687, 0.186055,
		-0.006120, -0.707102, 0.707085,
		0.257200, -0.684422, -0.682213,
		45.709743, 40.870121, 46.543747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057625, 41.102074, 47.443138>,  <45.529705, 41.349216, 47.021294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057625, 41.102074, 47.443138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.099640, 41.003502, 47.057758>,  <46.124851, 40.944359, 46.826530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.099640, 41.003502, 47.057758>,  <46.057625, 41.102074, 47.443138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099640, 41.003502, 47.057758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865930, 0.499060, -0.033241,
		0.489011, -0.830790, 0.265813,
		0.105040, -0.246430, -0.963452,
		46.131153, 40.929573, 46.768723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717152, 40.635181, 47.285191>,  <46.057625, 41.102074, 47.443138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717152, 40.635181, 47.285191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.590034, 40.923073, 47.038288>,  <46.513763, 41.095806, 46.890144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.590034, 40.923073, 47.038288>,  <46.717152, 40.635181, 47.285191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590034, 40.923073, 47.038288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827318, 0.528514, 0.190312,
		0.463201, -0.450190, -0.763396,
		-0.317789, 0.719724, -0.617258,
		46.494698, 41.138988, 46.853111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339249, 40.854248, 47.652992>,  <46.717152, 40.635181, 47.285191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339249, 40.854248, 47.652992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.432358, 41.034409, 47.997772>,  <47.488224, 41.142506, 48.204639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.432358, 41.034409, 47.997772>,  <47.339249, 40.854248, 47.652992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.432358, 41.034409, 47.997772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731178, -0.503335, 0.460471,
		0.641244, -0.737424, 0.212157,
		0.232777, 0.450399, 0.861949,
		47.502190, 41.169529, 48.256355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.464127, 40.338493, 48.143116>,  <47.339249, 40.854248, 47.652992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.464127, 40.338493, 48.143116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.366280, 40.679779, 48.327370>,  <47.307571, 40.884552, 48.437923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.366280, 40.679779, 48.327370>,  <47.464127, 40.338493, 48.143116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.366280, 40.679779, 48.327370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738271, -0.471872, 0.481968,
		0.628583, -0.222175, 0.745333,
		-0.244621, 0.853214, 0.460636,
		47.292892, 40.935745, 48.465561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336491, 40.221828, 48.788624>,  <47.464127, 40.338493, 48.143116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336491, 40.221828, 48.788624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.155075, 40.576706, 48.754704>,  <47.046227, 40.789631, 48.734352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.155075, 40.576706, 48.754704>,  <47.336491, 40.221828, 48.788624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.155075, 40.576706, 48.754704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765284, -0.338911, 0.547247,
		0.456774, 0.313094, 0.832664,
		-0.453539, 0.887193, -0.084800,
		47.019012, 40.842865, 48.729263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.070972, 40.328346, 49.477837>,  <47.336491, 40.221828, 48.788624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.070972, 40.328346, 49.477837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.869186, 40.599594, 49.264046>,  <46.748116, 40.762344, 49.135773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.869186, 40.599594, 49.264046>,  <47.070972, 40.328346, 49.477837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.869186, 40.599594, 49.264046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803858, -0.142910, 0.577399,
		0.315165, 0.720922, 0.617206,
		-0.504464, 0.678122, -0.534478,
		46.717846, 40.803032, 49.103703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750454, 40.868561, 49.912964>,  <47.070972, 40.328346, 49.477837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750454, 40.868561, 49.912964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.541466, 40.854874, 49.572174>,  <46.416073, 40.846661, 49.367702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.541466, 40.854874, 49.572174>,  <46.750454, 40.868561, 49.912964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541466, 40.854874, 49.572174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849313, -0.067537, 0.523551,
		-0.075455, 0.997130, 0.006223,
		-0.522469, -0.034219, -0.851972,
		46.384724, 40.844608, 49.316582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249332, 41.434929, 49.909866>,  <46.750454, 40.868561, 49.912964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249332, 41.434929, 49.909866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.130196, 41.132423, 49.676846>,  <46.058716, 40.950920, 49.537033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.130196, 41.132423, 49.676846>,  <46.249332, 41.434929, 49.909866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130196, 41.132423, 49.676846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904507, 0.028452, 0.425509,
		-0.305221, 0.653652, -0.692517,
		-0.297838, -0.756261, -0.582548,
		46.040844, 40.905544, 49.502083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546307, 41.432529, 49.993454>,  <46.249332, 41.434929, 49.909866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546307, 41.432529, 49.993454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.557983, 41.084679, 49.796318>,  <45.564991, 40.875969, 49.678036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.557983, 41.084679, 49.796318>,  <45.546307, 41.432529, 49.993454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557983, 41.084679, 49.796318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924698, -0.210728, 0.317060,
		-0.379580, 0.446471, -0.810298,
		0.029194, -0.869631, -0.492839,
		45.566742, 40.823788, 49.648468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920940, 41.381924, 49.542328>,  <45.546307, 41.432529, 49.993454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920940, 41.381924, 49.542328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.071228, 41.021950, 49.630825>,  <45.161400, 40.805965, 49.683926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.071228, 41.021950, 49.630825>,  <44.920940, 41.381924, 49.542328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071228, 41.021950, 49.630825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860222, -0.249854, 0.444512,
		-0.344755, -0.357329, -0.868021,
		0.375715, -0.899938, 0.221244,
		45.183941, 40.751968, 49.697197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372921, 40.971050, 49.526531>,  <44.920940, 41.381924, 49.542328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372921, 40.971050, 49.526531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.647820, 40.742516, 49.705982>,  <44.812759, 40.605396, 49.813652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.647820, 40.742516, 49.705982>,  <44.372921, 40.971050, 49.526531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647820, 40.742516, 49.705982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702203, -0.364359, 0.611681,
		-0.186013, -0.735405, -0.651597,
		0.687248, -0.571334, 0.448628,
		44.853992, 40.571114, 49.840572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096863, 40.340004, 49.611507>,  <44.372921, 40.971050, 49.526531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096863, 40.340004, 49.611507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.385689, 40.327629, 49.887962>,  <44.558983, 40.320202, 50.053837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.385689, 40.327629, 49.887962>,  <44.096863, 40.340004, 49.611507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385689, 40.327629, 49.887962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600665, -0.523705, 0.604097,
		0.343262, -0.851337, -0.396732,
		0.722061, -0.030939, 0.691137,
		44.602306, 40.318348, 50.095303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147503, 39.722214, 49.836895>,  <44.096863, 40.340004, 49.611507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147503, 39.722214, 49.836895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.282303, 39.925171, 50.154129>,  <44.363182, 40.046944, 50.344471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.282303, 39.925171, 50.154129>,  <44.147503, 39.722214, 49.836895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282303, 39.925171, 50.154129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658033, -0.475523, 0.583842,
		0.673366, -0.718632, 0.173628,
		0.337003, 0.507393, 0.793084,
		44.383404, 40.077389, 50.392056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007961, 39.341152, 50.410961>,  <44.147503, 39.722214, 49.836895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007961, 39.341152, 50.410961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.097496, 39.679230, 50.605091>,  <44.151218, 39.882076, 50.721569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.097496, 39.679230, 50.605091>,  <44.007961, 39.341152, 50.410961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097496, 39.679230, 50.605091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662928, -0.232988, 0.711507,
		0.714439, -0.480996, 0.508154,
		0.223838, 0.845198, 0.485322,
		44.164646, 39.932789, 50.750687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169067, 39.118683, 51.128941>,  <44.007961, 39.341152, 50.410961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169067, 39.118683, 51.128941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.038574, 39.496597, 51.116566>,  <43.960278, 39.723347, 51.109142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.038574, 39.496597, 51.116566>,  <44.169067, 39.118683, 51.128941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038574, 39.496597, 51.116566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601931, -0.182389, 0.777440,
		0.728872, 0.272244, 0.628195,
		-0.326229, 0.944784, -0.030934,
		43.940704, 39.780033, 51.107285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252090, 39.316601, 51.781189>,  <44.169067, 39.118683, 51.128941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252090, 39.316601, 51.781189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007931, 39.592987, 51.626274>,  <43.861435, 39.758820, 51.533325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007931, 39.592987, 51.626274>,  <44.252090, 39.316601, 51.781189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007931, 39.592987, 51.626274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560809, -0.031691, 0.827339,
		0.559385, 0.722197, 0.406841,
		-0.610395, 0.690961, -0.387287,
		43.824814, 39.800274, 51.510090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196819, 39.877460, 52.271313>,  <44.252090, 39.316601, 51.781189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196819, 39.877460, 52.271313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.867710, 39.889198, 52.044266>,  <43.670246, 39.896240, 51.908039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.867710, 39.889198, 52.044266>,  <44.196819, 39.877460, 52.271313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867710, 39.889198, 52.044266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559752, -0.215134, 0.800247,
		-0.098628, 0.976143, 0.193433,
		-0.822770, 0.029348, -0.567616,
		43.620880, 39.898003, 51.873981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764709, 40.276047, 52.608032>,  <44.196819, 39.877460, 52.271313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764709, 40.276047, 52.608032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.530708, 40.061783, 52.364445>,  <43.390308, 39.933224, 52.218292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.530708, 40.061783, 52.364445>,  <43.764709, 40.276047, 52.608032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530708, 40.061783, 52.364445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611524, -0.201879, 0.765038,
		-0.532738, 0.819947, -0.209469,
		-0.585003, -0.535661, -0.608965,
		43.355206, 39.901085, 52.181755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125526, 40.399624, 52.895298>,  <43.764709, 40.276047, 52.608032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125526, 40.399624, 52.895298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.077698, 40.097244, 52.637852>,  <43.049000, 39.915817, 52.483383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.077698, 40.097244, 52.637852>,  <43.125526, 40.399624, 52.895298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077698, 40.097244, 52.637852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746842, -0.358647, 0.559999,
		-0.654163, 0.547637, -0.521694,
		-0.119572, -0.755954, -0.643612,
		43.041824, 39.870457, 52.444767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433254, 40.318077, 52.765129>,  <43.125526, 40.399624, 52.895298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433254, 40.318077, 52.765129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.581467, 39.953209, 52.695091>,  <42.670395, 39.734287, 52.653069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.581467, 39.953209, 52.695091>,  <42.433254, 40.318077, 52.765129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581467, 39.953209, 52.695091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715854, -0.400564, 0.571928,
		-0.591830, -0.086576, -0.801400,
		0.370528, -0.912169, -0.175090,
		42.692627, 39.679558, 52.642563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881069, 39.955509, 52.722336>,  <42.433254, 40.318077, 52.765129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881069, 39.955509, 52.722336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.160393, 39.677628, 52.791328>,  <42.327988, 39.510899, 52.832726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.160393, 39.677628, 52.791328>,  <41.881069, 39.955509, 52.722336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160393, 39.677628, 52.791328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626414, -0.476510, 0.616882,
		-0.346357, -0.538824, -0.767923,
		0.698314, -0.694699, 0.172484,
		42.369888, 39.469219, 52.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520309, 39.414913, 52.653492>,  <41.881069, 39.955509, 52.722336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520309, 39.414913, 52.653492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.840874, 39.285095, 52.854454>,  <42.033211, 39.207203, 52.975033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.840874, 39.285095, 52.854454>,  <41.520309, 39.414913, 52.653492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840874, 39.285095, 52.854454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597765, -0.405793, 0.691381,
		-0.020508, -0.854402, -0.519207,
		0.801409, -0.324543, 0.502410,
		42.081295, 39.187733, 53.005177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488678, 38.669140, 52.676922>,  <41.520309, 39.414913, 52.653492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488678, 38.669140, 52.676922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.706772, 38.793167, 52.988457>,  <41.837627, 38.867584, 53.175377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.706772, 38.793167, 52.988457>,  <41.488678, 38.669140, 52.676922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706772, 38.793167, 52.988457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696709, -0.349056, 0.626703,
		0.466175, -0.884319, 0.025708,
		0.545232, 0.310065, 0.778834,
		41.870342, 38.886185, 53.222107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418640, 38.133316, 53.167900>,  <41.488678, 38.669140, 52.676922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418640, 38.133316, 53.167900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.612206, 38.391991, 53.403740>,  <41.728344, 38.547195, 53.545242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.612206, 38.391991, 53.403740>,  <41.418640, 38.133316, 53.167900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612206, 38.391991, 53.403740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607353, -0.236878, 0.758294,
		0.630041, -0.725043, 0.278138,
		0.483912, 0.646684, 0.589601,
		41.757378, 38.585995, 53.580620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533978, 37.741661, 53.789314>,  <41.418640, 38.133316, 53.167900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533978, 37.741661, 53.789314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.568611, 38.128929, 53.883255>,  <41.589390, 38.361290, 53.939617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.568611, 38.128929, 53.883255>,  <41.533978, 37.741661, 53.789314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568611, 38.128929, 53.883255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603353, -0.136625, 0.785684,
		0.792760, -0.209724, 0.572317,
		0.086583, 0.968168, 0.234848,
		41.594585, 38.419380, 53.953709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930119, 37.790630, 54.439335>,  <41.533978, 37.741661, 53.789314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930119, 37.790630, 54.439335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.706821, 38.119965, 54.398392>,  <41.572845, 38.317566, 54.373825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.706821, 38.119965, 54.398392>,  <41.930119, 37.790630, 54.439335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706821, 38.119965, 54.398392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594054, -0.310521, 0.742076,
		0.579195, 0.475066, 0.662454,
		-0.558241, 0.823340, -0.102362,
		41.539349, 38.366966, 54.367683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680645, 37.835487, 55.076263>,  <41.930119, 37.790630, 54.439335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680645, 37.835487, 55.076263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.451225, 38.076538, 54.854317>,  <41.313572, 38.221169, 54.721149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.451225, 38.076538, 54.854317>,  <41.680645, 37.835487, 55.076263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451225, 38.076538, 54.854317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787171, -0.217989, 0.576926,
		0.226713, 0.767675, 0.599396,
		-0.573553, 0.602624, -0.554870,
		41.279160, 38.257324, 54.687855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464867, 38.423084, 55.534752>,  <41.680645, 37.835487, 55.076263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464867, 38.423084, 55.534752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.197346, 38.375175, 55.241257>,  <41.036835, 38.346432, 55.065159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.197346, 38.375175, 55.241257>,  <41.464867, 38.423084, 55.534752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197346, 38.375175, 55.241257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719828, -0.142460, 0.679377,
		-0.185896, 0.982528, 0.009064,
		-0.668798, -0.119769, -0.733733,
		40.996708, 38.339245, 55.021137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855724, 38.969955, 55.668808>,  <41.464867, 38.423084, 55.534752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855724, 38.969955, 55.668808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.772812, 38.632561, 55.470592>,  <40.723064, 38.430122, 55.351662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.772812, 38.632561, 55.470592>,  <40.855724, 38.969955, 55.668808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772812, 38.632561, 55.470592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754573, -0.184536, 0.629735,
		-0.622620, 0.504453, -0.598224,
		-0.207278, -0.843489, -0.495542,
		40.710629, 38.379513, 55.321930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480423, 39.434414, 56.133781>,  <40.855724, 38.969955, 55.668808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480423, 39.434414, 56.133781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.670582, 39.523636, 56.474190>,  <40.784676, 39.577168, 56.678436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.670582, 39.523636, 56.474190>,  <40.480423, 39.434414, 56.133781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670582, 39.523636, 56.474190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602904, 0.621869, -0.499786,
		-0.640706, 0.750683, 0.161153,
		0.475397, 0.223056, 0.851025,
		40.813202, 39.590553, 56.729496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484909, 40.140495, 56.195255>,  <40.480423, 39.434414, 56.133781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484909, 40.140495, 56.195255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.776649, 40.028275, 56.444843>,  <40.951694, 39.960941, 56.594597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.776649, 40.028275, 56.444843>,  <40.484909, 40.140495, 56.195255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776649, 40.028275, 56.444843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608927, 0.681964, -0.405134,
		-0.311865, 0.675437, 0.668226,
		0.729348, -0.280554, 0.623972,
		40.995453, 39.944107, 56.632034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790276, 40.755966, 56.561581>,  <40.484909, 40.140495, 56.195255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790276, 40.755966, 56.561581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.075394, 40.477715, 56.597404>,  <41.246464, 40.310764, 56.618896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.075394, 40.477715, 56.597404>,  <40.790276, 40.755966, 56.561581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075394, 40.477715, 56.597404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686387, 0.665602, -0.292995,
		0.144206, 0.270317, 0.951910,
		0.712795, -0.695631, 0.089558,
		41.289230, 40.269024, 56.624271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347271, 41.127171, 57.007908>,  <40.790276, 40.755966, 56.561581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347271, 41.127171, 57.007908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.519176, 40.842247, 56.785942>,  <41.622318, 40.671295, 56.652763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.519176, 40.842247, 56.785942>,  <41.347271, 41.127171, 57.007908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519176, 40.842247, 56.785942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585040, 0.687775, -0.429760,
		0.687775, -0.139952, 0.712305,
		0.429760, -0.712305, -0.554912,
		41.648106, 40.628555, 56.619469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855122, 41.488350, 56.675869>,  <41.347271, 41.127171, 57.007908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855122, 41.488350, 56.675869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.901855, 41.134293, 56.495705>,  <41.929893, 40.921856, 56.387608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.901855, 41.134293, 56.495705>,  <41.855122, 41.488350, 56.675869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901855, 41.134293, 56.495705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683210, 0.400783, -0.610407,
		0.720815, -0.236407, 0.651565,
		0.116832, -0.885147, -0.450406,
		41.936905, 40.868748, 56.360584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
