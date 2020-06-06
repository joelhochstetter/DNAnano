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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.457851, 36.553963, 50.917198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454235, 36.155632, 50.953537>,  <39.452065, 35.916634, 50.975338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454235, 36.155632, 50.953537>,  <39.457851, 36.553963, 50.917198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454235, 36.155632, 50.953537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930091, 0.024984, 0.366478,
		-0.367218, 0.087807, 0.925981,
		-0.009044, -0.995824, 0.090843,
		39.451523, 35.856884, 50.980789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605118, 36.316685, 51.594849>,  <39.457851, 36.553963, 50.917198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605118, 36.316685, 51.594849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712723, 36.022480, 51.346123>,  <39.777287, 35.845959, 51.196888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712723, 36.022480, 51.346123>,  <39.605118, 36.316685, 51.594849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712723, 36.022480, 51.346123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958448, 0.140806, 0.248097,
		-0.094923, -0.662719, 0.742828,
		0.269014, -0.735512, -0.621815,
		39.793427, 35.801826, 51.159576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000118, 35.871567, 51.978710>,  <39.605118, 36.316685, 51.594849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000118, 35.871567, 51.978710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089710, 35.827778, 51.591339>,  <40.143467, 35.801502, 51.358917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089710, 35.827778, 51.591339>,  <40.000118, 35.871567, 51.978710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089710, 35.827778, 51.591339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967045, 0.148393, 0.206889,
		0.121059, -0.982850, 0.139104,
		0.223983, -0.109474, -0.968425,
		40.156906, 35.794937, 51.300812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395851, 35.345333, 52.001541>,  <40.000118, 35.871567, 51.978710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395851, 35.345333, 52.001541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486485, 35.535175, 51.661327>,  <40.540863, 35.649082, 51.457199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486485, 35.535175, 51.661327>,  <40.395851, 35.345333, 52.001541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486485, 35.535175, 51.661327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968004, -0.013042, 0.250597,
		0.107843, -0.880100, -0.462379,
		0.226580, 0.474610, -0.850533,
		40.554459, 35.677559, 51.406166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963982, 34.796349, 51.743462>,  <40.395851, 35.345333, 52.001541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963982, 34.796349, 51.743462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990650, 35.131477, 51.526718>,  <41.006649, 35.332554, 51.396671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990650, 35.131477, 51.526718>,  <40.963982, 34.796349, 51.743462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990650, 35.131477, 51.526718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997537, -0.044087, 0.054566,
		0.021827, -0.544166, -0.838694,
		0.066668, 0.837819, -0.541863,
		41.010651, 35.382824, 51.364159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566723, 34.758579, 51.289227>,  <40.963982, 34.796349, 51.743462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566723, 34.758579, 51.289227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516659, 35.153702, 51.326267>,  <41.486622, 35.390774, 51.348492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516659, 35.153702, 51.326267>,  <41.566723, 34.758579, 51.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516659, 35.153702, 51.326267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990548, 0.119129, 0.067991,
		0.056131, 0.100235, -0.993379,
		-0.125156, 0.987806, 0.092601,
		41.479111, 35.450043, 51.354046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942532, 35.003311, 50.662907>,  <41.566723, 34.758579, 51.289227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942532, 35.003311, 50.662907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940273, 35.281185, 50.950623>,  <41.938919, 35.447910, 51.123253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940273, 35.281185, 50.950623>,  <41.942532, 35.003311, 50.662907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940273, 35.281185, 50.950623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996894, 0.060413, -0.050523,
		-0.078552, 0.716770, -0.692871,
		-0.005645, 0.694688, 0.719289,
		41.938580, 35.489590, 51.166409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408215, 35.470909, 50.374470>,  <41.942532, 35.003311, 50.662907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408215, 35.470909, 50.374470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381931, 35.566078, 50.762093>,  <42.366161, 35.623180, 50.994667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381931, 35.566078, 50.762093>,  <42.408215, 35.470909, 50.374470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381931, 35.566078, 50.762093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997438, -0.011869, 0.070546,
		0.028286, 0.971212, -0.236530,
		-0.065708, 0.237919, 0.969060,
		42.362217, 35.637455, 51.052811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071472, 35.824810, 50.423676>,  <42.408215, 35.470909, 50.374470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071472, 35.824810, 50.423676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949989, 35.783833, 50.802574>,  <42.877102, 35.759247, 51.029911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949989, 35.783833, 50.802574>,  <43.071472, 35.824810, 50.423676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949989, 35.783833, 50.802574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943129, 0.108722, 0.314145,
		-0.135169, 0.988779, 0.063599,
		-0.303705, -0.102445, 0.947242,
		42.858879, 35.753098, 51.086746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242947, 36.421745, 50.762989>,  <43.071472, 35.824810, 50.423676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242947, 36.421745, 50.762989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218853, 36.135178, 51.041016>,  <43.204395, 35.963238, 51.207832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218853, 36.135178, 51.041016>,  <43.242947, 36.421745, 50.762989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218853, 36.135178, 51.041016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935284, 0.202766, 0.290050,
		-0.348733, 0.667555, 0.657841,
		-0.060237, -0.716419, 0.695065,
		43.200783, 35.920254, 51.249535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634098, 36.664852, 51.345879>,  <43.242947, 36.421745, 50.762989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634098, 36.664852, 51.345879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613197, 36.269749, 51.404682>,  <43.600658, 36.032688, 51.439964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613197, 36.269749, 51.404682>,  <43.634098, 36.664852, 51.345879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613197, 36.269749, 51.404682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886421, 0.021927, 0.462360,
		-0.459921, 0.154470, 0.874421,
		-0.052248, -0.987754, 0.147010,
		43.597523, 35.973423, 51.448784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954597, 36.643166, 51.953003>,  <43.634098, 36.664852, 51.345879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954597, 36.643166, 51.953003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972126, 36.268589, 51.813774>,  <43.982643, 36.043842, 51.730236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972126, 36.268589, 51.813774>,  <43.954597, 36.643166, 51.953003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972126, 36.268589, 51.813774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910975, -0.105573, 0.398722,
		-0.410127, -0.334559, 0.848449,
		0.043823, -0.936442, -0.348074,
		43.985271, 35.987656, 51.709351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352215, 36.328873, 52.513767>,  <43.954597, 36.643166, 51.953003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352215, 36.328873, 52.513767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376869, 36.087948, 52.195419>,  <44.391663, 35.943394, 52.004410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376869, 36.087948, 52.195419>,  <44.352215, 36.328873, 52.513767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376869, 36.087948, 52.195419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941613, -0.229355, 0.246500,
		-0.331008, -0.764599, 0.553012,
		0.061637, -0.602317, -0.795874,
		44.395359, 35.907253, 51.956657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579193, 35.621361, 52.805775>,  <44.352215, 36.328873, 52.513767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579193, 35.621361, 52.805775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668343, 35.660358, 52.417789>,  <44.721832, 35.683758, 52.184998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668343, 35.660358, 52.417789>,  <44.579193, 35.621361, 52.805775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668343, 35.660358, 52.417789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941515, -0.279486, 0.188249,
		-0.252736, -0.955187, -0.154085,
		0.222877, 0.097496, -0.969959,
		44.735207, 35.689606, 52.126801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078239, 35.170559, 52.748383>,  <44.579193, 35.621361, 52.805775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078239, 35.170559, 52.748383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121777, 35.324894, 52.381931>,  <45.147900, 35.417496, 52.162060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121777, 35.324894, 52.381931>,  <45.078239, 35.170559, 52.748383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121777, 35.324894, 52.381931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882962, -0.460891, -0.089208,
		-0.456654, -0.799194, -0.390840,
		0.108840, 0.385834, -0.916125,
		45.154430, 35.440643, 52.107094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139992, 34.632992, 52.308434>,  <45.078239, 35.170559, 52.748383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139992, 34.632992, 52.308434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303566, 34.958775, 52.143784>,  <45.401711, 35.154243, 52.044994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303566, 34.958775, 52.143784>,  <45.139992, 34.632992, 52.308434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303566, 34.958775, 52.143784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857373, -0.497382, -0.132378,
		-0.312550, -0.298781, -0.901689,
		0.408931, 0.814458, -0.411623,
		45.426247, 35.203114, 52.020298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477917, 34.413582, 51.749481>,  <45.139992, 34.632992, 52.308434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477917, 34.413582, 51.749481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651508, 34.755245, 51.864082>,  <45.755665, 34.960243, 51.932842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651508, 34.755245, 51.864082>,  <45.477917, 34.413582, 51.749481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651508, 34.755245, 51.864082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900023, -0.425245, -0.095522,
		0.040242, 0.299311, -0.953306,
		0.433980, 0.854154, 0.286500,
		45.781704, 35.011490, 51.950031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093456, 34.421360, 51.358418>,  <45.477917, 34.413582, 51.749481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.093456, 34.421360, 51.358418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157742, 34.707588, 51.630341>,  <46.196312, 34.879326, 51.793495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157742, 34.707588, 51.630341>,  <46.093456, 34.421360, 51.358418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157742, 34.707588, 51.630341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980582, -0.194183, -0.027421,
		0.112385, 0.671012, -0.732880,
		0.160713, 0.715567, 0.679805,
		46.205956, 34.922256, 51.834282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.744476, 34.712467, 51.150734>,  <46.093456, 34.421360, 51.358418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.744476, 34.712467, 51.150734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683010, 34.796356, 51.536980>,  <46.646130, 34.846687, 51.768726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683010, 34.796356, 51.536980>,  <46.744476, 34.712467, 51.150734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683010, 34.796356, 51.536980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934585, -0.286455, 0.210939,
		0.320842, 0.934859, -0.151984,
		-0.153662, 0.209720, 0.965612,
		46.636913, 34.859272, 51.826664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.292103, 35.069683, 51.286476>,  <46.744476, 34.712467, 51.150734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.292103, 35.069683, 51.286476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162338, 34.936836, 51.640755>,  <47.084480, 34.857128, 51.853321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162338, 34.936836, 51.640755>,  <47.292103, 35.069683, 51.286476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162338, 34.936836, 51.640755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942774, -0.189800, 0.274141,
		0.077057, 0.923944, 0.374686,
		-0.324407, -0.332120, 0.885696,
		47.065018, 34.837200, 51.906464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.779537, 35.445145, 51.833679>,  <47.292103, 35.069683, 51.286476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.779537, 35.445145, 51.833679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590824, 35.126068, 51.983940>,  <47.477596, 34.934624, 52.074097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590824, 35.126068, 51.983940>,  <47.779537, 35.445145, 51.833679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.590824, 35.126068, 51.983940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875567, -0.373611, 0.306264,
		-0.103957, 0.473395, 0.874694,
		-0.471779, -0.797692, 0.375650,
		47.449291, 34.886761, 52.096634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.260435, 34.810291, 51.836208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.432503, 34.897572, 52.186600>,  <24.535744, 34.949940, 52.396835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.432503, 34.897572, 52.186600>,  <24.260435, 34.810291, 51.836208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432503, 34.897572, 52.186600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900252, -0.175789, -0.398302,
		0.067077, 0.959940, -0.272057,
		0.430171, 0.218203, 0.875980,
		24.561554, 34.963032, 52.449394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789957, 35.359604, 51.721199>,  <24.260435, 34.810291, 51.836208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789957, 35.359604, 51.721199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.887325, 35.192852, 52.071503>,  <24.945745, 35.092800, 52.281685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.887325, 35.192852, 52.071503>,  <24.789957, 35.359604, 51.721199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887325, 35.192852, 52.071503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969040, 0.066064, -0.237900,
		0.041318, 0.906559, 0.420051,
		0.243420, -0.416876, 0.875763,
		24.960352, 35.067791, 52.334232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268368, 35.771976, 51.910572>,  <24.789957, 35.359604, 51.721199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268368, 35.771976, 51.910572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.360832, 35.469475, 52.155407>,  <25.416311, 35.287975, 52.302307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.360832, 35.469475, 52.155407>,  <25.268368, 35.771976, 51.910572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360832, 35.469475, 52.155407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967550, 0.112706, -0.226153,
		0.102043, 0.644501, 0.757764,
		0.231161, -0.756252, 0.612085,
		25.430180, 35.242599, 52.339031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887421, 36.025913, 52.338802>,  <25.268368, 35.771976, 51.910572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887421, 36.025913, 52.338802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.866940, 35.626469, 52.343685>,  <25.854650, 35.386803, 52.346615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.866940, 35.626469, 52.343685>,  <25.887421, 36.025913, 52.338802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866940, 35.626469, 52.343685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975280, -0.052627, -0.214614,
		0.214958, 0.000913, 0.976623,
		-0.051201, -0.998614, 0.012203,
		25.851580, 35.326885, 52.347347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403406, 35.846664, 52.757713>,  <25.887421, 36.025913, 52.338802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403406, 35.846664, 52.757713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.317942, 35.528980, 52.530174>,  <26.266663, 35.338371, 52.393650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.317942, 35.528980, 52.530174>,  <26.403406, 35.846664, 52.757713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317942, 35.528980, 52.530174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975771, -0.145415, -0.163476,
		0.047115, -0.589992, 0.806033,
		-0.213659, -0.794206, -0.568846,
		26.253843, 35.290718, 52.359520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985933, 35.337746, 52.893440>,  <26.403406, 35.846664, 52.757713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985933, 35.337746, 52.893440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.819729, 35.196026, 52.558342>,  <26.720007, 35.110996, 52.357281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.819729, 35.196026, 52.558342>,  <26.985933, 35.337746, 52.893440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819729, 35.196026, 52.558342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908552, -0.205633, -0.363660,
		-0.043425, -0.912243, 0.407340,
		-0.415509, -0.354298, -0.837750,
		26.695076, 35.089737, 52.307018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280903, 34.633621, 52.721725>,  <26.985933, 35.337746, 52.893440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280903, 34.633621, 52.721725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.153046, 34.819687, 52.391525>,  <27.076332, 34.931324, 52.193405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.153046, 34.819687, 52.391525>,  <27.280903, 34.633621, 52.721725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153046, 34.819687, 52.391525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863261, -0.216222, -0.456101,
		-0.390652, -0.858413, -0.332442,
		-0.319642, 0.465162, -0.825502,
		27.057154, 34.959236, 52.143875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712498, 34.278954, 52.278473>,  <27.280903, 34.633621, 52.721725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712498, 34.278954, 52.278473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.584629, 34.590199, 52.062195>,  <27.507908, 34.776943, 51.932426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.584629, 34.590199, 52.062195>,  <27.712498, 34.278954, 52.278473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584629, 34.590199, 52.062195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927844, 0.141348, -0.345146,
		-0.192136, -0.612017, -0.767150,
		-0.319670, 0.778111, -0.540699,
		27.488728, 34.823631, 51.899986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055246, 34.235840, 51.692215>,  <27.712498, 34.278954, 52.278473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055246, 34.235840, 51.692215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.954483, 34.621769, 51.662121>,  <27.894024, 34.853325, 51.644062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.954483, 34.621769, 51.662121>,  <28.055246, 34.235840, 51.692215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954483, 34.621769, 51.662121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930275, 0.219996, -0.293582,
		-0.266702, -0.143947, -0.952969,
		-0.251910, 0.964822, -0.075237,
		27.878910, 34.911217, 51.639549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332285, 34.453461, 51.012737>,  <28.055246, 34.235840, 51.692215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332285, 34.453461, 51.012737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.260937, 34.804688, 51.190353>,  <28.218128, 35.015423, 51.296925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.260937, 34.804688, 51.190353>,  <28.332285, 34.453461, 51.012737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260937, 34.804688, 51.190353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895886, 0.331547, -0.295745,
		-0.406907, 0.345062, -0.845789,
		-0.178369, 0.878071, 0.444044,
		28.207426, 35.068108, 51.323566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324492, 34.924915, 50.465263>,  <28.332285, 34.453461, 51.012737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324492, 34.924915, 50.465263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.418438, 35.133732, 50.793243>,  <28.474806, 35.259022, 50.990032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.418438, 35.133732, 50.793243>,  <28.324492, 34.924915, 50.465263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418438, 35.133732, 50.793243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914017, 0.168443, -0.369051,
		-0.330773, 0.836125, -0.437589,
		0.234864, 0.522037, 0.819949,
		28.488897, 35.290344, 51.039227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614758, 35.533546, 50.244671>,  <28.324492, 34.924915, 50.465263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614758, 35.533546, 50.244671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.745327, 35.505062, 50.621685>,  <28.823668, 35.487972, 50.847893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.745327, 35.505062, 50.621685>,  <28.614758, 35.533546, 50.244671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745327, 35.505062, 50.621685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894514, 0.345494, -0.283686,
		-0.305439, 0.935715, 0.176480,
		0.326422, -0.071215, 0.942537,
		28.843254, 35.483696, 50.904446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161152, 35.973755, 50.232452>,  <28.614758, 35.533546, 50.244671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161152, 35.973755, 50.232452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.210854, 35.759380, 50.566479>,  <29.240675, 35.630756, 50.766895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.210854, 35.759380, 50.566479>,  <29.161152, 35.973755, 50.232452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210854, 35.759380, 50.566479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990013, 0.123452, -0.068077,
		-0.066605, 0.835184, 0.545923,
		0.124252, -0.535937, 0.835065,
		29.248129, 35.598598, 50.816998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550318, 36.397476, 50.599834>,  <29.161152, 35.973755, 50.232452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550318, 36.397476, 50.599834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.622442, 36.028553, 50.736557>,  <29.665716, 35.807198, 50.818592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.622442, 36.028553, 50.736557>,  <29.550318, 36.397476, 50.599834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622442, 36.028553, 50.736557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979129, 0.135168, -0.151778,
		0.093785, 0.362040, 0.927433,
		0.180309, -0.922310, 0.341807,
		29.676535, 35.751862, 50.839100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192413, 36.470039, 51.058571>,  <29.550318, 36.397476, 50.599834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192413, 36.470039, 51.058571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.199701, 36.075729, 50.991745>,  <30.204073, 35.839142, 50.951649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.199701, 36.075729, 50.991745>,  <30.192413, 36.470039, 51.058571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199701, 36.075729, 50.991745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942959, 0.072494, -0.324919,
		0.332409, -0.151620, 0.930868,
		0.018218, -0.985777, -0.167069,
		30.205166, 35.779995, 50.941624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784435, 36.176136, 51.435402>,  <30.192413, 36.470039, 51.058571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784435, 36.176136, 51.435402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.691395, 35.904400, 51.157009>,  <30.635571, 35.741360, 50.989971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.691395, 35.904400, 51.157009>,  <30.784435, 36.176136, 51.435402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691395, 35.904400, 51.157009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972389, -0.176342, -0.152852,
		-0.018893, -0.712323, 0.701598,
		-0.232601, -0.679338, -0.695986,
		30.621614, 35.700600, 50.948212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155897, 35.621815, 51.534313>,  <30.784435, 36.176136, 51.435402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155897, 35.621815, 51.534313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.065792, 35.556133, 51.150169>,  <31.011728, 35.516724, 50.919682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.065792, 35.556133, 51.150169>,  <31.155897, 35.621815, 51.534313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065792, 35.556133, 51.150169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962284, -0.191814, -0.192918,
		-0.152533, -0.967598, 0.201216,
		-0.225264, -0.164201, -0.960362,
		30.998213, 35.506874, 50.862061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628435, 35.143715, 51.373272>,  <31.155897, 35.621815, 51.534313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628435, 35.143715, 51.373272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.490026, 35.314167, 51.038925>,  <31.406981, 35.416439, 50.838318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.490026, 35.314167, 51.038925>,  <31.628435, 35.143715, 51.373272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490026, 35.314167, 51.038925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898737, -0.105199, -0.425681,
		-0.269330, -0.898522, -0.346582,
		-0.346024, 0.426135, -0.835869,
		31.386219, 35.442009, 50.788166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888212, 34.764671, 50.869003>,  <31.628435, 35.143715, 51.373272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888212, 34.764671, 50.869003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.802378, 35.113869, 50.693806>,  <31.750877, 35.323387, 50.588688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.802378, 35.113869, 50.693806>,  <31.888212, 34.764671, 50.869003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802378, 35.113869, 50.693806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881464, -0.020056, -0.471826,
		-0.420684, -0.487324, -0.765206,
		-0.214585, 0.872991, -0.437996,
		31.738003, 35.375767, 50.562408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030613, 34.589611, 50.178253>,  <31.888212, 34.764671, 50.869003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030613, 34.589611, 50.178253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044735, 34.988029, 50.210842>,  <32.053207, 35.227081, 50.230396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044735, 34.988029, 50.210842>,  <32.030613, 34.589611, 50.178253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044735, 34.988029, 50.210842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847248, 0.013406, -0.531028,
		-0.530023, 0.087778, -0.843428,
		0.035306, 0.996050, 0.081475,
		32.055328, 35.286846, 50.235283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109009, 34.905846, 49.504604>,  <32.030613, 34.589611, 50.178253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109009, 34.905846, 49.504604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.242538, 35.170685, 49.772987>,  <32.322655, 35.329590, 49.934017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.242538, 35.170685, 49.772987>,  <32.109009, 34.905846, 49.504604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242538, 35.170685, 49.772987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903886, -0.022852, -0.427162,
		-0.267490, 0.749070, -0.606089,
		0.333824, 0.662097, 0.670961,
		32.342686, 35.369312, 49.974277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.732313, 35.139484, 35.083675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.480589, 35.330048, 35.329277>,  <24.329554, 35.444386, 35.476639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.480589, 35.330048, 35.329277>,  <24.732313, 35.139484, 35.083675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480589, 35.330048, 35.329277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641913, 0.764007, 0.065126,
		-0.438080, 0.435124, -0.786609,
		-0.629312, 0.476404, 0.614008,
		24.291796, 35.472969, 35.513481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586966, 35.812851, 34.772243>,  <24.732313, 35.139484, 35.083675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586966, 35.812851, 34.772243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.544098, 35.815483, 35.169930>,  <24.518377, 35.817062, 35.408543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.544098, 35.815483, 35.169930>,  <24.586966, 35.812851, 34.772243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544098, 35.815483, 35.169930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641945, 0.764063, 0.064143,
		-0.759224, 0.645108, -0.086105,
		-0.107169, 0.006575, 0.994219,
		24.511948, 35.817455, 35.468197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.625425, 36.541500, 35.040710>,  <24.586966, 35.812851, 34.772243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.625425, 36.541500, 35.040710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.727116, 36.330357, 35.364868>,  <24.788130, 36.203671, 35.559361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.727116, 36.330357, 35.364868>,  <24.625425, 36.541500, 35.040710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.727116, 36.330357, 35.364868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706993, 0.673199, 0.216711,
		-0.659948, 0.517848, 0.544337,
		0.254224, -0.527860, 0.810391,
		24.803383, 36.171997, 35.607986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615641, 36.918789, 35.699070>,  <24.625425, 36.541500, 35.040710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615641, 36.918789, 35.699070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.891382, 36.630989, 35.732800>,  <25.056828, 36.458309, 35.753036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.891382, 36.630989, 35.732800>,  <24.615641, 36.918789, 35.699070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891382, 36.630989, 35.732800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706751, 0.693519, 0.139765,
		-0.159039, -0.036754, 0.986588,
		0.689355, -0.719500, 0.084321,
		25.098188, 36.415138, 35.758095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988541, 36.895580, 36.387608>,  <24.615641, 36.918789, 35.699070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988541, 36.895580, 36.387608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.212624, 36.793102, 36.072514>,  <25.347075, 36.731617, 35.883457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.212624, 36.793102, 36.072514>,  <24.988541, 36.895580, 36.387608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212624, 36.793102, 36.072514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598275, 0.782862, 0.170861,
		0.572916, -0.567001, 0.591842,
		0.560209, -0.256195, -0.787737,
		25.380686, 36.716244, 35.836193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068115, 36.499237, 37.141762>,  <24.988541, 36.895580, 36.387608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068115, 36.499237, 37.141762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.230305, 36.478893, 37.506836>,  <25.327620, 36.466686, 37.725880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.230305, 36.478893, 37.506836>,  <25.068115, 36.499237, 37.141762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230305, 36.478893, 37.506836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848372, 0.350841, 0.396453,
		-0.340373, -0.935053, 0.099108,
		0.405475, -0.050862, 0.912690,
		25.351948, 36.463634, 37.780643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581646, 36.195324, 37.587986>,  <25.068115, 36.499237, 37.141762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581646, 36.195324, 37.587986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.819681, 36.423351, 37.814575>,  <24.962503, 36.560165, 37.950531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.819681, 36.423351, 37.814575>,  <24.581646, 36.195324, 37.587986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819681, 36.423351, 37.814575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801825, 0.373561, 0.466400,
		0.054266, -0.731764, 0.679395,
		0.595090, 0.570065, 0.566475,
		24.998209, 36.594372, 37.984516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508430, 36.020752, 38.365177>,  <24.581646, 36.195324, 37.587986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508430, 36.020752, 38.365177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.611782, 36.404194, 38.317310>,  <24.673794, 36.634258, 38.288589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.611782, 36.404194, 38.317310>,  <24.508430, 36.020752, 38.365177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.611782, 36.404194, 38.317310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785446, 0.280577, 0.551681,
		0.562419, -0.048549, 0.825426,
		0.258379, 0.958603, -0.119669,
		24.689297, 36.691776, 38.281410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397388, 36.404579, 38.952789>,  <24.508430, 36.020752, 38.365177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397388, 36.404579, 38.952789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.377846, 36.747826, 38.748341>,  <24.366119, 36.953773, 38.625671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.377846, 36.747826, 38.748341>,  <24.397388, 36.404579, 38.952789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377846, 36.747826, 38.748341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653026, 0.359763, 0.666429,
		0.755758, 0.366335, 0.542797,
		-0.048859, 0.858119, -0.511120,
		24.363188, 37.005260, 38.595005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473749, 37.029636, 39.391266>,  <24.397388, 36.404579, 38.952789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473749, 37.029636, 39.391266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.605637, 37.196426, 39.730068>,  <24.684769, 37.296501, 39.933350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.605637, 37.196426, 39.730068>,  <24.473749, 37.029636, 39.391266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605637, 37.196426, 39.730068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413406, -0.870354, 0.267543,
		0.848752, 0.261942, -0.459353,
		0.329719, 0.416977, 0.847004,
		24.704552, 37.321518, 39.984169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227146, 36.896797, 39.446335>,  <24.473749, 37.029636, 39.391266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227146, 36.896797, 39.446335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.093851, 36.966427, 39.816986>,  <25.013874, 37.008205, 40.039379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.093851, 36.966427, 39.816986>,  <25.227146, 36.896797, 39.446335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093851, 36.966427, 39.816986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434593, -0.843815, 0.314809,
		0.836708, 0.507615, 0.205540,
		-0.333240, 0.174077, 0.926633,
		24.993879, 37.018650, 40.094975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910942, 36.630360, 39.585648>,  <25.227146, 36.896797, 39.446335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910942, 36.630360, 39.585648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.689352, 36.665272, 39.916824>,  <25.556398, 36.686218, 40.115532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.689352, 36.665272, 39.916824>,  <25.910942, 36.630360, 39.585648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689352, 36.665272, 39.916824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517207, -0.743217, 0.424412,
		0.652388, 0.663332, 0.366579,
		-0.553973, 0.087284, 0.827946,
		25.523159, 36.691456, 40.165207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359016, 36.438976, 40.041580>,  <25.910942, 36.630360, 39.585648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359016, 36.438976, 40.041580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.058140, 36.446945, 40.305038>,  <25.877613, 36.451729, 40.463112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.058140, 36.446945, 40.305038>,  <26.359016, 36.438976, 40.041580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058140, 36.446945, 40.305038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380643, -0.802768, 0.458992,
		0.537884, 0.595958, 0.596251,
		-0.752191, 0.019926, 0.658644,
		25.832483, 36.452923, 40.502632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509510, 36.586697, 40.842354>,  <26.359016, 36.438976, 40.041580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509510, 36.586697, 40.842354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.186832, 36.353859, 40.801533>,  <25.993225, 36.214157, 40.777039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.186832, 36.353859, 40.801533>,  <26.509510, 36.586697, 40.842354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186832, 36.353859, 40.801533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457155, -0.724094, 0.516428,
		-0.374505, 0.369945, 0.850228,
		-0.806694, -0.582090, -0.102054,
		25.944824, 36.179234, 40.770916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026787, 36.444805, 41.463551>,  <26.509510, 36.586697, 40.842354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026787, 36.444805, 41.463551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.067284, 36.156902, 41.188828>,  <26.091581, 35.984161, 41.023994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.067284, 36.156902, 41.188828>,  <26.026787, 36.444805, 41.463551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067284, 36.156902, 41.188828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466177, -0.575551, 0.671879,
		-0.878880, -0.388197, 0.277261,
		0.101243, -0.719753, -0.686808,
		26.097656, 35.940975, 40.982784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221884, 35.866959, 41.889336>,  <26.026787, 36.444805, 41.463551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221884, 35.866959, 41.889336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.246130, 35.687943, 41.532455>,  <26.260677, 35.580532, 41.318325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.246130, 35.687943, 41.532455>,  <26.221884, 35.866959, 41.889336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246130, 35.687943, 41.532455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367061, -0.821222, 0.436877,
		-0.928220, -0.353975, 0.114497,
		0.060616, -0.447545, -0.892205,
		26.264315, 35.553680, 41.264793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865515, 35.124294, 41.920807>,  <26.221884, 35.866959, 41.889336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865515, 35.124294, 41.920807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.187571, 35.186790, 41.691952>,  <26.380804, 35.224289, 41.554638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.187571, 35.186790, 41.691952>,  <25.865515, 35.124294, 41.920807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187571, 35.186790, 41.691952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500028, -0.697587, 0.513172,
		-0.318938, -0.699259, -0.639778,
		0.805140, 0.156237, -0.572136,
		26.429113, 35.233662, 41.520309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209658, 34.548374, 41.664268>,  <25.865515, 35.124294, 41.920807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209658, 34.548374, 41.664268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.530821, 34.785954, 41.644024>,  <26.723518, 34.928501, 41.631878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.530821, 34.785954, 41.644024>,  <26.209658, 34.548374, 41.664268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530821, 34.785954, 41.644024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506978, -0.635743, 0.582069,
		0.313545, -0.493006, -0.811563,
		0.802909, 0.593949, -0.050609,
		26.771694, 34.964138, 41.628841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757946, 34.098110, 41.585243>,  <26.209658, 34.548374, 41.664268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757946, 34.098110, 41.585243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.902739, 34.442532, 41.728104>,  <26.989614, 34.649185, 41.813820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.902739, 34.442532, 41.728104>,  <26.757946, 34.098110, 41.585243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902739, 34.442532, 41.728104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644278, -0.507986, 0.571714,
		0.673703, 0.023153, -0.738639,
		0.361981, 0.861054, 0.357149,
		27.011333, 34.700848, 41.835247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478722, 34.060001, 41.446693>,  <26.757946, 34.098110, 41.585243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478722, 34.060001, 41.446693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.401917, 34.318920, 41.741756>,  <27.355833, 34.474274, 41.918793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.401917, 34.318920, 41.741756>,  <27.478722, 34.060001, 41.446693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401917, 34.318920, 41.741756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836757, -0.284770, 0.467700,
		0.512804, 0.707043, -0.486952,
		-0.192014, 0.647299, 0.737655,
		27.344313, 34.513111, 41.963055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017603, 34.625149, 41.592930>,  <27.478722, 34.060001, 41.446693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017603, 34.625149, 41.592930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.804079, 34.449215, 41.881817>,  <27.675964, 34.343655, 42.055149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.804079, 34.449215, 41.881817>,  <28.017603, 34.625149, 41.592930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804079, 34.449215, 41.881817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845566, -0.269562, 0.460819,
		-0.008000, 0.856671, 0.515801,
		-0.533810, -0.439830, 0.722216,
		27.643936, 34.317265, 42.098480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205021, 34.926487, 42.222767>,  <28.017603, 34.625149, 41.592930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205021, 34.926487, 42.222767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.081490, 34.551071, 42.284431>,  <28.007372, 34.325821, 42.321430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.081490, 34.551071, 42.284431>,  <28.205021, 34.926487, 42.222767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081490, 34.551071, 42.284431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819239, -0.180146, 0.544422,
		-0.483191, 0.294427, 0.824523,
		-0.308827, -0.938541, 0.154161,
		27.988842, 34.269508, 42.330681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057373, 34.752441, 42.947777>,  <28.205021, 34.926487, 42.222767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057373, 34.752441, 42.947777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.218050, 34.473541, 42.710293>,  <28.314455, 34.306202, 42.567802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.218050, 34.473541, 42.710293>,  <28.057373, 34.752441, 42.947777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218050, 34.473541, 42.710293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865467, 0.077115, 0.494995,
		-0.299352, -0.712669, 0.634422,
		0.401691, -0.697249, -0.593707,
		28.338558, 34.264366, 42.532181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374844, 34.151920, 43.437046>,  <28.057373, 34.752441, 42.947777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374844, 34.151920, 43.437046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.551935, 34.187847, 43.080189>,  <28.658190, 34.209404, 42.866074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.551935, 34.187847, 43.080189>,  <28.374844, 34.151920, 43.437046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551935, 34.187847, 43.080189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887294, 0.099519, 0.450339,
		0.129235, -0.990974, -0.035637,
		0.442727, 0.089820, -0.892146,
		28.684753, 34.214794, 42.812546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555223, 34.147427, 44.148769>,  <28.374844, 34.151920, 43.437046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555223, 34.147427, 44.148769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.684023, 33.771484, 44.194370>,  <28.761303, 33.545921, 44.221729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.684023, 33.771484, 44.194370>,  <28.555223, 34.147427, 44.148769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684023, 33.771484, 44.194370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559000, -0.091559, 0.824097,
		-0.764091, -0.329083, -0.554859,
		0.321999, -0.939852, 0.113998,
		28.780622, 33.489529, 44.228569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749577, 34.854053, 43.890293>,  <28.555223, 34.147427, 44.148769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749577, 34.854053, 43.890293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879620, 35.226448, 43.956707>,  <28.957645, 35.449886, 43.996555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879620, 35.226448, 43.956707>,  <28.749577, 34.854053, 43.890293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879620, 35.226448, 43.956707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721825, -0.357726, 0.592453,
		0.610961, -0.072763, -0.788309,
		0.325108, 0.930987, 0.166035,
		28.977152, 35.505745, 44.006519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443363, 34.836411, 44.012245>,  <28.749577, 34.854053, 43.890293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443363, 34.836411, 44.012245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.415710, 35.224842, 44.103661>,  <29.399118, 35.457901, 44.158512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.415710, 35.224842, 44.103661>,  <29.443363, 34.836411, 44.012245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415710, 35.224842, 44.103661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745263, -0.102019, 0.658920,
		0.663177, 0.215878, -0.716654,
		-0.069134, 0.971076, 0.228543,
		29.394970, 35.516167, 44.172222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086117, 34.892727, 44.097103>,  <29.443363, 34.836411, 44.012245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086117, 34.892727, 44.097103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.892685, 35.202881, 44.259548>,  <29.776627, 35.388973, 44.357018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.892685, 35.202881, 44.259548>,  <30.086117, 34.892727, 44.097103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892685, 35.202881, 44.259548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674176, 0.034033, 0.737786,
		0.558247, 0.630571, -0.539203,
		-0.483578, 0.775385, 0.406117,
		29.747612, 35.435497, 44.381382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390570, 35.446701, 44.276772>,  <30.086117, 34.892727, 44.097103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390570, 35.446701, 44.276772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119419, 35.461864, 44.570450>,  <29.956730, 35.470963, 44.746658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119419, 35.461864, 44.570450>,  <30.390570, 35.446701, 44.276772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119419, 35.461864, 44.570450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732313, -0.053257, 0.678883,
		0.064837, 0.997861, 0.008340,
		-0.677875, 0.037909, 0.734199,
		29.916058, 35.473236, 44.790710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537727, 36.047531, 44.619911>,  <30.390570, 35.446701, 44.276772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537727, 36.047531, 44.619911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379677, 35.765991, 44.856037>,  <30.284847, 35.597069, 44.997711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379677, 35.765991, 44.856037>,  <30.537727, 36.047531, 44.619911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379677, 35.765991, 44.856037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812703, 0.031732, 0.581814,
		-0.428242, 0.709639, 0.559483,
		-0.395124, -0.703851, 0.590315,
		30.261139, 35.554836, 45.033131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439117, 36.176170, 45.336277>,  <30.537727, 36.047531, 44.619911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439117, 36.176170, 45.336277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.569118, 35.804138, 45.267784>,  <30.647120, 35.580917, 45.226688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.569118, 35.804138, 45.267784>,  <30.439117, 36.176170, 45.336277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569118, 35.804138, 45.267784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854391, 0.211140, 0.474801,
		-0.405450, -0.300612, 0.863275,
		0.325002, -0.930082, -0.171234,
		30.666618, 35.525112, 45.216415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603683, 35.787086, 45.970039>,  <30.439117, 36.176170, 45.336277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603683, 35.787086, 45.970039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839876, 35.617851, 45.695133>,  <30.981592, 35.516308, 45.530190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839876, 35.617851, 45.695133>,  <30.603683, 35.787086, 45.970039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839876, 35.617851, 45.695133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774246, 0.056641, 0.630345,
		-0.227765, -0.904315, 0.361021,
		0.590480, -0.423090, -0.687261,
		31.017019, 35.490925, 45.488956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856384, 35.082912, 46.239048>,  <30.603683, 35.787086, 45.970039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856384, 35.082912, 46.239048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097816, 35.287033, 45.994007>,  <31.242676, 35.409504, 45.846981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097816, 35.287033, 45.994007>,  <30.856384, 35.082912, 46.239048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097816, 35.287033, 45.994007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753398, -0.113586, 0.647680,
		0.260928, -0.852462, -0.453018,
		0.603579, 0.510301, -0.612606,
		31.278891, 35.440125, 45.810226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363453, 34.674728, 45.881855>,  <30.856384, 35.082912, 46.239048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363453, 34.674728, 45.881855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434715, 35.036446, 46.037041>,  <31.477472, 35.253475, 46.130154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434715, 35.036446, 46.037041>,  <31.363453, 34.674728, 45.881855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434715, 35.036446, 46.037041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444134, -0.425726, 0.788354,
		0.878069, 0.031860, -0.477472,
		0.178155, 0.904291, 0.387967,
		31.488161, 35.307732, 46.153431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118603, 34.795013, 46.059311>,  <31.363453, 34.674728, 45.881855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118603, 34.795013, 46.059311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898209, 35.017475, 46.308182>,  <31.765972, 35.150951, 46.457504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898209, 35.017475, 46.308182>,  <32.118603, 34.795013, 46.059311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898209, 35.017475, 46.308182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625539, -0.218242, 0.749047,
		0.552373, 0.801910, -0.227649,
		-0.550986, 0.556157, 0.622177,
		31.732912, 35.184322, 46.494835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643738, 35.240910, 46.423107>,  <32.118603, 34.795013, 46.059311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643738, 35.240910, 46.423107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296391, 35.184067, 46.613155>,  <32.087982, 35.149963, 46.727184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296391, 35.184067, 46.613155>,  <32.643738, 35.240910, 46.423107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296391, 35.184067, 46.613155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494750, -0.313877, 0.810373,
		0.033970, 0.938769, 0.342868,
		-0.868371, -0.142105, 0.475118,
		32.035877, 35.141434, 46.755692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468555, 35.681534, 47.019646>,  <32.643738, 35.240910, 46.423107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468555, 35.681534, 47.019646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.329128, 35.306648, 47.024296>,  <32.245472, 35.081718, 47.027084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.329128, 35.306648, 47.024296>,  <32.468555, 35.681534, 47.019646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329128, 35.306648, 47.024296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640282, -0.229039, 0.733198,
		-0.684500, 0.263011, 0.679915,
		-0.348566, -0.937212, 0.011624,
		32.224560, 35.025486, 47.027782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570503, 35.393661, 47.702332>,  <32.468555, 35.681534, 47.019646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570503, 35.393661, 47.702332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565590, 35.093140, 47.438396>,  <32.562641, 34.912827, 47.280037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565590, 35.093140, 47.438396>,  <32.570503, 35.393661, 47.702332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565590, 35.093140, 47.438396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503765, -0.574674, 0.644958,
		-0.863753, -0.324482, 0.385541,
		-0.012283, -0.751306, -0.659839,
		32.561905, 34.867748, 47.240444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248531, 35.424129, 48.462898>,  <32.570503, 35.393661, 47.702332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248531, 35.424129, 48.462898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125851, 35.775326, 48.609905>,  <32.052242, 35.986042, 48.698109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125851, 35.775326, 48.609905>,  <32.248531, 35.424129, 48.462898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125851, 35.775326, 48.609905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609455, -0.115429, 0.784373,
		0.731092, 0.464556, -0.499692,
		-0.306706, 0.877989, 0.367515,
		32.033840, 36.038723, 48.720161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569885, 35.363918, 49.062565>,  <32.248531, 35.424129, 48.462898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569885, 35.363918, 49.062565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646503, 35.426785, 49.450092>,  <32.692474, 35.464504, 49.682610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646503, 35.426785, 49.450092>,  <32.569885, 35.363918, 49.062565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646503, 35.426785, 49.450092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965891, 0.145067, -0.214499,
		-0.174257, 0.976859, -0.124020,
		0.191544, 0.157168, 0.968818,
		32.703968, 35.473934, 49.740738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879707, 35.980438, 49.031223>,  <32.569885, 35.363918, 49.062565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879707, 35.980438, 49.031223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003471, 35.815525, 49.373985>,  <33.077728, 35.716576, 49.579643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003471, 35.815525, 49.373985>,  <32.879707, 35.980438, 49.031223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003471, 35.815525, 49.373985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911294, -0.128892, -0.391064,
		0.271677, 0.901892, 0.335830,
		0.309411, -0.412283, 0.856906,
		33.096294, 35.691841, 49.631058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548676, 36.348160, 49.323803>,  <32.879707, 35.980438, 49.031223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548676, 36.348160, 49.323803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.528324, 35.971394, 49.456589>,  <33.516113, 35.745335, 49.536259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.528324, 35.971394, 49.456589>,  <33.548676, 36.348160, 49.323803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528324, 35.971394, 49.456589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936194, -0.160730, -0.312581,
		0.347783, 0.294882, 0.889995,
		-0.050874, -0.941919, 0.331966,
		33.513062, 35.688820, 49.556179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147831, 36.254742, 49.672653>,  <33.548676, 36.348160, 49.323803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147831, 36.254742, 49.672653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043896, 35.880592, 49.576683>,  <33.981533, 35.656105, 49.519100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043896, 35.880592, 49.576683>,  <34.147831, 36.254742, 49.672653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043896, 35.880592, 49.576683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949556, -0.202320, -0.239604,
		0.175576, -0.290083, 0.940758,
		-0.259839, -0.935371, -0.239928,
		33.965942, 35.599979, 49.504704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683716, 35.868893, 49.847546>,  <34.147831, 36.254742, 49.672653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683716, 35.868893, 49.847546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511215, 35.612167, 49.593899>,  <34.407715, 35.458134, 49.441711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511215, 35.612167, 49.593899>,  <34.683716, 35.868893, 49.847546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511215, 35.612167, 49.593899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899566, -0.251892, -0.356837,
		0.069293, -0.724314, 0.685980,
		-0.431254, -0.641810, -0.634113,
		34.381840, 35.419624, 49.403664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927246, 35.166096, 49.940922>,  <34.683716, 35.868893, 49.847546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927246, 35.166096, 49.940922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776924, 35.178139, 49.570438>,  <34.686729, 35.185364, 49.348148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776924, 35.178139, 49.570438>,  <34.927246, 35.166096, 49.940922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776924, 35.178139, 49.570438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864907, -0.347457, -0.362227,
		-0.332723, -0.937212, 0.104538,
		-0.375806, 0.030106, -0.926209,
		34.664181, 35.187172, 49.292576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119816, 34.507584, 49.687798>,  <34.927246, 35.166096, 49.940922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119816, 34.507584, 49.687798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041763, 34.752666, 49.381462>,  <34.994930, 34.899715, 49.197662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041763, 34.752666, 49.381462>,  <35.119816, 34.507584, 49.687798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041763, 34.752666, 49.381462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902096, -0.194311, -0.385314,
		-0.384897, -0.766047, -0.514807,
		-0.195136, 0.612711, -0.765837,
		34.983223, 34.936481, 49.151711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287834, 34.174515, 49.184414>,  <35.119816, 34.507584, 49.687798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287834, 34.174515, 49.184414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.276722, 34.528801, 48.999054>,  <35.270054, 34.741371, 48.887836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.276722, 34.528801, 48.999054>,  <35.287834, 34.174515, 49.184414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276722, 34.528801, 48.999054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911782, -0.167562, -0.374936,
		-0.409734, -0.432936, -0.802922,
		-0.027784, 0.885714, -0.463399,
		35.268387, 34.794514, 48.860035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547768, 34.058372, 48.516052>,  <35.287834, 34.174515, 49.184414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547768, 34.058372, 48.516052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594048, 34.454781, 48.542892>,  <35.621815, 34.692623, 48.558994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594048, 34.454781, 48.542892>,  <35.547768, 34.058372, 48.516052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594048, 34.454781, 48.542892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860869, -0.066345, -0.504482,
		-0.495498, 0.116129, -0.860811,
		0.115696, 0.991016, 0.067098,
		35.628757, 34.752087, 48.563023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714455, 34.308708, 47.737015>,  <35.547768, 34.058372, 48.516052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714455, 34.308708, 47.737015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822083, 34.619545, 47.964603>,  <35.886658, 34.806046, 48.101158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822083, 34.619545, 47.964603>,  <35.714455, 34.308708, 47.737015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822083, 34.619545, 47.964603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800810, 0.147693, -0.580423,
		-0.535075, 0.611813, -0.582563,
		0.269070, 0.777092, 0.568973,
		35.902805, 34.852673, 48.135296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749554, 34.816563, 47.252537>,  <35.714455, 34.308708, 47.737015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749554, 34.816563, 47.252537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970131, 34.894070, 47.577095>,  <36.102478, 34.940575, 47.771832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970131, 34.894070, 47.577095>,  <35.749554, 34.816563, 47.252537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970131, 34.894070, 47.577095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807123, 0.121932, -0.577655,
		-0.210865, 0.973441, -0.089154,
		0.551442, 0.193766, 0.811398,
		36.135563, 34.952198, 47.820515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284824, 35.250401, 46.988171>,  <35.749554, 34.816563, 47.252537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284824, 35.250401, 46.988171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431889, 35.106071, 47.331013>,  <36.520126, 35.019474, 47.536716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431889, 35.106071, 47.331013>,  <36.284824, 35.250401, 46.988171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431889, 35.106071, 47.331013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920671, 0.011299, -0.390175,
		0.131098, 0.932567, 0.336350,
		0.367665, -0.360819, 0.857107,
		36.542187, 34.997826, 47.588146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911476, 35.560474, 46.994659>,  <36.284824, 35.250401, 46.988171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911476, 35.560474, 46.994659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973221, 35.288551, 47.281445>,  <37.010269, 35.125397, 47.453514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973221, 35.288551, 47.281445>,  <36.911476, 35.560474, 46.994659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973221, 35.288551, 47.281445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907208, -0.189901, -0.375381,
		0.391338, 0.708381, 0.587411,
		0.154363, -0.679805, 0.716964,
		37.019531, 35.084610, 47.496532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655579, 35.622334, 47.277023>,  <36.911476, 35.560474, 46.994659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655579, 35.622334, 47.277023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533165, 35.248356, 47.348835>,  <37.459717, 35.023972, 47.391922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533165, 35.248356, 47.348835>,  <37.655579, 35.622334, 47.277023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533165, 35.248356, 47.348835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876889, -0.350249, -0.329227,
		0.370686, 0.056669, 0.927028,
		-0.306034, -0.934941, 0.179525,
		37.441357, 34.967873, 47.402691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197464, 35.281437, 47.760445>,  <37.655579, 35.622334, 47.277023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197464, 35.281437, 47.760445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989975, 35.031334, 47.527214>,  <37.865482, 34.881271, 47.387276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989975, 35.031334, 47.527214>,  <38.197464, 35.281437, 47.760445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989975, 35.031334, 47.527214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854787, -0.392276, -0.339791,
		-0.016269, -0.674664, 0.737946,
		-0.518723, -0.625259, -0.583076,
		37.834358, 34.843758, 47.352291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646057, 34.697651, 47.766846>,  <38.197464, 35.281437, 47.760445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646057, 34.697651, 47.766846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408806, 34.757320, 47.450378>,  <38.266457, 34.793121, 47.260498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408806, 34.757320, 47.450378>,  <38.646057, 34.697651, 47.766846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408806, 34.757320, 47.450378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773253, -0.168146, -0.611397,
		-0.224234, -0.974410, -0.015615,
		-0.593126, 0.149170, -0.791170,
		38.230869, 34.802071, 47.213028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294487, 34.445728, 48.084461>,  <38.646057, 34.697651, 47.766846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294487, 34.445728, 48.084461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132362, 34.183979, 48.339809>,  <39.035088, 34.026928, 48.493019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132362, 34.183979, 48.339809>,  <39.294487, 34.445728, 48.084461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132362, 34.183979, 48.339809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404742, -0.754577, -0.516525,
		0.819701, 0.049022, 0.570691,
		-0.405309, -0.654378, 0.638368,
		39.010769, 33.987667, 48.531319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776146, 33.911530, 48.251575>,  <39.294487, 34.445728, 48.084461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776146, 33.911530, 48.251575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423409, 33.742794, 48.335861>,  <39.211765, 33.641552, 48.386433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423409, 33.742794, 48.335861>,  <39.776146, 33.911530, 48.251575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423409, 33.742794, 48.335861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299810, -0.846504, -0.439938,
		0.363956, -0.324781, 0.872957,
		-0.881845, -0.421839, 0.210718,
		39.158855, 33.616241, 48.399078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675228, 33.292156, 48.829960>,  <39.776146, 33.911530, 48.251575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675228, 33.292156, 48.829960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447151, 33.287197, 48.501392>,  <39.310307, 33.284222, 48.304253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447151, 33.287197, 48.501392>,  <39.675228, 33.292156, 48.829960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447151, 33.287197, 48.501392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548302, -0.750330, -0.369283,
		-0.611758, -0.660948, 0.434627,
		-0.570190, -0.012395, -0.821419,
		39.276093, 33.283478, 48.254967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320320, 33.637230, 49.459908>,  <39.675228, 33.292156, 48.829960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320320, 33.637230, 49.459908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051483, 33.495163, 49.200016>,  <38.890182, 33.409924, 49.044079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051483, 33.495163, 49.200016>,  <39.320320, 33.637230, 49.459908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051483, 33.495163, 49.200016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686551, 0.627590, 0.367121,
		0.277377, 0.692813, -0.665637,
		-0.672093, -0.355163, -0.649731,
		38.849854, 33.388615, 49.005096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693928, 33.756588, 50.044357>,  <39.320320, 33.637230, 49.459908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693928, 33.756588, 50.044357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640446, 34.152550, 50.063175>,  <38.608356, 34.390125, 50.074467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640446, 34.152550, 50.063175>,  <38.693928, 33.756588, 50.044357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640446, 34.152550, 50.063175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334190, -0.089726, 0.938225,
		0.932973, 0.109728, 0.342813,
		-0.133709, 0.989904, 0.047042,
		38.600334, 34.449520, 50.077290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525719, 33.769047, 50.683914>,  <38.693928, 33.756588, 50.044357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525719, 33.769047, 50.683914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464863, 34.145943, 50.564556>,  <38.428349, 34.372082, 50.492943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464863, 34.145943, 50.564556>,  <38.525719, 33.769047, 50.683914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464863, 34.145943, 50.564556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676049, 0.121020, 0.726850,
		0.720978, 0.312314, 0.618587,
		-0.152144, 0.942239, -0.298393,
		38.419220, 34.428616, 50.475037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589344, 34.263569, 51.190067>,  <38.525719, 33.769047, 50.683914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589344, 34.263569, 51.190067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338146, 34.437019, 50.931583>,  <38.187428, 34.541088, 50.776493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338146, 34.437019, 50.931583>,  <38.589344, 34.263569, 51.190067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338146, 34.437019, 50.931583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608479, 0.244067, 0.755106,
		0.485151, 0.867411, 0.110578,
		-0.627999, 0.433625, -0.646210,
		38.149746, 34.567108, 50.737720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434097, 35.028053, 51.393425>,  <38.589344, 34.263569, 51.190067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434097, 35.028053, 51.393425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.149406, 34.921173, 51.133564>,  <37.978592, 34.857044, 50.977646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.149406, 34.921173, 51.133564>,  <38.434097, 35.028053, 51.393425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149406, 34.921173, 51.133564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673840, 0.520975, 0.523951,
		0.198452, 0.810672, -0.550844,
		-0.711728, -0.267201, -0.649651,
		37.935886, 34.841011, 50.938667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031498, 35.582531, 51.393948>,  <38.434097, 35.028053, 51.393425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031498, 35.582531, 51.393948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762894, 35.338215, 51.226131>,  <37.601730, 35.191624, 51.125443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762894, 35.338215, 51.226131>,  <38.031498, 35.582531, 51.393948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762894, 35.338215, 51.226131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713964, 0.381787, 0.586936,
		-0.198321, 0.693667, -0.692456,
		-0.671509, -0.610790, -0.419537,
		37.561440, 35.154976, 51.100269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453949, 36.032578, 51.229038>,  <38.031498, 35.582531, 51.393948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453949, 36.032578, 51.229038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.306026, 35.661343, 51.246441>,  <37.217274, 35.438602, 51.256882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.306026, 35.661343, 51.246441>,  <37.453949, 36.032578, 51.229038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306026, 35.661343, 51.246441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710383, 0.312622, 0.630574,
		-0.598831, 0.202282, -0.774908,
		-0.369808, -0.928089, 0.043510,
		37.195084, 35.382915, 51.259495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719345, 36.088432, 51.116791>,  <37.453949, 36.032578, 51.229038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719345, 36.088432, 51.116791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763882, 35.723587, 51.274605>,  <36.790604, 35.504681, 51.369293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763882, 35.723587, 51.274605>,  <36.719345, 36.088432, 51.116791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763882, 35.723587, 51.274605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706463, 0.206571, 0.676933,
		-0.698937, -0.354098, -0.621371,
		0.111343, -0.912109, 0.394537,
		36.797283, 35.449955, 51.392967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045155, 35.798424, 51.198158>,  <36.719345, 36.088432, 51.116791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045155, 35.798424, 51.198158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241459, 35.534832, 51.426159>,  <36.359241, 35.376675, 51.562958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241459, 35.534832, 51.426159>,  <36.045155, 35.798424, 51.198158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241459, 35.534832, 51.426159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757032, 0.001367, 0.653376,
		-0.431342, -0.752157, -0.498201,
		0.490760, -0.658983, 0.569997,
		36.388687, 35.337139, 51.597157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577507, 35.350731, 51.448509>,  <36.045155, 35.798424, 51.198158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577507, 35.350731, 51.448509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883633, 35.331772, 51.705273>,  <36.067310, 35.320396, 51.859329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883633, 35.331772, 51.705273>,  <35.577507, 35.350731, 51.448509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883633, 35.331772, 51.705273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634033, 0.116270, 0.764515,
		-0.110869, -0.992086, 0.058934,
		0.765317, -0.047395, 0.641907,
		36.113228, 35.317554, 51.897846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505402, 34.782227, 51.937473>,  <35.577507, 35.350731, 51.448509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505402, 34.782227, 51.937473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756393, 35.023186, 52.134815>,  <35.906986, 35.167759, 52.253220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756393, 35.023186, 52.134815>,  <35.505402, 34.782227, 51.937473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756393, 35.023186, 52.134815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595120, -0.037550, 0.802759,
		0.502103, -0.797315, 0.334935,
		0.627475, 0.602395, 0.493352,
		35.944637, 35.203903, 52.282822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574730, 34.500538, 52.573444>,  <35.505402, 34.782227, 51.937473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574730, 34.500538, 52.573444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.655502, 34.889221, 52.622456>,  <35.703964, 35.122429, 52.651863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.655502, 34.889221, 52.622456>,  <35.574730, 34.500538, 52.573444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655502, 34.889221, 52.622456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559554, 0.011780, 0.828710,
		0.803819, -0.235901, 0.546100,
		0.201926, 0.971706, 0.122530,
		35.716080, 35.180733, 52.659214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538265, 34.623753, 53.360138>,  <35.574730, 34.500538, 52.573444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538265, 34.623753, 53.360138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517010, 34.991409, 53.204010>,  <35.504257, 35.212002, 53.110332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517010, 34.991409, 53.204010>,  <35.538265, 34.623753, 53.360138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517010, 34.991409, 53.204010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488992, 0.316853, 0.812706,
		0.870668, 0.234053, 0.432615,
		-0.053141, 0.919142, -0.390324,
		35.501068, 35.267151, 53.086914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594189, 35.089058, 53.854465>,  <35.538265, 34.623753, 53.360138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594189, 35.089058, 53.854465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429375, 35.317055, 53.570118>,  <35.330486, 35.453854, 53.399509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429375, 35.317055, 53.570118>,  <35.594189, 35.089058, 53.854465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429375, 35.317055, 53.570118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591377, 0.426240, 0.684538,
		0.693181, 0.702448, 0.161452,
		-0.412035, 0.569988, -0.710873,
		35.305763, 35.488052, 53.356857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421070, 35.721588, 54.234734>,  <35.594189, 35.089058, 53.854465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421070, 35.721588, 54.234734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209885, 35.748398, 53.896088>,  <35.083172, 35.764484, 53.692898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209885, 35.748398, 53.896088>,  <35.421070, 35.721588, 54.234734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209885, 35.748398, 53.896088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617948, 0.653513, 0.437104,
		0.582574, 0.753941, -0.303612,
		-0.527965, 0.067029, -0.846617,
		35.051495, 35.768505, 53.642101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361176, 36.323460, 54.194756>,  <35.421070, 35.721588, 54.234734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361176, 36.323460, 54.194756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064526, 36.164726, 53.978416>,  <34.886536, 36.069485, 53.848614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064526, 36.164726, 53.978416>,  <35.361176, 36.323460, 54.194756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064526, 36.164726, 53.978416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616661, 0.720672, 0.316799,
		0.264058, 0.568466, -0.779179,
		-0.741621, -0.396836, -0.540850,
		34.842041, 36.045677, 53.816162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964275, 36.847523, 53.761223>,  <35.361176, 36.323460, 54.194756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964275, 36.847523, 53.761223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730709, 36.529926, 53.828888>,  <34.590569, 36.339367, 53.869488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730709, 36.529926, 53.828888>,  <34.964275, 36.847523, 53.761223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730709, 36.529926, 53.828888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611093, 0.567067, 0.552268,
		-0.534426, 0.219102, -0.816323,
		-0.583913, -0.793996, 0.169164,
		34.555534, 36.291729, 53.879639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253910, 37.072384, 53.682011>,  <34.964275, 36.847523, 53.761223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253910, 37.072384, 53.682011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239361, 36.722504, 53.875328>,  <34.230633, 36.512573, 53.991318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239361, 36.722504, 53.875328>,  <34.253910, 37.072384, 53.682011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239361, 36.722504, 53.875328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692165, 0.370876, 0.619159,
		-0.720822, -0.311999, -0.618928,
		-0.036369, -0.874705, 0.483290,
		34.228451, 36.460091, 54.020313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616516, 36.935692, 53.700268>,  <34.253910, 37.072384, 53.682011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616516, 36.935692, 53.700268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758953, 36.691555, 53.983303>,  <33.844418, 36.545074, 54.153126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758953, 36.691555, 53.983303>,  <33.616516, 36.935692, 53.700268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758953, 36.691555, 53.983303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658193, 0.373684, 0.653562,
		-0.663308, -0.698461, -0.268653,
		0.356097, -0.610338, 0.707589,
		33.865784, 36.508453, 54.195580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064964, 36.563732, 54.015778>,  <33.616516, 36.935692, 53.700268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064964, 36.563732, 54.015778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342236, 36.504471, 54.297928>,  <33.508598, 36.468914, 54.467220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342236, 36.504471, 54.297928>,  <33.064964, 36.563732, 54.015778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342236, 36.504471, 54.297928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628413, 0.355063, 0.692118,
		-0.352990, -0.923029, 0.153023,
		0.693177, -0.148149, 0.705377,
		33.550190, 36.460026, 54.509541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788078, 36.129986, 54.597710>,  <33.064964, 36.563732, 54.015778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788078, 36.129986, 54.597710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083195, 36.370644, 54.720150>,  <33.260265, 36.515038, 54.793613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083195, 36.370644, 54.720150>,  <32.788078, 36.129986, 54.597710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083195, 36.370644, 54.720150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521363, 0.219845, 0.824529,
		0.428778, -0.767915, 0.475874,
		0.737787, 0.601643, 0.306098,
		33.304531, 36.551136, 54.811977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842388, 36.000305, 55.305294>,  <32.788078, 36.129986, 54.597710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842388, 36.000305, 55.305294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046043, 36.340134, 55.250160>,  <33.168236, 36.544033, 55.217079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046043, 36.340134, 55.250160>,  <32.842388, 36.000305, 55.305294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046043, 36.340134, 55.250160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377385, 0.364289, 0.851396,
		0.773536, -0.381464, 0.506091,
		0.509140, 0.849576, -0.137832,
		33.198784, 36.595005, 55.208809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945915, 36.232586, 55.914871>,  <32.842388, 36.000305, 55.305294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945915, 36.232586, 55.914871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047436, 36.565456, 55.717663>,  <33.108349, 36.765179, 55.599339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047436, 36.565456, 55.717663>,  <32.945915, 36.232586, 55.914871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047436, 36.565456, 55.717663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251720, 0.548970, 0.797038,
		0.933929, -0.078186, 0.348804,
		0.253800, 0.832177, -0.493018,
		33.123577, 36.815109, 55.569756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394478, 36.537167, 56.349232>,  <32.945915, 36.232586, 55.914871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394478, 36.537167, 56.349232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.218014, 36.802574, 56.107529>,  <33.112133, 36.961819, 55.962509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.218014, 36.802574, 56.107529>,  <33.394478, 36.537167, 56.349232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218014, 36.802574, 56.107529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297106, 0.527363, 0.796001,
		0.846819, 0.530694, -0.035519,
		-0.441165, 0.663515, -0.604253,
		33.085663, 37.001629, 55.926254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624866, 37.120625, 56.667507>,  <33.394478, 36.537167, 56.349232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624866, 37.120625, 56.667507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308521, 37.216206, 56.442142>,  <33.118713, 37.273556, 56.306923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308521, 37.216206, 56.442142>,  <33.624866, 37.120625, 56.667507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308521, 37.216206, 56.442142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303851, 0.645823, 0.700420,
		0.531237, 0.725130, -0.438149,
		-0.790861, 0.238957, -0.563416,
		33.071262, 37.287891, 56.273117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661316, 37.807758, 56.762772>,  <33.624866, 37.120625, 56.667507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661316, 37.807758, 56.762772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.297073, 37.748928, 56.608284>,  <33.078529, 37.713631, 56.515591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.297073, 37.748928, 56.608284>,  <33.661316, 37.807758, 56.762772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297073, 37.748928, 56.608284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362836, 0.731912, 0.576762,
		0.197854, 0.665338, -0.719847,
		-0.910607, -0.147072, -0.386220,
		33.023891, 37.704807, 56.492416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369930, 38.440380, 56.587780>,  <33.661316, 37.807758, 56.762772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369930, 38.440380, 56.587780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062687, 38.187286, 56.627094>,  <32.878342, 38.035431, 56.650684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062687, 38.187286, 56.627094>,  <33.369930, 38.440380, 56.587780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062687, 38.187286, 56.627094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523154, 0.708623, 0.473459,
		-0.369224, 0.312246, -0.875315,
		-0.768104, -0.632737, 0.098288,
		32.832256, 37.997467, 56.656582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703529, 38.850807, 56.309696>,  <33.369930, 38.440380, 56.587780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703529, 38.850807, 56.309696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.585155, 38.565243, 56.563545>,  <32.514130, 38.393902, 56.715855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.585155, 38.565243, 56.563545>,  <32.703529, 38.850807, 56.309696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585155, 38.565243, 56.563545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572379, 0.664431, 0.480534,
		-0.764726, -0.221041, -0.605257,
		-0.295934, -0.713913, 0.634627,
		32.496376, 38.351070, 56.753933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957533, 38.918350, 56.368900>,  <32.703529, 38.850807, 56.309696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957533, 38.918350, 56.368900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062042, 38.704723, 56.690521>,  <32.124748, 38.576546, 56.883495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062042, 38.704723, 56.690521>,  <31.957533, 38.918350, 56.368900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062042, 38.704723, 56.690521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739125, 0.425060, 0.522511,
		-0.620829, -0.730816, -0.283688,
		0.261275, -0.534071, 0.804054,
		32.140423, 38.544502, 56.931736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305340, 38.743317, 56.717205>,  <31.957533, 38.918350, 56.368900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305340, 38.743317, 56.717205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584244, 38.671181, 56.994709>,  <31.751585, 38.627899, 57.161213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584244, 38.671181, 56.994709>,  <31.305340, 38.743317, 56.717205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584244, 38.671181, 56.994709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546399, 0.492748, 0.677236,
		-0.463982, -0.851280, 0.245036,
		0.697258, -0.180338, 0.693764,
		31.793421, 38.617081, 57.202839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980339, 38.360371, 57.275227>,  <31.305340, 38.743317, 56.717205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980339, 38.360371, 57.275227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317225, 38.526493, 57.412746>,  <31.519356, 38.626167, 57.495258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317225, 38.526493, 57.412746>,  <30.980339, 38.360371, 57.275227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317225, 38.526493, 57.412746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506601, 0.391424, 0.768207,
		0.184467, -0.821165, 0.540056,
		0.842216, 0.415302, 0.343798,
		31.569889, 38.651085, 57.515884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042568, 38.124531, 57.951973>,  <30.980339, 38.360371, 57.275227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042568, 38.124531, 57.951973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281391, 38.445320, 57.944405>,  <31.424685, 38.637794, 57.939865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281391, 38.445320, 57.944405>,  <31.042568, 38.124531, 57.951973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281391, 38.445320, 57.944405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450137, 0.354458, 0.819595,
		0.664002, -0.480829, 0.572630,
		0.597058, 0.801974, -0.018922,
		31.460508, 38.685913, 57.938728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326389, 38.313938, 58.600330>,  <31.042568, 38.124531, 57.951973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326389, 38.313938, 58.600330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.314959, 38.656399, 58.393955>,  <31.308100, 38.861874, 58.270130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.314959, 38.656399, 58.393955>,  <31.326389, 38.313938, 58.600330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314959, 38.656399, 58.393955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485980, 0.439141, 0.755631,
		0.873503, 0.272330, 0.403522,
		-0.028578, 0.856149, -0.515938,
		31.306385, 38.913242, 58.239174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336866, 38.765190, 59.152161>,  <31.326389, 38.313938, 58.600330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336866, 38.765190, 59.152161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228445, 38.968155, 58.824974>,  <31.163393, 39.089935, 58.628662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228445, 38.968155, 58.824974>,  <31.336866, 38.765190, 59.152161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228445, 38.968155, 58.824974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586232, 0.586973, 0.558385,
		0.763454, 0.630867, 0.138363,
		-0.271052, 0.507415, -0.817962,
		31.147129, 39.120380, 58.579586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561157, 39.477333, 59.272194>,  <31.336866, 38.765190, 59.152161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561157, 39.477333, 59.272194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241049, 39.484974, 59.032459>,  <31.048985, 39.489559, 58.888618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241049, 39.484974, 59.032459>,  <31.561157, 39.477333, 59.272194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241049, 39.484974, 59.032459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485358, 0.566296, 0.666136,
		0.352126, 0.823981, -0.443918,
		-0.800272, 0.019105, -0.599333,
		31.000967, 39.490704, 58.852661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424234, 40.162071, 59.206287>,  <31.561157, 39.477333, 59.272194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424234, 40.162071, 59.206287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.078629, 39.999451, 59.087498>,  <30.871265, 39.901878, 59.016224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.078629, 39.999451, 59.087498>,  <31.424234, 40.162071, 59.206287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078629, 39.999451, 59.087498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500839, 0.633871, 0.589379,
		-0.051365, 0.657971, -0.751289,
		-0.864015, -0.406549, -0.296979,
		30.819424, 39.877487, 58.998405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009521, 40.689896, 59.183594>,  <31.424234, 40.162071, 59.206287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009521, 40.689896, 59.183594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.751978, 40.383984, 59.192974>,  <30.597452, 40.200436, 59.198601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.751978, 40.383984, 59.192974>,  <31.009521, 40.689896, 59.183594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751978, 40.383984, 59.192974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621086, 0.540291, 0.567748,
		-0.446874, 0.350986, -0.822868,
		-0.643860, -0.764784, 0.023450,
		30.558821, 40.154549, 59.200008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334764, 40.984222, 59.079865>,  <31.009521, 40.689896, 59.183594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334764, 40.984222, 59.079865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.246906, 40.629467, 59.242435>,  <30.194191, 40.416615, 59.339977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.246906, 40.629467, 59.242435>,  <30.334764, 40.984222, 59.079865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246906, 40.629467, 59.242435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711071, 0.430766, 0.555714,
		-0.667932, -0.166939, -0.725257,
		-0.219646, -0.886889, 0.406428,
		30.181013, 40.363400, 59.364365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677498, 41.031693, 59.151413>,  <30.334764, 40.984222, 59.079865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677498, 41.031693, 59.151413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.791365, 40.743752, 59.404640>,  <29.859684, 40.570988, 59.556576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.791365, 40.743752, 59.404640>,  <29.677498, 41.031693, 59.151413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791365, 40.743752, 59.404640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672790, 0.320402, 0.666855,
		-0.682876, -0.615751, -0.393105,
		0.284665, -0.719856, 0.633067,
		29.876764, 40.527794, 59.594559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053659, 40.907375, 59.451256>,  <29.677498, 41.031693, 59.151413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053659, 40.907375, 59.451256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.345888, 40.754257, 59.677433>,  <29.521225, 40.662388, 59.813141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.345888, 40.754257, 59.677433>,  <29.053659, 40.907375, 59.451256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345888, 40.754257, 59.677433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399286, 0.432270, 0.808526,
		-0.553925, -0.816462, 0.162960,
		0.730574, -0.382795, 0.565447,
		29.565060, 40.639420, 59.847069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755655, 40.694981, 60.035027>,  <29.053659, 40.907375, 59.451256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755655, 40.694981, 60.035027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.135504, 40.686108, 60.160076>,  <29.363413, 40.680786, 60.235104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.135504, 40.686108, 60.160076>,  <28.755655, 40.694981, 60.035027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135504, 40.686108, 60.160076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276118, 0.412683, 0.868016,
		-0.148265, -0.910605, 0.385768,
		0.949619, -0.022179, 0.312620,
		29.420389, 40.679455, 60.253860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738380, 40.451023, 60.709469>,  <28.755655, 40.694981, 60.035027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738380, 40.451023, 60.709469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.076323, 40.662601, 60.677368>,  <29.279087, 40.789547, 60.658108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.076323, 40.662601, 60.677368>,  <28.738380, 40.451023, 60.709469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076323, 40.662601, 60.677368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284585, 0.571341, 0.769793,
		0.453027, -0.627526, 0.633229,
		0.844854, 0.528944, -0.080249,
		29.329779, 40.821285, 60.653294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025219, 40.394398, 61.336655>,  <28.738380, 40.451023, 60.709469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025219, 40.394398, 61.336655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.183191, 40.718601, 61.163631>,  <29.277975, 40.913124, 61.059818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.183191, 40.718601, 61.163631>,  <29.025219, 40.394398, 61.336655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183191, 40.718601, 61.163631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118851, 0.511951, 0.850753,
		0.910992, -0.284576, 0.298514,
		0.394929, 0.810508, -0.432561,
		29.301670, 40.961754, 61.033863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553961, 40.663239, 61.799114>,  <29.025219, 40.394398, 61.336655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553961, 40.663239, 61.799114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.385744, 40.940697, 61.565193>,  <29.284813, 41.107174, 61.424839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.385744, 40.940697, 61.565193>,  <29.553961, 40.663239, 61.799114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385744, 40.940697, 61.565193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216976, 0.548975, 0.807185,
		0.880945, 0.466345, -0.080363,
		-0.420544, 0.693649, -0.584803,
		29.259581, 41.148792, 61.389751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875492, 41.325073, 61.635197>,  <29.553961, 40.663239, 61.799114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875492, 41.325073, 61.635197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.476780, 41.357155, 61.635342>,  <29.237553, 41.376404, 61.635429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.476780, 41.357155, 61.635342>,  <29.875492, 41.325073, 61.635197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476780, 41.357155, 61.635342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041736, 0.514805, 0.856291,
		0.068488, 0.853548, -0.516494,
		-0.996779, 0.080202, 0.000366,
		29.177746, 41.381214, 61.635452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739574, 41.903351, 62.068459>,  <29.875492, 41.325073, 61.635197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739574, 41.903351, 62.068459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.397236, 41.698677, 62.038246>,  <29.191833, 41.575874, 62.020119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.397236, 41.698677, 62.038246>,  <29.739574, 41.903351, 62.068459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397236, 41.698677, 62.038246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269063, 0.315719, 0.909905,
		-0.441738, 0.799061, -0.407883,
		-0.855846, -0.511686, -0.075533,
		29.140482, 41.545170, 62.015587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165985, 42.319794, 62.289364>,  <29.739574, 41.903351, 62.068459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165985, 42.319794, 62.289364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.051577, 41.942036, 62.354237>,  <28.982931, 41.715382, 62.393158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.051577, 41.942036, 62.354237>,  <29.165985, 42.319794, 62.289364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051577, 41.942036, 62.354237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207897, 0.226377, 0.951595,
		-0.935398, 0.238462, -0.261087,
		-0.286023, -0.944399, 0.162177,
		28.965771, 41.658714, 62.402889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428986, 42.295174, 62.613716>,  <29.165985, 42.319794, 62.289364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428986, 42.295174, 62.613716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.651279, 41.972855, 62.695541>,  <28.784657, 41.779465, 62.744637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.651279, 41.972855, 62.695541>,  <28.428986, 42.295174, 62.613716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651279, 41.972855, 62.695541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374045, -0.022599, 0.927135,
		-0.742461, -0.591759, -0.313964,
		0.555735, -0.805798, 0.204565,
		28.818001, 41.731113, 62.756912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014721, 42.943531, 62.691372>,  <28.428986, 42.295174, 62.613716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014721, 42.943531, 62.691372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.646616, 43.095791, 62.655106>,  <27.425753, 43.187145, 62.633347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.646616, 43.095791, 62.655106>,  <28.014721, 42.943531, 62.691372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646616, 43.095791, 62.655106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019849, -0.186002, -0.982349,
		-0.390795, -0.905819, 0.163616,
		-0.920263, 0.380649, -0.090669,
		27.370537, 43.209984, 62.627907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613064, 42.399769, 62.389801>,  <28.014721, 42.943531, 62.691372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613064, 42.399769, 62.389801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.453964, 42.758411, 62.311935>,  <27.358503, 42.973595, 62.265217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.453964, 42.758411, 62.311935>,  <27.613064, 42.399769, 62.389801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453964, 42.758411, 62.311935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018062, -0.219783, -0.975382,
		-0.917316, -0.384443, 0.103613,
		-0.397751, 0.896604, -0.194667,
		27.334639, 43.027393, 62.253536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014446, 42.458565, 61.949326>,  <27.613064, 42.399769, 62.389801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014446, 42.458565, 61.949326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.218513, 42.800529, 61.911690>,  <27.340954, 43.005707, 61.889111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.218513, 42.800529, 61.911690>,  <27.014446, 42.458565, 61.949326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218513, 42.800529, 61.911690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128180, -0.183749, -0.974580,
		-0.850470, 0.485139, -0.203326,
		0.510168, 0.854913, -0.094087,
		27.371563, 43.057003, 61.883465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769520, 42.951027, 61.533905>,  <27.014446, 42.458565, 61.949326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769520, 42.951027, 61.533905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.156748, 43.048668, 61.511105>,  <27.389086, 43.107254, 61.497425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.156748, 43.048668, 61.511105>,  <26.769520, 42.951027, 61.533905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156748, 43.048668, 61.511105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011117, -0.268976, -0.963083,
		-0.250427, 0.931700, -0.263101,
		0.968072, 0.244107, -0.057001,
		27.447170, 43.121899, 61.494003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937824, 43.408390, 60.983284>,  <26.769520, 42.951027, 61.533905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937824, 43.408390, 60.983284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.299843, 43.251770, 61.049706>,  <27.517054, 43.157799, 61.089558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.299843, 43.251770, 61.049706>,  <26.937824, 43.408390, 60.983284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299843, 43.251770, 61.049706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179363, -0.002631, -0.983779,
		0.385640, 0.920151, 0.067849,
		0.905048, -0.391554, 0.166056,
		27.571358, 43.134304, 61.099522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124495, 43.368416, 60.325623>,  <26.937824, 43.408390, 60.983284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124495, 43.368416, 60.325623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.449612, 43.244659, 60.523064>,  <27.644682, 43.170406, 60.641529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.449612, 43.244659, 60.523064>,  <27.124495, 43.368416, 60.325623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449612, 43.244659, 60.523064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494712, -0.080838, -0.865289,
		0.307614, 0.947493, 0.087355,
		0.812794, -0.309391, 0.493603,
		27.693449, 43.151840, 60.671143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638969, 43.709545, 60.101639>,  <27.124495, 43.368416, 60.325623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638969, 43.709545, 60.101639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.746292, 43.346584, 60.231030>,  <27.810686, 43.128807, 60.308662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.746292, 43.346584, 60.231030>,  <27.638969, 43.709545, 60.101639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746292, 43.346584, 60.231030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680562, -0.059109, -0.730302,
		0.681796, 0.416090, 0.601683,
		0.268306, -0.907400, 0.323476,
		27.826784, 43.074364, 60.328072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292498, 43.849548, 60.156853>,  <27.638969, 43.709545, 60.101639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292498, 43.849548, 60.156853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.262594, 43.453293, 60.111172>,  <28.244652, 43.215538, 60.083763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.262594, 43.453293, 60.111172>,  <28.292498, 43.849548, 60.156853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262594, 43.453293, 60.111172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715432, 0.026501, -0.698180,
		0.694672, -0.133901, 0.706754,
		-0.074757, -0.990640, -0.114206,
		28.240168, 43.156101, 60.076908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935127, 43.683350, 60.124855>,  <28.292498, 43.849548, 60.156853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935127, 43.683350, 60.124855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756170, 43.372978, 59.946964>,  <28.648796, 43.186756, 59.840229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756170, 43.372978, 59.946964>,  <28.935127, 43.683350, 60.124855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756170, 43.372978, 59.946964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759756, -0.067412, -0.646704,
		0.471815, -0.627212, 0.619674,
		-0.447394, -0.775925, -0.444723,
		28.621952, 43.140202, 59.813549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474501, 43.283909, 59.830585>,  <28.935127, 43.683350, 60.124855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474501, 43.283909, 59.830585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174635, 43.093136, 59.647049>,  <28.994715, 42.978672, 59.536926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174635, 43.093136, 59.647049>,  <29.474501, 43.283909, 59.830585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174635, 43.093136, 59.647049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636707, -0.330590, -0.696645,
		0.180567, -0.814397, 0.551500,
		-0.749666, -0.476935, -0.458839,
		28.949736, 42.950054, 59.509396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643774, 42.593777, 59.610802>,  <29.474501, 43.283909, 59.830585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643774, 42.593777, 59.610802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.349129, 42.705162, 59.364269>,  <29.172342, 42.771992, 59.216351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.349129, 42.705162, 59.364269>,  <29.643774, 42.593777, 59.610802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349129, 42.705162, 59.364269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566354, -0.244118, -0.787179,
		-0.369657, -0.928905, 0.022112,
		-0.736612, 0.278463, -0.616329,
		29.128145, 42.788700, 59.179371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819643, 42.148689, 59.141182>,  <29.643774, 42.593777, 59.610802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819643, 42.148689, 59.141182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.589752, 42.435123, 58.982738>,  <29.451817, 42.606983, 58.887672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.589752, 42.435123, 58.982738>,  <29.819643, 42.148689, 59.141182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589752, 42.435123, 58.982738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412124, -0.164903, -0.896081,
		-0.706994, -0.678249, -0.200343,
		-0.574729, 0.716090, -0.396108,
		29.417334, 42.649952, 58.863907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615536, 41.915913, 58.373653>,  <29.819643, 42.148689, 59.141182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615536, 41.915913, 58.373653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528988, 42.304375, 58.413750>,  <29.477058, 42.537453, 58.437809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528988, 42.304375, 58.413750>,  <29.615536, 41.915913, 58.373653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528988, 42.304375, 58.413750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200448, 0.144675, -0.968964,
		-0.955513, -0.189561, -0.225969,
		-0.216369, 0.971152, 0.100242,
		29.464077, 42.595718, 58.443821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248272, 42.022720, 57.800495>,  <29.615536, 41.915913, 58.373653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248272, 42.022720, 57.800495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.352001, 42.393993, 57.907253>,  <29.414238, 42.616756, 57.971310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.352001, 42.393993, 57.907253>,  <29.248272, 42.022720, 57.800495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352001, 42.393993, 57.907253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354841, 0.165453, -0.920170,
		-0.898243, 0.333324, -0.286451,
		0.259321, 0.928181, 0.266894,
		29.429798, 42.672447, 57.987320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219124, 42.328899, 57.138416>,  <29.248272, 42.022720, 57.800495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219124, 42.328899, 57.138416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.423613, 42.586109, 57.366512>,  <29.546307, 42.740433, 57.503368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.423613, 42.586109, 57.366512>,  <29.219124, 42.328899, 57.138416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423613, 42.586109, 57.366512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412532, 0.398474, -0.819168,
		-0.753969, 0.654019, -0.061559,
		0.511221, 0.643023, 0.570241,
		29.576979, 42.779015, 57.537586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124649, 42.981804, 56.859955>,  <29.219124, 42.328899, 57.138416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124649, 42.981804, 56.859955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471025, 42.965775, 57.059372>,  <29.678850, 42.956158, 57.179024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471025, 42.965775, 57.059372>,  <29.124649, 42.981804, 56.859955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471025, 42.965775, 57.059372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500015, 0.046222, -0.864782,
		0.011609, 0.998127, 0.060061,
		0.865939, -0.040070, 0.498542,
		29.730806, 42.953754, 57.208935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559893, 43.490734, 56.614418>,  <29.124649, 42.981804, 56.859955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559893, 43.490734, 56.614418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.842710, 43.281437, 56.804703>,  <30.012402, 43.155857, 56.918873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.842710, 43.281437, 56.804703>,  <29.559893, 43.490734, 56.614418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842710, 43.281437, 56.804703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645443, 0.202631, -0.736440,
		0.288947, 0.827740, 0.480995,
		0.707045, -0.523247, 0.475709,
		30.054825, 43.124462, 56.947414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253042, 43.971519, 56.742428>,  <29.559893, 43.490734, 56.614418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253042, 43.971519, 56.742428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318424, 43.577366, 56.723217>,  <30.357653, 43.340874, 56.711693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318424, 43.577366, 56.723217>,  <30.253042, 43.971519, 56.742428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318424, 43.577366, 56.723217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579431, 0.135287, -0.803715,
		0.798462, 0.103545, 0.593074,
		0.163456, -0.985381, -0.048024,
		30.367460, 43.281750, 56.708809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974709, 43.904694, 56.514694>,  <30.253042, 43.971519, 56.742428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974709, 43.904694, 56.514694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839436, 43.531551, 56.465027>,  <30.758270, 43.307667, 56.435226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839436, 43.531551, 56.465027>,  <30.974709, 43.904694, 56.514694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839436, 43.531551, 56.465027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608679, -0.116197, -0.784862,
		0.717733, -0.341004, 0.607104,
		-0.338185, -0.932853, -0.124164,
		30.737980, 43.251694, 56.427776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580288, 43.453999, 56.604446>,  <30.974709, 43.904694, 56.514694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580288, 43.453999, 56.604446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284924, 43.288185, 56.391689>,  <31.107706, 43.188698, 56.264034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284924, 43.288185, 56.391689>,  <31.580288, 43.453999, 56.604446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284924, 43.288185, 56.391689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650646, -0.230652, -0.723505,
		0.177235, -0.880318, 0.440031,
		-0.738409, -0.414535, -0.531896,
		31.063400, 43.163826, 56.232121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968500, 42.985542, 56.277920>,  <31.580288, 43.453999, 56.604446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968500, 42.985542, 56.277920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616018, 43.002151, 56.089558>,  <31.404530, 43.012115, 55.976540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616018, 43.002151, 56.089558>,  <31.968500, 42.985542, 56.277920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616018, 43.002151, 56.089558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420940, -0.384428, -0.821599,
		-0.215143, -0.922221, 0.321282,
		-0.881205, 0.041521, -0.470906,
		31.351656, 43.014606, 55.948284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934649, 42.384102, 55.859081>,  <31.968500, 42.985542, 56.277920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934649, 42.384102, 55.859081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.663847, 42.639740, 55.713081>,  <31.501366, 42.793121, 55.625481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.663847, 42.639740, 55.713081>,  <31.934649, 42.384102, 55.859081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663847, 42.639740, 55.713081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259068, -0.257262, -0.930967,
		-0.688877, -0.724827, 0.008599,
		-0.677003, 0.639094, -0.365001,
		31.460747, 42.831467, 55.603580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505447, 42.007538, 55.507473>,  <31.934649, 42.384102, 55.859081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505447, 42.007538, 55.507473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.541641, 42.385784, 55.382500>,  <31.563356, 42.612732, 55.307514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.541641, 42.385784, 55.382500>,  <31.505447, 42.007538, 55.507473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541641, 42.385784, 55.382500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239592, -0.325178, -0.914798,
		-0.966648, 0.007917, -0.255986,
		0.090483, 0.945620, -0.312436,
		31.568787, 42.669472, 55.288769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226095, 41.926540, 54.935577>,  <31.505447, 42.007538, 55.507473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226095, 41.926540, 54.935577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.416178, 42.276920, 54.902386>,  <31.530228, 42.487148, 54.882469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.416178, 42.276920, 54.902386>,  <31.226095, 41.926540, 54.935577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416178, 42.276920, 54.902386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280955, -0.240433, -0.929116,
		-0.833813, 0.418207, -0.360358,
		0.475205, 0.875953, -0.082979,
		31.558739, 42.539707, 54.877491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028452, 42.214931, 54.327194>,  <31.226095, 41.926540, 54.935577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028452, 42.214931, 54.327194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375658, 42.393467, 54.414219>,  <31.583982, 42.500587, 54.466434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375658, 42.393467, 54.414219>,  <31.028452, 42.214931, 54.327194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375658, 42.393467, 54.414219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332457, -0.196966, -0.922321,
		-0.368813, 0.872919, -0.319357,
		0.868015, 0.446336, 0.217564,
		31.636063, 42.527367, 54.479488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207441, 42.623329, 53.733486>,  <31.028452, 42.214931, 54.327194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207441, 42.623329, 53.733486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.542322, 42.543236, 53.937054>,  <31.743252, 42.495178, 54.059193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.542322, 42.543236, 53.937054>,  <31.207441, 42.623329, 53.733486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542322, 42.543236, 53.937054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427616, -0.340444, -0.837403,
		0.340934, 0.918697, -0.199398,
		0.837203, -0.200233, 0.508918,
		31.793484, 42.483166, 54.089729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699051, 42.867336, 53.326355>,  <31.207441, 42.623329, 53.733486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699051, 42.867336, 53.326355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931381, 42.647442, 53.566498>,  <32.070782, 42.515507, 53.710583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931381, 42.647442, 53.566498>,  <31.699051, 42.867336, 53.326355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931381, 42.647442, 53.566498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443935, -0.404275, -0.799677,
		0.682320, 0.730995, 0.009232,
		0.580828, -0.549734, 0.600360,
		32.105629, 42.482521, 53.746605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389549, 42.901497, 53.032497>,  <31.699051, 42.867336, 53.326355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389549, 42.901497, 53.032497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359535, 42.589485, 53.280991>,  <32.341526, 42.402279, 53.430084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359535, 42.589485, 53.280991>,  <32.389549, 42.901497, 53.032497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359535, 42.589485, 53.280991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499878, -0.568481, -0.653415,
		0.862839, 0.261511, 0.432575,
		-0.075035, -0.780027, 0.621231,
		32.337025, 42.355476, 53.467361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006317, 42.688274, 53.099670>,  <32.389549, 42.901497, 53.032497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006317, 42.688274, 53.099670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778969, 42.369080, 53.179836>,  <32.642559, 42.177563, 53.227936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778969, 42.369080, 53.179836>,  <33.006317, 42.688274, 53.099670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778969, 42.369080, 53.179836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659165, -0.587416, -0.469514,
		0.492396, -0.134749, 0.859877,
		-0.568372, -0.797988, 0.200419,
		32.608456, 42.129684, 53.239964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390644, 42.296299, 53.434616>,  <33.006317, 42.688274, 53.099670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390644, 42.296299, 53.434616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112568, 42.054272, 53.279392>,  <32.945721, 41.909054, 53.186256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112568, 42.054272, 53.279392>,  <33.390644, 42.296299, 53.434616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112568, 42.054272, 53.279392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699459, -0.444960, -0.559256,
		0.165718, -0.660226, 0.732557,
		-0.695193, -0.605073, -0.388063,
		32.904011, 41.872749, 53.162971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849503, 41.780674, 53.155418>,  <33.390644, 42.296299, 53.434616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849503, 41.780674, 53.155418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493298, 41.678749, 53.004650>,  <33.279575, 41.617596, 52.914188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493298, 41.678749, 53.004650>,  <33.849503, 41.780674, 53.155418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493298, 41.678749, 53.004650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436785, -0.710661, -0.551525,
		-0.127327, -0.655770, 0.744147,
		-0.890509, -0.254808, -0.376916,
		33.226143, 41.602306, 52.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825813, 41.043873, 53.299545>,  <33.849503, 41.780674, 53.155418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825813, 41.043873, 53.299545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607018, 41.144070, 52.980034>,  <33.475739, 41.204189, 52.788326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607018, 41.144070, 52.980034>,  <33.825813, 41.043873, 53.299545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607018, 41.144070, 52.980034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423953, -0.739883, -0.522338,
		-0.721847, -0.624361, 0.298514,
		-0.546993, 0.250491, -0.798782,
		33.442921, 41.219219, 52.740398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459999, 40.512478, 53.127399>,  <33.825813, 41.043873, 53.299545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459999, 40.512478, 53.127399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.477402, 40.713341, 52.781925>,  <33.487843, 40.833858, 52.574642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.477402, 40.713341, 52.781925>,  <33.459999, 40.512478, 53.127399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477402, 40.713341, 52.781925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276566, -0.836770, -0.472575,
		-0.960010, -0.218306, -0.175283,
		0.043505, 0.502154, -0.863683,
		33.490452, 40.863987, 52.522820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199932, 39.988018, 52.720425>,  <33.459999, 40.512478, 53.127399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199932, 39.988018, 52.720425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378696, 40.244476, 52.470882>,  <33.485954, 40.398350, 52.321156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378696, 40.244476, 52.470882>,  <33.199932, 39.988018, 52.720425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378696, 40.244476, 52.470882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331605, -0.766429, -0.550114,
		-0.830846, 0.038979, -0.555135,
		0.446914, 0.641146, -0.623859,
		33.512772, 40.436821, 52.283726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116306, 39.727882, 51.987732>,  <33.199932, 39.988018, 52.720425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116306, 39.727882, 51.987732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436504, 39.967194, 52.002018>,  <33.628624, 40.110779, 52.010590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436504, 39.967194, 52.002018>,  <33.116306, 39.727882, 51.987732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436504, 39.967194, 52.002018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493613, -0.624309, -0.605463,
		-0.339935, 0.502300, -0.795072,
		0.800494, 0.598275, 0.035718,
		33.676651, 40.146675, 52.012733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249870, 39.754253, 51.308617>,  <33.116306, 39.727882, 51.987732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249870, 39.754253, 51.308617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571262, 39.867928, 51.517868>,  <33.764095, 39.936131, 51.643417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571262, 39.867928, 51.517868>,  <33.249870, 39.754253, 51.308617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571262, 39.867928, 51.517868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577031, -0.587978, -0.566849,
		0.146498, 0.757312, -0.636410,
		0.803476, 0.284185, 0.523130,
		33.812305, 39.953182, 51.674809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696098, 39.903824, 50.801834>,  <33.249870, 39.754253, 51.308617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696098, 39.903824, 50.801834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915401, 39.839291, 51.130074>,  <34.046982, 39.800571, 51.327019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915401, 39.839291, 51.130074>,  <33.696098, 39.903824, 50.801834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915401, 39.839291, 51.130074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685247, -0.475836, -0.551376,
		0.479428, 0.864610, -0.150325,
		0.548256, -0.161335, 0.820601,
		34.079880, 39.790890, 51.376255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500572, 40.026760, 50.671524>,  <33.696098, 39.903824, 50.801834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500572, 40.026760, 50.671524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.451031, 39.811283, 51.004864>,  <34.421307, 39.681995, 51.204868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.451031, 39.811283, 51.004864>,  <34.500572, 40.026760, 50.671524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451031, 39.811283, 51.004864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709343, -0.635330, -0.305268,
		0.693898, 0.553323, 0.460803,
		-0.123851, -0.538692, 0.833350,
		34.413876, 39.649677, 51.254868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221756, 39.925526, 50.912079>,  <34.500572, 40.026760, 50.671524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221756, 39.925526, 50.912079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.976688, 39.635220, 51.037243>,  <34.829647, 39.461037, 51.112343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.976688, 39.635220, 51.037243>,  <35.221756, 39.925526, 50.912079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976688, 39.635220, 51.037243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635884, -0.687771, -0.350175,
		0.469355, -0.015565, 0.882873,
		-0.612665, -0.725761, 0.312911,
		34.792889, 39.417492, 51.131115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690144, 39.417023, 51.100983>,  <35.221756, 39.925526, 50.912079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690144, 39.417023, 51.100983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351341, 39.204426, 51.104942>,  <35.148060, 39.076870, 51.107319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351341, 39.204426, 51.104942>,  <35.690144, 39.417023, 51.100983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351341, 39.204426, 51.104942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509408, -0.816858, -0.270640,
		0.151929, -0.224191, 0.962630,
		-0.847007, -0.531489, 0.009900,
		35.097240, 39.044979, 51.107914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966331, 38.657944, 51.212112>,  <35.690144, 39.417023, 51.100983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966331, 38.657944, 51.212112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583633, 38.631901, 51.098694>,  <35.354015, 38.616276, 51.030643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583633, 38.631901, 51.098694>,  <35.966331, 38.657944, 51.212112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583633, 38.631901, 51.098694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179333, -0.899428, -0.398583,
		-0.229083, -0.432192, 0.872199,
		-0.956745, -0.065105, -0.283550,
		35.296612, 38.612370, 51.013630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720364, 37.846439, 51.272289>,  <35.966331, 38.657944, 51.212112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720364, 37.846439, 51.272289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467266, 38.010544, 51.009590>,  <35.315407, 38.109005, 50.851971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467266, 38.010544, 51.009590>,  <35.720364, 37.846439, 51.272289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467266, 38.010544, 51.009590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175803, -0.749864, -0.637806,
		-0.754149, -0.519021, 0.402339,
		-0.632735, 0.410268, -0.656755,
		35.277443, 38.133621, 50.812565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328835, 37.312939, 50.995583>,  <35.720364, 37.846439, 51.272289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328835, 37.312939, 50.995583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283039, 37.603191, 50.724186>,  <35.255562, 37.777344, 50.561348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283039, 37.603191, 50.724186>,  <35.328835, 37.312939, 50.995583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283039, 37.603191, 50.724186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212034, -0.649394, -0.730294,
		-0.970532, -0.227477, -0.079508,
		-0.114493, 0.725632, -0.678491,
		35.248692, 37.820881, 50.520638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889267, 37.056583, 50.529018>,  <35.328835, 37.312939, 50.995583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889267, 37.056583, 50.529018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104771, 37.330738, 50.333061>,  <35.234074, 37.495232, 50.215488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104771, 37.330738, 50.333061>,  <34.889267, 37.056583, 50.529018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104771, 37.330738, 50.333061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188405, -0.664790, -0.722882,
		-0.821124, 0.297160, -0.487290,
		0.538757, 0.685383, -0.489888,
		35.266399, 37.536354, 50.186096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871876, 36.826115, 49.942581>,  <34.889267, 37.056583, 50.529018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871876, 36.826115, 49.942581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143066, 37.105366, 49.850517>,  <35.305779, 37.272915, 49.795280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143066, 37.105366, 49.850517>,  <34.871876, 36.826115, 49.942581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143066, 37.105366, 49.850517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149707, -0.437673, -0.886583,
		-0.719682, 0.566623, -0.401244,
		0.677972, 0.698127, -0.230158,
		35.346458, 37.314804, 49.781471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826611, 36.931992, 49.164700>,  <34.871876, 36.826115, 49.942581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826611, 36.931992, 49.164700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.189289, 37.048576, 49.286644>,  <35.406898, 37.118526, 49.359810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.189289, 37.048576, 49.286644>,  <34.826611, 36.931992, 49.164700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189289, 37.048576, 49.286644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403763, -0.390850, -0.827171,
		-0.121936, 0.873089, -0.472067,
		0.906701, 0.291466, 0.304863,
		35.461300, 37.136017, 49.378101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389244, 36.828224, 48.549294>,  <34.826611, 36.931992, 49.164700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389244, 36.828224, 48.549294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.177990, 36.905731, 48.218590>,  <34.051239, 36.952236, 48.020168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.177990, 36.905731, 48.218590>,  <34.389244, 36.828224, 48.549294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177990, 36.905731, 48.218590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138054, 0.941070, 0.308752,
		0.837863, 0.277199, -0.470261,
		-0.528135, 0.193771, -0.826757,
		34.019550, 36.963863, 47.970562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541004, 37.548820, 48.202240>,  <34.389244, 36.828224, 48.549294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541004, 37.548820, 48.202240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175320, 37.433010, 48.088829>,  <33.955910, 37.363525, 48.020782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175320, 37.433010, 48.088829>,  <34.541004, 37.548820, 48.202240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175320, 37.433010, 48.088829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350863, 0.915607, 0.196366,
		0.202752, 0.279001, -0.938643,
		-0.914214, -0.289521, -0.283532,
		33.901054, 37.346153, 48.003769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316437, 38.012058, 47.699703>,  <34.541004, 37.548820, 48.202240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316437, 38.012058, 47.699703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995876, 37.859249, 47.883797>,  <33.803539, 37.767563, 47.994251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995876, 37.859249, 47.883797>,  <34.316437, 38.012058, 47.699703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995876, 37.859249, 47.883797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300698, 0.922479, 0.242102,
		-0.517042, 0.055630, -0.854151,
		-0.801404, -0.382018, 0.460232,
		33.755455, 37.744644, 48.021866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697857, 38.330067, 47.415741>,  <34.316437, 38.012058, 47.699703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697857, 38.330067, 47.415741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551426, 38.194721, 47.762497>,  <33.463570, 38.113514, 47.970551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551426, 38.194721, 47.762497>,  <33.697857, 38.330067, 47.415741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551426, 38.194721, 47.762497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566095, 0.820337, 0.081137,
		-0.738597, -0.461040, -0.491850,
		-0.366075, -0.338362, 0.866891,
		33.441605, 38.093212, 48.022564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165134, 38.821888, 47.558842>,  <33.697857, 38.330067, 47.415741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165134, 38.821888, 47.558842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136448, 38.600407, 47.890690>,  <33.119236, 38.467518, 48.089798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136448, 38.600407, 47.890690>,  <33.165134, 38.821888, 47.558842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136448, 38.600407, 47.890690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672646, 0.641005, 0.369677,
		-0.736482, -0.531527, -0.418418,
		-0.071715, -0.553707, 0.829617,
		33.114933, 38.434296, 48.139576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354923, 38.740772, 47.801044>,  <33.165134, 38.821888, 47.558842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354923, 38.740772, 47.801044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589935, 38.675385, 48.118050>,  <32.730942, 38.636150, 48.308254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589935, 38.675385, 48.118050>,  <32.354923, 38.740772, 47.801044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589935, 38.675385, 48.118050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675826, 0.439512, 0.591682,
		-0.445045, -0.883236, 0.147747,
		0.587531, -0.163474, 0.792517,
		32.766193, 38.626343, 48.355804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927776, 38.341637, 48.305714>,  <32.354923, 38.740772, 47.801044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927776, 38.341637, 48.305714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221386, 38.524246, 48.506828>,  <32.397552, 38.633812, 48.627499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221386, 38.524246, 48.506828>,  <31.927776, 38.341637, 48.305714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221386, 38.524246, 48.506828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668824, 0.357498, 0.651820,
		0.117825, -0.814729, 0.567745,
		0.734025, 0.456522, 0.502788,
		32.441593, 38.661201, 48.657665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883377, 38.156841, 48.998707>,  <31.927776, 38.341637, 48.305714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883377, 38.156841, 48.998707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069946, 38.510593, 48.991489>,  <32.181889, 38.722843, 48.987160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069946, 38.510593, 48.991489>,  <31.883377, 38.156841, 48.998707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069946, 38.510593, 48.991489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650127, 0.356565, 0.670966,
		0.599820, -0.301226, 0.741269,
		0.466423, 0.884378, -0.018040,
		32.209873, 38.775906, 48.986076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805178, 38.375042, 49.594299>,  <31.883377, 38.156841, 48.998707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805178, 38.375042, 49.594299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907129, 38.725712, 49.431091>,  <31.968300, 38.936115, 49.333164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907129, 38.725712, 49.431091>,  <31.805178, 38.375042, 49.594299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907129, 38.725712, 49.431091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519310, 0.480042, 0.707020,
		0.815693, 0.031687, 0.577617,
		0.254877, 0.876673, -0.408022,
		31.983593, 38.988712, 49.308685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975304, 38.844524, 50.213009>,  <31.805178, 38.375042, 49.594299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975304, 38.844524, 50.213009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.899731, 39.066540, 49.888977>,  <31.854387, 39.199749, 49.694557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.899731, 39.066540, 49.888977>,  <31.975304, 38.844524, 50.213009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899731, 39.066540, 49.888977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417702, 0.701167, 0.577832,
		0.888723, 0.447546, 0.099366,
		-0.188935, 0.555038, -0.810084,
		31.843050, 39.233051, 49.645950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162445, 39.428768, 50.419468>,  <31.975304, 38.844524, 50.213009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162445, 39.428768, 50.419468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917625, 39.504410, 50.112316>,  <31.770733, 39.549793, 49.928024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917625, 39.504410, 50.112316>,  <32.162445, 39.428768, 50.419468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917625, 39.504410, 50.112316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295010, 0.846301, 0.443559,
		0.733733, 0.498012, -0.462191,
		-0.612050, 0.189103, -0.767877,
		31.734011, 39.561142, 49.881954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182827, 40.214748, 50.414917>,  <32.162445, 39.428768, 50.419468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182827, 40.214748, 50.414917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871353, 40.084045, 50.200672>,  <31.684469, 40.005623, 50.072124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871353, 40.084045, 50.200672>,  <32.182827, 40.214748, 50.414917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871353, 40.084045, 50.200672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534752, 0.792148, 0.294181,
		0.328158, 0.515493, -0.791568,
		-0.778687, -0.326755, -0.535611,
		31.637747, 39.986019, 50.039989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078403, 40.847569, 50.118969>,  <32.182827, 40.214748, 50.414917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078403, 40.847569, 50.118969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763948, 40.600704, 50.132240>,  <31.575275, 40.452587, 50.140205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763948, 40.600704, 50.132240>,  <32.078403, 40.847569, 50.118969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763948, 40.600704, 50.132240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523562, 0.693519, 0.494889,
		-0.328439, 0.371677, -0.868322,
		-0.786137, -0.617161, 0.033182,
		31.528107, 40.415554, 50.142197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569633, 41.272568, 49.980774>,  <32.078403, 40.847569, 50.118969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569633, 41.272568, 49.980774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.379843, 40.960762, 50.144348>,  <31.265968, 40.773678, 50.242493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.379843, 40.960762, 50.144348>,  <31.569633, 41.272568, 49.980774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379843, 40.960762, 50.144348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530153, 0.623909, 0.574173,
		-0.702716, 0.055634, -0.709292,
		-0.474477, -0.779514, 0.408936,
		31.237499, 40.726910, 50.267029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784880, 41.378635, 49.924709>,  <31.569633, 41.272568, 49.980774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784880, 41.378635, 49.924709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859863, 41.136742, 50.234329>,  <30.904854, 40.991604, 50.420101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859863, 41.136742, 50.234329>,  <30.784880, 41.378635, 49.924709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859863, 41.136742, 50.234329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525938, 0.603749, 0.599063,
		-0.829607, -0.519402, -0.204876,
		0.187461, -0.604739, 0.774047,
		30.916101, 40.955318, 50.466545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094482, 41.172813, 50.272106>,  <30.784880, 41.378635, 49.924709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094482, 41.172813, 50.272106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344818, 41.077847, 50.569283>,  <30.495020, 41.020866, 50.747589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344818, 41.077847, 50.569283>,  <30.094482, 41.172813, 50.272106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344818, 41.077847, 50.569283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618631, 0.429002, 0.658219,
		-0.474995, -0.871545, 0.121613,
		0.625840, -0.237417, 0.742938,
		30.532570, 41.006622, 50.792164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693939, 40.891243, 50.760212>,  <30.094482, 41.172813, 50.272106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693939, 40.891243, 50.760212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.025848, 41.008083, 50.950436>,  <30.224993, 41.078186, 51.064571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.025848, 41.008083, 50.950436>,  <29.693939, 40.891243, 50.760212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025848, 41.008083, 50.950436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554259, 0.331467, 0.763496,
		0.065383, -0.897112, 0.436939,
		0.829772, 0.292097, 0.475560,
		30.274780, 41.095715, 51.093105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490263, 41.130890, 51.413719>,  <29.693939, 40.891243, 50.760212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490263, 41.130890, 51.413719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868206, 41.194061, 51.528473>,  <30.094973, 41.231964, 51.597324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868206, 41.194061, 51.528473>,  <29.490263, 41.130890, 51.413719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868206, 41.194061, 51.528473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321256, 0.277028, 0.905566,
		0.063544, -0.947794, 0.312488,
		0.944858, 0.157932, 0.286881,
		30.151663, 41.241440, 51.614536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647741, 40.586838, 52.026615>,  <29.490263, 41.130890, 51.413719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647741, 40.586838, 52.026615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.873222, 40.916210, 52.000702>,  <30.008511, 41.113834, 51.985153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.873222, 40.916210, 52.000702>,  <29.647741, 40.586838, 52.026615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873222, 40.916210, 52.000702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314323, 0.286385, 0.905088,
		0.763834, -0.489836, 0.420260,
		0.563701, 0.823434, -0.064784,
		30.042334, 41.163239, 51.981266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949795, 40.578346, 52.673771>,  <29.647741, 40.586838, 52.026615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949795, 40.578346, 52.673771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949165, 40.943333, 52.510113>,  <29.948788, 41.162327, 52.411919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949165, 40.943333, 52.510113>,  <29.949795, 40.578346, 52.673771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949165, 40.943333, 52.510113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385774, 0.376920, 0.842087,
		0.922592, 0.159160, 0.351414,
		-0.001571, 0.912469, -0.409143,
		29.948694, 41.217072, 52.387371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210566, 40.920547, 53.091370>,  <29.949795, 40.578346, 52.673771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210566, 40.920547, 53.091370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.017756, 41.197960, 52.877205>,  <29.902069, 41.364407, 52.748707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.017756, 41.197960, 52.877205>,  <30.210566, 40.920547, 53.091370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017756, 41.197960, 52.877205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433696, 0.342108, 0.833589,
		0.761289, 0.634016, 0.135878,
		-0.482024, 0.693532, -0.535413,
		29.873148, 41.406021, 52.716579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371410, 41.628250, 53.360207>,  <30.210566, 40.920547, 53.091370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371410, 41.628250, 53.360207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.017981, 41.665359, 53.176601>,  <29.805923, 41.687626, 53.066441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.017981, 41.665359, 53.176601>,  <30.371410, 41.628250, 53.360207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017981, 41.665359, 53.176601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375943, 0.443909, 0.813395,
		0.279222, 0.891256, -0.357348,
		-0.883573, 0.092775, -0.459011,
		29.752909, 41.693192, 53.038898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154856, 42.320572, 53.457088>,  <30.371410, 41.628250, 53.360207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154856, 42.320572, 53.457088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.801493, 42.150730, 53.377792>,  <29.589474, 42.048824, 53.330215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.801493, 42.150730, 53.377792>,  <30.154856, 42.320572, 53.457088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801493, 42.150730, 53.377792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351432, 0.320478, 0.879653,
		-0.309972, 0.846762, -0.432333,
		-0.883410, -0.424604, -0.198240,
		29.536470, 42.023350, 53.318321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632679, 42.743996, 53.791252>,  <30.154856, 42.320572, 53.457088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632679, 42.743996, 53.791252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.430826, 42.404285, 53.729195>,  <29.309715, 42.200459, 53.691959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.430826, 42.404285, 53.729195>,  <29.632679, 42.743996, 53.791252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430826, 42.404285, 53.729195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525884, 0.159864, 0.835398,
		-0.684684, 0.503158, -0.527295,
		-0.504633, -0.849280, -0.155147,
		29.279436, 42.149502, 53.682652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902391, 42.915699, 53.895973>,  <29.632679, 42.743996, 53.791252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902391, 42.915699, 53.895973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.962900, 42.524113, 53.950726>,  <28.999205, 42.289162, 53.983578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.962900, 42.524113, 53.950726>,  <28.902391, 42.915699, 53.895973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962900, 42.524113, 53.950726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601041, 0.018842, 0.798996,
		-0.784771, -0.203135, -0.585551,
		0.151271, -0.978969, 0.136879,
		29.008282, 42.230423, 53.991791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249500, 42.491688, 53.938629>,  <28.902391, 42.915699, 53.895973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249500, 42.491688, 53.938629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.542879, 42.307499, 54.138638>,  <28.718906, 42.196987, 54.258640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.542879, 42.307499, 54.138638>,  <28.249500, 42.491688, 53.938629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542879, 42.307499, 54.138638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477607, 0.174317, 0.861107,
		-0.483679, -0.870389, -0.092073,
		0.733448, -0.460474, 0.500018,
		28.762913, 42.169357, 54.288643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840061, 42.119198, 54.388084>,  <28.249500, 42.491688, 53.938629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840061, 42.119198, 54.388084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.206154, 42.133587, 54.548611>,  <28.425810, 42.142220, 54.644928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.206154, 42.133587, 54.548611>,  <27.840061, 42.119198, 54.388084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206154, 42.133587, 54.548611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400996, -0.016004, 0.915940,
		0.039371, -0.999225, -0.000223,
		0.915233, 0.035972, 0.401315,
		28.480724, 42.144379, 54.669006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020521, 41.490276, 54.658558>,  <27.840061, 42.119198, 54.388084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020521, 41.490276, 54.658558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.175940, 41.803337, 54.853077>,  <28.269190, 41.991173, 54.969788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.175940, 41.803337, 54.853077>,  <28.020521, 41.490276, 54.658558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175940, 41.803337, 54.853077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550836, -0.225782, 0.803493,
		0.738656, -0.580062, 0.343389,
		0.388545, 0.782656, 0.486294,
		28.292503, 42.038136, 54.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179823, 41.262772, 55.406860>,  <28.020521, 41.490276, 54.658558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179823, 41.262772, 55.406860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.192289, 41.661991, 55.428505>,  <28.199770, 41.901524, 55.441494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.192289, 41.661991, 55.428505>,  <28.179823, 41.262772, 55.406860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192289, 41.661991, 55.428505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241928, -0.044999, 0.969250,
		0.969794, -0.043300, 0.240053,
		0.031166, 0.998048, 0.054115,
		28.201639, 41.961407, 55.444740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528877, 41.339676, 56.072746>,  <28.179823, 41.262772, 55.406860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528877, 41.339676, 56.072746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.340044, 41.677666, 55.972218>,  <28.226744, 41.880459, 55.911900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.340044, 41.677666, 55.972218>,  <28.528877, 41.339676, 56.072746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340044, 41.677666, 55.972218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401716, 0.047573, 0.914528,
		0.784705, 0.532693, 0.316979,
		-0.472083, 0.844970, -0.251322,
		28.198420, 41.931156, 55.896820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676891, 41.801922, 56.653278>,  <28.528877, 41.339676, 56.072746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676891, 41.801922, 56.653278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.345633, 41.933926, 56.472054>,  <28.146877, 42.013130, 56.363319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.345633, 41.933926, 56.472054>,  <28.676891, 41.801922, 56.653278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345633, 41.933926, 56.472054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397348, 0.224437, 0.889799,
		0.395328, 0.916908, -0.054737,
		-0.828148, 0.330013, -0.453058,
		28.097189, 42.032928, 56.336136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401241, 42.342422, 56.971107>,  <28.676891, 41.801922, 56.653278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401241, 42.342422, 56.971107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.068491, 42.265446, 56.762897>,  <27.868841, 42.219257, 56.637970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.068491, 42.265446, 56.762897>,  <28.401241, 42.342422, 56.971107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068491, 42.265446, 56.762897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517284, -0.070828, 0.852878,
		-0.201000, 0.978748, -0.040628,
		-0.831875, -0.192445, -0.520527,
		27.818928, 42.207714, 56.606739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895943, 42.726967, 57.338444>,  <28.401241, 42.342422, 56.971107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895943, 42.726967, 57.338444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.713184, 42.436874, 57.132423>,  <27.603529, 42.262817, 57.008812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.713184, 42.436874, 57.132423>,  <27.895943, 42.726967, 57.338444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713184, 42.436874, 57.132423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462929, -0.300570, 0.833879,
		-0.759569, 0.619428, -0.198404,
		-0.456894, -0.725236, -0.515055,
		27.576117, 42.219303, 56.977905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247524, 42.979641, 57.443813>,  <27.895943, 42.726967, 57.338444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247524, 42.979641, 57.443813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.196856, 42.593288, 57.353462>,  <27.166454, 42.361477, 57.299252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.196856, 42.593288, 57.353462>,  <27.247524, 42.979641, 57.443813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196856, 42.593288, 57.353462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280298, -0.183574, 0.942196,
		-0.951519, 0.182660, -0.247482,
		-0.126671, -0.965886, -0.225874,
		27.158854, 42.303524, 57.285702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550608, 42.867210, 57.554108>,  <27.247524, 42.979641, 57.443813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550608, 42.867210, 57.554108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.738543, 42.514133, 57.549858>,  <26.851303, 42.302288, 57.547306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.738543, 42.514133, 57.549858>,  <26.550608, 42.867210, 57.554108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738543, 42.514133, 57.549858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348307, -0.196432, 0.916568,
		-0.811132, -0.426937, -0.399738,
		0.469838, -0.882689, -0.010627,
		26.879494, 42.249329, 57.546669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965059, 42.397152, 57.607437>,  <26.550608, 42.867210, 57.554108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965059, 42.397152, 57.607437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.280516, 42.172413, 57.707333>,  <26.469790, 42.037571, 57.767269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.280516, 42.172413, 57.707333>,  <25.965059, 42.397152, 57.607437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280516, 42.172413, 57.707333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378802, -0.124055, 0.917126,
		-0.484305, -0.817886, -0.310664,
		0.788643, -0.561848, 0.249736,
		26.517109, 42.003857, 57.782253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716820, 41.751949, 57.743351>,  <25.965059, 42.397152, 57.607437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716820, 41.751949, 57.743351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.054110, 41.778931, 57.956676>,  <26.256483, 41.795120, 58.084671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.054110, 41.778931, 57.956676>,  <25.716820, 41.751949, 57.743351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054110, 41.778931, 57.956676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475302, -0.369898, 0.798288,
		0.251118, -0.926621, -0.279847,
		0.843225, 0.067453, 0.533312,
		26.307077, 41.799168, 58.116669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611929, 41.218559, 58.162487>,  <25.716820, 41.751949, 57.743351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611929, 41.218559, 58.162487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.900726, 41.424736, 58.347115>,  <26.074005, 41.548443, 58.457890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.900726, 41.424736, 58.347115>,  <25.611929, 41.218559, 58.162487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900726, 41.424736, 58.347115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451937, -0.153809, 0.878690,
		0.523906, -0.843008, 0.121898,
		0.721994, 0.515441, 0.461568,
		26.117325, 41.579369, 58.485584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455521, 40.722336, 58.667770>,  <25.611929, 41.218559, 58.162487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455521, 40.722336, 58.667770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.368578, 40.331940, 58.673344>,  <25.316412, 40.097702, 58.676689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.368578, 40.331940, 58.673344>,  <25.455521, 40.722336, 58.667770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368578, 40.331940, 58.673344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710730, -0.168033, -0.683101,
		0.669043, -0.138574, 0.730191,
		-0.217356, -0.975993, 0.013932,
		25.303371, 40.039143, 58.677525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064352, 40.357998, 58.791393>,  <25.455521, 40.722336, 58.667770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064352, 40.357998, 58.791393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.820536, 40.068832, 58.661255>,  <25.674246, 39.895332, 58.583172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.820536, 40.068832, 58.661255>,  <26.064352, 40.357998, 58.791393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820536, 40.068832, 58.661255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721869, -0.336516, -0.604700,
		0.327664, -0.603447, 0.726972,
		-0.609542, -0.722916, -0.325345,
		25.637672, 39.851959, 58.563652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478477, 39.736546, 58.829262>,  <26.064352, 40.357998, 58.791393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478477, 39.736546, 58.829262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.177790, 39.657730, 58.577518>,  <25.997377, 39.610439, 58.426472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.177790, 39.657730, 58.577518>,  <26.478477, 39.736546, 58.829262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177790, 39.657730, 58.577518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659148, -0.254939, -0.707481,
		-0.021045, -0.946668, 0.321522,
		-0.751719, -0.197041, -0.629360,
		25.952274, 39.598618, 58.388710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494190, 39.023151, 58.690109>,  <26.478477, 39.736546, 58.829262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494190, 39.023151, 58.690109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.317511, 39.202072, 58.379028>,  <26.211502, 39.309425, 58.192379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.317511, 39.202072, 58.379028>,  <26.494190, 39.023151, 58.690109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317511, 39.202072, 58.379028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588175, -0.510195, -0.627496,
		-0.677461, -0.734590, -0.037739,
		-0.441698, 0.447301, -0.777704,
		26.185001, 39.336262, 58.145718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554676, 38.537300, 58.180443>,  <26.494190, 39.023151, 58.690109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554676, 38.537300, 58.180443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.438271, 38.854984, 57.967072>,  <26.368427, 39.045593, 57.839050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.438271, 38.854984, 57.967072>,  <26.554676, 38.537300, 58.180443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438271, 38.854984, 57.967072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435137, -0.386673, -0.813105,
		-0.852037, -0.468737, -0.233063,
		-0.291014, 0.794210, -0.533425,
		26.350965, 39.093246, 57.807045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499994, 38.275169, 57.532600>,  <26.554676, 38.537300, 58.180443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499994, 38.275169, 57.532600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.540361, 38.666958, 57.462795>,  <26.564581, 38.902031, 57.420914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.540361, 38.666958, 57.462795>,  <26.499994, 38.275169, 57.532600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540361, 38.666958, 57.462795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455728, -0.201431, -0.867028,
		-0.884380, 0.007971, -0.466700,
		0.100919, 0.979470, -0.174509,
		26.570637, 38.960800, 57.410442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255533, 38.462952, 56.801109>,  <26.499994, 38.275169, 57.532600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255533, 38.462952, 56.801109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.493383, 38.763390, 56.915840>,  <26.636093, 38.943653, 56.984680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.493383, 38.763390, 56.915840>,  <26.255533, 38.462952, 56.801109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493383, 38.763390, 56.915840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516355, -0.083305, -0.852313,
		-0.616276, 0.654915, -0.437369,
		0.594627, 0.751097, 0.286830,
		26.671772, 38.988720, 57.001888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381004, 38.950409, 56.266884>,  <26.255533, 38.462952, 56.801109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381004, 38.950409, 56.266884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.692408, 39.054325, 56.495422>,  <26.879250, 39.116673, 56.632545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.692408, 39.054325, 56.495422>,  <26.381004, 38.950409, 56.266884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692408, 39.054325, 56.495422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570026, 0.088326, -0.816865,
		-0.262677, 0.961618, -0.079323,
		0.778506, 0.259788, 0.571348,
		26.925959, 39.132263, 56.666828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645687, 39.580734, 55.976273>,  <26.381004, 38.950409, 56.266884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645687, 39.580734, 55.976273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.959780, 39.453541, 56.188801>,  <27.148235, 39.377224, 56.316319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.959780, 39.453541, 56.188801>,  <26.645687, 39.580734, 55.976273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959780, 39.453541, 56.188801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589829, 0.122967, -0.798111,
		0.188453, 0.940087, 0.284115,
		0.785231, -0.317986, 0.531317,
		27.195349, 39.358147, 56.348198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187593, 40.044632, 55.790710>,  <26.645687, 39.580734, 55.976273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187593, 40.044632, 55.790710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.367542, 39.716763, 55.932556>,  <27.475512, 39.520042, 56.017666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.367542, 39.716763, 55.932556>,  <27.187593, 40.044632, 55.790710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367542, 39.716763, 55.932556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626790, 0.006919, -0.779158,
		0.636200, 0.572792, 0.516874,
		0.449871, -0.819672, 0.354618,
		27.502504, 39.470860, 56.038940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921438, 40.178707, 55.687019>,  <27.187593, 40.044632, 55.790710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921438, 40.178707, 55.687019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.904009, 39.786064, 55.761375>,  <27.893551, 39.550480, 55.805988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.904009, 39.786064, 55.761375>,  <27.921438, 40.178707, 55.687019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904009, 39.786064, 55.761375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726738, -0.158818, -0.668302,
		0.685531, 0.105971, 0.720290,
		-0.043574, -0.981604, 0.185887,
		27.890936, 39.491581, 55.817142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636366, 40.006680, 55.876507>,  <27.921438, 40.178707, 55.687019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636366, 40.006680, 55.876507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.442778, 39.686687, 55.734634>,  <28.326624, 39.494690, 55.649509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.442778, 39.686687, 55.734634>,  <28.636366, 40.006680, 55.876507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442778, 39.686687, 55.734634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704596, -0.115874, -0.700084,
		0.518958, -0.588726, 0.619746,
		-0.483970, -0.799984, -0.354680,
		28.297586, 39.446693, 55.628231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164742, 39.513535, 55.770542>,  <28.636366, 40.006680, 55.876507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164742, 39.513535, 55.770542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851038, 39.402641, 55.548523>,  <28.662815, 39.336105, 55.415310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851038, 39.402641, 55.548523>,  <29.164742, 39.513535, 55.770542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851038, 39.402641, 55.548523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620432, -0.351826, -0.700915,
		-0.000965, -0.894070, 0.447927,
		-0.784260, -0.277232, -0.555049,
		28.615761, 39.319473, 55.382008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361210, 38.923397, 55.428661>,  <29.164742, 39.513535, 55.770542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361210, 38.923397, 55.428661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054386, 39.026604, 55.193699>,  <28.870293, 39.088528, 55.052723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054386, 39.026604, 55.193699>,  <29.361210, 38.923397, 55.428661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054386, 39.026604, 55.193699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502927, -0.326651, -0.800227,
		-0.398352, -0.909244, 0.120794,
		-0.767059, 0.258022, -0.587406,
		28.824268, 39.104008, 55.017479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208895, 38.300755, 54.987648>,  <29.361210, 38.923397, 55.428661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208895, 38.300755, 54.987648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073591, 38.635826, 54.816124>,  <28.992409, 38.836868, 54.713211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073591, 38.635826, 54.816124>,  <29.208895, 38.300755, 54.987648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073591, 38.635826, 54.816124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426568, -0.269679, -0.863315,
		-0.838820, -0.474940, -0.266105,
		-0.338260, 0.837678, -0.428807,
		28.972113, 38.887131, 54.687481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171860, 38.129093, 54.178959>,  <29.208895, 38.300755, 54.987648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171860, 38.129093, 54.178959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.117212, 38.524158, 54.148323>,  <29.084425, 38.761196, 54.129940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.117212, 38.524158, 54.148323>,  <29.171860, 38.129093, 54.178959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117212, 38.524158, 54.148323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208592, -0.046899, -0.976878,
		-0.968414, -0.149433, -0.199611,
		-0.136616, 0.987659, -0.076588,
		29.076227, 38.820457, 54.125347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851021, 38.241253, 53.589508>,  <29.171860, 38.129093, 54.178959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851021, 38.241253, 53.589508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.041559, 38.580849, 53.681000>,  <29.155882, 38.784607, 53.735897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.041559, 38.580849, 53.681000>,  <28.851021, 38.241253, 53.589508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041559, 38.580849, 53.681000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408417, 0.016731, -0.912642,
		-0.778647, 0.528151, -0.338770,
		0.476345, 0.848986, 0.228733,
		29.184464, 38.835545, 53.749619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650885, 38.721340, 53.047112>,  <28.851021, 38.241253, 53.589508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650885, 38.721340, 53.047112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.992542, 38.819962, 53.230259>,  <29.197536, 38.879135, 53.340149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.992542, 38.819962, 53.230259>,  <28.650885, 38.721340, 53.047112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992542, 38.819962, 53.230259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475888, -0.015568, -0.879368,
		-0.209685, 0.969003, -0.130631,
		0.854144, 0.246556, 0.457873,
		29.248785, 38.893929, 53.367622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843704, 39.379688, 52.769825>,  <28.650885, 38.721340, 53.047112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843704, 39.379688, 52.769825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.180662, 39.207699, 52.899746>,  <29.382837, 39.104507, 52.977699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.180662, 39.207699, 52.899746>,  <28.843704, 39.379688, 52.769825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180662, 39.207699, 52.899746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421057, 0.149077, -0.894699,
		0.336275, 0.890450, 0.306625,
		0.842395, -0.429972, 0.324800,
		29.433380, 39.078709, 52.997185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421637, 39.824471, 52.536613>,  <28.843704, 39.379688, 52.769825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421637, 39.824471, 52.536613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.569971, 39.466396, 52.635509>,  <29.658972, 39.251553, 52.694847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.569971, 39.466396, 52.635509>,  <29.421637, 39.824471, 52.536613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569971, 39.466396, 52.635509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356190, -0.108771, -0.928061,
		0.857678, 0.432222, 0.278519,
		0.370834, -0.895183, 0.247244,
		29.681221, 39.197842, 52.709682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988216, 39.805595, 52.218853>,  <29.421637, 39.824471, 52.536613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988216, 39.805595, 52.218853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.940912, 39.411629, 52.269375>,  <29.912529, 39.175247, 52.299686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.940912, 39.411629, 52.269375>,  <29.988216, 39.805595, 52.218853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940912, 39.411629, 52.269375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364103, -0.161349, -0.917276,
		0.923820, -0.062491, 0.377692,
		-0.118262, -0.984917, 0.126304,
		29.905434, 39.116154, 52.307266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618704, 39.490238, 51.925278>,  <29.988216, 39.805595, 52.218853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618704, 39.490238, 51.925278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.374140, 39.176781, 51.969238>,  <30.227402, 38.988705, 51.995613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.374140, 39.176781, 51.969238>,  <30.618704, 39.490238, 51.925278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374140, 39.176781, 51.969238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297686, -0.356460, -0.885618,
		0.733185, -0.508761, 0.451224,
		-0.611411, -0.783644, 0.109900,
		30.190716, 38.941689, 52.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004932, 39.025200, 51.610695>,  <30.618704, 39.490238, 51.925278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004932, 39.025200, 51.610695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.633556, 38.878696, 51.635536>,  <30.410730, 38.790794, 51.650440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.633556, 38.878696, 51.635536>,  <31.004932, 39.025200, 51.610695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633556, 38.878696, 51.635536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109871, -0.430432, -0.895911,
		0.354866, -0.824975, 0.439871,
		-0.928439, -0.366257, 0.062105,
		30.355024, 38.768818, 51.654167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976320, 38.415844, 51.299694>,  <31.004932, 39.025200, 51.610695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976320, 38.415844, 51.299694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577696, 38.448971, 51.298420>,  <30.338522, 38.468845, 51.297653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577696, 38.448971, 51.298420>,  <30.976320, 38.415844, 51.299694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577696, 38.448971, 51.298420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042351, -0.541942, -0.839348,
		-0.071240, -0.836325, 0.543585,
		-0.996560, 0.082816, -0.003189,
		30.278728, 38.473816, 51.297462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663534, 37.767227, 51.212498>,  <30.976320, 38.415844, 51.299694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663534, 37.767227, 51.212498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411911, 38.039131, 51.061653>,  <30.260937, 38.202274, 50.971146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411911, 38.039131, 51.061653>,  <30.663534, 37.767227, 51.212498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411911, 38.039131, 51.061653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010690, -0.492638, -0.870169,
		-0.777286, -0.543354, 0.317164,
		-0.629056, 0.679760, -0.377112,
		30.223194, 38.243061, 50.948521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246977, 37.377060, 50.793556>,  <30.663534, 37.767227, 51.212498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246977, 37.377060, 50.793556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171736, 37.746391, 50.659645>,  <30.126591, 37.967991, 50.579296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171736, 37.746391, 50.659645>,  <30.246977, 37.377060, 50.793556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171736, 37.746391, 50.659645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009040, -0.342478, -0.939482,
		-0.982107, -0.173695, 0.072768,
		-0.188105, 0.923330, -0.334780,
		30.115305, 38.023392, 50.559212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711319, 37.321194, 50.384396>,  <30.246977, 37.377060, 50.793556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711319, 37.321194, 50.384396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906103, 37.642025, 50.246094>,  <30.022974, 37.834522, 50.163113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906103, 37.642025, 50.246094>,  <29.711319, 37.321194, 50.384396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906103, 37.642025, 50.246094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084150, -0.437102, -0.895467,
		-0.869362, 0.406960, -0.280345,
		0.486959, 0.802076, -0.345754,
		30.052191, 37.882648, 50.142368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350733, 37.427471, 49.821053>,  <29.711319, 37.321194, 50.384396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350733, 37.427471, 49.821053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.661127, 37.653889, 49.709740>,  <29.847363, 37.789738, 49.642952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.661127, 37.653889, 49.709740>,  <29.350733, 37.427471, 49.821053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661127, 37.653889, 49.709740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113978, -0.559767, -0.820774,
		-0.620369, 0.605189, -0.498888,
		0.775984, 0.566045, -0.278284,
		29.893923, 37.823704, 49.626255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197153, 37.560764, 49.144356>,  <29.350733, 37.427471, 49.821053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197153, 37.560764, 49.144356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.589640, 37.611462, 49.202530>,  <29.825132, 37.641880, 49.237434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.589640, 37.611462, 49.202530>,  <29.197153, 37.560764, 49.144356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589640, 37.611462, 49.202530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192448, -0.695203, -0.692572,
		0.013329, 0.707552, -0.706536,
		0.981217, 0.126740, 0.145433,
		29.884005, 37.649483, 49.246159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492128, 37.637028, 48.480511>,  <29.197153, 37.560764, 49.144356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492128, 37.637028, 48.480511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.792009, 37.537231, 48.725689>,  <29.971937, 37.477356, 48.872795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.792009, 37.537231, 48.725689>,  <29.492128, 37.637028, 48.480511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792009, 37.537231, 48.725689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186884, -0.808700, -0.557744,
		0.634841, 0.532691, -0.559657,
		0.749701, -0.249488, 0.612948,
		30.016920, 37.462383, 48.909573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082203, 37.436665, 48.020370>,  <29.492128, 37.637028, 48.480511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082203, 37.436665, 48.020370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149885, 37.286415, 48.384850>,  <30.190495, 37.196266, 48.603539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149885, 37.286415, 48.384850>,  <30.082203, 37.436665, 48.020370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149885, 37.286415, 48.384850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270022, -0.871485, -0.409393,
		0.947870, 0.315315, -0.046035,
		0.169207, -0.375620, 0.911196,
		30.200647, 37.173729, 48.658207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780088, 37.222958, 48.076431>,  <30.082203, 37.436665, 48.020370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780088, 37.222958, 48.076431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.584383, 37.016083, 48.357327>,  <30.466959, 36.891956, 48.525864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.584383, 37.016083, 48.357327>,  <30.780088, 37.222958, 48.076431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584383, 37.016083, 48.357327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342283, -0.854458, -0.390826,
		0.802162, 0.049146, 0.595081,
		-0.489264, -0.517191, 0.702235,
		30.437603, 36.860924, 48.567997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270872, 36.646194, 48.238125>,  <30.780088, 37.222958, 48.076431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270872, 36.646194, 48.238125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.917711, 36.530556, 48.386131>,  <30.705814, 36.461170, 48.474934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.917711, 36.530556, 48.386131>,  <31.270872, 36.646194, 48.238125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917711, 36.530556, 48.386131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236626, -0.954556, -0.181193,
		0.405580, -0.072421, 0.911186,
		-0.882900, -0.289099, 0.370012,
		30.652842, 36.443825, 48.497135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386105, 36.058041, 48.655838>,  <31.270872, 36.646194, 48.238125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386105, 36.058041, 48.655838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002674, 36.032928, 48.544704>,  <30.772615, 36.017860, 48.478024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002674, 36.032928, 48.544704>,  <31.386105, 36.058041, 48.655838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002674, 36.032928, 48.544704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129202, -0.965128, -0.227675,
		-0.253849, -0.254140, 0.933259,
		-0.958576, -0.062784, -0.277832,
		30.715101, 36.014091, 48.461353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188364, 35.373154, 48.866932>,  <31.386105, 36.058041, 48.655838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188364, 35.373154, 48.866932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905127, 35.474930, 48.603458>,  <30.735184, 35.535995, 48.445374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905127, 35.474930, 48.603458>,  <31.188364, 35.373154, 48.866932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905127, 35.474930, 48.603458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063946, -0.905881, -0.418677,
		-0.703216, -0.338582, 0.625179,
		-0.708094, 0.254443, -0.658681,
		30.692698, 35.551262, 48.405853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648914, 34.827358, 48.927483>,  <31.188364, 35.373154, 48.866932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648914, 34.827358, 48.927483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608801, 34.998981, 48.568405>,  <30.584732, 35.101955, 48.352959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608801, 34.998981, 48.568405>,  <30.648914, 34.827358, 48.927483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608801, 34.998981, 48.568405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040609, -0.903255, -0.427178,
		-0.994130, -0.006385, 0.108006,
		-0.100285, 0.429057, -0.897693,
		30.578716, 35.127697, 48.299099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183771, 34.404388, 48.599644>,  <30.648914, 34.827358, 48.927483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183771, 34.404388, 48.599644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344685, 34.614590, 48.299774>,  <30.441233, 34.740711, 48.119850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344685, 34.614590, 48.299774>,  <30.183771, 34.404388, 48.599644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344685, 34.614590, 48.299774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025143, -0.812209, -0.582825,
		-0.915170, 0.253309, -0.313524,
		0.402282, 0.525501, -0.749678,
		30.465368, 34.772240, 48.074871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730349, 34.280441, 47.984047>,  <30.183771, 34.404388, 48.599644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730349, 34.280441, 47.984047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091328, 34.419060, 47.881683>,  <30.307915, 34.502232, 47.820267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091328, 34.419060, 47.881683>,  <29.730349, 34.280441, 47.984047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091328, 34.419060, 47.881683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168980, -0.831186, -0.529694,
		-0.396271, 0.434780, -0.808663,
		0.902450, 0.346550, -0.255906,
		30.362062, 34.523026, 47.804913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756775, 34.193317, 47.282215>,  <29.730349, 34.280441, 47.984047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756775, 34.193317, 47.282215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141272, 34.223145, 47.388386>,  <30.371971, 34.241039, 47.452087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141272, 34.223145, 47.388386>,  <29.756775, 34.193317, 47.282215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141272, 34.223145, 47.388386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206329, -0.833113, -0.513177,
		0.182861, 0.548053, -0.816211,
		0.961244, 0.074568, 0.265423,
		30.429646, 34.245514, 47.468014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117887, 34.020752, 46.637142>,  <29.756775, 34.193317, 47.282215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117887, 34.020752, 46.637142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.376900, 33.967186, 46.937214>,  <30.532307, 33.935047, 47.117256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.376900, 33.967186, 46.937214>,  <30.117887, 34.020752, 46.637142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376900, 33.967186, 46.937214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433482, -0.744919, -0.507139,
		0.626736, 0.653578, -0.424309,
		0.647530, -0.133912, 0.750181,
		30.571159, 33.927013, 47.162270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780354, 33.812675, 46.321831>,  <30.117887, 34.020752, 46.637142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780354, 33.812675, 46.321831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788843, 33.697258, 46.704723>,  <30.793936, 33.628006, 46.934460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788843, 33.697258, 46.704723>,  <30.780354, 33.812675, 46.321831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788843, 33.697258, 46.704723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528992, -0.809202, -0.255654,
		0.848361, 0.511793, 0.135466,
		0.021222, -0.288548, 0.957230,
		30.795210, 33.610695, 46.991894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423193, 33.698215, 46.442345>,  <30.780354, 33.812675, 46.321831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423193, 33.698215, 46.442345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225872, 33.482250, 46.715153>,  <31.107479, 33.352673, 46.878838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225872, 33.482250, 46.715153>,  <31.423193, 33.698215, 46.442345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225872, 33.482250, 46.715153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592333, -0.782685, -0.191171,
		0.637022, 0.309678, 0.705906,
		-0.493300, -0.539912, 0.682019,
		31.077883, 33.320278, 46.919758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005367, 33.294930, 46.737068>,  <31.423193, 33.698215, 46.442345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005367, 33.294930, 46.737068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655581, 33.117786, 46.816246>,  <31.445709, 33.011501, 46.863754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655581, 33.117786, 46.816246>,  <32.005367, 33.294930, 46.737068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655581, 33.117786, 46.816246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360534, -0.866370, -0.345568,
		0.324535, -0.230821, 0.917278,
		-0.874467, -0.442859, 0.197949,
		31.393240, 32.984928, 46.875629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021126, 32.694561, 47.219978>,  <32.005367, 33.294930, 46.737068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021126, 32.694561, 47.219978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.715837, 32.661438, 46.963657>,  <31.532663, 32.641563, 46.809864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.715837, 32.661438, 46.963657>,  <32.021126, 32.694561, 47.219978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715837, 32.661438, 46.963657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294290, -0.927464, -0.230658,
		-0.575225, -0.364627, 0.732232,
		-0.763223, -0.082809, -0.640806,
		31.486870, 32.636597, 46.771416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493587, 32.995216, 47.686310>,  <32.021126, 32.694561, 47.219978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493587, 32.995216, 47.686310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181068, 33.106094, 47.910000>,  <31.993557, 33.172623, 48.044212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181068, 33.106094, 47.910000>,  <32.493587, 32.995216, 47.686310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181068, 33.106094, 47.910000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514142, 0.222152, -0.828436,
		-0.353874, -0.934778, -0.031047,
		-0.781301, 0.277200, 0.559222,
		31.946678, 33.189255, 48.077766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270031, 33.243599, 47.511284>,  <32.493587, 32.995216, 47.686310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270031, 33.243599, 47.511284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264919, 32.987770, 47.203835>,  <33.261852, 32.834270, 47.019363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264919, 32.987770, 47.203835>,  <33.270031, 33.243599, 47.511284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264919, 32.987770, 47.203835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989957, -0.116326, 0.080334,
		-0.140790, -0.759876, 0.634639,
		-0.012781, -0.639576, -0.768622,
		33.261086, 32.795898, 46.973248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696548, 32.609150, 47.688896>,  <33.270031, 33.243599, 47.511284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696548, 32.609150, 47.688896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697090, 32.725563, 47.306213>,  <33.697414, 32.795410, 47.076603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697090, 32.725563, 47.306213>,  <33.696548, 32.609150, 47.688896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697090, 32.725563, 47.306213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983305, 0.173695, 0.054234,
		0.181960, -0.940812, -0.285942,
		0.001358, 0.291036, -0.956711,
		33.697498, 32.812874, 47.019199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126476, 32.117172, 47.355728>,  <33.696548, 32.609150, 47.688896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126476, 32.117172, 47.355728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099770, 32.487667, 47.207336>,  <34.083744, 32.709965, 47.118301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099770, 32.487667, 47.207336>,  <34.126476, 32.117172, 47.355728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099770, 32.487667, 47.207336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961057, 0.159628, 0.225586,
		0.268165, -0.341469, -0.900825,
		-0.066766, 0.926238, -0.370978,
		34.079739, 32.765537, 47.096043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486725, 32.131027, 46.693737>,  <34.126476, 32.117172, 47.355728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486725, 32.131027, 46.693737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475498, 32.494789, 46.859722>,  <34.468761, 32.713047, 46.959312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475498, 32.494789, 46.859722>,  <34.486725, 32.131027, 46.693737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475498, 32.494789, 46.859722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998891, 0.041218, -0.022770,
		-0.037811, 0.413867, -0.909552,
		-0.028067, 0.909404, 0.414966,
		34.467079, 32.767609, 46.984211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972198, 32.536610, 46.289265>,  <34.486725, 32.131027, 46.693737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972198, 32.536610, 46.289265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.902149, 32.738297, 46.627518>,  <34.860119, 32.859306, 46.830471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.902149, 32.738297, 46.627518>,  <34.972198, 32.536610, 46.289265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902149, 32.738297, 46.627518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981742, 0.154212, 0.111359,
		-0.074259, 0.849699, -0.522013,
		-0.175122, 0.504213, 0.845637,
		34.849613, 32.889561, 46.881210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453953, 33.136360, 46.314411>,  <34.972198, 32.536610, 46.289265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453953, 33.136360, 46.314411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342262, 33.090576, 46.695763>,  <35.275246, 33.063107, 46.924572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342262, 33.090576, 46.695763>,  <35.453953, 33.136360, 46.314411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342262, 33.090576, 46.695763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958939, 0.018116, 0.283034,
		-0.049667, 0.993263, 0.104700,
		-0.279230, -0.114458, 0.953378,
		35.258492, 33.056240, 46.981777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874554, 33.674473, 46.574600>,  <35.453953, 33.136360, 46.314411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874554, 33.674473, 46.574600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768200, 33.455566, 46.892040>,  <35.704388, 33.324223, 47.082504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768200, 33.455566, 46.892040>,  <35.874554, 33.674473, 46.574600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768200, 33.455566, 46.892040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963987, -0.155872, 0.215484,
		0.005775, 0.822319, 0.568997,
		-0.265888, -0.547261, 0.793605,
		35.688435, 33.291389, 47.130123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274738, 33.879417, 47.171444>,  <35.874554, 33.674473, 46.574600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274738, 33.879417, 47.171444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165066, 33.513367, 47.289673>,  <36.099262, 33.293736, 47.360611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165066, 33.513367, 47.289673>,  <36.274738, 33.879417, 47.171444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165066, 33.513367, 47.289673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858462, -0.094375, 0.504120,
		-0.433440, 0.391957, 0.811479,
		-0.274177, -0.915130, 0.295575,
		36.082813, 33.238827, 47.378345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394192, 33.865818, 47.918724>,  <36.274738, 33.879417, 47.171444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394192, 33.865818, 47.918724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350990, 33.474686, 47.846962>,  <36.325069, 33.240005, 47.803905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350990, 33.474686, 47.846962>,  <36.394192, 33.865818, 47.918724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350990, 33.474686, 47.846962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808366, -0.191420, 0.556689,
		-0.578688, -0.084902, 0.811117,
		-0.108000, -0.977829, -0.179405,
		36.318592, 33.181335, 47.793140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350677, 33.508060, 48.586880>,  <36.394192, 33.865818, 47.918724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350677, 33.508060, 48.586880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495430, 33.259872, 48.308582>,  <36.582283, 33.110958, 48.141605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495430, 33.259872, 48.308582>,  <36.350677, 33.508060, 48.586880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495430, 33.259872, 48.308582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833369, -0.119145, 0.539722,
		-0.417775, -0.775127, 0.473964,
		0.361883, -0.620470, -0.695743,
		36.603996, 33.073730, 48.099861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661289, 32.919102, 48.892670>,  <36.350677, 33.508060, 48.586880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661289, 32.919102, 48.892670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843460, 32.987915, 48.543274>,  <36.952763, 33.029205, 48.333637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843460, 32.987915, 48.543274>,  <36.661289, 32.919102, 48.892670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843460, 32.987915, 48.543274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887731, -0.161858, 0.430971,
		-0.067239, -0.971702, -0.226437,
		0.455426, 0.172037, -0.873493,
		36.980087, 33.039528, 48.281227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171619, 32.583885, 49.108368>,  <36.661289, 32.919102, 48.892670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171619, 32.583885, 49.108368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278782, 32.764744, 48.768063>,  <37.343079, 32.873260, 48.563881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278782, 32.764744, 48.768063>,  <37.171619, 32.583885, 49.108368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278782, 32.764744, 48.768063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961785, -0.073681, 0.263707,
		0.056549, -0.888896, -0.454606,
		0.267903, 0.452145, -0.850760,
		37.359154, 32.900387, 48.512836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604099, 32.148045, 48.758450>,  <37.171619, 32.583885, 49.108368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604099, 32.148045, 48.758450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684963, 32.516937, 48.626617>,  <37.733482, 32.738274, 48.547520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684963, 32.516937, 48.626617>,  <37.604099, 32.148045, 48.758450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684963, 32.516937, 48.626617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921662, -0.065359, 0.382451,
		0.331167, -0.381074, -0.863198,
		0.202160, 0.922231, -0.329577,
		37.745613, 32.793606, 48.527744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271851, 32.135445, 48.464310>,  <37.604099, 32.148045, 48.758450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271851, 32.135445, 48.464310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240826, 32.529167, 48.527710>,  <38.222210, 32.765400, 48.565750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240826, 32.529167, 48.527710>,  <38.271851, 32.135445, 48.464310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240826, 32.529167, 48.527710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964264, 0.033670, 0.262797,
		0.253337, 0.173217, -0.951744,
		-0.077566, 0.984308, 0.158497,
		38.217556, 32.824459, 48.575260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939091, 32.250813, 48.196980>,  <38.271851, 32.135445, 48.464310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939091, 32.250813, 48.196980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752995, 32.501633, 48.446896>,  <38.641338, 32.652122, 48.596848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752995, 32.501633, 48.446896>,  <38.939091, 32.250813, 48.196980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752995, 32.501633, 48.446896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800050, -0.004162, 0.599919,
		0.378777, 0.778971, -0.499732,
		-0.465240, 0.627046, 0.624792,
		38.613422, 32.689747, 48.634335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666576, 32.835682, 47.640903>,  <38.939091, 32.250813, 48.196980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666576, 32.835682, 47.640903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901745, 33.132408, 47.511871>,  <39.042847, 33.310444, 47.434452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901745, 33.132408, 47.511871>,  <38.666576, 32.835682, 47.640903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901745, 33.132408, 47.511871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293154, -0.567060, -0.769742,
		-0.753931, 0.357980, -0.550853,
		0.587919, 0.741817, -0.322581,
		39.078121, 33.354954, 47.415096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554859, 33.090443, 47.038692>,  <38.666576, 32.835682, 47.640903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554859, 33.090443, 47.038692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949223, 33.135860, 47.087845>,  <39.185841, 33.163113, 47.117336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949223, 33.135860, 47.087845>,  <38.554859, 33.090443, 47.038692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949223, 33.135860, 47.087845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166583, -0.597712, -0.784213,
		-0.015594, 0.793629, -0.608202,
		0.985904, 0.113546, 0.122884,
		39.244995, 33.169926, 47.124710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713711, 32.634731, 46.444645>,  <38.554859, 33.090443, 47.038692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713711, 32.634731, 46.444645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058002, 32.736767, 46.620857>,  <39.264580, 32.797989, 46.726585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058002, 32.736767, 46.620857>,  <38.713711, 32.634731, 46.444645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058002, 32.736767, 46.620857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507285, -0.501956, -0.700501,
		0.042442, 0.826421, -0.561451,
		0.860733, 0.255085, 0.440534,
		39.316223, 32.813293, 46.753017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116337, 32.913353, 46.017559>,  <38.713711, 32.634731, 46.444645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116337, 32.913353, 46.017559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.372177, 32.759502, 46.283787>,  <39.525681, 32.667191, 46.443523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.372177, 32.759502, 46.283787>,  <39.116337, 32.913353, 46.017559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372177, 32.759502, 46.283787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457346, -0.505514, -0.731635,
		0.617858, 0.772346, -0.147419,
		0.639598, -0.384625, 0.665566,
		39.564056, 32.644115, 46.483456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778755, 32.854836, 45.645432>,  <39.116337, 32.913353, 46.017559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778755, 32.854836, 45.645432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.799633, 32.621506, 45.969658>,  <39.812160, 32.481506, 46.164192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.799633, 32.621506, 45.969658>,  <39.778755, 32.854836, 45.645432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799633, 32.621506, 45.969658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634681, -0.607282, -0.477901,
		0.771010, 0.539392, 0.338527,
		0.052194, -0.583323, 0.810562,
		39.815292, 32.446510, 46.212826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678596, 33.520290, 45.907318>,  <39.778755, 32.854836, 45.645432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678596, 33.520290, 45.907318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.393929, 33.736328, 45.727615>,  <39.223129, 33.865952, 45.619793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.393929, 33.736328, 45.727615>,  <39.678596, 33.520290, 45.907318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393929, 33.736328, 45.727615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687864, 0.405783, -0.601816,
		-0.142734, -0.737321, -0.660291,
		-0.711667, 0.540091, -0.449257,
		39.180428, 33.898354, 45.592838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852020, 33.483162, 45.148960>,  <39.678596, 33.520290, 45.907318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852020, 33.483162, 45.148960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626564, 33.812435, 45.176323>,  <39.491291, 34.009998, 45.192741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626564, 33.812435, 45.176323>,  <39.852020, 33.483162, 45.148960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626564, 33.812435, 45.176323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651082, 0.493711, -0.576490,
		-0.508331, -0.280393, -0.814235,
		-0.563641, 0.823182, 0.068410,
		39.457470, 34.059391, 45.196846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405827, 33.698601, 44.526192>,  <39.852020, 33.483162, 45.148960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405827, 33.698601, 44.526192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.535748, 34.013130, 44.736408>,  <39.613701, 34.201847, 44.862537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.535748, 34.013130, 44.736408>,  <39.405827, 33.698601, 44.526192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535748, 34.013130, 44.736408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407726, 0.384969, -0.827984,
		-0.853383, 0.483208, -0.195567,
		0.324801, 0.786326, 0.525543,
		39.633186, 34.249027, 44.894070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036911, 34.047806, 43.938354>,  <39.405827, 33.698601, 44.526192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036911, 34.047806, 43.938354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837021, 34.352238, 44.103775>,  <38.717087, 34.534897, 44.203030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837021, 34.352238, 44.103775>,  <39.036911, 34.047806, 43.938354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837021, 34.352238, 44.103775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640240, 0.646130, -0.415463,
		-0.583412, 0.057158, -0.810163,
		-0.499723, 0.761084, 0.413554,
		38.687103, 34.580563, 44.227840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766727, 34.716446, 43.455486>,  <39.036911, 34.047806, 43.938354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766727, 34.716446, 43.455486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858971, 34.813995, 43.832283>,  <38.914318, 34.872524, 44.058361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858971, 34.813995, 43.832283>,  <38.766727, 34.716446, 43.455486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858971, 34.813995, 43.832283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782591, 0.528815, -0.328491,
		-0.578248, 0.812947, -0.068900,
		0.230610, 0.243870, 0.941991,
		38.928154, 34.887157, 44.114880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835640, 34.572052, 42.832550>,  <38.766727, 34.716446, 43.455486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835640, 34.572052, 42.832550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.186924, 34.761150, 42.803524>,  <39.397694, 34.874611, 42.786106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.186924, 34.761150, 42.803524>,  <38.835640, 34.572052, 42.832550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186924, 34.761150, 42.803524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477229, -0.876190, 0.067407,
		-0.031718, -0.093829, -0.995083,
		0.878206, 0.472745, -0.072569,
		39.450386, 34.902973, 42.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233349, 34.077858, 42.609467>,  <38.835640, 34.572052, 42.832550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233349, 34.077858, 42.609467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532234, 34.316544, 42.726505>,  <39.711563, 34.459755, 42.796730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532234, 34.316544, 42.726505>,  <39.233349, 34.077858, 42.609467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532234, 34.316544, 42.726505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493715, -0.793121, 0.356658,
		0.444887, -0.122038, -0.887233,
		0.747209, 0.596713, 0.292597,
		39.756397, 34.495556, 42.814285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859776, 34.104950, 42.161674>,  <39.233349, 34.077858, 42.609467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859776, 34.104950, 42.161674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954418, 34.134274, 42.549210>,  <40.011204, 34.151867, 42.781731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954418, 34.134274, 42.549210>,  <39.859776, 34.104950, 42.161674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954418, 34.134274, 42.549210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582375, -0.808873, -0.081018,
		0.777725, 0.583395, -0.234079,
		0.236606, 0.073312, 0.968836,
		40.025398, 34.156265, 42.839859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629398, 34.071636, 42.229942>,  <39.859776, 34.104950, 42.161674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629398, 34.071636, 42.229942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399204, 33.918949, 42.519245>,  <40.261086, 33.827339, 42.692829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399204, 33.918949, 42.519245>,  <40.629398, 34.071636, 42.229942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399204, 33.918949, 42.519245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529105, -0.848139, -0.026619,
		0.623587, 0.367362, 0.690061,
		-0.575489, -0.381714, 0.723261,
		40.226559, 33.804436, 42.736225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902538, 34.018566, 42.901741>,  <40.629398, 34.071636, 42.229942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902538, 34.018566, 42.901741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629040, 33.727692, 42.877426>,  <40.464943, 33.553165, 42.862839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629040, 33.727692, 42.877426>,  <40.902538, 34.018566, 42.901741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629040, 33.727692, 42.877426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675115, -0.661995, 0.325549,
		-0.276975, 0.181554, 0.943569,
		-0.683743, -0.727187, -0.060786,
		40.423916, 33.509537, 42.859192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594982, 34.133171, 42.829288>,  <40.902538, 34.018566, 42.901741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594982, 34.133171, 42.829288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.887802, 34.021797, 42.580589>,  <42.063496, 33.954975, 42.431370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.887802, 34.021797, 42.580589>,  <41.594982, 34.133171, 42.829288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887802, 34.021797, 42.580589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157421, 0.818827, -0.552033,
		0.662810, 0.501994, 0.555594,
		0.732053, -0.278431, -0.621751,
		42.107418, 33.938267, 42.394062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299252, 34.569820, 42.855839>,  <41.594982, 34.133171, 42.829288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299252, 34.569820, 42.855839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.126953, 34.467873, 42.509544>,  <42.023575, 34.406704, 42.301769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.126953, 34.467873, 42.509544>,  <42.299252, 34.569820, 42.855839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126953, 34.467873, 42.509544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263481, 0.953014, -0.149472,
		0.863153, 0.163720, -0.477663,
		-0.430748, -0.254873, -0.865735,
		41.997730, 34.391411, 42.249825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595463, 34.810150, 42.119671>,  <42.299252, 34.569820, 42.855839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595463, 34.810150, 42.119671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.199863, 34.754070, 42.100803>,  <41.962505, 34.720421, 42.089481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.199863, 34.754070, 42.100803>,  <42.595463, 34.810150, 42.119671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199863, 34.754070, 42.100803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124996, 0.962607, -0.240342,
		0.079103, -0.231802, -0.969541,
		-0.988999, -0.140201, -0.047171,
		41.903164, 34.712009, 42.086651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237434, 34.888073, 41.894470>,  <42.595463, 34.810150, 42.119671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237434, 34.888073, 41.894470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.950939, 34.663219, 41.729057>,  <42.779041, 34.528305, 41.629810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.950939, 34.663219, 41.729057>,  <43.237434, 34.888073, 41.894470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950939, 34.663219, 41.729057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682015, -0.689385, -0.244139,
		-0.147840, -0.456894, 0.877149,
		-0.716239, -0.562136, -0.413527,
		42.736069, 34.494579, 41.605000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266281, 34.323509, 42.321247>,  <43.237434, 34.888073, 41.894470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266281, 34.323509, 42.321247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.173637, 34.274345, 41.935242>,  <43.118050, 34.244846, 41.703640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.173637, 34.274345, 41.935242>,  <43.266281, 34.323509, 42.321247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173637, 34.274345, 41.935242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832143, -0.538845, -0.131089,
		-0.503880, -0.833390, 0.227081,
		-0.231610, -0.122910, -0.965013,
		43.104153, 34.237473, 41.645737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233288, 33.650429, 42.228344>,  <43.266281, 34.323509, 42.321247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233288, 33.650429, 42.228344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.319450, 33.816391, 41.874744>,  <43.371147, 33.915970, 41.662586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.319450, 33.816391, 41.874744>,  <43.233288, 33.650429, 42.228344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319450, 33.816391, 41.874744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871864, -0.489443, -0.017274,
		-0.439835, -0.767006, -0.467169,
		0.215403, 0.414906, -0.883999,
		43.384071, 33.940861, 41.609543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426796, 33.117355, 41.762981>,  <43.233288, 33.650429, 42.228344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426796, 33.117355, 41.762981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.599636, 33.468498, 41.680370>,  <43.703339, 33.679184, 41.630806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.599636, 33.468498, 41.680370>,  <43.426796, 33.117355, 41.762981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599636, 33.468498, 41.680370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895572, -0.444624, -0.016168,
		-0.106019, -0.177971, -0.978308,
		0.432101, 0.877859, -0.206525,
		43.729267, 33.731857, 41.618412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830845, 33.109032, 41.094017>,  <43.426796, 33.117355, 41.762981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830845, 33.109032, 41.094017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.979370, 33.387035, 41.340298>,  <44.068485, 33.553837, 41.488064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.979370, 33.387035, 41.340298>,  <43.830845, 33.109032, 41.094017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979370, 33.387035, 41.340298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926993, -0.315332, -0.203101,
		0.052992, 0.646164, -0.761357,
		0.371317, 0.695010, 0.615699,
		44.090767, 33.595539, 41.525009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478367, 33.510757, 41.050278>,  <43.830845, 33.109032, 41.094017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478367, 33.510757, 41.050278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.608456, 33.269573, 40.758888>,  <44.686508, 33.124863, 40.584057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.608456, 33.269573, 40.758888>,  <44.478367, 33.510757, 41.050278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608456, 33.269573, 40.758888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536606, -0.516637, 0.667189,
		-0.778643, -0.607886, 0.155530,
		0.325222, -0.602960, -0.728471,
		44.706024, 33.088684, 40.540348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453636, 33.624081, 40.321938>,  <44.478367, 33.510757, 41.050278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453636, 33.624081, 40.321938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.833691, 33.731468, 40.385403>,  <45.061722, 33.795902, 40.423481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.833691, 33.731468, 40.385403>,  <44.453636, 33.624081, 40.321938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833691, 33.731468, 40.385403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066824, 0.672234, -0.737316,
		-0.304605, 0.689945, 0.656651,
		0.950132, 0.268470, 0.158661,
		45.118729, 33.812008, 40.433002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462891, 34.305393, 40.351757>,  <44.453636, 33.624081, 40.321938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462891, 34.305393, 40.351757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.822365, 34.192909, 40.217125>,  <45.038048, 34.125420, 40.136345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.822365, 34.192909, 40.217125>,  <44.462891, 34.305393, 40.351757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822365, 34.192909, 40.217125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111375, 0.595930, -0.795275,
		0.424220, 0.752188, 0.504233,
		0.898684, -0.281213, -0.336581,
		45.091969, 34.108547, 40.116150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373535, 34.725601, 39.754391>,  <44.462891, 34.305393, 40.351757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373535, 34.725601, 39.754391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.720760, 34.528458, 39.778233>,  <44.929096, 34.410172, 39.792538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.720760, 34.528458, 39.778233>,  <44.373535, 34.725601, 39.754391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720760, 34.528458, 39.778233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125609, 0.101884, -0.986834,
		0.480301, 0.864121, 0.150350,
		0.868063, -0.492863, 0.059607,
		44.981178, 34.380600, 39.796116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856239, 35.039463, 39.316032>,  <44.373535, 34.725601, 39.754391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856239, 35.039463, 39.316032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.017811, 34.676014, 39.358448>,  <45.114754, 34.457943, 39.383896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.017811, 34.676014, 39.358448>,  <44.856239, 35.039463, 39.316032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017811, 34.676014, 39.358448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294469, 0.019399, -0.955464,
		0.866101, 0.417163, 0.275397,
		0.403927, -0.908625, 0.106040,
		45.138988, 34.403427, 39.390259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566422, 34.992104, 39.318825>,  <44.856239, 35.039463, 39.316032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566422, 34.992104, 39.318825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.438286, 34.641975, 39.173939>,  <45.361404, 34.431900, 39.087006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.438286, 34.641975, 39.173939>,  <45.566422, 34.992104, 39.318825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438286, 34.641975, 39.173939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582834, 0.119316, -0.803784,
		0.746785, -0.468594, 0.471944,
		-0.320338, -0.875319, -0.362216,
		45.342186, 34.379379, 39.065273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170212, 34.566143, 39.151680>,  <45.566422, 34.992104, 39.318825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170212, 34.566143, 39.151680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.835411, 34.507286, 38.940861>,  <45.634529, 34.471973, 38.814369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.835411, 34.507286, 38.940861>,  <46.170212, 34.566143, 39.151680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835411, 34.507286, 38.940861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476517, 0.277480, -0.834228,
		0.268986, -0.949398, -0.162141,
		-0.837005, -0.147133, -0.527043,
		45.584309, 34.463142, 38.782749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.360424, 34.110760, 38.535431>,  <46.170212, 34.566143, 39.151680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.360424, 34.110760, 38.535431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.147915, 34.448479, 38.563442>,  <46.020409, 34.651112, 38.580250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.147915, 34.448479, 38.563442>,  <46.360424, 34.110760, 38.535431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.147915, 34.448479, 38.563442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713541, 0.490489, -0.500280,
		-0.456735, -0.215817, -0.863027,
		-0.531275, 0.844301, 0.070029,
		45.988533, 34.701767, 38.584450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.644337, 33.612015, 38.073383>,  <46.360424, 34.110760, 38.535431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.644337, 33.612015, 38.073383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.479507, 33.748837, 37.735580>,  <46.380611, 33.830929, 37.532898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.479507, 33.748837, 37.735580>,  <46.644337, 33.612015, 38.073383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479507, 33.748837, 37.735580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692061, -0.485383, -0.534281,
		-0.592663, -0.804613, -0.036710,
		-0.412071, 0.342054, -0.844510,
		46.355885, 33.851452, 37.482227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333988, 33.105831, 37.561115>,  <46.644337, 33.612015, 38.073383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333988, 33.105831, 37.561115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.480927, 33.432728, 37.383495>,  <46.569092, 33.628864, 37.276924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.480927, 33.432728, 37.383495>,  <46.333988, 33.105831, 37.561115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480927, 33.432728, 37.383495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462223, -0.574708, -0.675322,
		-0.807096, 0.042829, -0.588864,
		0.367349, 0.817237, -0.444048,
		46.591129, 33.677898, 37.250282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495052, 32.891449, 36.891472>,  <46.333988, 33.105831, 37.561115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495052, 32.891449, 36.891472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.691723, 33.238976, 36.914833>,  <46.809723, 33.447491, 36.928852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.691723, 33.238976, 36.914833>,  <46.495052, 32.891449, 36.891472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691723, 33.238976, 36.914833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644811, -0.318186, -0.694965,
		-0.585215, 0.379355, -0.716668,
		0.491672, 0.868820, 0.058405,
		46.839226, 33.499622, 36.932354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.613434, 33.207943, 36.158951>,  <46.495052, 32.891449, 36.891472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.613434, 33.207943, 36.158951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.889881, 33.371273, 36.397488>,  <47.055748, 33.469269, 36.540611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.889881, 33.371273, 36.397488>,  <46.613434, 33.207943, 36.158951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889881, 33.371273, 36.397488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692149, -0.136411, -0.708747,
		-0.208049, 0.902588, -0.376895,
		0.691120, 0.408321, 0.596345,
		47.097218, 33.493771, 36.576389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.948460, 33.797817, 35.656059>,  <46.613434, 33.207943, 36.158951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.948460, 33.797817, 35.656059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.119308, 33.597713, 35.957336>,  <47.221817, 33.477650, 36.138103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.119308, 33.597713, 35.957336>,  <46.948460, 33.797817, 35.656059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119308, 33.597713, 35.957336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664096, -0.391755, -0.636793,
		0.613630, 0.772185, 0.164892,
		0.427124, -0.500259, 0.753197,
		47.247444, 33.447636, 36.183296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.415791, 34.218090, 35.740120>,  <46.948460, 33.797817, 35.656059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.415791, 34.218090, 35.740120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.687191, 34.499981, 35.823063>,  <46.850033, 34.669113, 35.872829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.687191, 34.499981, 35.823063>,  <46.415791, 34.218090, 35.740120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687191, 34.499981, 35.823063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666954, -0.472659, -0.575991,
		-0.307903, 0.529112, -0.790719,
		0.678504, 0.704723, 0.207361,
		46.890743, 34.711399, 35.885269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733147, 34.358364, 35.093903>,  <46.415791, 34.218090, 35.740120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733147, 34.358364, 35.093903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.984066, 34.485481, 35.378300>,  <47.134617, 34.561752, 35.548939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.984066, 34.485481, 35.378300>,  <46.733147, 34.358364, 35.093903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984066, 34.485481, 35.378300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777802, -0.301434, -0.551508,
		0.039053, 0.898970, -0.436267,
		0.627295, 0.317791, 0.710992,
		47.172253, 34.580818, 35.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.133698, 34.769516, 34.767506>,  <46.733147, 34.358364, 35.093903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.133698, 34.769516, 34.767506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.298592, 34.579735, 35.078621>,  <47.397530, 34.465866, 35.265289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.298592, 34.579735, 35.078621>,  <47.133698, 34.769516, 34.767506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.298592, 34.579735, 35.078621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772298, -0.270921, -0.574594,
		0.483337, 0.837553, 0.254736,
		0.412239, -0.474454, 0.777786,
		47.422264, 34.437397, 35.311958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.937489, 35.046299, 35.061291>,  <47.133698, 34.769516, 34.767506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.937489, 35.046299, 35.061291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.833515, 34.660065, 35.057705>,  <47.771130, 34.428326, 35.055553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.833515, 34.660065, 35.057705>,  <47.937489, 35.046299, 35.061291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.833515, 34.660065, 35.057705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807899, -0.212382, -0.549721,
		0.528900, -0.150129, 0.835300,
		-0.259932, -0.965585, -0.008960,
		47.755535, 34.370388, 35.055016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.722050, 34.572746, 56.507175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.035099, 34.820316, 56.533829>,  <31.222929, 34.968857, 56.549820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.035099, 34.820316, 56.533829>,  <30.722050, 34.572746, 56.507175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035099, 34.820316, 56.533829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489539, -0.545801, -0.680038,
		-0.384519, 0.564834, -0.730142,
		0.782622, 0.618921, 0.066638,
		31.269886, 35.005993, 56.553822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930359, 34.569309, 55.818100>,  <30.722050, 34.572746, 56.507175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930359, 34.569309, 55.818100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.244204, 34.724407, 56.011612>,  <31.432510, 34.817467, 56.127720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.244204, 34.724407, 56.011612>,  <30.930359, 34.569309, 55.818100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244204, 34.724407, 56.011612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613426, -0.372265, -0.696511,
		-0.089978, 0.843250, -0.529937,
		0.784610, 0.387747, 0.483776,
		31.479588, 34.840733, 56.156746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308714, 34.903931, 55.283379>,  <30.930359, 34.569309, 55.818100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308714, 34.903931, 55.283379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.554461, 34.840790, 55.592606>,  <31.701908, 34.802906, 55.778141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.554461, 34.840790, 55.592606>,  <31.308714, 34.903931, 55.283379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554461, 34.840790, 55.592606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626135, -0.498653, -0.599416,
		0.480110, 0.852308, -0.207522,
		0.614369, -0.157849, 0.773068,
		31.738771, 34.793434, 55.824528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831490, 35.064354, 54.975014>,  <31.308714, 34.903931, 55.283379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831490, 35.064354, 54.975014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.963337, 34.892456, 55.311268>,  <32.042446, 34.789318, 55.513020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.963337, 34.892456, 55.311268>,  <31.831490, 35.064354, 54.975014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963337, 34.892456, 55.311268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801944, -0.342446, -0.489507,
		0.498234, 0.835496, 0.231751,
		0.329619, -0.429740, 0.840640,
		32.062222, 34.763535, 55.563461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530891, 35.291908, 55.032028>,  <31.831490, 35.064354, 54.975014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530891, 35.291908, 55.032028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.510170, 34.942757, 55.226101>,  <32.497738, 34.733265, 55.342545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.510170, 34.942757, 55.226101>,  <32.530891, 35.291908, 55.032028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510170, 34.942757, 55.226101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839661, -0.301080, -0.452018,
		0.540635, 0.383971, 0.748518,
		-0.051802, -0.872879, 0.485180,
		32.494629, 34.680893, 55.371655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236526, 35.134911, 55.330700>,  <32.530891, 35.291908, 55.032028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236526, 35.134911, 55.330700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.050957, 34.782326, 55.295380>,  <32.939613, 34.570774, 55.274189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.050957, 34.782326, 55.295380>,  <33.236526, 35.134911, 55.330700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050957, 34.782326, 55.295380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723332, -0.319374, -0.612202,
		0.511433, -0.347885, 0.785756,
		-0.463926, -0.881463, -0.088299,
		32.911777, 34.517887, 55.268890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747498, 34.720741, 55.283176>,  <33.236526, 35.134911, 55.330700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747498, 34.720741, 55.283176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.456188, 34.502445, 55.117390>,  <33.281403, 34.371468, 55.017918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.456188, 34.502445, 55.117390>,  <33.747498, 34.720741, 55.283176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456188, 34.502445, 55.117390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645975, -0.344815, -0.681043,
		0.228758, -0.763722, 0.603654,
		-0.728276, -0.545740, -0.414467,
		33.237705, 34.338722, 54.993050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951298, 33.990005, 55.147068>,  <33.747498, 34.720741, 55.283176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951298, 33.990005, 55.147068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.671822, 34.083214, 54.876503>,  <33.504135, 34.139137, 54.714165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.671822, 34.083214, 54.876503>,  <33.951298, 33.990005, 55.147068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671822, 34.083214, 54.876503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586548, -0.354775, -0.728077,
		-0.409633, -0.905448, 0.111198,
		-0.698686, 0.233021, -0.676416,
		33.462215, 34.153118, 54.673576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859383, 33.398285, 54.752853>,  <33.951298, 33.990005, 55.147068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859383, 33.398285, 54.752853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.697029, 33.659187, 54.496784>,  <33.599617, 33.815731, 54.343143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.697029, 33.659187, 54.496784>,  <33.859383, 33.398285, 54.752853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697029, 33.659187, 54.496784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399540, -0.503344, -0.766168,
		-0.821966, -0.566747, -0.056306,
		-0.405882, 0.652260, -0.640170,
		33.575264, 33.854866, 54.304733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984474, 33.082886, 54.214497>,  <33.859383, 33.398285, 54.752853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984474, 33.082886, 54.214497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.800465, 33.405319, 54.065578>,  <33.690060, 33.598782, 53.976227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.800465, 33.405319, 54.065578>,  <33.984474, 33.082886, 54.214497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800465, 33.405319, 54.065578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217100, -0.304457, -0.927455,
		-0.860957, -0.507475, -0.034944,
		-0.460022, 0.806086, -0.372298,
		33.662457, 33.647144, 53.953888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294788, 32.941212, 53.740509>,  <33.984474, 33.082886, 54.214497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294788, 32.941212, 53.740509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.488243, 33.271954, 53.625683>,  <33.604317, 33.470398, 53.556786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.488243, 33.271954, 53.625683>,  <33.294788, 32.941212, 53.740509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488243, 33.271954, 53.625683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154080, -0.403281, -0.902011,
		-0.861598, 0.392018, -0.322445,
		0.483641, 0.826853, -0.287064,
		33.633335, 33.520008, 53.539562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997425, 33.057552, 53.188568>,  <33.294788, 32.941212, 53.740509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997425, 33.057552, 53.188568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.335323, 33.269650, 53.159588>,  <33.538063, 33.396908, 53.142200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.335323, 33.269650, 53.159588>,  <32.997425, 33.057552, 53.188568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335323, 33.269650, 53.159588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155493, -0.372714, -0.914826,
		-0.512082, 0.761529, -0.397297,
		0.844745, 0.530243, -0.072448,
		33.588745, 33.428722, 53.137852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956139, 33.431393, 52.528313>,  <32.997425, 33.057552, 53.188568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956139, 33.431393, 52.528313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.347393, 33.428631, 52.611462>,  <33.582146, 33.426975, 52.661350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.347393, 33.428631, 52.611462>,  <32.956139, 33.431393, 52.528313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347393, 33.428631, 52.611462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187916, -0.398983, -0.897497,
		0.089132, 0.916932, -0.388961,
		0.978132, -0.006904, 0.207868,
		33.640831, 33.426559, 52.673820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410347, 33.721474, 51.955605>,  <32.956139, 33.431393, 52.528313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410347, 33.721474, 51.955605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.671898, 33.501583, 52.163544>,  <33.828827, 33.369648, 52.288307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.671898, 33.501583, 52.163544>,  <33.410347, 33.721474, 51.955605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671898, 33.501583, 52.163544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389227, -0.344787, -0.854180,
		0.648803, 0.760870, -0.011480,
		0.653879, -0.549726, 0.519850,
		33.868061, 33.336666, 52.319500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095570, 33.996433, 51.917850>,  <33.410347, 33.721474, 51.955605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095570, 33.996433, 51.917850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.144421, 33.604534, 51.981316>,  <34.173733, 33.369392, 52.019394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.144421, 33.604534, 51.981316>,  <34.095570, 33.996433, 51.917850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144421, 33.604534, 51.981316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244049, -0.125308, -0.961633,
		0.962042, 0.156165, 0.223803,
		0.122129, -0.979750, 0.158663,
		34.181061, 33.310608, 52.028915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594566, 33.834206, 51.497135>,  <34.095570, 33.996433, 51.917850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594566, 33.834206, 51.497135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.479477, 33.457294, 51.565632>,  <34.410423, 33.231148, 51.606731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.479477, 33.457294, 51.565632>,  <34.594566, 33.834206, 51.497135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479477, 33.457294, 51.565632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258824, -0.248655, -0.933371,
		0.922078, -0.224228, 0.315428,
		-0.287721, -0.942280, 0.171244,
		34.393162, 33.174610, 51.617004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001545, 33.467457, 51.114563>,  <34.594566, 33.834206, 51.497135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001545, 33.467457, 51.114563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.714645, 33.197918, 51.185547>,  <34.542507, 33.036194, 51.228138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.714645, 33.197918, 51.185547>,  <35.001545, 33.467457, 51.114563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714645, 33.197918, 51.185547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107146, -0.358297, -0.927439,
		0.688535, -0.646186, 0.329186,
		-0.717244, -0.673845, 0.177464,
		34.499474, 32.995766, 51.238785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254429, 32.759174, 50.946407>,  <35.001545, 33.467457, 51.114563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254429, 32.759174, 50.946407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.855927, 32.745094, 50.914841>,  <34.616825, 32.736645, 50.895901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.855927, 32.745094, 50.914841>,  <35.254429, 32.759174, 50.946407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855927, 32.745094, 50.914841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086372, -0.376972, -0.922189,
		0.002710, -0.925556, 0.378602,
		-0.996259, -0.035200, -0.078921,
		34.557049, 32.734535, 50.891163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021717, 32.126442, 50.513069>,  <35.254429, 32.759174, 50.946407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021717, 32.126442, 50.513069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.664070, 32.305218, 50.524391>,  <34.449482, 32.412483, 50.531185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.664070, 32.305218, 50.524391>,  <35.021717, 32.126442, 50.513069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664070, 32.305218, 50.524391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241464, -0.427891, -0.870979,
		-0.377156, -0.785595, 0.490504,
		-0.894119, 0.446934, 0.028311,
		34.395836, 32.439301, 50.532883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589958, 31.609806, 50.319603>,  <35.021717, 32.126442, 50.513069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589958, 31.609806, 50.319603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.408520, 31.959101, 50.248375>,  <34.299656, 32.168678, 50.205639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.408520, 31.959101, 50.248375>,  <34.589958, 31.609806, 50.319603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408520, 31.959101, 50.248375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208759, -0.298356, -0.931345,
		-0.866414, -0.385278, 0.317629,
		-0.453593, 0.873238, -0.178069,
		34.272442, 32.221073, 50.194954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981155, 31.481321, 49.906837>,  <34.589958, 31.609806, 50.319603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981155, 31.481321, 49.906837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.059044, 31.868139, 49.841221>,  <34.105778, 32.100231, 49.801849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.059044, 31.868139, 49.841221>,  <33.981155, 31.481321, 49.906837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059044, 31.868139, 49.841221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166454, -0.132236, -0.977142,
		-0.966632, 0.217575, 0.135220,
		0.194721, 0.967044, -0.164040,
		34.117458, 32.158253, 49.792007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451889, 31.721043, 49.536644>,  <33.981155, 31.481321, 49.906837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451889, 31.721043, 49.536644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.766918, 31.958788, 49.471573>,  <33.955936, 32.101437, 49.432529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.766918, 31.958788, 49.471573>,  <33.451889, 31.721043, 49.536644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766918, 31.958788, 49.471573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079305, -0.164040, -0.983261,
		-0.611101, 0.787288, -0.082057,
		0.787570, 0.594364, -0.162681,
		34.003189, 32.137096, 49.422768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910458, 31.528969, 49.083694>,  <33.451889, 31.721043, 49.536644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910458, 31.528969, 49.083694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.647362, 31.717018, 48.848286>,  <32.489502, 31.829847, 48.707039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.647362, 31.717018, 48.848286>,  <32.910458, 31.528969, 49.083694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647362, 31.717018, 48.848286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357708, 0.492642, 0.793315,
		0.662887, 0.732316, -0.155865,
		-0.657743, 0.470124, -0.588522,
		32.450039, 31.858055, 48.671730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888870, 32.229748, 49.248852>,  <32.910458, 31.528969, 49.083694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888870, 32.229748, 49.248852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.526657, 32.167011, 49.091167>,  <32.309330, 32.129372, 48.996555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.526657, 32.167011, 49.091167>,  <32.888870, 32.229748, 49.248852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526657, 32.167011, 49.091167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404775, 0.597771, 0.691974,
		0.127121, 0.786175, -0.604788,
		-0.905537, -0.156839, -0.394213,
		32.254997, 32.119961, 48.972904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509781, 32.905651, 49.283485>,  <32.888870, 32.229748, 49.248852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509781, 32.905651, 49.283485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.235149, 32.614849, 49.279953>,  <32.070370, 32.440369, 49.277832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.235149, 32.614849, 49.279953>,  <32.509781, 32.905651, 49.283485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235149, 32.614849, 49.279953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519111, 0.481669, 0.706059,
		-0.509052, 0.489350, -0.708098,
		-0.686579, -0.727002, -0.008832,
		32.029175, 32.396748, 49.277302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825094, 33.257145, 49.204449>,  <32.509781, 32.905651, 49.283485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825094, 33.257145, 49.204449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.758993, 32.895630, 49.362366>,  <31.719334, 32.678722, 49.457115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.758993, 32.895630, 49.362366>,  <31.825094, 33.257145, 49.204449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758993, 32.895630, 49.362366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510227, 0.420906, 0.750004,
		-0.844015, -0.077494, -0.530692,
		-0.165251, -0.903788, 0.394790,
		31.709417, 32.624493, 49.480804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035454, 33.230511, 49.412247>,  <31.825094, 33.257145, 49.204449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035454, 33.230511, 49.412247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.228380, 32.935616, 49.601498>,  <31.344135, 32.758678, 49.715050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.228380, 32.935616, 49.601498>,  <31.035454, 33.230511, 49.412247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228380, 32.935616, 49.601498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571380, 0.144627, 0.807841,
		-0.663999, -0.659970, -0.351488,
		0.482317, -0.737239, 0.473126,
		31.373075, 32.714443, 49.743435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498131, 32.793388, 49.741562>,  <31.035454, 33.230511, 49.412247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498131, 32.793388, 49.741562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.832050, 32.705479, 49.943478>,  <31.032402, 32.652733, 50.064625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.832050, 32.705479, 49.943478>,  <30.498131, 32.793388, 49.741562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832050, 32.705479, 49.943478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501551, 0.074552, 0.861910,
		-0.227056, -0.972699, -0.047991,
		0.834801, -0.219771, 0.504785,
		31.082491, 32.639545, 50.094913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311295, 32.225361, 50.244007>,  <30.498131, 32.793388, 49.741562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311295, 32.225361, 50.244007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.649330, 32.377018, 50.394775>,  <30.852152, 32.468014, 50.485237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.649330, 32.377018, 50.394775>,  <30.311295, 32.225361, 50.244007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649330, 32.377018, 50.394775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434090, 0.075087, 0.897735,
		0.312071, -0.922285, 0.228039,
		0.845091, 0.379146, 0.376922,
		30.902857, 32.490761, 50.507851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367294, 31.868053, 50.841507>,  <30.311295, 32.225361, 50.244007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367294, 31.868053, 50.841507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.586174, 32.200653, 50.879837>,  <30.717503, 32.400211, 50.902836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.586174, 32.200653, 50.879837>,  <30.367294, 31.868053, 50.841507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586174, 32.200653, 50.879837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414048, 0.169414, 0.894351,
		0.727417, -0.529065, 0.436984,
		0.547200, 0.831498, 0.095823,
		30.750334, 32.450104, 50.908585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696604, 31.837402, 51.504730>,  <30.367294, 31.868053, 50.841507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696604, 31.837402, 51.504730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.747383, 32.222054, 51.407444>,  <30.777851, 32.452847, 51.349072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.747383, 32.222054, 51.407444>,  <30.696604, 31.837402, 51.504730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747383, 32.222054, 51.407444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191831, 0.264368, 0.945151,
		0.973183, -0.073331, 0.218032,
		0.126949, 0.961630, -0.243212,
		30.785467, 32.510544, 51.334480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103115, 32.100758, 51.978622>,  <30.696604, 31.837402, 51.504730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103115, 32.100758, 51.978622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.923203, 32.434715, 51.851719>,  <30.815256, 32.635090, 51.775578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.923203, 32.434715, 51.851719>,  <31.103115, 32.100758, 51.978622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923203, 32.434715, 51.851719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263204, 0.215536, 0.940355,
		0.853476, 0.506456, 0.122803,
		-0.449780, 0.834893, -0.317256,
		30.788269, 32.685184, 51.756542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211330, 32.595016, 52.553902>,  <31.103115, 32.100758, 51.978622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211330, 32.595016, 52.553902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.937700, 32.794067, 52.340584>,  <30.773521, 32.913498, 52.212593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.937700, 32.794067, 52.340584>,  <31.211330, 32.595016, 52.553902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937700, 32.794067, 52.340584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490587, 0.227167, 0.841261,
		0.539783, 0.837115, 0.088731,
		-0.684075, 0.497629, -0.533298,
		30.732477, 32.943356, 52.180595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147047, 33.346485, 52.808102>,  <31.211330, 32.595016, 52.553902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147047, 33.346485, 52.808102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.801537, 33.258438, 52.626801>,  <30.594231, 33.205608, 52.518021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.801537, 33.258438, 52.626801>,  <31.147047, 33.346485, 52.808102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801537, 33.258438, 52.626801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501716, 0.292447, 0.814098,
		-0.046647, 0.930602, -0.363047,
		-0.863774, -0.220121, -0.453256,
		30.542404, 33.192402, 52.490822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687946, 33.955566, 52.766624>,  <31.147047, 33.346485, 52.808102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687946, 33.955566, 52.766624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.450323, 33.636078, 52.728378>,  <30.307749, 33.444386, 52.705429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.450323, 33.636078, 52.728378>,  <30.687946, 33.955566, 52.766624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450323, 33.636078, 52.728378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569462, 0.333608, 0.751277,
		-0.568160, 0.500754, -0.653023,
		-0.594059, -0.798718, -0.095618,
		30.272106, 33.396461, 52.699692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028635, 34.305260, 52.560989>,  <30.687946, 33.955566, 52.766624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028635, 34.305260, 52.560989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.988729, 33.926262, 52.682514>,  <29.964787, 33.698864, 52.755428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.988729, 33.926262, 52.682514>,  <30.028635, 34.305260, 52.560989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988729, 33.926262, 52.682514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476881, 0.313515, 0.821153,
		-0.873287, -0.062961, -0.483120,
		-0.099765, -0.947493, 0.303814,
		29.958799, 33.642014, 52.773659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325048, 34.292255, 52.888847>,  <30.028635, 34.305260, 52.560989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325048, 34.292255, 52.888847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.540762, 33.985874, 53.028839>,  <29.670191, 33.802044, 53.112835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.540762, 33.985874, 53.028839>,  <29.325048, 34.292255, 52.888847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540762, 33.985874, 53.028839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222972, 0.270888, 0.936431,
		-0.812069, -0.583038, -0.024701,
		0.539284, -0.765954, 0.349981,
		29.702547, 33.756088, 53.133835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003834, 34.023670, 53.446121>,  <29.325048, 34.292255, 52.888847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003834, 34.023670, 53.446121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.364635, 33.867081, 53.518936>,  <29.581118, 33.773129, 53.562626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.364635, 33.867081, 53.518936>,  <29.003834, 34.023670, 53.446121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364635, 33.867081, 53.518936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024474, 0.374600, 0.926864,
		-0.431029, -0.840492, 0.328311,
		0.902006, -0.391470, 0.182033,
		29.635237, 33.749641, 53.573547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899693, 33.628017, 54.040951>,  <29.003834, 34.023670, 53.446121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899693, 33.628017, 54.040951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.290354, 33.710266, 54.016060>,  <29.524750, 33.759613, 54.001125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.290354, 33.710266, 54.016060>,  <28.899693, 33.628017, 54.040951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290354, 33.710266, 54.016060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065365, 0.560363, 0.825664,
		0.204642, -0.802319, 0.560720,
		0.976652, 0.205617, -0.062230,
		29.583349, 33.771950, 53.997391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114634, 33.587502, 54.703793>,  <28.899693, 33.628017, 54.040951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114634, 33.587502, 54.703793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.402203, 33.792801, 54.516293>,  <29.574745, 33.915981, 54.403793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.402203, 33.792801, 54.516293>,  <29.114634, 33.587502, 54.703793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402203, 33.792801, 54.516293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052287, 0.712397, 0.699826,
		0.693118, -0.478614, 0.538996,
		0.718926, 0.513244, -0.468750,
		29.617880, 33.946774, 54.375668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.751623, 33.651291, 55.178768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762508, 33.954369, 54.917950>,  <29.769039, 34.136215, 54.761459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762508, 33.954369, 54.917950>,  <29.751623, 33.651291, 55.178768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762508, 33.954369, 54.917950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050538, 0.652498, 0.756104,
		0.998351, 0.012377, 0.056049,
		0.027214, 0.757690, -0.652047,
		29.770672, 34.181675, 54.722336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117609, 34.223171, 55.505318>,  <29.751623, 33.651291, 55.178768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117609, 34.223171, 55.505318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928183, 34.407085, 55.204830>,  <29.814528, 34.517433, 55.024536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928183, 34.407085, 55.204830>,  <30.117609, 34.223171, 55.505318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928183, 34.407085, 55.204830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189022, 0.779992, 0.596559,
		0.860237, 0.424506, -0.282466,
		-0.473564, 0.459789, -0.751219,
		29.786114, 34.545021, 54.979465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333906, 34.986835, 55.445126>,  <30.117609, 34.223171, 55.505318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333906, 34.986835, 55.445126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969923, 34.983685, 55.279274>,  <29.751534, 34.981792, 55.179764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969923, 34.983685, 55.279274>,  <30.333906, 34.986835, 55.445126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969923, 34.983685, 55.279274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309496, 0.678385, 0.666338,
		0.276026, 0.734664, -0.619740,
		-0.909957, -0.007880, -0.414627,
		29.696936, 34.981319, 55.154884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036032, 35.706142, 55.458027>,  <30.333906, 34.986835, 55.445126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036032, 35.706142, 55.458027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714489, 35.474033, 55.405716>,  <29.521564, 35.334770, 55.374329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714489, 35.474033, 55.405716>,  <30.036032, 35.706142, 55.458027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714489, 35.474033, 55.405716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539663, 0.618999, 0.570617,
		-0.250159, 0.529271, -0.810736,
		-0.803856, -0.580269, -0.130780,
		29.473331, 35.299953, 55.366482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497812, 36.218266, 55.430332>,  <30.036032, 35.706142, 55.458027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497812, 36.218266, 55.430332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317915, 35.870380, 55.511654>,  <29.209976, 35.661648, 55.560448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317915, 35.870380, 55.511654>,  <29.497812, 36.218266, 55.430332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317915, 35.870380, 55.511654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603272, 0.463654, 0.648913,
		-0.658632, 0.169193, -0.733197,
		-0.449741, -0.869712, 0.203308,
		29.182993, 35.609467, 55.572647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895815, 36.457119, 55.666462>,  <29.497812, 36.218266, 55.430332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895815, 36.457119, 55.666462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864347, 36.077473, 55.788441>,  <28.845467, 35.849686, 55.861629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864347, 36.077473, 55.788441>,  <28.895815, 36.457119, 55.666462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864347, 36.077473, 55.788441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542279, 0.297421, 0.785795,
		-0.836507, -0.103550, -0.538082,
		-0.078668, -0.949115, 0.304947,
		28.840748, 35.792740, 55.879925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245560, 36.308453, 55.859478>,  <28.895815, 36.457119, 55.666462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245560, 36.308453, 55.859478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444155, 36.007927, 56.033386>,  <28.563313, 35.827610, 56.137730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444155, 36.007927, 56.033386>,  <28.245560, 36.308453, 55.859478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444155, 36.007927, 56.033386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523125, 0.140720, 0.840558,
		-0.692704, -0.644769, -0.323165,
		0.496490, -0.751313, 0.434772,
		28.593102, 35.782532, 56.163818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726561, 35.827847, 56.115242>,  <28.245560, 36.308453, 55.859478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726561, 35.827847, 56.115242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080757, 35.781040, 56.295113>,  <28.293276, 35.752956, 56.403034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080757, 35.781040, 56.295113>,  <27.726561, 35.827847, 56.115242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080757, 35.781040, 56.295113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420026, 0.212261, 0.882340,
		-0.198700, -0.970181, 0.138804,
		0.885492, -0.117020, 0.449677,
		28.346405, 35.745934, 56.430016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644653, 35.314907, 56.606281>,  <27.726561, 35.827847, 56.115242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644653, 35.314907, 56.606281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953808, 35.519337, 56.756725>,  <28.139301, 35.641994, 56.846992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953808, 35.519337, 56.756725>,  <27.644653, 35.314907, 56.606281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953808, 35.519337, 56.756725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521526, 0.173979, 0.835310,
		0.361469, -0.841747, 0.401003,
		0.772885, 0.511071, 0.376105,
		28.185673, 35.672657, 56.869556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729338, 35.006004, 57.251266>,  <27.644653, 35.314907, 56.606281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729338, 35.006004, 57.251266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911505, 35.362114, 57.251484>,  <28.020805, 35.575779, 57.251614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911505, 35.362114, 57.251484>,  <27.729338, 35.006004, 57.251266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911505, 35.362114, 57.251484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533431, 0.272386, 0.800786,
		0.712775, -0.364979, 0.598951,
		0.455416, 0.890279, 0.000541,
		28.048130, 35.629196, 57.251648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899420, 35.032619, 57.896866>,  <27.729338, 35.006004, 57.251266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899420, 35.032619, 57.896866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910091, 35.415661, 57.782127>,  <27.916494, 35.645485, 57.713284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910091, 35.415661, 57.782127>,  <27.899420, 35.032619, 57.896866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910091, 35.415661, 57.782127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501897, 0.260992, 0.824610,
		0.864516, 0.121968, 0.487583,
		0.026679, 0.957605, -0.286847,
		27.918095, 35.702942, 57.696072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823984, 35.457146, 58.446045>,  <27.899420, 35.032619, 57.896866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823984, 35.457146, 58.446045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766291, 35.752045, 58.182026>,  <27.731674, 35.928986, 58.023617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766291, 35.752045, 58.182026>,  <27.823984, 35.457146, 58.446045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766291, 35.752045, 58.182026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529802, 0.505829, 0.680769,
		0.835766, 0.447885, 0.317638,
		-0.144236, 0.737249, -0.660046,
		27.723021, 35.973221, 57.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991285, 36.081795, 58.867592>,  <27.823984, 35.457146, 58.446045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991285, 36.081795, 58.867592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790323, 36.210278, 58.546490>,  <27.669746, 36.287369, 58.353828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790323, 36.210278, 58.546490>,  <27.991285, 36.081795, 58.867592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790323, 36.210278, 58.546490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420307, 0.720627, 0.551397,
		0.755599, 0.614428, -0.227041,
		-0.502406, 0.321208, -0.802754,
		27.639601, 36.306641, 58.305664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861427, 36.808578, 58.943066>,  <27.991285, 36.081795, 58.867592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861427, 36.808578, 58.943066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568375, 36.680840, 58.702644>,  <27.392542, 36.604195, 58.558392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568375, 36.680840, 58.702644>,  <27.861427, 36.808578, 58.943066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568375, 36.680840, 58.702644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659893, 0.549574, 0.512357,
		0.166701, 0.771999, -0.613374,
		-0.732634, -0.319351, -0.601052,
		27.348585, 36.585033, 58.522327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534040, 37.390484, 58.765190>,  <27.861427, 36.808578, 58.943066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534040, 37.390484, 58.765190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264748, 37.102169, 58.699196>,  <27.103172, 36.929180, 58.659599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264748, 37.102169, 58.699196>,  <27.534040, 37.390484, 58.765190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264748, 37.102169, 58.699196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661253, 0.487016, 0.570578,
		-0.330915, 0.493231, -0.804499,
		-0.673231, -0.720790, -0.164990,
		27.062778, 36.885933, 58.649700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834347, 37.724064, 58.742741>,  <27.534040, 37.390484, 58.765190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834347, 37.724064, 58.742741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732834, 37.342113, 58.804462>,  <26.671926, 37.112946, 58.841496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732834, 37.342113, 58.804462>,  <26.834347, 37.724064, 58.742741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732834, 37.342113, 58.804462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838340, 0.296715, 0.457325,
		-0.482474, -0.013303, -0.875809,
		-0.253782, -0.954873, 0.154309,
		26.656700, 37.055653, 58.850754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173147, 37.700428, 58.666924>,  <26.834347, 37.724064, 58.742741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173147, 37.700428, 58.666924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256891, 37.389606, 58.904362>,  <26.307138, 37.203114, 59.046825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256891, 37.389606, 58.904362>,  <26.173147, 37.700428, 58.666924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256891, 37.389606, 58.904362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642772, 0.348102, 0.682399,
		-0.736893, -0.524413, -0.426591,
		0.209362, -0.777056, 0.593592,
		26.319700, 37.156490, 59.082439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529802, 37.679207, 58.988346>,  <26.173147, 37.700428, 58.666924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529802, 37.679207, 58.988346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790611, 37.457775, 59.195580>,  <25.947098, 37.324917, 59.319920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790611, 37.457775, 59.195580>,  <25.529802, 37.679207, 58.988346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790611, 37.457775, 59.195580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507228, 0.189403, 0.840741,
		-0.563546, -0.810970, -0.157298,
		0.652024, -0.553582, 0.518084,
		25.986219, 37.291702, 59.351006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148380, 37.238300, 59.417725>,  <25.529802, 37.679207, 58.988346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148380, 37.238300, 59.417725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500925, 37.225449, 59.606262>,  <25.712452, 37.217735, 59.719387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500925, 37.225449, 59.606262>,  <25.148380, 37.238300, 59.417725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500925, 37.225449, 59.606262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452740, 0.227652, 0.862091,
		-0.135006, -0.973212, 0.186095,
		0.881362, -0.032134, 0.471347,
		25.765333, 37.215809, 59.747665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.028183, 36.786705, 60.087925>,  <25.148380, 37.238300, 59.417725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.028183, 36.786705, 60.087925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361025, 36.991814, 60.172462>,  <25.560730, 37.114880, 60.223183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361025, 36.991814, 60.172462>,  <25.028183, 36.786705, 60.087925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361025, 36.991814, 60.172462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317179, 0.127375, 0.939773,
		0.454971, -0.849022, 0.268631,
		0.832105, 0.512774, 0.211340,
		25.610657, 37.145645, 60.235863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314281, 36.471687, 60.751289>,  <25.028183, 36.786705, 60.087925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314281, 36.471687, 60.751289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494997, 36.826572, 60.713890>,  <25.603426, 37.039505, 60.691452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494997, 36.826572, 60.713890>,  <25.314281, 36.471687, 60.751289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494997, 36.826572, 60.713890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238648, 0.221177, 0.945583,
		0.859612, -0.404891, 0.311657,
		0.451789, 0.887212, -0.093500,
		25.630533, 37.092735, 60.685841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692236, 36.666233, 61.404106>,  <25.314281, 36.471687, 60.751289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692236, 36.666233, 61.404106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625492, 37.020153, 61.230080>,  <25.585445, 37.232506, 61.125664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625492, 37.020153, 61.230080>,  <25.692236, 36.666233, 61.404106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625492, 37.020153, 61.230080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193689, 0.403236, 0.894363,
		0.966769, 0.233499, 0.104093,
		-0.166859, 0.884804, -0.435062,
		25.575434, 37.285595, 61.099560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019978, 37.196541, 61.886101>,  <25.692236, 36.666233, 61.404106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019978, 37.196541, 61.886101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776630, 37.412560, 61.653469>,  <25.630623, 37.542171, 61.513889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776630, 37.412560, 61.653469>,  <26.019978, 37.196541, 61.886101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776630, 37.412560, 61.653469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221001, 0.588531, 0.777683,
		0.762266, 0.601646, -0.238690,
		-0.608366, 0.540050, -0.581581,
		25.594120, 37.574574, 61.478996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597984, 37.520348, 62.093262>,  <26.019978, 37.196541, 61.886101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597984, 37.520348, 62.093262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666964, 37.905224, 62.177601>,  <26.708351, 38.136150, 62.228207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666964, 37.905224, 62.177601>,  <26.597984, 37.520348, 62.093262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666964, 37.905224, 62.177601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848250, -0.036246, -0.528355,
		-0.500733, 0.269969, -0.822425,
		0.172449, 0.962187, 0.210851,
		26.718699, 38.193878, 62.240856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729454, 37.941105, 61.496765>,  <26.597984, 37.520348, 62.093262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729454, 37.941105, 61.496765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921865, 38.071728, 61.822212>,  <27.037312, 38.150101, 62.017479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921865, 38.071728, 61.822212>,  <26.729454, 37.941105, 61.496765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921865, 38.071728, 61.822212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869863, -0.062060, -0.489374,
		-0.109315, 0.943138, -0.313911,
		0.481028, 0.326555, 0.813618,
		27.066174, 38.169693, 62.066296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013544, 38.535751, 61.348236>,  <26.729454, 37.941105, 61.496765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013544, 38.535751, 61.348236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234358, 38.413631, 61.658604>,  <27.366846, 38.340359, 61.844822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234358, 38.413631, 61.658604>,  <27.013544, 38.535751, 61.348236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234358, 38.413631, 61.658604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799144, -0.071846, -0.596831,
		0.237961, 0.949541, 0.204320,
		0.552036, -0.305303, 0.775916,
		27.399969, 38.322041, 61.891380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606255, 39.010075, 61.390244>,  <27.013544, 38.535751, 61.348236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606255, 39.010075, 61.390244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724321, 38.673862, 61.571964>,  <27.795162, 38.472137, 61.680996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724321, 38.673862, 61.571964>,  <27.606255, 39.010075, 61.390244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724321, 38.673862, 61.571964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861988, 0.029168, -0.506088,
		0.412131, 0.540982, 0.733135,
		0.295169, -0.840528, 0.454299,
		27.812872, 38.421703, 61.708256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307278, 39.109386, 61.660389>,  <27.606255, 39.010075, 61.390244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307278, 39.109386, 61.660389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257824, 38.713676, 61.629295>,  <28.228151, 38.476250, 61.610641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257824, 38.713676, 61.629295>,  <28.307278, 39.109386, 61.660389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257824, 38.713676, 61.629295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845444, -0.063996, -0.530217,
		0.519558, -0.131269, 0.844292,
		-0.123632, -0.989279, -0.077731,
		28.220734, 38.416893, 61.605976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956678, 38.768047, 61.714893>,  <28.307278, 39.109386, 61.660389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956678, 38.768047, 61.714893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742849, 38.502861, 61.505245>,  <28.614552, 38.343750, 61.379456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742849, 38.502861, 61.505245>,  <28.956678, 38.768047, 61.714893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742849, 38.502861, 61.505245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815789, -0.242829, -0.524902,
		0.220722, -0.708171, 0.670653,
		-0.534574, -0.662969, -0.524120,
		28.582478, 38.303970, 61.348007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477621, 38.524494, 61.297306>,  <28.956678, 38.768047, 61.714893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477621, 38.524494, 61.297306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150759, 38.339012, 61.160347>,  <28.954641, 38.227722, 61.078171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150759, 38.339012, 61.160347>,  <29.477621, 38.524494, 61.297306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150759, 38.339012, 61.160347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475516, -0.206553, -0.855115,
		0.325795, -0.861578, 0.389283,
		-0.817155, -0.463702, -0.342400,
		28.905613, 38.199902, 61.057629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715088, 37.933392, 61.051731>,  <29.477621, 38.524494, 61.297306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715088, 37.933392, 61.051731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388706, 38.012833, 60.834557>,  <29.192877, 38.060497, 60.704250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388706, 38.012833, 60.834557>,  <29.715088, 37.933392, 61.051731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388706, 38.012833, 60.834557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509923, -0.195266, -0.837765,
		-0.272400, -0.960431, 0.058055,
		-0.815951, 0.198604, -0.542936,
		29.143921, 38.072414, 60.671677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507317, 37.298199, 60.759712>,  <29.715088, 37.933392, 61.051731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507317, 37.298199, 60.759712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349655, 37.585171, 60.529949>,  <29.255058, 37.757355, 60.392094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349655, 37.585171, 60.529949>,  <29.507317, 37.298199, 60.759712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349655, 37.585171, 60.529949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526085, -0.336345, -0.781093,
		-0.753577, -0.610055, -0.244857,
		-0.394153, 0.717429, -0.574403,
		29.231409, 37.800400, 60.357628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237562, 36.846836, 60.214565>,  <29.507317, 37.298199, 60.759712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237562, 36.846836, 60.214565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256954, 37.223564, 60.081524>,  <29.268589, 37.449600, 60.001698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256954, 37.223564, 60.081524>,  <29.237562, 36.846836, 60.214565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256954, 37.223564, 60.081524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487827, -0.312905, -0.814933,
		-0.871593, -0.122745, -0.474615,
		0.048480, 0.941820, -0.332604,
		29.271498, 37.506111, 59.981743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990120, 36.790688, 59.628155>,  <29.237562, 36.846836, 60.214565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990120, 36.790688, 59.628155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194380, 37.131374, 59.581127>,  <29.316936, 37.335785, 59.552910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194380, 37.131374, 59.581127>,  <28.990120, 36.790688, 59.628155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194380, 37.131374, 59.581127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446412, -0.379509, -0.810364,
		-0.734814, 0.361330, -0.574011,
		0.510651, 0.851712, -0.117566,
		29.347574, 37.386887, 59.545856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960590, 36.950428, 58.807632>,  <28.990120, 36.790688, 59.628155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960590, 36.950428, 58.807632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262318, 37.161304, 58.964130>,  <29.443354, 37.287830, 59.058029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262318, 37.161304, 58.964130>,  <28.960590, 36.950428, 58.807632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262318, 37.161304, 58.964130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596303, -0.300875, -0.744242,
		-0.274645, 0.794694, -0.541323,
		0.754316, 0.527196, 0.391245,
		29.488613, 37.319462, 59.081505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175013, 37.252350, 58.277981>,  <28.960590, 36.950428, 58.807632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175013, 37.252350, 58.277981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480072, 37.278770, 58.535351>,  <29.663109, 37.294624, 58.689774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480072, 37.278770, 58.535351>,  <29.175013, 37.252350, 58.277981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480072, 37.278770, 58.535351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635912, -0.258413, -0.727213,
		0.118238, 0.963774, -0.239081,
		0.762651, 0.066050, 0.643429,
		29.708868, 37.298584, 58.728378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663837, 37.591694, 57.917282>,  <29.175013, 37.252350, 58.277981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663837, 37.591694, 57.917282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868883, 37.404915, 58.205502>,  <29.991911, 37.292847, 58.378433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868883, 37.404915, 58.205502>,  <29.663837, 37.591694, 57.917282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868883, 37.404915, 58.205502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626802, -0.370026, -0.685712,
		0.586811, 0.803146, 0.103002,
		0.512613, -0.466945, 0.720549,
		30.022667, 37.264832, 58.421665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365240, 37.610531, 57.693092>,  <29.663837, 37.591694, 57.917282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365240, 37.610531, 57.693092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357410, 37.326263, 57.974396>,  <30.352713, 37.155704, 58.143177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357410, 37.326263, 57.974396>,  <30.365240, 37.610531, 57.693092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357410, 37.326263, 57.974396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576947, -0.582493, -0.572568,
		0.816547, 0.394535, 0.421419,
		-0.019576, -0.710665, 0.703258,
		30.351538, 37.113064, 58.185371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978092, 37.380299, 57.759426>,  <30.365240, 37.610531, 57.693092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978092, 37.380299, 57.759426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781227, 37.066570, 57.910480>,  <30.663107, 36.878334, 58.001114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781227, 37.066570, 57.910480>,  <30.978092, 37.380299, 57.759426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781227, 37.066570, 57.910480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492445, -0.608582, -0.622194,
		0.717825, -0.120258, 0.685759,
		-0.492165, -0.784325, 0.377635,
		30.633577, 36.831272, 58.023769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438732, 36.878265, 57.999142>,  <30.978092, 37.380299, 57.759426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438732, 36.878265, 57.999142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098425, 36.680969, 57.926579>,  <30.894241, 36.562592, 57.883041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098425, 36.680969, 57.926579>,  <31.438732, 36.878265, 57.999142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098425, 36.680969, 57.926579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514988, -0.713615, -0.474911,
		0.104787, -0.497464, 0.861133,
		-0.850769, -0.493237, -0.181410,
		30.843195, 36.532997, 57.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602760, 36.148342, 58.062561>,  <31.438732, 36.878265, 57.999142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602760, 36.148342, 58.062561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259365, 36.140656, 57.857571>,  <31.053328, 36.136044, 57.734577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259365, 36.140656, 57.857571>,  <31.602760, 36.148342, 58.062561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259365, 36.140656, 57.857571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358402, -0.737238, -0.572737,
		-0.366810, -0.675359, 0.639796,
		-0.858486, -0.019219, -0.512476,
		31.001820, 36.134892, 57.703827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413704, 35.499302, 58.031410>,  <31.602760, 36.148342, 58.062561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413704, 35.499302, 58.031410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207699, 35.650204, 57.723530>,  <31.084095, 35.740746, 57.538803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207699, 35.650204, 57.723530>,  <31.413704, 35.499302, 58.031410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207699, 35.650204, 57.723530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319055, -0.749054, -0.580623,
		-0.795591, -0.544604, 0.265406,
		-0.515013, 0.377259, -0.769699,
		31.053194, 35.763382, 57.492619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164652, 34.971657, 57.730946>,  <31.413704, 35.499302, 58.031410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164652, 34.971657, 57.730946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129831, 35.242920, 57.439049>,  <31.108938, 35.405678, 57.263908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129831, 35.242920, 57.439049>,  <31.164652, 34.971657, 57.730946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129831, 35.242920, 57.439049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302340, -0.679990, -0.667985,
		-0.949217, -0.278780, -0.145839,
		-0.087051, 0.678156, -0.729745,
		31.103716, 35.446365, 57.220127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829643, 34.706390, 57.277397>,  <31.164652, 34.971657, 57.730946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829643, 34.706390, 57.277397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005409, 35.003242, 57.074951>,  <31.110868, 35.181355, 56.953484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005409, 35.003242, 57.074951>,  <30.829643, 34.706390, 57.277397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005409, 35.003242, 57.074951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398174, -0.665968, -0.630828,
		-0.805214, 0.075674, -0.588136,
		0.439417, 0.742132, -0.506116,
		31.137234, 35.225883, 56.923115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.682709, 33.863155, 52.639755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.920208, 34.170643, 52.544647>,  <47.062706, 34.355137, 52.487583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.920208, 34.170643, 52.544647>,  <46.682709, 33.863155, 52.639755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920208, 34.170643, 52.544647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798833, 0.527653, -0.288873,
		-0.096601, 0.361458, 0.927371,
		0.593745, 0.768720, -0.237773,
		47.098331, 34.401260, 52.473316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.758526, 34.522957, 53.096241>,  <46.682709, 33.863155, 52.639755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.758526, 34.522957, 53.096241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.841751, 34.626297, 52.718891>,  <46.891685, 34.688301, 52.492481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.841751, 34.626297, 52.718891>,  <46.758526, 34.522957, 53.096241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841751, 34.626297, 52.718891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837442, 0.545382, -0.035344,
		0.505370, 0.797379, 0.329831,
		0.208066, 0.258352, -0.943378,
		46.904171, 34.703804, 52.435879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816517, 35.350697, 53.024776>,  <46.758526, 34.522957, 53.096241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816517, 35.350697, 53.024776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.700928, 35.175205, 52.684422>,  <46.631573, 35.069912, 52.480209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.700928, 35.175205, 52.684422>,  <46.816517, 35.350697, 53.024776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700928, 35.175205, 52.684422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890236, 0.450043, 0.070293,
		0.352096, 0.777804, -0.520624,
		-0.288977, -0.438728, -0.850888,
		46.614235, 35.043587, 52.429153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423519, 35.800900, 52.750072>,  <46.816517, 35.350697, 53.024776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423519, 35.800900, 52.750072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.343647, 35.525009, 52.471676>,  <46.295723, 35.359474, 52.304638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.343647, 35.525009, 52.471676>,  <46.423519, 35.800900, 52.750072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343647, 35.525009, 52.471676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853878, 0.470902, -0.221681,
		0.480643, 0.550027, -0.682974,
		-0.199683, -0.689726, -0.695992,
		46.283741, 35.318092, 52.262878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243080, 36.210346, 52.202084>,  <46.423519, 35.800900, 52.750072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243080, 36.210346, 52.202084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.112320, 35.841946, 52.117332>,  <46.033863, 35.620903, 52.066483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.112320, 35.841946, 52.117332>,  <46.243080, 36.210346, 52.202084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112320, 35.841946, 52.117332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813712, 0.388318, -0.432531,
		0.480637, 0.031012, -0.876371,
		-0.326897, -0.921003, -0.211875,
		46.014252, 35.565643, 52.053772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929863, 36.281490, 51.535812>,  <46.243080, 36.210346, 52.202084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929863, 36.281490, 51.535812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.793140, 35.944481, 51.702339>,  <45.711105, 35.742275, 51.802258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.793140, 35.944481, 51.702339>,  <45.929863, 36.281490, 51.535812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793140, 35.944481, 51.702339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922680, 0.216762, -0.318867,
		0.178411, -0.493122, -0.851470,
		-0.341807, -0.842523, 0.416321,
		45.690598, 35.691723, 51.827236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409840, 36.143066, 51.046951>,  <45.929863, 36.281490, 51.535812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409840, 36.143066, 51.046951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.326012, 35.913155, 51.363358>,  <45.275715, 35.775208, 51.553204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.326012, 35.913155, 51.363358>,  <45.409840, 36.143066, 51.046951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326012, 35.913155, 51.363358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976305, 0.167619, -0.136867,
		-0.053922, -0.800960, -0.596285,
		-0.209574, -0.574776, 0.791019,
		45.263138, 35.740723, 51.600662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874424, 35.558060, 50.804207>,  <45.409840, 36.143066, 51.046951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874424, 35.558060, 50.804207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.851376, 35.595985, 51.201736>,  <44.837547, 35.618740, 51.440254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.851376, 35.595985, 51.201736>,  <44.874424, 35.558060, 50.804207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851376, 35.595985, 51.201736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996757, -0.061475, -0.051928,
		0.056173, -0.993595, 0.098044,
		-0.057623, 0.094809, 0.993826,
		44.834087, 35.624428, 51.499886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365540, 35.187408, 50.870869>,  <44.874424, 35.558060, 50.804207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365540, 35.187408, 50.870869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.388260, 35.389961, 51.215042>,  <44.401894, 35.511494, 51.421547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.388260, 35.389961, 51.215042>,  <44.365540, 35.187408, 50.870869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388260, 35.389961, 51.215042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996163, -0.028718, 0.082667,
		0.066571, -0.861833, 0.502805,
		0.056805, 0.506379, 0.860438,
		44.405300, 35.541874, 51.473175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055553, 34.744904, 51.345890>,  <44.365540, 35.187408, 50.870869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055553, 34.744904, 51.345890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.021568, 35.132526, 51.438587>,  <44.001179, 35.365101, 51.494205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.021568, 35.132526, 51.438587>,  <44.055553, 34.744904, 51.345890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021568, 35.132526, 51.438587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994559, -0.068410, -0.078569,
		-0.060285, -0.237155, 0.969599,
		-0.084963, 0.969060, 0.231741,
		43.996078, 35.423244, 51.508110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552631, 34.694447, 51.782883>,  <44.055553, 34.744904, 51.345890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552631, 34.694447, 51.782883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.558571, 35.088215, 51.712814>,  <43.562134, 35.324478, 51.670773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.558571, 35.088215, 51.712814>,  <43.552631, 34.694447, 51.782883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558571, 35.088215, 51.712814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988562, -0.011838, -0.150346,
		-0.150078, 0.175405, 0.972990,
		0.014853, 0.984425, -0.175175,
		43.563026, 35.383541, 51.660263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129768, 35.131252, 52.259937>,  <43.552631, 34.694447, 51.782883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129768, 35.131252, 52.259937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.158886, 35.359509, 51.932751>,  <43.176357, 35.496460, 51.736439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.158886, 35.359509, 51.932751>,  <43.129768, 35.131252, 52.259937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158886, 35.359509, 51.932751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991682, 0.128705, 0.001534,
		0.106152, 0.811053, 0.575261,
		0.072794, 0.570639, -0.817968,
		43.180725, 35.530701, 51.687359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495918, 35.484783, 52.340885>,  <43.129768, 35.131252, 52.259937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495918, 35.484783, 52.340885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.591286, 35.567806, 51.961395>,  <42.648506, 35.617619, 51.733700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.591286, 35.567806, 51.961395>,  <42.495918, 35.484783, 52.340885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591286, 35.567806, 51.961395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956312, 0.220365, -0.192113,
		0.169191, 0.953079, 0.251029,
		0.238417, 0.207558, -0.948724,
		42.662811, 35.630074, 51.676777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235764, 36.136715, 52.275826>,  <42.495918, 35.484783, 52.340885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235764, 36.136715, 52.275826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.270058, 35.972225, 51.912827>,  <42.290634, 35.873531, 51.695026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.270058, 35.972225, 51.912827>,  <42.235764, 36.136715, 52.275826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270058, 35.972225, 51.912827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934682, 0.282198, -0.216181,
		0.344992, 0.866752, -0.360169,
		0.085736, -0.411225, -0.907493,
		42.295780, 35.848858, 51.640579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854942, 36.569458, 51.876678>,  <42.235764, 36.136715, 52.275826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854942, 36.569458, 51.876678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.886105, 36.243595, 51.646805>,  <41.904800, 36.048077, 51.508881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.886105, 36.243595, 51.646805>,  <41.854942, 36.569458, 51.876678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886105, 36.243595, 51.646805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949943, 0.114283, -0.290771,
		0.302555, 0.568572, -0.764974,
		0.077901, -0.814656, -0.574688,
		41.909473, 35.999199, 51.474400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430740, 36.751507, 51.267036>,  <41.854942, 36.569458, 51.876678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430740, 36.751507, 51.267036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.461632, 36.354061, 51.234112>,  <41.480167, 36.115593, 51.214355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.461632, 36.354061, 51.234112>,  <41.430740, 36.751507, 51.267036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461632, 36.354061, 51.234112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887779, -0.030958, -0.459228,
		0.453745, 0.108542, -0.884497,
		0.077228, -0.993610, -0.082315,
		41.484798, 36.055977, 51.209419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169552, 36.600170, 50.656990>,  <41.430740, 36.751507, 51.267036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169552, 36.600170, 50.656990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.117931, 36.270519, 50.877594>,  <41.086960, 36.072731, 51.009956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.117931, 36.270519, 50.877594>,  <41.169552, 36.600170, 50.656990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117931, 36.270519, 50.877594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944284, -0.067680, -0.322098,
		0.302776, -0.562350, -0.769473,
		-0.129054, -0.824125, 0.551510,
		41.079216, 36.023281, 51.043049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819687, 36.126736, 50.209484>,  <41.169552, 36.600170, 50.656990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819687, 36.126736, 50.209484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.730957, 36.001278, 50.578793>,  <40.677719, 35.926003, 50.800377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.730957, 36.001278, 50.578793>,  <40.819687, 36.126736, 50.209484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730957, 36.001278, 50.578793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941751, -0.176551, -0.286242,
		0.252781, -0.932983, -0.256212,
		-0.221824, -0.313644, 0.923267,
		40.664410, 35.907185, 50.855774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372231, 35.622467, 50.030907>,  <40.819687, 36.126736, 50.209484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372231, 35.622467, 50.030907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.304298, 35.686672, 50.419834>,  <40.263538, 35.725197, 50.653191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.304298, 35.686672, 50.419834>,  <40.372231, 35.622467, 50.030907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304298, 35.686672, 50.419834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970158, -0.200503, -0.136351,
		0.173065, -0.966455, 0.189773,
		-0.169827, 0.160512, 0.972314,
		40.253349, 35.734825, 50.711529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954411, 35.112701, 49.608646>,  <40.372231, 35.622467, 50.030907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954411, 35.112701, 49.608646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.868492, 34.758659, 49.773792>,  <39.816940, 34.546234, 49.872879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.868492, 34.758659, 49.773792>,  <39.954411, 35.112701, 49.608646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868492, 34.758659, 49.773792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914736, 0.330444, 0.232516,
		-0.342230, -0.327720, -0.880612,
		-0.214793, -0.885102, 0.412866,
		39.804054, 34.493130, 49.897652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355938, 34.808346, 49.252945>,  <39.954411, 35.112701, 49.608646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355938, 34.808346, 49.252945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373981, 34.653271, 49.621220>,  <39.384808, 34.560226, 49.842186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373981, 34.653271, 49.621220>,  <39.355938, 34.808346, 49.252945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373981, 34.653271, 49.621220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934100, 0.310356, 0.176454,
		-0.354149, -0.867974, -0.348136,
		0.045112, -0.387685, 0.920687,
		39.387516, 34.536964, 49.897427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851173, 34.272717, 49.315536>,  <39.355938, 34.808346, 49.252945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851173, 34.272717, 49.315536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941189, 34.458561, 49.658115>,  <38.995197, 34.570068, 49.863663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941189, 34.458561, 49.658115>,  <38.851173, 34.272717, 49.315536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941189, 34.458561, 49.658115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972344, 0.163469, 0.166811,
		-0.062500, -0.870297, 0.488546,
		0.225037, 0.464609, 0.856445,
		39.008701, 34.597942, 49.915051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090340, 34.164474, 49.470943>,  <38.851173, 34.272717, 49.315536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090340, 34.164474, 49.470943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.328690, 34.455566, 49.335098>,  <38.471699, 34.630222, 49.253593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.328690, 34.455566, 49.335098>,  <38.090340, 34.164474, 49.470943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328690, 34.455566, 49.335098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797525, -0.486606, 0.356606,
		0.094258, -0.483340, -0.870344,
		0.595876, 0.727734, -0.339609,
		38.507454, 34.673885, 49.233215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997147, 34.044827, 48.776432>,  <38.090340, 34.164474, 49.470943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997147, 34.044827, 48.776432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080269, 33.660892, 48.701038>,  <38.130142, 33.430531, 48.655804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080269, 33.660892, 48.701038>,  <37.997147, 34.044827, 48.776432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080269, 33.660892, 48.701038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851179, -0.082491, -0.518353,
		0.481987, 0.268150, -0.834137,
		0.207805, -0.959839, -0.188484,
		38.142609, 33.372940, 48.644493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099964, 33.941971, 48.015488>,  <37.997147, 34.044827, 48.776432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099964, 33.941971, 48.015488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983101, 33.600475, 48.187893>,  <37.912983, 33.395576, 48.291336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983101, 33.600475, 48.187893>,  <38.099964, 33.941971, 48.015488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983101, 33.600475, 48.187893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768786, -0.058414, -0.636832,
		0.568866, -0.517412, -0.639277,
		-0.292162, -0.853740, 0.431010,
		37.895451, 33.344353, 48.317196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816555, 33.462021, 47.404705>,  <38.099964, 33.941971, 48.015488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816555, 33.462021, 47.404705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676174, 33.292603, 47.738758>,  <37.591946, 33.190952, 47.939190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676174, 33.292603, 47.738758>,  <37.816555, 33.462021, 47.404705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676174, 33.292603, 47.738758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839603, -0.252554, -0.480920,
		0.414608, -0.869956, -0.266978,
		-0.350953, -0.423549, 0.835128,
		37.570889, 33.165539, 47.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450974, 32.918152, 47.086445>,  <37.816555, 33.462021, 47.404705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450974, 32.918152, 47.086445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320282, 32.957912, 47.462395>,  <37.241867, 32.981770, 47.687965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320282, 32.957912, 47.462395>,  <37.450974, 32.918152, 47.086445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320282, 32.957912, 47.462395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867229, -0.426860, -0.256329,
		0.375718, -0.898838, 0.225667,
		-0.326726, 0.099397, 0.939878,
		37.222263, 32.987732, 47.744358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099865, 32.144478, 47.315376>,  <37.450974, 32.918152, 47.086445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099865, 32.144478, 47.315376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945969, 32.432575, 47.546276>,  <36.853630, 32.605434, 47.684818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945969, 32.432575, 47.546276>,  <37.099865, 32.144478, 47.315376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945969, 32.432575, 47.546276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903602, -0.166291, -0.394778,
		-0.188345, -0.673495, 0.714794,
		-0.384745, 0.720245, 0.577251,
		36.830544, 32.648647, 47.719452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470520, 31.902433, 47.487221>,  <37.099865, 32.144478, 47.315376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470520, 31.902433, 47.487221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409161, 32.289864, 47.565540>,  <36.372345, 32.522320, 47.612530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409161, 32.289864, 47.565540>,  <36.470520, 31.902433, 47.487221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409161, 32.289864, 47.565540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927734, -0.072930, -0.366046,
		-0.340263, -0.237797, 0.909766,
		-0.153394, 0.968573, 0.195797,
		36.363144, 32.580437, 47.624279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741997, 32.011208, 47.746906>,  <36.470520, 31.902433, 47.487221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741997, 32.011208, 47.746906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.847500, 32.377995, 47.627171>,  <35.910801, 32.598068, 47.555328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.847500, 32.377995, 47.627171>,  <35.741997, 32.011208, 47.746906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847500, 32.377995, 47.627171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939040, 0.173141, -0.297028,
		-0.220536, 0.359438, 0.906735,
		0.263757, 0.916966, -0.299343,
		35.926628, 32.653084, 47.537369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186676, 32.432423, 48.050289>,  <35.741997, 32.011208, 47.746906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186676, 32.432423, 48.050289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349171, 32.656422, 47.761463>,  <35.446667, 32.790821, 47.588169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349171, 32.656422, 47.761463>,  <35.186676, 32.432423, 48.050289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349171, 32.656422, 47.761463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896124, 0.398692, -0.194955,
		0.178707, 0.726256, 0.663790,
		0.406235, 0.559998, -0.722064,
		35.471043, 32.824421, 47.544846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854492, 32.935799, 48.220051>,  <35.186676, 32.432423, 48.050289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854492, 32.935799, 48.220051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978649, 32.962856, 47.840771>,  <35.053143, 32.979092, 47.613201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978649, 32.962856, 47.840771>,  <34.854492, 32.935799, 48.220051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978649, 32.962856, 47.840771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908681, 0.314084, -0.275047,
		0.279207, 0.946982, 0.158959,
		0.310391, 0.067648, -0.948199,
		35.071766, 32.983150, 47.556313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632214, 33.541771, 47.989754>,  <34.854492, 32.935799, 48.220051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632214, 33.541771, 47.989754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.700798, 33.326038, 47.659973>,  <34.741951, 33.196598, 47.462105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.700798, 33.326038, 47.659973>,  <34.632214, 33.541771, 47.989754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700798, 33.326038, 47.659973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877708, 0.296468, -0.376478,
		0.447470, 0.788182, -0.422540,
		0.171464, -0.539329, -0.824454,
		34.752235, 33.164238, 47.412636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512882, 34.006805, 47.412952>,  <34.632214, 33.541771, 47.989754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512882, 34.006805, 47.412952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491688, 33.624428, 47.297455>,  <34.478970, 33.395000, 47.228157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491688, 33.624428, 47.297455>,  <34.512882, 34.006805, 47.412952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491688, 33.624428, 47.297455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953051, 0.134740, -0.271181,
		0.298137, 0.260816, -0.918199,
		-0.052990, -0.955940, -0.288742,
		34.475792, 33.337646, 47.210831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063667, 34.069515, 46.810112>,  <34.512882, 34.006805, 47.412952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063667, 34.069515, 46.810112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044708, 33.682995, 46.911312>,  <34.033333, 33.451080, 46.972031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044708, 33.682995, 46.911312>,  <34.063667, 34.069515, 46.810112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044708, 33.682995, 46.911312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953779, -0.031462, -0.298859,
		0.296748, -0.255471, -0.920150,
		-0.047400, -0.966305, 0.252999,
		34.030487, 33.393105, 46.987213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.408792, 32.847092, 51.925186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.763399, 32.945213, 52.082115>,  <29.976162, 33.004086, 52.176273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.763399, 32.945213, 52.082115>,  <29.408792, 32.847092, 51.925186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763399, 32.945213, 52.082115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413302, -0.038624, -0.909775,
		-0.208020, 0.968676, -0.135626,
		0.886515, 0.245305, 0.392321,
		30.029354, 33.018806, 52.199810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695116, 33.397797, 51.478771>,  <29.408792, 32.847092, 51.925186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695116, 33.397797, 51.478771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.003593, 33.240654, 51.679142>,  <30.188679, 33.146366, 51.799362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.003593, 33.240654, 51.679142>,  <29.695116, 33.397797, 51.478771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003593, 33.240654, 51.679142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529055, -0.042132, -0.847541,
		0.354069, 0.918633, 0.175352,
		0.771191, -0.392859, 0.500925,
		30.234951, 33.122795, 51.829418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241648, 33.737705, 51.225620>,  <29.695116, 33.397797, 51.478771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241648, 33.737705, 51.225620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389576, 33.404743, 51.390705>,  <30.478333, 33.204964, 51.489754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389576, 33.404743, 51.390705>,  <30.241648, 33.737705, 51.225620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389576, 33.404743, 51.390705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663651, -0.074208, -0.744353,
		0.650232, 0.549171, 0.524986,
		0.369819, -0.832409, 0.412710,
		30.500521, 33.155022, 51.514519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948929, 33.787624, 51.057045>,  <30.241648, 33.737705, 51.225620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948929, 33.787624, 51.057045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890293, 33.403275, 51.151047>,  <30.855112, 33.172665, 51.207447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890293, 33.403275, 51.151047>,  <30.948929, 33.787624, 51.057045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890293, 33.403275, 51.151047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528744, -0.276895, -0.802345,
		0.836027, 0.006643, 0.548648,
		-0.146589, -0.960877, 0.235004,
		30.846317, 33.115013, 51.221546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597212, 33.446323, 51.079205>,  <30.948929, 33.787624, 51.057045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597212, 33.446323, 51.079205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350582, 33.135494, 51.028614>,  <31.202604, 32.948997, 50.998260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350582, 33.135494, 51.028614>,  <31.597212, 33.446323, 51.079205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350582, 33.135494, 51.028614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543535, -0.303925, -0.782431,
		0.569565, -0.551172, 0.609758,
		-0.616575, -0.777071, -0.126476,
		31.165609, 32.902374, 50.990673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002285, 32.965210, 50.971134>,  <31.597212, 33.446323, 51.079205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002285, 32.965210, 50.971134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663996, 32.822243, 50.812641>,  <31.461021, 32.736462, 50.717545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663996, 32.822243, 50.812641>,  <32.002285, 32.965210, 50.971134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663996, 32.822243, 50.812641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520053, -0.385694, -0.762092,
		0.119560, -0.850584, 0.512067,
		-0.845725, -0.357418, -0.396236,
		31.410278, 32.715019, 50.693771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102699, 32.322071, 50.787792>,  <32.002285, 32.965210, 50.971134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102699, 32.322071, 50.787792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790146, 32.419258, 50.557869>,  <31.602613, 32.477570, 50.419914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790146, 32.419258, 50.557869>,  <32.102699, 32.322071, 50.787792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790146, 32.419258, 50.557869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538594, -0.202680, -0.817825,
		-0.315212, -0.948623, 0.027507,
		-0.781382, 0.242973, -0.574810,
		31.555731, 32.492149, 50.385426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041004, 31.826727, 50.324642>,  <32.102699, 32.322071, 50.787792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041004, 31.826727, 50.324642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783108, 32.067623, 50.136337>,  <31.628370, 32.212162, 50.023354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783108, 32.067623, 50.136337>,  <32.041004, 31.826727, 50.324642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783108, 32.067623, 50.136337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339305, -0.326387, -0.882238,
		-0.684970, -0.728546, 0.006091,
		-0.644739, 0.602240, -0.470765,
		31.589685, 32.248295, 49.995110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532419, 31.398500, 49.866772>,  <32.041004, 31.826727, 50.324642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532419, 31.398500, 49.866772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.583887, 31.773609, 49.737755>,  <31.614767, 31.998674, 49.660347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.583887, 31.773609, 49.737755>,  <31.532419, 31.398500, 49.866772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583887, 31.773609, 49.737755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424155, -0.346033, -0.836872,
		-0.896403, -0.029128, -0.442283,
		0.128668, 0.937770, -0.322539,
		31.622488, 32.054939, 49.640991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266073, 31.353220, 49.137512>,  <31.532419, 31.398500, 49.866772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266073, 31.353220, 49.137512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497143, 31.675886, 49.187447>,  <31.635784, 31.869486, 49.217407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497143, 31.675886, 49.187447>,  <31.266073, 31.353220, 49.137512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497143, 31.675886, 49.187447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480381, -0.212318, -0.850973,
		-0.659943, 0.551557, -0.510156,
		0.577676, 0.806663, 0.124840,
		31.670446, 31.917885, 49.224899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125494, 31.857410, 48.487968>,  <31.266073, 31.353220, 49.137512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125494, 31.857410, 48.487968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485958, 31.930859, 48.645035>,  <31.702236, 31.974928, 48.739277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485958, 31.930859, 48.645035>,  <31.125494, 31.857410, 48.487968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485958, 31.930859, 48.645035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416074, -0.112272, -0.902373,
		-0.121609, 0.976564, -0.177576,
		0.901163, 0.183621, 0.392669,
		31.756308, 31.985945, 48.762836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404827, 32.394203, 48.018646>,  <31.125494, 31.857410, 48.487968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404827, 32.394203, 48.018646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706888, 32.213013, 48.208199>,  <31.888124, 32.104298, 48.321930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706888, 32.213013, 48.208199>,  <31.404827, 32.394203, 48.018646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706888, 32.213013, 48.208199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458511, -0.151676, -0.875650,
		0.468521, 0.878528, 0.093154,
		0.755153, -0.452972, 0.473878,
		31.933434, 32.077122, 48.350361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741068, 32.704300, 47.928154>,  <31.404827, 32.394203, 48.018646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741068, 32.704300, 47.928154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938837, 32.915318, 47.651821>,  <31.057499, 33.041927, 47.486023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938837, 32.915318, 47.651821>,  <30.741068, 32.704300, 47.928154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938837, 32.915318, 47.651821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456254, 0.833987, 0.310320,
		0.739850, 0.161765, 0.653035,
		0.494423, 0.527540, -0.690831,
		31.087164, 33.073578, 47.444572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078951, 33.316284, 48.307686>,  <30.741068, 32.704300, 47.928154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078951, 33.316284, 48.307686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.019020, 33.406273, 47.922573>,  <30.983061, 33.460266, 47.691505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.019020, 33.406273, 47.922573>,  <31.078951, 33.316284, 48.307686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019020, 33.406273, 47.922573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339082, 0.903021, 0.263775,
		0.928749, 0.365981, -0.059014,
		-0.149828, 0.224970, -0.962777,
		30.974072, 33.473763, 47.633739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532177, 33.901871, 48.058659>,  <31.078951, 33.316284, 48.307686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532177, 33.901871, 48.058659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.236410, 33.901585, 47.789360>,  <31.058950, 33.901413, 47.627781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.236410, 33.901585, 47.789360>,  <31.532177, 33.901871, 48.058659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236410, 33.901585, 47.789360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118928, 0.984412, 0.129576,
		0.662661, 0.175879, -0.727975,
		-0.739417, -0.000712, -0.673248,
		31.014585, 33.901371, 47.587387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650461, 34.531567, 47.731434>,  <31.532177, 33.901871, 48.058659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650461, 34.531567, 47.731434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269716, 34.436680, 47.653786>,  <31.041269, 34.379745, 47.607197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269716, 34.436680, 47.653786>,  <31.650461, 34.531567, 47.731434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269716, 34.436680, 47.653786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276694, 0.937477, 0.211134,
		0.131900, 0.254683, -0.957987,
		-0.951863, -0.237220, -0.194123,
		30.984158, 34.365513, 47.595551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466948, 35.018997, 47.353489>,  <31.650461, 34.531567, 47.731434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466948, 35.018997, 47.353489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.127472, 34.866352, 47.499969>,  <30.923786, 34.774765, 47.587860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.127472, 34.866352, 47.499969>,  <31.466948, 35.018997, 47.353489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127472, 34.866352, 47.499969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270066, 0.908001, 0.320311,
		-0.454747, 0.172944, -0.873668,
		-0.848687, -0.381608, 0.366205,
		30.872866, 34.751869, 47.609829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001883, 35.472782, 47.135216>,  <31.466948, 35.018997, 47.353489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001883, 35.472782, 47.135216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840281, 35.257233, 47.430893>,  <30.743320, 35.127903, 47.608299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840281, 35.257233, 47.430893>,  <31.001883, 35.472782, 47.135216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840281, 35.257233, 47.430893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142233, 0.835248, 0.531160,
		-0.903632, 0.109454, -0.414088,
		-0.404004, -0.538870, 0.739188,
		30.719080, 35.095570, 47.652649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321424, 35.763012, 47.215248>,  <31.001883, 35.472782, 47.135216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321424, 35.763012, 47.215248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374178, 35.558537, 47.554966>,  <30.405830, 35.435852, 47.758797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374178, 35.558537, 47.554966>,  <30.321424, 35.763012, 47.215248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374178, 35.558537, 47.554966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398579, 0.757115, 0.517602,
		-0.907602, -0.406772, -0.103898,
		0.131884, -0.511188, 0.849290,
		30.413744, 35.405182, 47.809753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724327, 35.910572, 47.586052>,  <30.321424, 35.763012, 47.215248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724327, 35.910572, 47.586052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005074, 35.807426, 47.851650>,  <30.173521, 35.745541, 48.011009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005074, 35.807426, 47.851650>,  <29.724327, 35.910572, 47.586052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005074, 35.807426, 47.851650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271523, 0.764942, 0.584070,
		-0.658528, -0.590230, 0.466873,
		0.701867, -0.257859, 0.663997,
		30.215633, 35.730068, 48.050850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435419, 35.970871, 48.171303>,  <29.724327, 35.910572, 47.586052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435419, 35.970871, 48.171303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.827236, 35.995304, 48.248001>,  <30.062326, 36.009964, 48.294022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.827236, 35.995304, 48.248001>,  <29.435419, 35.970871, 48.171303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827236, 35.995304, 48.248001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152927, 0.845280, 0.511972,
		-0.130809, -0.530821, 0.837328,
		0.979542, 0.061080, 0.191747,
		30.121099, 36.013630, 48.305527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450977, 36.188702, 48.923935>,  <29.435419, 35.970871, 48.171303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450977, 36.188702, 48.923935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.823044, 36.245998, 48.788719>,  <30.046284, 36.280376, 48.707588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.823044, 36.245998, 48.788719>,  <29.450977, 36.188702, 48.923935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823044, 36.245998, 48.788719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108477, 0.772406, 0.625797,
		0.350747, -0.618765, 0.702927,
		0.930166, 0.143245, -0.338041,
		30.102093, 36.288971, 48.687305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940741, 36.136570, 49.487953>,  <29.450977, 36.188702, 48.923935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940741, 36.136570, 49.487953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.070875, 36.378967, 49.197594>,  <30.148956, 36.524406, 49.023380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.070875, 36.378967, 49.197594>,  <29.940741, 36.136570, 49.487953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070875, 36.378967, 49.197594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010755, 0.765236, 0.643660,
		0.945537, -0.217213, 0.242441,
		0.325336, 0.605997, -0.725896,
		30.168476, 36.560768, 48.979824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416929, 36.646873, 49.868431>,  <29.940741, 36.136570, 49.487953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416929, 36.646873, 49.868431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.363743, 36.796638, 49.501358>,  <30.331831, 36.886497, 49.281116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.363743, 36.796638, 49.501358>,  <30.416929, 36.646873, 49.868431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363743, 36.796638, 49.501358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019916, 0.926723, 0.375217,
		0.990921, 0.031614, -0.130678,
		-0.132964, 0.374413, -0.917679,
		30.323854, 36.908962, 49.226055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995537, 37.079269, 49.622364>,  <30.416929, 36.646873, 49.868431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995537, 37.079269, 49.622364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.706268, 37.220169, 49.384727>,  <30.532707, 37.304710, 49.242146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.706268, 37.220169, 49.384727>,  <30.995537, 37.079269, 49.622364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706268, 37.220169, 49.384727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089068, 0.900545, 0.425542,
		0.684901, 0.254826, -0.682624,
		-0.723172, 0.352254, -0.594087,
		30.489317, 37.325844, 49.206501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237286, 37.742947, 49.349346>,  <30.995537, 37.079269, 49.622364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237286, 37.742947, 49.349346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.839272, 37.733093, 49.310776>,  <30.600464, 37.727180, 49.287632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.839272, 37.733093, 49.310776>,  <31.237286, 37.742947, 49.349346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839272, 37.733093, 49.310776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076099, 0.812716, 0.577669,
		0.064139, 0.582139, -0.810556,
		-0.995035, -0.024631, -0.096427,
		30.540760, 37.725704, 49.281849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960033, 38.467754, 49.312756>,  <31.237286, 37.742947, 49.349346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960033, 38.467754, 49.312756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.622044, 38.277332, 49.410233>,  <30.419249, 38.163078, 49.468719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.622044, 38.277332, 49.410233>,  <30.960033, 38.467754, 49.312756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622044, 38.277332, 49.410233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136687, 0.632774, 0.762177,
		-0.517041, 0.610712, -0.599750,
		-0.844977, -0.476055, 0.243694,
		30.368551, 38.134518, 49.483341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576643, 38.963535, 49.694027>,  <30.960033, 38.467754, 49.312756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576643, 38.963535, 49.694027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.419275, 38.619984, 49.825203>,  <30.324854, 38.413853, 49.903908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.419275, 38.619984, 49.825203>,  <30.576643, 38.963535, 49.694027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419275, 38.619984, 49.825203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116912, 0.400553, 0.908784,
		-0.911894, 0.319195, -0.257999,
		-0.393422, -0.858878, 0.327944,
		30.301249, 38.362320, 49.923588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597284, 39.636482, 49.374653>,  <30.576643, 38.963535, 49.694027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597284, 39.636482, 49.374653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.929136, 39.786766, 49.539848>,  <31.128248, 39.876938, 49.638966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.929136, 39.786766, 49.539848>,  <30.597284, 39.636482, 49.374653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929136, 39.786766, 49.539848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554798, -0.637641, -0.534427,
		0.062547, 0.672500, -0.737449,
		0.829630, 0.375709, 0.412985,
		31.178026, 39.899479, 49.663742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085581, 39.913433, 48.785774>,  <30.597284, 39.636482, 49.374653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085581, 39.913433, 48.785774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302029, 39.820839, 49.109158>,  <31.431896, 39.765282, 49.303188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302029, 39.820839, 49.109158>,  <31.085581, 39.913433, 48.785774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302029, 39.820839, 49.109158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584166, -0.588084, -0.559381,
		0.604931, 0.774965, -0.182996,
		0.541118, -0.231487, 0.808459,
		31.464363, 39.751392, 49.351696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784765, 40.076054, 48.610378>,  <31.085581, 39.913433, 48.785774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784765, 40.076054, 48.610378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794790, 39.819939, 48.917469>,  <31.800804, 39.666267, 49.101723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794790, 39.819939, 48.917469>,  <31.784765, 40.076054, 48.610378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794790, 39.819939, 48.917469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653093, -0.570940, -0.497491,
		0.756863, 0.513862, 0.403862,
		0.025061, -0.640291, 0.767723,
		31.802309, 39.627850, 49.147785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474159, 40.126133, 48.827648>,  <31.784765, 40.076054, 48.610378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474159, 40.126133, 48.827648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.319176, 39.792896, 48.985550>,  <32.226185, 39.592953, 49.080292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.319176, 39.792896, 48.985550>,  <32.474159, 40.126133, 48.827648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319176, 39.792896, 48.985550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718081, -0.541265, -0.437484,
		0.578134, 0.113964, 0.807944,
		-0.387454, -0.833093, 0.394759,
		32.202938, 39.542969, 49.103977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983044, 39.790268, 49.103592>,  <32.474159, 40.126133, 48.827648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983044, 39.790268, 49.103592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741131, 39.473099, 49.073883>,  <32.595982, 39.282799, 49.056057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741131, 39.473099, 49.073883>,  <32.983044, 39.790268, 49.103592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741131, 39.473099, 49.073883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730989, -0.515684, -0.446905,
		0.316061, -0.324571, 0.891493,
		-0.604781, -0.792921, -0.074270,
		32.559696, 39.235222, 49.051601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388649, 39.214840, 49.393085>,  <32.983044, 39.790268, 49.103592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388649, 39.214840, 49.393085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103191, 39.069099, 49.153767>,  <32.931915, 38.981655, 49.010178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103191, 39.069099, 49.153767>,  <33.388649, 39.214840, 49.393085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103191, 39.069099, 49.153767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687123, -0.530248, -0.496689,
		-0.136275, -0.765562, 0.628764,
		-0.713647, -0.364352, -0.598294,
		32.889099, 38.959793, 48.974277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602684, 38.521282, 49.398895>,  <33.388649, 39.214840, 49.393085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602684, 38.521282, 49.398895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345013, 38.555790, 49.094898>,  <33.190411, 38.576496, 48.912498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345013, 38.555790, 49.094898>,  <33.602684, 38.521282, 49.398895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345013, 38.555790, 49.094898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601879, -0.555972, -0.573269,
		-0.471993, -0.826712, 0.306219,
		-0.644178, 0.086272, -0.759995,
		33.151760, 38.581673, 48.866901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208248, 37.916122, 49.400742>,  <33.602684, 38.521282, 49.398895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208248, 37.916122, 49.400742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173401, 38.074600, 49.035130>,  <33.152493, 38.169685, 48.815762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173401, 38.074600, 49.035130>,  <33.208248, 37.916122, 49.400742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173401, 38.074600, 49.035130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305941, -0.862535, -0.403030,
		-0.948057, -0.314748, -0.046071,
		-0.087115, 0.396190, -0.914026,
		33.147266, 38.193459, 48.760921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883492, 37.448570, 49.022144>,  <33.208248, 37.916122, 49.400742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883492, 37.448570, 49.022144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050327, 37.644585, 48.715965>,  <33.150429, 37.762192, 48.532257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050327, 37.644585, 48.715965>,  <32.883492, 37.448570, 49.022144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050327, 37.644585, 48.715965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345357, -0.864476, -0.365252,
		-0.840695, -0.112011, -0.529797,
		0.417085, 0.490035, -0.765445,
		33.175453, 37.791595, 48.486332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678188, 37.099987, 48.386646>,  <32.883492, 37.448570, 49.022144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678188, 37.099987, 48.386646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996563, 37.307751, 48.262268>,  <33.187588, 37.432411, 48.187641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996563, 37.307751, 48.262268>,  <32.678188, 37.099987, 48.386646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996563, 37.307751, 48.262268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349906, -0.813879, -0.463860,
		-0.494007, 0.260403, -0.829546,
		0.795941, 0.519413, -0.310946,
		33.235344, 37.463573, 48.168983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727638, 36.965027, 47.681946>,  <32.678188, 37.099987, 48.386646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727638, 36.965027, 47.681946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094093, 37.070957, 47.802322>,  <33.313965, 37.134514, 47.874546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094093, 37.070957, 47.802322>,  <32.727638, 36.965027, 47.681946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094093, 37.070957, 47.802322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379993, -0.812814, -0.441519,
		0.127682, 0.518846, -0.845279,
		0.916135, 0.264826, 0.300940,
		33.368935, 37.150406, 47.892605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320930, 37.031487, 47.170082>,  <32.727638, 36.965027, 47.681946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320930, 37.031487, 47.170082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418213, 36.883839, 47.528881>,  <33.476582, 36.795250, 47.744160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418213, 36.883839, 47.528881>,  <33.320930, 37.031487, 47.170082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418213, 36.883839, 47.528881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233558, -0.875267, -0.423507,
		0.941436, 0.312499, -0.126659,
		0.243206, -0.369122, 0.896995,
		33.491173, 36.773102, 47.797981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.577883, 41.326397, 54.671658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248716, 41.521301, 54.554775>,  <29.051216, 41.638245, 54.484646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248716, 41.521301, 54.554775>,  <29.577883, 41.326397, 54.671658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248716, 41.521301, 54.554775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326627, -0.015107, -0.945033,
		-0.464889, -0.873128, -0.146720,
		-0.822917, 0.487258, -0.292210,
		29.001841, 41.667477, 54.467113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220709, 40.971947, 54.126308>,  <29.577883, 41.326397, 54.671658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220709, 40.971947, 54.126308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.128220, 41.360600, 54.106426>,  <29.072727, 41.593792, 54.094498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.128220, 41.360600, 54.106426>,  <29.220709, 40.971947, 54.126308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128220, 41.360600, 54.106426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256569, 0.011619, -0.966456,
		-0.938461, -0.236218, -0.251977,
		-0.231222, 0.971631, -0.049702,
		29.058853, 41.652088, 54.091515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678167, 41.063007, 53.597519>,  <29.220709, 40.971947, 54.126308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678167, 41.063007, 53.597519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.897194, 41.395004, 53.640022>,  <29.028610, 41.594200, 53.665524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.897194, 41.395004, 53.640022>,  <28.678167, 41.063007, 53.597519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897194, 41.395004, 53.640022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173850, 0.011374, -0.984707,
		-0.818505, 0.557664, -0.138065,
		0.547565, 0.829989, 0.106259,
		29.061462, 41.644001, 53.671902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439171, 41.494095, 52.943832>,  <28.678167, 41.063007, 53.597519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439171, 41.494095, 52.943832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.793875, 41.626740, 53.072639>,  <29.006697, 41.706326, 53.149921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.793875, 41.626740, 53.072639>,  <28.439171, 41.494095, 52.943832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793875, 41.626740, 53.072639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389712, -0.161743, -0.906622,
		-0.248565, 0.929447, -0.272661,
		0.886758, 0.331614, 0.322013,
		29.059902, 41.726223, 53.169243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678883, 41.911011, 52.409504>,  <28.439171, 41.494095, 52.943832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678883, 41.911011, 52.409504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008829, 41.836712, 52.623081>,  <29.206797, 41.792133, 52.751228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008829, 41.836712, 52.623081>,  <28.678883, 41.911011, 52.409504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008829, 41.836712, 52.623081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547929, 0.030166, -0.835981,
		0.139173, 0.982135, 0.126658,
		0.824867, -0.185745, 0.533942,
		29.256289, 41.780987, 52.783264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232576, 42.315201, 52.137905>,  <28.678883, 41.911011, 52.409504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232576, 42.315201, 52.137905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.435791, 42.016426, 52.309475>,  <29.557720, 41.837162, 52.412418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.435791, 42.016426, 52.309475>,  <29.232576, 42.315201, 52.137905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435791, 42.016426, 52.309475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579129, -0.072397, -0.812015,
		0.637580, 0.660938, 0.395795,
		0.508037, -0.746940, 0.428927,
		29.588202, 41.792343, 52.438152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992117, 42.463024, 51.870342>,  <29.232576, 42.315201, 52.137905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992117, 42.463024, 51.870342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.969807, 42.087116, 52.005230>,  <29.956421, 41.861572, 52.086163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.969807, 42.087116, 52.005230>,  <29.992117, 42.463024, 51.870342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969807, 42.087116, 52.005230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722255, -0.271171, -0.636250,
		0.689374, 0.208070, 0.693880,
		-0.055776, -0.939773, 0.337218,
		29.953074, 41.805183, 52.106396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745026, 42.282391, 51.921288>,  <29.992117, 42.463024, 51.870342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745026, 42.282391, 51.921288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.546156, 41.935593, 51.934769>,  <30.426834, 41.727512, 51.942860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.546156, 41.935593, 51.934769>,  <30.745026, 42.282391, 51.921288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546156, 41.935593, 51.934769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621480, -0.382955, -0.683453,
		0.605459, -0.318847, 0.729216,
		-0.497174, -0.866996, 0.033706,
		30.397003, 41.675495, 51.944881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252232, 41.811211, 51.715008>,  <30.745026, 42.282391, 51.921288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252232, 41.811211, 51.715008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.916204, 41.594791, 51.699211>,  <30.714588, 41.464939, 51.689735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.916204, 41.594791, 51.699211>,  <31.252232, 41.811211, 51.715008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916204, 41.594791, 51.699211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394133, -0.558700, -0.729735,
		0.372757, -0.628590, 0.682588,
		-0.840066, -0.541044, -0.039489,
		30.664185, 41.432480, 51.687363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242304, 41.120071, 51.914955>,  <31.252232, 41.811211, 51.715008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242304, 41.120071, 51.914955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.946762, 41.112827, 51.645508>,  <30.769438, 41.108482, 51.483837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.946762, 41.112827, 51.645508>,  <31.242304, 41.120071, 51.914955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946762, 41.112827, 51.645508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484138, -0.709594, -0.511944,
		-0.468726, -0.704378, 0.533055,
		-0.738855, -0.018111, -0.673621,
		30.725105, 41.107395, 51.443420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283941, 40.553268, 51.709038>,  <31.242304, 41.120071, 51.914955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283941, 40.553268, 51.709038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037535, 40.682327, 51.421585>,  <30.889690, 40.759762, 51.249115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037535, 40.682327, 51.421585>,  <31.283941, 40.553268, 51.709038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037535, 40.682327, 51.421585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404979, -0.652763, -0.640228,
		-0.675660, -0.685419, 0.271448,
		-0.616016, 0.322645, -0.718627,
		30.852730, 40.779121, 51.205997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968506, 40.054150, 51.395432>,  <31.283941, 40.553268, 51.709038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968506, 40.054150, 51.395432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.952080, 40.320255, 51.097240>,  <30.942225, 40.479919, 50.918327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.952080, 40.320255, 51.097240>,  <30.968506, 40.054150, 51.395432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952080, 40.320255, 51.097240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234515, -0.718846, -0.654418,
		-0.971245, -0.201699, -0.126495,
		-0.041065, 0.665265, -0.745477,
		30.939760, 40.519836, 50.873596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830772, 39.653252, 50.842014>,  <30.968506, 40.054150, 51.395432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830772, 39.653252, 50.842014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.917408, 39.999809, 50.662037>,  <30.969389, 40.207745, 50.554050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.917408, 39.999809, 50.662037>,  <30.830772, 39.653252, 50.842014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917408, 39.999809, 50.662037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185159, -0.488972, -0.852422,
		-0.958543, 0.101314, -0.266327,
		0.216589, 0.866396, -0.449942,
		30.982384, 40.259727, 50.527054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473097, 39.677135, 50.235107>,  <30.830772, 39.653252, 50.842014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473097, 39.677135, 50.235107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.776270, 39.925819, 50.156097>,  <30.958174, 40.075031, 50.108692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.776270, 39.925819, 50.156097>,  <30.473097, 39.677135, 50.235107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776270, 39.925819, 50.156097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200582, -0.510239, -0.836315,
		-0.620730, 0.594251, -0.511430,
		0.757932, 0.621709, -0.197524,
		31.003649, 40.112331, 50.096840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945314, 39.180874, 50.022209>,  <30.473097, 39.677135, 50.235107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945314, 39.180874, 50.022209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994427, 38.819000, 50.185410>,  <30.023895, 38.601875, 50.283329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994427, 38.819000, 50.185410>,  <29.945314, 39.180874, 50.022209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994427, 38.819000, 50.185410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141506, 0.390956, 0.909467,
		-0.982293, -0.169402, -0.080016,
		0.122783, -0.904686, 0.408005,
		30.031261, 38.547596, 50.307812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356468, 39.131874, 50.502254>,  <29.945314, 39.180874, 50.022209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356468, 39.131874, 50.502254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636053, 38.873459, 50.624950>,  <29.803804, 38.718410, 50.698566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636053, 38.873459, 50.624950>,  <29.356468, 39.131874, 50.502254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636053, 38.873459, 50.624950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101400, 0.335053, 0.936727,
		-0.707932, -0.685842, 0.168682,
		0.698964, -0.646035, 0.306739,
		29.845743, 38.679649, 50.716972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082170, 38.699039, 51.011162>,  <29.356468, 39.131874, 50.502254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082170, 38.699039, 51.011162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466970, 38.646584, 51.106964>,  <29.697849, 38.615112, 51.164448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466970, 38.646584, 51.106964>,  <29.082170, 38.699039, 51.011162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466970, 38.646584, 51.106964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223848, 0.123575, 0.966758,
		-0.156375, -0.983632, 0.089524,
		0.961997, -0.131137, 0.239508,
		29.755569, 38.607243, 51.178818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088512, 38.374104, 51.610329>,  <29.082170, 38.699039, 51.011162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088512, 38.374104, 51.610329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471867, 38.487053, 51.627148>,  <29.701880, 38.554821, 51.637238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471867, 38.487053, 51.627148>,  <29.088512, 38.374104, 51.610329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471867, 38.487053, 51.627148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066859, 0.078826, 0.994644,
		0.277546, -0.956061, 0.094425,
		0.958383, 0.282372, 0.042043,
		29.759382, 38.571766, 51.639759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452116, 37.838543, 51.988937>,  <29.088512, 38.374104, 51.610329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452116, 37.838543, 51.988937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649416, 38.186230, 52.002594>,  <29.767796, 38.394840, 52.010788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649416, 38.186230, 52.002594>,  <29.452116, 37.838543, 51.988937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649416, 38.186230, 52.002594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050246, -0.010718, 0.998679,
		0.868435, -0.494314, 0.038387,
		0.493250, 0.869217, 0.034145,
		29.797392, 38.446995, 52.012836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847080, 37.850929, 52.584778>,  <29.452116, 37.838543, 51.988937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847080, 37.850929, 52.584778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.880062, 38.242008, 52.507511>,  <29.899851, 38.476654, 52.461151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.880062, 38.242008, 52.507511>,  <29.847080, 37.850929, 52.584778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880062, 38.242008, 52.507511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085950, 0.200076, 0.976003,
		0.992881, -0.063874, 0.100530,
		0.082455, 0.977696, -0.193162,
		29.904799, 38.535316, 52.449562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285313, 38.108055, 53.007580>,  <29.847080, 37.850929, 52.584778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285313, 38.108055, 53.007580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.098915, 38.449471, 52.914349>,  <29.987076, 38.654320, 52.858410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.098915, 38.449471, 52.914349>,  <30.285313, 38.108055, 53.007580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098915, 38.449471, 52.914349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106295, 0.315527, 0.942944,
		0.878379, 0.414632, -0.237761,
		-0.465995, 0.853535, -0.233079,
		29.959116, 38.705532, 52.844425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610544, 38.721931, 53.424416>,  <30.285313, 38.108055, 53.007580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610544, 38.721931, 53.424416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240025, 38.820328, 53.310253>,  <30.017712, 38.879368, 53.241756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240025, 38.820328, 53.310253>,  <30.610544, 38.721931, 53.424416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240025, 38.820328, 53.310253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168615, 0.406752, 0.897843,
		0.336951, 0.879795, -0.335297,
		-0.926301, 0.245993, -0.285402,
		29.962135, 38.894127, 53.224632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402575, 39.317883, 53.852139>,  <30.610544, 38.721931, 53.424416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402575, 39.317883, 53.852139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.053629, 39.182682, 53.710861>,  <29.844261, 39.101562, 53.626095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.053629, 39.182682, 53.710861>,  <30.402575, 39.317883, 53.852139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053629, 39.182682, 53.710861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456345, 0.303943, 0.836282,
		-0.175311, 0.890717, -0.419392,
		-0.872362, -0.337997, -0.353189,
		29.791920, 39.081284, 53.604904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873943, 39.877972, 54.089340>,  <30.402575, 39.317883, 53.852139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873943, 39.877972, 54.089340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646318, 39.558372, 54.011604>,  <29.509743, 39.366611, 53.964962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646318, 39.558372, 54.011604>,  <29.873943, 39.877972, 54.089340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646318, 39.558372, 54.011604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548072, 0.192361, 0.814011,
		-0.613013, 0.569734, -0.547375,
		-0.569063, -0.799000, -0.194335,
		29.475599, 39.318672, 53.953304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094593, 40.074604, 54.242451>,  <29.873943, 39.877972, 54.089340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094593, 40.074604, 54.242451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071091, 39.675636, 54.225925>,  <29.056990, 39.436256, 54.216011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071091, 39.675636, 54.225925>,  <29.094593, 40.074604, 54.242451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071091, 39.675636, 54.225925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644595, 0.006306, 0.764498,
		-0.762263, 0.071551, -0.643301,
		-0.058758, -0.997417, -0.041315,
		29.053463, 39.376411, 54.213531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410412, 39.949123, 54.175602>,  <29.094593, 40.074604, 54.242451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410412, 39.949123, 54.175602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.588467, 39.632305, 54.342705>,  <28.695299, 39.442215, 54.442966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.588467, 39.632305, 54.342705>,  <28.410412, 39.949123, 54.175602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588467, 39.632305, 54.342705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721868, -0.041343, 0.690794,
		-0.529869, -0.609061, -0.590155,
		0.445135, -0.792045, 0.417755,
		28.722008, 39.394691, 54.468033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874939, 39.560093, 54.308136>,  <28.410412, 39.949123, 54.175602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874939, 39.560093, 54.308136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168852, 39.404526, 54.530430>,  <28.345200, 39.311184, 54.663807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168852, 39.404526, 54.530430>,  <27.874939, 39.560093, 54.308136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168852, 39.404526, 54.530430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636888, -0.113686, 0.762529,
		-0.233382, -0.914231, -0.331231,
		0.734784, -0.388918, 0.555730,
		28.389288, 39.287849, 54.697147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687256, 38.908634, 54.596741>,  <27.874939, 39.560093, 54.308136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687256, 38.908634, 54.596741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.971254, 39.053024, 54.838600>,  <28.141653, 39.139660, 54.983715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.971254, 39.053024, 54.838600>,  <27.687256, 38.908634, 54.596741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971254, 39.053024, 54.838600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636790, -0.037510, 0.770124,
		0.300676, -0.931821, 0.203233,
		0.709995, 0.360974, 0.604653,
		28.184252, 39.161316, 55.019997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.781029, 38.455200, 58.055981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468029, 38.495800, 57.810249>,  <32.280231, 38.520161, 57.662811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468029, 38.495800, 57.810249>,  <32.781029, 38.455200, 58.055981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468029, 38.495800, 57.810249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350169, -0.744080, -0.568970,
		-0.514860, -0.660335, 0.546697,
		-0.782497, 0.101503, -0.614325,
		32.233280, 38.526253, 57.625950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463371, 37.753086, 57.901207>,  <32.781029, 38.455200, 58.055981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463371, 37.753086, 57.901207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358849, 37.995178, 57.600433>,  <32.296135, 38.140434, 57.419968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358849, 37.995178, 57.600433>,  <32.463371, 37.753086, 57.901207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358849, 37.995178, 57.600433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271610, -0.701423, -0.658964,
		-0.926253, -0.376427, 0.018901,
		-0.261309, 0.605234, -0.751937,
		32.280457, 38.176750, 57.374851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098526, 37.338905, 57.431263>,  <32.463371, 37.753086, 57.901207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098526, 37.338905, 57.431263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214611, 37.658901, 57.221199>,  <32.284260, 37.850899, 57.095161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214611, 37.658901, 57.221199>,  <32.098526, 37.338905, 57.431263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214611, 37.658901, 57.221199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209442, -0.588570, -0.780845,
		-0.933763, 0.116617, -0.338360,
		0.290208, 0.799991, -0.525160,
		32.301674, 37.898899, 57.063652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788164, 37.247665, 56.800980>,  <32.098526, 37.338905, 57.431263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788164, 37.247665, 56.800980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.099693, 37.489979, 56.735924>,  <32.286610, 37.635368, 56.696888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.099693, 37.489979, 56.735924>,  <31.788164, 37.247665, 56.800980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099693, 37.489979, 56.735924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233524, -0.520699, -0.821181,
		-0.582149, 0.601576, -0.547000,
		0.778825, 0.605788, -0.162642,
		32.333340, 37.671715, 56.687130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900866, 37.155529, 56.118458>,  <31.788164, 37.247665, 56.800980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900866, 37.155529, 56.118458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.223900, 37.369038, 56.218769>,  <32.417721, 37.497143, 56.278957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.223900, 37.369038, 56.218769>,  <31.900866, 37.155529, 56.118458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223900, 37.369038, 56.218769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431061, -0.244048, -0.868693,
		-0.402484, 0.809645, -0.427179,
		0.807584, 0.533775, 0.250781,
		32.466175, 37.529171, 56.294003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083843, 37.503372, 55.443161>,  <31.900866, 37.155529, 56.118458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083843, 37.503372, 55.443161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390438, 37.473843, 55.698364>,  <32.574394, 37.456123, 55.851486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390438, 37.473843, 55.698364>,  <32.083843, 37.503372, 55.443161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390438, 37.473843, 55.698364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584124, -0.332876, -0.740266,
		0.267027, 0.940077, -0.212021,
		0.766483, -0.073824, 0.638008,
		32.620384, 37.451694, 55.889767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581505, 37.929562, 55.143456>,  <32.083843, 37.503372, 55.443161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581505, 37.929562, 55.143456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742561, 37.649593, 55.379417>,  <32.839195, 37.481613, 55.520996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742561, 37.649593, 55.379417>,  <32.581505, 37.929562, 55.143456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742561, 37.649593, 55.379417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475836, -0.390493, -0.788096,
		0.781961, 0.598016, 0.175822,
		0.402637, -0.699923, 0.589908,
		32.863354, 37.439617, 55.556389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226582, 37.928120, 54.943562>,  <32.581505, 37.929562, 55.143456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226582, 37.928120, 54.943562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.212467, 37.582844, 55.145023>,  <33.203999, 37.375679, 55.265900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.212467, 37.582844, 55.145023>,  <33.226582, 37.928120, 54.943562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212467, 37.582844, 55.145023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597338, -0.422251, -0.681829,
		0.801213, 0.276793, 0.530512,
		-0.035283, -0.863186, 0.503652,
		33.201881, 37.323887, 55.296120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985733, 37.693718, 55.046474>,  <33.226582, 37.928120, 54.943562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985733, 37.693718, 55.046474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764084, 37.364925, 55.099083>,  <33.631096, 37.167648, 55.130650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764084, 37.364925, 55.099083>,  <33.985733, 37.693718, 55.046474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764084, 37.364925, 55.099083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673047, -0.535370, -0.510282,
		0.489856, -0.194236, 0.849890,
		-0.554120, -0.821981, 0.131524,
		33.597847, 37.118332, 55.138538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483261, 37.147560, 55.173111>,  <33.985733, 37.693718, 55.046474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483261, 37.147560, 55.173111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144917, 36.954655, 55.081947>,  <33.941910, 36.838913, 55.027248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144917, 36.954655, 55.081947>,  <34.483261, 37.147560, 55.173111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144917, 36.954655, 55.081947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509542, -0.604177, -0.612648,
		0.157759, -0.634345, 0.756782,
		-0.845860, -0.482263, -0.227911,
		33.891159, 36.809975, 55.013573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603798, 36.414825, 55.310867>,  <34.483261, 37.147560, 55.173111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603798, 36.414825, 55.310867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276608, 36.406631, 55.080914>,  <34.080292, 36.401714, 54.942940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276608, 36.406631, 55.080914>,  <34.603798, 36.414825, 55.310867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276608, 36.406631, 55.080914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389307, -0.755453, -0.527002,
		-0.423504, -0.654883, 0.625918,
		-0.817976, -0.020487, -0.574887,
		34.031216, 36.400486, 54.908447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349152, 35.718830, 55.148808>,  <34.603798, 36.414825, 55.310867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349152, 35.718830, 55.148808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213970, 35.942268, 54.845821>,  <34.132862, 36.076332, 54.664028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213970, 35.942268, 54.845821>,  <34.349152, 35.718830, 55.148808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213970, 35.942268, 54.845821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410121, -0.636985, -0.652726,
		-0.847108, -0.531242, -0.013825,
		-0.337949, 0.558599, -0.757468,
		34.112587, 36.109848, 54.618580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146282, 35.267456, 54.594299>,  <34.349152, 35.718830, 55.148808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146282, 35.267456, 54.594299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179745, 35.632397, 54.433987>,  <34.199821, 35.851360, 54.337799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179745, 35.632397, 54.433987>,  <34.146282, 35.267456, 54.594299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179745, 35.632397, 54.433987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322951, -0.405302, -0.855239,
		-0.942711, -0.057888, -0.328548,
		0.083653, 0.912348, -0.400777,
		34.204842, 35.906101, 54.313755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867260, 35.186428, 53.886028>,  <34.146282, 35.267456, 54.594299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867260, 35.186428, 53.886028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083664, 35.522774, 53.879532>,  <34.213505, 35.724579, 53.875633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083664, 35.522774, 53.879532>,  <33.867260, 35.186428, 53.886028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083664, 35.522774, 53.879532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546736, -0.366308, -0.752926,
		-0.639055, 0.398460, -0.657905,
		0.541007, 0.840861, -0.016238,
		34.245968, 35.775032, 53.874660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482857, 34.770569, 53.405849>,  <33.867260, 35.186428, 53.886028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482857, 34.770569, 53.405849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560829, 34.424381, 53.590443>,  <33.607613, 34.216671, 53.701199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560829, 34.424381, 53.590443>,  <33.482857, 34.770569, 53.405849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560829, 34.424381, 53.590443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519840, 0.307829, 0.796874,
		-0.831727, -0.395232, -0.389899,
		0.194928, -0.865466, 0.461487,
		33.619308, 34.164742, 53.728889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910297, 34.782757, 53.661846>,  <33.482857, 34.770569, 53.405849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910297, 34.782757, 53.661846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112221, 34.486492, 53.839195>,  <33.233376, 34.308731, 53.945606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112221, 34.486492, 53.839195>,  <32.910297, 34.782757, 53.661846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112221, 34.486492, 53.839195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459771, 0.204010, 0.864286,
		-0.730599, -0.640153, -0.237549,
		0.504813, -0.740665, 0.443373,
		33.263664, 34.264294, 53.972206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450924, 34.169827, 53.912617>,  <32.910297, 34.782757, 53.661846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450924, 34.169827, 53.912617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766014, 34.162247, 54.158909>,  <32.955070, 34.157700, 54.306683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766014, 34.162247, 54.158909>,  <32.450924, 34.169827, 53.912617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766014, 34.162247, 54.158909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615632, -0.059721, 0.785768,
		0.021889, -0.998035, -0.058704,
		0.787730, -0.018940, 0.615730,
		33.002335, 34.156563, 54.343628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346031, 33.638645, 54.413120>,  <32.450924, 34.169827, 53.912617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346031, 33.638645, 54.413120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619244, 33.863194, 54.600025>,  <32.783169, 33.997925, 54.712166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619244, 33.863194, 54.600025>,  <32.346031, 33.638645, 54.413120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619244, 33.863194, 54.600025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548110, -0.028876, 0.835908,
		0.482750, -0.827058, 0.287972,
		0.683029, 0.561375, 0.467258,
		32.824154, 34.031605, 54.740204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323780, 33.369678, 55.137360>,  <32.346031, 33.638645, 54.413120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323780, 33.369678, 55.137360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498535, 33.726467, 55.183846>,  <32.603390, 33.940540, 55.211735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498535, 33.726467, 55.183846>,  <32.323780, 33.369678, 55.137360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498535, 33.726467, 55.183846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584363, 0.183227, 0.790537,
		0.683846, -0.413289, 0.601288,
		0.436892, 0.891976, 0.116211,
		32.629604, 33.994061, 55.218708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460754, 33.493645, 55.924301>,  <32.323780, 33.369678, 55.137360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460754, 33.493645, 55.924301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482010, 33.855076, 55.754257>,  <32.494762, 34.071934, 55.652229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482010, 33.855076, 55.754257>,  <32.460754, 33.493645, 55.924301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482010, 33.855076, 55.754257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576618, 0.375328, 0.725700,
		0.815284, 0.206565, 0.540965,
		0.053135, 0.903582, -0.425108,
		32.497952, 34.126152, 55.626724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665638, 33.940262, 56.429935>,  <32.460754, 33.493645, 55.924301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665638, 33.940262, 56.429935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457157, 34.172150, 56.179409>,  <32.332069, 34.311283, 56.029095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457157, 34.172150, 56.179409>,  <32.665638, 33.940262, 56.429935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457157, 34.172150, 56.179409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543447, 0.340407, 0.767326,
		0.658037, 0.740301, 0.137626,
		-0.521204, 0.579721, -0.626315,
		32.300797, 34.346066, 55.991516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531010, 34.500195, 56.826359>,  <32.665638, 33.940262, 56.429935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531010, 34.500195, 56.826359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281475, 34.578884, 56.523804>,  <32.131752, 34.626099, 56.342270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281475, 34.578884, 56.523804>,  <32.531010, 34.500195, 56.826359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281475, 34.578884, 56.523804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555365, 0.569371, 0.606124,
		0.549905, 0.798196, -0.245943,
		-0.623838, 0.196722, -0.756390,
		32.094322, 34.637901, 56.296886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557331, 35.220249, 56.790901>,  <32.531010, 34.500195, 56.826359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557331, 35.220249, 56.790901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215355, 35.115822, 56.611607>,  <32.010170, 35.053165, 56.504028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215355, 35.115822, 56.611607>,  <32.557331, 35.220249, 56.790901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215355, 35.115822, 56.611607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489416, 0.692314, 0.530259,
		0.171885, 0.672714, -0.719660,
		-0.854943, -0.261069, -0.448236,
		31.958872, 35.037502, 56.477135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288425, 35.846172, 56.683083>,  <32.557331, 35.220249, 56.790901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288425, 35.846172, 56.683083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993570, 35.576607, 56.663189>,  <31.816658, 35.414867, 56.651253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993570, 35.576607, 56.663189>,  <32.288425, 35.846172, 56.683083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993570, 35.576607, 56.663189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604576, 0.624834, 0.494035,
		-0.301858, 0.394241, -0.868018,
		-0.737136, -0.673911, -0.049738,
		31.772430, 35.374432, 56.648266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804535, 36.223370, 56.315418>,  <32.288425, 35.846172, 56.683083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804535, 36.223370, 56.315418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.596514, 35.918961, 56.470539>,  <31.471701, 35.736317, 56.563610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.596514, 35.918961, 56.470539>,  <31.804535, 36.223370, 56.315418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596514, 35.918961, 56.470539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586660, 0.648247, 0.485392,
		-0.620786, 0.024921, -0.783584,
		-0.520052, -0.761022, 0.387803,
		31.440498, 35.690655, 56.586880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051313, 36.358524, 56.255093>,  <31.804535, 36.223370, 56.315418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051313, 36.358524, 56.255093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062723, 36.091530, 56.552723>,  <31.069569, 35.931335, 56.731300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062723, 36.091530, 56.552723>,  <31.051313, 36.358524, 56.255093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062723, 36.091530, 56.552723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621087, 0.571418, 0.536406,
		-0.783222, -0.477440, -0.398264,
		0.028527, -0.667482, 0.744079,
		31.071281, 35.891285, 56.775948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358591, 36.271103, 56.512871>,  <31.051313, 36.358524, 56.255093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358591, 36.271103, 56.512871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.555082, 36.100346, 56.816570>,  <30.672977, 35.997890, 56.998791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.555082, 36.100346, 56.816570>,  <30.358591, 36.271103, 56.512871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555082, 36.100346, 56.816570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611374, 0.451884, 0.649633,
		-0.620417, -0.783301, -0.039015,
		0.491228, -0.426896, 0.759246,
		30.702450, 35.972279, 57.044346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908962, 36.118458, 57.046669>,  <30.358591, 36.271103, 56.512871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908962, 36.118458, 57.046669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.243256, 36.111187, 57.266201>,  <30.443832, 36.106823, 57.397923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.243256, 36.111187, 57.266201>,  <29.908962, 36.118458, 57.046669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243256, 36.111187, 57.266201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422993, 0.616031, 0.664517,
		-0.350179, -0.787512, 0.507148,
		0.835734, -0.018179, 0.548833,
		30.493977, 36.105732, 57.430851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456841, 35.558216, 57.089405>,  <29.908962, 36.118458, 57.046669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456841, 35.558216, 57.089405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.114542, 35.614491, 56.890244>,  <28.909163, 35.648254, 56.770748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.114542, 35.614491, 56.890244>,  <29.456841, 35.558216, 57.089405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114542, 35.614491, 56.890244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380920, -0.479927, -0.790298,
		-0.350137, -0.865955, 0.357107,
		-0.855748, 0.140684, -0.497900,
		28.857819, 35.656696, 56.740875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188263, 34.904388, 56.869873>,  <29.456841, 35.558216, 57.089405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188263, 34.904388, 56.869873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.025717, 35.185810, 56.636677>,  <28.928188, 35.354664, 56.496761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.025717, 35.185810, 56.636677>,  <29.188263, 34.904388, 56.869873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025717, 35.185810, 56.636677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254678, -0.525544, -0.811753,
		-0.877500, -0.478343, 0.034383,
		-0.406366, 0.703556, -0.582988,
		28.903807, 35.396877, 56.461781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207026, 34.568714, 56.316921>,  <29.188263, 34.904388, 56.869873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207026, 34.568714, 56.316921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.056166, 34.917091, 56.190933>,  <28.965649, 35.126118, 56.115341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.056166, 34.917091, 56.190933>,  <29.207026, 34.568714, 56.316921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056166, 34.917091, 56.190933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053429, -0.319062, -0.946227,
		-0.924609, -0.373700, 0.073801,
		-0.377152, 0.870947, -0.314974,
		28.943020, 35.178375, 56.096439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617729, 34.542995, 55.984119>,  <29.207026, 34.568714, 56.316921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617729, 34.542995, 55.984119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.796413, 34.873932, 55.847912>,  <28.903624, 35.072495, 55.766186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.796413, 34.873932, 55.847912>,  <28.617729, 34.542995, 55.984119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796413, 34.873932, 55.847912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140824, -0.440883, -0.886448,
		-0.883527, 0.348031, -0.313457,
		0.446709, 0.827343, -0.340521,
		28.930426, 35.122135, 55.745754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400377, 34.493263, 55.317356>,  <28.617729, 34.542995, 55.984119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400377, 34.493263, 55.317356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.713438, 34.742226, 55.320801>,  <28.901274, 34.891602, 55.322868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.713438, 34.742226, 55.320801>,  <28.400377, 34.493263, 55.317356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713438, 34.742226, 55.320801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305480, -0.372004, -0.876525,
		-0.542348, 0.688643, -0.481280,
		0.782650, 0.622402, 0.008611,
		28.948233, 34.928947, 55.323383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545198, 34.707157, 54.557610>,  <28.400377, 34.493263, 55.317356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545198, 34.707157, 54.557610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.886204, 34.782455, 54.752663>,  <29.090807, 34.827633, 54.869694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.886204, 34.782455, 54.752663>,  <28.545198, 34.707157, 54.557610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886204, 34.782455, 54.752663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502550, -0.551739, -0.665603,
		0.143748, 0.812495, -0.564968,
		0.852514, 0.188246, 0.487631,
		29.141958, 34.838928, 54.898952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022018, 34.963287, 54.069683>,  <28.545198, 34.707157, 54.557610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022018, 34.963287, 54.069683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.275352, 34.844181, 54.355404>,  <29.427353, 34.772717, 54.526836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.275352, 34.844181, 54.355404>,  <29.022018, 34.963287, 54.069683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275352, 34.844181, 54.355404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426520, -0.635860, -0.643243,
		0.645728, 0.712052, -0.275711,
		0.633336, -0.297764, 0.714298,
		29.465353, 34.754852, 54.569695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815475, 35.159119, 53.867561>,  <29.022018, 34.963287, 54.069683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815475, 35.159119, 53.867561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.776594, 34.852562, 54.121552>,  <29.753265, 34.668629, 54.273945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.776594, 34.852562, 54.121552>,  <29.815475, 35.159119, 53.867561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776594, 34.852562, 54.121552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453345, -0.602059, -0.657270,
		0.886019, 0.223971, 0.405965,
		-0.097206, -0.766395, 0.634972,
		29.747433, 34.622643, 54.312042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504551, 34.758026, 53.801903>,  <29.815475, 35.159119, 53.867561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504551, 34.758026, 53.801903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.232771, 34.515194, 53.966732>,  <30.069702, 34.369495, 54.065628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.232771, 34.515194, 53.966732>,  <30.504551, 34.758026, 53.801903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232771, 34.515194, 53.966732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176981, -0.680636, -0.710924,
		0.712058, -0.410108, 0.569899,
		-0.679449, -0.607080, 0.412071,
		30.028936, 34.333069, 54.090355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860952, 34.028286, 53.933842>,  <30.504551, 34.758026, 53.801903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860952, 34.028286, 53.933842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466867, 33.959824, 53.930790>,  <30.230415, 33.918747, 53.928959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466867, 33.959824, 53.930790>,  <30.860952, 34.028286, 53.933842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466867, 33.959824, 53.930790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128342, -0.707764, -0.694694,
		0.113502, -0.685401, 0.719266,
		-0.985214, -0.171161, -0.007633,
		30.171303, 33.908474, 53.928501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768837, 33.305374, 53.832249>,  <30.860952, 34.028286, 53.933842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768837, 33.305374, 53.832249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419359, 33.465744, 53.722034>,  <30.209673, 33.561966, 53.655907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.419359, 33.465744, 53.722034>,  <30.768837, 33.305374, 53.832249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419359, 33.465744, 53.722034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041128, -0.625245, -0.779344,
		-0.484734, -0.669576, 0.562762,
		-0.873694, 0.400920, -0.275539,
		30.157251, 33.586021, 53.639374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293274, 32.693104, 53.694824>,  <30.768837, 33.305374, 53.832249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293274, 32.693104, 53.694824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.148964, 33.017128, 53.509937>,  <30.062378, 33.211544, 53.399006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.148964, 33.017128, 53.509937>,  <30.293274, 32.693104, 53.694824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148964, 33.017128, 53.509937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078160, -0.520106, -0.850518,
		-0.929373, -0.270717, 0.250955,
		-0.360772, 0.810063, -0.462214,
		30.040731, 33.260147, 53.371273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918306, 32.404736, 53.252651>,  <30.293274, 32.693104, 53.694824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918306, 32.404736, 53.252651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933622, 32.780895, 53.117489>,  <29.942812, 33.006592, 53.036392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933622, 32.780895, 53.117489>,  <29.918306, 32.404736, 53.252651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933622, 32.780895, 53.117489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160904, -0.339548, -0.926724,
		-0.986227, -0.018888, -0.164315,
		0.038289, 0.940399, -0.337910,
		29.945108, 33.063015, 53.016117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433718, 32.434071, 52.603119>,  <29.918306, 32.404736, 53.252651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433718, 32.434071, 52.603119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707561, 32.725159, 52.619759>,  <29.871868, 32.899811, 52.629742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707561, 32.725159, 52.619759>,  <29.433718, 32.434071, 52.603119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707561, 32.725159, 52.619759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343675, -0.271929, -0.898856,
		-0.642804, 0.629663, -0.436265,
		0.684610, 0.727722, 0.041602,
		29.912945, 32.943474, 52.632240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.627337, 38.471817, 55.159313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.856068, 38.764126, 55.308437>,  <27.993305, 38.939510, 55.397911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.856068, 38.764126, 55.308437>,  <27.627337, 38.471817, 55.159313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856068, 38.764126, 55.308437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523847, -0.024477, 0.851460,
		0.631347, -0.682185, 0.368815,
		0.571826, 0.730769, 0.372815,
		28.027617, 38.983356, 55.420280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719055, 38.234840, 55.827484>,  <27.627337, 38.471817, 55.159313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719055, 38.234840, 55.827484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.792927, 38.627960, 55.827766>,  <27.837250, 38.863831, 55.827934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.792927, 38.627960, 55.827766>,  <27.719055, 38.234840, 55.827484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792927, 38.627960, 55.827766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470742, 0.087831, 0.877888,
		0.862725, -0.162460, 0.478865,
		0.184680, 0.982798, 0.000703,
		27.848331, 38.922798, 55.827976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061424, 38.372829, 56.442448>,  <27.719055, 38.234840, 55.827484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061424, 38.372829, 56.442448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.906328, 38.724125, 56.330486>,  <27.813271, 38.934902, 56.263309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.906328, 38.724125, 56.330486>,  <28.061424, 38.372829, 56.442448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906328, 38.724125, 56.330486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383769, 0.122284, 0.915297,
		0.838080, 0.462318, 0.289627,
		-0.387742, 0.878242, -0.279907,
		27.790007, 38.987598, 56.246513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149487, 38.820206, 57.048836>,  <28.061424, 38.372829, 56.442448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149487, 38.820206, 57.048836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.869608, 39.002277, 56.828568>,  <27.701681, 39.111523, 56.696407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.869608, 39.002277, 56.828568>,  <28.149487, 38.820206, 57.048836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869608, 39.002277, 56.828568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522648, 0.199389, 0.828905,
		0.487100, 0.867786, 0.098388,
		-0.699695, 0.455182, -0.550669,
		27.659698, 39.138832, 56.663368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902735, 39.468559, 57.477200>,  <28.149487, 38.820206, 57.048836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902735, 39.468559, 57.477200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.623917, 39.342571, 57.219543>,  <27.456625, 39.266979, 57.064949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.623917, 39.342571, 57.219543>,  <27.902735, 39.468559, 57.477200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623917, 39.342571, 57.219543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711742, 0.195080, 0.674809,
		-0.086887, 0.928836, -0.360159,
		-0.697047, -0.314973, -0.644141,
		27.414803, 39.248081, 57.026302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405804, 39.977379, 57.510506>,  <27.902735, 39.468559, 57.477200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405804, 39.977379, 57.510506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.210058, 39.666267, 57.352726>,  <27.092611, 39.479599, 57.258060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.210058, 39.666267, 57.352726>,  <27.405804, 39.977379, 57.510506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210058, 39.666267, 57.352726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753026, 0.148728, 0.640962,
		-0.439861, 0.610690, -0.658468,
		-0.489362, -0.777777, -0.394446,
		27.063250, 39.432934, 57.234394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765436, 40.290527, 57.391216>,  <27.405804, 39.977379, 57.510506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765436, 40.290527, 57.391216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.710012, 39.894466, 57.399189>,  <26.676758, 39.656830, 57.403973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.710012, 39.894466, 57.399189>,  <26.765436, 40.290527, 57.391216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710012, 39.894466, 57.399189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797438, 0.123483, 0.590630,
		-0.587276, 0.065943, -0.806696,
		-0.138561, -0.990153, 0.019933,
		26.668444, 39.597420, 57.405170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098396, 40.170937, 57.117218>,  <26.765436, 40.290527, 57.391216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098396, 40.170937, 57.117218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.179955, 39.847630, 57.338173>,  <26.228889, 39.653645, 57.470745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.179955, 39.847630, 57.338173>,  <26.098396, 40.170937, 57.117218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179955, 39.847630, 57.338173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629824, 0.323671, 0.706087,
		-0.749499, -0.491870, -0.443074,
		0.203893, -0.808270, 0.552383,
		26.241123, 39.605148, 57.503887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444649, 39.887829, 57.263714>,  <26.098396, 40.170937, 57.117218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444649, 39.887829, 57.263714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.681326, 39.709599, 57.532448>,  <25.823332, 39.602661, 57.693687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.681326, 39.709599, 57.532448>,  <25.444649, 39.887829, 57.263714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681326, 39.709599, 57.532448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715263, 0.094274, 0.692468,
		-0.371884, -0.890266, -0.262924,
		0.591694, -0.445577, 0.671833,
		25.858833, 39.575924, 57.733997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047441, 39.382092, 57.522991>,  <25.444649, 39.887829, 57.263714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047441, 39.382092, 57.522991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.333815, 39.421944, 57.799400>,  <25.505638, 39.445854, 57.965248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.333815, 39.421944, 57.799400>,  <25.047441, 39.382092, 57.522991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333815, 39.421944, 57.799400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697496, 0.145540, 0.701653,
		-0.030666, -0.984323, 0.173688,
		0.715932, 0.099629, 0.691025,
		25.548594, 39.451832, 58.006706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852903, 38.945599, 58.003254>,  <25.047441, 39.382092, 57.522991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852903, 38.945599, 58.003254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.084322, 39.238625, 58.146717>,  <25.223173, 39.414440, 58.232796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.084322, 39.238625, 58.146717>,  <24.852903, 38.945599, 58.003254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084322, 39.238625, 58.146717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605473, 0.091086, 0.790636,
		0.546522, -0.674577, 0.496245,
		0.578546, 0.732563, 0.358658,
		25.257885, 39.458393, 58.254314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894363, 38.803307, 58.647793>,  <24.852903, 38.945599, 58.003254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894363, 38.803307, 58.647793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.014412, 39.184826, 58.642090>,  <25.086441, 39.413738, 58.638668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.014412, 39.184826, 58.642090>,  <24.894363, 38.803307, 58.647793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014412, 39.184826, 58.642090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457140, 0.156933, 0.875440,
		0.837227, -0.256220, 0.483117,
		0.300122, 0.953794, -0.014260,
		25.104448, 39.470963, 58.637814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092802, 38.746853, 59.344742>,  <24.894363, 38.803307, 58.647793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092802, 38.746853, 59.344742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.041119, 39.121017, 59.213104>,  <25.010109, 39.345516, 59.134121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.041119, 39.121017, 59.213104>,  <25.092802, 38.746853, 59.344742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041119, 39.121017, 59.213104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400124, 0.254476, 0.880422,
		0.907307, 0.245437, 0.341402,
		-0.129209, 0.935416, -0.329094,
		25.002356, 39.401642, 59.114376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419359, 38.948479, 59.950954>,  <25.092802, 38.746853, 59.344742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419359, 38.948479, 59.950954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.133507, 39.158535, 59.766121>,  <24.961994, 39.284569, 59.655220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.133507, 39.158535, 59.766121>,  <25.419359, 38.948479, 59.950954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133507, 39.158535, 59.766121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555655, -0.024900, 0.831040,
		0.424910, 0.850649, 0.309593,
		-0.714632, 0.525144, -0.462087,
		24.919117, 39.316078, 59.627495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435873, 38.421993, 60.505653>,  <25.419359, 38.948479, 59.950954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.435873, 38.421993, 60.505653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.539627, 38.087685, 60.699230>,  <25.601879, 37.887100, 60.815376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.539627, 38.087685, 60.699230>,  <25.435873, 38.421993, 60.505653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539627, 38.087685, 60.699230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357199, -0.382537, -0.852100,
		0.897289, 0.393888, 0.199313,
		0.259387, -0.835774, 0.483942,
		25.617443, 37.836952, 60.844414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149368, 38.328430, 60.370224>,  <25.435873, 38.421993, 60.505653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149368, 38.328430, 60.370224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.982794, 37.981926, 60.480629>,  <25.882849, 37.774025, 60.546871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.982794, 37.981926, 60.480629>,  <26.149368, 38.328430, 60.370224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982794, 37.981926, 60.480629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447348, -0.459524, -0.767280,
		0.791494, -0.196050, 0.578880,
		-0.416434, -0.866258, 0.276008,
		25.857864, 37.722050, 60.563431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647831, 37.879311, 60.531326>,  <26.149368, 38.328430, 60.370224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647831, 37.879311, 60.531326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.327471, 37.669563, 60.415672>,  <26.135256, 37.543716, 60.346279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.327471, 37.669563, 60.415672>,  <26.647831, 37.879311, 60.531326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327471, 37.669563, 60.415672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519010, -0.367072, -0.771937,
		0.298645, -0.768308, 0.566139,
		-0.800899, -0.524367, -0.289135,
		26.087200, 37.512253, 60.328930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931463, 37.198536, 60.304726>,  <26.647831, 37.879311, 60.531326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931463, 37.198536, 60.304726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.572800, 37.181545, 60.128452>,  <26.357601, 37.171352, 60.022690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.572800, 37.181545, 60.128452>,  <26.931463, 37.198536, 60.304726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572800, 37.181545, 60.128452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399422, -0.506954, -0.763845,
		-0.190961, -0.860926, 0.471530,
		-0.896658, -0.042475, -0.440682,
		26.303802, 37.168804, 59.996246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799637, 36.477852, 60.001503>,  <26.931463, 37.198536, 60.304726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799637, 36.477852, 60.001503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.534233, 36.707233, 59.809296>,  <26.374990, 36.844864, 59.693970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.534233, 36.707233, 59.809296>,  <26.799637, 36.477852, 60.001503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534233, 36.707233, 59.809296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296815, -0.387797, -0.872648,
		-0.686772, -0.721636, 0.087096,
		-0.663510, 0.573459, -0.480520,
		26.335180, 36.879272, 59.665138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500368, 35.997101, 59.582951>,  <26.799637, 36.477852, 60.001503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500368, 35.997101, 59.582951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.423395, 36.357277, 59.426910>,  <26.377211, 36.573383, 59.333286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.423395, 36.357277, 59.426910>,  <26.500368, 35.997101, 59.582951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423395, 36.357277, 59.426910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434492, -0.278264, -0.856614,
		-0.879879, -0.334337, -0.337686,
		-0.192432, 0.900438, -0.390105,
		26.365665, 36.627407, 59.309879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193142, 35.848900, 58.888203>,  <26.500368, 35.997101, 59.582951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193142, 35.848900, 58.888203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.337849, 36.221741, 58.881138>,  <26.424673, 36.445446, 58.876900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.337849, 36.221741, 58.881138>,  <26.193142, 35.848900, 58.888203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337849, 36.221741, 58.881138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612367, -0.251872, -0.749378,
		-0.702944, 0.260285, -0.661907,
		0.361768, 0.932101, -0.017662,
		26.446379, 36.501369, 58.875839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120708, 36.058983, 58.253494>,  <26.193142, 35.848900, 58.888203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120708, 36.058983, 58.253494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.413101, 36.296013, 58.388859>,  <26.588537, 36.438229, 58.470078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.413101, 36.296013, 58.388859>,  <26.120708, 36.058983, 58.253494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413101, 36.296013, 58.388859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568133, -0.253759, -0.782835,
		-0.378011, 0.764502, -0.522153,
		0.730981, 0.592573, 0.338415,
		26.632395, 36.473785, 58.490383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391792, 36.393250, 57.675114>,  <26.120708, 36.058983, 58.253494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391792, 36.393250, 57.675114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.686008, 36.431679, 57.943367>,  <26.862537, 36.454735, 58.104321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.686008, 36.431679, 57.943367>,  <26.391792, 36.393250, 57.675114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686008, 36.431679, 57.943367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676935, -0.143929, -0.721833,
		0.027176, 0.984914, -0.170899,
		0.735541, 0.096071, 0.670634,
		26.906672, 36.460499, 58.144558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837305, 36.717625, 57.271084>,  <26.391792, 36.393250, 57.675114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837305, 36.717625, 57.271084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.068750, 36.601234, 57.575855>,  <27.207619, 36.531399, 57.758720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.068750, 36.601234, 57.575855>,  <26.837305, 36.717625, 57.271084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068750, 36.601234, 57.575855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735026, -0.218834, -0.641754,
		0.353471, 0.931367, 0.087254,
		0.578615, -0.290975, 0.761931,
		27.242334, 36.513943, 57.804436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498520, 36.842636, 57.093582>,  <26.837305, 36.717625, 57.271084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498520, 36.842636, 57.093582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.560143, 36.572796, 57.382355>,  <27.597116, 36.410892, 57.555618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.560143, 36.572796, 57.382355>,  <27.498520, 36.842636, 57.093582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560143, 36.572796, 57.382355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768411, -0.377519, -0.516744,
		0.621137, 0.634348, 0.460208,
		0.154058, -0.674598, 0.721931,
		27.606359, 36.370415, 57.598934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160118, 36.904430, 57.280380>,  <27.498520, 36.842636, 57.093582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160118, 36.904430, 57.280380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.059057, 36.533176, 57.389729>,  <27.998421, 36.310425, 57.455338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.059057, 36.533176, 57.389729>,  <28.160118, 36.904430, 57.280380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059057, 36.533176, 57.389729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733652, -0.367972, -0.571272,
		0.630810, 0.056226, 0.773897,
		-0.252652, -0.928136, 0.273370,
		27.983261, 36.254734, 57.471741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826340, 36.706955, 57.488232>,  <28.160118, 36.904430, 57.280380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826340, 36.706955, 57.488232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.573866, 36.402920, 57.426437>,  <28.422380, 36.220497, 57.389359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.573866, 36.402920, 57.426437>,  <28.826340, 36.706955, 57.488232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573866, 36.402920, 57.426437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658564, -0.419958, -0.624442,
		0.409754, -0.495881, 0.765640,
		-0.631185, -0.760091, -0.154490,
		28.384510, 36.174892, 57.380089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232109, 36.183098, 57.406712>,  <28.826340, 36.706955, 57.488232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232109, 36.183098, 57.406712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.897461, 36.061451, 57.224472>,  <28.696672, 35.988461, 57.115128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.897461, 36.061451, 57.224472>,  <29.232109, 36.183098, 57.406712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897461, 36.061451, 57.224472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547176, -0.424892, -0.721156,
		0.025736, -0.852630, 0.521881,
		-0.836622, -0.304121, -0.455603,
		28.646475, 35.970215, 57.087791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738420, 35.882618, 57.737938>,  <29.232109, 36.183098, 57.406712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738420, 35.882618, 57.737938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.078781, 36.089622, 57.774052>,  <30.282997, 36.213825, 57.795719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.078781, 36.089622, 57.774052>,  <29.738420, 35.882618, 57.737938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078781, 36.089622, 57.774052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308410, 0.352995, 0.883333,
		0.425267, -0.779472, 0.459969,
		0.850900, 0.517512, 0.090279,
		30.334051, 36.244877, 57.801136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924583, 35.869232, 58.441875>,  <29.738420, 35.882618, 57.737938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924583, 35.869232, 58.441875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.129904, 36.181431, 58.299137>,  <30.253096, 36.368752, 58.213493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.129904, 36.181431, 58.299137>,  <29.924583, 35.869232, 58.441875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129904, 36.181431, 58.299137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292389, 0.549973, 0.782329,
		0.806864, -0.297234, 0.510513,
		0.513302, 0.780501, -0.356845,
		30.283895, 36.415581, 58.192085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263767, 36.106232, 58.990406>,  <29.924583, 35.869232, 58.441875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263767, 36.106232, 58.990406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.309542, 36.427753, 58.756897>,  <30.337006, 36.620667, 58.616791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.309542, 36.427753, 58.756897>,  <30.263767, 36.106232, 58.990406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309542, 36.427753, 58.756897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168784, 0.594826, 0.785935,
		0.978987, 0.008593, 0.203740,
		0.114436, 0.803809, -0.583777,
		30.343872, 36.668896, 58.581764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734066, 36.603794, 59.310974>,  <30.263767, 36.106232, 58.990406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734066, 36.603794, 59.310974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495777, 36.799820, 59.056431>,  <30.352804, 36.917435, 58.903706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495777, 36.799820, 59.056431>,  <30.734066, 36.603794, 59.310974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495777, 36.799820, 59.056431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445234, 0.457929, 0.769460,
		0.668493, 0.741711, -0.054604,
		-0.595722, 0.490067, -0.636357,
		30.317060, 36.946838, 58.865524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792284, 37.375282, 59.529087>,  <30.734066, 36.603794, 59.310974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792284, 37.375282, 59.529087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.465784, 37.357246, 59.298714>,  <30.269884, 37.346424, 59.160488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.465784, 37.357246, 59.298714>,  <30.792284, 37.375282, 59.529087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465784, 37.357246, 59.298714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492254, 0.576075, 0.652552,
		0.302360, 0.816153, -0.492416,
		-0.816251, -0.045088, -0.575936,
		30.220909, 37.343719, 59.125935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465513, 38.029819, 59.589310>,  <30.792284, 37.375282, 59.529087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465513, 38.029819, 59.589310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.166405, 37.816978, 59.430458>,  <29.986940, 37.689274, 59.335148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.166405, 37.816978, 59.430458>,  <30.465513, 38.029819, 59.589310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166405, 37.816978, 59.430458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641167, 0.423330, 0.640076,
		-0.172469, 0.733254, -0.657718,
		-0.747770, -0.532100, -0.397127,
		29.942074, 37.657349, 59.311321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000065, 38.477909, 59.333717>,  <30.465513, 38.029819, 59.589310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000065, 38.477909, 59.333717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.795485, 38.144051, 59.415474>,  <29.672735, 37.943733, 59.464527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.795485, 38.144051, 59.415474>,  <30.000065, 38.477909, 59.333717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795485, 38.144051, 59.415474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649905, 0.531325, 0.543432,
		-0.562175, 0.145101, -0.814190,
		-0.511452, -0.834649, 0.204396,
		29.642050, 37.893654, 59.476791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776060, 39.145237, 59.077221>,  <30.000065, 38.477909, 59.333717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776060, 39.145237, 59.077221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012949, 39.465477, 59.113701>,  <30.155083, 39.657619, 59.135590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012949, 39.465477, 59.113701>,  <29.776060, 39.145237, 59.077221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012949, 39.465477, 59.113701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594703, -0.357911, -0.719880,
		-0.543691, 0.480568, -0.688080,
		0.592223, 0.800596, 0.091202,
		30.190617, 39.705654, 59.141060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798243, 39.487217, 58.376270>,  <29.776060, 39.145237, 59.077221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798243, 39.487217, 58.376270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.113684, 39.594109, 58.597790>,  <30.302948, 39.658245, 58.730701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.113684, 39.594109, 58.597790>,  <29.798243, 39.487217, 58.376270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113684, 39.594109, 58.597790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613531, -0.281873, -0.737650,
		-0.041023, 0.921485, -0.386241,
		0.788604, 0.267232, 0.553797,
		30.350266, 39.674278, 58.763927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200396, 39.740005, 57.892162>,  <29.798243, 39.487217, 58.376270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200396, 39.740005, 57.892162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.454363, 39.648975, 58.187481>,  <30.606743, 39.594357, 58.364674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.454363, 39.648975, 58.187481>,  <30.200396, 39.740005, 57.892162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454363, 39.648975, 58.187481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712060, -0.198389, -0.673507,
		0.299745, 0.953337, 0.036086,
		0.634920, -0.227576, 0.738299,
		30.644838, 39.580704, 58.408970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824535, 40.057114, 57.663902>,  <30.200396, 39.740005, 57.892162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824535, 40.057114, 57.663902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.925127, 39.782097, 57.936386>,  <30.985483, 39.617088, 58.099876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.925127, 39.782097, 57.936386>,  <30.824535, 40.057114, 57.663902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925127, 39.782097, 57.936386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725614, -0.331843, -0.602797,
		0.640501, 0.645889, 0.415435,
		0.251481, -0.687538, 0.681212,
		31.000572, 39.575836, 58.140751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553667, 40.104675, 57.806721>,  <30.824535, 40.057114, 57.663902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553667, 40.104675, 57.806721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.461678, 39.733490, 57.924019>,  <31.406485, 39.510777, 57.994396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.461678, 39.733490, 57.924019>,  <31.553667, 40.104675, 57.806721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461678, 39.733490, 57.924019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713384, -0.365699, -0.597785,
		0.661963, 0.071720, 0.746097,
		-0.229974, -0.927966, 0.293243,
		31.392685, 39.455101, 58.011993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170860, 39.776436, 57.929752>,  <31.553667, 40.104675, 57.806721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170860, 39.776436, 57.929752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.957458, 39.438385, 57.916328>,  <31.829418, 39.235554, 57.908272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.957458, 39.438385, 57.916328>,  <32.170860, 39.776436, 57.929752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957458, 39.438385, 57.916328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644429, -0.380466, -0.663293,
		0.547800, -0.375498, 0.747607,
		-0.533504, -0.845132, -0.033563,
		31.797407, 39.184845, 57.906261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666962, 39.197548, 58.020493>,  <32.170860, 39.776436, 57.929752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666962, 39.197548, 58.020493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.333996, 39.043476, 57.861134>,  <32.134216, 38.951035, 57.765518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.333996, 39.043476, 57.861134>,  <32.666962, 39.197548, 58.020493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333996, 39.043476, 57.861134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553563, -0.611044, -0.565856,
		-0.025482, -0.691566, 0.721864,
		-0.832418, -0.385178, -0.398396,
		32.084270, 38.927921, 57.741615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.970213, 42.278675, 59.173637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752373, 42.019093, 58.961124>,  <26.621668, 41.863342, 58.833618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752373, 42.019093, 58.961124>,  <26.970213, 42.278675, 59.173637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752373, 42.019093, 58.961124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608202, 0.130592, -0.782966,
		0.577494, -0.749532, 0.323578,
		-0.544601, -0.648959, -0.531283,
		26.588993, 41.824406, 58.801739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403131, 41.784054, 58.853344>,  <26.970213, 42.278675, 59.173637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403131, 41.784054, 58.853344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073851, 41.794003, 58.626461>,  <26.876282, 41.799973, 58.490334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073851, 41.794003, 58.626461>,  <27.403131, 41.784054, 58.853344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073851, 41.794003, 58.626461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566307, -0.035218, -0.823441,
		-0.040445, -0.999070, 0.014914,
		-0.823201, 0.024858, -0.567205,
		26.826891, 41.801464, 58.456299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504808, 41.307430, 58.311802>,  <27.403131, 41.784054, 58.853344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504808, 41.307430, 58.311802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213530, 41.524773, 58.144714>,  <27.038763, 41.655178, 58.044460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213530, 41.524773, 58.144714>,  <27.504808, 41.307430, 58.311802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213530, 41.524773, 58.144714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430594, -0.111469, -0.895636,
		-0.533215, -0.832067, -0.152796,
		-0.728197, 0.543359, -0.417720,
		26.995070, 41.687778, 58.019398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339769, 41.008057, 57.645504>,  <27.504808, 41.307430, 58.311802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339769, 41.008057, 57.645504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211979, 41.385433, 57.610039>,  <27.135305, 41.611858, 57.588760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211979, 41.385433, 57.610039>,  <27.339769, 41.008057, 57.645504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211979, 41.385433, 57.610039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394258, 0.047252, -0.917784,
		-0.861682, -0.328168, -0.387054,
		-0.319476, 0.943437, -0.088667,
		27.116137, 41.668465, 57.583439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052416, 41.026077, 56.988056>,  <27.339769, 41.008057, 57.645504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052416, 41.026077, 56.988056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091927, 41.414150, 57.076588>,  <27.115633, 41.646996, 57.129707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091927, 41.414150, 57.076588>,  <27.052416, 41.026077, 56.988056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091927, 41.414150, 57.076588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231194, 0.193955, -0.953379,
		-0.967880, 0.145343, -0.205142,
		0.098779, 0.970184, 0.221327,
		27.121561, 41.705204, 57.142986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785366, 41.369522, 56.409328>,  <27.052416, 41.026077, 56.988056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785366, 41.369522, 56.409328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040325, 41.621090, 56.587399>,  <27.193300, 41.772030, 56.694241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040325, 41.621090, 56.587399>,  <26.785366, 41.369522, 56.409328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040325, 41.621090, 56.587399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312064, 0.317547, -0.895421,
		-0.704516, 0.709662, 0.006139,
		0.637396, 0.628923, 0.445177,
		27.231544, 41.809769, 56.720951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857857, 41.808670, 55.866581>,  <26.785366, 41.369522, 56.409328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857857, 41.808670, 55.866581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143358, 41.937538, 56.115341>,  <27.314659, 42.014858, 56.264599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143358, 41.937538, 56.115341>,  <26.857857, 41.808670, 55.866581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143358, 41.937538, 56.115341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425102, 0.506405, -0.750228,
		-0.556636, 0.799850, 0.224493,
		0.713754, 0.322172, 0.621901,
		27.357485, 42.034191, 56.301910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000353, 42.468231, 55.779552>,  <26.857857, 41.808670, 55.866581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000353, 42.468231, 55.779552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342937, 42.343712, 55.944267>,  <27.548489, 42.269001, 56.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342937, 42.343712, 55.944267>,  <27.000353, 42.468231, 55.779552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342937, 42.343712, 55.944267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505376, 0.343071, -0.791768,
		0.105205, 0.886225, 0.451150,
		0.856462, -0.311298, 0.411784,
		27.599876, 42.250324, 56.067802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487120, 42.945503, 55.615795>,  <27.000353, 42.468231, 55.779552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487120, 42.945503, 55.615795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715149, 42.625496, 55.690613>,  <27.851967, 42.433491, 55.735504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715149, 42.625496, 55.690613>,  <27.487120, 42.945503, 55.615795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715149, 42.625496, 55.690613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657803, 0.308034, -0.687321,
		0.492252, 0.514863, 0.701857,
		0.570072, -0.800019, 0.187048,
		27.886171, 42.385490, 55.746727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173275, 43.268425, 55.507240>,  <27.487120, 42.945503, 55.615795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173275, 43.268425, 55.507240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187584, 42.868713, 55.502148>,  <28.196169, 42.628887, 55.499092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187584, 42.868713, 55.502148>,  <28.173275, 43.268425, 55.507240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187584, 42.868713, 55.502148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624819, 0.032307, -0.780101,
		0.779950, 0.019950, 0.625524,
		0.035772, -0.999279, -0.012733,
		28.198315, 42.568932, 55.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825535, 43.101723, 55.602253>,  <28.173275, 43.268425, 55.507240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825535, 43.101723, 55.602253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646387, 42.807541, 55.398876>,  <28.538898, 42.631031, 55.276848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646387, 42.807541, 55.398876>,  <28.825535, 43.101723, 55.602253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646387, 42.807541, 55.398876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662411, 0.109003, -0.741168,
		0.600519, -0.668747, 0.438355,
		-0.447871, -0.735457, -0.508444,
		28.512026, 42.586903, 55.246342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311661, 42.635742, 55.367699>,  <28.825535, 43.101723, 55.602253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311661, 42.635742, 55.367699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990608, 42.645397, 55.129307>,  <28.797976, 42.651192, 54.986271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990608, 42.645397, 55.129307>,  <29.311661, 42.635742, 55.367699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990608, 42.645397, 55.129307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591963, 0.154871, -0.790946,
		0.073208, -0.987640, -0.138593,
		-0.802634, 0.024139, -0.595984,
		28.749819, 42.652637, 54.950512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139038, 42.525471, 55.539452>,  <29.311661, 42.635742, 55.367699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139038, 42.525471, 55.539452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411224, 42.724342, 55.754776>,  <30.574537, 42.843666, 55.883972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411224, 42.724342, 55.754776>,  <30.139038, 42.525471, 55.539452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411224, 42.724342, 55.754776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551090, -0.136970, 0.823128,
		0.482974, -0.856769, 0.180787,
		0.680468, 0.497179, 0.538309,
		30.615364, 42.873497, 55.916267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191891, 42.135933, 56.188675>,  <30.139038, 42.525471, 55.539452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191891, 42.135933, 56.188675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376186, 42.478596, 56.281513>,  <30.486763, 42.684193, 56.337215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376186, 42.478596, 56.281513>,  <30.191891, 42.135933, 56.188675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376186, 42.478596, 56.281513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180279, -0.165722, 0.969554,
		0.869034, -0.488551, 0.078082,
		0.460737, 0.856652, 0.232094,
		30.514408, 42.735592, 56.351143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594748, 42.016376, 56.817852>,  <30.191891, 42.135933, 56.188675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594748, 42.016376, 56.817852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510931, 42.405621, 56.779591>,  <30.460642, 42.639168, 56.756634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510931, 42.405621, 56.779591>,  <30.594748, 42.016376, 56.817852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510931, 42.405621, 56.779591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329934, 0.021719, 0.943754,
		0.920455, 0.229312, 0.316511,
		-0.209540, 0.973111, -0.095649,
		30.448069, 42.697556, 56.750896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937799, 42.283298, 57.357574>,  <30.594748, 42.016376, 56.817852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937799, 42.283298, 57.357574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653107, 42.531338, 57.225567>,  <30.482292, 42.680161, 57.146362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653107, 42.531338, 57.225567>,  <30.937799, 42.283298, 57.357574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653107, 42.531338, 57.225567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305881, 0.149345, 0.940284,
		0.632359, 0.770175, 0.083384,
		-0.711730, 0.620102, -0.330021,
		30.439589, 42.717369, 57.126560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879629, 42.960888, 57.849083>,  <30.937799, 42.283298, 57.357574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879629, 42.960888, 57.849083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529558, 42.928600, 57.658276>,  <30.319515, 42.909229, 57.543793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529558, 42.928600, 57.658276>,  <30.879629, 42.960888, 57.849083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529558, 42.928600, 57.658276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483595, 0.174687, 0.857683,
		0.014101, 0.981310, -0.191915,
		-0.875178, -0.080715, -0.477020,
		30.267004, 42.904385, 57.515171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495472, 43.244995, 58.287987>,  <30.879629, 42.960888, 57.849083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495472, 43.244995, 58.287987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195820, 43.138474, 58.045372>,  <30.016027, 43.074558, 57.899803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195820, 43.138474, 58.045372>,  <30.495472, 43.244995, 58.287987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195820, 43.138474, 58.045372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625533, -0.016886, 0.780015,
		-0.217965, 0.963741, -0.153934,
		-0.749133, -0.266307, -0.606532,
		29.971081, 43.058582, 57.863411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011618, 43.788815, 58.285797>,  <30.495472, 43.244995, 58.287987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011618, 43.788815, 58.285797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845118, 43.434601, 58.203274>,  <29.745218, 43.222073, 58.153759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845118, 43.434601, 58.203274>,  <30.011618, 43.788815, 58.285797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845118, 43.434601, 58.203274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505001, 0.036475, 0.862348,
		-0.756115, 0.463136, -0.462380,
		-0.416250, -0.885536, -0.206305,
		29.720243, 43.168941, 58.141380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304962, 43.893158, 58.548824>,  <30.011618, 43.788815, 58.285797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304962, 43.893158, 58.548824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337809, 43.501289, 58.475616>,  <29.357515, 43.266167, 58.431694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337809, 43.501289, 58.475616>,  <29.304962, 43.893158, 58.548824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337809, 43.501289, 58.475616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668620, -0.190330, 0.718834,
		-0.739057, 0.063342, -0.670659,
		0.082114, -0.979675, -0.183017,
		29.362442, 43.207386, 58.420712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621061, 43.646198, 58.465687>,  <29.304962, 43.893158, 58.548824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621061, 43.646198, 58.465687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873236, 43.362263, 58.591335>,  <29.024540, 43.191902, 58.666725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873236, 43.362263, 58.591335>,  <28.621061, 43.646198, 58.465687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873236, 43.362263, 58.591335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617518, -0.213429, 0.757046,
		-0.470339, -0.671248, -0.572893,
		0.630438, -0.709841, 0.314124,
		29.062366, 43.149311, 58.685574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178493, 43.030884, 58.376904>,  <28.621061, 43.646198, 58.465687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178493, 43.030884, 58.376904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476505, 42.971748, 58.637081>,  <28.655312, 42.936268, 58.793186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476505, 42.971748, 58.637081>,  <28.178493, 43.030884, 58.376904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476505, 42.971748, 58.637081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663967, -0.257739, 0.701939,
		0.063868, -0.954837, -0.290185,
		0.745029, -0.147842, 0.650442,
		28.700014, 42.927395, 58.832214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816164, 42.708897, 58.945900>,  <28.178493, 43.030884, 58.376904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816164, 42.708897, 58.945900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175432, 42.777569, 59.107796>,  <28.390993, 42.818771, 59.204933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175432, 42.777569, 59.107796>,  <27.816164, 42.708897, 58.945900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175432, 42.777569, 59.107796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386935, -0.128394, 0.913124,
		0.208735, -0.976750, -0.048889,
		0.898171, 0.171684, 0.404739,
		28.444883, 42.829075, 59.229218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113586, 42.066444, 59.304424>,  <27.816164, 42.708897, 58.945900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113586, 42.066444, 59.304424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258268, 42.405216, 59.460312>,  <28.345078, 42.608479, 59.553844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258268, 42.405216, 59.460312>,  <28.113586, 42.066444, 59.304424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258268, 42.405216, 59.460312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461647, -0.200469, 0.864115,
		0.809970, -0.492469, 0.318471,
		0.361706, 0.846928, 0.389721,
		28.366779, 42.659294, 59.577229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973038, 41.896946, 59.919018>,  <28.113586, 42.066444, 59.304424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973038, 41.896946, 59.919018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069281, 42.282852, 59.961590>,  <28.127026, 42.514397, 59.987133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069281, 42.282852, 59.961590>,  <27.973038, 41.896946, 59.919018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069281, 42.282852, 59.961590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423170, 0.005583, 0.906033,
		0.873519, -0.263035, 0.409605,
		0.240605, 0.964770, 0.106432,
		28.141462, 42.572285, 59.993519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224380, 41.856770, 60.667419>,  <27.973038, 41.896946, 59.919018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224380, 41.856770, 60.667419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093321, 42.225452, 60.584370>,  <28.014685, 42.446663, 60.534538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093321, 42.225452, 60.584370>,  <28.224380, 41.856770, 60.667419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093321, 42.225452, 60.584370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420936, 0.054334, 0.905462,
		0.845849, 0.384069, 0.370176,
		-0.327647, 0.921704, -0.207627,
		27.995028, 42.501965, 60.522083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010544, 42.062695, 60.561047>,  <28.224380, 41.856770, 60.667419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010544, 42.062695, 60.561047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100170, 41.808468, 60.856575>,  <29.153946, 41.655933, 61.033894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100170, 41.808468, 60.856575>,  <29.010544, 42.062695, 60.561047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100170, 41.808468, 60.856575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688617, -0.433203, -0.581499,
		0.689638, 0.639059, 0.340593,
		0.224066, -0.635562, 0.738820,
		29.167391, 41.617798, 61.078220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851685, 42.040207, 60.610649>,  <29.010544, 42.062695, 60.561047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851685, 42.040207, 60.610649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688000, 41.701233, 60.745937>,  <29.589788, 41.497849, 60.827110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688000, 41.701233, 60.745937>,  <29.851685, 42.040207, 60.610649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688000, 41.701233, 60.745937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623046, -0.530326, -0.574950,
		0.666604, -0.024546, 0.745008,
		-0.409210, -0.847438, 0.338225,
		29.565237, 41.447002, 60.847404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417400, 41.520775, 60.512714>,  <29.851685, 42.040207, 60.610649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417400, 41.520775, 60.512714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085407, 41.304836, 60.568859>,  <29.886211, 41.175274, 60.602547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085407, 41.304836, 60.568859>,  <30.417400, 41.520775, 60.512714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085407, 41.304836, 60.568859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336174, -0.684921, -0.646428,
		0.445106, -0.489338, 0.749953,
		-0.829981, -0.539844, 0.140360,
		29.836412, 41.142883, 60.610966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652952, 40.844410, 60.590576>,  <30.417400, 41.520775, 60.512714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652952, 40.844410, 60.590576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271257, 40.799568, 60.479679>,  <30.042240, 40.772663, 60.413139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271257, 40.799568, 60.479679>,  <30.652952, 40.844410, 60.590576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271257, 40.799568, 60.479679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264605, -0.748466, -0.608098,
		-0.139338, -0.653630, 0.743877,
		-0.954237, -0.112102, -0.277243,
		29.984985, 40.765938, 60.396507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469858, 40.147312, 60.664764>,  <30.652952, 40.844410, 60.590576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469858, 40.147312, 60.664764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188339, 40.262299, 60.404907>,  <30.019428, 40.331291, 60.248993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188339, 40.262299, 60.404907>,  <30.469858, 40.147312, 60.664764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188339, 40.262299, 60.404907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295715, -0.712926, -0.635838,
		-0.645930, -0.639608, 0.416745,
		-0.703795, 0.287469, -0.649642,
		29.977201, 40.348537, 60.210014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073622, 39.524761, 60.376003>,  <30.469858, 40.147312, 60.664764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073622, 39.524761, 60.376003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031910, 39.823528, 60.113327>,  <30.006882, 40.002789, 59.955723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031910, 39.823528, 60.113327>,  <30.073622, 39.524761, 60.376003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031910, 39.823528, 60.113327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283571, -0.610550, -0.739470,
		-0.953264, -0.263330, -0.148135,
		-0.104281, 0.746917, -0.656689,
		30.000626, 40.047604, 59.916321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726177, 39.229645, 59.832199>,  <30.073622, 39.524761, 60.376003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726177, 39.229645, 59.832199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905684, 39.560520, 59.696926>,  <30.013388, 39.759045, 59.615761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905684, 39.560520, 59.696926>,  <29.726177, 39.229645, 59.832199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905684, 39.560520, 59.696926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186735, -0.456875, -0.869710,
		-0.873922, 0.327146, -0.359495,
		0.448766, 0.827189, -0.338183,
		30.040314, 39.808678, 59.595470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319323, 38.655865, 59.385025>,  <29.726177, 39.229645, 59.832199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319323, 38.655865, 59.385025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277386, 38.311440, 59.584053>,  <29.252224, 38.104782, 59.703468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277386, 38.311440, 59.584053>,  <29.319323, 38.655865, 59.385025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277386, 38.311440, 59.584053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603823, 0.452660, 0.656122,
		-0.790193, -0.231653, -0.567389,
		-0.104842, -0.861066, 0.497567,
		29.245934, 38.053120, 59.733322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595684, 38.661819, 59.647350>,  <29.319323, 38.655865, 59.385025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595684, 38.661819, 59.647350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799000, 38.379482, 59.844704>,  <28.920990, 38.210079, 59.963116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799000, 38.379482, 59.844704>,  <28.595684, 38.661819, 59.647350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799000, 38.379482, 59.844704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525161, 0.200009, 0.827166,
		-0.682531, -0.679544, -0.269020,
		0.508289, -0.705845, 0.493382,
		28.951487, 38.167728, 59.992718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078312, 38.234303, 59.908226>,  <28.595684, 38.661819, 59.647350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078312, 38.234303, 59.908226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398727, 38.192303, 60.143959>,  <28.590977, 38.167103, 60.285397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398727, 38.192303, 60.143959>,  <28.078312, 38.234303, 59.908226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398727, 38.192303, 60.143959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580544, 0.103783, 0.807588,
		-0.145957, -0.989042, 0.022179,
		0.801040, -0.104997, 0.589331,
		28.639040, 38.160805, 60.320759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833405, 37.871407, 60.489944>,  <28.078312, 38.234303, 59.908226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833405, 37.871407, 60.489944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186098, 37.943298, 60.664413>,  <28.397715, 37.986435, 60.769096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186098, 37.943298, 60.664413>,  <27.833405, 37.871407, 60.489944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186098, 37.943298, 60.664413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443279, -0.000690, 0.896383,
		0.161408, -0.983716, 0.079063,
		0.881732, 0.179730, 0.436172,
		28.450617, 37.997219, 60.795265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878899, 37.350555, 60.928337>,  <27.833405, 37.871407, 60.489944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878899, 37.350555, 60.928337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099958, 37.653156, 61.068211>,  <28.232594, 37.834717, 61.152134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099958, 37.653156, 61.068211>,  <27.878899, 37.350555, 60.928337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099958, 37.653156, 61.068211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546135, 0.011791, 0.837614,
		0.629537, -0.653880, 0.419671,
		0.552648, 0.756506, 0.349684,
		28.265753, 37.880108, 61.173115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967157, 37.147640, 61.555576>,  <27.878899, 37.350555, 60.928337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967157, 37.147640, 61.555576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052629, 37.538353, 61.561642>,  <28.103912, 37.772781, 61.565281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052629, 37.538353, 61.561642>,  <27.967157, 37.147640, 61.555576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052629, 37.538353, 61.561642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651647, 0.130952, 0.747133,
		0.727803, -0.169530, 0.664502,
		0.213679, 0.976786, 0.015167,
		28.116734, 37.831390, 61.566193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127666, 37.288700, 62.276257>,  <27.967157, 37.147640, 61.555576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127666, 37.288700, 62.276257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018959, 37.626259, 62.091228>,  <27.953735, 37.828796, 61.980209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018959, 37.626259, 62.091228>,  <28.127666, 37.288700, 62.276257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018959, 37.626259, 62.091228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727783, 0.134268, 0.672535,
		0.629662, 0.519426, 0.577688,
		-0.271767, 0.843901, -0.462572,
		27.937429, 37.879429, 61.952457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046705, 37.798199, 62.858170>,  <28.127666, 37.288700, 62.276257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046705, 37.798199, 62.858170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848711, 37.968563, 62.555225>,  <27.729914, 38.070782, 62.373459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848711, 37.968563, 62.555225>,  <28.046705, 37.798199, 62.858170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848711, 37.968563, 62.555225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677187, 0.357050, 0.643377,
		0.544434, 0.831335, 0.111683,
		-0.494985, 0.425907, -0.757359,
		27.700216, 38.096336, 62.328018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845724, 38.463322, 63.106575>,  <28.046705, 37.798199, 62.858170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845724, 38.463322, 63.106575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592113, 38.384468, 62.807468>,  <27.439947, 38.337158, 62.628006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592113, 38.384468, 62.807468>,  <27.845724, 38.463322, 63.106575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592113, 38.384468, 62.807468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768885, 0.057378, 0.636808,
		-0.082629, 0.978697, -0.187949,
		-0.634026, -0.197130, -0.747764,
		27.401905, 38.325329, 62.583138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.048309, 33.765438, 47.557278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.171757, 34.143829, 47.517509>,  <37.245823, 34.370865, 47.493649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.171757, 34.143829, 47.517509>,  <37.048309, 33.765438, 47.557278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171757, 34.143829, 47.517509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719312, 0.300493, 0.626333,
		0.622371, -0.121783, 0.773190,
		0.308615, 0.945976, -0.099418,
		37.264343, 34.427624, 47.487682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147236, 34.110901, 48.292908>,  <37.048309, 33.765438, 47.557278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147236, 34.110901, 48.292908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.111607, 34.405354, 48.024525>,  <37.090229, 34.582024, 47.863495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.111607, 34.405354, 48.024525>,  <37.147236, 34.110901, 48.292908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111607, 34.405354, 48.024525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838290, 0.308389, 0.449628,
		0.537899, 0.602504, 0.589621,
		-0.089070, 0.736129, -0.670955,
		37.084885, 34.626194, 47.823238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056210, 34.678844, 48.754665>,  <37.147236, 34.110901, 48.292908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056210, 34.678844, 48.754665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893471, 34.760422, 48.398491>,  <36.795830, 34.809368, 48.184784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893471, 34.760422, 48.398491>,  <37.056210, 34.678844, 48.754665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893471, 34.760422, 48.398491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807407, 0.375658, 0.454945,
		0.427286, 0.904039, 0.011834,
		-0.406843, 0.203947, -0.890441,
		36.771420, 34.821606, 48.131359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976128, 35.336418, 48.754639>,  <37.056210, 34.678844, 48.754665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976128, 35.336418, 48.754639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713268, 35.204521, 48.483513>,  <36.555553, 35.125381, 48.320839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713268, 35.204521, 48.483513>,  <36.976128, 35.336418, 48.754639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713268, 35.204521, 48.483513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748332, 0.393175, 0.534240,
		0.090339, 0.858303, -0.505129,
		-0.657144, -0.329741, -0.677815,
		36.516125, 35.105598, 48.280167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467831, 35.771618, 48.875393>,  <36.976128, 35.336418, 48.754639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467831, 35.771618, 48.875393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278084, 35.484337, 48.671764>,  <36.164238, 35.311966, 48.549587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278084, 35.484337, 48.671764>,  <36.467831, 35.771618, 48.875393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278084, 35.484337, 48.671764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859497, 0.252786, 0.444257,
		-0.190382, 0.648288, -0.737209,
		-0.474363, -0.718207, -0.509076,
		36.135777, 35.268875, 48.519043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877674, 36.000580, 48.550011>,  <36.467831, 35.771618, 48.875393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877674, 36.000580, 48.550011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765961, 35.616955, 48.531265>,  <35.698933, 35.386780, 48.520016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765961, 35.616955, 48.531265>,  <35.877674, 36.000580, 48.550011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765961, 35.616955, 48.531265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931507, 0.258771, 0.255602,
		-0.233010, 0.115044, -0.965646,
		-0.279286, -0.959063, -0.046868,
		35.682175, 35.329235, 48.517204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182621, 36.062725, 48.388725>,  <35.877674, 36.000580, 48.550011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182621, 36.062725, 48.388725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220730, 35.683289, 48.509457>,  <35.243595, 35.455627, 48.581898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220730, 35.683289, 48.509457>,  <35.182621, 36.062725, 48.388725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220730, 35.683289, 48.509457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954508, -0.000987, 0.298182,
		-0.282555, -0.316508, -0.905531,
		0.095271, -0.948589, 0.301830,
		35.249310, 35.398712, 48.600006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675404, 35.575333, 48.048782>,  <35.182621, 36.062725, 48.388725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675404, 35.575333, 48.048782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.771187, 35.383995, 48.386738>,  <34.828655, 35.269192, 48.589512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.771187, 35.383995, 48.386738>,  <34.675404, 35.575333, 48.048782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771187, 35.383995, 48.386738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958924, 0.019779, 0.282973,
		-0.152071, -0.877947, -0.453964,
		0.239456, -0.478349, 0.844893,
		34.843025, 35.240490, 48.640205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159748, 35.050526, 48.134357>,  <34.675404, 35.575333, 48.048782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159748, 35.050526, 48.134357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310566, 35.096653, 48.501953>,  <34.401054, 35.124329, 48.722511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310566, 35.096653, 48.501953>,  <34.159748, 35.050526, 48.134357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310566, 35.096653, 48.501953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925859, 0.073672, 0.370617,
		-0.024966, -0.990593, 0.134542,
		0.377043, 0.115314, 0.918989,
		34.423679, 35.131248, 48.777649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775909, 34.593384, 48.603874>,  <34.159748, 35.050526, 48.134357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775909, 34.593384, 48.603874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971214, 34.841507, 48.849415>,  <34.088398, 34.990379, 48.996738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971214, 34.841507, 48.849415>,  <33.775909, 34.593384, 48.603874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971214, 34.841507, 48.849415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814992, 0.072580, 0.574908,
		0.312068, -0.780991, 0.540986,
		0.488263, 0.620310, 0.613852,
		34.117695, 35.027599, 49.033569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506348, 34.415012, 49.272476>,  <33.775909, 34.593384, 48.603874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506348, 34.415012, 49.272476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661861, 34.766544, 49.383110>,  <33.755169, 34.977463, 49.449490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661861, 34.766544, 49.383110>,  <33.506348, 34.415012, 49.272476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661861, 34.766544, 49.383110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718544, 0.101324, 0.688061,
		0.576665, -0.466247, 0.670873,
		0.388782, 0.878833, 0.276588,
		33.778496, 35.030193, 49.466087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573120, 34.475357, 49.982639>,  <33.506348, 34.415012, 49.272476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573120, 34.475357, 49.982639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.531189, 34.847889, 49.843132>,  <33.506031, 35.071407, 49.759426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.531189, 34.847889, 49.843132>,  <33.573120, 34.475357, 49.982639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531189, 34.847889, 49.843132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697821, 0.180983, 0.693031,
		0.708560, 0.316028, 0.630927,
		-0.104830, 0.931328, -0.348768,
		33.499741, 35.127289, 49.738503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441860, 34.888302, 50.590530>,  <33.573120, 34.475357, 49.982639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441860, 34.888302, 50.590530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.334057, 35.128742, 50.289589>,  <33.269375, 35.273006, 50.109024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.334057, 35.128742, 50.289589>,  <33.441860, 34.888302, 50.590530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334057, 35.128742, 50.289589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789114, 0.309942, 0.530315,
		0.551961, 0.736619, 0.390808,
		-0.269513, 0.601106, -0.752353,
		33.253204, 35.309074, 50.063885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174156, 35.546455, 50.897980>,  <33.441860, 34.888302, 50.590530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174156, 35.546455, 50.897980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007904, 35.504139, 50.536636>,  <32.908154, 35.478748, 50.319828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007904, 35.504139, 50.536636>,  <33.174156, 35.546455, 50.897980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007904, 35.504139, 50.536636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884202, 0.279774, 0.374051,
		0.213166, 0.954220, -0.209821,
		-0.415629, -0.105789, -0.903361,
		32.883217, 35.472401, 50.265629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823185, 36.210079, 50.813965>,  <33.174156, 35.546455, 50.897980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823185, 36.210079, 50.813965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.665333, 35.956902, 50.547539>,  <32.570621, 35.804993, 50.387684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.665333, 35.956902, 50.547539>,  <32.823185, 36.210079, 50.813965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665333, 35.956902, 50.547539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918445, 0.292934, 0.265797,
		0.026877, 0.716636, -0.696929,
		-0.394634, -0.632947, -0.666064,
		32.546944, 35.767017, 50.347721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149677, 36.572300, 50.437069>,  <32.823185, 36.210079, 50.813965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149677, 36.572300, 50.437069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.114719, 36.176762, 50.388821>,  <32.093742, 35.939438, 50.359871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.114719, 36.176762, 50.388821>,  <32.149677, 36.572300, 50.437069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114719, 36.176762, 50.388821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949774, 0.046190, 0.309508,
		-0.300483, 0.141613, -0.943215,
		-0.087398, -0.988844, -0.120621,
		32.088501, 35.880108, 50.352634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540693, 36.451038, 49.916279>,  <32.149677, 36.572300, 50.437069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540693, 36.451038, 49.916279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.590969, 36.125271, 50.142879>,  <31.621134, 35.929810, 50.278839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.590969, 36.125271, 50.142879>,  <31.540693, 36.451038, 49.916279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590969, 36.125271, 50.142879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986666, -0.043104, 0.156944,
		-0.103399, -0.578677, -0.808975,
		0.125690, -0.814417, 0.566505,
		31.628675, 35.880947, 50.312832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953184, 36.085842, 49.710690>,  <31.540693, 36.451038, 49.916279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953184, 36.085842, 49.710690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.083900, 35.890606, 50.034412>,  <31.162331, 35.773464, 50.228645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.083900, 35.890606, 50.034412>,  <30.953184, 36.085842, 49.710690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083900, 35.890606, 50.034412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933972, -0.297780, 0.197543,
		0.144577, -0.820425, -0.553173,
		0.326793, -0.488088, 0.809306,
		31.181938, 35.744179, 50.277203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608521, 35.365360, 49.601509>,  <30.953184, 36.085842, 49.710690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608521, 35.365360, 49.601509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.723137, 35.439194, 49.977558>,  <30.791906, 35.483494, 50.203186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.723137, 35.439194, 49.977558>,  <30.608521, 35.365360, 49.601509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723137, 35.439194, 49.977558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919983, -0.220907, 0.323777,
		0.267444, -0.957668, 0.106518,
		0.286540, 0.184587, 0.940118,
		30.809099, 35.494568, 50.259594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350513, 34.755512, 50.068726>,  <30.608521, 35.365360, 49.601509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350513, 34.755512, 50.068726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.407591, 35.064095, 50.316753>,  <30.441837, 35.249245, 50.465572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.407591, 35.064095, 50.316753>,  <30.350513, 34.755512, 50.068726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407591, 35.064095, 50.316753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888248, -0.176565, 0.424076,
		0.436640, -0.611291, 0.660052,
		0.142692, 0.771458, 0.620074,
		30.450399, 35.295532, 50.502777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980724, 34.574692, 50.596134>,  <30.350513, 34.755512, 50.068726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980724, 34.574692, 50.596134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.037880, 34.948753, 50.725800>,  <30.072172, 35.173191, 50.803596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.037880, 34.948753, 50.725800>,  <29.980724, 34.574692, 50.596134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037880, 34.948753, 50.725800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803131, -0.081855, 0.590153,
		0.578415, -0.344667, 0.739351,
		0.142887, 0.935149, 0.324159,
		30.080746, 35.229298, 50.823048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841694, 34.500683, 51.253067>,  <29.980724, 34.574692, 50.596134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841694, 34.500683, 51.253067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.792269, 34.883320, 51.147491>,  <29.762613, 35.112904, 51.084145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.792269, 34.883320, 51.147491>,  <29.841694, 34.500683, 51.253067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792269, 34.883320, 51.147491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847385, 0.036700, 0.529709,
		0.516402, 0.289110, 0.806067,
		-0.123562, 0.956592, -0.263939,
		29.755199, 35.170296, 51.068310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574587, 34.875175, 51.900234>,  <29.841694, 34.500683, 51.253067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574587, 34.875175, 51.900234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.458677, 35.081825, 51.577961>,  <29.389132, 35.205814, 51.384598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.458677, 35.081825, 51.577961>,  <29.574587, 34.875175, 51.900234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458677, 35.081825, 51.577961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850152, 0.247734, 0.464617,
		0.439628, 0.819590, 0.367422,
		-0.289773, 0.516624, -0.805687,
		29.371746, 35.236813, 51.336254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214062, 35.492374, 52.103031>,  <29.574587, 34.875175, 51.900234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214062, 35.492374, 52.103031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.084106, 35.508419, 51.725071>,  <29.006132, 35.518047, 51.498295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.084106, 35.508419, 51.725071>,  <29.214062, 35.492374, 52.103031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084106, 35.508419, 51.725071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945752, -0.013404, 0.324613,
		0.000355, 0.999105, 0.042289,
		-0.324889, 0.040110, -0.944901,
		28.986639, 35.520451, 51.441601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612980, 35.816917, 52.224712>,  <29.214062, 35.492374, 52.103031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612980, 35.816917, 52.224712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.587049, 35.666801, 51.854858>,  <28.571491, 35.576733, 51.632946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.587049, 35.666801, 51.854858>,  <28.612980, 35.816917, 52.224712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587049, 35.666801, 51.854858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980884, -0.146403, 0.128191,
		-0.183478, 0.915273, -0.358624,
		-0.064826, -0.375289, -0.924638,
		28.567602, 35.554214, 51.577465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979736, 36.170033, 51.990360>,  <28.612980, 35.816917, 52.224712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979736, 36.170033, 51.990360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.070120, 35.833752, 51.793518>,  <28.124350, 35.631985, 51.675415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.070120, 35.833752, 51.793518>,  <27.979736, 36.170033, 51.990360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070120, 35.833752, 51.793518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953160, -0.295079, 0.066444,
		-0.201069, 0.454040, -0.867997,
		0.225960, -0.840700, -0.492104,
		28.137907, 35.581543, 51.645885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570370, 36.105045, 51.353104>,  <27.979736, 36.170033, 51.990360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570370, 36.105045, 51.353104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.654148, 35.732224, 51.471359>,  <27.704416, 35.508530, 51.542313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.654148, 35.732224, 51.471359>,  <27.570370, 36.105045, 51.353104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654148, 35.732224, 51.471359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976292, -0.182440, 0.116485,
		-0.054635, -0.313027, -0.948171,
		0.209448, -0.932057, 0.295639,
		27.716982, 35.452606, 51.560051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974270, 35.714596, 51.129719>,  <27.570370, 36.105045, 51.353104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974270, 35.714596, 51.129719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.151234, 35.446129, 51.367645>,  <27.257412, 35.285049, 51.510403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.151234, 35.446129, 51.367645>,  <26.974270, 35.714596, 51.129719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151234, 35.446129, 51.367645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890958, -0.404602, 0.206132,
		0.102317, -0.621154, -0.776981,
		0.442407, -0.671166, 0.594820,
		27.283957, 35.244778, 51.546093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560701, 35.191971, 50.999760>,  <26.974270, 35.714596, 51.129719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560701, 35.191971, 50.999760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.729956, 35.119770, 51.354923>,  <26.831509, 35.076450, 51.568020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.729956, 35.119770, 51.354923>,  <26.560701, 35.191971, 50.999760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729956, 35.119770, 51.354923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855453, -0.402525, 0.325842,
		0.298590, -0.897437, -0.324731,
		0.423135, -0.180499, 0.887906,
		26.856895, 35.065620, 51.621296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167383, 34.634960, 51.227886>,  <26.560701, 35.191971, 50.999760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167383, 34.634960, 51.227886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.328213, 34.788929, 51.560192>,  <26.424709, 34.881310, 51.759575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.328213, 34.788929, 51.560192>,  <26.167383, 34.634960, 51.227886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328213, 34.788929, 51.560192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835396, -0.217163, 0.504930,
		0.374770, -0.897037, 0.234246,
		0.402071, 0.384921, 0.830767,
		26.448833, 34.904404, 51.809422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065319, 34.145706, 51.761490>,  <26.167383, 34.634960, 51.227886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065319, 34.145706, 51.761490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.119215, 34.504105, 51.930740>,  <26.151552, 34.719143, 52.032291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.119215, 34.504105, 51.930740>,  <26.065319, 34.145706, 51.761490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119215, 34.504105, 51.930740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861398, -0.105136, 0.496930,
		0.489732, -0.431441, 0.757642,
		0.134741, 0.895994, 0.423131,
		26.159637, 34.772903, 52.057678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862917, 34.018612, 52.417957>,  <26.065319, 34.145706, 51.761490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862917, 34.018612, 52.417957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.868929, 34.418499, 52.410633>,  <25.872536, 34.658432, 52.406239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.868929, 34.418499, 52.410633>,  <25.862917, 34.018612, 52.417957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868929, 34.418499, 52.410633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775025, 0.023215, 0.631504,
		0.631752, 0.004697, 0.775156,
		0.015029, 0.999720, -0.018307,
		25.873438, 34.718414, 52.405140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865150, 34.264988, 53.076855>,  <25.862917, 34.018612, 52.417957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865150, 34.264988, 53.076855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.703325, 34.548954, 52.846252>,  <25.606230, 34.719334, 52.707893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.703325, 34.548954, 52.846252>,  <25.865150, 34.264988, 53.076855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703325, 34.548954, 52.846252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840092, -0.039410, 0.541011,
		0.361350, 0.703189, 0.612334,
		-0.404565, 0.709910, -0.576502,
		25.581955, 34.761929, 52.673302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379900, 34.597538, 53.442688>,  <25.865150, 34.264988, 53.076855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379900, 34.597538, 53.442688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.261703, 34.767551, 53.100452>,  <25.190786, 34.869560, 52.895111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.261703, 34.767551, 53.100452>,  <25.379900, 34.597538, 53.442688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261703, 34.767551, 53.100452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920478, 0.113084, 0.374076,
		0.255747, 0.898088, 0.357815,
		-0.295489, 0.425029, -0.855591,
		25.173058, 34.895061, 52.843777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157034, 35.294418, 53.560276>,  <25.379900, 34.597538, 53.442688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157034, 35.294418, 53.560276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.975012, 35.202686, 53.216106>,  <24.865799, 35.147648, 53.009605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.975012, 35.202686, 53.216106>,  <25.157034, 35.294418, 53.560276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975012, 35.202686, 53.216106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887291, 0.198253, 0.416425,
		0.075083, 0.952945, -0.293699,
		-0.455057, -0.229330, -0.860425,
		24.838495, 35.133888, 52.957977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.833519, 33.234600, 49.291065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597855, 32.912609, 49.319050>,  <34.456455, 32.719414, 49.335842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597855, 32.912609, 49.319050>,  <34.833519, 33.234600, 49.291065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597855, 32.912609, 49.319050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228130, 0.248778, 0.941311,
		-0.775143, 0.538622, -0.330211,
		-0.589160, -0.804982, 0.069963,
		34.421108, 32.671116, 49.340038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158501, 33.418224, 49.599476>,  <34.833519, 33.234600, 49.291065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158501, 33.418224, 49.599476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161369, 33.021793, 49.652725>,  <34.163090, 32.783936, 49.684677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161369, 33.021793, 49.652725>,  <34.158501, 33.418224, 49.599476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161369, 33.021793, 49.652725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275156, 0.126035, 0.953102,
		-0.961373, -0.043462, -0.271796,
		0.007168, -0.991073, 0.133126,
		34.163521, 32.724472, 49.692661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650066, 33.329025, 50.005520>,  <34.158501, 33.418224, 49.599476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650066, 33.329025, 50.005520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855900, 32.988129, 50.043236>,  <33.979401, 32.783592, 50.065865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855900, 32.988129, 50.043236>,  <33.650066, 33.329025, 50.005520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855900, 32.988129, 50.043236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023354, 0.095997, 0.995108,
		-0.857122, -0.514268, 0.029495,
		0.514584, -0.852240, 0.094292,
		34.010277, 32.732456, 50.071522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206688, 33.042458, 50.517361>,  <33.650066, 33.329025, 50.005520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206688, 33.042458, 50.517361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562428, 32.861095, 50.493752>,  <33.775871, 32.752277, 50.479588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562428, 32.861095, 50.493752>,  <33.206688, 33.042458, 50.517361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562428, 32.861095, 50.493752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060249, -0.011752, 0.998114,
		-0.453242, -0.891228, 0.016866,
		0.889349, -0.453404, -0.059022,
		33.829231, 32.725075, 50.476044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292671, 32.389992, 50.932667>,  <33.206688, 33.042458, 50.517361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292671, 32.389992, 50.932667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670654, 32.519428, 50.913284>,  <33.897446, 32.597088, 50.901653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670654, 32.519428, 50.913284>,  <33.292671, 32.389992, 50.932667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670654, 32.519428, 50.913284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042959, 0.024118, 0.998786,
		0.324365, -0.945890, 0.008889,
		0.944956, 0.323589, -0.048457,
		33.954140, 32.616505, 50.898746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587399, 32.066597, 51.455437>,  <33.292671, 32.389992, 50.932667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587399, 32.066597, 51.455437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860325, 32.353794, 51.400406>,  <34.024082, 32.526112, 51.367386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860325, 32.353794, 51.400406>,  <33.587399, 32.066597, 51.455437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860325, 32.353794, 51.400406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063833, 0.128957, 0.989594,
		0.728262, -0.684001, 0.042159,
		0.682320, 0.717992, -0.137576,
		34.065022, 32.569191, 51.359135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064777, 31.934345, 52.018234>,  <33.587399, 32.066597, 51.455437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064777, 31.934345, 52.018234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154377, 32.313080, 51.925861>,  <34.208138, 32.540321, 51.870438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154377, 32.313080, 51.925861>,  <34.064777, 31.934345, 52.018234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154377, 32.313080, 51.925861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099599, 0.257953, 0.961010,
		0.969488, -0.192261, 0.152083,
		0.223995, 0.946835, -0.230933,
		34.221577, 32.597130, 51.856583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508415, 32.208511, 52.495724>,  <34.064777, 31.934345, 52.018234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508415, 32.208511, 52.495724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381405, 32.549931, 52.330490>,  <34.305199, 32.754780, 52.231350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381405, 32.549931, 52.330490>,  <34.508415, 32.208511, 52.495724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381405, 32.549931, 52.330490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060616, 0.453011, 0.889442,
		0.946311, 0.257379, -0.195581,
		-0.317524, 0.853544, -0.413088,
		34.286148, 32.805992, 52.206562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651344, 32.635544, 53.002533>,  <34.508415, 32.208511, 52.495724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651344, 32.635544, 53.002533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422073, 32.858128, 52.761925>,  <34.284512, 32.991676, 52.617561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422073, 32.858128, 52.761925>,  <34.651344, 32.635544, 53.002533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422073, 32.858128, 52.761925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204510, 0.613697, 0.762595,
		0.793501, 0.560118, -0.237956,
		-0.573176, 0.556456, -0.601520,
		34.250122, 33.025063, 52.581470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890720, 33.376217, 53.059757>,  <34.651344, 32.635544, 53.002533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890720, 33.376217, 53.059757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505848, 33.360020, 52.952003>,  <34.274925, 33.350300, 52.887352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505848, 33.360020, 52.952003>,  <34.890720, 33.376217, 53.059757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505848, 33.360020, 52.952003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229166, 0.654962, 0.720075,
		0.147280, 0.754577, -0.639471,
		-0.962181, -0.040492, -0.269386,
		34.217194, 33.347874, 52.871189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668411, 34.135849, 52.954720>,  <34.890720, 33.376217, 53.059757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668411, 34.135849, 52.954720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334110, 33.928036, 53.025822>,  <34.133530, 33.803349, 53.068485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334110, 33.928036, 53.025822>,  <34.668411, 34.135849, 52.954720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334110, 33.928036, 53.025822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244992, 0.642527, 0.726043,
		-0.491417, 0.563246, -0.664277,
		-0.835756, -0.519532, 0.177757,
		34.083382, 33.772175, 53.079147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173199, 34.614826, 53.144409>,  <34.668411, 34.135849, 52.954720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173199, 34.614826, 53.144409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.014339, 34.270664, 53.272148>,  <33.919025, 34.064167, 53.348793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.014339, 34.270664, 53.272148>,  <34.173199, 34.614826, 53.144409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014339, 34.270664, 53.272148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365957, 0.467572, 0.804644,
		-0.841636, 0.202693, -0.500564,
		-0.397145, -0.860402, 0.319349,
		33.895195, 34.012543, 53.367954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977661, 35.329178, 53.191299>,  <34.173199, 34.614826, 53.144409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977661, 35.329178, 53.191299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254524, 35.550045, 53.377213>,  <34.420643, 35.682568, 53.488758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254524, 35.550045, 53.377213>,  <33.977661, 35.329178, 53.191299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254524, 35.550045, 53.377213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678451, -0.278099, -0.679974,
		-0.246207, 0.785982, -0.567110,
		0.692161, 0.552171, 0.464780,
		34.462173, 35.715698, 53.516647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283546, 35.783943, 52.665611>,  <33.977661, 35.329178, 53.191299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283546, 35.783943, 52.665611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529102, 35.760807, 52.980518>,  <34.676437, 35.746925, 53.169464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529102, 35.760807, 52.980518>,  <34.283546, 35.783943, 52.665611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529102, 35.760807, 52.980518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780642, -0.103563, -0.616338,
		0.117182, 0.992940, -0.018423,
		0.613894, -0.057842, 0.787266,
		34.713272, 35.743454, 53.216698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796715, 36.227898, 52.452122>,  <34.283546, 35.783943, 52.665611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796715, 36.227898, 52.452122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951324, 35.997604, 52.740322>,  <35.044090, 35.859428, 52.913242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951324, 35.997604, 52.740322>,  <34.796715, 36.227898, 52.452122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951324, 35.997604, 52.740322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891210, 0.032101, -0.452453,
		0.237365, 0.817005, 0.525511,
		0.386526, -0.575737, 0.720503,
		35.067284, 35.824883, 52.956474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401035, 36.508003, 52.636307>,  <34.796715, 36.227898, 52.452122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401035, 36.508003, 52.636307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425179, 36.127670, 52.757816>,  <35.439663, 35.899471, 52.830723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425179, 36.127670, 52.757816>,  <35.401035, 36.508003, 52.636307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425179, 36.127670, 52.757816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896498, -0.082182, -0.435358,
		0.438917, 0.298608, 0.847458,
		0.060355, -0.950831, 0.303773,
		35.443287, 35.842422, 52.848949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073219, 36.356415, 53.002411>,  <35.401035, 36.508003, 52.636307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073219, 36.356415, 53.002411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954491, 35.998592, 52.868748>,  <35.883255, 35.783897, 52.788548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954491, 35.998592, 52.868748>,  <36.073219, 36.356415, 53.002411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954491, 35.998592, 52.868748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889549, -0.131753, -0.437429,
		0.347279, -0.427090, 0.834860,
		-0.296817, -0.894559, -0.334163,
		35.865444, 35.730225, 52.768497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715702, 36.033882, 52.948460>,  <36.073219, 36.356415, 53.002411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715702, 36.033882, 52.948460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475079, 35.797047, 52.733963>,  <36.330704, 35.654945, 52.605263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475079, 35.797047, 52.733963>,  <36.715702, 36.033882, 52.948460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475079, 35.797047, 52.733963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763504, -0.228740, -0.603937,
		0.234922, -0.772730, 0.589661,
		-0.601559, -0.592087, -0.536246,
		36.294609, 35.619419, 52.573090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124500, 35.470989, 52.707451>,  <36.715702, 36.033882, 52.948460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124500, 35.470989, 52.707451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.802334, 35.384659, 52.486645>,  <36.609035, 35.332863, 52.354160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.802334, 35.384659, 52.486645>,  <37.124500, 35.470989, 52.707451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802334, 35.384659, 52.486645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582151, -0.463054, -0.668342,
		-0.111371, -0.859652, 0.498593,
		-0.805417, -0.215823, -0.552018,
		36.560707, 35.319912, 52.321037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249702, 34.796745, 52.385643>,  <37.124500, 35.470989, 52.707451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249702, 34.796745, 52.385643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982162, 34.979515, 52.151085>,  <36.821640, 35.089176, 52.010349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982162, 34.979515, 52.151085>,  <37.249702, 34.796745, 52.385643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982162, 34.979515, 52.151085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399899, -0.443808, -0.801945,
		-0.626680, -0.770877, 0.114113,
		-0.668845, 0.456929, -0.586398,
		36.781509, 35.116592, 51.975166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102261, 34.309589, 51.947151>,  <37.249702, 34.796745, 52.385643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102261, 34.309589, 51.947151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987000, 34.647675, 51.767117>,  <36.917843, 34.850525, 51.659096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987000, 34.647675, 51.767117>,  <37.102261, 34.309589, 51.947151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987000, 34.647675, 51.767117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308499, -0.363025, -0.879228,
		-0.906529, -0.392204, -0.156141,
		-0.288154, 0.845215, -0.450087,
		36.900555, 34.901237, 51.632092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698002, 34.139214, 51.345303>,  <37.102261, 34.309589, 51.947151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698002, 34.139214, 51.345303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.847691, 34.507969, 51.305157>,  <36.937504, 34.729221, 51.281071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.847691, 34.507969, 51.305157>,  <36.698002, 34.139214, 51.345303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847691, 34.507969, 51.305157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449289, -0.274921, -0.850034,
		-0.811232, 0.273008, -0.517078,
		0.374222, 0.921892, -0.100365,
		36.959957, 34.784538, 51.275047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757557, 34.245544, 50.633018>,  <36.698002, 34.139214, 51.345303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757557, 34.245544, 50.633018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996124, 34.536789, 50.768154>,  <37.139267, 34.711536, 50.849236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996124, 34.536789, 50.768154>,  <36.757557, 34.245544, 50.633018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996124, 34.536789, 50.768154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648957, -0.189716, -0.736792,
		-0.472372, 0.658683, -0.585663,
		0.596423, 0.728110, 0.337840,
		37.175053, 34.755222, 50.869507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966347, 34.615723, 50.047585>,  <36.757557, 34.245544, 50.633018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966347, 34.615723, 50.047585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251820, 34.677086, 50.320969>,  <37.423103, 34.713902, 50.485001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251820, 34.677086, 50.320969>,  <36.966347, 34.615723, 50.047585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251820, 34.677086, 50.320969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699100, -0.216965, -0.681311,
		0.043771, 0.964050, -0.262090,
		0.713683, 0.153406, 0.683465,
		37.465923, 34.723106, 50.526009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457199, 35.124332, 49.825539>,  <36.966347, 34.615723, 50.047585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457199, 35.124332, 49.825539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655243, 34.913723, 50.101982>,  <37.774071, 34.787357, 50.267849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655243, 34.913723, 50.101982>,  <37.457199, 35.124332, 49.825539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655243, 34.913723, 50.101982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709172, -0.214635, -0.671571,
		0.501937, 0.822618, 0.267130,
		0.495111, -0.526528, 0.691111,
		37.803776, 34.755764, 50.309315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102894, 35.679504, 49.750282>,  <37.457199, 35.124332, 49.825539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102894, 35.679504, 49.750282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462444, 35.854275, 49.763687>,  <37.678173, 35.959137, 49.771729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462444, 35.854275, 49.763687>,  <37.102894, 35.679504, 49.750282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462444, 35.854275, 49.763687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255080, 0.583878, -0.770727,
		-0.356318, 0.684238, 0.636283,
		0.898872, 0.436927, 0.033510,
		37.732105, 35.985352, 49.773739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237415, 36.408813, 49.473942>,  <37.102894, 35.679504, 49.750282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237415, 36.408813, 49.473942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940250, 36.406219, 49.206200>,  <36.761951, 36.404663, 49.045555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940250, 36.406219, 49.206200>,  <37.237415, 36.408813, 49.473942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940250, 36.406219, 49.206200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556374, 0.550021, -0.622837,
		0.372199, -0.835126, -0.405009,
		-0.742911, -0.006482, -0.669360,
		36.717377, 36.404274, 49.005390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721149, 36.876873, 49.783115>,  <37.237415, 36.408813, 49.473942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721149, 36.876873, 49.783115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478397, 36.984493, 49.483967>,  <36.332745, 37.049065, 49.304478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478397, 36.984493, 49.483967>,  <36.721149, 36.876873, 49.783115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478397, 36.984493, 49.483967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506047, 0.594784, 0.624619,
		0.612874, 0.757526, -0.224811,
		-0.606879, 0.269048, -0.747871,
		36.296333, 37.065208, 49.259605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713978, 37.540649, 49.687977>,  <36.721149, 36.876873, 49.783115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713978, 37.540649, 49.687977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346920, 37.402271, 49.609749>,  <36.126686, 37.319244, 49.562813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346920, 37.402271, 49.609749>,  <36.713978, 37.540649, 49.687977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346920, 37.402271, 49.609749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380879, 0.625251, 0.681169,
		-0.113367, 0.699561, -0.705523,
		-0.917649, -0.345941, -0.195565,
		36.071625, 37.298489, 49.551079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362740, 38.103668, 49.630722>,  <36.713978, 37.540649, 49.687977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362740, 38.103668, 49.630722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041470, 37.868416, 49.668713>,  <35.848709, 37.727264, 49.691505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041470, 37.868416, 49.668713>,  <36.362740, 38.103668, 49.630722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041470, 37.868416, 49.668713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418262, 0.670202, 0.613095,
		-0.424231, 0.452696, -0.784279,
		-0.803172, -0.588128, 0.094975,
		35.800518, 37.691978, 49.697205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790867, 38.516766, 49.574745>,  <36.362740, 38.103668, 49.630722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790867, 38.516766, 49.574745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644096, 38.201176, 49.771881>,  <35.556034, 38.011822, 49.890163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644096, 38.201176, 49.771881>,  <35.790867, 38.516766, 49.574745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644096, 38.201176, 49.771881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576005, 0.608706, 0.545614,
		-0.730466, -0.083674, -0.677804,
		-0.366930, -0.788971, 0.492836,
		35.534016, 37.964485, 49.919731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269688, 38.832851, 49.753563>,  <35.790867, 38.516766, 49.574745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269688, 38.832851, 49.753563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227173, 38.510941, 49.987156>,  <35.201664, 38.317795, 50.127312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227173, 38.510941, 49.987156>,  <35.269688, 38.832851, 49.753563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227173, 38.510941, 49.987156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565419, 0.532030, 0.630274,
		-0.817928, -0.263208, -0.511582,
		-0.106284, -0.804776, 0.583985,
		35.195290, 38.269508, 50.162350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592682, 38.787090, 49.927727>,  <35.269688, 38.832851, 49.753563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592682, 38.787090, 49.927727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803844, 38.574959, 50.193077>,  <34.930542, 38.447681, 50.352287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803844, 38.574959, 50.193077>,  <34.592682, 38.787090, 49.927727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803844, 38.574959, 50.193077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517660, 0.418303, 0.746359,
		-0.673304, -0.737413, -0.053702,
		0.527911, -0.530326, 0.663374,
		34.962219, 38.415863, 50.392090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146927, 38.475090, 50.393654>,  <34.592682, 38.787090, 49.927727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146927, 38.475090, 50.393654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472012, 38.518356, 50.622673>,  <34.667061, 38.544315, 50.760082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472012, 38.518356, 50.622673>,  <34.146927, 38.475090, 50.393654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472012, 38.518356, 50.622673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546237, 0.483456, 0.684029,
		-0.202811, -0.868660, 0.451993,
		0.812707, 0.108167, 0.572544,
		34.715824, 38.550808, 50.794437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969299, 38.389088, 51.101643>,  <34.146927, 38.475090, 50.393654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969299, 38.389088, 51.101643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315739, 38.589008, 51.105053>,  <34.523602, 38.708961, 51.107098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315739, 38.589008, 51.105053>,  <33.969299, 38.389088, 51.101643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315739, 38.589008, 51.105053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311112, 0.525628, 0.791786,
		0.391252, -0.688419, 0.610739,
		0.866102, 0.499796, 0.008523,
		34.575569, 38.738949, 51.107609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067142, 38.470692, 51.806553>,  <33.969299, 38.389088, 51.101643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067142, 38.470692, 51.806553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306740, 38.746571, 51.643810>,  <34.450497, 38.912098, 51.546165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306740, 38.746571, 51.643810>,  <34.067142, 38.470692, 51.806553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306740, 38.746571, 51.643810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466273, 0.713475, 0.523013,
		0.650999, -0.123575, 0.748952,
		0.598990, 0.689698, -0.406852,
		34.486435, 38.953480, 51.521755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332321, 38.981693, 52.348988>,  <34.067142, 38.470692, 51.806553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332321, 38.981693, 52.348988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355484, 39.174133, 51.999088>,  <34.369381, 39.289597, 51.789146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355484, 39.174133, 51.999088>,  <34.332321, 38.981693, 52.348988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355484, 39.174133, 51.999088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430830, 0.802471, 0.412827,
		0.900573, 0.352962, 0.253745,
		0.057911, 0.481102, -0.874750,
		34.372856, 39.318462, 51.736664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577961, 39.609989, 52.541309>,  <34.332321, 38.981693, 52.348988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577961, 39.609989, 52.541309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446205, 39.665325, 52.167709>,  <34.367149, 39.698528, 51.943550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446205, 39.665325, 52.167709>,  <34.577961, 39.609989, 52.541309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446205, 39.665325, 52.167709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472866, 0.832043, 0.290003,
		0.817251, 0.537183, -0.208651,
		-0.329392, 0.138341, -0.934004,
		34.347389, 39.706829, 51.887508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860577, 40.395275, 52.349937>,  <34.577961, 39.609989, 52.541309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860577, 40.395275, 52.349937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.552841, 40.247986, 52.141117>,  <34.368202, 40.159615, 52.015823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.552841, 40.247986, 52.141117>,  <34.860577, 40.395275, 52.349937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552841, 40.247986, 52.141117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515767, 0.840205, 0.167450,
		0.376973, 0.398082, -0.836314,
		-0.769335, -0.368219, -0.522052,
		34.322041, 40.137520, 51.984501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651470, 40.965958, 51.810955>,  <34.860577, 40.395275, 52.349937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651470, 40.965958, 51.810955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348034, 40.716312, 51.885822>,  <34.165974, 40.566525, 51.930744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348034, 40.716312, 51.885822>,  <34.651470, 40.965958, 51.810955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348034, 40.716312, 51.885822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583310, 0.778492, 0.231731,
		-0.290336, 0.066610, -0.954604,
		-0.758587, -0.624110, 0.187170,
		34.120457, 40.529079, 51.941975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129250, 41.282738, 51.509602>,  <34.651470, 40.965958, 51.810955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129250, 41.282738, 51.509602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942223, 41.018345, 51.744377>,  <33.830006, 40.859711, 51.885242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942223, 41.018345, 51.744377>,  <34.129250, 41.282738, 51.509602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942223, 41.018345, 51.744377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645366, 0.708989, 0.284319,
		-0.604059, -0.245851, -0.758070,
		-0.467563, -0.660978, 0.586935,
		33.801952, 40.820053, 51.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406960, 41.482231, 51.447365>,  <34.129250, 41.282738, 51.509602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406960, 41.482231, 51.447365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424141, 41.271660, 51.787018>,  <33.434448, 41.145317, 51.990810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424141, 41.271660, 51.787018>,  <33.406960, 41.482231, 51.447365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424141, 41.271660, 51.787018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656506, 0.625788, 0.421176,
		-0.753097, -0.575550, -0.318726,
		0.042953, -0.526432, 0.849132,
		33.437027, 41.113731, 52.041756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650826, 41.418335, 51.688454>,  <33.406960, 41.482231, 51.447365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650826, 41.418335, 51.688454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.893970, 41.372177, 52.002697>,  <33.039860, 41.344482, 52.191242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.893970, 41.372177, 52.002697>,  <32.650826, 41.418335, 51.688454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893970, 41.372177, 52.002697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576304, 0.616499, 0.536472,
		-0.546236, -0.778853, 0.308244,
		0.607865, -0.115399, 0.785610,
		33.076328, 41.337559, 52.238380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096367, 41.451031, 52.203331>,  <32.650826, 41.418335, 51.688454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096367, 41.451031, 52.203331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.432117, 41.477787, 52.419098>,  <32.633568, 41.493839, 52.548557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.432117, 41.477787, 52.419098>,  <32.096367, 41.451031, 52.203331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432117, 41.477787, 52.419098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527009, 0.343126, 0.777513,
		-0.133082, -0.936905, 0.323263,
		0.839375, 0.066890, 0.539421,
		32.683929, 41.497852, 52.580925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961145, 41.106136, 52.810478>,  <32.096367, 41.451031, 52.203331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961145, 41.106136, 52.810478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263954, 41.349102, 52.906780>,  <32.445641, 41.494881, 52.964561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263954, 41.349102, 52.906780>,  <31.961145, 41.106136, 52.810478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263954, 41.349102, 52.906780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504370, 0.309006, 0.806304,
		0.415371, -0.731817, 0.540288,
		0.757019, 0.607420, 0.240754,
		32.491058, 41.531326, 52.979008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982315, 41.017673, 53.524731>,  <31.961145, 41.106136, 52.810478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982315, 41.017673, 53.524731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196480, 41.349991, 53.463902>,  <32.324978, 41.549381, 53.427406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196480, 41.349991, 53.463902>,  <31.982315, 41.017673, 53.524731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196480, 41.349991, 53.463902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452936, 0.434406, 0.778550,
		0.712871, -0.347966, 0.608880,
		0.535410, 0.830789, -0.152070,
		32.357101, 41.599228, 53.418282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456348, 41.266888, 54.198997>,  <31.982315, 41.017673, 53.524731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456348, 41.266888, 54.198997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429897, 41.591908, 53.967346>,  <32.414024, 41.786919, 53.828358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429897, 41.591908, 53.967346>,  <32.456348, 41.266888, 54.198997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429897, 41.591908, 53.967346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067525, 0.575420, 0.815065,
		0.995524, 0.093005, 0.016815,
		-0.066130, 0.812552, -0.579125,
		32.410057, 41.835674, 53.793610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906693, 41.790161, 54.549702>,  <32.456348, 41.266888, 54.198997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906693, 41.790161, 54.549702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645470, 41.976410, 54.310799>,  <32.488735, 42.088161, 54.167458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645470, 41.976410, 54.310799>,  <32.906693, 41.790161, 54.549702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645470, 41.976410, 54.310799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368686, 0.493406, 0.787795,
		0.661506, 0.734673, -0.150552,
		-0.653055, 0.465625, -0.597254,
		32.449554, 42.116096, 54.131622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956062, 42.496273, 54.712090>,  <32.906693, 41.790161, 54.549702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956062, 42.496273, 54.712090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603954, 42.497566, 54.522301>,  <32.392689, 42.498341, 54.408428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603954, 42.497566, 54.522301>,  <32.956062, 42.496273, 54.712090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603954, 42.497566, 54.522301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356866, 0.654504, 0.666537,
		0.312696, 0.756052, -0.574984,
		-0.880266, 0.003231, -0.474470,
		32.339874, 42.498535, 54.379959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697090, 43.243145, 54.772144>,  <32.956062, 42.496273, 54.712090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697090, 43.243145, 54.772144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.387596, 43.001564, 54.695641>,  <32.201900, 42.856617, 54.649738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.387596, 43.001564, 54.695641>,  <32.697090, 43.243145, 54.772144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387596, 43.001564, 54.695641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551516, 0.493617, 0.672437,
		-0.311712, 0.625768, -0.715018,
		-0.773735, -0.603951, -0.191255,
		32.155476, 42.820377, 54.638264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111374, 43.713108, 54.854908>,  <32.697090, 43.243145, 54.772144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111374, 43.713108, 54.854908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963648, 43.341419, 54.850075>,  <31.875011, 43.118404, 54.847176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963648, 43.341419, 54.850075>,  <32.111374, 43.713108, 54.854908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963648, 43.341419, 54.850075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683617, 0.262848, 0.680865,
		-0.629501, 0.259715, -0.732309,
		-0.369317, -0.929225, -0.012082,
		31.852852, 43.062653, 54.846451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385151, 43.855606, 54.843479>,  <32.111374, 43.713108, 54.854908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385151, 43.855606, 54.843479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426388, 43.487625, 54.994774>,  <31.451130, 43.266838, 55.085552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426388, 43.487625, 54.994774>,  <31.385151, 43.855606, 54.843479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426388, 43.487625, 54.994774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715746, 0.195451, 0.670453,
		-0.690710, -0.339841, -0.638300,
		0.103091, -0.919949, 0.378240,
		31.457315, 43.211639, 55.108246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743267, 43.779541, 55.066147>,  <31.385151, 43.855606, 54.843479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743267, 43.779541, 55.066147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951571, 43.475502, 55.221619>,  <31.076553, 43.293079, 55.314899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951571, 43.475502, 55.221619>,  <30.743267, 43.779541, 55.066147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951571, 43.475502, 55.221619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522877, 0.075912, 0.849021,
		-0.674840, -0.645365, -0.357903,
		0.520759, -0.760093, 0.388675,
		31.107798, 43.247475, 55.338223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259781, 43.244495, 55.242607>,  <30.743267, 43.779541, 55.066147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259781, 43.244495, 55.242607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.594057, 43.173992, 55.450665>,  <30.794622, 43.131691, 55.575500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.594057, 43.173992, 55.450665>,  <30.259781, 43.244495, 55.242607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594057, 43.173992, 55.450665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541966, -0.111496, 0.832971,
		-0.088825, -0.978009, -0.188703,
		0.835693, -0.176259, 0.520144,
		30.844765, 43.121117, 55.606709>
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
