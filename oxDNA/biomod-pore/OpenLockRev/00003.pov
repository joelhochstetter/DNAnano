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
	<40.302696, 34.129070, 49.236649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452015, 34.265072, 48.891384>,  <40.541607, 34.346672, 48.684227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452015, 34.265072, 48.891384>,  <40.302696, 34.129070, 49.236649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452015, 34.265072, 48.891384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892578, 0.121995, 0.434076,
		0.252889, -0.932478, -0.257938,
		0.373299, 0.340003, -0.863160,
		40.564003, 34.367073, 48.632435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977303, 33.863533, 49.086300>,  <40.302696, 34.129070, 49.236649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977303, 33.863533, 49.086300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979557, 34.209911, 48.886261>,  <40.980907, 34.417740, 48.766235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979557, 34.209911, 48.886261>,  <40.977303, 33.863533, 49.086300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979557, 34.209911, 48.886261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905756, 0.207512, 0.369520,
		0.423762, -0.455051, -0.783169,
		0.005633, 0.865949, -0.500101,
		40.981247, 34.469696, 48.736229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567516, 33.888008, 48.819874>,  <40.977303, 33.863533, 49.086300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567516, 33.888008, 48.819874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481243, 34.278076, 48.839977>,  <41.429478, 34.512115, 48.852039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481243, 34.278076, 48.839977>,  <41.567516, 33.888008, 48.819874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481243, 34.278076, 48.839977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884217, 0.173213, 0.433771,
		0.414293, 0.138002, -0.899620,
		-0.215687, 0.975168, 0.050263,
		41.416538, 34.570625, 48.855057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139893, 34.197456, 48.632343>,  <41.567516, 33.888008, 48.819874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139893, 34.197456, 48.632343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963047, 34.484028, 48.848221>,  <41.856941, 34.655972, 48.977745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963047, 34.484028, 48.848221>,  <42.139893, 34.197456, 48.632343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963047, 34.484028, 48.848221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892863, 0.294081, 0.341047,
		0.085623, 0.632650, -0.769690,
		-0.442115, 0.716429, 0.539690,
		41.830414, 34.698956, 49.010128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618515, 34.719532, 48.634102>,  <42.139893, 34.197456, 48.632343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618515, 34.719532, 48.634102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389297, 34.803665, 48.950932>,  <42.251766, 34.854145, 49.141029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389297, 34.803665, 48.950932>,  <42.618515, 34.719532, 48.634102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389297, 34.803665, 48.950932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784917, 0.418766, 0.456662,
		-0.235643, 0.883400, -0.405064,
		-0.573042, 0.210333, 0.792075,
		42.217384, 34.866764, 49.188553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762077, 35.439381, 48.741539>,  <42.618515, 34.719532, 48.634102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762077, 35.439381, 48.741539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655407, 35.268234, 49.086983>,  <42.591404, 35.165546, 49.294247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655407, 35.268234, 49.086983>,  <42.762077, 35.439381, 48.741539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655407, 35.268234, 49.086983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765071, 0.450963, 0.459673,
		-0.586133, 0.783302, 0.207088,
		-0.266674, -0.427866, 0.863606,
		42.575405, 35.139874, 49.346066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011456, 35.953945, 49.220459>,  <42.762077, 35.439381, 48.741539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011456, 35.953945, 49.220459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920029, 35.626545, 49.431293>,  <42.865173, 35.430107, 49.557793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920029, 35.626545, 49.431293>,  <43.011456, 35.953945, 49.220459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920029, 35.626545, 49.431293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770100, 0.179204, 0.612235,
		-0.595568, 0.545848, 0.589363,
		-0.228571, -0.818496, 0.527086,
		42.851456, 35.380997, 49.589420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083168, 36.205608, 49.796707>,  <43.011456, 35.953945, 49.220459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083168, 36.205608, 49.796707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093113, 35.811600, 49.864967>,  <43.099079, 35.575195, 49.905922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093113, 35.811600, 49.864967>,  <43.083168, 36.205608, 49.796707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093113, 35.811600, 49.864967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795598, 0.122859, 0.593236,
		-0.605314, 0.121018, 0.786734,
		0.024865, -0.985018, 0.170649,
		43.100571, 35.516094, 49.916161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341389, 36.190746, 50.537163>,  <43.083168, 36.205608, 49.796707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341389, 36.190746, 50.537163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366253, 35.822456, 50.383076>,  <43.381172, 35.601482, 50.290623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366253, 35.822456, 50.383076>,  <43.341389, 36.190746, 50.537163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366253, 35.822456, 50.383076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846814, -0.155629, 0.508612,
		-0.528246, -0.357824, 0.770012,
		0.062157, -0.920729, -0.385221,
		43.384899, 35.546238, 50.267509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703224, 35.860359, 51.046108>,  <43.341389, 36.190746, 50.537163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703224, 35.860359, 51.046108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743771, 35.615753, 50.732224>,  <43.768097, 35.468990, 50.543892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743771, 35.615753, 50.732224>,  <43.703224, 35.860359, 51.046108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743771, 35.615753, 50.732224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955903, -0.158672, 0.247131,
		-0.275636, -0.775159, 0.568465,
		0.101366, -0.611516, -0.784712,
		43.774181, 35.432297, 50.496811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016232, 35.330723, 51.336613>,  <43.703224, 35.860359, 51.046108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016232, 35.330723, 51.336613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100506, 35.349277, 50.946033>,  <44.151070, 35.360413, 50.711685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100506, 35.349277, 50.946033>,  <44.016232, 35.330723, 51.336613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100506, 35.349277, 50.946033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977173, -0.037879, 0.209041,
		-0.027289, -0.998205, -0.053312,
		0.210685, 0.046391, -0.976452,
		44.163712, 35.363194, 50.653099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606327, 34.836334, 51.213757>,  <44.016232, 35.330723, 51.336613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606327, 34.836334, 51.213757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607018, 35.068424, 50.887974>,  <44.607433, 35.207680, 50.692505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607018, 35.068424, 50.887974>,  <44.606327, 34.836334, 51.213757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607018, 35.068424, 50.887974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999902, -0.012293, -0.006640,
		-0.013864, -0.814362, -0.580192,
		0.001725, 0.580228, -0.814452,
		44.607536, 35.242493, 50.643639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102493, 34.518826, 50.703518>,  <44.606327, 34.836334, 51.213757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102493, 34.518826, 50.703518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063889, 34.912220, 50.642269>,  <45.040726, 35.148254, 50.605518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063889, 34.912220, 50.642269>,  <45.102493, 34.518826, 50.703518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063889, 34.912220, 50.642269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971037, 0.126815, 0.202496,
		0.218570, -0.129145, -0.967238,
		-0.096509, 0.983483, -0.153122,
		45.034935, 35.207264, 50.596333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635212, 34.643059, 50.209400>,  <45.102493, 34.518826, 50.703518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635212, 34.643059, 50.209400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530548, 34.978222, 50.401001>,  <45.467751, 35.179321, 50.515961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530548, 34.978222, 50.401001>,  <45.635212, 34.643059, 50.209400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530548, 34.978222, 50.401001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958665, 0.168150, 0.229537,
		0.111785, 0.519267, -0.847270,
		-0.261659, 0.837907, 0.479006,
		45.452049, 35.229595, 50.544704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998558, 35.134464, 50.004990>,  <45.635212, 34.643059, 50.209400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998558, 35.134464, 50.004990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882328, 35.280033, 50.358967>,  <45.812592, 35.367374, 50.571354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882328, 35.280033, 50.358967>,  <45.998558, 35.134464, 50.004990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882328, 35.280033, 50.358967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956614, 0.131097, 0.260198,
		-0.021322, 0.922158, -0.386226,
		-0.290576, 0.363921, 0.884944,
		45.795155, 35.389210, 50.624451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435936, 35.764488, 50.031506>,  <45.998558, 35.134464, 50.004990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435936, 35.764488, 50.031506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298103, 35.641983, 50.386463>,  <46.215405, 35.568481, 50.599438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298103, 35.641983, 50.386463>,  <46.435936, 35.764488, 50.031506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298103, 35.641983, 50.386463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933454, -0.011433, 0.358515,
		-0.099653, 0.951879, 0.289819,
		-0.344577, -0.306259, 0.887396,
		46.194729, 35.550106, 50.652683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831005, 36.198116, 50.434322>,  <46.435936, 35.764488, 50.031506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831005, 36.198116, 50.434322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731415, 35.895088, 50.675682>,  <46.671661, 35.713272, 50.820499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731415, 35.895088, 50.675682>,  <46.831005, 36.198116, 50.434322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731415, 35.895088, 50.675682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943940, -0.050373, 0.326250,
		-0.216763, 0.650805, 0.727644,
		-0.248979, -0.757572, 0.603403,
		46.656719, 35.667816, 50.856705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958603, 36.415169, 51.166340>,  <46.831005, 36.198116, 50.434322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958603, 36.415169, 51.166340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934963, 36.015980, 51.175762>,  <46.920780, 35.776466, 51.181416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934963, 36.015980, 51.175762>,  <46.958603, 36.415169, 51.166340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934963, 36.015980, 51.175762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859977, -0.038915, 0.508848,
		-0.506900, 0.050329, 0.860534,
		-0.059098, -0.997974, 0.023555,
		46.917233, 35.716587, 51.182827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.368362, 36.198067, 51.773151>,  <46.958603, 36.415169, 51.166340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.368362, 36.198067, 51.773151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335907, 35.838825, 51.600254>,  <47.316433, 35.623280, 51.496517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335907, 35.838825, 51.600254>,  <47.368362, 36.198067, 51.773151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.335907, 35.838825, 51.600254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861366, -0.281377, 0.422936,
		-0.501462, -0.338001, 0.796424,
		-0.081143, -0.898099, -0.432243,
		47.311565, 35.569397, 51.470581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.586727, 35.742306, 52.262501>,  <47.368362, 36.198067, 51.773151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.586727, 35.742306, 52.262501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627216, 35.546043, 51.916317>,  <47.651508, 35.428288, 51.708607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627216, 35.546043, 51.916317>,  <47.586727, 35.742306, 52.262501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.627216, 35.546043, 51.916317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885135, -0.352740, 0.303499,
		-0.454193, -0.796765, 0.398590,
		0.101219, -0.490653, -0.865456,
		47.657581, 35.398849, 51.656681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.874592, 35.088295, 52.496162>,  <47.586727, 35.742306, 52.262501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.874592, 35.088295, 52.496162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.951466, 35.125999, 52.105434>,  <47.997589, 35.148624, 51.870998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.951466, 35.125999, 52.105434>,  <47.874592, 35.088295, 52.496162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.951466, 35.125999, 52.105434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951051, -0.263357, 0.161697,
		-0.242010, -0.960082, -0.140264,
		0.192182, 0.094266, -0.976822,
		48.009121, 35.154278, 51.812389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.228283, 34.691952, 51.984497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.368156, 35.053375, 52.083527>,  <24.452082, 35.270229, 52.142944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.368156, 35.053375, 52.083527>,  <24.228283, 34.691952, 51.984497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.368156, 35.053375, 52.083527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936267, -0.327585, -0.126852,
		-0.033516, 0.276157, -0.960528,
		0.349686, 0.903563, 0.247578,
		24.473063, 35.324444, 52.157799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779160, 34.788448, 51.528046>,  <24.228283, 34.691952, 51.984497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779160, 34.788448, 51.528046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.830091, 35.078938, 51.798271>,  <24.860651, 35.253231, 51.960407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.830091, 35.078938, 51.798271>,  <24.779160, 34.788448, 51.528046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830091, 35.078938, 51.798271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983458, -0.003968, -0.181095,
		-0.128835, 0.687444, -0.714718,
		0.127328, 0.726227, 0.675561,
		24.868290, 35.296806, 52.000938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.159386, 35.444511, 51.304775>,  <24.779160, 34.788448, 51.528046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.159386, 35.444511, 51.304775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.216633, 35.440647, 51.700638>,  <25.250980, 35.438328, 51.938156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.216633, 35.440647, 51.700638>,  <25.159386, 35.444511, 51.304775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216633, 35.440647, 51.700638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989119, -0.033031, -0.143360,
		0.034074, 0.999408, 0.004825,
		0.143116, -0.009658, 0.989659,
		25.259567, 35.437748, 51.997536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750816, 35.928368, 51.417137>,  <25.159386, 35.444511, 51.304775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750816, 35.928368, 51.417137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.721348, 35.693310, 51.739441>,  <25.703667, 35.552273, 51.932823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.721348, 35.693310, 51.739441>,  <25.750816, 35.928368, 51.417137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721348, 35.693310, 51.739441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997200, -0.033034, 0.067082,
		-0.012803, 0.808443, 0.588435,
		-0.073671, -0.587647, 0.805757,
		25.699247, 35.517017, 51.981167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340691, 36.090950, 51.713333>,  <25.750816, 35.928368, 51.417137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340691, 36.090950, 51.713333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.202312, 35.764000, 51.897602>,  <26.119286, 35.567829, 52.008163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.202312, 35.764000, 51.897602>,  <26.340691, 36.090950, 51.713333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202312, 35.764000, 51.897602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927516, -0.371998, 0.036491,
		0.141543, 0.439907, 0.886819,
		-0.345948, -0.817374, 0.460674,
		26.098528, 35.518787, 52.035805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807196, 36.069130, 52.311127>,  <26.340691, 36.090950, 51.713333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807196, 36.069130, 52.311127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.667402, 35.710743, 52.201508>,  <26.583527, 35.495712, 52.135738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.667402, 35.710743, 52.201508>,  <26.807196, 36.069130, 52.311127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667402, 35.710743, 52.201508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934115, -0.310489, -0.176141,
		0.072729, -0.317548, 0.945449,
		-0.349484, -0.895969, -0.274045,
		26.562557, 35.441952, 52.119293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237642, 35.613068, 52.619720>,  <26.807196, 36.069130, 52.311127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237642, 35.613068, 52.619720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.077219, 35.358616, 52.356056>,  <26.980965, 35.205944, 52.197857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.077219, 35.358616, 52.356056>,  <27.237642, 35.613068, 52.619720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077219, 35.358616, 52.356056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915920, -0.290689, -0.276752,
		-0.015559, -0.714728, 0.699229,
		-0.401060, -0.636132, -0.659156,
		26.956902, 35.167778, 52.158310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546022, 34.993244, 52.792110>,  <27.237642, 35.613068, 52.619720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546022, 34.993244, 52.792110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.430191, 34.969891, 52.409962>,  <27.360691, 34.955879, 52.180672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.430191, 34.969891, 52.409962>,  <27.546022, 34.993244, 52.792110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430191, 34.969891, 52.409962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895580, -0.368746, -0.248922,
		-0.337756, -0.927695, 0.159070,
		-0.289580, -0.058385, -0.955371,
		27.343317, 34.952374, 52.123352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643612, 34.340218, 52.522728>,  <27.546022, 34.993244, 52.792110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643612, 34.340218, 52.522728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.663395, 34.571049, 52.196651>,  <27.675264, 34.709549, 52.001007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.663395, 34.571049, 52.196651>,  <27.643612, 34.340218, 52.522728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663395, 34.571049, 52.196651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873893, -0.420190, -0.244440,
		-0.483596, -0.700298, -0.525089,
		0.049457, 0.577082, -0.815188,
		27.678232, 34.744175, 51.952095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925846, 33.887726, 52.067299>,  <27.643612, 34.340218, 52.522728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925846, 33.887726, 52.067299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.970476, 34.260117, 51.928257>,  <27.997255, 34.483551, 51.844833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.970476, 34.260117, 51.928257>,  <27.925846, 33.887726, 52.067299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970476, 34.260117, 51.928257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889760, -0.249370, -0.382286,
		-0.442582, -0.266627, -0.856172,
		0.111576, 0.930980, -0.347601,
		28.003948, 34.539410, 51.823978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247623, 33.724415, 51.415058>,  <27.925846, 33.887726, 52.067299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247623, 33.724415, 51.415058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.296169, 34.115177, 51.485405>,  <28.325296, 34.349632, 51.527615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.296169, 34.115177, 51.485405>,  <28.247623, 33.724415, 51.415058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296169, 34.115177, 51.485405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946124, -0.060268, -0.318146,
		-0.300198, 0.205006, -0.931586,
		0.121367, 0.976903, 0.175869,
		28.332579, 34.408249, 51.538166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523832, 34.014874, 50.777969>,  <28.247623, 33.724415, 51.415058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523832, 34.014874, 50.777969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.604603, 34.264191, 51.080158>,  <28.653065, 34.413780, 51.261471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.604603, 34.264191, 51.080158>,  <28.523832, 34.014874, 50.777969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604603, 34.264191, 51.080158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971594, -0.030283, -0.234708,
		-0.123413, 0.781403, -0.611702,
		0.201926, 0.623292, 0.755469,
		28.665180, 34.451180, 51.306797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996338, 34.478245, 50.469002>,  <28.523832, 34.014874, 50.777969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996338, 34.478245, 50.469002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.043716, 34.535580, 50.862026>,  <29.072144, 34.569981, 51.097839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.043716, 34.535580, 50.862026>,  <28.996338, 34.478245, 50.469002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043716, 34.535580, 50.862026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972056, 0.185235, -0.144203,
		-0.202674, 0.972184, -0.117390,
		0.118448, 0.143336, 0.982560,
		29.079250, 34.578579, 51.156796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351698, 35.104328, 50.586727>,  <28.996338, 34.478245, 50.469002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351698, 35.104328, 50.586727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.421747, 34.878101, 50.909084>,  <29.463776, 34.742367, 51.102501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.421747, 34.878101, 50.909084>,  <29.351698, 35.104328, 50.586727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421747, 34.878101, 50.909084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982155, 0.157371, -0.102982,
		-0.068582, 0.809551, 0.583030,
		0.175121, -0.565564, 0.805897,
		29.474283, 34.708431, 51.150852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819675, 35.384476, 50.973816>,  <29.351698, 35.104328, 50.586727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819675, 35.384476, 50.973816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.859800, 35.007660, 51.101875>,  <29.883875, 34.781570, 51.178711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.859800, 35.007660, 51.101875>,  <29.819675, 35.384476, 50.973816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859800, 35.007660, 51.101875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983706, 0.045651, -0.173892,
		0.149199, 0.332375, 0.931271,
		0.100311, -0.942042, 0.320148,
		29.889893, 34.725048, 51.197918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373753, 35.482712, 51.358341>,  <29.819675, 35.384476, 50.973816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373753, 35.482712, 51.358341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.349169, 35.087475, 51.301922>,  <30.334419, 34.850334, 51.268070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.349169, 35.087475, 51.301922>,  <30.373753, 35.482712, 51.358341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349169, 35.087475, 51.301922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996355, -0.052357, -0.067348,
		0.059161, -0.144673, 0.987709,
		-0.061457, -0.988093, -0.141049,
		30.330732, 34.791046, 51.259605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933668, 35.225231, 51.685783>,  <30.373753, 35.482712, 51.358341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933668, 35.225231, 51.685783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.827246, 34.948402, 51.417377>,  <30.763391, 34.782307, 51.256336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.827246, 34.948402, 51.417377>,  <30.933668, 35.225231, 51.685783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827246, 34.948402, 51.417377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939240, -0.029496, -0.341991,
		0.216889, -0.721229, 0.657866,
		-0.266058, -0.692068, -0.671010,
		30.747429, 34.740784, 51.216076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455072, 34.747890, 51.825203>,  <30.933668, 35.225231, 51.685783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455072, 34.747890, 51.825203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.309929, 34.667320, 51.461277>,  <31.222843, 34.618977, 51.242920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.309929, 34.667320, 51.461277>,  <31.455072, 34.747890, 51.825203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309929, 34.667320, 51.461277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931733, -0.063264, -0.357592,
		0.014470, -0.977458, 0.210631,
		-0.362857, -0.201426, -0.909814,
		31.201073, 34.606892, 51.188332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715000, 34.064373, 51.653091>,  <31.455072, 34.747890, 51.825203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715000, 34.064373, 51.653091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.627575, 34.254913, 51.312428>,  <31.575121, 34.369236, 51.108028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.627575, 34.254913, 51.312428>,  <31.715000, 34.064373, 51.653091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627575, 34.254913, 51.312428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940509, -0.129838, -0.313983,
		-0.260143, -0.869618, -0.419630,
		-0.218562, 0.476346, -0.851660,
		31.562006, 34.397816, 51.056931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021481, 33.669430, 51.053982>,  <31.715000, 34.064373, 51.653091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021481, 33.669430, 51.053982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.959429, 34.030849, 50.894211>,  <31.922197, 34.247700, 50.798347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.959429, 34.030849, 50.894211>,  <32.021481, 33.669430, 51.053982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959429, 34.030849, 50.894211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763710, -0.146784, -0.628650,
		-0.626643, -0.402569, -0.667276,
		-0.155129, 0.903545, -0.399427,
		31.912889, 34.301914, 50.774384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363533, 33.615406, 50.291771>,  <32.021481, 33.669430, 51.053982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363533, 33.615406, 50.291771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.331497, 34.006496, 50.369373>,  <32.312275, 34.241150, 50.415936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.331497, 34.006496, 50.369373>,  <32.363533, 33.615406, 50.291771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331497, 34.006496, 50.369373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629815, 0.200492, -0.750424,
		-0.772605, 0.062090, -0.631843,
		-0.080086, 0.977726, 0.194006,
		32.307472, 34.299812, 50.427574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.398808, 35.348194, 34.644718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.283777, 35.052742, 34.888596>,  <24.214758, 34.875469, 35.034924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.283777, 35.052742, 34.888596>,  <24.398808, 35.348194, 34.644718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283777, 35.052742, 34.888596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709293, 0.263521, 0.653804,
		-0.643586, 0.620471, 0.448122,
		-0.287577, -0.738629, 0.609694,
		24.197504, 34.831154, 35.071503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297173, 35.505211, 35.457962>,  <24.398808, 35.348194, 34.644718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297173, 35.505211, 35.457962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.439154, 35.150394, 35.339870>,  <24.524342, 34.937504, 35.269016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.439154, 35.150394, 35.339870>,  <24.297173, 35.505211, 35.457962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.439154, 35.150394, 35.339870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785125, 0.111404, 0.609236,
		-0.507531, -0.448039, 0.735985,
		0.354953, -0.887046, -0.295225,
		24.545639, 34.884281, 35.251305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491135, 35.086201, 35.984119>,  <24.297173, 35.505211, 35.457962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491135, 35.086201, 35.984119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.726532, 35.027672, 35.666058>,  <24.867771, 34.992554, 35.475220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.726532, 35.027672, 35.666058>,  <24.491135, 35.086201, 35.984119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726532, 35.027672, 35.666058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790500, 0.310512, 0.527913,
		0.169659, -0.939240, 0.298402,
		0.588494, -0.146321, -0.795151,
		24.903080, 34.983776, 35.427513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888826, 34.548870, 36.179111>,  <24.491135, 35.086201, 35.984119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888826, 34.548870, 36.179111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.085590, 34.791935, 35.929707>,  <25.203648, 34.937775, 35.780064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.085590, 34.791935, 35.929707>,  <24.888826, 34.548870, 36.179111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085590, 34.791935, 35.929707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679003, 0.180503, 0.711599,
		0.544959, -0.773410, -0.323815,
		0.491908, 0.607664, -0.623515,
		25.233164, 34.974236, 35.742653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449980, 34.270691, 35.970470>,  <24.888826, 34.548870, 36.179111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449980, 34.270691, 35.970470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.490757, 34.668560, 35.976482>,  <25.515223, 34.907284, 35.980087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.490757, 34.668560, 35.976482>,  <25.449980, 34.270691, 35.970470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490757, 34.668560, 35.976482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744976, -0.086344, 0.661480,
		0.659257, -0.056237, -0.749812,
		0.101941, 0.994677, 0.015028,
		25.521339, 34.966965, 35.980991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162762, 34.454624, 35.768116>,  <25.449980, 34.270691, 35.970470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162762, 34.454624, 35.768116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.006454, 34.731903, 36.010365>,  <25.912670, 34.898270, 36.155716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.006454, 34.731903, 36.010365>,  <26.162762, 34.454624, 35.768116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006454, 34.731903, 36.010365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810163, -0.053320, 0.583774,
		0.436960, 0.718777, -0.540764,
		-0.390770, 0.693193, 0.605626,
		25.889223, 34.939861, 36.192051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675770, 34.991009, 35.836384>,  <26.162762, 34.454624, 35.768116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675770, 34.991009, 35.836384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.419027, 34.965977, 36.142090>,  <26.264982, 34.950958, 36.325516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.419027, 34.965977, 36.142090>,  <26.675770, 34.991009, 35.836384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419027, 34.965977, 36.142090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751494, -0.249629, 0.610690,
		0.152569, 0.966318, 0.207251,
		-0.641856, -0.062576, 0.764268,
		26.226471, 34.947205, 36.371368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787598, 35.532150, 36.364105>,  <26.675770, 34.991009, 35.836384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787598, 35.532150, 36.364105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.609905, 35.244427, 36.577744>,  <26.503290, 35.071793, 36.705925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.609905, 35.244427, 36.577744>,  <26.787598, 35.532150, 36.364105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609905, 35.244427, 36.577744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772878, -0.006170, 0.634525,
		-0.453123, 0.694664, 0.558678,
		-0.444229, -0.719308, 0.534095,
		26.476637, 35.028633, 36.737972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773464, 35.626793, 37.001926>,  <26.787598, 35.532150, 36.364105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773464, 35.626793, 37.001926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.737787, 35.230000, 37.037724>,  <26.716381, 34.991924, 37.059200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.737787, 35.230000, 37.037724>,  <26.773464, 35.626793, 37.001926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737787, 35.230000, 37.037724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692993, 0.002730, 0.720939,
		-0.715406, 0.126320, 0.687196,
		-0.089193, -0.991986, 0.089492,
		26.711029, 34.932404, 37.064571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593975, 35.358402, 37.791008>,  <26.773464, 35.626793, 37.001926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593975, 35.358402, 37.791008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.774961, 35.067261, 37.584900>,  <26.883553, 34.892574, 37.461235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.774961, 35.067261, 37.584900>,  <26.593975, 35.358402, 37.791008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774961, 35.067261, 37.584900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729137, -0.030729, 0.683677,
		-0.513453, -0.685039, 0.516805,
		0.452465, -0.727858, -0.515265,
		26.910702, 34.848904, 37.430321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885477, 34.768845, 38.234489>,  <26.593975, 35.358402, 37.791008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885477, 34.768845, 38.234489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093266, 34.755363, 37.892960>,  <27.217937, 34.747276, 37.688042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093266, 34.755363, 37.892960>,  <26.885477, 34.768845, 38.234489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093266, 34.755363, 37.892960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812547, -0.289727, 0.505791,
		-0.264420, -0.956516, -0.123123,
		0.519470, -0.033698, -0.853824,
		27.249105, 34.745255, 37.636814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227676, 34.078346, 38.107029>,  <26.885477, 34.768845, 38.234489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227676, 34.078346, 38.107029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.388636, 34.416973, 37.967655>,  <27.485210, 34.620148, 37.884033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.388636, 34.416973, 37.967655>,  <27.227676, 34.078346, 38.107029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388636, 34.416973, 37.967655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873369, -0.240915, 0.423304,
		0.274412, -0.474645, -0.836307,
		0.402398, 0.846565, -0.348430,
		27.509356, 34.670944, 37.863125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533329, 33.908741, 38.785114>,  <27.227676, 34.078346, 38.107029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533329, 33.908741, 38.785114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.206161, 33.988712, 39.000908>,  <27.009861, 34.036697, 39.130383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.206161, 33.988712, 39.000908>,  <27.533329, 33.908741, 38.785114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206161, 33.988712, 39.000908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091824, -0.880297, 0.465452,
		0.567962, 0.430238, 0.701651,
		-0.817917, 0.199931, 0.539481,
		26.960787, 34.048691, 39.162754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639055, 33.817226, 39.468349>,  <27.533329, 33.908741, 38.785114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639055, 33.817226, 39.468349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.246672, 33.765427, 39.410461>,  <27.011242, 33.734348, 39.375729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.246672, 33.765427, 39.410461>,  <27.639055, 33.817226, 39.468349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246672, 33.765427, 39.410461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018176, -0.680718, 0.732320,
		-0.193351, 0.721009, 0.665404,
		-0.980961, -0.129500, -0.144723,
		26.952383, 33.726578, 39.367046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905855, 34.237991, 40.141888>,  <27.639055, 33.817226, 39.468349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905855, 34.237991, 40.141888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061373, 34.178101, 40.505520>,  <28.154684, 34.142166, 40.723698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061373, 34.178101, 40.505520>,  <27.905855, 34.237991, 40.141888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061373, 34.178101, 40.505520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908947, 0.223527, -0.351925,
		-0.150512, 0.963129, 0.222998,
		0.388796, -0.149724, 0.909077,
		28.178011, 34.133183, 40.778244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496719, 34.697090, 40.100380>,  <27.905855, 34.237991, 40.141888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496719, 34.697090, 40.100380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556799, 34.433033, 40.394768>,  <28.592846, 34.274597, 40.571400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556799, 34.433033, 40.394768>,  <28.496719, 34.697090, 40.100380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556799, 34.433033, 40.394768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988122, 0.075760, -0.133702,
		0.032505, 0.747311, 0.663679,
		0.150198, -0.660142, 0.735971,
		28.601858, 34.234989, 40.615559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056072, 34.947197, 40.551826>,  <28.496719, 34.697090, 40.100380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056072, 34.947197, 40.551826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.004866, 34.553490, 40.600548>,  <28.974142, 34.317265, 40.629780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.004866, 34.553490, 40.600548>,  <29.056072, 34.947197, 40.551826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004866, 34.553490, 40.600548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977432, -0.146019, -0.152657,
		0.168040, 0.099513, 0.980744,
		-0.128016, -0.984264, 0.121804,
		28.966461, 34.258209, 40.637089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496246, 35.305248, 40.988327>,  <29.056072, 34.947197, 40.551826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496246, 35.305248, 40.988327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.314903, 35.500992, 41.286320>,  <29.206099, 35.618439, 41.465115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.314903, 35.500992, 41.286320>,  <29.496246, 35.305248, 40.988327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314903, 35.500992, 41.286320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771474, -0.203188, 0.602945,
		0.446426, 0.848083, -0.285409,
		-0.453356, 0.489356, 0.744983,
		29.178896, 35.647800, 41.509815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043081, 35.710400, 41.361622>,  <29.496246, 35.305248, 40.988327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043081, 35.710400, 41.361622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.738075, 35.586113, 41.588612>,  <29.555073, 35.511539, 41.724804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.738075, 35.586113, 41.588612>,  <30.043081, 35.710400, 41.361622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738075, 35.586113, 41.588612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645987, -0.414011, 0.641323,
		0.035670, 0.855599, 0.516409,
		-0.762514, -0.310718, 0.567474,
		29.509321, 35.492897, 41.758854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187616, 35.893555, 41.998226>,  <30.043081, 35.710400, 41.361622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187616, 35.893555, 41.998226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.950813, 35.572685, 42.029305>,  <29.808731, 35.380161, 42.047951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.950813, 35.572685, 42.029305>,  <30.187616, 35.893555, 41.998226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950813, 35.572685, 42.029305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548300, -0.330234, 0.768318,
		-0.590670, 0.497451, 0.635335,
		-0.592010, -0.802177, 0.077693,
		29.773211, 35.332031, 42.052612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969204, 35.946503, 42.627579>,  <30.187616, 35.893555, 41.998226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969204, 35.946503, 42.627579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.927895, 35.572277, 42.492489>,  <29.903109, 35.347740, 42.411434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.927895, 35.572277, 42.492489>,  <29.969204, 35.946503, 42.627579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927895, 35.572277, 42.492489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578035, -0.332769, 0.745078,
		-0.809450, -0.118268, 0.575155,
		-0.103275, -0.935563, -0.337722,
		29.896912, 35.291607, 42.391171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484781, 35.455574, 43.041935>,  <29.969204, 35.946503, 42.627579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484781, 35.455574, 43.041935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811016, 35.300446, 42.870163>,  <30.006758, 35.207367, 42.767097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811016, 35.300446, 42.870163>,  <29.484781, 35.455574, 43.041935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811016, 35.300446, 42.870163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303016, -0.345992, 0.887959,
		-0.492948, -0.854333, -0.164671,
		0.815588, -0.387820, -0.429433,
		30.055693, 35.184101, 42.741333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630800, 34.622517, 43.143661>,  <29.484781, 35.455574, 43.041935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630800, 34.622517, 43.143661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958551, 34.848370, 43.104042>,  <30.155203, 34.983879, 43.080269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958551, 34.848370, 43.104042>,  <29.630800, 34.622517, 43.143661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958551, 34.848370, 43.104042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393526, -0.428388, 0.813401,
		0.416838, -0.705463, -0.573208,
		0.819380, 0.564629, -0.099050,
		30.204365, 35.017757, 43.074326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189907, 34.238991, 43.451420>,  <29.630800, 34.622517, 43.143661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189907, 34.238991, 43.451420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266323, 34.630733, 43.477840>,  <30.312172, 34.865780, 43.493694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266323, 34.630733, 43.477840>,  <30.189907, 34.238991, 43.451420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266323, 34.630733, 43.477840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593988, -0.168914, 0.786541,
		0.781461, -0.111027, -0.613996,
		0.191040, 0.979357, 0.066051,
		30.323635, 34.924541, 43.497654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921177, 34.271660, 43.597713>,  <30.189907, 34.238991, 43.451420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921177, 34.271660, 43.597713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702991, 34.575600, 43.739193>,  <30.572081, 34.757961, 43.824081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702991, 34.575600, 43.739193>,  <30.921177, 34.271660, 43.597713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702991, 34.575600, 43.739193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495863, -0.047666, 0.867092,
		0.675716, 0.648353, -0.350779,
		-0.545462, 0.759846, 0.353703,
		30.539352, 34.803555, 43.845303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360889, 34.854908, 43.850471>,  <30.921177, 34.271660, 43.597713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360889, 34.854908, 43.850471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.034761, 34.839169, 44.081539>,  <30.839085, 34.829723, 44.220181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.034761, 34.839169, 44.081539>,  <31.360889, 34.854908, 43.850471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034761, 34.839169, 44.081539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578009, 0.003325, 0.816024,
		-0.034029, 0.999220, 0.020033,
		-0.815321, -0.039347, 0.577671,
		30.790165, 34.827366, 44.254841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306904, 35.589466, 44.266712>,  <31.360889, 34.854908, 43.850471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306904, 35.589466, 44.266712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.198833, 35.236649, 44.421116>,  <31.133991, 35.024960, 44.513760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.198833, 35.236649, 44.421116>,  <31.306904, 35.589466, 44.266712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198833, 35.236649, 44.421116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688344, 0.103368, 0.717982,
		-0.673192, 0.459692, 0.579220,
		-0.270178, -0.882042, 0.386013,
		31.117781, 34.972034, 44.536919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727707, 35.576473, 44.822433>,  <31.306904, 35.589466, 44.266712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727707, 35.576473, 44.822433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525200, 35.232430, 44.847443>,  <31.403696, 35.026005, 44.862450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525200, 35.232430, 44.847443>,  <31.727707, 35.576473, 44.822433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525200, 35.232430, 44.847443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567532, -0.277707, 0.775104,
		-0.649309, 0.427894, 0.628732,
		-0.506265, -0.860108, 0.062526,
		31.373320, 34.974396, 44.866199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232578, 35.503300, 45.298111>,  <31.727707, 35.576473, 44.822433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232578, 35.503300, 45.298111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453613, 35.179264, 45.219723>,  <31.586235, 34.984844, 45.172691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453613, 35.179264, 45.219723>,  <31.232578, 35.503300, 45.298111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453613, 35.179264, 45.219723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483874, 0.120377, 0.866819,
		-0.678610, -0.573817, 0.458500,
		0.552588, -0.810089, -0.195966,
		31.619390, 34.936237, 45.160934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121481, 35.026192, 45.811901>,  <31.232578, 35.503300, 45.298111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121481, 35.026192, 45.811901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492039, 35.003914, 45.662937>,  <31.714375, 34.990547, 45.573559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492039, 35.003914, 45.662937>,  <31.121481, 35.026192, 45.811901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492039, 35.003914, 45.662937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376220, 0.178355, 0.909202,
		0.015785, -0.982389, 0.186180,
		0.926396, -0.055693, -0.372409,
		31.769958, 34.987206, 45.551216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526886, 34.550320, 46.137054>,  <31.121481, 35.026192, 45.811901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526886, 34.550320, 46.137054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780809, 34.822392, 45.990425>,  <31.933163, 34.985634, 45.902447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780809, 34.822392, 45.990425>,  <31.526886, 34.550320, 46.137054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780809, 34.822392, 45.990425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393121, 0.124111, 0.911072,
		0.665187, -0.722464, -0.188606,
		0.634808, 0.680179, -0.366573,
		31.971252, 35.026443, 45.880455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235550, 34.358181, 46.122986>,  <31.526886, 34.550320, 46.137054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235550, 34.358181, 46.122986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196777, 34.752235, 46.179718>,  <32.173515, 34.988667, 46.213757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196777, 34.752235, 46.179718>,  <32.235550, 34.358181, 46.122986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196777, 34.752235, 46.179718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576869, -0.060522, 0.814592,
		0.811066, 0.160776, -0.562427,
		-0.096928, 0.985134, 0.141834,
		32.167698, 35.047775, 46.222267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896255, 34.577976, 46.355373>,  <32.235550, 34.358181, 46.122986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896255, 34.577976, 46.355373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610092, 34.833508, 46.468571>,  <32.438393, 34.986828, 46.536488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610092, 34.833508, 46.468571>,  <32.896255, 34.577976, 46.355373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610092, 34.833508, 46.468571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356735, -0.014296, 0.934096,
		0.600774, 0.769215, -0.217666,
		-0.715409, 0.638830, 0.282995,
		32.395470, 35.025158, 46.553471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097878, 35.208771, 46.619717>,  <32.896255, 34.577976, 46.355373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097878, 35.208771, 46.619717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753036, 35.136494, 46.809086>,  <32.546131, 35.093128, 46.922707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753036, 35.136494, 46.809086>,  <33.097878, 35.208771, 46.619717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753036, 35.136494, 46.809086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481350, -0.000051, 0.876529,
		-0.158355, 0.983540, 0.087018,
		-0.862106, -0.180689, 0.473419,
		32.494404, 35.082287, 46.951111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982407, 35.643105, 47.255970>,  <33.097878, 35.208771, 46.619717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982407, 35.643105, 47.255970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755859, 35.315258, 47.290493>,  <32.619930, 35.118549, 47.311207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755859, 35.315258, 47.290493>,  <32.982407, 35.643105, 47.255970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755859, 35.315258, 47.290493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291478, -0.101254, 0.951203,
		-0.770885, 0.563891, 0.296248,
		-0.566372, -0.819618, 0.086307,
		32.585949, 35.069374, 47.316383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486141, 35.658207, 47.814919>,  <32.982407, 35.643105, 47.255970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486141, 35.658207, 47.814919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624821, 35.285339, 47.773232>,  <32.708027, 35.061619, 47.748219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624821, 35.285339, 47.773232>,  <32.486141, 35.658207, 47.814919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624821, 35.285339, 47.773232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385014, 0.040116, 0.922039,
		-0.855315, -0.359794, 0.372806,
		0.346699, -0.932169, -0.104213,
		32.728832, 35.005688, 47.741966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107990, 35.022606, 48.162067>,  <32.486141, 35.658207, 47.814919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107990, 35.022606, 48.162067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506680, 34.999958, 48.138966>,  <32.745892, 34.986370, 48.125103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506680, 34.999958, 48.138966>,  <32.107990, 35.022606, 48.162067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506680, 34.999958, 48.138966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060814, 0.053856, 0.996695,
		-0.053324, -0.996942, 0.057123,
		0.996723, -0.056622, -0.057757,
		32.805698, 34.982971, 48.121639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445587, 34.408318, 48.420094>,  <32.107990, 35.022606, 48.162067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445587, 34.408318, 48.420094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700306, 34.712658, 48.470047>,  <32.853138, 34.895260, 48.500019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700306, 34.712658, 48.470047>,  <32.445587, 34.408318, 48.420094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700306, 34.712658, 48.470047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097184, -0.081470, 0.991926,
		0.764880, -0.643795, 0.022062,
		0.636800, 0.760849, 0.124882,
		32.891346, 34.940914, 48.507511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126587, 34.016277, 48.912743>,  <32.445587, 34.408318, 48.420094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126587, 34.016277, 48.912743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911505, 34.152733, 48.604328>,  <31.782455, 34.234604, 48.419281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911505, 34.152733, 48.604328>,  <32.126587, 34.016277, 48.912743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911505, 34.152733, 48.604328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172970, 0.850408, 0.496877,
		0.825198, 0.400541, -0.398265,
		-0.537707, 0.341134, -0.771037,
		31.750193, 34.255074, 48.373016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323017, 34.044506, 49.629398>,  <32.126587, 34.016277, 48.912743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323017, 34.044506, 49.629398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419903, 34.318851, 49.903893>,  <32.478035, 34.483459, 50.068588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419903, 34.318851, 49.903893>,  <32.323017, 34.044506, 49.629398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419903, 34.318851, 49.903893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835353, 0.212321, -0.507056,
		-0.493475, 0.696065, -0.521513,
		0.242216, 0.685867, 0.686235,
		32.492569, 34.524612, 50.109764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712093, 34.597599, 49.208157>,  <32.323017, 34.044506, 49.629398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712093, 34.597599, 49.208157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828255, 34.667366, 49.584507>,  <32.897949, 34.709225, 49.810318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828255, 34.667366, 49.584507>,  <32.712093, 34.597599, 49.208157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828255, 34.667366, 49.584507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952887, 0.037294, -0.301023,
		-0.087593, 0.983966, -0.155368,
		0.290402, 0.174416, 0.940875,
		32.915375, 34.719692, 49.866768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166519, 35.150658, 49.131554>,  <32.712093, 34.597599, 49.208157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166519, 35.150658, 49.131554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.279964, 34.992569, 49.481037>,  <33.348030, 34.897717, 49.690727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.279964, 34.992569, 49.481037>,  <33.166519, 35.150658, 49.131554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279964, 34.992569, 49.481037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957817, 0.072687, -0.278035,
		0.046378, 0.915706, 0.399164,
		0.283612, -0.395221, 0.873707,
		33.365047, 34.874004, 49.743149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786648, 35.502705, 49.336166>,  <33.166519, 35.150658, 49.131554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786648, 35.502705, 49.336166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819328, 35.173409, 49.560879>,  <33.838936, 34.975830, 49.695705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819328, 35.173409, 49.560879>,  <33.786648, 35.502705, 49.336166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819328, 35.173409, 49.560879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989977, 0.001889, -0.141213,
		0.115191, 0.567686, 0.815146,
		0.081704, -0.823243, 0.561779,
		33.843838, 34.926437, 49.729412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299400, 35.610325, 49.830166>,  <33.786648, 35.502705, 49.336166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299400, 35.610325, 49.830166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258480, 35.223728, 49.735992>,  <34.233929, 34.991772, 49.679489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258480, 35.223728, 49.735992>,  <34.299400, 35.610325, 49.830166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258480, 35.223728, 49.735992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959014, -0.032951, -0.281437,
		0.264249, -0.254571, 0.930250,
		-0.102298, -0.966492, -0.235430,
		34.227791, 34.933781, 49.665363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928989, 35.220978, 50.061432>,  <34.299400, 35.610325, 49.830166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928989, 35.220978, 50.061432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754143, 35.012794, 49.768021>,  <34.649235, 34.887886, 49.591976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754143, 35.012794, 49.768021>,  <34.928989, 35.220978, 50.061432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754143, 35.012794, 49.768021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899392, -0.257623, -0.353164,
		-0.005167, -0.814099, 0.580703,
		-0.437113, -0.520455, -0.733525,
		34.623009, 34.856659, 49.547962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469410, 34.904461, 49.815502>,  <34.928989, 35.220978, 50.061432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469410, 34.904461, 49.815502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218811, 34.765305, 49.536510>,  <35.068451, 34.681812, 49.369118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218811, 34.765305, 49.536510>,  <35.469410, 34.904461, 49.815502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218811, 34.765305, 49.536510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778559, -0.237204, -0.581017,
		0.036685, -0.907032, 0.419460,
		-0.626498, -0.347889, -0.697476,
		35.030861, 34.660938, 49.327267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873940, 34.305092, 49.586197>,  <35.469410, 34.904461, 49.815502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873940, 34.305092, 49.586197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604477, 34.428543, 49.317593>,  <35.442799, 34.502613, 49.156429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604477, 34.428543, 49.317593>,  <35.873940, 34.305092, 49.586197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604477, 34.428543, 49.317593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630858, -0.233161, -0.740036,
		-0.384969, -0.922162, -0.037631,
		-0.673660, 0.308631, -0.671513,
		35.402378, 34.521133, 49.116138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796337, 33.798882, 49.070129>,  <35.873940, 34.305092, 49.586197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796337, 33.798882, 49.070129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719864, 34.152164, 48.898834>,  <35.673981, 34.364136, 48.796055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719864, 34.152164, 48.898834>,  <35.796337, 33.798882, 49.070129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719864, 34.152164, 48.898834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688151, -0.190503, -0.700112,
		-0.699926, -0.428544, -0.571361,
		-0.191183, 0.883209, -0.428241,
		35.662510, 34.417126, 48.770363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913898, 33.691128, 48.382465>,  <35.796337, 33.798882, 49.070129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913898, 33.691128, 48.382465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899681, 34.089397, 48.348141>,  <35.891151, 34.328362, 48.327545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899681, 34.089397, 48.348141>,  <35.913898, 33.691128, 48.382465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899681, 34.089397, 48.348141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653107, -0.041849, -0.756109,
		-0.756431, -0.082920, -0.648796,
		-0.035545, 0.995677, -0.085811,
		35.889019, 34.388100, 48.322399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947887, 33.752583, 47.602978>,  <35.913898, 33.691128, 48.382465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947887, 33.752583, 47.602978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033669, 34.097137, 47.787159>,  <36.085136, 34.303871, 47.897667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033669, 34.097137, 47.787159>,  <35.947887, 33.752583, 47.602978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033669, 34.097137, 47.787159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787145, 0.126687, -0.603617,
		-0.578284, 0.491890, -0.650871,
		0.214456, 0.861391, 0.460450,
		36.098007, 34.355556, 47.925293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068165, 34.232967, 47.127777>,  <35.947887, 33.752583, 47.602978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068165, 34.232967, 47.127777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258827, 34.366985, 47.452873>,  <36.373226, 34.447395, 47.647930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258827, 34.366985, 47.452873>,  <36.068165, 34.232967, 47.127777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258827, 34.366985, 47.452873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863766, -0.006638, -0.503850,
		-0.163418, 0.942179, -0.292564,
		0.476659, 0.335044, 0.812737,
		36.401825, 34.467499, 47.696693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408604, 34.757645, 46.915981>,  <36.068165, 34.232967, 47.127777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408604, 34.757645, 46.915981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598061, 34.605961, 47.233940>,  <36.711735, 34.514950, 47.424717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598061, 34.605961, 47.233940>,  <36.408604, 34.757645, 46.915981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598061, 34.605961, 47.233940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835459, -0.092152, -0.541771,
		0.278697, 0.920711, 0.273167,
		0.473642, -0.379210, 0.794898,
		36.740154, 34.492199, 47.472408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984734, 35.222950, 46.854725>,  <36.408604, 34.757645, 46.915981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984734, 35.222950, 46.854725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.076485, 34.898285, 47.069611>,  <37.131538, 34.703487, 47.198540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.076485, 34.898285, 47.069611>,  <36.984734, 35.222950, 46.854725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076485, 34.898285, 47.069611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953896, 0.077703, -0.289904,
		0.193560, 0.578941, 0.792061,
		0.229383, -0.811658, 0.537210,
		37.145298, 34.654789, 47.230774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610779, 35.411980, 47.068932>,  <36.984734, 35.222950, 46.854725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610779, 35.411980, 47.068932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606705, 35.014526, 47.113827>,  <37.604259, 34.776054, 47.140762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606705, 35.014526, 47.113827>,  <37.610779, 35.411980, 47.068932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606705, 35.014526, 47.113827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958714, -0.041603, -0.281311,
		0.284188, 0.104736, 0.953031,
		-0.010185, -0.993629, 0.112235,
		37.603649, 34.716438, 47.147499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246620, 35.303097, 47.492706>,  <37.610779, 35.411980, 47.068932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246620, 35.303097, 47.492706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137589, 34.984749, 47.276451>,  <38.072170, 34.793739, 47.146698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137589, 34.984749, 47.276451>,  <38.246620, 35.303097, 47.492706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137589, 34.984749, 47.276451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962087, -0.220006, -0.161202,
		0.009352, -0.564083, 0.825665,
		-0.272583, -0.795869, -0.540639,
		38.055813, 34.745987, 47.114258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912979, 34.992352, 47.564037>,  <38.246620, 35.303097, 47.492706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912979, 34.992352, 47.564037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.718216, 34.792305, 47.277596>,  <38.601357, 34.672276, 47.105732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.718216, 34.792305, 47.277596>,  <38.912979, 34.992352, 47.564037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718216, 34.792305, 47.277596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873369, -0.290106, -0.391236,
		-0.012080, -0.815916, 0.578045,
		-0.486910, -0.500120, -0.716100,
		38.572144, 34.642269, 47.062767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089561, 34.318661, 47.469986>,  <38.912979, 34.992352, 47.564037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089561, 34.318661, 47.469986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.982220, 34.514881, 47.138359>,  <38.917812, 34.632614, 46.939384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.982220, 34.514881, 47.138359>,  <39.089561, 34.318661, 47.469986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982220, 34.514881, 47.138359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909965, -0.153357, -0.385285,
		-0.316144, -0.857813, -0.405227,
		-0.268358, 0.490549, -0.829063,
		38.901711, 34.662045, 46.889641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417698, 33.912724, 48.020756>,  <39.089561, 34.318661, 47.469986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417698, 33.912724, 48.020756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.681564, 33.886044, 48.320194>,  <39.839886, 33.870037, 48.499855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.681564, 33.886044, 48.320194>,  <39.417698, 33.912724, 48.020756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681564, 33.886044, 48.320194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751179, -0.090171, 0.653911,
		0.023887, -0.993690, -0.109584,
		0.659666, -0.066697, 0.748594,
		39.879463, 33.866035, 48.544773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237091, 33.322048, 48.473804>,  <39.417698, 33.912724, 48.020756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237091, 33.322048, 48.473804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444210, 33.608849, 48.660480>,  <39.568481, 33.780930, 48.772484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444210, 33.608849, 48.660480>,  <39.237091, 33.322048, 48.473804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444210, 33.608849, 48.660480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549475, -0.139384, 0.823801,
		0.655713, -0.682997, 0.321800,
		0.517800, 0.716999, 0.466686,
		39.599548, 33.823948, 48.800488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441849, 33.153042, 49.085659>,  <39.237091, 33.322048, 48.473804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441849, 33.153042, 49.085659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.363781, 33.545258, 49.077160>,  <39.316940, 33.780586, 49.072060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.363781, 33.545258, 49.077160>,  <39.441849, 33.153042, 49.085659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363781, 33.545258, 49.077160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537761, -0.088872, 0.838400,
		0.820196, 0.175057, 0.544641,
		-0.195171, 0.980539, -0.021247,
		39.305229, 33.839420, 49.070786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470760, 33.355927, 49.715340>,  <39.441849, 33.153042, 49.085659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470760, 33.355927, 49.715340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248486, 33.657337, 49.574825>,  <39.115120, 33.838184, 49.490517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248486, 33.657337, 49.574825>,  <39.470760, 33.355927, 49.715340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248486, 33.657337, 49.574825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491232, 0.043298, 0.869952,
		0.670745, 0.655986, 0.346097,
		-0.555691, 0.753530, -0.351283,
		39.081779, 33.883396, 49.469440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456478, 33.868076, 50.287025>,  <39.470760, 33.355927, 49.715340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456478, 33.868076, 50.287025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.136269, 33.947605, 50.060879>,  <38.944145, 33.995323, 49.925190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.136269, 33.947605, 50.060879>,  <39.456478, 33.868076, 50.287025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136269, 33.947605, 50.060879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550234, 0.130030, 0.824824,
		0.237511, 0.971370, 0.005309,
		-0.800519, 0.198826, -0.565365,
		38.896114, 34.007252, 49.891270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145943, 34.457272, 50.688629>,  <39.456478, 33.868076, 50.287025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145943, 34.457272, 50.688629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.883167, 34.272678, 50.450146>,  <38.725502, 34.161922, 50.307056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.883167, 34.272678, 50.450146>,  <39.145943, 34.457272, 50.688629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883167, 34.272678, 50.450146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712971, 0.123120, 0.690300,
		-0.245158, 0.878564, -0.409907,
		-0.656940, -0.461484, -0.596207,
		38.686085, 34.134232, 50.271282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440845, 34.891991, 50.775311>,  <39.145943, 34.457272, 50.688629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440845, 34.891991, 50.775311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312672, 34.553452, 50.605129>,  <38.235767, 34.350327, 50.503021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312672, 34.553452, 50.605129>,  <38.440845, 34.891991, 50.775311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312672, 34.553452, 50.605129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789829, -0.009243, 0.613257,
		-0.522963, 0.532544, -0.665512,
		-0.320435, -0.846352, -0.425453,
		38.216541, 34.299545, 50.477493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769119, 34.978783, 50.549877>,  <38.440845, 34.891991, 50.775311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769119, 34.978783, 50.549877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802780, 34.584152, 50.605850>,  <37.822975, 34.347374, 50.639435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802780, 34.584152, 50.605850>,  <37.769119, 34.978783, 50.549877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802780, 34.584152, 50.605850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810755, 0.013854, 0.585222,
		-0.579306, -0.162699, -0.798707,
		0.084149, -0.986579, 0.139935,
		37.828026, 34.288177, 50.647831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105255, 34.641930, 50.250366>,  <37.769119, 34.978783, 50.549877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105255, 34.641930, 50.250366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269356, 34.386929, 50.511223>,  <37.367817, 34.233929, 50.667736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269356, 34.386929, 50.511223>,  <37.105255, 34.641930, 50.250366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269356, 34.386929, 50.511223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863234, -0.040804, 0.503152,
		-0.294149, -0.769370, -0.567051,
		0.410248, -0.637500, 0.652144,
		37.392429, 34.195679, 50.706867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669651, 34.088379, 50.293736>,  <37.105255, 34.641930, 50.250366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669651, 34.088379, 50.293736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870827, 34.053478, 50.637699>,  <36.991531, 34.032536, 50.844078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870827, 34.053478, 50.637699>,  <36.669651, 34.088379, 50.293736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870827, 34.053478, 50.637699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863519, -0.007898, 0.504254,
		-0.037209, -0.996154, -0.079323,
		0.502941, -0.087260, 0.859904,
		37.021709, 34.027302, 50.895672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239574, 33.559925, 50.623299>,  <36.669651, 34.088379, 50.293736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239574, 33.559925, 50.623299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460724, 33.719070, 50.916157>,  <36.593414, 33.814556, 51.091873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460724, 33.719070, 50.916157>,  <36.239574, 33.559925, 50.623299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460724, 33.719070, 50.916157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755943, -0.130153, 0.641568,
		0.350547, -0.908166, 0.228805,
		0.552871, 0.397864, 0.732147,
		36.626587, 33.838428, 51.135799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095638, 33.192970, 51.185513>,  <36.239574, 33.559925, 50.623299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095638, 33.192970, 51.185513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243015, 33.526508, 51.349926>,  <36.331440, 33.726631, 51.448574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243015, 33.526508, 51.349926>,  <36.095638, 33.192970, 51.185513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243015, 33.526508, 51.349926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650803, -0.084384, 0.754543,
		0.663858, -0.545508, 0.511579,
		0.368440, 0.833846, 0.411037,
		36.353546, 33.776661, 51.473236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093433, 33.200588, 51.906658>,  <36.095638, 33.192970, 51.185513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093433, 33.200588, 51.906658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120735, 33.599514, 51.896088>,  <36.137115, 33.838871, 51.889744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120735, 33.599514, 51.896088>,  <36.093433, 33.200588, 51.906658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120735, 33.599514, 51.896088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750068, 0.068763, 0.657776,
		0.657830, -0.025069, 0.752750,
		0.068251, 0.997318, -0.026430,
		36.141209, 33.898708, 51.888157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936745, 33.396156, 52.499920>,  <36.093433, 33.200588, 51.906658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936745, 33.396156, 52.499920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885971, 33.745354, 52.311546>,  <35.855507, 33.954872, 52.198524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885971, 33.745354, 52.311546>,  <35.936745, 33.396156, 52.499920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885971, 33.745354, 52.311546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808919, 0.183664, 0.558496,
		0.574054, 0.451834, 0.682867,
		-0.126930, 0.872991, -0.470930,
		35.847893, 34.007252, 52.170269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604156, 33.846630, 53.060738>,  <35.936745, 33.396156, 52.499920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604156, 33.846630, 53.060738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520576, 34.049870, 52.726509>,  <35.470428, 34.171814, 52.525974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520576, 34.049870, 52.726509>,  <35.604156, 33.846630, 53.060738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520576, 34.049870, 52.726509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853243, 0.322760, 0.409637,
		0.477825, 0.798535, 0.366094,
		-0.208949, 0.508102, -0.835568,
		35.457893, 34.202301, 52.475838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600605, 34.624096, 53.151127>,  <35.604156, 33.846630, 53.060738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600605, 34.624096, 53.151127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377178, 34.560432, 52.825508>,  <35.243122, 34.522236, 52.630138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377178, 34.560432, 52.825508>,  <35.600605, 34.624096, 53.151127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377178, 34.560432, 52.825508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702494, 0.612594, 0.362257,
		0.441024, 0.774208, -0.453982,
		-0.558569, -0.159156, -0.814046,
		35.209606, 34.512684, 52.581295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371975, 35.240753, 52.891510>,  <35.600605, 34.624096, 53.151127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371975, 35.240753, 52.891510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.114513, 34.966434, 52.755634>,  <34.960037, 34.801842, 52.674107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.114513, 34.966434, 52.755634>,  <35.371975, 35.240753, 52.891510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114513, 34.966434, 52.755634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762521, 0.536761, 0.361176,
		-0.065361, 0.491495, -0.868424,
		-0.643653, -0.685799, -0.339692,
		34.921417, 34.760696, 52.653728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854576, 35.696056, 52.675896>,  <35.371975, 35.240753, 52.891510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854576, 35.696056, 52.675896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668522, 35.342430, 52.694145>,  <34.556889, 35.130253, 52.705097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668522, 35.342430, 52.694145>,  <34.854576, 35.696056, 52.675896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668522, 35.342430, 52.694145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811153, 0.446277, 0.377978,
		-0.354519, 0.138800, -0.924690,
		-0.465131, -0.884065, 0.045626,
		34.528984, 35.077209, 52.707832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265755, 35.812138, 52.240913>,  <34.854576, 35.696056, 52.675896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265755, 35.812138, 52.240913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202919, 35.499180, 52.481972>,  <34.165218, 35.311405, 52.626606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202919, 35.499180, 52.481972>,  <34.265755, 35.812138, 52.240913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202919, 35.499180, 52.481972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793103, 0.463562, 0.395092,
		-0.588481, -0.415896, -0.693340,
		-0.157089, -0.782394, 0.602646,
		34.155792, 35.264462, 52.662766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535511, 35.590435, 52.081928>,  <34.265755, 35.812138, 52.240913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535511, 35.590435, 52.081928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669281, 35.453480, 52.433140>,  <33.749542, 35.371307, 52.643867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669281, 35.453480, 52.433140>,  <33.535511, 35.590435, 52.081928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669281, 35.453480, 52.433140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824058, 0.345807, 0.448715,
		-0.457264, -0.873605, -0.166504,
		0.334421, -0.342390, 0.878027,
		33.769608, 35.350761, 52.696548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964981, 35.459175, 52.457546>,  <33.535511, 35.590435, 52.081928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964981, 35.459175, 52.457546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216076, 35.401630, 52.763554>,  <33.366734, 35.367104, 52.947159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216076, 35.401630, 52.763554>,  <32.964981, 35.459175, 52.457546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216076, 35.401630, 52.763554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744247, 0.177087, 0.644000,
		-0.228120, -0.973624, 0.004098,
		0.627740, -0.143859, 0.765015,
		33.404396, 35.358475, 52.993057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606041, 35.156116, 52.972214>,  <32.964981, 35.459175, 52.457546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606041, 35.156116, 52.972214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915352, 35.332184, 53.154770>,  <33.100937, 35.437824, 53.264305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915352, 35.332184, 53.154770>,  <32.606041, 35.156116, 52.972214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915352, 35.332184, 53.154770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632798, 0.490227, 0.599370,
		0.040087, -0.752283, 0.657619,
		0.773279, 0.440167, 0.456391,
		33.147335, 35.464233, 53.291687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438354, 35.126991, 53.706470>,  <32.606041, 35.156116, 52.972214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438354, 35.126991, 53.706470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709908, 35.420033, 53.686832>,  <32.872837, 35.595860, 53.675049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709908, 35.420033, 53.686832>,  <32.438354, 35.126991, 53.706470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709908, 35.420033, 53.686832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521026, 0.527766, 0.670817,
		0.517359, -0.429821, 0.739996,
		0.678875, 0.732610, -0.049097,
		32.913570, 35.639812, 53.672104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648022, 35.305847, 54.445827>,  <32.438354, 35.126991, 53.706470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648022, 35.305847, 54.445827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709320, 35.650047, 54.251488>,  <32.746101, 35.856567, 54.134884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709320, 35.650047, 54.251488>,  <32.648022, 35.305847, 54.445827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709320, 35.650047, 54.251488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638616, 0.461439, 0.615827,
		0.754112, 0.215899, 0.620245,
		0.153249, 0.860501, -0.485853,
		32.755295, 35.908199, 54.105732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864513, 35.843021, 54.951317>,  <32.648022, 35.305847, 54.445827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864513, 35.843021, 54.951317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753120, 36.065731, 54.638279>,  <32.686283, 36.199356, 54.450459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753120, 36.065731, 54.638279>,  <32.864513, 35.843021, 54.951317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753120, 36.065731, 54.638279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402183, 0.672341, 0.621455,
		0.872179, 0.487809, 0.036690,
		-0.278483, 0.556776, -0.782590,
		32.669575, 36.232765, 54.403503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177532, 36.503109, 55.039333>,  <32.864513, 35.843021, 54.951317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177532, 36.503109, 55.039333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.861507, 36.535938, 54.796333>,  <32.671890, 36.555634, 54.650532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.861507, 36.535938, 54.796333>,  <33.177532, 36.503109, 55.039333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861507, 36.535938, 54.796333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310660, 0.800719, 0.512191,
		0.528475, 0.593391, -0.607125,
		-0.790066, 0.082071, -0.607503,
		32.624489, 36.560558, 54.614082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044403, 37.240761, 54.998661>,  <33.177532, 36.503109, 55.039333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044403, 37.240761, 54.998661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703804, 37.086082, 54.857002>,  <32.499443, 36.993275, 54.772007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703804, 37.086082, 54.857002>,  <33.044403, 37.240761, 54.998661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703804, 37.086082, 54.857002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521322, 0.696918, 0.492472,
		0.056373, 0.603963, -0.795016,
		-0.851496, -0.386697, -0.354146,
		32.448357, 36.970074, 54.750759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631866, 37.826393, 54.780945>,  <33.044403, 37.240761, 54.998661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631866, 37.826393, 54.780945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.378609, 37.523502, 54.845104>,  <32.226654, 37.341766, 54.883602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.378609, 37.523502, 54.845104>,  <32.631866, 37.826393, 54.780945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378609, 37.523502, 54.845104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531517, 0.575979, 0.621078,
		-0.562687, 0.307977, -0.767159,
		-0.633145, -0.757231, 0.160400,
		32.188663, 37.296333, 54.893223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931807, 38.133987, 54.708782>,  <32.631866, 37.826393, 54.780945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931807, 38.133987, 54.708782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.933186, 37.810524, 54.944092>,  <31.934013, 37.616447, 55.085278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.933186, 37.810524, 54.944092>,  <31.931807, 38.133987, 54.708782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933186, 37.810524, 54.944092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634101, 0.453114, 0.626581,
		-0.773243, -0.375181, -0.511209,
		0.003446, -0.808657, 0.588270,
		31.934219, 37.567928, 55.120571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243702, 38.095459, 54.786087>,  <31.931807, 38.133987, 54.708782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243702, 38.095459, 54.786087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409658, 37.881733, 55.080669>,  <31.509232, 37.753498, 55.257420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409658, 37.881733, 55.080669>,  <31.243702, 38.095459, 54.786087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409658, 37.881733, 55.080669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676060, 0.360671, 0.642541,
		-0.608941, -0.764473, -0.211593,
		0.414889, -0.534319, 0.736458,
		31.534124, 37.721436, 55.301605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722900, 37.831852, 55.060501>,  <31.243702, 38.095459, 54.786087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722900, 37.831852, 55.060501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006891, 37.802567, 55.340664>,  <31.177284, 37.784996, 55.508762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006891, 37.802567, 55.340664>,  <30.722900, 37.831852, 55.060501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006891, 37.802567, 55.340664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674782, 0.213865, 0.706350,
		-0.201507, -0.974116, 0.102437,
		0.709975, -0.073212, 0.700411,
		31.219883, 37.780602, 55.550789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550444, 37.343094, 55.686756>,  <30.722900, 37.831852, 55.060501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550444, 37.343094, 55.686756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.829023, 37.596565, 55.821465>,  <30.996172, 37.748650, 55.902290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.829023, 37.596565, 55.821465>,  <30.550444, 37.343094, 55.686756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829023, 37.596565, 55.821465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589252, 0.237152, 0.772361,
		0.409564, -0.736349, 0.538561,
		0.696448, 0.633679, 0.336766,
		31.037958, 37.786667, 55.922493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415972, 37.242012, 56.328552>,  <30.550444, 37.343094, 55.686756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415972, 37.242012, 56.328552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.599867, 37.596359, 56.303661>,  <30.710203, 37.808968, 56.288727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.599867, 37.596359, 56.303661>,  <30.415972, 37.242012, 56.328552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599867, 37.596359, 56.303661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683289, 0.397621, 0.612385,
		0.567238, -0.239016, 0.788107,
		0.459738, 0.885872, -0.062229,
		30.737787, 37.862122, 56.284992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165318, 37.417088, 57.059040>,  <30.415972, 37.242012, 56.328552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165318, 37.417088, 57.059040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.307976, 37.724407, 56.846428>,  <30.393572, 37.908798, 56.718861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.307976, 37.724407, 56.846428>,  <30.165318, 37.417088, 57.059040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307976, 37.724407, 56.846428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593286, 0.625751, 0.506406,
		0.721675, 0.134740, 0.678992,
		0.356647, 0.768297, -0.531528,
		30.414970, 37.954895, 56.686970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516470, 37.898670, 57.542156>,  <30.165318, 37.417088, 57.059040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516470, 37.898670, 57.542156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423773, 38.094334, 57.205818>,  <30.368155, 38.211731, 57.004017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423773, 38.094334, 57.205818>,  <30.516470, 37.898670, 57.542156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423773, 38.094334, 57.205818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470035, 0.700470, 0.537038,
		0.851682, 0.519682, 0.067591,
		-0.231744, 0.489156, -0.840846,
		30.354250, 38.241081, 56.953564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829723, 38.606461, 57.554859>,  <30.516470, 37.898670, 57.542156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829723, 38.606461, 57.554859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.514040, 38.607422, 57.309212>,  <30.324629, 38.607998, 57.161823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.514040, 38.607422, 57.309212>,  <30.829723, 38.606461, 57.554859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514040, 38.607422, 57.309212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470169, 0.640955, 0.606728,
		0.395082, 0.767575, -0.504717,
		-0.789210, 0.002405, -0.614119,
		30.277277, 38.608143, 57.124977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514708, 39.109612, 57.805786>,  <30.829723, 38.606461, 57.554859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514708, 39.109612, 57.805786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238651, 38.994980, 57.539982>,  <30.073017, 38.926201, 57.380497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238651, 38.994980, 57.539982>,  <30.514708, 39.109612, 57.805786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238651, 38.994980, 57.539982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697119, 0.509734, 0.504178,
		0.194240, 0.811200, -0.551567,
		-0.690142, -0.286576, -0.664514,
		30.031609, 38.909008, 57.340630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296213, 39.672379, 57.513744>,  <30.514708, 39.109612, 57.805786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296213, 39.672379, 57.513744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009809, 39.393375, 57.502270>,  <29.837967, 39.225975, 57.495384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009809, 39.393375, 57.502270>,  <30.296213, 39.672379, 57.513744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009809, 39.393375, 57.502270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637568, 0.636639, 0.433818,
		-0.284326, 0.328907, -0.900544,
		-0.716007, -0.697504, -0.028688,
		29.795008, 39.184124, 57.493664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856672, 40.045723, 57.207966>,  <30.296213, 39.672379, 57.513744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856672, 40.045723, 57.207966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669472, 39.732780, 57.372353>,  <29.557152, 39.545013, 57.470985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669472, 39.732780, 57.372353>,  <29.856672, 40.045723, 57.207966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669472, 39.732780, 57.372353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749248, 0.597865, 0.284931,
		-0.468620, -0.174568, -0.865980,
		-0.468000, -0.782358, 0.410966,
		29.529072, 39.498074, 57.495644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160553, 40.243942, 57.156834>,  <29.856672, 40.045723, 57.207966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160553, 40.243942, 57.156834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155725, 39.954235, 57.432598>,  <29.152830, 39.780411, 57.598057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155725, 39.954235, 57.432598>,  <29.160553, 40.243942, 57.156834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155725, 39.954235, 57.432598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795582, 0.424609, 0.432154,
		-0.605726, -0.543268, -0.581339,
		-0.012066, -0.724270, 0.689412,
		29.152105, 39.736954, 57.639423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412157, 40.014893, 57.313847>,  <29.160553, 40.243942, 57.156834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412157, 40.014893, 57.313847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610786, 39.919308, 57.647629>,  <28.729965, 39.861958, 57.847897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610786, 39.919308, 57.647629>,  <28.412157, 40.014893, 57.313847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610786, 39.919308, 57.647629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673962, 0.499668, 0.544157,
		-0.546981, -0.832605, 0.087073,
		0.496575, -0.238959, 0.834453,
		28.759760, 39.847618, 57.897964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926725, 39.802624, 57.845383>,  <28.412157, 40.014893, 57.313847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926725, 39.802624, 57.845383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.244047, 39.894863, 58.070770>,  <28.434441, 39.950207, 58.206001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.244047, 39.894863, 58.070770>,  <27.926725, 39.802624, 57.845383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244047, 39.894863, 58.070770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598823, 0.462613, 0.653759,
		-0.109910, -0.856045, 0.505081,
		0.793303, 0.230599, 0.563465,
		28.482038, 39.964043, 58.239811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708420, 39.735554, 58.486488>,  <27.926725, 39.802624, 57.845383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708420, 39.735554, 58.486488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.034725, 39.957390, 58.552170>,  <28.230509, 40.090492, 58.591579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.034725, 39.957390, 58.552170>,  <27.708420, 39.735554, 58.486488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034725, 39.957390, 58.552170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422338, 0.377188, 0.824233,
		0.395179, -0.741725, 0.541921,
		0.815759, 0.554593, 0.164202,
		28.279453, 40.123768, 58.601433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832951, 39.834435, 59.161697>,  <27.708420, 39.735554, 58.486488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832951, 39.834435, 59.161697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.017748, 40.167259, 59.038906>,  <28.128626, 40.366955, 58.965233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.017748, 40.167259, 59.038906>,  <27.832951, 39.834435, 59.161697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017748, 40.167259, 59.038906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463133, 0.521532, 0.716597,
		0.756352, -0.188892, 0.626300,
		0.461995, 0.832060, -0.306979,
		28.156347, 40.416878, 58.946812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980492, 40.186920, 59.799786>,  <27.832951, 39.834435, 59.161697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980492, 40.186920, 59.799786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.988550, 40.460426, 59.508018>,  <27.993385, 40.624531, 59.332958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.988550, 40.460426, 59.508018>,  <27.980492, 40.186920, 59.799786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988550, 40.460426, 59.508018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614467, 0.583986, 0.530463,
		0.788685, 0.437518, 0.431918,
		0.020147, 0.683768, -0.729421,
		27.994595, 40.665558, 59.289192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992470, 40.755211, 60.075413>,  <27.980492, 40.186920, 59.799786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992470, 40.755211, 60.075413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.865349, 40.865147, 59.712433>,  <27.789076, 40.931110, 59.494644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.865349, 40.865147, 59.712433>,  <27.992470, 40.755211, 60.075413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865349, 40.865147, 59.712433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683842, 0.596513, 0.420158,
		0.656782, 0.754079, -0.001624,
		-0.317801, 0.274841, -0.907450,
		27.770008, 40.947598, 59.440197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134571, 41.441696, 59.843430>,  <27.992470, 40.755211, 60.075413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134571, 41.441696, 59.843430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.798559, 41.281986, 59.696499>,  <27.596952, 41.186161, 59.608341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.798559, 41.281986, 59.696499>,  <28.134571, 41.441696, 59.843430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798559, 41.281986, 59.696499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542163, 0.643088, 0.540831,
		0.020283, 0.653465, -0.756685,
		-0.840029, -0.399277, -0.367328,
		27.546551, 41.162205, 59.586300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724869, 41.789368, 59.259575>,  <28.134571, 41.441696, 59.843430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724869, 41.789368, 59.259575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.490658, 41.571102, 59.499378>,  <27.350132, 41.440144, 59.643261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.490658, 41.571102, 59.499378>,  <27.724869, 41.789368, 59.259575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490658, 41.571102, 59.499378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261796, 0.827196, 0.497202,
		-0.767217, 0.134175, -0.627196,
		-0.585526, -0.545660, 0.599512,
		27.315001, 41.407406, 59.679234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956198, 42.032368, 59.346508>,  <27.724869, 41.789368, 59.259575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956198, 42.032368, 59.346508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.090508, 41.859982, 59.681534>,  <27.171093, 41.756550, 59.882549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.090508, 41.859982, 59.681534>,  <26.956198, 42.032368, 59.346508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090508, 41.859982, 59.681534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299896, 0.794010, 0.528782,
		-0.892926, -0.428735, 0.137363,
		0.335775, -0.430968, 0.837569,
		27.191240, 41.730690, 59.932804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772770, 42.118145, 60.094082>,  <26.956198, 42.032368, 59.346508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772770, 42.118145, 60.094082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.443794, 42.191753, 60.309387>,  <26.246408, 42.235920, 60.438572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.443794, 42.191753, 60.309387>,  <26.772770, 42.118145, 60.094082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443794, 42.191753, 60.309387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553577, 0.041084, 0.831784,
		0.130953, 0.982063, -0.135659,
		-0.822438, 0.184022, 0.538268,
		26.197063, 42.246960, 60.470867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434834, 42.809662, 60.070675>,  <26.772770, 42.118145, 60.094082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434834, 42.809662, 60.070675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.583975, 43.180809, 60.072975>,  <26.673460, 43.403500, 60.074356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.583975, 43.180809, 60.072975>,  <26.434834, 42.809662, 60.070675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583975, 43.180809, 60.072975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202843, -0.087557, 0.975289,
		0.905447, -0.362473, -0.220858,
		0.372854, 0.927872, 0.005753,
		26.695831, 43.459171, 60.074699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137398, 42.801376, 60.279552>,  <26.434834, 42.809662, 60.070675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137398, 42.801376, 60.279552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.988773, 43.161949, 60.368420>,  <26.899599, 43.378292, 60.421741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.988773, 43.161949, 60.368420>,  <27.137398, 42.801376, 60.279552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988773, 43.161949, 60.368420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346876, -0.087184, 0.933850,
		0.861173, 0.424049, -0.280291,
		-0.371561, 0.901433, 0.222173,
		26.877304, 43.432381, 60.435070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621891, 43.048801, 59.736546>,  <27.137398, 42.801376, 60.279552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621891, 43.048801, 59.736546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.891802, 43.337021, 59.672684>,  <28.053747, 43.509953, 59.634365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.891802, 43.337021, 59.672684>,  <27.621891, 43.048801, 59.736546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891802, 43.337021, 59.672684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009690, -0.207666, -0.978152,
		-0.737960, 0.661580, -0.133146,
		0.674775, 0.720547, -0.159659,
		28.094234, 43.553185, 59.624786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428329, 43.457188, 59.227783>,  <27.621891, 43.048801, 59.736546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428329, 43.457188, 59.227783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.827850, 43.470852, 59.213760>,  <28.067562, 43.479050, 59.205345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.827850, 43.470852, 59.213760>,  <27.428329, 43.457188, 59.227783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827850, 43.470852, 59.213760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029376, -0.154547, -0.987549,
		-0.039154, 0.987395, -0.153358,
		0.998801, 0.034162, -0.035057,
		28.127491, 43.481102, 59.203243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614096, 43.919907, 58.727623>,  <27.428329, 43.457188, 59.227783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614096, 43.919907, 58.727623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.913465, 43.655037, 58.742531>,  <28.093086, 43.496117, 58.751476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.913465, 43.655037, 58.742531>,  <27.614096, 43.919907, 58.727623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913465, 43.655037, 58.742531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041035, -0.102315, -0.993905,
		0.661950, 0.742333, -0.103747,
		0.748424, -0.662173, 0.037266,
		28.137993, 43.456387, 58.753712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175217, 44.076653, 58.333317>,  <27.614096, 43.919907, 58.727623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175217, 44.076653, 58.333317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.202078, 43.679176, 58.369267>,  <28.218195, 43.440693, 58.390839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.202078, 43.679176, 58.369267>,  <28.175217, 44.076653, 58.333317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202078, 43.679176, 58.369267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037548, -0.087501, -0.995457,
		0.997036, 0.070221, 0.031435,
		0.067152, -0.993686, 0.089878,
		28.222223, 43.381069, 58.396229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773989, 43.801315, 57.952473>,  <28.175217, 44.076653, 58.333317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773989, 43.801315, 57.952473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561022, 43.465698, 57.997253>,  <28.433243, 43.264328, 58.024120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561022, 43.465698, 57.997253>,  <28.773989, 43.801315, 57.952473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561022, 43.465698, 57.997253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282655, -0.300884, -0.910810,
		0.797897, -0.453286, 0.397357,
		-0.532416, -0.839047, 0.111951,
		28.401297, 43.213985, 58.030838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275171, 43.301640, 57.790688>,  <28.773989, 43.801315, 57.952473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275171, 43.301640, 57.790688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.906759, 43.149876, 57.755459>,  <28.685713, 43.058819, 57.734322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.906759, 43.149876, 57.755459>,  <29.275171, 43.301640, 57.790688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906759, 43.149876, 57.755459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224848, -0.333293, -0.915620,
		0.318040, -0.863114, 0.392282,
		-0.921029, -0.379407, -0.088068,
		28.630451, 43.036053, 57.729038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406252, 42.732407, 57.438335>,  <29.275171, 43.301640, 57.790688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406252, 42.732407, 57.438335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007175, 42.751495, 57.419022>,  <28.767729, 42.762947, 57.407433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007175, 42.751495, 57.419022>,  <29.406252, 42.732407, 57.438335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007175, 42.751495, 57.419022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006969, -0.635526, -0.772048,
		-0.067527, -0.770603, 0.633728,
		-0.997693, 0.047718, -0.048285,
		28.707867, 42.765812, 57.404537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125412, 42.097549, 57.373005>,  <29.406252, 42.732407, 57.438335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125412, 42.097549, 57.373005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869127, 42.359947, 57.213428>,  <28.715357, 42.517387, 57.117683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869127, 42.359947, 57.213428>,  <29.125412, 42.097549, 57.373005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869127, 42.359947, 57.213428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002101, -0.521104, -0.853491,
		-0.767780, -0.546002, 0.335255,
		-0.640710, 0.655997, -0.398946,
		28.676914, 42.556747, 57.093746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663330, 41.734505, 56.953079>,  <29.125412, 42.097549, 57.373005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663330, 41.734505, 56.953079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.607719, 42.096172, 56.791512>,  <28.574354, 42.313171, 56.694569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.607719, 42.096172, 56.791512>,  <28.663330, 41.734505, 56.953079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607719, 42.096172, 56.791512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006038, -0.407101, -0.913363,
		-0.990270, -0.129419, 0.051138,
		-0.139025, 0.904168, -0.403921,
		28.566011, 42.367424, 56.670334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110687, 41.652168, 56.390972>,  <28.663330, 41.734505, 56.953079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110687, 41.652168, 56.390972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.298479, 42.001648, 56.340008>,  <28.411154, 42.211338, 56.309429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.298479, 42.001648, 56.340008>,  <28.110687, 41.652168, 56.390972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298479, 42.001648, 56.340008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087096, -0.189422, -0.978025,
		-0.878637, 0.448066, -0.165026,
		0.469480, 0.873702, -0.127409,
		28.439323, 42.263760, 56.301785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926987, 41.798721, 55.718063>,  <28.110687, 41.652168, 56.390972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926987, 41.798721, 55.718063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.232014, 42.052284, 55.769684>,  <28.415030, 42.204422, 55.800655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.232014, 42.052284, 55.769684>,  <27.926987, 41.798721, 55.718063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232014, 42.052284, 55.769684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189045, -0.027590, -0.981581,
		-0.618672, 0.772916, -0.140876,
		0.762566, 0.633908, 0.129047,
		28.460783, 42.242458, 55.808399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792404, 42.260620, 55.173454>,  <27.926987, 41.798721, 55.718063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792404, 42.260620, 55.173454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.165659, 42.252380, 55.317028>,  <28.389612, 42.247437, 55.403172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.165659, 42.252380, 55.317028>,  <27.792404, 42.260620, 55.173454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165659, 42.252380, 55.317028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358565, -0.019466, -0.933302,
		0.026213, 0.999598, -0.010778,
		0.933137, -0.020600, 0.358931,
		28.445601, 42.246201, 55.424706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074816, 42.764206, 54.829403>,  <27.792404, 42.260620, 55.173454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074816, 42.764206, 54.829403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.366426, 42.515289, 54.943432>,  <28.541393, 42.365940, 55.011848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.366426, 42.515289, 54.943432>,  <28.074816, 42.764206, 54.829403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366426, 42.515289, 54.943432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280791, -0.107935, -0.953680,
		0.624239, 0.775307, 0.096047,
		0.729028, -0.622294, 0.285077,
		28.585135, 42.328602, 55.028954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724768, 43.024349, 54.495090>,  <28.074816, 42.764206, 54.829403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724768, 43.024349, 54.495090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.807383, 42.650883, 54.612129>,  <28.856953, 42.426804, 54.682354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.807383, 42.650883, 54.612129>,  <28.724768, 43.024349, 54.495090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807383, 42.650883, 54.612129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477564, -0.164809, -0.863001,
		0.853976, 0.317978, 0.411844,
		0.206539, -0.933664, 0.292598,
		28.869345, 42.370785, 54.699909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402269, 42.881683, 54.421150>,  <28.724768, 43.024349, 54.495090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402269, 42.881683, 54.421150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248383, 42.512764, 54.435932>,  <29.156050, 42.291412, 54.444801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248383, 42.512764, 54.435932>,  <29.402269, 42.881683, 54.421150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248383, 42.512764, 54.435932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373726, -0.192253, -0.907396,
		0.843991, -0.335280, 0.418649,
		-0.384718, -0.922294, 0.036957,
		29.132967, 42.236076, 54.447018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922758, 42.442513, 54.359669>,  <29.402269, 42.881683, 54.421150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922758, 42.442513, 54.359669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597853, 42.239910, 54.243961>,  <29.402910, 42.118347, 54.174538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597853, 42.239910, 54.243961>,  <29.922758, 42.442513, 54.359669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597853, 42.239910, 54.243961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490988, -0.325991, -0.807874,
		0.314895, -0.798236, 0.513480,
		-0.812264, -0.506508, -0.289271,
		29.354174, 42.087959, 54.157181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263309, 41.809826, 54.255066>,  <29.922758, 42.442513, 54.359669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263309, 41.809826, 54.255066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.912901, 41.838085, 54.064236>,  <29.702656, 41.855042, 53.949738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.912901, 41.838085, 54.064236>,  <30.263309, 41.809826, 54.255066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912901, 41.838085, 54.064236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415099, -0.393139, -0.820448,
		-0.245522, -0.916761, 0.315070,
		-0.876020, 0.070653, -0.477071,
		29.650095, 41.859280, 53.921116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930164, 41.136940, 54.046265>,  <30.263309, 41.809826, 54.255066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930164, 41.136940, 54.046265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890299, 41.459316, 53.812847>,  <29.866381, 41.652744, 53.672798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890299, 41.459316, 53.812847>,  <29.930164, 41.136940, 54.046265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890299, 41.459316, 53.812847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593290, -0.422677, -0.685093,
		-0.798796, -0.414489, -0.436032,
		-0.099662, 0.805943, -0.583544,
		29.860399, 41.701099, 53.637783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740393, 40.979809, 53.295895>,  <29.930164, 41.136940, 54.046265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740393, 40.979809, 53.295895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.930758, 41.329441, 53.334854>,  <30.044977, 41.539223, 53.358231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.930758, 41.329441, 53.334854>,  <29.740393, 40.979809, 53.295895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930758, 41.329441, 53.334854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691763, -0.303635, -0.655187,
		-0.543114, 0.379189, -0.749162,
		0.475911, 0.874083, 0.097400,
		30.073530, 41.591667, 53.364075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864428, 41.164188, 52.615261>,  <29.740393, 40.979809, 53.295895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864428, 41.164188, 52.615261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130968, 41.378845, 52.822330>,  <30.290892, 41.507641, 52.946571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130968, 41.378845, 52.822330>,  <29.864428, 41.164188, 52.615261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130968, 41.378845, 52.822330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716440, -0.268419, -0.643945,
		-0.206615, 0.799978, -0.563335,
		0.666351, 0.536644, 0.517676,
		30.330873, 41.539837, 52.977634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284140, 41.439724, 52.168777>,  <29.864428, 41.164188, 52.615261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284140, 41.439724, 52.168777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.521904, 41.471359, 52.488884>,  <30.664562, 41.490341, 52.680946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.521904, 41.471359, 52.488884>,  <30.284140, 41.439724, 52.168777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521904, 41.471359, 52.488884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758062, -0.387206, -0.524799,
		0.268364, 0.918595, -0.290110,
		0.594410, 0.079085, 0.800264,
		30.700228, 41.495083, 52.728962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866924, 41.639130, 51.850746>,  <30.284140, 41.439724, 52.168777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866924, 41.639130, 51.850746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978380, 41.551498, 52.224777>,  <31.045254, 41.498920, 52.449196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978380, 41.551498, 52.224777>,  <30.866924, 41.639130, 51.850746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978380, 41.551498, 52.224777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862498, -0.371187, -0.343974,
		0.422443, 0.902345, 0.085524,
		0.278638, -0.219074, 0.935076,
		31.061972, 41.485775, 52.505299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666521, 41.834938, 51.977882>,  <30.866924, 41.639130, 51.850746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666521, 41.834938, 51.977882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558857, 41.556992, 52.244629>,  <31.494259, 41.390224, 52.404675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558857, 41.556992, 52.244629>,  <31.666521, 41.834938, 51.977882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558857, 41.556992, 52.244629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799656, -0.547141, -0.247360,
		0.536752, 0.466681, 0.702927,
		-0.269162, -0.694870, 0.666864,
		31.478107, 41.348530, 52.444687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144119, 41.833412, 52.478218>,  <31.666521, 41.834938, 51.977882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144119, 41.833412, 52.478218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972797, 41.472195, 52.491314>,  <31.870003, 41.255466, 52.499172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972797, 41.472195, 52.491314>,  <32.144119, 41.833412, 52.478218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972797, 41.472195, 52.491314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885179, -0.426571, -0.185730,
		0.181686, -0.050572, 0.982055,
		-0.428309, -0.903039, 0.032737,
		31.844305, 41.201283, 52.501137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684235, 41.417282, 52.697052>,  <32.144119, 41.833412, 52.478218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684235, 41.417282, 52.697052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429657, 41.139557, 52.562668>,  <32.276909, 40.972923, 52.482037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429657, 41.139557, 52.562668>,  <32.684235, 41.417282, 52.697052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429657, 41.139557, 52.562668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757592, -0.644521, -0.103186,
		-0.144893, -0.320195, 0.936206,
		-0.636444, -0.694311, -0.335964,
		32.238724, 40.931263, 52.461880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834599, 40.836945, 52.971233>,  <32.684235, 41.417282, 52.697052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834599, 40.836945, 52.971233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628380, 40.697609, 52.658089>,  <32.504650, 40.614006, 52.470203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628380, 40.697609, 52.658089>,  <32.834599, 40.836945, 52.971233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628380, 40.697609, 52.658089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767044, -0.594831, -0.240458,
		-0.381908, -0.724455, 0.573856,
		-0.515548, -0.348340, -0.782860,
		32.473717, 40.593105, 52.423229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882225, 40.091755, 53.018322>,  <32.834599, 40.836945, 52.971233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882225, 40.091755, 53.018322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.811829, 40.178478, 52.634235>,  <32.769592, 40.230511, 52.403782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.811829, 40.178478, 52.634235>,  <32.882225, 40.091755, 53.018322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811829, 40.178478, 52.634235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706300, -0.651645, -0.276584,
		-0.685688, -0.726880, -0.038447,
		-0.175989, 0.216805, -0.960220,
		32.759033, 40.243519, 52.346169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963425, 39.421402, 52.778465>,  <32.882225, 40.091755, 53.018322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963425, 39.421402, 52.778465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.987804, 39.672146, 52.467766>,  <33.002430, 39.822594, 52.281345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.987804, 39.672146, 52.467766>,  <32.963425, 39.421402, 52.778465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987804, 39.672146, 52.467766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666301, -0.604970, -0.435952,
		-0.743188, -0.490976, -0.454548,
		0.060946, 0.626861, -0.776744,
		33.006088, 39.860203, 52.234741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817844, 38.969097, 52.252861>,  <32.963425, 39.421402, 52.778465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817844, 38.969097, 52.252861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981922, 39.277447, 52.057926>,  <33.080368, 39.462456, 51.940968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981922, 39.277447, 52.057926>,  <32.817844, 38.969097, 52.252861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981922, 39.277447, 52.057926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553615, -0.635112, -0.538650,
		-0.724742, -0.048843, -0.687286,
		0.410194, 0.770875, -0.487333,
		33.104980, 39.508709, 51.911728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883785, 38.749214, 51.597149>,  <32.817844, 38.969097, 52.252861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883785, 38.749214, 51.597149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142948, 39.050529, 51.642368>,  <33.298447, 39.231319, 51.669498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142948, 39.050529, 51.642368>,  <32.883785, 38.749214, 51.597149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142948, 39.050529, 51.642368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631383, -0.448070, -0.632921,
		-0.426116, 0.481450, -0.765919,
		0.647905, 0.753285, 0.113050,
		33.337318, 39.276516, 51.676285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165939, 38.901154, 50.980667>,  <32.883785, 38.749214, 51.597149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165939, 38.901154, 50.980667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444981, 39.061794, 51.218006>,  <33.612408, 39.158176, 51.360409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444981, 39.061794, 51.218006>,  <33.165939, 38.901154, 50.980667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444981, 39.061794, 51.218006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711215, -0.488367, -0.505639,
		0.086707, 0.774736, -0.626312,
		0.697606, 0.401600, 0.593349,
		33.654263, 39.182274, 51.396011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756805, 39.268314, 50.587563>,  <33.165939, 38.901154, 50.980667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756805, 39.268314, 50.587563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.919800, 39.152203, 50.933903>,  <34.017597, 39.082535, 51.141708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.919800, 39.152203, 50.933903>,  <33.756805, 39.268314, 50.587563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919800, 39.152203, 50.933903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813784, -0.314807, -0.488520,
		0.414383, 0.903679, 0.107945,
		0.407483, -0.290278, 0.865850,
		34.042046, 39.065121, 51.193657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428051, 39.513527, 50.510883>,  <33.756805, 39.268314, 50.587563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428051, 39.513527, 50.510883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472752, 39.257221, 50.814705>,  <34.499573, 39.103436, 50.996998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472752, 39.257221, 50.814705>,  <34.428051, 39.513527, 50.510883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472752, 39.257221, 50.814705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907302, -0.245999, -0.341009,
		0.405358, 0.727256, 0.553881,
		0.111747, -0.640768, 0.759558,
		34.506275, 39.064991, 51.042572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153427, 39.374195, 50.532276>,  <34.428051, 39.513527, 50.510883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153427, 39.374195, 50.532276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992069, 39.075436, 50.743713>,  <34.895256, 38.896179, 50.870575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992069, 39.075436, 50.743713>,  <35.153427, 39.374195, 50.532276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992069, 39.075436, 50.743713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718285, -0.616357, -0.322755,
		0.566867, 0.249481, 0.785125,
		-0.403395, -0.746903, 0.528591,
		34.871052, 38.851364, 50.902290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744362, 39.146587, 50.826416>,  <35.153427, 39.374195, 50.532276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744362, 39.146587, 50.826416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472225, 38.858128, 50.878677>,  <35.308941, 38.685051, 50.910034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472225, 38.858128, 50.878677>,  <35.744362, 39.146587, 50.826416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472225, 38.858128, 50.878677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646593, -0.674547, -0.356235,
		0.345034, -0.157880, 0.925216,
		-0.680344, -0.721152, 0.130658,
		35.268124, 38.641781, 50.917873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068439, 38.529064, 51.189701>,  <35.744362, 39.146587, 50.826416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068439, 38.529064, 51.189701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737114, 38.402756, 51.004581>,  <35.538319, 38.326969, 50.893509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737114, 38.402756, 51.004581>,  <36.068439, 38.529064, 51.189701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737114, 38.402756, 51.004581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490022, -0.808776, -0.325208,
		-0.271608, -0.496156, 0.824657,
		-0.828316, -0.315771, -0.462797,
		35.488621, 38.308025, 50.865742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028648, 37.945969, 51.414654>,  <36.068439, 38.529064, 51.189701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028648, 37.945969, 51.414654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806892, 37.917156, 51.083000>,  <35.673840, 37.899868, 50.884007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806892, 37.917156, 51.083000>,  <36.028648, 37.945969, 51.414654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806892, 37.917156, 51.083000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450364, -0.863744, -0.226092,
		-0.699878, -0.498756, 0.511286,
		-0.554385, -0.072028, -0.829137,
		35.640575, 37.895546, 50.834259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997738, 37.283211, 51.477207>,  <36.028648, 37.945969, 51.414654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997738, 37.283211, 51.477207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.866428, 37.386280, 51.113705>,  <35.787643, 37.448124, 50.895603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.866428, 37.386280, 51.113705>,  <35.997738, 37.283211, 51.477207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866428, 37.386280, 51.113705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371229, -0.849463, -0.374968,
		-0.868576, -0.460449, 0.183200,
		-0.328275, 0.257679, -0.908756,
		35.767944, 37.463585, 50.841080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753471, 36.685253, 51.128460>,  <35.997738, 37.283211, 51.477207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753471, 36.685253, 51.128460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793335, 36.934200, 50.817917>,  <35.817253, 37.083569, 50.631592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793335, 36.934200, 50.817917>,  <35.753471, 36.685253, 51.128460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793335, 36.934200, 50.817917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328327, -0.757109, -0.564789,
		-0.939292, -0.198614, -0.279790,
		0.099656, 0.622365, -0.776357,
		35.823231, 37.120911, 50.585011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407631, 36.350899, 50.451145>,  <35.753471, 36.685253, 51.128460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407631, 36.350899, 50.451145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680031, 36.600460, 50.297791>,  <35.843472, 36.750198, 50.205780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680031, 36.600460, 50.297791>,  <35.407631, 36.350899, 50.451145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680031, 36.600460, 50.297791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287026, -0.709074, -0.644074,
		-0.673686, 0.328575, -0.661956,
		0.681002, 0.623902, -0.383383,
		35.884331, 36.787632, 50.182777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365688, 36.419605, 49.736271>,  <35.407631, 36.350899, 50.451145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365688, 36.419605, 49.736271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.721401, 36.598392, 49.775063>,  <35.934830, 36.705666, 49.798340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.721401, 36.598392, 49.775063>,  <35.365688, 36.419605, 49.736271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721401, 36.598392, 49.775063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349574, -0.527506, -0.774297,
		-0.294923, 0.722469, -0.625347,
		0.889279, 0.446964, 0.096983,
		35.988186, 36.732483, 49.804157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543587, 36.719673, 49.110485>,  <35.365688, 36.419605, 49.736271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543587, 36.719673, 49.110485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890072, 36.675823, 49.305485>,  <36.097961, 36.649513, 49.422485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890072, 36.675823, 49.305485>,  <35.543587, 36.719673, 49.110485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890072, 36.675823, 49.305485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378463, -0.493089, -0.783345,
		0.326254, 0.863045, -0.385632,
		0.866212, -0.109622, 0.487503,
		36.149937, 36.642937, 49.451736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177254, 36.936741, 48.641418>,  <35.543587, 36.719673, 49.110485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177254, 36.936741, 48.641418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329281, 36.669003, 48.896770>,  <36.420498, 36.508362, 49.049980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329281, 36.669003, 48.896770>,  <36.177254, 36.936741, 48.641418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329281, 36.669003, 48.896770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523192, -0.413578, -0.745133,
		0.762769, 0.617197, 0.193006,
		0.380070, -0.669344, 0.638377,
		36.443302, 36.468201, 49.088284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741993, 36.769878, 48.040104>,  <36.177254, 36.936741, 48.641418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741993, 36.769878, 48.040104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558197, 36.621700, 47.717209>,  <35.447918, 36.532791, 47.523472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558197, 36.621700, 47.717209>,  <35.741993, 36.769878, 48.040104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558197, 36.621700, 47.717209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852896, 0.437671, 0.284627,
		0.247866, 0.819275, -0.517060,
		-0.459490, -0.370449, -0.807240,
		35.420349, 36.510567, 47.475037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259106, 37.175659, 47.728428>,  <35.741993, 36.769878, 48.040104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259106, 37.175659, 47.728428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124405, 36.860291, 47.522522>,  <35.043587, 36.671070, 47.398979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124405, 36.860291, 47.522522>,  <35.259106, 37.175659, 47.728428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124405, 36.860291, 47.522522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941525, 0.288581, 0.173928,
		0.011423, 0.543238, -0.839501,
		-0.336749, -0.788425, -0.514768,
		35.023380, 36.623764, 47.368092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729118, 37.445904, 47.228767>,  <35.259106, 37.175659, 47.728428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729118, 37.445904, 47.228767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673332, 37.055099, 47.293266>,  <34.639862, 36.820618, 47.331966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673332, 37.055099, 47.293266>,  <34.729118, 37.445904, 47.228767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673332, 37.055099, 47.293266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929384, 0.185347, 0.319206,
		-0.341754, -0.105345, -0.933866,
		-0.139463, -0.977011, 0.161249,
		34.631493, 36.761997, 47.341640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161053, 37.128304, 46.756355>,  <34.729118, 37.445904, 47.228767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161053, 37.128304, 46.756355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193321, 36.897907, 47.081741>,  <34.212681, 36.759670, 47.276974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193321, 36.897907, 47.081741>,  <34.161053, 37.128304, 46.756355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193321, 36.897907, 47.081741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982918, 0.089477, 0.160830,
		-0.165423, -0.812543, -0.558936,
		0.080669, -0.575993, 0.813464,
		34.217522, 36.725109, 47.325779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630699, 36.820545, 46.708672>,  <34.161053, 37.128304, 46.756355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630699, 36.820545, 46.708672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698971, 36.735653, 47.093552>,  <33.739933, 36.684719, 47.324478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698971, 36.735653, 47.093552>,  <33.630699, 36.820545, 46.708672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698971, 36.735653, 47.093552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940982, 0.254548, 0.223065,
		-0.292267, -0.943484, -0.156260,
		0.170683, -0.212233, 0.962198,
		33.750175, 36.671982, 47.382210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035465, 36.576454, 46.920345>,  <33.630699, 36.820545, 46.708672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035465, 36.576454, 46.920345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.196426, 36.679111, 47.271847>,  <33.293003, 36.740707, 47.482746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.196426, 36.679111, 47.271847>,  <33.035465, 36.576454, 46.920345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196426, 36.679111, 47.271847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897721, 0.298691, 0.323853,
		-0.179361, -0.919194, 0.350587,
		0.402401, 0.256643, 0.878754,
		33.317146, 36.756104, 47.535473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564838, 36.424816, 47.311787>,  <33.035465, 36.576454, 46.920345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564838, 36.424816, 47.311787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778072, 36.672050, 47.542885>,  <32.906013, 36.820393, 47.681541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778072, 36.672050, 47.542885>,  <32.564838, 36.424816, 47.311787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778072, 36.672050, 47.542885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841304, 0.459574, 0.284604,
		-0.089606, -0.637776, 0.764992,
		0.533084, 0.618089, 0.577743,
		32.937996, 36.857479, 47.716209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199200, 36.499821, 47.886692>,  <32.564838, 36.424816, 47.311787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199200, 36.499821, 47.886692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.422970, 36.826103, 47.945580>,  <32.557232, 37.021873, 47.980911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.422970, 36.826103, 47.945580>,  <32.199200, 36.499821, 47.886692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422970, 36.826103, 47.945580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821628, 0.522265, 0.228400,
		0.109420, -0.248731, 0.962372,
		0.559423, 0.815703, 0.147218,
		32.590797, 37.070816, 47.989746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015308, 36.705341, 48.545738>,  <32.199200, 36.499821, 47.886692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015308, 36.705341, 48.545738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177456, 37.028576, 48.374779>,  <32.274746, 37.222515, 48.272202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177456, 37.028576, 48.374779>,  <32.015308, 36.705341, 48.545738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177456, 37.028576, 48.374779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669159, 0.580838, 0.463523,
		0.622816, 0.098098, 0.776194,
		0.405372, 0.808087, -0.427398,
		32.299068, 37.271004, 48.246559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083790, 37.147060, 49.086300>,  <32.015308, 36.705341, 48.545738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083790, 37.147060, 49.086300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066223, 37.344139, 48.738663>,  <32.055683, 37.462387, 48.530079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066223, 37.344139, 48.738663>,  <32.083790, 37.147060, 49.086300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066223, 37.344139, 48.738663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535572, 0.722751, 0.436800,
		0.843347, 0.484645, 0.232131,
		-0.043920, 0.492696, -0.869092,
		32.053047, 37.491947, 48.477936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913857, 37.767731, 49.353977>,  <32.083790, 37.147060, 49.086300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913857, 37.767731, 49.353977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.866716, 37.844654, 48.964283>,  <31.838432, 37.890808, 48.730469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.866716, 37.844654, 48.964283>,  <31.913857, 37.767731, 49.353977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866716, 37.844654, 48.964283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644584, 0.731482, 0.222364,
		0.755396, 0.654180, 0.037754,
		-0.117850, 0.192309, -0.974232,
		31.831362, 37.902348, 48.672012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983852, 38.492588, 49.272350>,  <31.913857, 37.767731, 49.353977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983852, 38.492588, 49.272350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.786446, 38.410862, 48.934193>,  <31.668001, 38.361824, 48.731297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.786446, 38.410862, 48.934193>,  <31.983852, 38.492588, 49.272350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786446, 38.410862, 48.934193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514720, 0.852131, 0.094531,
		0.701074, 0.481795, -0.525708,
		-0.493517, -0.204320, -0.845396,
		31.638391, 38.349567, 48.680573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945011, 39.062275, 48.817730>,  <31.983852, 38.492588, 49.272350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945011, 39.062275, 48.817730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.650932, 38.820419, 48.695160>,  <31.474485, 38.675304, 48.621616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.650932, 38.820419, 48.695160>,  <31.945011, 39.062275, 48.817730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650932, 38.820419, 48.695160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666607, 0.726912, 0.165026,
		0.122964, 0.325592, -0.937480,
		-0.735197, -0.604639, -0.306426,
		31.430372, 38.639027, 48.603233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477604, 39.546600, 48.486290>,  <31.945011, 39.062275, 48.817730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477604, 39.546600, 48.486290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.272520, 39.215511, 48.577499>,  <31.149469, 39.016857, 48.632225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.272520, 39.215511, 48.577499>,  <31.477604, 39.546600, 48.486290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272520, 39.215511, 48.577499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763905, 0.561030, 0.318894,
		-0.391887, -0.010690, -0.919951,
		-0.512711, -0.827726, 0.228027,
		31.118706, 38.967194, 48.645908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765419, 39.529537, 48.174717>,  <31.477604, 39.546600, 48.486290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765419, 39.529537, 48.174717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757719, 39.290504, 48.495350>,  <30.753099, 39.147087, 48.687729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757719, 39.290504, 48.495350>,  <30.765419, 39.529537, 48.174717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757719, 39.290504, 48.495350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865931, 0.410738, 0.285408,
		-0.499793, -0.688618, -0.525368,
		-0.019252, -0.597577, 0.801580,
		30.751944, 39.111233, 48.735825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993380, 39.495365, 48.227577>,  <30.765419, 39.529537, 48.174717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993380, 39.495365, 48.227577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147383, 39.333839, 48.559528>,  <30.239784, 39.236923, 48.758701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147383, 39.333839, 48.559528>,  <29.993380, 39.495365, 48.227577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147383, 39.333839, 48.559528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678481, 0.485726, 0.551120,
		-0.625646, -0.775244, -0.086974,
		0.385007, -0.403817, 0.829880,
		30.262884, 39.212696, 48.808491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429983, 39.304031, 48.654297>,  <29.993380, 39.495365, 48.227577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429983, 39.304031, 48.654297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721256, 39.301933, 48.928444>,  <29.896021, 39.300674, 49.092930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721256, 39.301933, 48.928444>,  <29.429983, 39.304031, 48.654297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721256, 39.301933, 48.928444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631972, 0.381869, 0.674380,
		-0.265258, -0.924202, 0.274754,
		0.728183, -0.005248, 0.685363,
		29.939711, 39.300358, 49.134052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180765, 39.032391, 49.338409>,  <29.429983, 39.304031, 48.654297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180765, 39.032391, 49.338409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.499943, 39.252090, 49.437691>,  <29.691450, 39.383911, 49.497261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.499943, 39.252090, 49.437691>,  <29.180765, 39.032391, 49.338409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499943, 39.252090, 49.437691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540064, 0.468703, 0.699034,
		0.267609, -0.691839, 0.670630,
		0.797945, 0.549251, 0.248208,
		29.739326, 39.416866, 49.512154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165499, 39.122349, 50.004169>,  <29.180765, 39.032391, 49.338409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165499, 39.122349, 50.004169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.396202, 39.435589, 49.911125>,  <29.534624, 39.623531, 49.855297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.396202, 39.435589, 49.911125>,  <29.165499, 39.122349, 50.004169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396202, 39.435589, 49.911125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587308, 0.595406, 0.548235,
		0.567817, -0.179588, 0.803326,
		0.576761, 0.783097, -0.232608,
		29.569229, 39.670517, 49.841343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116993, 39.517807, 50.640705>,  <29.165499, 39.122349, 50.004169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116993, 39.517807, 50.640705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.266991, 39.769249, 50.368168>,  <29.356989, 39.920116, 50.204643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.266991, 39.769249, 50.368168>,  <29.116993, 39.517807, 50.640705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266991, 39.769249, 50.368168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346256, 0.776762, 0.526068,
		0.859934, 0.038648, 0.508940,
		0.374994, 0.628607, -0.681347,
		29.379490, 39.957832, 50.163765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692543, 39.976181, 51.024952>,  <29.116993, 39.517807, 50.640705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692543, 39.976181, 51.024952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.554228, 40.162907, 50.699371>,  <29.471239, 40.274940, 50.504021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.554228, 40.162907, 50.699371>,  <29.692543, 39.976181, 51.024952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554228, 40.162907, 50.699371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417742, 0.700165, 0.579017,
		0.840193, 0.540239, -0.047101,
		-0.345786, 0.466810, -0.813954,
		29.450493, 40.302948, 50.455185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770754, 40.648670, 51.190983>,  <29.692543, 39.976181, 51.024952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770754, 40.648670, 51.190983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525017, 40.639057, 50.875515>,  <29.377575, 40.633289, 50.686234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525017, 40.639057, 50.875515>,  <29.770754, 40.648670, 51.190983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525017, 40.639057, 50.875515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546026, 0.734497, 0.402951,
		0.569594, 0.678186, -0.464355,
		-0.614343, -0.024032, -0.788673,
		29.340714, 40.631847, 50.638912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642345, 41.373123, 50.966846>,  <29.770754, 40.648670, 51.190983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642345, 41.373123, 50.966846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.342741, 41.135654, 50.849178>,  <29.162979, 40.993172, 50.778576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.342741, 41.135654, 50.849178>,  <29.642345, 41.373123, 50.966846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342741, 41.135654, 50.849178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660871, 0.637741, 0.395646,
		-0.047278, 0.490753, -0.870015,
		-0.749009, -0.593673, -0.294174,
		29.118038, 40.957554, 50.760925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995985, 41.828312, 50.817295>,  <29.642345, 41.373123, 50.966846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995985, 41.828312, 50.817295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830177, 41.464329, 50.822235>,  <28.730692, 41.245941, 50.825199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830177, 41.464329, 50.822235>,  <28.995985, 41.828312, 50.817295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830177, 41.464329, 50.822235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824520, 0.381274, 0.418087,
		-0.385148, 0.163126, -0.908323,
		-0.414521, -0.909956, 0.012347,
		28.705820, 41.191341, 50.825939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226665, 41.961735, 50.703789>,  <28.995985, 41.828312, 50.817295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226665, 41.961735, 50.703789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.224285, 41.588108, 50.846603>,  <28.222857, 41.363930, 50.932293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.224285, 41.588108, 50.846603>,  <28.226665, 41.961735, 50.703789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224285, 41.588108, 50.846603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697043, 0.259882, 0.668276,
		-0.717004, -0.244895, -0.652634,
		-0.005950, -0.934071, 0.357039,
		28.222500, 41.307888, 50.953716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489887, 41.699551, 50.805702>,  <28.226665, 41.961735, 50.703789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489887, 41.699551, 50.805702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.720106, 41.497150, 51.062672>,  <27.858238, 41.375710, 51.216854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.720106, 41.497150, 51.062672>,  <27.489887, 41.699551, 50.805702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720106, 41.497150, 51.062672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661483, 0.173832, 0.729536,
		-0.480817, -0.844837, -0.234659,
		0.575548, -0.505997, 0.642426,
		27.892771, 41.345352, 51.255398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158411, 41.215088, 51.202843>,  <27.489887, 41.699551, 50.805702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158411, 41.215088, 51.202843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.470497, 41.314686, 51.432369>,  <27.657749, 41.374443, 51.570084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.470497, 41.314686, 51.432369>,  <27.158411, 41.215088, 51.202843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470497, 41.314686, 51.432369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565465, -0.111423, 0.817212,
		0.267416, -0.962075, 0.053862,
		0.780217, 0.248993, 0.573815,
		27.704563, 41.389385, 51.604515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199797, 40.702129, 51.810261>,  <27.158411, 41.215088, 51.202843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199797, 40.702129, 51.810261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.373079, 41.047092, 51.915012>,  <27.477049, 41.254070, 51.977863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.373079, 41.047092, 51.915012>,  <27.199797, 40.702129, 51.810261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373079, 41.047092, 51.915012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602217, 0.060790, 0.796015,
		0.670574, -0.502543, 0.545693,
		0.433205, 0.862412, 0.261876,
		27.503040, 41.305817, 51.993576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203293, 40.708157, 52.494041>,  <27.199797, 40.702129, 51.810261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203293, 40.708157, 52.494041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.267714, 41.097424, 52.428307>,  <27.306366, 41.330982, 52.388866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.267714, 41.097424, 52.428307>,  <27.203293, 40.708157, 52.494041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267714, 41.097424, 52.428307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585635, 0.228263, 0.777771,
		0.794414, -0.029018, 0.606683,
		0.161053, 0.973167, -0.164342,
		27.316029, 41.389374, 52.379005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267488, 40.940075, 53.093399>,  <27.203293, 40.708157, 52.494041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267488, 40.940075, 53.093399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.191437, 41.280735, 52.898033>,  <27.145805, 41.485130, 52.780815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.191437, 41.280735, 52.898033>,  <27.267488, 40.940075, 53.093399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191437, 41.280735, 52.898033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559621, 0.314739, 0.766658,
		0.806644, 0.419091, 0.416759,
		-0.190129, 0.851647, -0.488414,
		27.134398, 41.536228, 52.751511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243336, 41.398102, 53.586258>,  <27.267488, 40.940075, 53.093399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243336, 41.398102, 53.586258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.050606, 41.603138, 53.301979>,  <26.934969, 41.726162, 53.131413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.050606, 41.603138, 53.301979>,  <27.243336, 41.398102, 53.586258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050606, 41.603138, 53.301979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670428, 0.306608, 0.675661,
		0.564245, 0.802023, 0.195926,
		-0.481823, 0.512593, -0.710701,
		26.906059, 41.756916, 53.088768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178751, 42.138039, 53.735828>,  <27.243336, 41.398102, 53.586258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178751, 42.138039, 53.735828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.862326, 42.071381, 53.500389>,  <26.672470, 42.031387, 53.359127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.862326, 42.071381, 53.500389>,  <27.178751, 42.138039, 53.735828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862326, 42.071381, 53.500389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591900, 0.451518, 0.667672,
		0.154501, 0.876563, -0.455815,
		-0.791065, -0.166641, -0.588598,
		26.625006, 42.021389, 53.323811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740717, 42.785370, 53.722290>,  <27.178751, 42.138039, 53.735828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740717, 42.785370, 53.722290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.519421, 42.460655, 53.647541>,  <26.386642, 42.265827, 53.602692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.519421, 42.460655, 53.647541>,  <26.740717, 42.785370, 53.722290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519421, 42.460655, 53.647541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629191, 0.260201, 0.732403,
		-0.545931, 0.522776, -0.654725,
		-0.553242, -0.811789, -0.186874,
		26.353449, 42.217117, 53.591480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027498, 42.922451, 53.853516>,  <26.740717, 42.785370, 53.722290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027498, 42.922451, 53.853516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.981287, 42.525276, 53.864262>,  <25.953560, 42.286972, 53.870708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.981287, 42.525276, 53.864262>,  <26.027498, 42.922451, 53.853516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981287, 42.525276, 53.864262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639269, 0.095027, 0.763089,
		-0.760256, 0.070985, -0.645734,
		-0.115530, -0.992941, 0.026866,
		25.946629, 42.227394, 53.872322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419640, 42.852463, 54.244686>,  <26.027498, 42.922451, 53.853516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419640, 42.852463, 54.244686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.528204, 42.469315, 54.207127>,  <25.593342, 42.239426, 54.184593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.528204, 42.469315, 54.207127>,  <25.419640, 42.852463, 54.244686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.528204, 42.469315, 54.207127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536368, -0.231535, 0.811604,
		-0.799153, -0.169915, -0.576613,
		0.271410, -0.957873, -0.093895,
		25.609627, 42.181953, 54.178959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792261, 42.405327, 54.342190>,  <25.419640, 42.852463, 54.244686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792261, 42.405327, 54.342190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.108995, 42.179672, 54.435783>,  <25.299036, 42.044281, 54.491940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.108995, 42.179672, 54.435783>,  <24.792261, 42.405327, 54.342190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108995, 42.179672, 54.435783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491884, -0.362000, 0.791837,
		-0.362000, -0.742098, -0.564133,
		-0.791837, 0.564133, -0.233982,
		25.346546, 42.010433, 54.505978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581553, 41.682312, 54.352127>,  <24.792261, 42.405327, 54.342190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581553, 41.682312, 54.352127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.916296, 41.684242, 54.571087>,  <25.117142, 41.685402, 54.702461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.916296, 41.684242, 54.571087>,  <24.581553, 41.682312, 54.352127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916296, 41.684242, 54.571087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504737, -0.380310, 0.774987,
		0.211924, -0.924847, -0.315827,
		0.836857, 0.004828, 0.547401,
		25.167353, 41.685692, 54.735306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559216, 40.971745, 54.729191>,  <24.581553, 41.682312, 54.352127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559216, 40.971745, 54.729191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.825830, 41.206890, 54.912560>,  <24.985800, 41.347977, 55.022579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.825830, 41.206890, 54.912560>,  <24.559216, 40.971745, 54.729191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825830, 41.206890, 54.912560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246017, -0.407028, 0.879661,
		0.703708, -0.699105, -0.126675,
		0.666536, 0.587861, 0.458420,
		25.025791, 41.383247, 55.050087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856152, 40.328964, 55.056919>,  <24.559216, 40.971745, 54.729191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856152, 40.328964, 55.056919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.829512, 40.056175, 55.348255>,  <24.813528, 39.892502, 55.523056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.829512, 40.056175, 55.348255>,  <24.856152, 40.328964, 55.056919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829512, 40.056175, 55.348255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314055, -0.707187, -0.633448,
		0.947066, 0.186550, 0.261277,
		-0.066602, -0.681972, 0.728339,
		24.809530, 39.851585, 55.566757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464590, 40.030312, 55.174286>,  <24.856152, 40.328964, 55.056919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464590, 40.030312, 55.174286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.205488, 39.757080, 55.309235>,  <25.050028, 39.593140, 55.390202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.205488, 39.757080, 55.309235>,  <25.464590, 40.030312, 55.174286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205488, 39.757080, 55.309235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391883, -0.678496, -0.621346,
		0.653333, -0.270269, 0.707185,
		-0.647753, -0.683080, 0.337370,
		25.011162, 39.552155, 55.410446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809824, 39.408237, 55.282181>,  <25.464590, 40.030312, 55.174286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809824, 39.408237, 55.282181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.433002, 39.287098, 55.224468>,  <25.206909, 39.214417, 55.189842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.433002, 39.287098, 55.224468>,  <25.809824, 39.408237, 55.282181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433002, 39.287098, 55.224468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312940, -0.638455, -0.703167,
		0.120835, -0.707573, 0.696232,
		-0.942055, -0.302846, -0.144280,
		25.150387, 39.196243, 55.181183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743397, 38.615952, 55.293129>,  <25.809824, 39.408237, 55.282181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743397, 38.615952, 55.293129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.421061, 38.742451, 55.092884>,  <25.227659, 38.818348, 54.972736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.421061, 38.742451, 55.092884>,  <25.743397, 38.615952, 55.293129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421061, 38.742451, 55.092884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169585, -0.686759, -0.706826,
		-0.567327, -0.654486, 0.499789,
		-0.805842, 0.316244, -0.500608,
		25.179308, 38.837322, 54.942703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463142, 38.009155, 55.197701>,  <25.743397, 38.615952, 55.293129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463142, 38.009155, 55.197701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.230074, 38.233097, 54.962051>,  <25.090233, 38.367462, 54.820663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.230074, 38.233097, 54.962051>,  <25.463142, 38.009155, 55.197701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230074, 38.233097, 54.962051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143456, -0.642650, -0.752610,
		-0.799947, -0.523036, 0.294139,
		-0.582671, 0.559852, -0.589118,
		25.055273, 38.401051, 54.785316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104588, 37.485928, 54.793736>,  <25.463142, 38.009155, 55.197701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104588, 37.485928, 54.793736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.079523, 37.839924, 54.609184>,  <25.064484, 38.052322, 54.498455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.079523, 37.839924, 54.609184>,  <25.104588, 37.485928, 54.793736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079523, 37.839924, 54.609184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146261, -0.449148, -0.881404,
		-0.987259, -0.122712, -0.101295,
		-0.062662, 0.884990, -0.461374,
		25.060724, 38.105419, 54.470772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622097, 37.319836, 54.217670>,  <25.104588, 37.485928, 54.793736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622097, 37.319836, 54.217670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.854929, 37.636894, 54.145134>,  <24.994629, 37.827129, 54.101612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.854929, 37.636894, 54.145134>,  <24.622097, 37.319836, 54.217670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854929, 37.636894, 54.145134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203034, -0.357639, -0.911522,
		-0.787375, 0.493760, -0.369110,
		0.582081, 0.792651, -0.181345,
		25.029552, 37.874691, 54.090729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609972, 37.453888, 53.555622>,  <24.622097, 37.319836, 54.217670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609972, 37.453888, 53.555622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.955666, 37.644333, 53.620644>,  <25.163082, 37.758598, 53.659657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.955666, 37.644333, 53.620644>,  <24.609972, 37.453888, 53.555622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955666, 37.644333, 53.620644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268959, -0.164185, -0.949054,
		-0.425164, 0.863923, -0.269948,
		0.864232, 0.476109, 0.162555,
		25.214935, 37.787167, 53.669411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695206, 37.871204, 52.940308>,  <24.609972, 37.453888, 53.555622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695206, 37.871204, 52.940308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.051876, 37.849182, 53.120033>,  <25.265879, 37.835968, 53.227867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.051876, 37.849182, 53.120033>,  <24.695206, 37.871204, 52.940308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051876, 37.849182, 53.120033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440758, -0.120637, -0.889483,
		0.103175, 0.991169, -0.083302,
		0.891677, -0.055056, 0.449312,
		25.319380, 37.832664, 53.254826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033176, 38.372326, 52.580471>,  <24.695206, 37.871204, 52.940308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033176, 38.372326, 52.580471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.288822, 38.104065, 52.731075>,  <25.442209, 37.943108, 52.821438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.288822, 38.104065, 52.731075>,  <25.033176, 38.372326, 52.580471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288822, 38.104065, 52.731075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453656, -0.066598, -0.888685,
		0.621072, 0.738778, 0.261681,
		0.639113, -0.670651, 0.376513,
		25.480556, 37.902870, 52.844028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721674, 38.578579, 52.305481>,  <25.033176, 38.372326, 52.580471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721674, 38.578579, 52.305481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.762337, 38.199566, 52.426704>,  <25.786736, 37.972157, 52.499439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.762337, 38.199566, 52.426704>,  <25.721674, 38.578579, 52.305481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762337, 38.199566, 52.426704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583820, -0.189834, -0.789378,
		0.805493, 0.257176, 0.533892,
		0.101658, -0.947535, 0.303055,
		25.792833, 37.915306, 52.517620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416073, 38.563396, 52.298862>,  <25.721674, 38.578579, 52.305481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416073, 38.563396, 52.298862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.255442, 38.199833, 52.253933>,  <26.159063, 37.981693, 52.226974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.255442, 38.199833, 52.253933>,  <26.416073, 38.563396, 52.298862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255442, 38.199833, 52.253933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590362, -0.163147, -0.790478,
		0.700149, -0.383749, 0.602103,
		-0.401577, -0.908911, -0.112324,
		26.134968, 37.927158, 52.220234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001482, 38.075676, 52.280563>,  <26.416073, 38.563396, 52.298862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001482, 38.075676, 52.280563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.686214, 37.878178, 52.133595>,  <26.497053, 37.759678, 52.045414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.686214, 37.878178, 52.133595>,  <27.001482, 38.075676, 52.280563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686214, 37.878178, 52.133595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576747, -0.384150, -0.720966,
		0.214831, -0.780154, 0.587544,
		-0.788169, -0.493750, -0.367425,
		26.449764, 37.730053, 52.023369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323343, 37.534428, 51.937534>,  <27.001482, 38.075676, 52.280563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323343, 37.534428, 51.937534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.953773, 37.549679, 51.785267>,  <26.732031, 37.558830, 51.693905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.953773, 37.549679, 51.785267>,  <27.323343, 37.534428, 51.937534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953773, 37.549679, 51.785267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368813, -0.175705, -0.912745,
		-0.101680, -0.983704, 0.148279,
		-0.923925, 0.038121, -0.380669,
		26.676596, 37.561115, 51.671066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297707, 36.971771, 51.532223>,  <27.323343, 37.534428, 51.937534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297707, 36.971771, 51.532223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.014145, 37.204201, 51.372318>,  <26.844007, 37.343658, 51.276375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.014145, 37.204201, 51.372318>,  <27.297707, 36.971771, 51.532223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014145, 37.204201, 51.372318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374737, -0.169860, -0.911438,
		-0.597515, -0.795928, -0.097335,
		-0.708906, 0.581073, -0.399758,
		26.801474, 37.378521, 51.252392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057869, 36.624950, 51.036037>,  <27.297707, 36.971771, 51.532223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057869, 36.624950, 51.036037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.918297, 36.988430, 50.944374>,  <26.834553, 37.206516, 50.889378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.918297, 36.988430, 50.944374>,  <27.057869, 36.624950, 51.036037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918297, 36.988430, 50.944374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534313, -0.007985, -0.845249,
		-0.769906, -0.417376, -0.482744,
		-0.348932, 0.908699, -0.229158,
		26.813618, 37.261040, 50.875626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699533, 36.636696, 50.350105>,  <27.057869, 36.624950, 51.036037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699533, 36.636696, 50.350105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.821918, 37.014950, 50.394218>,  <26.895350, 37.241901, 50.420689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.821918, 37.014950, 50.394218>,  <26.699533, 36.636696, 50.350105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821918, 37.014950, 50.394218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442081, -0.038523, -0.896148,
		-0.843179, 0.322943, -0.429833,
		0.305963, 0.945634, 0.110285,
		26.913708, 37.298641, 50.427303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565224, 37.070007, 49.692940>,  <26.699533, 36.636696, 50.350105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565224, 37.070007, 49.692940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870487, 37.252277, 49.876221>,  <27.053646, 37.361641, 49.986187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870487, 37.252277, 49.876221>,  <26.565224, 37.070007, 49.692940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870487, 37.252277, 49.876221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515235, -0.001116, -0.857048,
		-0.390024, 0.890146, -0.235631,
		0.763161, 0.455674, 0.458199,
		27.099436, 37.388981, 50.013680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792709, 37.453262, 49.149456>,  <26.565224, 37.070007, 49.692940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792709, 37.453262, 49.149456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.094158, 37.485950, 49.410339>,  <27.275028, 37.505566, 49.566868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.094158, 37.485950, 49.410339>,  <26.792709, 37.453262, 49.149456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094158, 37.485950, 49.410339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656990, -0.062887, -0.751272,
		-0.020381, 0.994669, -0.101085,
		0.753624, 0.081724, 0.652206,
		27.320246, 37.510468, 49.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288111, 37.895317, 48.798508>,  <26.792709, 37.453262, 49.149456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288111, 37.895317, 48.798508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.488722, 37.717670, 49.095486>,  <27.609089, 37.611080, 49.273674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.488722, 37.717670, 49.095486>,  <27.288111, 37.895317, 48.798508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488722, 37.717670, 49.095486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795846, -0.099694, -0.597236,
		0.339261, 0.890404, 0.303450,
		0.501529, -0.444118, 0.742447,
		27.639181, 37.584435, 49.318218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961327, 38.235229, 48.840496>,  <27.288111, 37.895317, 48.798508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961327, 38.235229, 48.840496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.997332, 37.873238, 49.006824>,  <28.018934, 37.656040, 49.106621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.997332, 37.873238, 49.006824>,  <27.961327, 38.235229, 48.840496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997332, 37.873238, 49.006824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893321, -0.111224, -0.435439,
		0.440314, 0.410656, 0.798427,
		0.090011, -0.904981, 0.415821,
		28.024334, 37.601742, 49.131569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637171, 38.313576, 49.134548>,  <27.961327, 38.235229, 48.840496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637171, 38.313576, 49.134548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.562037, 37.920696, 49.135464>,  <28.516956, 37.684967, 49.136013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.562037, 37.920696, 49.135464>,  <28.637171, 38.313576, 49.134548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562037, 37.920696, 49.135464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939586, -0.180364, -0.290942,
		0.286175, -0.052502, 0.956738,
		-0.187836, -0.982198, 0.002286,
		28.505686, 37.626038, 49.136150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296894, 37.960949, 49.364922>,  <28.637171, 38.313576, 49.134548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296894, 37.960949, 49.364922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.094969, 37.656391, 49.202225>,  <28.973814, 37.473656, 49.104607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.094969, 37.656391, 49.202225>,  <29.296894, 37.960949, 49.364922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094969, 37.656391, 49.202225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828669, -0.295450, -0.475411,
		0.241806, -0.577046, 0.780095,
		-0.504813, -0.761398, -0.406739,
		28.943525, 37.427971, 49.080204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640747, 37.265263, 49.633495>,  <29.296894, 37.960949, 49.364922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640747, 37.265263, 49.633495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.479107, 37.238682, 49.268578>,  <29.382124, 37.222733, 49.049625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.479107, 37.238682, 49.268578>,  <29.640747, 37.265263, 49.633495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479107, 37.238682, 49.268578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810312, -0.488728, -0.323326,
		-0.424380, -0.869902, 0.251341,
		-0.404099, -0.066451, -0.912298,
		29.357878, 37.218746, 48.994888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669500, 36.600018, 49.518139>,  <29.640747, 37.265263, 49.633495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669500, 36.600018, 49.518139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.629580, 36.753819, 49.151054>,  <29.605627, 36.846100, 48.930801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.629580, 36.753819, 49.151054>,  <29.669500, 36.600018, 49.518139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629580, 36.753819, 49.151054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776786, -0.546274, -0.313351,
		-0.621807, -0.744140, -0.244155,
		-0.099801, 0.384500, -0.917714,
		29.599640, 36.869167, 48.875740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561312, 35.943550, 49.046593>,  <29.669500, 36.600018, 49.518139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561312, 35.943550, 49.046593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670483, 36.233734, 48.793861>,  <29.735985, 36.407845, 48.642223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670483, 36.233734, 48.793861>,  <29.561312, 35.943550, 49.046593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670483, 36.233734, 48.793861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382446, -0.684458, -0.620687,
		-0.882750, -0.072241, -0.464256,
		0.272925, 0.725465, -0.631833,
		29.752359, 36.451374, 48.604313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403202, 35.674324, 48.395161>,  <29.561312, 35.943550, 49.046593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403202, 35.674324, 48.395161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685303, 35.953159, 48.343479>,  <29.854563, 36.120461, 48.312469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685303, 35.953159, 48.343479>,  <29.403202, 35.674324, 48.395161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685303, 35.953159, 48.343479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510427, -0.625736, -0.589847,
		-0.492024, 0.350038, -0.797111,
		0.705250, 0.697086, -0.129208,
		29.896877, 36.162285, 48.304718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477924, 35.699627, 47.728577>,  <29.403202, 35.674324, 48.395161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477924, 35.699627, 47.728577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.813805, 35.843731, 47.891113>,  <30.015333, 35.930195, 47.988636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.813805, 35.843731, 47.891113>,  <29.477924, 35.699627, 47.728577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813805, 35.843731, 47.891113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542920, -0.573426, -0.613531,
		0.011976, 0.735794, -0.677099,
		0.839699, 0.360263, 0.406345,
		30.065714, 35.951809, 48.013016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904661, 35.645466, 47.162159>,  <29.477924, 35.699627, 47.728577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904661, 35.645466, 47.162159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158575, 35.694839, 47.467266>,  <30.310923, 35.724464, 47.650330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158575, 35.694839, 47.467266>,  <29.904661, 35.645466, 47.162159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158575, 35.694839, 47.467266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615902, -0.676937, -0.403015,
		0.466598, 0.725617, -0.505734,
		0.634785, 0.123436, 0.762766,
		30.349010, 35.731869, 47.696095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544962, 35.800789, 46.897362>,  <29.904661, 35.645466, 47.162159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544962, 35.800789, 46.897362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604166, 35.628689, 47.253559>,  <30.639688, 35.525429, 47.467278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604166, 35.628689, 47.253559>,  <30.544962, 35.800789, 46.897362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604166, 35.628689, 47.253559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466910, -0.763348, -0.446424,
		0.871831, 0.481854, 0.087906,
		0.148009, -0.430251, 0.890493,
		30.648569, 35.499615, 47.520706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205687, 35.425205, 46.801754>,  <30.544962, 35.800789, 46.897362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205687, 35.425205, 46.801754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.072634, 35.280178, 47.149982>,  <30.992802, 35.193161, 47.358921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.072634, 35.280178, 47.149982>,  <31.205687, 35.425205, 46.801754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072634, 35.280178, 47.149982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502081, -0.849520, -0.161960,
		0.798292, 0.383226, 0.464615,
		-0.332632, -0.362566, 0.870576,
		30.972843, 35.171410, 47.411156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839952, 35.059967, 47.139843>,  <31.205687, 35.425205, 46.801754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839952, 35.059967, 47.139843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484730, 34.904652, 47.238300>,  <31.271597, 34.811462, 47.297375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484730, 34.904652, 47.238300>,  <31.839952, 35.059967, 47.139843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484730, 34.904652, 47.238300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375031, -0.921532, -0.100650,
		0.265909, 0.002927, 0.963994,
		-0.888057, -0.388291, 0.246141,
		31.218313, 34.788166, 47.312141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106506, 34.537075, 47.471954>,  <31.839952, 35.059967, 47.139843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106506, 34.537075, 47.471954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725698, 34.468246, 47.370728>,  <31.497213, 34.426949, 47.309990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725698, 34.468246, 47.370728>,  <32.106506, 34.537075, 47.471954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725698, 34.468246, 47.370728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216419, -0.963233, -0.159200,
		-0.216370, -0.206331, 0.954259,
		-0.952022, -0.172074, -0.253069,
		31.440092, 34.416626, 47.294807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107426, 33.902622, 47.757008>,  <32.106506, 34.537075, 47.471954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107426, 33.902622, 47.757008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.803869, 33.953327, 47.501507>,  <31.621735, 33.983749, 47.348206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.803869, 33.953327, 47.501507>,  <32.107426, 33.902622, 47.757008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803869, 33.953327, 47.501507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278855, -0.823139, -0.494654,
		-0.588488, -0.553511, 0.589328,
		-0.758895, 0.126761, -0.638756,
		31.576200, 33.991356, 47.309879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618773, 33.352699, 47.942780>,  <32.107426, 33.902622, 47.757008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618773, 33.352699, 47.942780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.556347, 33.442074, 47.557922>,  <31.518890, 33.495697, 47.327007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.556347, 33.442074, 47.557922>,  <31.618773, 33.352699, 47.942780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556347, 33.442074, 47.557922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023822, -0.974647, -0.222476,
		-0.987460, -0.011800, 0.157431,
		-0.156064, 0.223436, -0.962144,
		31.509527, 33.509106, 47.269279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268213, 32.860867, 47.717262>,  <31.618773, 33.352699, 47.942780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268213, 32.860867, 47.717262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357830, 33.013119, 47.358391>,  <31.411600, 33.104469, 47.143066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357830, 33.013119, 47.358391>,  <31.268213, 32.860867, 47.717262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357830, 33.013119, 47.358391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151491, -0.922990, -0.353750,
		-0.962734, -0.056660, -0.264449,
		0.224040, 0.380629, -0.897178,
		31.425041, 33.127308, 47.089237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856586, 32.504620, 47.190628>,  <31.268213, 32.860867, 47.717262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856586, 32.504620, 47.190628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165415, 32.668156, 46.995998>,  <31.350712, 32.766277, 46.879219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165415, 32.668156, 46.995998>,  <30.856586, 32.504620, 47.190628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165415, 32.668156, 46.995998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225543, -0.892042, -0.391652,
		-0.594167, 0.192641, -0.780932,
		0.772073, 0.408840, -0.486573,
		31.397038, 32.790810, 46.850025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731377, 32.251526, 46.520248>,  <30.856586, 32.504620, 47.190628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731377, 32.251526, 46.520248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115927, 32.349831, 46.569813>,  <31.346657, 32.408813, 46.599552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115927, 32.349831, 46.569813>,  <30.731377, 32.251526, 46.520248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115927, 32.349831, 46.569813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275183, -0.867110, -0.415206,
		0.005403, 0.433268, -0.901249,
		0.961377, 0.245765, 0.123913,
		31.404339, 32.423561, 46.606987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077475, 31.925932, 45.971539>,  <30.731377, 32.251526, 46.520248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077475, 31.925932, 45.971539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.391289, 32.023296, 46.199665>,  <31.579576, 32.081715, 46.336540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.391289, 32.023296, 46.199665>,  <31.077475, 31.925932, 45.971539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391289, 32.023296, 46.199665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442194, -0.864387, -0.239373,
		0.434705, 0.439985, -0.785776,
		0.784535, 0.243409, 0.570312,
		31.626650, 32.096317, 46.370758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659645, 31.884716, 45.515980>,  <31.077475, 31.925932, 45.971539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659645, 31.884716, 45.515980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.798771, 31.864948, 45.890484>,  <31.882246, 31.853088, 46.115185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.798771, 31.864948, 45.890484>,  <31.659645, 31.884716, 45.515980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798771, 31.864948, 45.890484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464353, -0.858448, -0.217815,
		0.814495, 0.510515, -0.275631,
		0.347813, -0.049419, 0.936261,
		31.903114, 31.850122, 46.171364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337162, 31.733562, 45.436859>,  <31.659645, 31.884716, 45.515980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337162, 31.733562, 45.436859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268589, 31.627316, 45.816345>,  <32.227444, 31.563568, 46.044037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268589, 31.627316, 45.816345>,  <32.337162, 31.733562, 45.436859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268589, 31.627316, 45.816345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314050, -0.927468, -0.202920,
		0.933800, 0.263156, 0.242416,
		-0.171434, -0.265617, 0.948714,
		32.217159, 31.547630, 46.100960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941589, 31.357571, 45.782166>,  <32.337162, 31.733562, 45.436859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941589, 31.357571, 45.782166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594383, 31.242825, 45.944279>,  <32.386059, 31.173977, 46.041546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594383, 31.242825, 45.944279>,  <32.941589, 31.357571, 45.782166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594383, 31.242825, 45.944279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308604, -0.951112, -0.012252,
		0.388985, 0.114437, 0.914109,
		-0.868017, -0.286864, 0.405284,
		32.333977, 31.156765, 46.065865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030022, 30.984774, 46.523201>,  <32.941589, 31.357571, 45.782166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030022, 30.984774, 46.523201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720314, 30.829540, 46.323242>,  <32.534489, 30.736401, 46.203266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720314, 30.829540, 46.323242>,  <33.030022, 30.984774, 46.523201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720314, 30.829540, 46.323242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358427, -0.919918, 0.159001,
		-0.521572, -0.056068, 0.851363,
		-0.774269, -0.388082, -0.499899,
		32.488033, 30.713116, 46.173271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395107, 30.896784, 47.207649>,  <33.030022, 30.984774, 46.523201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395107, 30.896784, 47.207649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655239, 30.596001, 47.164513>,  <33.811317, 30.415531, 47.138630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655239, 30.596001, 47.164513>,  <33.395107, 30.896784, 47.207649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655239, 30.596001, 47.164513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673885, 0.636593, -0.375003,
		0.350639, 0.171202, 0.920729,
		0.650331, -0.751957, -0.107844,
		33.850338, 30.370413, 47.132160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080284, 31.032724, 47.610546>,  <33.395107, 30.896784, 47.207649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080284, 31.032724, 47.610546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134083, 30.830908, 47.269409>,  <34.166363, 30.709818, 47.064728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134083, 30.830908, 47.269409>,  <34.080284, 31.032724, 47.610546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134083, 30.830908, 47.269409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644493, 0.698293, -0.311472,
		0.752688, -0.507763, 0.419092,
		0.134495, -0.504543, -0.852847,
		34.174431, 30.679544, 47.013554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853222, 30.678392, 47.448002>,  <34.080284, 31.032724, 47.610546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853222, 30.678392, 47.448002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631245, 30.796253, 47.136818>,  <34.498058, 30.866970, 46.950108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631245, 30.796253, 47.136818>,  <34.853222, 30.678392, 47.448002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631245, 30.796253, 47.136818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795822, 0.460416, -0.393300,
		0.242299, -0.837376, -0.489994,
		-0.554941, 0.294651, -0.777960,
		34.464764, 30.884649, 46.903431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199696, 30.379265, 46.838764>,  <34.853222, 30.678392, 47.448002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199696, 30.379265, 46.838764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990200, 30.712320, 46.766754>,  <34.864502, 30.912153, 46.723549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990200, 30.712320, 46.766754>,  <35.199696, 30.379265, 46.838764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990200, 30.712320, 46.766754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851040, 0.502050, -0.153876,
		-0.037744, -0.233796, -0.971553,
		-0.523743, 0.832638, -0.180020,
		34.833076, 30.962112, 46.712749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411461, 30.733418, 46.189800>,  <35.199696, 30.379265, 46.838764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411461, 30.733418, 46.189800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250870, 31.002483, 46.438427>,  <35.154514, 31.163923, 46.587601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250870, 31.002483, 46.438427>,  <35.411461, 30.733418, 46.189800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250870, 31.002483, 46.438427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792186, 0.595629, -0.132916,
		-0.459630, 0.439033, -0.772004,
		-0.401473, 0.672664, 0.621565,
		35.130428, 31.204283, 46.624897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560680, 31.278067, 45.837543>,  <35.411461, 30.733418, 46.189800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560680, 31.278067, 45.837543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525322, 31.353880, 46.228699>,  <35.504105, 31.399368, 46.463390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525322, 31.353880, 46.228699>,  <35.560680, 31.278067, 45.837543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525322, 31.353880, 46.228699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818923, 0.572712, -0.036974,
		-0.567055, 0.797545, -0.205842,
		-0.088400, 0.189535, 0.977886,
		35.498802, 31.410740, 46.522064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571968, 32.045914, 45.911285>,  <35.560680, 31.278067, 45.837543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571968, 32.045914, 45.911285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675156, 31.863472, 46.251972>,  <35.737068, 31.754005, 46.456383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675156, 31.863472, 46.251972>,  <35.571968, 32.045914, 45.911285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675156, 31.863472, 46.251972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758998, 0.641132, 0.113452,
		-0.597809, 0.617183, 0.511576,
		0.257967, -0.456108, 0.851715,
		35.752544, 31.726639, 46.507488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729832, 32.583057, 46.367619>,  <35.571968, 32.045914, 45.911285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729832, 32.583057, 46.367619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920422, 32.277679, 46.542030>,  <36.034775, 32.094452, 46.646675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920422, 32.277679, 46.542030>,  <35.729832, 32.583057, 46.367619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920422, 32.277679, 46.542030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831619, 0.552284, 0.058243,
		-0.285276, 0.334857, 0.898047,
		0.476474, -0.763448, 0.436027,
		36.063362, 32.048645, 46.672840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063610, 32.884613, 46.913990>,  <35.729832, 32.583057, 46.367619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063610, 32.884613, 46.913990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243595, 32.532166, 46.855812>,  <36.351585, 32.320694, 46.820904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243595, 32.532166, 46.855812>,  <36.063610, 32.884613, 46.913990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243595, 32.532166, 46.855812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892419, 0.449752, 0.036225,
		0.033496, -0.146098, 0.988703,
		0.449963, -0.881124, -0.145446,
		36.378586, 32.267830, 46.812180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521889, 32.932095, 47.350754>,  <36.063610, 32.884613, 46.913990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521889, 32.932095, 47.350754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670425, 32.654655, 47.103844>,  <36.759548, 32.488194, 46.955696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670425, 32.654655, 47.103844>,  <36.521889, 32.932095, 47.350754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670425, 32.654655, 47.103844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924385, 0.338663, 0.175556,
		0.087284, -0.635792, 0.766910,
		0.371341, -0.693596, -0.617276,
		36.781826, 32.446575, 46.918659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102749, 32.814739, 47.660221>,  <36.521889, 32.932095, 47.350754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102749, 32.814739, 47.660221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182068, 32.650612, 47.304173>,  <37.229660, 32.552135, 47.090542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182068, 32.650612, 47.304173>,  <37.102749, 32.814739, 47.660221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182068, 32.650612, 47.304173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945688, 0.318765, 0.063737,
		0.257587, -0.854415, 0.451246,
		0.198299, -0.410320, -0.890121,
		37.241558, 32.527515, 47.037136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706551, 32.327675, 47.658253>,  <37.102749, 32.814739, 47.660221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706551, 32.327675, 47.658253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679420, 32.472805, 47.286499>,  <37.663143, 32.559883, 47.063446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679420, 32.472805, 47.286499>,  <37.706551, 32.327675, 47.658253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679420, 32.472805, 47.286499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918979, 0.385389, 0.083390,
		0.388430, -0.848428, -0.359571,
		-0.067824, 0.362830, -0.929384,
		37.659073, 32.581654, 47.007683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393623, 32.113426, 47.289925>,  <37.706551, 32.327675, 47.658253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393623, 32.113426, 47.289925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230698, 32.390148, 47.051426>,  <38.132942, 32.556179, 46.908325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230698, 32.390148, 47.051426>,  <38.393623, 32.113426, 47.289925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230698, 32.390148, 47.051426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881996, 0.467395, -0.060212,
		0.237028, -0.550411, -0.800541,
		-0.407310, 0.691801, -0.596246,
		38.108505, 32.597687, 46.872551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849518, 32.176254, 46.762199>,  <38.393623, 32.113426, 47.289925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849518, 32.176254, 46.762199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622940, 32.505821, 46.769196>,  <38.486996, 32.703560, 46.773392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622940, 32.505821, 46.769196>,  <38.849518, 32.176254, 46.762199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622940, 32.505821, 46.769196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822481, 0.566531, -0.050673,
		-0.051660, -0.014316, -0.998562,
		-0.566441, 0.823916, 0.017492,
		38.453007, 32.752995, 46.774445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068684, 32.620098, 46.244629>,  <38.849518, 32.176254, 46.762199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068684, 32.620098, 46.244629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871033, 32.862434, 46.494045>,  <38.752441, 33.007835, 46.643696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871033, 32.862434, 46.494045>,  <39.068684, 32.620098, 46.244629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871033, 32.862434, 46.494045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752515, 0.657220, -0.042233,
		-0.435389, 0.448353, -0.780651,
		-0.494124, 0.605839, 0.623538,
		38.722797, 33.044186, 46.681107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298943, 33.205917, 46.031292>,  <39.068684, 32.620098, 46.244629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298943, 33.205917, 46.031292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.197029, 33.314976, 46.402397>,  <39.135880, 33.380409, 46.625061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.197029, 33.314976, 46.402397>,  <39.298943, 33.205917, 46.031292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197029, 33.314976, 46.402397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794012, 0.606598, 0.039792,
		-0.551930, 0.746795, -0.371039,
		-0.254788, 0.272647, 0.927764,
		39.120594, 33.396770, 46.680725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261879, 33.847683, 46.055065>,  <39.298943, 33.205917, 46.031292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261879, 33.847683, 46.055065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.342121, 33.754128, 46.435604>,  <39.390266, 33.697994, 46.663925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.342121, 33.754128, 46.435604>,  <39.261879, 33.847683, 46.055065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342121, 33.754128, 46.435604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726909, 0.686559, 0.015512,
		-0.656782, 0.688428, 0.307740,
		0.200603, -0.233887, 0.951344,
		39.402302, 33.683960, 46.721008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865044, 33.558880, 46.461193>,  <39.261879, 33.847683, 46.055065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865044, 33.558880, 46.461193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770115, 33.480942, 46.841869>,  <39.713158, 33.434181, 47.070274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770115, 33.480942, 46.841869>,  <39.865044, 33.558880, 46.461193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770115, 33.480942, 46.841869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662836, 0.683709, 0.305271,
		-0.710158, 0.703263, -0.033112,
		-0.237324, -0.194843, 0.951690,
		39.698917, 33.422489, 47.127377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874050, 34.195148, 46.884438>,  <39.865044, 33.558880, 46.461193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874050, 34.195148, 46.884438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.966682, 33.873379, 47.103260>,  <40.022263, 33.680317, 47.234554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.966682, 33.873379, 47.103260>,  <39.874050, 34.195148, 46.884438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966682, 33.873379, 47.103260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769867, 0.495318, 0.402449,
		-0.594707, 0.327963, 0.734005,
		0.231577, -0.804425, 0.547057,
		40.036156, 33.632050, 47.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096981, 34.272797, 46.152382>,  <39.874050, 34.195148, 46.884438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096981, 34.272797, 46.152382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.136063, 34.620319, 45.958218>,  <40.159512, 34.828835, 45.841717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.136063, 34.620319, 45.958218>,  <40.096981, 34.272797, 46.152382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136063, 34.620319, 45.958218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118518, -0.474118, -0.872448,
		-0.988133, 0.142771, 0.056648,
		0.097702, 0.868809, -0.485412,
		40.165375, 34.880962, 45.812595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768906, 34.074211, 45.557224>,  <40.096981, 34.272797, 46.152382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768906, 34.074211, 45.557224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913063, 34.441360, 45.490749>,  <39.999557, 34.661652, 45.450863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913063, 34.441360, 45.490749>,  <39.768906, 34.074211, 45.557224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913063, 34.441360, 45.490749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192062, -0.101328, -0.976138,
		-0.912813, 0.383713, 0.139772,
		0.360394, 0.917876, -0.166191,
		40.021183, 34.716724, 45.440891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084198, 34.445370, 45.332272>,  <39.768906, 34.074211, 45.557224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084198, 34.445370, 45.332272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432041, 34.559666, 45.171204>,  <39.640747, 34.628242, 45.074562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432041, 34.559666, 45.171204>,  <39.084198, 34.445370, 45.332272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432041, 34.559666, 45.171204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227484, -0.491959, -0.840373,
		-0.438222, 0.822393, -0.362809,
		0.869605, 0.285737, -0.402669,
		39.692921, 34.645386, 45.050404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010147, 34.704784, 44.587334>,  <39.084198, 34.445370, 45.332272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010147, 34.704784, 44.587334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349152, 34.517952, 44.688183>,  <39.552555, 34.405853, 44.748692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349152, 34.517952, 44.688183>,  <39.010147, 34.704784, 44.587334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349152, 34.517952, 44.688183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085005, -0.588316, -0.804151,
		0.523932, 0.660092, -0.538306,
		0.847508, -0.467079, 0.252126,
		39.603405, 34.377827, 44.763821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497005, 35.319073, 44.486111>,  <39.010147, 34.704784, 44.587334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497005, 35.319073, 44.486111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538319, 35.010937, 44.234425>,  <39.563107, 34.826054, 44.083412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538319, 35.010937, 44.234425>,  <39.497005, 35.319073, 44.486111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538319, 35.010937, 44.234425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643585, 0.534082, -0.548229,
		0.758374, -0.348330, 0.550941,
		0.103283, -0.770339, -0.629214,
		39.569305, 34.779835, 44.045662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226234, 35.208347, 44.471004>,  <39.497005, 35.319073, 44.486111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226234, 35.208347, 44.471004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059765, 35.082893, 44.129612>,  <39.959881, 35.007622, 43.924778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059765, 35.082893, 44.129612>,  <40.226234, 35.208347, 44.471004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059765, 35.082893, 44.129612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687285, 0.506057, -0.521100,
		0.595346, -0.803454, 0.004948,
		-0.416176, -0.313636, -0.853481,
		39.934914, 34.988804, 43.873569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611359, 34.818951, 44.055984>,  <40.226234, 35.208347, 44.471004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611359, 34.818951, 44.055984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.360741, 34.994568, 43.798401>,  <40.210369, 35.099937, 43.643852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.360741, 34.994568, 43.798401>,  <40.611359, 34.818951, 44.055984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360741, 34.994568, 43.798401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763950, 0.509576, -0.395869,
		0.154341, -0.739981, -0.654681,
		-0.626545, 0.439045, -0.643957,
		40.172775, 35.126282, 43.605213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735626, 34.768124, 43.369888>,  <40.611359, 34.818951, 44.055984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735626, 34.768124, 43.369888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.605843, 35.134800, 43.463188>,  <40.527973, 35.354805, 43.519169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.605843, 35.134800, 43.463188>,  <40.735626, 34.768124, 43.369888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605843, 35.134800, 43.463188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824018, 0.395002, -0.406163,
		-0.464461, 0.060422, -0.883530,
		-0.324455, 0.916691, 0.233251,
		40.508507, 35.409809, 43.533165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855007, 35.305676, 42.839546>,  <40.735626, 34.768124, 43.369888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855007, 35.305676, 42.839546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.847660, 35.468208, 43.204964>,  <40.843250, 35.565727, 43.424213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.847660, 35.468208, 43.204964>,  <40.855007, 35.305676, 42.839546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847660, 35.468208, 43.204964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880658, 0.439188, -0.177638,
		-0.473397, 0.801253, -0.365909,
		-0.018370, 0.406334, 0.913540,
		40.842148, 35.590107, 43.479027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765179, 34.607285, 42.358826>,  <40.855007, 35.305676, 42.839546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765179, 34.607285, 42.358826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107468, 34.502918, 42.537560>,  <41.312840, 34.440300, 42.644798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107468, 34.502918, 42.537560>,  <40.765179, 34.607285, 42.358826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107468, 34.502918, 42.537560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334110, -0.380782, -0.862192,
		0.395105, 0.887090, -0.238670,
		0.855723, -0.260915, 0.446834,
		41.364185, 34.424644, 42.671608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339409, 34.727314, 41.826981>,  <40.765179, 34.607285, 42.358826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339409, 34.727314, 41.826981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.425434, 34.428158, 42.078190>,  <41.477047, 34.248665, 42.228916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.425434, 34.428158, 42.078190>,  <41.339409, 34.727314, 41.826981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425434, 34.428158, 42.078190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414839, -0.512211, -0.752030,
		0.884114, 0.422260, 0.200097,
		0.215060, -0.747888, 0.628023,
		41.489952, 34.203793, 42.266598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134377, 34.548267, 41.895542>,  <41.339409, 34.727314, 41.826981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134377, 34.548267, 41.895542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907879, 34.219425, 41.919254>,  <41.771980, 34.022121, 41.933479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907879, 34.219425, 41.919254>,  <42.134377, 34.548267, 41.895542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907879, 34.219425, 41.919254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585285, -0.451686, -0.673365,
		0.580349, -0.346597, 0.736929,
		-0.566247, -0.822101, 0.059277,
		41.738007, 33.972794, 41.937038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555096, 34.073681, 41.801655>,  <42.134377, 34.548267, 41.895542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555096, 34.073681, 41.801655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.226822, 33.886410, 41.670635>,  <42.029858, 33.774048, 41.592026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.226822, 33.886410, 41.670635>,  <42.555096, 34.073681, 41.801655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226822, 33.886410, 41.670635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468631, -0.223564, -0.854636,
		0.326893, -0.854886, 0.402878,
		-0.820686, -0.468176, -0.327545,
		41.980618, 33.745956, 41.572372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911842, 34.375736, 41.289371>,  <42.555096, 34.073681, 41.801655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911842, 34.375736, 41.289371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.952007, 34.723618, 41.096069>,  <42.976105, 34.932346, 40.980087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.952007, 34.723618, 41.096069>,  <42.911842, 34.375736, 41.289371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952007, 34.723618, 41.096069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328748, -0.487429, -0.808911,
		-0.939064, -0.077645, -0.334857,
		0.100412, 0.869703, -0.483253,
		42.982132, 34.984528, 40.951092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482338, 34.355373, 40.648132>,  <42.911842, 34.375736, 41.289371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482338, 34.355373, 40.648132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.794369, 34.602932, 40.611362>,  <42.981586, 34.751465, 40.589298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.794369, 34.602932, 40.611362>,  <42.482338, 34.355373, 40.648132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794369, 34.602932, 40.611362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300157, -0.499076, -0.812913,
		-0.548986, 0.606542, -0.575083,
		0.780077, 0.618894, -0.091928,
		43.028393, 34.788601, 40.583782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493835, 34.341316, 39.966316>,  <42.482338, 34.355373, 40.648132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493835, 34.341316, 39.966316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.848782, 34.494930, 40.068367>,  <43.061749, 34.587101, 40.129597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.848782, 34.494930, 40.068367>,  <42.493835, 34.341316, 39.966316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848782, 34.494930, 40.068367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368338, -0.257665, -0.893272,
		-0.277314, 0.886635, -0.370100,
		0.887369, 0.384039, 0.255127,
		43.114994, 34.610142, 40.144905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638969, 35.002365, 39.529560>,  <42.493835, 34.341316, 39.966316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638969, 35.002365, 39.529560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.960369, 34.811836, 39.672394>,  <43.153210, 34.697517, 39.758095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.960369, 34.811836, 39.672394>,  <42.638969, 35.002365, 39.529560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960369, 34.811836, 39.672394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370568, -0.069252, -0.926220,
		0.465907, 0.876540, 0.120866,
		0.803499, -0.476321, 0.357082,
		43.201420, 34.668941, 39.779518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117195, 35.254421, 39.169868>,  <42.638969, 35.002365, 39.529560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117195, 35.254421, 39.169868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.241138, 34.899975, 39.307728>,  <43.315506, 34.687305, 39.390446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.241138, 34.899975, 39.307728>,  <43.117195, 35.254421, 39.169868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241138, 34.899975, 39.307728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277666, -0.262353, -0.924161,
		0.909334, 0.382060, 0.164751,
		0.309862, -0.886116, 0.344651,
		43.334099, 34.634140, 39.411121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749420, 35.180092, 38.918716>,  <43.117195, 35.254421, 39.169868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749420, 35.180092, 38.918716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.566769, 34.831879, 38.992104>,  <43.457176, 34.622952, 39.036137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.566769, 34.831879, 38.992104>,  <43.749420, 35.180092, 38.918716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566769, 34.831879, 38.992104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292191, -0.341530, -0.893298,
		0.840305, -0.354300, 0.410316,
		-0.456631, -0.870533, 0.183466,
		43.429779, 34.570717, 39.047142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286121, 34.653648, 38.887539>,  <43.749420, 35.180092, 38.918716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286121, 34.653648, 38.887539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.914753, 34.535454, 38.797455>,  <43.691933, 34.464539, 38.743404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.914753, 34.535454, 38.797455>,  <44.286121, 34.653648, 38.887539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914753, 34.535454, 38.797455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327007, -0.362184, -0.872863,
		0.176349, -0.884031, 0.432885,
		-0.928422, -0.295485, -0.225213,
		43.636227, 34.446808, 38.729889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333569, 33.897358, 38.564247>,  <44.286121, 34.653648, 38.887539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333569, 33.897358, 38.564247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.023273, 34.126949, 38.459339>,  <43.837097, 34.264706, 38.396397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.023273, 34.126949, 38.459339>,  <44.333569, 33.897358, 38.564247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023273, 34.126949, 38.459339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309407, -0.016278, -0.950790,
		-0.550004, -0.818708, -0.164966,
		-0.775734, 0.573980, -0.262267,
		43.790554, 34.299145, 38.380657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832504, 33.574089, 38.137733>,  <44.333569, 33.897358, 38.564247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832504, 33.574089, 38.137733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.831352, 33.961071, 38.036522>,  <43.830662, 34.193260, 37.975796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.831352, 33.961071, 38.036522>,  <43.832504, 33.574089, 38.137733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831352, 33.961071, 38.036522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284285, -0.241797, -0.927748,
		-0.958735, -0.074602, -0.274337,
		-0.002878, 0.967455, -0.253028,
		43.830490, 34.251308, 37.960613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542950, 33.492153, 37.416969>,  <43.832504, 33.574089, 38.137733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542950, 33.492153, 37.416969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.790890, 33.800896, 37.473576>,  <43.939655, 33.986141, 37.507538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.790890, 33.800896, 37.473576>,  <43.542950, 33.492153, 37.416969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790890, 33.800896, 37.473576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509153, -0.258363, -0.820982,
		-0.597117, 0.580938, -0.553139,
		0.619850, 0.771855, 0.141513,
		43.976845, 34.032452, 37.516029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665520, 33.119999, 36.756313>,  <43.542950, 33.492153, 37.416969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665520, 33.119999, 36.756313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.774040, 32.735096, 36.747803>,  <43.839153, 32.504154, 36.742695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.774040, 32.735096, 36.747803>,  <43.665520, 33.119999, 36.756313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774040, 32.735096, 36.747803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572163, 0.179018, -0.800364,
		0.773966, 0.204966, 0.599137,
		0.271304, -0.962259, -0.021280,
		43.855431, 32.446419, 36.741417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316811, 33.027840, 36.341011>,  <43.665520, 33.119999, 36.756313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316811, 33.027840, 36.341011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.178219, 32.653767, 36.311665>,  <44.095062, 32.429321, 36.294056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.178219, 32.653767, 36.311665>,  <44.316811, 33.027840, 36.341011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178219, 32.653767, 36.311665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148248, 0.022642, -0.988691,
		0.926268, -0.353440, 0.130794,
		-0.346482, -0.935183, -0.073369,
		44.074276, 32.373211, 36.289654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737495, 32.714256, 35.852489>,  <44.316811, 33.027840, 36.341011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737495, 32.714256, 35.852489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.407810, 32.487858, 35.859722>,  <44.209999, 32.352020, 35.864063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.407810, 32.487858, 35.859722>,  <44.737495, 32.714256, 35.852489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407810, 32.487858, 35.859722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074181, -0.139572, -0.987429,
		0.561401, -0.812510, 0.157023,
		-0.824212, -0.565992, 0.018083,
		44.160545, 32.318062, 35.865147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948490, 32.095184, 35.614109>,  <44.737495, 32.714256, 35.852489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948490, 32.095184, 35.614109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.554901, 32.146149, 35.564198>,  <44.318748, 32.176727, 35.534252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.554901, 32.146149, 35.564198>,  <44.948490, 32.095184, 35.614109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554901, 32.146149, 35.564198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083002, -0.292100, -0.952779,
		-0.157839, -0.947863, 0.276843,
		-0.983970, 0.127407, -0.124779,
		44.259708, 32.184372, 35.526764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958439, 31.996643, 34.835537>,  <44.948490, 32.095184, 35.614109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958439, 31.996643, 34.835537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.068707, 32.311619, 34.615013>,  <45.134869, 32.500603, 34.482697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.068707, 32.311619, 34.615013>,  <44.958439, 31.996643, 34.835537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068707, 32.311619, 34.615013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902873, -0.015281, 0.429635,
		0.329886, -0.616204, -0.715170,
		0.275672, 0.787438, -0.551313,
		45.151409, 32.547852, 34.449619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689812, 31.891256, 34.665657>,  <44.958439, 31.996643, 34.835537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689812, 31.891256, 34.665657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.715202, 32.287201, 34.614826>,  <45.730434, 32.524769, 34.584328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.715202, 32.287201, 34.614826>,  <45.689812, 31.891256, 34.665657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715202, 32.287201, 34.614826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925710, -0.010824, 0.378079,
		0.372870, -0.141633, -0.917010,
		0.063474, 0.989860, -0.127075,
		45.734245, 32.584160, 34.576702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601273, 32.443050, 35.204472>,  <45.689812, 31.891256, 34.665657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601273, 32.443050, 35.204472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.962044, 32.283207, 35.269997>,  <46.178509, 32.187302, 35.309311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.962044, 32.283207, 35.269997>,  <45.601273, 32.443050, 35.204472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962044, 32.283207, 35.269997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428300, 0.876364, -0.220332,
		-0.055511, 0.268884, 0.961572,
		0.901930, -0.399610, 0.163810,
		46.232624, 32.163322, 35.319141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008842, 32.747677, 35.759571>,  <45.601273, 32.443050, 35.204472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008842, 32.747677, 35.759571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308506, 32.617256, 35.528938>,  <46.488304, 32.539005, 35.390560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308506, 32.617256, 35.528938>,  <46.008842, 32.747677, 35.759571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308506, 32.617256, 35.528938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401319, 0.915932, 0.003491,
		0.526971, -0.234008, 0.817032,
		0.749163, -0.326050, -0.576582,
		46.533257, 32.519440, 35.355965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538170, 33.112423, 35.981300>,  <46.008842, 32.747677, 35.759571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538170, 33.112423, 35.981300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.669907, 32.992527, 35.623150>,  <46.748947, 32.920589, 35.408260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.669907, 32.992527, 35.623150>,  <46.538170, 33.112423, 35.981300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669907, 32.992527, 35.623150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541719, 0.836664, -0.080828,
		0.773353, -0.458421, 0.437920,
		0.329339, -0.299738, -0.895373,
		46.768707, 32.902607, 35.354538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255875, 33.075771, 35.996574>,  <46.538170, 33.112423, 35.981300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255875, 33.075771, 35.996574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.136642, 33.132164, 35.618946>,  <47.065105, 33.166000, 35.392368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.136642, 33.132164, 35.618946>,  <47.255875, 33.075771, 35.996574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.136642, 33.132164, 35.618946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608427, 0.790142, -0.074108,
		0.735504, -0.596490, -0.321301,
		-0.298078, 0.140981, -0.944073,
		47.047218, 33.174458, 35.335724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.964828, 33.108650, 35.625786>,  <47.255875, 33.075771, 35.996574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.964828, 33.108650, 35.625786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.653687, 33.302265, 35.465462>,  <47.466999, 33.418434, 35.369267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.653687, 33.302265, 35.465462>,  <47.964828, 33.108650, 35.625786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.653687, 33.302265, 35.465462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517548, 0.855185, 0.028340,
		0.356483, -0.185392, -0.915724,
		-0.777859, 0.484033, -0.400808,
		47.420330, 33.447475, 35.345219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.129292, 33.435638, 34.906780>,  <47.964828, 33.108650, 35.625786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.129292, 33.435638, 34.906780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.843311, 33.619999, 35.117081>,  <47.671722, 33.730614, 35.243263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.843311, 33.619999, 35.117081>,  <48.129292, 33.435638, 34.906780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843311, 33.619999, 35.117081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542527, 0.840037, 0.001350,
		-0.441031, 0.286202, -0.850635,
		-0.714952, 0.460897, 0.525755,
		47.628826, 33.758266, 35.274807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.029873, 34.029354, 34.534378>,  <48.129292, 33.435638, 34.906780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.029873, 34.029354, 34.534378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.879005, 34.114662, 34.894878>,  <47.788483, 34.165848, 35.111179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.879005, 34.114662, 34.894878>,  <48.029873, 34.029354, 34.534378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.879005, 34.114662, 34.894878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424137, 0.904857, -0.036628,
		-0.823317, 0.368440, -0.431743,
		-0.377170, 0.213275, 0.901253,
		47.765854, 34.178646, 35.165253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.607338, 34.644745, 34.539219>,  <48.029873, 34.029354, 34.534378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.607338, 34.644745, 34.539219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.776051, 34.588680, 34.897537>,  <47.877277, 34.555042, 35.112530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.776051, 34.588680, 34.897537>,  <47.607338, 34.644745, 34.539219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.776051, 34.588680, 34.897537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644081, 0.741694, -0.187215,
		-0.638166, 0.655930, 0.403112,
		0.421786, -0.140162, 0.895796,
		47.902588, 34.546631, 35.166275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.542999, 35.281132, 34.916832>,  <47.607338, 34.644745, 34.539219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.542999, 35.281132, 34.916832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.861691, 35.055611, 35.003880>,  <48.052906, 34.920300, 35.056107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.861691, 35.055611, 35.003880>,  <47.542999, 35.281132, 34.916832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.861691, 35.055611, 35.003880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604226, 0.736182, -0.304872,
		0.011683, 0.374388, 0.927198,
		0.796728, -0.563799, 0.217614,
		48.100708, 34.886471, 35.069164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.462402, 33.658993, 55.267075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.742237, 33.926170, 55.368603>,  <30.910137, 34.086479, 55.429520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.742237, 33.926170, 55.368603>,  <30.462402, 33.658993, 55.267075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742237, 33.926170, 55.368603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566486, -0.301947, -0.766761,
		-0.435515, 0.680202, -0.589621,
		0.699586, 0.667947, 0.253822,
		30.952112, 34.126556, 55.444748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513432, 34.037533, 54.710274>,  <30.462402, 33.658993, 55.267075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513432, 34.037533, 54.710274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.845343, 34.087223, 54.927914>,  <31.044489, 34.117039, 55.058498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.845343, 34.087223, 54.927914>,  <30.513432, 34.037533, 54.710274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845343, 34.087223, 54.927914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544043, -0.397458, -0.738948,
		0.124458, 0.909172, -0.397386,
		0.829776, 0.124227, 0.544096,
		31.094275, 34.124493, 55.091141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888279, 34.352837, 54.317024>,  <30.513432, 34.037533, 54.710274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888279, 34.352837, 54.317024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.157293, 34.189049, 54.563610>,  <31.318703, 34.090775, 54.711563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.157293, 34.189049, 54.563610>,  <30.888279, 34.352837, 54.317024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157293, 34.189049, 54.563610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443328, -0.444080, -0.778622,
		0.592582, 0.796948, -0.117131,
		0.672537, -0.409470, 0.616464,
		31.359055, 34.066208, 54.748550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553539, 34.496792, 54.027336>,  <30.888279, 34.352837, 54.317024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553539, 34.496792, 54.027336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.629986, 34.194931, 54.278408>,  <31.675854, 34.013817, 54.429050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.629986, 34.194931, 54.278408>,  <31.553539, 34.496792, 54.027336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629986, 34.194931, 54.278408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671771, -0.365687, -0.644203,
		0.715680, 0.544774, 0.437062,
		0.191117, -0.754648, 0.627678,
		31.687321, 33.968536, 54.466713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359085, 34.511806, 54.227741>,  <31.553539, 34.496792, 54.027336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359085, 34.511806, 54.227741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.212978, 34.141548, 54.267246>,  <32.125313, 33.919392, 54.290951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.212978, 34.141548, 54.267246>,  <32.359085, 34.511806, 54.227741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212978, 34.141548, 54.267246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649528, -0.329427, -0.685267,
		0.666851, -0.186159, 0.721564,
		-0.365271, -0.925647, 0.098763,
		32.103397, 33.863853, 54.296875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857296, 34.092743, 54.100700>,  <32.359085, 34.511806, 54.227741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857296, 34.092743, 54.100700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.589329, 33.798000, 54.064358>,  <32.428547, 33.621155, 54.042553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.589329, 33.798000, 54.064358>,  <32.857296, 34.092743, 54.100700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589329, 33.798000, 54.064358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535052, -0.394329, -0.747144,
		0.514709, -0.549138, 0.658424,
		-0.669921, -0.736853, -0.090853,
		32.388351, 33.576946, 54.037102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233208, 33.488724, 54.144840>,  <32.857296, 34.092743, 54.100700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233208, 33.488724, 54.144840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.905273, 33.380562, 53.942951>,  <32.708511, 33.315666, 53.821815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.905273, 33.380562, 53.942951>,  <33.233208, 33.488724, 54.144840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905273, 33.380562, 53.942951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562219, -0.547195, -0.620071,
		-0.108514, -0.792124, 0.600637,
		-0.819838, -0.270403, -0.504725,
		32.659321, 33.299442, 53.791534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307430, 32.767593, 54.060207>,  <33.233208, 33.488724, 54.144840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307430, 32.767593, 54.060207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.032032, 32.882965, 53.794037>,  <32.866795, 32.952187, 53.634335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.032032, 32.882965, 53.794037>,  <33.307430, 32.767593, 54.060207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032032, 32.882965, 53.794037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441359, -0.561420, -0.700007,
		-0.575490, -0.775637, 0.259226,
		-0.688486, 0.288436, -0.665426,
		32.825485, 32.969494, 53.594410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208691, 32.200233, 53.610497>,  <33.307430, 32.767593, 54.060207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208691, 32.200233, 53.610497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.054714, 32.505608, 53.403038>,  <32.962330, 32.688831, 53.278564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.054714, 32.505608, 53.403038>,  <33.208691, 32.200233, 53.610497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054714, 32.505608, 53.403038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384257, -0.378360, -0.842135,
		-0.839148, -0.523463, -0.147710,
		-0.384939, 0.763434, -0.518644,
		32.939232, 32.734638, 53.247444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816425, 31.880312, 53.086021>,  <33.208691, 32.200233, 53.610497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816425, 31.880312, 53.086021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.883148, 32.241550, 52.927734>,  <32.923183, 32.458294, 52.832764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.883148, 32.241550, 52.927734>,  <32.816425, 31.880312, 53.086021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883148, 32.241550, 52.927734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030110, -0.405814, -0.913459,
		-0.985530, 0.140456, -0.094885,
		0.166806, 0.903099, -0.395713,
		32.933189, 32.512482, 52.809021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303730, 31.971109, 52.618301>,  <32.816425, 31.880312, 53.086021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303730, 31.971109, 52.618301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.617786, 32.199848, 52.523182>,  <32.806221, 32.337090, 52.466110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.617786, 32.199848, 52.523182>,  <32.303730, 31.971109, 52.618301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617786, 32.199848, 52.523182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061435, -0.310158, -0.948698,
		-0.616263, 0.759470, -0.208387,
		0.785141, 0.571845, -0.237797,
		32.853329, 32.371403, 52.451843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231606, 32.244194, 51.888458>,  <32.303730, 31.971109, 52.618301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231606, 32.244194, 51.888458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.620426, 32.299229, 51.964554>,  <32.853718, 32.332249, 52.010212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.620426, 32.299229, 51.964554>,  <32.231606, 32.244194, 51.888458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620426, 32.299229, 51.964554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229542, -0.386733, -0.893167,
		-0.049312, 0.911871, -0.407504,
		0.972049, 0.137583, 0.190242,
		32.912041, 32.340504, 52.021626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550110, 32.519600, 51.289825>,  <32.231606, 32.244194, 51.888458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550110, 32.519600, 51.289825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.869267, 32.396015, 51.496868>,  <33.060760, 32.321865, 51.621094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.869267, 32.396015, 51.496868>,  <32.550110, 32.519600, 51.289825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869267, 32.396015, 51.496868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378716, -0.411118, -0.829190,
		0.468983, 0.857628, -0.211020,
		0.797891, -0.308959, 0.517605,
		33.108635, 32.303326, 51.652149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053688, 32.565445, 50.738415>,  <32.550110, 32.519600, 51.289825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053688, 32.565445, 50.738415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.192032, 32.339405, 51.038025>,  <33.275036, 32.203781, 51.217793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.192032, 32.339405, 51.038025>,  <33.053688, 32.565445, 50.738415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192032, 32.339405, 51.038025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359066, -0.657816, -0.662080,
		0.866866, 0.497934, -0.024601,
		0.345855, -0.565101, 0.749030,
		33.295788, 32.169876, 51.262733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663822, 32.461365, 50.547638>,  <33.053688, 32.565445, 50.738415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663822, 32.461365, 50.547638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.595955, 32.169258, 50.812344>,  <33.555233, 31.993996, 50.971169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.595955, 32.169258, 50.812344>,  <33.663822, 32.461365, 50.547638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595955, 32.169258, 50.812344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490822, -0.644908, -0.585823,
		0.854580, 0.225412, 0.467848,
		-0.169667, -0.730263, 0.661763,
		33.545055, 31.950180, 51.010872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280785, 32.085026, 50.507591>,  <33.663822, 32.461365, 50.547638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280785, 32.085026, 50.507591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.019012, 31.842560, 50.688381>,  <33.861950, 31.697079, 50.796856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.019012, 31.842560, 50.688381>,  <34.280785, 32.085026, 50.507591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019012, 31.842560, 50.688381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325040, -0.765235, -0.555665,
		0.682693, -0.216734, 0.697823,
		-0.654430, -0.606169, 0.451974,
		33.822685, 31.660709, 50.823975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678516, 31.359646, 50.705082>,  <34.280785, 32.085026, 50.507591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678516, 31.359646, 50.705082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.283455, 31.298183, 50.692936>,  <34.046417, 31.261305, 50.685650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.283455, 31.298183, 50.692936>,  <34.678516, 31.359646, 50.705082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283455, 31.298183, 50.692936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138414, -0.765517, -0.628351,
		0.073309, -0.624798, 0.777337,
		-0.987657, -0.153658, -0.030362,
		33.987156, 31.252087, 50.683826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608471, 30.568842, 50.730141>,  <34.678516, 31.359646, 50.705082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608471, 30.568842, 50.730141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.278057, 30.733021, 50.575630>,  <34.079811, 30.831528, 50.482925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.278057, 30.733021, 50.575630>,  <34.608471, 30.568842, 50.730141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278057, 30.733021, 50.575630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003538, -0.689100, -0.724658,
		-0.563614, -0.597223, 0.570670,
		-0.826031, 0.410446, -0.386273,
		34.030247, 30.856155, 50.459747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142212, 29.971085, 50.578114>,  <34.608471, 30.568842, 50.730141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142212, 29.971085, 50.578114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.011635, 30.269333, 50.345741>,  <33.933289, 30.448282, 50.206318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.011635, 30.269333, 50.345741>,  <34.142212, 29.971085, 50.578114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011635, 30.269333, 50.345741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013521, -0.618223, -0.785887,
		-0.945119, -0.248696, 0.211899,
		-0.326447, 0.745622, -0.580931,
		33.913700, 30.493019, 50.171463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668869, 29.729031, 50.234291>,  <34.142212, 29.971085, 50.578114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668869, 29.729031, 50.234291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.772858, 30.031096, 49.993576>,  <33.835251, 30.212334, 49.849148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.772858, 30.031096, 49.993576>,  <33.668869, 29.729031, 50.234291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772858, 30.031096, 49.993576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040684, -0.631227, -0.774530,
		-0.964759, 0.176872, -0.194824,
		0.259971, 0.755161, -0.601786,
		33.850849, 30.257645, 49.813042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376659, 29.565012, 49.663273>,  <33.668869, 29.729031, 50.234291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376659, 29.565012, 49.663273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.627293, 29.850315, 49.537636>,  <33.777672, 30.021496, 49.462254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.627293, 29.850315, 49.537636>,  <33.376659, 29.565012, 49.663273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627293, 29.850315, 49.537636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266465, -0.574796, -0.773696,
		-0.732383, 0.401093, -0.550217,
		0.626587, 0.713256, -0.314094,
		33.815269, 30.064291, 49.443409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225060, 29.600885, 48.920570>,  <33.376659, 29.565012, 49.663273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225060, 29.600885, 48.920570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.588779, 29.736204, 49.017502>,  <33.807011, 29.817396, 49.075661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.588779, 29.736204, 49.017502>,  <33.225060, 29.600885, 48.920570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588779, 29.736204, 49.017502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402319, -0.565848, -0.719691,
		-0.106348, 0.751911, -0.650630,
		0.909302, 0.338299, 0.242331,
		33.861568, 29.837694, 49.090202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245049, 30.365519, 48.721424>,  <33.225060, 29.600885, 48.920570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245049, 30.365519, 48.721424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.955490, 30.417669, 48.450432>,  <32.781754, 30.448959, 48.287838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.955490, 30.417669, 48.450432>,  <33.245049, 30.365519, 48.721424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955490, 30.417669, 48.450432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502133, 0.573841, 0.646969,
		0.473117, 0.808522, -0.349933,
		-0.723895, 0.130379, -0.677479,
		32.738323, 30.456783, 48.247189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051456, 31.044374, 48.770699>,  <33.245049, 30.365519, 48.721424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051456, 31.044374, 48.770699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.738544, 30.881521, 48.582111>,  <32.550797, 30.783810, 48.468960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.738544, 30.881521, 48.582111>,  <33.051456, 31.044374, 48.770699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738544, 30.881521, 48.582111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622243, 0.546213, 0.560771,
		0.029213, 0.732047, -0.680627,
		-0.782279, -0.407134, -0.471468,
		32.503860, 30.759380, 48.440670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603626, 31.565893, 48.628544>,  <33.051456, 31.044374, 48.770699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603626, 31.565893, 48.628544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.368225, 31.243250, 48.606457>,  <32.226986, 31.049664, 48.593204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.368225, 31.243250, 48.606457>,  <32.603626, 31.565893, 48.628544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368225, 31.243250, 48.606457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739362, 0.509289, 0.440418,
		-0.327121, 0.300015, -0.896093,
		-0.588503, -0.806607, -0.055221,
		32.191673, 31.001268, 48.589890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886539, 31.799887, 48.434917>,  <32.603626, 31.565893, 48.628544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886539, 31.799887, 48.434917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.842297, 31.438774, 48.601170>,  <31.815750, 31.222107, 48.700920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.842297, 31.438774, 48.601170>,  <31.886539, 31.799887, 48.434917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842297, 31.438774, 48.601170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715445, 0.362605, 0.597207,
		-0.689858, -0.231306, -0.685998,
		-0.110609, -0.902782, 0.415633,
		31.809114, 31.167940, 48.725861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170677, 31.770844, 48.635036>,  <31.886539, 31.799887, 48.434917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170677, 31.770844, 48.635036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.319187, 31.468515, 48.850773>,  <31.408293, 31.287119, 48.980217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.319187, 31.468515, 48.850773>,  <31.170677, 31.770844, 48.635036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319187, 31.468515, 48.850773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597418, 0.250217, 0.761894,
		-0.710808, -0.605086, -0.358641,
		0.371273, -0.755819, 0.539345,
		31.430569, 31.241770, 49.012577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607979, 31.439886, 48.913280>,  <31.170677, 31.770844, 48.635036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607979, 31.439886, 48.913280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.928062, 31.369398, 49.142578>,  <31.120113, 31.327105, 49.280155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.928062, 31.369398, 49.142578>,  <30.607979, 31.439886, 48.913280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928062, 31.369398, 49.142578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560998, 0.117946, 0.819372,
		-0.212003, -0.977259, -0.004478,
		0.800210, -0.176221, 0.573245,
		31.168125, 31.316532, 49.314552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389147, 31.087803, 49.516144>,  <30.607979, 31.439886, 48.913280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389147, 31.087803, 49.516144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.757450, 31.174559, 49.645859>,  <30.978432, 31.226612, 49.723690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.757450, 31.174559, 49.645859>,  <30.389147, 31.087803, 49.516144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757450, 31.174559, 49.645859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350669, 0.095788, 0.931588,
		0.170992, -0.971484, 0.164255,
		0.920756, 0.216894, 0.324290,
		31.033678, 31.239626, 49.743145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554539, 30.648003, 50.030209>,  <30.389147, 31.087803, 49.516144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554539, 30.648003, 50.030209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.784309, 30.971542, 50.080486>,  <30.922171, 31.165667, 50.110653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.784309, 30.971542, 50.080486>,  <30.554539, 30.648003, 50.030209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784309, 30.971542, 50.080486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272021, 0.043801, 0.961294,
		0.772036, -0.586383, 0.245184,
		0.574425, 0.808849, 0.125693,
		30.956636, 31.214197, 50.118195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878441, 30.523060, 50.645538>,  <30.554539, 30.648003, 50.030209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878441, 30.523060, 50.645538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.899151, 30.920128, 50.601856>,  <30.911577, 31.158369, 50.575645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.899151, 30.920128, 50.601856>,  <30.878441, 30.523060, 50.645538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899151, 30.920128, 50.601856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328328, 0.120197, 0.936885,
		0.943143, -0.012653, 0.332145,
		0.051777, 0.992669, -0.109209,
		30.914684, 31.217928, 50.569092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053602, 30.724663, 51.265793>,  <30.878441, 30.523060, 50.645538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053602, 30.724663, 51.265793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.908224, 31.065718, 51.115635>,  <30.820997, 31.270350, 51.025539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.908224, 31.065718, 51.115635>,  <31.053602, 30.724663, 51.265793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908224, 31.065718, 51.115635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573869, 0.112523, 0.811180,
		0.733882, 0.510245, 0.448405,
		-0.363445, 0.852636, -0.375392,
		30.799191, 31.321508, 51.003017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074942, 31.188847, 51.807865>,  <31.053602, 30.724663, 51.265793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074942, 31.188847, 51.807865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.824011, 31.358780, 51.546799>,  <30.673452, 31.460741, 51.390160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.824011, 31.358780, 51.546799>,  <31.074942, 31.188847, 51.807865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824011, 31.358780, 51.546799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515254, 0.401993, 0.756911,
		0.583931, 0.811121, -0.033282,
		-0.627326, 0.424835, -0.652670,
		30.635813, 31.486231, 51.350998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162422, 31.976118, 51.969082>,  <31.074942, 31.188847, 51.807865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162422, 31.976118, 51.969082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.812204, 31.916182, 51.785355>,  <30.602074, 31.880220, 51.675117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.812204, 31.916182, 51.785355>,  <31.162422, 31.976118, 51.969082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812204, 31.916182, 51.785355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482020, 0.335594, 0.809341,
		0.032870, 0.930013, -0.366054,
		-0.875544, -0.149842, -0.459316,
		30.549541, 31.871229, 51.647560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840006, 32.543037, 52.090054>,  <31.162422, 31.976118, 51.969082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840006, 32.543037, 52.090054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.560190, 32.277264, 51.984848>,  <30.392302, 32.117802, 51.921722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.560190, 32.277264, 51.984848>,  <30.840006, 32.543037, 52.090054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560190, 32.277264, 51.984848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645652, 0.429944, 0.631095,
		-0.306238, 0.611291, -0.729754,
		-0.699537, -0.664433, -0.263016,
		30.350328, 32.077934, 51.905945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256487, 32.910358, 52.004967>,  <30.840006, 32.543037, 52.090054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256487, 32.910358, 52.004967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.130487, 32.536926, 52.073326>,  <30.054888, 32.312866, 52.114342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.130487, 32.536926, 52.073326>,  <30.256487, 32.910358, 52.004967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130487, 32.536926, 52.073326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692173, 0.349173, 0.631644,
		-0.649362, 0.080678, -0.756188,
		-0.315001, -0.933579, 0.170896,
		30.035988, 32.256851, 52.124596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581739, 32.945961, 51.977516>,  <30.256487, 32.910358, 52.004967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581739, 32.945961, 51.977516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.628227, 32.611446, 52.191853>,  <29.656120, 32.410740, 52.320454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.628227, 32.611446, 52.191853>,  <29.581739, 32.945961, 51.977516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628227, 32.611446, 52.191853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660539, 0.337818, 0.670498,
		-0.741743, -0.431865, -0.513138,
		0.116217, -0.836285, 0.535837,
		29.663092, 32.360561, 52.352604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922352, 32.748131, 52.208328>,  <29.581739, 32.945961, 51.977516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922352, 32.748131, 52.208328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.204756, 32.575897, 52.433239>,  <29.374197, 32.472557, 52.568184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.204756, 32.575897, 52.433239>,  <28.922352, 32.748131, 52.208328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204756, 32.575897, 52.433239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518317, 0.226867, 0.824548,
		-0.482598, -0.873572, -0.063010,
		0.706007, -0.430584, 0.562273,
		29.416557, 32.446720, 52.601921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477207, 32.381897, 52.740009>,  <28.922352, 32.748131, 52.208328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477207, 32.381897, 52.740009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.843012, 32.397114, 52.901119>,  <29.062494, 32.406242, 52.997784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.843012, 32.397114, 52.901119>,  <28.477207, 32.381897, 52.740009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843012, 32.397114, 52.901119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332908, 0.636455, 0.695771,
		-0.229878, -0.770375, 0.594709,
		0.914510, 0.038041, 0.402771,
		29.117365, 32.408527, 53.021950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457346, 32.255352, 53.510281>,  <28.477207, 32.381897, 52.740009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457346, 32.255352, 53.510281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.783167, 32.471474, 53.425835>,  <28.978659, 32.601147, 53.375168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.783167, 32.471474, 53.425835>,  <28.457346, 32.255352, 53.510281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783167, 32.471474, 53.425835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176591, 0.577627, 0.796971,
		0.552549, -0.611898, 0.565923,
		0.814558, 0.540303, -0.211112,
		29.027533, 32.633568, 53.362499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.963972, 32.322388, 54.259796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116524, 32.586876, 54.001389>,  <29.208055, 32.745567, 53.846344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116524, 32.586876, 54.001389>,  <28.963972, 32.322388, 54.259796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116524, 32.586876, 54.001389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019823, 0.704528, 0.709400,
		0.924206, -0.257744, 0.281799,
		0.381379, 0.661217, -0.646019,
		29.230938, 32.785240, 53.807583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515808, 32.722221, 54.574291>,  <28.963972, 32.322388, 54.259796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515808, 32.722221, 54.574291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362844, 32.955032, 54.287235>,  <29.271067, 33.094719, 54.115002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362844, 32.955032, 54.287235>,  <29.515808, 32.722221, 54.574291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362844, 32.955032, 54.287235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066099, 0.757454, 0.649534,
		0.921627, 0.295822, -0.251185,
		-0.382407, 0.582025, -0.717643,
		29.248123, 33.129639, 54.071941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761896, 33.383480, 54.744034>,  <29.515808, 32.722221, 54.574291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761896, 33.383480, 54.744034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473701, 33.491604, 54.488586>,  <29.300785, 33.556480, 54.335320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473701, 33.491604, 54.488586>,  <29.761896, 33.383480, 54.744034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473701, 33.491604, 54.488586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289284, 0.719791, 0.631043,
		0.630249, 0.639400, -0.440403,
		-0.720487, 0.270312, -0.638616,
		29.257555, 33.572697, 54.297001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781029, 34.033562, 54.729740>,  <29.761896, 33.383480, 54.744034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781029, 34.033562, 54.729740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414373, 33.970486, 54.582821>,  <29.194380, 33.932640, 54.494667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414373, 33.970486, 54.582821>,  <29.781029, 34.033562, 54.729740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414373, 33.970486, 54.582821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352123, 0.753420, 0.555309,
		0.189168, 0.638352, -0.746138,
		-0.916638, -0.157685, -0.367302,
		29.139381, 33.923180, 54.472630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510300, 34.664730, 54.561310>,  <29.781029, 34.033562, 54.729740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510300, 34.664730, 54.561310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195431, 34.424950, 54.619293>,  <29.006510, 34.281082, 54.654083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195431, 34.424950, 54.619293>,  <29.510300, 34.664730, 54.561310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195431, 34.424950, 54.619293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475333, 0.739465, 0.476706,
		-0.392958, 0.306345, -0.867027,
		-0.787174, -0.599453, 0.144963,
		28.959278, 34.245113, 54.662781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939558, 34.965763, 54.330616>,  <29.510300, 34.664730, 54.561310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939558, 34.965763, 54.330616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776567, 34.705750, 54.587185>,  <28.678774, 34.549744, 54.741127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776567, 34.705750, 54.587185>,  <28.939558, 34.965763, 54.330616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776567, 34.705750, 54.587185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511095, 0.744401, 0.429709,
		-0.756799, -0.152732, -0.635553,
		-0.407476, -0.650031, 0.641422,
		28.654325, 34.510738, 54.779613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257458, 35.155090, 54.323639>,  <28.939558, 34.965763, 54.330616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257458, 35.155090, 54.323639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310469, 34.936523, 54.654423>,  <28.342276, 34.805382, 54.852894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310469, 34.936523, 54.654423>,  <28.257458, 35.155090, 54.323639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310469, 34.936523, 54.654423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635669, 0.593293, 0.493890,
		-0.760501, -0.591128, -0.268713,
		0.132527, -0.546417, 0.826962,
		28.350227, 34.772598, 54.902512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653475, 35.185139, 54.623516>,  <28.257458, 35.155090, 54.323639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653475, 35.185139, 54.623516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880344, 35.058323, 54.927570>,  <28.016466, 34.982235, 55.110004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880344, 35.058323, 54.927570>,  <27.653475, 35.185139, 54.623516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880344, 35.058323, 54.927570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689340, 0.322323, 0.648782,
		-0.450696, -0.891962, -0.035733,
		0.567171, -0.317036, 0.760134,
		28.050495, 34.963211, 55.155609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202751, 34.764420, 55.023109>,  <27.653475, 35.185139, 54.623516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202751, 34.764420, 55.023109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507307, 34.872890, 55.258652>,  <27.690041, 34.937973, 55.399975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507307, 34.872890, 55.258652>,  <27.202751, 34.764420, 55.023109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507307, 34.872890, 55.258652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641103, 0.449881, 0.621767,
		-0.096302, -0.850922, 0.516389,
		0.761389, 0.271181, 0.588853,
		27.735723, 34.954247, 55.435307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867781, 34.665325, 55.634865>,  <27.202751, 34.764420, 55.023109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867781, 34.665325, 55.634865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190674, 34.874851, 55.743668>,  <27.384409, 35.000568, 55.808949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190674, 34.874851, 55.743668>,  <26.867781, 34.665325, 55.634865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190674, 34.874851, 55.743668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570585, 0.574634, 0.586710,
		0.151024, -0.628816, 0.762747,
		0.807233, 0.523819, 0.272009,
		27.432844, 35.031998, 55.825272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912701, 34.725933, 56.465263>,  <26.867781, 34.665325, 55.634865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912701, 34.725933, 56.465263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125492, 35.034286, 56.325123>,  <27.253166, 35.219299, 56.241039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125492, 35.034286, 56.325123>,  <26.912701, 34.725933, 56.465263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125492, 35.034286, 56.325123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336146, 0.572012, 0.748204,
		0.777179, -0.280259, 0.563425,
		0.531977, 0.770881, -0.350348,
		27.285086, 35.265553, 56.220020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241179, 35.121391, 57.072269>,  <26.912701, 34.725933, 56.465263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241179, 35.121391, 57.072269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212774, 35.386345, 56.773956>,  <27.195732, 35.545319, 56.594967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212774, 35.386345, 56.773956>,  <27.241179, 35.121391, 57.072269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212774, 35.386345, 56.773956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259997, 0.709537, 0.654949,
		0.962995, 0.240412, 0.121833,
		-0.071012, 0.662389, -0.745787,
		27.191471, 35.585060, 56.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456850, 35.793076, 57.336044>,  <27.241179, 35.121391, 57.072269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456850, 35.793076, 57.336044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258526, 35.895031, 57.003971>,  <27.139532, 35.956203, 56.804726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258526, 35.895031, 57.003971>,  <27.456850, 35.793076, 57.336044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258526, 35.895031, 57.003971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202974, 0.895467, 0.396156,
		0.844377, 0.364924, -0.392247,
		-0.495811, 0.254890, -0.830182,
		27.109783, 35.971497, 56.754917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432035, 36.529766, 57.450764>,  <27.456850, 35.793076, 57.336044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432035, 36.529766, 57.450764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180525, 36.473080, 57.144939>,  <27.029619, 36.439068, 56.961445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180525, 36.473080, 57.144939>,  <27.432035, 36.529766, 57.450764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180525, 36.473080, 57.144939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515470, 0.812125, 0.273393,
		0.582178, 0.566012, -0.583695,
		-0.628777, -0.141714, -0.764563,
		26.991892, 36.430565, 56.915569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255478, 37.263138, 57.271366>,  <27.432035, 36.529766, 57.450764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255478, 37.263138, 57.271366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964552, 37.034199, 57.119877>,  <26.789995, 36.896835, 57.028984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964552, 37.034199, 57.119877>,  <27.255478, 37.263138, 57.271366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964552, 37.034199, 57.119877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683797, 0.651437, 0.328713,
		0.058579, 0.498050, -0.865167,
		-0.727317, -0.572343, -0.378726,
		26.746357, 36.862495, 57.006260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969618, 37.660248, 56.835518>,  <27.255478, 37.263138, 57.271366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969618, 37.660248, 56.835518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722908, 37.362072, 56.936634>,  <26.574883, 37.183167, 56.997303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722908, 37.362072, 56.936634>,  <26.969618, 37.660248, 56.835518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722908, 37.362072, 56.936634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646981, 0.663021, 0.376589,
		-0.448333, 0.068718, -0.891221,
		-0.616777, -0.745441, 0.252795,
		26.537874, 37.138439, 57.012474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356009, 37.804859, 56.430580>,  <26.969618, 37.660248, 56.835518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356009, 37.804859, 56.430580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274754, 37.560017, 56.736279>,  <26.226000, 37.413113, 56.919697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274754, 37.560017, 56.736279>,  <26.356009, 37.804859, 56.430580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274754, 37.560017, 56.736279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593211, 0.697901, 0.401291,
		-0.778997, -0.371841, -0.504875,
		-0.203137, -0.612102, 0.764243,
		26.213812, 37.376385, 56.965549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704838, 37.874496, 56.535488>,  <26.356009, 37.804859, 56.430580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704838, 37.874496, 56.535488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795563, 37.718159, 56.892319>,  <25.849997, 37.624355, 57.106415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795563, 37.718159, 56.892319>,  <25.704838, 37.874496, 56.535488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795563, 37.718159, 56.892319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618461, 0.649770, 0.441932,
		-0.752371, -0.651948, -0.094350,
		0.226811, -0.390849, 0.892073,
		25.863605, 37.600903, 57.159939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985697, 37.737064, 56.986752>,  <25.704838, 37.874496, 56.535488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985697, 37.737064, 56.986752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289881, 37.730988, 57.246437>,  <25.472391, 37.727341, 57.402248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289881, 37.730988, 57.246437>,  <24.985697, 37.737064, 56.986752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289881, 37.730988, 57.246437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499550, 0.625070, 0.599781,
		-0.414914, -0.780421, 0.467750,
		0.760458, -0.015192, 0.649210,
		25.518019, 37.726429, 57.441200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664906, 37.715889, 57.560516>,  <24.985697, 37.737064, 56.986752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664906, 37.715889, 57.560516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.029596, 37.839828, 57.668404>,  <25.248411, 37.914192, 57.733135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.029596, 37.839828, 57.668404>,  <24.664906, 37.715889, 57.560516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.029596, 37.839828, 57.668404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402397, 0.541545, 0.738110,
		0.082640, -0.781488, 0.618424,
		0.911727, 0.309849, 0.269715,
		25.303114, 37.932785, 57.749317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639391, 37.758030, 58.245399>,  <24.664906, 37.715889, 57.560516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639391, 37.758030, 58.245399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960394, 37.985477, 58.173111>,  <25.152996, 38.121944, 58.129738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960394, 37.985477, 58.173111>,  <24.639391, 37.758030, 58.245399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960394, 37.985477, 58.173111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314257, 0.660305, 0.682085,
		0.507174, -0.490585, 0.708591,
		0.802507, 0.568616, -0.180720,
		25.201145, 38.156063, 58.118896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915398, 37.996555, 58.985481>,  <24.639391, 37.758030, 58.245399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915398, 37.996555, 58.985481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076679, 38.260582, 58.731953>,  <25.173449, 38.418999, 58.579834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076679, 38.260582, 58.731953>,  <24.915398, 37.996555, 58.985481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076679, 38.260582, 58.731953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204900, 0.740157, 0.640456,
		0.891875, -0.128365, 0.433683,
		0.403206, 0.660068, -0.633826,
		25.197641, 38.458603, 58.541805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278381, 38.512623, 59.348602>,  <24.915398, 37.996555, 58.985481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278381, 38.512623, 59.348602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183887, 38.655685, 58.987209>,  <25.127192, 38.741524, 58.770374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183887, 38.655685, 58.987209>,  <25.278381, 38.512623, 59.348602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183887, 38.655685, 58.987209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552574, 0.715373, 0.427672,
		0.799284, 0.600272, 0.028633,
		-0.236236, 0.357653, -0.903480,
		25.113016, 38.762981, 58.716164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330450, 38.279282, 60.162815>,  <25.278381, 38.512623, 59.348602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330450, 38.279282, 60.162815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317410, 38.004543, 60.453243>,  <25.309586, 37.839699, 60.627499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317410, 38.004543, 60.453243>,  <25.330450, 38.279282, 60.162815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317410, 38.004543, 60.453243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277113, -0.691764, -0.666836,
		0.960284, -0.222944, -0.167780,
		-0.032603, -0.686847, 0.726071,
		25.307629, 37.798489, 60.671066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.063881, 38.267845, 60.163666>,  <25.330450, 38.279282, 60.162815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.063881, 38.267845, 60.163666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306742, 38.581741, 60.213547>,  <26.452459, 38.770077, 60.243473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306742, 38.581741, 60.213547>,  <26.063881, 38.267845, 60.163666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306742, 38.581741, 60.213547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723801, -0.481465, -0.494271,
		-0.327835, 0.390356, -0.860318,
		0.607154, 0.784738, 0.124699,
		26.488888, 38.817162, 60.250957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239302, 38.572239, 59.503620>,  <26.063881, 38.267845, 60.163666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239302, 38.572239, 59.503620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519257, 38.660610, 59.775311>,  <26.687229, 38.713634, 59.938324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519257, 38.660610, 59.775311>,  <26.239302, 38.572239, 59.503620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519257, 38.660610, 59.775311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692912, -0.440738, -0.570634,
		0.173291, 0.870023, -0.461552,
		0.699888, 0.220929, 0.679225,
		26.729223, 38.726891, 59.979076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821693, 38.802780, 59.107933>,  <26.239302, 38.572239, 59.503620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821693, 38.802780, 59.107933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985794, 38.692699, 59.455715>,  <27.084255, 38.626652, 59.664387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985794, 38.692699, 59.455715>,  <26.821693, 38.802780, 59.107933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985794, 38.692699, 59.455715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706620, -0.506780, -0.493825,
		0.576525, 0.816969, -0.013445,
		0.410253, -0.275201, 0.869458,
		27.108870, 38.610138, 59.716553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490080, 38.924332, 58.959671>,  <26.821693, 38.802780, 59.107933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490080, 38.924332, 58.959671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488504, 38.662189, 59.261795>,  <27.487558, 38.504906, 59.443069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488504, 38.662189, 59.261795>,  <27.490080, 38.924332, 58.959671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488504, 38.662189, 59.261795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705688, -0.536978, -0.462232,
		0.708512, 0.531196, 0.464588,
		-0.003938, -0.655351, 0.755314,
		27.487324, 38.465584, 59.488388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204647, 38.796486, 59.100864>,  <27.490080, 38.924332, 58.959671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204647, 38.796486, 59.100864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999434, 38.495701, 59.266441>,  <27.876305, 38.315231, 59.365788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999434, 38.495701, 59.266441>,  <28.204647, 38.796486, 59.100864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999434, 38.495701, 59.266441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574868, -0.659118, -0.484861,
		0.637434, -0.010788, 0.770429,
		-0.513034, -0.751963, 0.413942,
		27.845524, 38.270111, 59.390625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718056, 38.343548, 59.504055>,  <28.204647, 38.796486, 59.100864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718056, 38.343548, 59.504055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416225, 38.110912, 59.382484>,  <28.235128, 37.971333, 59.309540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416225, 38.110912, 59.382484>,  <28.718056, 38.343548, 59.504055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416225, 38.110912, 59.382484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656033, -0.679512, -0.328458,
		-0.015496, -0.447233, 0.894283,
		-0.754574, -0.581589, -0.303929,
		28.189854, 37.936436, 59.291306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950317, 37.647652, 59.627022>,  <28.718056, 38.343548, 59.504055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950317, 37.647652, 59.627022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649986, 37.609737, 59.365559>,  <28.469788, 37.586987, 59.208679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649986, 37.609737, 59.365559>,  <28.950317, 37.647652, 59.627022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649986, 37.609737, 59.365559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482212, -0.754962, -0.444415,
		-0.451361, -0.648882, 0.612556,
		-0.750829, -0.094790, -0.653659,
		28.424738, 37.581299, 59.169460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932688, 36.923698, 59.476646>,  <28.950317, 37.647652, 59.627022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932688, 36.923698, 59.476646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725870, 37.080524, 59.172291>,  <28.601780, 37.174618, 58.989677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725870, 37.080524, 59.172291>,  <28.932688, 36.923698, 59.476646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725870, 37.080524, 59.172291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468480, -0.614352, -0.634900,
		-0.716375, -0.684732, 0.133973,
		-0.517043, 0.392063, -0.760890,
		28.570757, 37.198143, 58.944023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916771, 36.421951, 59.007534>,  <28.932688, 36.923698, 59.476646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916771, 36.421951, 59.007534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811996, 36.734203, 58.780552>,  <28.749132, 36.921555, 58.644363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811996, 36.734203, 58.780552>,  <28.916771, 36.421951, 59.007534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811996, 36.734203, 58.780552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473862, -0.408195, -0.780276,
		-0.840740, -0.473278, -0.262990,
		-0.261936, 0.780631, -0.567455,
		28.733416, 36.968391, 58.610317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556185, 36.102333, 58.440056>,  <28.916771, 36.421951, 59.007534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556185, 36.102333, 58.440056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659290, 36.465328, 58.307377>,  <28.721153, 36.683125, 58.227768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659290, 36.465328, 58.307377>,  <28.556185, 36.102333, 58.440056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659290, 36.465328, 58.307377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346839, -0.407324, -0.844861,
		-0.901810, 0.102728, -0.419745,
		0.257763, 0.907488, -0.331699,
		28.736620, 36.737576, 58.207867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294466, 36.098820, 57.793129>,  <28.556185, 36.102333, 58.440056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294466, 36.098820, 57.793129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596889, 36.358547, 57.826012>,  <28.778343, 36.514385, 57.845741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596889, 36.358547, 57.826012>,  <28.294466, 36.098820, 57.793129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596889, 36.358547, 57.826012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357173, -0.304082, -0.883154,
		-0.548455, 0.697077, -0.461824,
		0.756058, 0.649321, 0.082202,
		28.823708, 36.553345, 57.850674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429014, 36.344547, 57.080696>,  <28.294466, 36.098820, 57.793129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429014, 36.344547, 57.080696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755692, 36.411789, 57.301514>,  <28.951698, 36.452133, 57.434006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755692, 36.411789, 57.301514>,  <28.429014, 36.344547, 57.080696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755692, 36.411789, 57.301514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570085, -0.383445, -0.726617,
		0.089534, 0.908136, -0.408989,
		0.816692, 0.168102, 0.552047,
		29.000700, 36.462219, 57.467129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868391, 36.479713, 56.536777>,  <28.429014, 36.344547, 57.080696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868391, 36.479713, 56.536777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089375, 36.411846, 56.863213>,  <29.221964, 36.371128, 57.059074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089375, 36.411846, 56.863213>,  <28.868391, 36.479713, 56.536777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089375, 36.411846, 56.863213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639581, -0.541571, -0.545562,
		0.534533, 0.823356, -0.190681,
		0.552459, -0.169665, 0.816090,
		29.255112, 36.360947, 57.108040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569811, 36.601395, 56.371269>,  <28.868391, 36.479713, 56.536777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569811, 36.601395, 56.371269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624846, 36.367725, 56.691223>,  <29.657866, 36.227524, 56.883194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624846, 36.367725, 56.691223>,  <29.569811, 36.601395, 56.371269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624846, 36.367725, 56.691223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721824, -0.493861, -0.484841,
		0.678262, 0.644081, 0.353723,
		0.137587, -0.584175, 0.799881,
		29.666122, 36.192474, 56.931187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293640, 36.483665, 56.398159>,  <29.569811, 36.601395, 56.371269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293640, 36.483665, 56.398159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111616, 36.180069, 56.584431>,  <30.002401, 35.997913, 56.696194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111616, 36.180069, 56.584431>,  <30.293640, 36.483665, 56.398159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111616, 36.180069, 56.584431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657068, -0.639167, -0.399659,
		0.600985, 0.124116, 0.789565,
		-0.455060, -0.758987, 0.465682,
		29.975098, 35.952374, 56.724136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822201, 36.125763, 56.644669>,  <30.293640, 36.483665, 56.398159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822201, 36.125763, 56.644669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526636, 35.857819, 56.673779>,  <30.349298, 35.697052, 56.691246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526636, 35.857819, 56.673779>,  <30.822201, 36.125763, 56.644669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526636, 35.857819, 56.673779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568137, -0.677460, -0.467192,
		0.362259, -0.303864, 0.881155,
		-0.738910, -0.669862, 0.072779,
		30.304962, 35.656860, 56.695614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981821, 35.497669, 57.044174>,  <30.822201, 36.125763, 56.644669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981821, 35.497669, 57.044174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692638, 35.397026, 56.786793>,  <30.519129, 35.336639, 56.632366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692638, 35.397026, 56.786793>,  <30.981821, 35.497669, 57.044174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692638, 35.397026, 56.786793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588754, -0.711708, -0.383199,
		-0.361532, -0.655869, 0.662669,
		-0.722955, -0.251610, -0.643450,
		30.475752, 35.321545, 56.593758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904606, 34.735851, 57.077438>,  <30.981821, 35.497669, 57.044174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904606, 34.735851, 57.077438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740944, 34.854736, 56.732357>,  <30.642746, 34.926067, 56.525307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740944, 34.854736, 56.732357>,  <30.904606, 34.735851, 57.077438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740944, 34.854736, 56.732357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505479, -0.713304, -0.485477,
		-0.759660, -0.634714, 0.141618,
		-0.409156, 0.297213, -0.862703,
		30.618196, 34.943901, 56.473545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622574, 34.016006, 56.696728>,  <30.904606, 34.735851, 57.077438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622574, 34.016006, 56.696728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659756, 34.304180, 56.421822>,  <30.682064, 34.477085, 56.256878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659756, 34.304180, 56.421822>,  <30.622574, 34.016006, 56.696728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659756, 34.304180, 56.421822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298426, -0.678676, -0.671074,
		-0.949895, -0.142718, -0.278084,
		0.092955, 0.720438, -0.687262,
		30.687643, 34.520313, 56.215645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558764, 33.643524, 55.993469>,  <30.622574, 34.016006, 56.696728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558764, 33.643524, 55.993469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713551, 34.004955, 55.919918>,  <30.806423, 34.221813, 55.875790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713551, 34.004955, 55.919918>,  <30.558764, 33.643524, 55.993469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713551, 34.004955, 55.919918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392748, -0.341928, -0.853718,
		-0.834269, 0.258146, -0.487192,
		0.386969, 0.903574, -0.183873,
		30.829641, 34.276028, 55.864758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.126762, 35.419701, 50.528553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.105133, 35.353592, 50.922459>,  <48.092155, 35.313927, 51.158802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.105133, 35.353592, 50.922459>,  <48.126762, 35.419701, 50.528553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.105133, 35.353592, 50.922459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969735, 0.243847, -0.012325,
		-0.238095, -0.955628, -0.173454,
		-0.054074, -0.165270, 0.984765,
		48.088909, 35.304012, 51.217888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.854244, 34.762321, 50.524147>,  <48.126762, 35.419701, 50.528553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.854244, 34.762321, 50.524147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.798409, 34.976517, 50.857319>,  <47.764908, 35.105034, 51.057220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.798409, 34.976517, 50.857319>,  <47.854244, 34.762321, 50.524147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798409, 34.976517, 50.857319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990024, -0.059242, -0.127836,
		-0.019110, -0.842465, 0.538412,
		-0.139594, 0.535484, 0.832929,
		47.756531, 35.137161, 51.107197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.188103, 34.490860, 50.775295>,  <47.854244, 34.762321, 50.524147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.188103, 34.490860, 50.775295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.233448, 34.814678, 51.005699>,  <47.260654, 35.008968, 51.143940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.233448, 34.814678, 51.005699>,  <47.188103, 34.490860, 50.775295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.233448, 34.814678, 51.005699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988907, 0.147941, -0.013295,
		-0.095978, -0.568112, 0.817336,
		0.113365, 0.809545, 0.576009,
		47.267456, 35.057541, 51.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796024, 34.452175, 51.416870>,  <47.188103, 34.490860, 50.775295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796024, 34.452175, 51.416870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.848366, 34.835152, 51.313965>,  <46.879768, 35.064938, 51.252220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.848366, 34.835152, 51.313965>,  <46.796024, 34.452175, 51.416870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.848366, 34.835152, 51.313965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980996, 0.087545, -0.173153,
		-0.143262, 0.275033, 0.950701,
		0.130852, 0.957441, -0.257265,
		46.887623, 35.122383, 51.236786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220318, 34.706779, 51.650581>,  <46.796024, 34.452175, 51.416870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220318, 34.706779, 51.650581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.357719, 35.001217, 51.417286>,  <46.440163, 35.177879, 51.277309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.357719, 35.001217, 51.417286>,  <46.220318, 34.706779, 51.650581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357719, 35.001217, 51.417286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937120, 0.227842, -0.264376,
		-0.061718, 0.637382, 0.768072,
		0.343507, 0.736093, -0.583241,
		46.460770, 35.222046, 51.242313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857323, 35.297962, 51.859055>,  <46.220318, 34.706779, 51.650581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857323, 35.297962, 51.859055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.967400, 35.349388, 51.477951>,  <46.033443, 35.380245, 51.249290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.967400, 35.349388, 51.477951>,  <45.857323, 35.297962, 51.859055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967400, 35.349388, 51.477951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921817, 0.316690, -0.223520,
		0.272991, 0.939776, 0.205664,
		0.275190, 0.128566, -0.952754,
		46.049957, 35.387959, 51.192123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401157, 35.863594, 51.695534>,  <45.857323, 35.297962, 51.859055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401157, 35.863594, 51.695534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.540306, 35.744301, 51.339996>,  <45.623795, 35.672726, 51.126675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.540306, 35.744301, 51.339996>,  <45.401157, 35.863594, 51.695534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540306, 35.744301, 51.339996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843353, 0.314617, -0.435627,
		0.409563, 0.901152, -0.142067,
		0.347869, -0.298230, -0.888845,
		45.644669, 35.654831, 51.073341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233074, 36.416676, 51.066959>,  <45.401157, 35.863594, 51.695534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233074, 36.416676, 51.066959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.287968, 36.055862, 50.903252>,  <45.320904, 35.839375, 50.805027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.287968, 36.055862, 50.903252>,  <45.233074, 36.416676, 51.066959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287968, 36.055862, 50.903252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833383, 0.118174, -0.539914,
		0.535386, 0.415173, -0.735522,
		0.137238, -0.902034, -0.409267,
		45.329140, 35.785252, 50.780472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875458, 36.469536, 50.416298>,  <45.233074, 36.416676, 51.066959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875458, 36.469536, 50.416298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.918316, 36.077351, 50.482292>,  <44.944031, 35.842041, 50.521889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.918316, 36.077351, 50.482292>,  <44.875458, 36.469536, 50.416298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918316, 36.077351, 50.482292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900633, -0.166004, -0.401625,
		0.421164, -0.105555, -0.900821,
		0.107147, -0.980459, 0.164982,
		44.950459, 35.783215, 50.531788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686485, 36.220009, 49.812645>,  <44.875458, 36.469536, 50.416298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686485, 36.220009, 49.812645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.663929, 35.905834, 50.059193>,  <44.650394, 35.717331, 50.207119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.663929, 35.905834, 50.059193>,  <44.686485, 36.220009, 49.812645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663929, 35.905834, 50.059193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888735, -0.241814, -0.389457,
		0.454940, -0.569749, -0.684409,
		-0.056393, -0.785437, 0.616367,
		44.647011, 35.670204, 50.244102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409451, 35.658344, 49.412945>,  <44.686485, 36.220009, 49.812645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409451, 35.658344, 49.412945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.331612, 35.550198, 49.790100>,  <44.284908, 35.485310, 50.016392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.331612, 35.550198, 49.790100>,  <44.409451, 35.658344, 49.412945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331612, 35.550198, 49.790100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906950, -0.316530, -0.277939,
		0.373597, -0.909237, -0.183612,
		-0.194594, -0.270364, 0.942887,
		44.273235, 35.469090, 50.072968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231308, 34.989632, 49.431900>,  <44.409451, 35.658344, 49.412945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231308, 34.989632, 49.431900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.080719, 35.091049, 49.788322>,  <43.990364, 35.151901, 50.002174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.080719, 35.091049, 49.788322>,  <44.231308, 34.989632, 49.431900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080719, 35.091049, 49.788322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900507, -0.326072, -0.287687,
		0.217607, -0.910709, 0.351078,
		-0.376476, 0.253546, 0.891056,
		43.967777, 35.167114, 50.055637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880653, 34.475117, 49.726131>,  <44.231308, 34.989632, 49.431900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880653, 34.475117, 49.726131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.701851, 34.788300, 49.899181>,  <43.594570, 34.976208, 50.003010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.701851, 34.788300, 49.899181>,  <43.880653, 34.475117, 49.726131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701851, 34.788300, 49.899181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892209, -0.355416, -0.278644,
		-0.064406, -0.510545, 0.857436,
		-0.447007, 0.782958, 0.432622,
		43.567749, 35.023186, 50.028969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273670, 34.196861, 50.071541>,  <43.880653, 34.475117, 49.726131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273670, 34.196861, 50.071541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.218784, 34.589920, 50.021622>,  <43.185852, 34.825756, 49.991669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.218784, 34.589920, 50.021622>,  <43.273670, 34.196861, 50.071541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218784, 34.589920, 50.021622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901568, -0.176083, -0.395183,
		-0.410301, 0.058287, 0.910086,
		-0.137217, 0.982648, -0.124797,
		43.177620, 34.884716, 49.984184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588074, 34.376629, 50.320797>,  <43.273670, 34.196861, 50.071541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588074, 34.376629, 50.320797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.675804, 34.689655, 50.087738>,  <42.728443, 34.877472, 49.947903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.675804, 34.689655, 50.087738>,  <42.588074, 34.376629, 50.320797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675804, 34.689655, 50.087738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927882, -0.017269, -0.372474,
		-0.301549, 0.622322, 0.722346,
		0.219325, 0.782571, -0.582649,
		42.741600, 34.924427, 49.912945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080231, 34.803455, 50.519100>,  <42.588074, 34.376629, 50.320797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080231, 34.803455, 50.519100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.224689, 34.922039, 50.165447>,  <42.311363, 34.993191, 49.953255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.224689, 34.922039, 50.165447>,  <42.080231, 34.803455, 50.519100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224689, 34.922039, 50.165447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916668, -0.061158, -0.394943,
		-0.171158, 0.953084, 0.249670,
		0.361145, 0.296462, -0.884129,
		42.333035, 35.010979, 49.900208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606579, 35.231796, 50.254295>,  <42.080231, 34.803455, 50.519100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606579, 35.231796, 50.254295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.795750, 35.126637, 49.917908>,  <41.909252, 35.063541, 49.716076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.795750, 35.126637, 49.917908>,  <41.606579, 35.231796, 50.254295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795750, 35.126637, 49.917908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880937, -0.159632, -0.445498,
		-0.017124, 0.951526, -0.307090,
		0.472924, -0.262898, -0.840968,
		41.937626, 35.047768, 49.665619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255630, 35.614132, 49.710522>,  <41.606579, 35.231796, 50.254295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255630, 35.614132, 49.710522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.423210, 35.303318, 49.522606>,  <41.523758, 35.116829, 49.409855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.423210, 35.303318, 49.522606>,  <41.255630, 35.614132, 49.710522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423210, 35.303318, 49.522606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776641, -0.038592, -0.628760,
		0.470438, 0.628274, -0.619645,
		0.418947, -0.777034, -0.469788,
		41.548893, 35.070210, 49.381668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014126, 35.744614, 49.043179>,  <41.255630, 35.614132, 49.710522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014126, 35.744614, 49.043179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.126675, 35.360809, 49.037891>,  <41.194202, 35.130527, 49.034718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.126675, 35.360809, 49.037891>,  <41.014126, 35.744614, 49.043179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126675, 35.360809, 49.037891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729272, -0.204863, -0.652835,
		0.623693, 0.193329, -0.757385,
		0.281372, -0.959508, -0.013218,
		41.211086, 35.072956, 49.033928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384464, 35.561909, 48.590637>,  <41.014126, 35.744614, 49.043179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384464, 35.561909, 48.590637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.071087, 35.601780, 48.345268>,  <39.883060, 35.625702, 48.198048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.071087, 35.601780, 48.345268>,  <40.384464, 35.561909, 48.590637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071087, 35.601780, 48.345268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131441, -0.991301, 0.006786,
		-0.607409, 0.085945, 0.789726,
		-0.783439, 0.099681, -0.613422,
		39.836056, 35.631683, 48.161243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789421, 35.306137, 48.866730>,  <40.384464, 35.561909, 48.590637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789421, 35.306137, 48.866730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.777393, 35.275581, 48.468079>,  <39.770176, 35.257248, 48.228889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.777393, 35.275581, 48.468079>,  <39.789421, 35.306137, 48.866730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777393, 35.275581, 48.468079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077574, -0.993889, 0.078523,
		-0.996533, 0.079673, 0.023958,
		-0.030067, -0.076392, -0.996624,
		39.768372, 35.252663, 48.169090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154736, 34.906437, 48.817833>,  <39.789421, 35.306137, 48.866730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154736, 34.906437, 48.817833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.390434, 34.896652, 48.494801>,  <39.531853, 34.890781, 48.300980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.390434, 34.896652, 48.494801>,  <39.154736, 34.906437, 48.817833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390434, 34.896652, 48.494801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086114, -0.991947, 0.092878,
		-0.803351, -0.124272, -0.582395,
		0.589247, -0.024461, -0.807583,
		39.567207, 34.889313, 48.252525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983311, 34.495296, 48.261272>,  <39.154736, 34.906437, 48.817833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983311, 34.495296, 48.261272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.381260, 34.509415, 48.223370>,  <39.620029, 34.517883, 48.200630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.381260, 34.509415, 48.223370>,  <38.983311, 34.495296, 48.261272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381260, 34.509415, 48.223370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026051, -0.994937, -0.097066,
		-0.097699, 0.094100, -0.990757,
		0.994875, 0.035294, -0.094753,
		39.679722, 34.520004, 48.194942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698887, 33.863552, 47.862911>,  <38.983311, 34.495296, 48.261272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698887, 33.863552, 47.862911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.811184, 33.737980, 47.500114>,  <38.878563, 33.662636, 47.282436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.811184, 33.737980, 47.500114>,  <38.698887, 33.863552, 47.862911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811184, 33.737980, 47.500114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926276, -0.336138, -0.170364,
		-0.251392, 0.887952, -0.385153,
		0.280739, -0.313930, -0.906991,
		38.895405, 33.643803, 47.228016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049725, 33.907177, 47.339573>,  <38.698887, 33.863552, 47.862911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049725, 33.907177, 47.339573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.253452, 33.639515, 47.123119>,  <38.375690, 33.478916, 46.993248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.253452, 33.639515, 47.123119>,  <38.049725, 33.907177, 47.339573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253452, 33.639515, 47.123119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851102, -0.484723, -0.201667,
		-0.127352, 0.563271, -0.816399,
		0.509321, -0.669156, -0.541131,
		38.406250, 33.438766, 46.960781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877983, 33.903011, 46.630062>,  <38.049725, 33.907177, 47.339573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877983, 33.903011, 46.630062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033550, 33.537151, 46.674175>,  <38.126892, 33.317635, 46.700645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033550, 33.537151, 46.674175>,  <37.877983, 33.903011, 46.630062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033550, 33.537151, 46.674175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848272, -0.402230, -0.344450,
		0.359410, 0.040411, -0.932304,
		0.388921, -0.914646, 0.110286,
		38.150227, 33.262756, 46.707260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507191, 33.497280, 46.111607>,  <37.877983, 33.903011, 46.630062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507191, 33.497280, 46.111607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711452, 33.229347, 46.327221>,  <37.834007, 33.068588, 46.456589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711452, 33.229347, 46.327221>,  <37.507191, 33.497280, 46.111607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711452, 33.229347, 46.327221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744321, -0.658225, -0.112814,
		0.430374, -0.343607, -0.834693,
		0.510652, -0.669832, 0.539036,
		37.864647, 33.028397, 46.488934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614269, 32.881207, 45.758163>,  <37.507191, 33.497280, 46.111607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614269, 32.881207, 45.758163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622082, 32.792221, 46.148060>,  <37.626770, 32.738831, 46.382000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622082, 32.792221, 46.148060>,  <37.614269, 32.881207, 45.758163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622082, 32.792221, 46.148060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668322, -0.728018, -0.152760,
		0.743616, -0.648459, -0.162900,
		0.019536, -0.222465, 0.974745,
		37.627941, 32.725483, 46.440483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524620, 32.145214, 45.793896>,  <37.614269, 32.881207, 45.758163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524620, 32.145214, 45.793896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432617, 32.260586, 46.165680>,  <37.377415, 32.329807, 46.388752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432617, 32.260586, 46.165680>,  <37.524620, 32.145214, 45.793896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432617, 32.260586, 46.165680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795008, -0.606540, -0.008517,
		0.561300, -0.740890, 0.368814,
		-0.230011, 0.288429, 0.929464,
		37.363613, 32.347115, 46.444519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335392, 31.565313, 46.140942>,  <37.524620, 32.145214, 45.793896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335392, 31.565313, 46.140942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162064, 31.829807, 46.385891>,  <37.058067, 31.988504, 46.532860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162064, 31.829807, 46.385891>,  <37.335392, 31.565313, 46.140942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162064, 31.829807, 46.385891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708741, -0.669739, 0.221668,
		0.556705, -0.337961, 0.758856,
		-0.433321, 0.661236, 0.612373,
		37.032066, 32.028179, 46.569603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042667, 31.160120, 46.598511>,  <37.335392, 31.565313, 46.140942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042667, 31.160120, 46.598511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.841957, 31.492464, 46.694756>,  <36.721531, 31.691870, 46.752502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.841957, 31.492464, 46.694756>,  <37.042667, 31.160120, 46.598511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841957, 31.492464, 46.694756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812089, -0.548285, 0.199736,
		0.297874, -0.095172, 0.949849,
		-0.501779, 0.830859, 0.240608,
		36.691422, 31.741722, 46.766937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678776, 31.071930, 47.257244>,  <37.042667, 31.160120, 46.598511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678776, 31.071930, 47.257244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488796, 31.365438, 47.062923>,  <36.374809, 31.541544, 46.946331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488796, 31.365438, 47.062923>,  <36.678776, 31.071930, 47.257244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488796, 31.365438, 47.062923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878946, -0.422737, 0.220789,
		-0.043358, 0.531858, 0.845723,
		-0.474947, 0.733771, -0.485804,
		36.346313, 31.585569, 46.917183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103626, 31.279501, 47.693127>,  <36.678776, 31.071930, 47.257244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103626, 31.279501, 47.693127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003166, 31.385118, 47.320633>,  <35.942890, 31.448488, 47.097137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003166, 31.385118, 47.320633>,  <36.103626, 31.279501, 47.693127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003166, 31.385118, 47.320633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927376, -0.341259, 0.153347,
		-0.277303, 0.902121, 0.330575,
		-0.251150, 0.264044, -0.931238,
		35.927822, 31.464331, 47.041260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469635, 31.531612, 47.846493>,  <36.103626, 31.279501, 47.693127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469635, 31.531612, 47.846493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487881, 31.497759, 47.448345>,  <35.498829, 31.477448, 47.209457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487881, 31.497759, 47.448345>,  <35.469635, 31.531612, 47.846493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487881, 31.497759, 47.448345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975211, -0.219743, -0.026009,
		-0.216524, 0.971880, -0.092558,
		0.045617, -0.084632, -0.995367,
		35.501564, 31.472370, 47.149734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045460, 31.182930, 48.381313>,  <35.469635, 31.531612, 47.846493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045460, 31.182930, 48.381313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848595, 31.517298, 48.284142>,  <34.730476, 31.717918, 48.225838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848595, 31.517298, 48.284142>,  <35.045460, 31.182930, 48.381313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848595, 31.517298, 48.284142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399346, 0.464780, 0.790254,
		0.773497, 0.291921, -0.562569,
		-0.492163, 0.835919, -0.242929,
		34.700947, 31.768074, 48.211262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.402452, 31.644997, 50.988991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744581, 31.701134, 51.188480>,  <29.949860, 31.734816, 51.308174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744581, 31.701134, 51.188480>,  <29.402452, 31.644997, 50.988991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744581, 31.701134, 51.188480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507636, -0.034582, -0.860877,
		-0.103571, 0.989499, -0.100822,
		0.855324, 0.140343, 0.498724,
		30.001179, 31.743237, 51.338097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753311, 31.890341, 50.475094>,  <29.402452, 31.644997, 50.988991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753311, 31.890341, 50.475094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.025562, 31.793440, 50.751663>,  <30.188913, 31.735300, 50.917603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.025562, 31.793440, 50.751663>,  <29.753311, 31.890341, 50.475094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025562, 31.793440, 50.751663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711400, -0.007011, -0.702752,
		0.175090, 0.970188, 0.167566,
		0.680627, -0.242251, 0.691420,
		30.229750, 31.720764, 50.959087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272919, 32.323681, 50.399982>,  <29.753311, 31.890341, 50.475094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272919, 32.323681, 50.399982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.461174, 32.026031, 50.589626>,  <30.574127, 31.847441, 50.703411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.461174, 32.026031, 50.589626>,  <30.272919, 32.323681, 50.399982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461174, 32.026031, 50.589626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695713, -0.017510, -0.718106,
		0.542663, 0.667809, 0.509458,
		0.470637, -0.744126, 0.474106,
		30.602365, 31.802794, 50.731857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977270, 32.509872, 50.379520>,  <30.272919, 32.323681, 50.399982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977270, 32.509872, 50.379520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.982296, 32.116001, 50.449093>,  <30.985312, 31.879679, 50.490837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.982296, 32.116001, 50.449093>,  <30.977270, 32.509872, 50.379520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982296, 32.116001, 50.449093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623896, -0.128211, -0.770918,
		0.781406, 0.118200, 0.612726,
		0.012564, -0.984678, 0.173930,
		30.986065, 31.820599, 50.501270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632605, 32.299488, 50.308994>,  <30.977270, 32.509872, 50.379520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632605, 32.299488, 50.308994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.420923, 31.965151, 50.250607>,  <31.293915, 31.764547, 50.215576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.420923, 31.965151, 50.250607>,  <31.632605, 32.299488, 50.308994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420923, 31.965151, 50.250607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670771, -0.306771, -0.675247,
		0.519624, -0.455253, 0.723005,
		-0.529204, -0.835845, -0.145965,
		31.262161, 31.714397, 50.206818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011829, 31.632704, 50.399303>,  <31.632605, 32.299488, 50.308994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011829, 31.632704, 50.399303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.717485, 31.505651, 50.160099>,  <31.540878, 31.429420, 50.016575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.717485, 31.505651, 50.160099>,  <32.011829, 31.632704, 50.399303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717485, 31.505651, 50.160099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677129, -0.342872, -0.651103,
		0.001770, -0.884052, 0.467385,
		-0.735863, -0.317632, -0.598010,
		31.496727, 31.410362, 49.980698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097576, 30.905230, 50.222797>,  <32.011829, 31.632704, 50.399303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097576, 30.905230, 50.222797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.850616, 31.049446, 49.943130>,  <31.702440, 31.135975, 49.775330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.850616, 31.049446, 49.943130>,  <32.097576, 30.905230, 50.222797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850616, 31.049446, 49.943130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546480, -0.442737, -0.710875,
		-0.565845, -0.820972, 0.076317,
		-0.617397, 0.360540, -0.699166,
		31.665398, 31.157608, 49.733379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935011, 30.385891, 49.798477>,  <32.097576, 30.905230, 50.222797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935011, 30.385891, 49.798477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.777618, 30.650070, 49.542671>,  <31.683184, 30.808577, 49.389187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.777618, 30.650070, 49.542671>,  <31.935011, 30.385891, 49.798477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777618, 30.650070, 49.542671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396342, -0.505798, -0.766212,
		-0.829509, -0.554959, -0.062740,
		-0.393482, 0.660446, -0.639517,
		31.659575, 30.848204, 49.350815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553705, 29.994884, 49.259785>,  <31.935011, 30.385891, 49.798477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553705, 29.994884, 49.259785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632921, 30.351011, 49.095776>,  <31.680450, 30.564688, 48.997372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632921, 30.351011, 49.095776>,  <31.553705, 29.994884, 49.259785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632921, 30.351011, 49.095776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490605, -0.452173, -0.744880,
		-0.848579, -0.053641, -0.526342,
		0.198042, 0.890316, -0.410021,
		31.692333, 30.618107, 48.972771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605293, 29.824169, 48.610809>,  <31.553705, 29.994884, 49.259785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605293, 29.824169, 48.610809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743803, 30.199173, 48.597126>,  <31.826908, 30.424175, 48.588917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743803, 30.199173, 48.597126>,  <31.605293, 29.824169, 48.610809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743803, 30.199173, 48.597126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609151, -0.252424, -0.751809,
		-0.713463, 0.239495, -0.658493,
		0.346274, 0.937509, -0.034207,
		31.847685, 30.480427, 48.586864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562235, 29.970869, 47.911755>,  <31.605293, 29.824169, 48.610809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562235, 29.970869, 47.911755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.833548, 30.220741, 48.066521>,  <31.996336, 30.370665, 48.159382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.833548, 30.220741, 48.066521>,  <31.562235, 29.970869, 47.911755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833548, 30.220741, 48.066521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666876, -0.302210, -0.681135,
		-0.308563, 0.720028, -0.621569,
		0.678281, 0.624683, 0.386919,
		32.037033, 30.408146, 48.182598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822519, 30.376106, 47.410381>,  <31.562235, 29.970869, 47.911755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822519, 30.376106, 47.410381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.113701, 30.354252, 47.683762>,  <32.288410, 30.341139, 47.847790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.113701, 30.354252, 47.683762>,  <31.822519, 30.376106, 47.410381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113701, 30.354252, 47.683762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667685, -0.170061, -0.724759,
		0.155826, 0.983918, -0.087317,
		0.727952, -0.054636, 0.683447,
		32.332088, 30.337862, 47.888794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506712, 30.976892, 46.957169>,  <31.822519, 30.376106, 47.410381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506712, 30.976892, 46.957169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811071, 30.978651, 46.697628>,  <31.993687, 30.979706, 46.541904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811071, 30.978651, 46.697628>,  <31.506712, 30.976892, 46.957169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811071, 30.978651, 46.697628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131113, 0.978308, 0.160386,
		0.635484, -0.207111, 0.743818,
		0.760900, 0.004399, -0.648854,
		32.039341, 30.979971, 46.502972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010490, 31.174017, 47.358788>,  <31.506712, 30.976892, 46.957169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010490, 31.174017, 47.358788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070210, 31.274628, 46.976280>,  <32.106041, 31.334993, 46.746777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070210, 31.274628, 46.976280>,  <32.010490, 31.174017, 47.358788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070210, 31.274628, 46.976280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056403, 0.967696, 0.245728,
		0.987182, 0.017250, 0.158661,
		0.149297, 0.251527, -0.956266,
		32.114998, 31.350086, 46.689400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514229, 31.681482, 47.311104>,  <32.010490, 31.174017, 47.358788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514229, 31.681482, 47.311104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320602, 31.741396, 46.966255>,  <32.204426, 31.777344, 46.759346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320602, 31.741396, 46.966255>,  <32.514229, 31.681482, 47.311104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320602, 31.741396, 46.966255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121235, 0.964259, 0.235599,
		0.866594, 0.218564, -0.448603,
		-0.484063, 0.149783, -0.862118,
		32.175385, 31.786331, 46.707619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578915, 32.362045, 47.215458>,  <32.514229, 31.681482, 47.311104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578915, 32.362045, 47.215458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.274208, 32.282375, 46.968872>,  <32.091385, 32.234573, 46.820919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.274208, 32.282375, 46.968872>,  <32.578915, 32.362045, 47.215458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274208, 32.282375, 46.968872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289095, 0.956080, 0.048330,
		0.579767, 0.215034, -0.785895,
		-0.761771, -0.199178, -0.616469,
		32.045677, 32.222622, 46.783932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675423, 32.707928, 46.581821>,  <32.578915, 32.362045, 47.215458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675423, 32.707928, 46.581821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285431, 32.628071, 46.620937>,  <32.051437, 32.580158, 46.644405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285431, 32.628071, 46.620937>,  <32.675423, 32.707928, 46.581821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285431, 32.628071, 46.620937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209814, 0.971755, -0.108029,
		-0.073459, -0.125843, -0.989327,
		-0.974978, -0.199639, 0.097787,
		31.992937, 32.568180, 46.650272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405468, 33.311100, 46.263535>,  <32.675423, 32.707928, 46.581821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405468, 33.311100, 46.263535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096695, 33.146877, 46.457672>,  <31.911430, 33.048344, 46.574154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096695, 33.146877, 46.457672>,  <32.405468, 33.311100, 46.263535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096695, 33.146877, 46.457672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398331, 0.907395, 0.134041,
		-0.495429, -0.089857, -0.863988,
		-0.771934, -0.410561, 0.485342,
		31.865114, 33.023708, 46.603275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777205, 33.612095, 45.969749>,  <32.405468, 33.311100, 46.263535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777205, 33.612095, 45.969749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705984, 33.493900, 46.345192>,  <31.663252, 33.422985, 46.570457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705984, 33.493900, 46.345192>,  <31.777205, 33.612095, 45.969749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705984, 33.493900, 46.345192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342066, 0.912949, 0.222519,
		-0.922653, -0.281446, -0.263628,
		-0.178052, -0.295486, 0.938608,
		31.652569, 33.405254, 46.626774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147907, 33.801128, 46.070763>,  <31.777205, 33.612095, 45.969749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147907, 33.801128, 46.070763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303118, 33.750607, 46.435944>,  <31.396244, 33.720295, 46.655052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303118, 33.750607, 46.435944>,  <31.147907, 33.801128, 46.070763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303118, 33.750607, 46.435944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367281, 0.887323, 0.278859,
		-0.845306, -0.443514, 0.297914,
		0.388024, -0.126303, 0.912954,
		31.419525, 33.712715, 46.709831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616867, 34.153095, 46.444584>,  <31.147907, 33.801128, 46.070763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616867, 34.153095, 46.444584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.878792, 34.084278, 46.738964>,  <31.035946, 34.042988, 46.915592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.878792, 34.084278, 46.738964>,  <30.616867, 34.153095, 46.444584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878792, 34.084278, 46.738964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449314, 0.694375, 0.562104,
		-0.607732, -0.698745, 0.377383,
		0.654812, -0.172045, 0.735949,
		31.075235, 34.032665, 46.959747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174215, 34.250053, 47.024040>,  <30.616867, 34.153095, 46.444584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174215, 34.250053, 47.024040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563568, 34.286491, 47.108166>,  <30.797180, 34.308353, 47.158642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563568, 34.286491, 47.108166>,  <30.174215, 34.250053, 47.024040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563568, 34.286491, 47.108166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213569, 0.693546, 0.688028,
		-0.083185, -0.714629, 0.694540,
		0.973380, 0.091098, 0.210315,
		30.855581, 34.313820, 47.171261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200094, 34.233887, 47.773617>,  <30.174215, 34.250053, 47.024040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200094, 34.233887, 47.773617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543987, 34.391472, 47.643604>,  <30.750324, 34.486023, 47.565598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543987, 34.391472, 47.643604>,  <30.200094, 34.233887, 47.773617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543987, 34.391472, 47.643604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178911, 0.828379, 0.530829,
		0.478380, -0.398220, 0.782671,
		0.859735, 0.393966, -0.325034,
		30.801908, 34.509663, 47.546093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430994, 34.629841, 48.413403>,  <30.200094, 34.233887, 47.773617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430994, 34.629841, 48.413403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.629827, 34.792095, 48.106583>,  <30.749128, 34.889450, 47.922489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.629827, 34.792095, 48.106583>,  <30.430994, 34.629841, 48.413403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629827, 34.792095, 48.106583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105524, 0.905700, 0.410575,
		0.861261, -0.123150, 0.493015,
		0.497087, 0.405637, -0.767049,
		30.778952, 34.913788, 47.876469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840502, 35.101223, 48.724091>,  <30.430994, 34.629841, 48.413403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840502, 35.101223, 48.724091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779610, 35.218319, 48.346493>,  <30.743074, 35.288578, 48.119934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779610, 35.218319, 48.346493>,  <30.840502, 35.101223, 48.724091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779610, 35.218319, 48.346493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134396, 0.940126, 0.313211,
		0.979165, 0.174549, -0.103772,
		-0.152230, 0.292738, -0.943997,
		30.733940, 35.306141, 48.063293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091053, 35.767258, 48.782696>,  <30.840502, 35.101223, 48.724091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091053, 35.767258, 48.782696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.864620, 35.766636, 48.452957>,  <30.728762, 35.766262, 48.255112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.864620, 35.766636, 48.452957>,  <31.091053, 35.767258, 48.782696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864620, 35.766636, 48.452957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423837, 0.858250, 0.289429,
		0.707047, 0.513229, -0.486499,
		-0.566081, -0.001556, -0.824348,
		30.694796, 35.766171, 48.205654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194672, 36.383297, 48.418983>,  <31.091053, 35.767258, 48.782696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194672, 36.383297, 48.418983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838190, 36.238541, 48.309589>,  <30.624302, 36.151688, 48.243954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838190, 36.238541, 48.309589>,  <31.194672, 36.383297, 48.418983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838190, 36.238541, 48.309589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438146, 0.842835, 0.312503,
		0.117413, 0.398330, -0.909696,
		-0.891203, -0.361888, -0.273487,
		30.570829, 36.129974, 48.227543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795259, 37.078754, 48.262924>,  <31.194672, 36.383297, 48.418983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795259, 37.078754, 48.262924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.541588, 36.770054, 48.281780>,  <30.389385, 36.584835, 48.293095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.541588, 36.770054, 48.281780>,  <30.795259, 37.078754, 48.262924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541588, 36.770054, 48.281780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709772, 0.605264, 0.360387,
		-0.306663, 0.195088, -0.931611,
		-0.634177, -0.771749, 0.047144,
		30.351336, 36.538528, 48.295925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107510, 37.649269, 47.733688>,  <30.795259, 37.078754, 48.262924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107510, 37.649269, 47.733688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262148, 37.909943, 47.994717>,  <31.354931, 38.066345, 48.151333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262148, 37.909943, 47.994717>,  <31.107510, 37.649269, 47.733688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262148, 37.909943, 47.994717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920988, -0.309802, -0.236229,
		0.048221, 0.692337, -0.719961,
		0.386595, 0.651684, 0.652573,
		31.378126, 38.105450, 48.190487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540848, 38.184021, 47.433804>,  <31.107510, 37.649269, 47.733688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540848, 38.184021, 47.433804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.631430, 38.065575, 47.804974>,  <31.685778, 37.994507, 48.027676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.631430, 38.065575, 47.804974>,  <31.540848, 38.184021, 47.433804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631430, 38.065575, 47.804974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823781, -0.450097, -0.344671,
		0.519716, 0.842454, 0.142006,
		0.226453, -0.296113, 0.927920,
		31.699366, 37.976742, 48.083351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126484, 38.009804, 47.271183>,  <31.540848, 38.184021, 47.433804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126484, 38.009804, 47.271183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.106022, 37.905422, 47.656780>,  <32.093746, 37.842793, 47.888138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.106022, 37.905422, 47.656780>,  <32.126484, 38.009804, 47.271183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106022, 37.905422, 47.656780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904952, -0.420398, -0.065782,
		0.422427, 0.869005, 0.257655,
		-0.051152, -0.260953, 0.963995,
		32.090675, 37.827137, 47.945980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712555, 38.337673, 47.628033>,  <32.126484, 38.009804, 47.271183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712555, 38.337673, 47.628033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600037, 38.020454, 47.844162>,  <32.532528, 37.830124, 47.973839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600037, 38.020454, 47.844162>,  <32.712555, 38.337673, 47.628033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600037, 38.020454, 47.844162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931658, -0.360628, -0.044281,
		0.229972, 0.490938, 0.840293,
		-0.281294, -0.793050, 0.540320,
		32.515648, 37.782539, 48.006260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291725, 38.125378, 47.867424>,  <32.712555, 38.337673, 47.628033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291725, 38.125378, 47.867424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080265, 37.796448, 47.951622>,  <32.953388, 37.599091, 48.002140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080265, 37.796448, 47.951622>,  <33.291725, 38.125378, 47.867424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080265, 37.796448, 47.951622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836766, -0.546528, -0.033599,
		0.142672, 0.158376, 0.977017,
		-0.528646, -0.822328, 0.210498,
		32.921673, 37.549747, 48.014771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589584, 37.769417, 48.411098>,  <33.291725, 38.125378, 47.867424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589584, 37.769417, 48.411098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394405, 37.487022, 48.205772>,  <33.277298, 37.317585, 48.082577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394405, 37.487022, 48.205772>,  <33.589584, 37.769417, 48.411098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394405, 37.487022, 48.205772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844940, -0.529606, -0.074796,
		-0.219052, -0.470220, 0.854933,
		-0.487948, -0.705982, -0.513318,
		33.248020, 37.275227, 48.051777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945328, 37.171635, 48.536610>,  <33.589584, 37.769417, 48.411098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945328, 37.171635, 48.536610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.734123, 37.035530, 48.225372>,  <33.607403, 36.953865, 48.038631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.734123, 37.035530, 48.225372>,  <33.945328, 37.171635, 48.536610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734123, 37.035530, 48.225372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772973, -0.572040, -0.274376,
		-0.351739, -0.746317, 0.565058,
		-0.528008, -0.340266, -0.778092,
		33.575722, 36.933449, 47.991943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095463, 36.411514, 48.625042>,  <33.945328, 37.171635, 48.536610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095463, 36.411514, 48.625042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961262, 36.492542, 48.257042>,  <33.880741, 36.541161, 48.036243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961262, 36.492542, 48.257042>,  <34.095463, 36.411514, 48.625042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961262, 36.492542, 48.257042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678956, -0.625001, -0.385217,
		-0.653034, -0.753883, 0.072157,
		-0.335507, 0.202569, -0.920001,
		33.860611, 36.553314, 47.981041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115601, 35.800800, 48.250664>,  <34.095463, 36.411514, 48.625042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115601, 35.800800, 48.250664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140701, 36.087868, 47.973240>,  <34.155762, 36.260109, 47.806786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140701, 36.087868, 47.973240>,  <34.115601, 35.800800, 48.250664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140701, 36.087868, 47.973240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822397, -0.430900, -0.371468,
		-0.565442, -0.547067, -0.617246,
		0.062754, 0.717665, -0.693555,
		34.159527, 36.303165, 47.765175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379913, 35.511292, 47.551388>,  <34.115601, 35.800800, 48.250664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379913, 35.511292, 47.551388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457436, 35.901260, 47.507622>,  <34.503948, 36.135242, 47.481361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457436, 35.901260, 47.507622>,  <34.379913, 35.511292, 47.551388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457436, 35.901260, 47.507622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754266, -0.219391, -0.618829,
		-0.627314, 0.037401, -0.777868,
		0.193802, 0.974920, -0.109417,
		34.515575, 36.193737, 47.474796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555809, 35.565918, 46.723263>,  <34.379913, 35.511292, 47.551388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555809, 35.565918, 46.723263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661980, 35.896992, 46.921047>,  <34.725681, 36.095634, 47.039719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661980, 35.896992, 46.921047>,  <34.555809, 35.565918, 46.723263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661980, 35.896992, 46.921047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848919, 0.042482, -0.526813,
		-0.457039, 0.559588, -0.691359,
		0.265428, 0.827682, 0.494461,
		34.741608, 36.145298, 47.069386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820290, 36.063679, 46.212132>,  <34.555809, 35.565918, 46.723263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820290, 36.063679, 46.212132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984383, 36.175091, 46.559494>,  <35.082840, 36.241936, 46.767910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984383, 36.175091, 46.559494>,  <34.820290, 36.063679, 46.212132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984383, 36.175091, 46.559494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905435, -0.010525, -0.424354,
		-0.109054, 0.960371, -0.256507,
		0.410237, 0.278528, 0.868405,
		35.107452, 36.258648, 46.820015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.355106, 39.988609, 52.308670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014561, 39.883308, 52.127174>,  <27.810234, 39.820129, 52.018276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014561, 39.883308, 52.127174>,  <28.355106, 39.988609, 52.308670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014561, 39.883308, 52.127174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524575, 0.428400, 0.735727,
		0.000704, 0.864392, -0.502818,
		-0.851364, -0.263248, -0.453740,
		27.759151, 39.804333, 51.991051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478477, 40.218494, 51.605526>,  <28.355106, 39.988609, 52.308670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478477, 40.218494, 51.605526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383390, 40.537502, 51.383732>,  <28.326338, 40.728905, 51.250656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383390, 40.537502, 51.383732>,  <28.478477, 40.218494, 51.605526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383390, 40.537502, 51.383732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750790, -0.211327, -0.625824,
		-0.616283, -0.565075, -0.548530,
		-0.237718, 0.797515, -0.554490,
		28.312075, 40.776756, 51.217384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377382, 39.985390, 50.894112>,  <28.478477, 40.218494, 51.605526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377382, 39.985390, 50.894112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.466648, 40.375290, 50.890972>,  <28.520206, 40.609230, 50.889088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.466648, 40.375290, 50.890972>,  <28.377382, 39.985390, 50.894112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466648, 40.375290, 50.890972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596734, -0.142973, -0.789599,
		-0.770783, 0.171528, -0.613572,
		0.223163, 0.974750, -0.007844,
		28.533596, 40.667713, 50.888618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294237, 40.158443, 50.190266>,  <28.377382, 39.985390, 50.894112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294237, 40.158443, 50.190266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542173, 40.429409, 50.348713>,  <28.690935, 40.591988, 50.443783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542173, 40.429409, 50.348713>,  <28.294237, 40.158443, 50.190266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542173, 40.429409, 50.348713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659246, -0.175700, -0.731112,
		-0.425667, 0.714312, -0.555488,
		0.619841, 0.677413, 0.396117,
		28.728127, 40.632633, 50.467548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542721, 40.563480, 49.617767>,  <28.294237, 40.158443, 50.190266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542721, 40.563480, 49.617767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792393, 40.612877, 49.926353>,  <28.942196, 40.642513, 50.111504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792393, 40.612877, 49.926353>,  <28.542721, 40.563480, 49.617767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792393, 40.612877, 49.926353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781118, -0.118907, -0.612957,
		0.016038, 0.985196, -0.170679,
		0.624178, 0.123490, 0.771461,
		28.979647, 40.649925, 50.157791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152451, 40.862896, 49.341312>,  <28.542721, 40.563480, 49.617767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152451, 40.862896, 49.341312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242804, 40.692623, 49.691803>,  <29.297016, 40.590458, 49.902096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242804, 40.692623, 49.691803>,  <29.152451, 40.862896, 49.341312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242804, 40.692623, 49.691803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682462, -0.572700, -0.454158,
		0.695141, 0.700579, 0.161147,
		0.225885, -0.425681, 0.876226,
		29.310570, 40.564919, 49.954670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856800, 40.875130, 49.325775>,  <29.152451, 40.862896, 49.341312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856800, 40.875130, 49.325775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725872, 40.597324, 49.582062>,  <29.647316, 40.430641, 49.735832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725872, 40.597324, 49.582062>,  <29.856800, 40.875130, 49.325775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725872, 40.597324, 49.582062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696771, -0.635412, -0.332808,
		0.638256, 0.337496, 0.691900,
		-0.327320, -0.694513, 0.640713,
		29.627676, 40.388969, 49.774277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429003, 40.576763, 49.530701>,  <29.856800, 40.875130, 49.325775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429003, 40.576763, 49.530701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151520, 40.304512, 49.624954>,  <29.985031, 40.141163, 49.681507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151520, 40.304512, 49.624954>,  <30.429003, 40.576763, 49.530701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151520, 40.304512, 49.624954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616010, -0.730179, -0.295584,
		0.373235, -0.059897, 0.925801,
		-0.693706, -0.680625, 0.235632,
		29.943409, 40.100323, 49.695644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839891, 40.094704, 49.808964>,  <30.429003, 40.576763, 49.530701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839891, 40.094704, 49.808964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496038, 39.924721, 49.695518>,  <30.289726, 39.822731, 49.627449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496038, 39.924721, 49.695518>,  <30.839891, 40.094704, 49.808964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496038, 39.924721, 49.695518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505206, -0.789759, -0.347918,
		-0.076136, -0.442366, 0.893597,
		-0.859634, -0.424962, -0.283615,
		30.238148, 39.797234, 49.610435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892376, 39.369442, 50.068035>,  <30.839891, 40.094704, 49.808964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892376, 39.369442, 50.068035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612509, 39.342461, 49.783524>,  <30.444588, 39.326271, 49.612816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612509, 39.342461, 49.783524>,  <30.892376, 39.369442, 50.068035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612509, 39.342461, 49.783524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484777, -0.776126, -0.403261,
		-0.524838, -0.626960, 0.575731,
		-0.699668, -0.067455, -0.711276,
		30.402609, 39.322224, 49.570141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556898, 38.711308, 50.020195>,  <30.892376, 39.369442, 50.068035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556898, 38.711308, 50.020195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530760, 38.876438, 49.656811>,  <30.515076, 38.975517, 49.438778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530760, 38.876438, 49.656811>,  <30.556898, 38.711308, 50.020195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530760, 38.876438, 49.656811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392410, -0.826427, -0.403773,
		-0.917466, -0.382876, -0.107991,
		-0.065348, 0.412825, -0.908463,
		30.511156, 39.000286, 49.384274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523848, 38.172905, 49.605091>,  <30.556898, 38.711308, 50.020195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523848, 38.172905, 49.605091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577684, 38.450474, 49.322147>,  <30.609987, 38.617016, 49.152382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577684, 38.450474, 49.322147>,  <30.523848, 38.172905, 49.605091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577684, 38.450474, 49.322147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427857, -0.684578, -0.590162,
		-0.893769, -0.223218, -0.389038,
		0.134592, 0.693922, -0.707360,
		30.618061, 38.658649, 49.109940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269695, 37.972492, 48.807678>,  <30.523848, 38.172905, 49.605091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269695, 37.972492, 48.807678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.541353, 38.261955, 48.758556>,  <30.704348, 38.435635, 48.729084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.541353, 38.261955, 48.758556>,  <30.269695, 37.972492, 48.807678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541353, 38.261955, 48.758556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541048, -0.606611, -0.582486,
		-0.496015, 0.329149, -0.803511,
		0.679143, 0.723660, -0.122803,
		30.745096, 38.479053, 48.721714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447199, 37.926456, 48.124737>,  <30.269695, 37.972492, 48.807678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447199, 37.926456, 48.124737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744871, 38.132038, 48.295406>,  <30.923475, 38.255386, 48.397808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744871, 38.132038, 48.295406>,  <30.447199, 37.926456, 48.124737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744871, 38.132038, 48.295406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665955, -0.521187, -0.533730,
		-0.051938, 0.681335, -0.730127,
		0.744182, 0.513953, 0.426669,
		30.968126, 38.286224, 48.423409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955877, 37.438999, 47.848862>,  <30.447199, 37.926456, 48.124737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955877, 37.438999, 47.848862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.910746, 37.116589, 48.081272>,  <29.883667, 36.923141, 48.220718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.910746, 37.116589, 48.081272>,  <29.955877, 37.438999, 47.848862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910746, 37.116589, 48.081272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796517, 0.422949, 0.432058,
		-0.593995, -0.414052, -0.689732,
		-0.112827, -0.806024, 0.581029,
		29.876898, 36.874783, 48.255581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273727, 37.329838, 47.738850>,  <29.955877, 37.438999, 47.848862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273727, 37.329838, 47.738850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353893, 37.141609, 48.082569>,  <29.401993, 37.028671, 48.288803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353893, 37.141609, 48.082569>,  <29.273727, 37.329838, 47.738850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353893, 37.141609, 48.082569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801882, 0.425123, 0.419828,
		-0.562867, -0.773196, -0.292143,
		0.200413, -0.470572, 0.859300,
		29.414017, 37.000439, 48.340359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602587, 37.072887, 47.938259>,  <29.273727, 37.329838, 47.738850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602587, 37.072887, 47.938259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825033, 37.067829, 48.270660>,  <28.958502, 37.064793, 48.470100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825033, 37.067829, 48.270660>,  <28.602587, 37.072887, 47.938259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825033, 37.067829, 48.270660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813502, 0.196408, 0.547393,
		-0.170142, -0.980441, 0.098935,
		0.556118, -0.012651, 0.831007,
		28.991869, 37.064034, 48.519962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228886, 36.568489, 48.373501>,  <28.602587, 37.072887, 47.938259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228886, 36.568489, 48.373501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450041, 36.820316, 48.591843>,  <28.582733, 36.971413, 48.722847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450041, 36.820316, 48.591843>,  <28.228886, 36.568489, 48.373501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450041, 36.820316, 48.591843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779160, 0.158434, 0.606471,
		0.295337, -0.760615, 0.578135,
		0.552888, 0.629574, 0.545850,
		28.615908, 37.009190, 48.755596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300077, 36.334057, 49.073559>,  <28.228886, 36.568489, 48.373501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300077, 36.334057, 49.073559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367260, 36.728333, 49.079197>,  <28.407570, 36.964897, 49.082581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367260, 36.728333, 49.079197>,  <28.300077, 36.334057, 49.073559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367260, 36.728333, 49.079197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716714, 0.112284, 0.688268,
		0.676839, -0.125702, 0.725319,
		0.167958, 0.985693, 0.014094,
		28.417648, 37.024040, 49.083424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140949, 36.494232, 49.741169>,  <28.300077, 36.334057, 49.073559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140949, 36.494232, 49.741169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155483, 36.854958, 49.568935>,  <28.164204, 37.071392, 49.465595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155483, 36.854958, 49.568935>,  <28.140949, 36.494232, 49.741169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155483, 36.854958, 49.568935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565535, 0.373795, 0.735151,
		0.823923, 0.216800, 0.523592,
		0.036336, 0.901818, -0.430587,
		28.166384, 37.125504, 49.439758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360680, 37.014050, 50.237881>,  <28.140949, 36.494232, 49.741169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360680, 37.014050, 50.237881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145124, 37.191730, 49.951584>,  <28.015791, 37.298340, 49.779804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145124, 37.191730, 49.951584>,  <28.360680, 37.014050, 50.237881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145124, 37.191730, 49.951584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636651, 0.341618, 0.691356,
		0.551610, 0.828242, 0.098705,
		-0.538890, 0.444199, -0.715741,
		27.983458, 37.324989, 49.736862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281704, 37.632729, 50.454723>,  <28.360680, 37.014050, 50.237881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281704, 37.632729, 50.454723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980852, 37.616272, 50.191631>,  <27.800341, 37.606400, 50.033775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980852, 37.616272, 50.191631>,  <28.281704, 37.632729, 50.454723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980852, 37.616272, 50.191631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629860, 0.338457, 0.699088,
		0.193853, 0.940082, -0.280476,
		-0.752129, -0.041140, -0.657731,
		27.755213, 37.603931, 49.994312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924719, 38.264252, 50.544521>,  <28.281704, 37.632729, 50.454723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924719, 38.264252, 50.544521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689680, 37.982613, 50.385033>,  <27.548656, 37.813629, 50.289337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689680, 37.982613, 50.385033>,  <27.924719, 38.264252, 50.544521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689680, 37.982613, 50.385033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731198, 0.251011, 0.634304,
		-0.346526, 0.664261, -0.662327,
		-0.587595, -0.704095, -0.398725,
		27.513401, 37.771385, 50.265415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226570, 38.537792, 50.666855>,  <27.924719, 38.264252, 50.544521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226570, 38.537792, 50.666855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117884, 38.164894, 50.571285>,  <27.052671, 37.941154, 50.513943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117884, 38.164894, 50.571285>,  <27.226570, 38.537792, 50.666855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117884, 38.164894, 50.571285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681059, 0.010864, 0.732147,
		-0.679947, 0.361658, -0.637868,
		-0.271717, -0.932248, -0.238924,
		27.036369, 37.885220, 50.499607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464325, 38.540783, 50.720711>,  <27.226570, 38.537792, 50.666855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464325, 38.540783, 50.720711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569683, 38.156326, 50.753757>,  <26.632898, 37.925652, 50.773586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569683, 38.156326, 50.753757>,  <26.464325, 38.540783, 50.720711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569683, 38.156326, 50.753757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611764, -0.100201, 0.784669,
		-0.745902, -0.257219, -0.614386,
		0.263394, -0.961144, 0.082617,
		26.648701, 37.867985, 50.778542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884426, 38.174297, 50.869720>,  <26.464325, 38.540783, 50.720711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884426, 38.174297, 50.869720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.164772, 37.904903, 50.963707>,  <26.332979, 37.743267, 51.020100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.164772, 37.904903, 50.963707>,  <25.884426, 38.174297, 50.869720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164772, 37.904903, 50.963707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400477, -0.098948, 0.910949,
		-0.590260, -0.732550, -0.339064,
		0.700865, -0.673484, 0.234964,
		26.375032, 37.702858, 51.034195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507931, 37.658211, 51.152401>,  <25.884426, 38.174297, 50.869720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507931, 37.658211, 51.152401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.859331, 37.580711, 51.327076>,  <26.070171, 37.534210, 51.431881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.859331, 37.580711, 51.327076>,  <25.507931, 37.658211, 51.152401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859331, 37.580711, 51.327076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408281, 0.170181, 0.896853,
		-0.248083, -0.966178, 0.070398,
		0.878499, -0.193752, 0.436691,
		26.122881, 37.522587, 51.458084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463345, 37.073395, 51.518074>,  <25.507931, 37.658211, 51.152401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463345, 37.073395, 51.518074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755665, 37.296581, 51.675354>,  <25.931057, 37.430492, 51.769722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755665, 37.296581, 51.675354>,  <25.463345, 37.073395, 51.518074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755665, 37.296581, 51.675354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514573, 0.071853, 0.854431,
		0.448491, -0.826747, 0.339624,
		0.730802, 0.557966, 0.393196,
		25.974905, 37.463970, 51.793312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.143764, 37.524609, 56.429867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.840319, 37.587746, 56.177013>,  <31.658251, 37.625629, 56.025303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.840319, 37.587746, 56.177013>,  <32.143764, 37.524609, 56.429867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840319, 37.587746, 56.177013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446012, -0.581444, -0.680438,
		-0.474952, -0.798128, 0.370691,
		-0.758613, 0.157843, -0.632133,
		31.612736, 37.635098, 55.987373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961538, 36.856197, 56.163944>,  <32.143764, 37.524609, 56.429867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961538, 36.856197, 56.163944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813551, 37.122696, 55.904949>,  <31.724758, 37.282593, 55.749554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813551, 37.122696, 55.904949>,  <31.961538, 36.856197, 56.163944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813551, 37.122696, 55.904949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369403, -0.533984, -0.760527,
		-0.852446, -0.520556, -0.048554,
		-0.369970, 0.666244, -0.647488,
		31.702560, 37.322571, 55.710701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680143, 36.447544, 55.717670>,  <31.961538, 36.856197, 56.163944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680143, 36.447544, 55.717670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.747505, 36.789783, 55.521881>,  <31.787922, 36.995129, 55.404408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.747505, 36.789783, 55.521881>,  <31.680143, 36.447544, 55.717670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747505, 36.789783, 55.521881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363048, -0.515499, -0.776181,
		-0.916426, -0.046992, -0.397437,
		0.168404, 0.855601, -0.489477,
		31.798027, 37.046463, 55.375038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327158, 36.302872, 55.106110>,  <31.680143, 36.447544, 55.717670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327158, 36.302872, 55.106110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.587536, 36.597195, 55.031425>,  <31.743763, 36.773788, 54.986614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.587536, 36.597195, 55.031425>,  <31.327158, 36.302872, 55.106110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587536, 36.597195, 55.031425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375724, -0.525996, -0.762994,
		-0.659625, 0.426514, -0.618854,
		0.650942, 0.735808, -0.186708,
		31.782818, 36.817936, 54.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346752, 36.462952, 54.349571>,  <31.327158, 36.302872, 55.106110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346752, 36.462952, 54.349571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.688658, 36.608219, 54.497887>,  <31.893801, 36.695381, 54.586876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.688658, 36.608219, 54.497887>,  <31.346752, 36.462952, 54.349571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688658, 36.608219, 54.497887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513186, -0.484573, -0.708399,
		-0.077593, 0.795799, -0.600569,
		0.854763, 0.363171, 0.370793,
		31.945087, 36.717171, 54.609123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663759, 36.612617, 53.720043>,  <31.346752, 36.462952, 54.349571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663759, 36.612617, 53.720043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937370, 36.607262, 54.011776>,  <32.101536, 36.604050, 54.186817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937370, 36.607262, 54.011776>,  <31.663759, 36.612617, 53.720043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937370, 36.607262, 54.011776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657946, -0.420402, -0.624795,
		0.314979, 0.907239, -0.278757,
		0.684028, -0.013390, 0.729333,
		32.142578, 36.603245, 54.230576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303848, 36.921124, 53.415897>,  <31.663759, 36.612617, 53.720043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303848, 36.921124, 53.415897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.381454, 36.683098, 53.727859>,  <32.428020, 36.540283, 53.915035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.381454, 36.683098, 53.727859>,  <32.303848, 36.921124, 53.415897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381454, 36.683098, 53.727859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662105, -0.507190, -0.551702,
		0.723860, 0.623419, 0.295593,
		0.194020, -0.595069, 0.779904,
		32.439659, 36.504578, 53.961830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983154, 36.888134, 53.298481>,  <32.303848, 36.921124, 53.415897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983154, 36.888134, 53.298481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893776, 36.582226, 53.540207>,  <32.840149, 36.398682, 53.685242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893776, 36.582226, 53.540207>,  <32.983154, 36.888134, 53.298481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893776, 36.582226, 53.540207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662476, -0.573934, -0.481378,
		0.714980, 0.292779, 0.634889,
		-0.223446, -0.764775, 0.604311,
		32.826740, 36.352795, 53.721500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582073, 36.748711, 53.732998>,  <32.983154, 36.888134, 53.298481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582073, 36.748711, 53.732998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364616, 36.419151, 53.668945>,  <33.234142, 36.221416, 53.630516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364616, 36.419151, 53.668945>,  <33.582073, 36.748711, 53.732998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364616, 36.419151, 53.668945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741677, -0.382267, -0.551170,
		0.392898, -0.418401, 0.818884,
		-0.543642, -0.823901, -0.160127,
		33.201523, 36.171982, 53.620907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109985, 36.181919, 53.753319>,  <33.582073, 36.748711, 53.732998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109985, 36.181919, 53.753319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807652, 35.949768, 53.632076>,  <33.626251, 35.810478, 53.559330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807652, 35.949768, 53.632076>,  <34.109985, 36.181919, 53.753319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807652, 35.949768, 53.632076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650654, -0.614022, -0.446795,
		0.073193, -0.534924, 0.841724,
		-0.755839, -0.580374, -0.303108,
		33.580898, 35.775658, 53.541145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270031, 35.552681, 53.893818>,  <34.109985, 36.181919, 53.753319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270031, 35.552681, 53.893818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981300, 35.489132, 53.624382>,  <33.808064, 35.451004, 53.462719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981300, 35.489132, 53.624382>,  <34.270031, 35.552681, 53.893818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981300, 35.489132, 53.624382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571030, -0.686619, -0.449977,
		-0.391011, -0.709446, 0.586341,
		-0.721827, -0.158873, -0.673591,
		33.764751, 35.441471, 53.422306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112717, 34.826775, 53.849789>,  <34.270031, 35.552681, 53.893818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112717, 34.826775, 53.849789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985188, 34.977837, 53.502060>,  <33.908669, 35.068474, 53.293423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985188, 34.977837, 53.502060>,  <34.112717, 34.826775, 53.849789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985188, 34.977837, 53.502060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507302, -0.706760, -0.493088,
		-0.800622, -0.598219, 0.033746,
		-0.318824, 0.377657, -0.869325,
		33.889542, 35.091133, 53.241264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967537, 34.243923, 53.461544>,  <34.112717, 34.826775, 53.849789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967537, 34.243923, 53.461544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019581, 34.538776, 53.196301>,  <34.050808, 34.715687, 53.037155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019581, 34.538776, 53.196301>,  <33.967537, 34.243923, 53.461544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019581, 34.538776, 53.196301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596872, -0.592264, -0.541264,
		-0.791717, -0.325367, -0.517031,
		0.130109, 0.737129, -0.663108,
		34.058613, 34.759914, 52.997368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921345, 33.903286, 52.853611>,  <33.967537, 34.243923, 53.461544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921345, 33.903286, 52.853611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102253, 34.254272, 52.789734>,  <34.210800, 34.464863, 52.751408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102253, 34.254272, 52.789734>,  <33.921345, 33.903286, 52.853611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102253, 34.254272, 52.789734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712338, -0.463131, -0.527337,
		-0.536678, 0.124748, -0.834515,
		0.452274, 0.877467, -0.159689,
		34.237934, 34.517513, 52.741829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265541, 33.688560, 52.447899>,  <33.921345, 33.903286, 52.853611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265541, 33.688560, 52.447899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165619, 33.319962, 52.566853>,  <33.105667, 33.098801, 52.638226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165619, 33.319962, 52.566853>,  <33.265541, 33.688560, 52.447899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165619, 33.319962, 52.566853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567178, 0.388168, 0.726385,
		-0.784798, 0.012786, -0.619620,
		-0.249805, -0.921500, 0.297382,
		33.090679, 33.043510, 52.656067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579861, 33.783733, 52.608707>,  <33.265541, 33.688560, 52.447899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579861, 33.783733, 52.608707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673733, 33.445362, 52.800259>,  <32.730057, 33.242340, 52.915188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673733, 33.445362, 52.800259>,  <32.579861, 33.783733, 52.608707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673733, 33.445362, 52.800259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495352, 0.319805, 0.807683,
		-0.836392, -0.426761, -0.343981,
		0.234681, -0.845931, 0.478879,
		32.744137, 33.191582, 52.943924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949144, 33.351368, 52.672779>,  <32.579861, 33.783733, 52.608707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949144, 33.351368, 52.672779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203144, 33.250210, 52.964756>,  <32.355545, 33.189514, 53.139942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203144, 33.250210, 52.964756>,  <31.949144, 33.351368, 52.672779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203144, 33.250210, 52.964756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724620, 0.132539, 0.676284,
		-0.267773, -0.958373, -0.099089,
		0.634999, -0.252892, 0.729947,
		32.393642, 33.174343, 53.183739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558428, 33.011013, 53.175766>,  <31.949144, 33.351368, 52.672779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558428, 33.011013, 53.175766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896919, 33.128399, 53.353653>,  <32.100014, 33.198830, 53.460384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896919, 33.128399, 53.353653>,  <31.558428, 33.011013, 53.175766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896919, 33.128399, 53.353653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524874, 0.315538, 0.790534,
		0.091662, -0.902396, 0.421046,
		0.846230, 0.293458, 0.444721,
		32.150787, 33.216438, 53.487068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575233, 32.632122, 53.832302>,  <31.558428, 33.011013, 53.175766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575233, 32.632122, 53.832302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825779, 32.939781, 53.883030>,  <31.976107, 33.124374, 53.913467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825779, 32.939781, 53.883030>,  <31.575233, 32.632122, 53.832302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825779, 32.939781, 53.883030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505368, 0.276793, 0.817306,
		0.593525, -0.576021, 0.562075,
		0.626364, 0.769146, 0.126819,
		32.013687, 33.170525, 53.921074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541271, 32.711582, 54.586948>,  <31.575233, 32.632122, 53.832302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541271, 32.711582, 54.586948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.714983, 33.055302, 54.478870>,  <31.819210, 33.261532, 54.414024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.714983, 33.055302, 54.478870>,  <31.541271, 32.711582, 54.586948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714983, 33.055302, 54.478870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471289, 0.472380, 0.744811,
		0.767651, -0.196116, 0.610123,
		0.434280, 0.859300, -0.270196,
		31.845266, 33.313091, 54.397812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934095, 32.914837, 55.149490>,  <31.541271, 32.711582, 54.586948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934095, 32.914837, 55.149490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859003, 33.255783, 54.954258>,  <31.813948, 33.460350, 54.837116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859003, 33.255783, 54.954258>,  <31.934095, 32.914837, 55.149490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859003, 33.255783, 54.954258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501407, 0.344133, 0.793828,
		0.844600, 0.393754, 0.362779,
		-0.187729, 0.852367, -0.488086,
		31.802685, 33.511494, 54.807831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232426, 33.520115, 55.533142>,  <31.934095, 32.914837, 55.149490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232426, 33.520115, 55.533142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957661, 33.693966, 55.300159>,  <31.792803, 33.798275, 55.160370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957661, 33.693966, 55.300159>,  <32.232426, 33.520115, 55.533142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957661, 33.693966, 55.300159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307696, 0.552156, 0.774885,
		0.658392, 0.711495, -0.245548,
		-0.686908, 0.434624, -0.582460,
		31.751589, 33.824352, 55.125420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180374, 34.212303, 55.810333>,  <32.232426, 33.520115, 55.533142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180374, 34.212303, 55.810333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856106, 34.205479, 55.576229>,  <31.661547, 34.201382, 55.435768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856106, 34.205479, 55.576229>,  <32.180374, 34.212303, 55.810333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856106, 34.205479, 55.576229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413183, 0.724900, 0.551180,
		0.414849, 0.688643, -0.594703,
		-0.810666, -0.017065, -0.585260,
		31.612906, 34.200359, 55.400650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855465, 34.926685, 55.938953>,  <32.180374, 34.212303, 55.810333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855465, 34.926685, 55.938953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574570, 34.705063, 55.760120>,  <31.406033, 34.572090, 55.652821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574570, 34.705063, 55.760120>,  <31.855465, 34.926685, 55.938953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574570, 34.705063, 55.760120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705325, 0.455993, 0.542759,
		-0.096851, 0.696487, -0.711004,
		-0.702237, -0.554055, -0.447086,
		31.363899, 34.538845, 55.625996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361834, 35.453915, 55.704018>,  <31.855465, 34.926685, 55.938953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361834, 35.453915, 55.704018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.206318, 35.087513, 55.743572>,  <31.113008, 34.867672, 55.767307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.206318, 35.087513, 55.743572>,  <31.361834, 35.453915, 55.704018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206318, 35.087513, 55.743572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840054, 0.396521, 0.370244,
		-0.378357, 0.060875, -0.923656,
		-0.388787, -0.916005, 0.098888,
		31.089682, 34.812710, 55.773239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780699, 35.394459, 55.304844>,  <31.361834, 35.453915, 55.704018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780699, 35.394459, 55.304844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.728889, 35.114296, 55.585602>,  <30.697803, 34.946198, 55.754055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.728889, 35.114296, 55.585602>,  <30.780699, 35.394459, 55.304844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728889, 35.114296, 55.585602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738418, 0.540560, 0.403154,
		-0.661787, -0.466072, -0.587209,
		-0.129523, -0.700408, 0.701893,
		30.690033, 34.904175, 55.796169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063404, 35.175297, 55.386303>,  <30.780699, 35.394459, 55.304844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063404, 35.175297, 55.386303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.248827, 35.112358, 55.735096>,  <30.360081, 35.074593, 55.944370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.248827, 35.112358, 55.735096>,  <30.063404, 35.175297, 55.386303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248827, 35.112358, 55.735096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732553, 0.485575, 0.477056,
		-0.498478, -0.859917, 0.109825,
		0.463557, -0.157349, 0.871984,
		30.387894, 35.065155, 55.996693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554813, 34.834190, 55.845692>,  <30.063404, 35.175297, 55.386303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554813, 34.834190, 55.845692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841415, 35.002918, 56.067932>,  <30.013376, 35.104156, 56.201275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841415, 35.002918, 56.067932>,  <29.554813, 34.834190, 55.845692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841415, 35.002918, 56.067932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695976, 0.486309, 0.528318,
		-0.047335, -0.765224, 0.642021,
		0.716503, 0.421823, 0.555597,
		30.056366, 35.129467, 56.234612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866508, 34.492695, 56.052494>,  <29.554813, 34.834190, 55.845692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866508, 34.492695, 56.052494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.601225, 34.637627, 55.790543>,  <28.442055, 34.724586, 55.633369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.601225, 34.637627, 55.790543>,  <28.866508, 34.492695, 56.052494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601225, 34.637627, 55.790543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292100, -0.680304, -0.672208,
		-0.689080, -0.637106, 0.345348,
		-0.663209, 0.362329, -0.654883,
		28.402262, 34.746326, 55.594078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476194, 33.943199, 55.971619>,  <28.866508, 34.492695, 56.052494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476194, 33.943199, 55.971619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.461321, 34.195560, 55.661633>,  <28.452396, 34.346977, 55.475639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.461321, 34.195560, 55.661633>,  <28.476194, 33.943199, 55.971619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461321, 34.195560, 55.661633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355100, -0.716550, -0.600383,
		-0.934089, -0.297516, -0.197390,
		-0.037184, 0.630904, -0.774969,
		28.450165, 34.384830, 55.429142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123716, 33.594276, 55.506054>,  <28.476194, 33.943199, 55.971619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123716, 33.594276, 55.506054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.300676, 33.880409, 55.289692>,  <28.406853, 34.052090, 55.159874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.300676, 33.880409, 55.289692>,  <28.123716, 33.594276, 55.506054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300676, 33.880409, 55.289692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257396, -0.679039, -0.687498,
		-0.859085, 0.164925, -0.484533,
		0.442402, 0.715336, -0.540902,
		28.433397, 34.095009, 55.127422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990421, 33.422848, 54.857140>,  <28.123716, 33.594276, 55.506054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990421, 33.422848, 54.857140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.271654, 33.699318, 54.790264>,  <28.440393, 33.865200, 54.750137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.271654, 33.699318, 54.790264>,  <27.990421, 33.422848, 54.857140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271654, 33.699318, 54.790264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335844, -0.529982, -0.778671,
		-0.626806, 0.491319, -0.604747,
		0.703081, 0.691176, -0.167189,
		28.482578, 33.906670, 54.740108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888987, 33.738190, 54.144936>,  <27.990421, 33.422848, 54.857140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888987, 33.738190, 54.144936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.271502, 33.778229, 54.254837>,  <28.501011, 33.802250, 54.320778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.271502, 33.778229, 54.254837>,  <27.888987, 33.738190, 54.144936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271502, 33.778229, 54.254837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279355, -0.590436, -0.757196,
		0.086436, 0.800854, -0.592589,
		0.956289, 0.100094, 0.274758,
		28.558388, 33.808258, 54.337265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271858, 33.819126, 53.463116>,  <27.888987, 33.738190, 54.144936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271858, 33.819126, 53.463116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.542555, 33.709579, 53.736469>,  <28.704973, 33.643852, 53.900482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.542555, 33.709579, 53.736469>,  <28.271858, 33.819126, 53.463116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542555, 33.709579, 53.736469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441502, -0.591842, -0.674388,
		0.589149, 0.758103, -0.279612,
		0.676741, -0.273866, 0.683387,
		28.745577, 33.627419, 53.941486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964796, 33.996647, 53.117851>,  <28.271858, 33.819126, 53.463116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964796, 33.996647, 53.117851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009993, 33.724308, 53.407314>,  <29.037111, 33.560905, 53.580994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009993, 33.724308, 53.407314>,  <28.964796, 33.996647, 53.117851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009993, 33.724308, 53.407314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404103, -0.633877, -0.659471,
		0.907708, 0.366948, 0.203508,
		0.112992, -0.680845, 0.723659,
		29.043890, 33.520054, 53.624413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657969, 33.677696, 52.979694>,  <28.964796, 33.996647, 53.117851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657969, 33.677696, 52.979694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.521105, 33.401405, 53.234512>,  <29.438988, 33.235630, 53.387405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.521105, 33.401405, 53.234512>,  <29.657969, 33.677696, 52.979694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521105, 33.401405, 53.234512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343506, -0.722989, -0.599409,
		0.874604, 0.013737, 0.484643,
		-0.342157, -0.690723, 0.637048,
		29.418457, 33.194187, 53.425625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223074, 33.161560, 53.235336>,  <29.657969, 33.677696, 52.979694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223074, 33.161560, 53.235336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.867054, 32.982677, 53.270710>,  <29.653442, 32.875347, 53.291935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.867054, 32.982677, 53.270710>,  <30.223074, 33.161560, 53.235336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867054, 32.982677, 53.270710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389860, -0.847263, -0.360771,
		0.236268, -0.286625, 0.928452,
		-0.890049, -0.447205, 0.088438,
		29.600039, 32.848515, 53.297241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364683, 32.505272, 53.433723>,  <30.223074, 33.161560, 53.235336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364683, 32.505272, 53.433723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.985441, 32.492901, 53.307140>,  <29.757896, 32.485477, 53.231190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.985441, 32.492901, 53.307140>,  <30.364683, 32.505272, 53.433723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985441, 32.492901, 53.307140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208863, -0.811007, -0.546483,
		-0.239743, -0.584218, 0.775379,
		-0.948103, -0.030932, -0.316454,
		29.701010, 32.483620, 53.212204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170137, 31.848509, 53.503269>,  <30.364683, 32.505272, 53.433723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170137, 31.848509, 53.503269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.954857, 32.032955, 53.221073>,  <29.825689, 32.143623, 53.051758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.954857, 32.032955, 53.221073>,  <30.170137, 31.848509, 53.503269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954857, 32.032955, 53.221073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320977, -0.661837, -0.677455,
		-0.779303, -0.591052, 0.208194,
		-0.538201, 0.461117, -0.705486,
		29.793396, 32.171291, 53.009426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710470, 31.363062, 53.125252>,  <30.170137, 31.848509, 53.503269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710470, 31.363062, 53.125252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.738583, 31.670084, 52.870403>,  <29.755451, 31.854298, 52.717495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.738583, 31.670084, 52.870403>,  <29.710470, 31.363062, 53.125252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738583, 31.670084, 52.870403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455012, -0.593049, -0.664271,
		-0.887707, -0.243210, -0.390928,
		0.070282, 0.767555, -0.637118,
		29.759666, 31.900351, 52.679268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771286, 31.031879, 52.432507>,  <29.710470, 31.363062, 53.125252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771286, 31.031879, 52.432507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.835279, 31.412340, 52.326889>,  <29.873674, 31.640615, 52.263519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.835279, 31.412340, 52.326889>,  <29.771286, 31.031879, 52.432507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835279, 31.412340, 52.326889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359261, -0.305247, -0.881905,
		-0.919422, 0.046229, -0.390546,
		0.159983, 0.951150, -0.264042,
		29.883274, 31.697685, 52.247677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481213, 31.162420, 51.659058>,  <29.771286, 31.031879, 52.432507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481213, 31.162420, 51.659058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.748268, 31.447172, 51.746220>,  <29.908503, 31.618023, 51.798515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.748268, 31.447172, 51.746220>,  <29.481213, 31.162420, 51.659058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748268, 31.447172, 51.746220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495353, -0.206275, -0.843846,
		-0.555771, 0.671323, -0.490350,
		0.667640, 0.711882, 0.217900,
		29.948561, 31.660736, 51.811588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.706554, 36.734077, 52.343342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.861177, 37.100224, 52.298309>,  <25.953951, 37.319912, 52.271290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.861177, 37.100224, 52.298309>,  <25.706554, 36.734077, 52.343342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861177, 37.100224, 52.298309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186713, 0.197217, 0.962416,
		0.903167, -0.351009, 0.247147,
		0.386558, 0.915368, -0.112582,
		25.977144, 37.374832, 52.264534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179907, 36.744221, 52.875408>,  <25.706554, 36.734077, 52.343342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179907, 36.744221, 52.875408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.052668, 37.108070, 52.768524>,  <25.976324, 37.326382, 52.704395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.052668, 37.108070, 52.768524>,  <26.179907, 36.744221, 52.875408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052668, 37.108070, 52.768524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238009, 0.196199, 0.951240,
		0.917696, 0.366184, 0.154088,
		-0.318097, 0.909624, -0.267206,
		25.957239, 37.380959, 52.688362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364641, 37.160503, 53.444477>,  <26.179907, 36.744221, 52.875408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364641, 37.160503, 53.444477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.108362, 37.398010, 53.249771>,  <25.954594, 37.540516, 53.132946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.108362, 37.398010, 53.249771>,  <26.364641, 37.160503, 53.444477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108362, 37.398010, 53.249771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298971, 0.391006, 0.870478,
		0.707193, 0.703243, -0.072997,
		-0.640699, 0.593771, -0.486765,
		25.916153, 37.576141, 53.103741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572725, 37.784500, 53.667484>,  <26.364641, 37.160503, 53.444477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572725, 37.784500, 53.667484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.193855, 37.810162, 53.541794>,  <25.966534, 37.825558, 53.466377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.193855, 37.810162, 53.541794>,  <26.572725, 37.784500, 53.667484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193855, 37.810162, 53.541794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260736, 0.416467, 0.870960,
		0.186742, 0.906884, -0.377741,
		-0.947177, 0.064154, -0.314230,
		25.909702, 37.829407, 53.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223568, 38.355606, 54.106277>,  <26.572725, 37.784500, 53.667484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223568, 38.355606, 54.106277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.901041, 38.191090, 53.936245>,  <25.707525, 38.092381, 53.834225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.901041, 38.191090, 53.936245>,  <26.223568, 38.355606, 54.106277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901041, 38.191090, 53.936245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584377, 0.442857, 0.679986,
		-0.091419, 0.796693, -0.597430,
		-0.806316, -0.411288, -0.425084,
		25.659145, 38.067703, 53.808720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820723, 38.920937, 54.008656>,  <26.223568, 38.355606, 54.106277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820723, 38.920937, 54.008656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.570827, 38.608990, 53.993088>,  <25.420891, 38.421822, 53.983746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.570827, 38.608990, 53.993088>,  <25.820723, 38.920937, 54.008656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570827, 38.608990, 53.993088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411018, 0.286062, 0.865582,
		-0.663904, 0.556758, -0.499252,
		-0.624737, -0.779865, -0.038920,
		25.383406, 38.375031, 53.981411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176132, 39.270271, 53.910324>,  <25.820723, 38.920937, 54.008656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176132, 39.270271, 53.910324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.121973, 38.898285, 54.047043>,  <25.089478, 38.675091, 54.129074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.121973, 38.898285, 54.047043>,  <25.176132, 39.270271, 53.910324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.121973, 38.898285, 54.047043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416879, 0.366426, 0.831832,
		-0.898821, -0.029861, -0.437297,
		-0.135397, -0.929968, 0.341799,
		25.081354, 38.619293, 54.149582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494762, 39.171577, 53.903046>,  <25.176132, 39.270271, 53.910324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494762, 39.171577, 53.903046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.705410, 38.971535, 54.178017>,  <24.831799, 38.851509, 54.342999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.705410, 38.971535, 54.178017>,  <24.494762, 39.171577, 53.903046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705410, 38.971535, 54.178017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460564, 0.511842, 0.725189,
		-0.714529, -0.698506, 0.039215,
		0.526621, -0.500108, 0.687432,
		24.863396, 38.821503, 54.384247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999121, 39.073898, 54.457207>,  <24.494762, 39.171577, 53.903046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999121, 39.073898, 54.457207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.368378, 39.012947, 54.598396>,  <24.589931, 38.976376, 54.683109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.368378, 39.012947, 54.598396>,  <23.999121, 39.073898, 54.457207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.368378, 39.012947, 54.598396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291288, 0.321974, 0.900824,
		-0.250916, -0.934405, 0.252841,
		0.923142, -0.152381, 0.352969,
		24.645321, 38.967232, 54.704288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983496, 38.700924, 54.988682>,  <23.999121, 39.073898, 54.457207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983496, 38.700924, 54.988682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.325130, 38.890488, 55.074421>,  <24.530111, 39.004227, 55.125862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.325130, 38.890488, 55.074421>,  <23.983496, 38.700924, 54.988682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325130, 38.890488, 55.074421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429965, 0.411401, 0.803666,
		0.292681, -0.778563, 0.555137,
		0.854089, 0.473908, 0.214346,
		24.581356, 39.032661, 55.138725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.078484, 38.781460, 55.783085>,  <23.983496, 38.700924, 54.988682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.078484, 38.781460, 55.783085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.369280, 39.018406, 55.644184>,  <24.543758, 39.160572, 55.560844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.369280, 39.018406, 55.644184>,  <24.078484, 38.781460, 55.783085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369280, 39.018406, 55.644184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027486, 0.530427, 0.847285,
		0.686095, -0.606425, 0.401898,
		0.726992, 0.592365, -0.347255,
		24.587378, 39.196114, 55.540009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554312, 38.946785, 56.423328>,  <24.078484, 38.781460, 55.783085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554312, 38.946785, 56.423328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.638836, 39.221268, 56.144913>,  <24.689550, 39.385956, 55.977863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.638836, 39.221268, 56.144913>,  <24.554312, 38.946785, 56.423328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.638836, 39.221268, 56.144913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217616, 0.661217, 0.717938,
		0.952886, -0.303177, -0.009606,
		0.211310, 0.686204, -0.696040,
		24.702229, 39.427128, 55.936100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438808, 38.748127, 57.178547>,  <24.554312, 38.946785, 56.423328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438808, 38.748127, 57.178547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.232754, 38.598793, 56.869938>,  <24.109121, 38.509193, 56.684772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.232754, 38.598793, 56.869938>,  <24.438808, 38.748127, 57.178547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232754, 38.598793, 56.869938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593622, -0.804714, -0.006957,
		-0.618260, -0.461579, 0.636159,
		-0.515137, -0.373337, -0.771526,
		24.078213, 38.486794, 56.638481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857786, 39.085514, 57.632542>,  <24.438808, 38.748127, 57.178547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857786, 39.085514, 57.632542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.022873, 39.082512, 57.996872>,  <25.121925, 39.080711, 58.215469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.022873, 39.082512, 57.996872>,  <24.857786, 39.085514, 57.632542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.022873, 39.082512, 57.996872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547725, -0.796930, -0.254755,
		0.727779, 0.604025, -0.324794,
		0.412716, -0.007508, 0.910829,
		25.146688, 39.080261, 58.270119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648930, 39.248627, 57.643333>,  <24.857786, 39.085514, 57.632542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648930, 39.248627, 57.643333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.536234, 38.995434, 57.931763>,  <25.468616, 38.843517, 58.104820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.536234, 38.995434, 57.931763>,  <25.648930, 39.248627, 57.643333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536234, 38.995434, 57.931763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476425, -0.744621, -0.467502,
		0.832851, 0.211825, 0.511360,
		-0.281741, -0.632984, 0.721077,
		25.451712, 38.805538, 58.148087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267595, 38.904049, 57.903469>,  <25.648930, 39.248627, 57.643333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267595, 38.904049, 57.903469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.947680, 38.674717, 57.974606>,  <25.755730, 38.537117, 58.017288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.947680, 38.674717, 57.974606>,  <26.267595, 38.904049, 57.903469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947680, 38.674717, 57.974606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445318, -0.765348, -0.464688,
		0.402530, -0.292457, 0.867432,
		-0.799789, -0.573334, 0.177839,
		25.707743, 38.502716, 58.027958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508739, 38.311153, 58.149170>,  <26.267595, 38.904049, 57.903469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508739, 38.311153, 58.149170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.145454, 38.214096, 58.012772>,  <25.927483, 38.155861, 57.930935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.145454, 38.214096, 58.012772>,  <26.508739, 38.311153, 58.149170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145454, 38.214096, 58.012772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375024, -0.833495, -0.405762,
		-0.185763, -0.496399, 0.847986,
		-0.908212, -0.242640, -0.340994,
		25.872992, 38.141304, 57.910473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420841, 37.690487, 58.366856>,  <26.508739, 38.311153, 58.149170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420841, 37.690487, 58.366856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.153494, 37.723694, 58.071182>,  <25.993086, 37.743618, 57.893780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.153494, 37.723694, 58.071182>,  <26.420841, 37.690487, 58.366856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153494, 37.723694, 58.071182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335588, -0.853213, -0.399259,
		-0.663824, -0.514914, 0.542404,
		-0.668370, 0.083013, -0.739182,
		25.952982, 37.748596, 57.849426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204086, 37.042912, 58.256687>,  <26.420841, 37.690487, 58.366856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204086, 37.042912, 58.256687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.084198, 37.206409, 57.911873>,  <26.012264, 37.304508, 57.704987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.084198, 37.206409, 57.911873>,  <26.204086, 37.042912, 58.256687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084198, 37.206409, 57.911873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278077, -0.826908, -0.488771,
		-0.912601, -0.386206, 0.134181,
		-0.299721, 0.408740, -0.862031,
		25.994282, 37.329033, 57.653263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793396, 36.512020, 57.873211>,  <26.204086, 37.042912, 58.256687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793396, 36.512020, 57.873211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.924406, 36.790604, 57.617813>,  <26.003012, 36.957752, 57.464577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.924406, 36.790604, 57.617813>,  <25.793396, 36.512020, 57.873211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924406, 36.790604, 57.617813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270688, -0.716605, -0.642811,
		-0.905237, 0.037706, -0.423230,
		0.327527, 0.696460, -0.638491,
		26.022663, 36.999542, 57.426266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529369, 36.274330, 57.254581>,  <25.793396, 36.512020, 57.873211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529369, 36.274330, 57.254581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.838278, 36.524025, 57.207375>,  <26.023623, 36.673840, 57.179050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.838278, 36.524025, 57.207375>,  <25.529369, 36.274330, 57.254581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838278, 36.524025, 57.207375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402241, -0.624246, -0.669716,
		-0.491730, 0.469732, -0.733180,
		0.772272, 0.624234, -0.118015,
		26.069960, 36.711296, 57.171970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789755, 36.044025, 56.705631>,  <25.529369, 36.274330, 57.254581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789755, 36.044025, 56.705631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.082369, 36.301640, 56.795139>,  <26.257938, 36.456207, 56.848843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.082369, 36.301640, 56.795139>,  <25.789755, 36.044025, 56.705631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082369, 36.301640, 56.795139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599700, -0.451664, -0.660576,
		-0.324368, 0.617428, -0.716637,
		0.731537, 0.644036, 0.223766,
		26.301830, 36.494850, 56.862270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076347, 36.239136, 56.051571>,  <25.789755, 36.044025, 56.705631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076347, 36.239136, 56.051571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.350704, 36.288185, 56.338490>,  <26.515318, 36.317616, 56.510639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.350704, 36.288185, 56.338490>,  <26.076347, 36.239136, 56.051571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350704, 36.288185, 56.338490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681190, -0.454937, -0.573595,
		0.255990, 0.882041, -0.395567,
		0.685893, 0.122622, 0.717297,
		26.556473, 36.324970, 56.553680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551580, 36.542458, 55.721996>,  <26.076347, 36.239136, 56.051571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551580, 36.542458, 55.721996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.683163, 36.338211, 56.039753>,  <26.762112, 36.215664, 56.230408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.683163, 36.338211, 56.039753>,  <26.551580, 36.542458, 55.721996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683163, 36.338211, 56.039753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716326, -0.413226, -0.562246,
		0.615357, 0.753996, 0.229837,
		0.328957, -0.510620, 0.794389,
		26.781849, 36.185024, 56.278069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198143, 36.211910, 55.424416>,  <26.551580, 36.542458, 55.721996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198143, 36.211910, 55.424416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.196653, 36.052338, 55.791203>,  <27.195761, 35.956593, 56.011276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.196653, 36.052338, 55.791203>,  <27.198143, 36.211910, 55.424416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196653, 36.052338, 55.791203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781300, -0.573491, -0.246330,
		0.624145, 0.715513, 0.313822,
		-0.003722, -0.398934, 0.916972,
		27.195538, 35.932659, 56.066296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883327, 36.261547, 55.686890>,  <27.198143, 36.211910, 55.424416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883327, 36.261547, 55.686890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.707806, 35.943741, 55.854794>,  <27.602493, 35.753056, 55.955536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.707806, 35.943741, 55.854794>,  <27.883327, 36.261547, 55.686890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707806, 35.943741, 55.854794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696502, -0.595876, -0.399770,
		0.567746, 0.116940, 0.814855,
		-0.438804, -0.794517, 0.419755,
		27.576164, 35.705387, 55.980721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398691, 35.839443, 55.910030>,  <27.883327, 36.261547, 55.686890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398691, 35.839443, 55.910030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.093416, 35.581028, 55.915417>,  <27.910252, 35.425980, 55.918648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.093416, 35.581028, 55.915417>,  <28.398691, 35.839443, 55.910030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093416, 35.581028, 55.915417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530946, -0.638831, -0.556769,
		0.368292, -0.417772, 0.830558,
		-0.763189, -0.646035, 0.013463,
		27.864460, 35.387218, 55.919456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683254, 35.149418, 56.283764>,  <28.398691, 35.839443, 55.910030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683254, 35.149418, 56.283764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.389603, 35.098537, 56.016968>,  <28.213411, 35.068008, 55.856892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.389603, 35.098537, 56.016968>,  <28.683254, 35.149418, 56.283764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389603, 35.098537, 56.016968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534275, -0.714433, -0.451814,
		-0.419049, -0.688046, 0.592445,
		-0.734131, -0.127197, -0.666988,
		28.169363, 35.060379, 55.816872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329086, 34.840210, 56.539703>,  <28.683254, 35.149418, 56.283764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329086, 34.840210, 56.539703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.606058, 35.128723, 56.546478>,  <29.772242, 35.301830, 56.550545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.606058, 35.128723, 56.546478>,  <29.329086, 34.840210, 56.539703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606058, 35.128723, 56.546478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446197, 0.409657, 0.795669,
		0.566967, -0.558502, 0.605495,
		0.692428, 0.721288, 0.016939,
		29.813787, 35.345108, 56.551559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366421, 34.922455, 57.273911>,  <29.329086, 34.840210, 56.539703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366421, 34.922455, 57.273911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.545923, 35.232243, 57.095554>,  <29.653625, 35.418114, 56.988541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.545923, 35.232243, 57.095554>,  <29.366421, 34.922455, 57.273911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545923, 35.232243, 57.095554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309431, 0.602743, 0.735495,
		0.838374, -0.192086, 0.510129,
		0.448754, 0.774470, -0.445887,
		29.680550, 35.464584, 56.961788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795479, 35.319939, 57.835110>,  <29.366421, 34.922455, 57.273911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795479, 35.319939, 57.835110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.727161, 35.590057, 57.548111>,  <29.686171, 35.752129, 57.375912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.727161, 35.590057, 57.548111>,  <29.795479, 35.319939, 57.835110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727161, 35.590057, 57.548111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268226, 0.668832, 0.693339,
		0.948095, 0.310871, 0.066899,
		-0.170795, 0.675295, -0.717500,
		29.675922, 35.792645, 57.332863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850466, 35.932243, 58.195171>,  <29.795479, 35.319939, 57.835110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850466, 35.932243, 58.195171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.684385, 36.077087, 57.861347>,  <29.584738, 36.163994, 57.661053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.684385, 36.077087, 57.861347>,  <29.850466, 35.932243, 58.195171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684385, 36.077087, 57.861347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458989, 0.708664, 0.535840,
		0.785455, 0.605532, -0.128031,
		-0.415199, 0.362114, -0.834556,
		29.559826, 36.185722, 57.610981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997993, 36.625225, 58.260021>,  <29.850466, 35.932243, 58.195171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997993, 36.625225, 58.260021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.694351, 36.578255, 58.003906>,  <29.512167, 36.550072, 57.850235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.694351, 36.578255, 58.003906>,  <29.997993, 36.625225, 58.260021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694351, 36.578255, 58.003906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506334, 0.724689, 0.467388,
		0.409129, 0.678997, -0.609571,
		-0.759104, -0.117424, -0.640290,
		29.466619, 36.543026, 57.811821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809774, 37.337246, 58.037701>,  <29.997993, 36.625225, 58.260021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809774, 37.337246, 58.037701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.515339, 37.072735, 57.979889>,  <29.338678, 36.914028, 57.945202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.515339, 37.072735, 57.979889>,  <29.809774, 37.337246, 58.037701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515339, 37.072735, 57.979889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620968, 0.574732, 0.532993,
		-0.269391, 0.482077, -0.833685,
		-0.736089, -0.661275, -0.144527,
		29.294512, 36.874352, 57.936531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226152, 37.821575, 57.765179>,  <29.809774, 37.337246, 58.037701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226152, 37.821575, 57.765179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.074778, 37.488861, 57.927616>,  <28.983953, 37.289230, 58.025078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.074778, 37.488861, 57.927616>,  <29.226152, 37.821575, 57.765179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074778, 37.488861, 57.927616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650017, 0.551157, 0.523168,
		-0.658987, -0.065984, -0.749254,
		-0.378436, -0.831789, 0.406096,
		28.961246, 37.239323, 58.049446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949150, 38.283146, 57.283466>,  <29.226152, 37.821575, 57.765179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949150, 38.283146, 57.283466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.185617, 38.603741, 57.319542>,  <29.327497, 38.796097, 57.341187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.185617, 38.603741, 57.319542>,  <28.949150, 38.283146, 57.283466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185617, 38.603741, 57.319542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595809, -0.358601, -0.718621,
		-0.543628, 0.478559, -0.689529,
		0.591169, 0.801490, 0.090185,
		29.362968, 38.844189, 57.346596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016068, 38.532490, 56.586796>,  <28.949150, 38.283146, 57.283466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016068, 38.532490, 56.586796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.324076, 38.635803, 56.820156>,  <29.508881, 38.697792, 56.960175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.324076, 38.635803, 56.820156>,  <29.016068, 38.532490, 56.586796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324076, 38.635803, 56.820156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636467, -0.374735, -0.674154,
		0.044499, 0.890429, -0.452942,
		0.770019, 0.258283, 0.583404,
		29.555080, 38.713287, 56.995178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498652, 38.932507, 56.174355>,  <29.016068, 38.532490, 56.586796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498652, 38.932507, 56.174355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.705034, 38.759281, 56.469990>,  <29.828863, 38.655346, 56.647369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.705034, 38.759281, 56.469990>,  <29.498652, 38.932507, 56.174355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705034, 38.759281, 56.469990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660693, -0.347981, -0.665127,
		0.545229, 0.831484, 0.106579,
		0.515955, -0.433063, 0.739085,
		29.859821, 38.629364, 56.691715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130327, 39.100857, 55.980324>,  <29.498652, 38.932507, 56.174355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130327, 39.100857, 55.980324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.163004, 38.811855, 56.254932>,  <30.182610, 38.638454, 56.419697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.163004, 38.811855, 56.254932>,  <30.130327, 39.100857, 55.980324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163004, 38.811855, 56.254932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642199, -0.488607, -0.590630,
		0.762173, 0.489134, 0.424076,
		0.081691, -0.722503, 0.686525,
		30.187511, 38.595104, 56.460892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722872, 38.954659, 55.807812>,  <30.130327, 39.100857, 55.980324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722872, 38.954659, 55.807812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.650543, 38.688103, 56.097153>,  <30.607145, 38.528172, 56.270756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.650543, 38.688103, 56.097153>,  <30.722872, 38.954659, 55.807812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650543, 38.688103, 56.097153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856943, -0.467676, -0.216630,
		0.482652, 0.580697, 0.655621,
		-0.180822, -0.666386, 0.723348,
		30.596296, 38.488186, 56.314156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166323, 39.020428, 56.424580>,  <30.722872, 38.954659, 55.807812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166323, 39.020428, 56.424580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.039461, 38.652000, 56.334202>,  <30.963345, 38.430946, 56.279976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.039461, 38.652000, 56.334202>,  <31.166323, 39.020428, 56.424580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039461, 38.652000, 56.334202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928742, -0.253421, -0.270585,
		0.191967, -0.295664, 0.935805,
		-0.317155, -0.921065, -0.225947,
		30.944315, 38.375679, 56.266418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787861, 38.594795, 56.564388>,  <31.166323, 39.020428, 56.424580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787861, 38.594795, 56.564388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.574482, 38.330814, 56.352768>,  <31.446455, 38.172424, 56.225796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.574482, 38.330814, 56.352768>,  <31.787861, 38.594795, 56.564388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574482, 38.330814, 56.352768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798380, -0.186314, -0.572606,
		0.279324, -0.727838, 0.626282,
		-0.533449, -0.659954, -0.529049,
		31.414448, 38.132828, 56.194054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<25.795040, 42.249611, 55.688232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618443, 41.949699, 55.491085>,  <25.512484, 41.769753, 55.372799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618443, 41.949699, 55.491085>,  <25.795040, 42.249611, 55.688232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618443, 41.949699, 55.491085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653829, 0.107350, -0.748988,
		0.614484, -0.652923, 0.442833,
		-0.441494, -0.749779, -0.492865,
		25.485994, 41.724766, 55.343227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293261, 41.752560, 55.323029>,  <25.795040, 42.249611, 55.688232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293261, 41.752560, 55.323029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950678, 41.670101, 55.133720>,  <25.745129, 41.620625, 55.020134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950678, 41.670101, 55.133720>,  <26.293261, 41.752560, 55.323029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950678, 41.670101, 55.133720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485987, -0.012859, -0.873871,
		0.174062, -0.978436, 0.111199,
		-0.856457, -0.206149, -0.473269,
		25.693741, 41.608257, 54.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418583, 41.319530, 54.754379>,  <26.293261, 41.752560, 55.323029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418583, 41.319530, 54.754379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084654, 41.524418, 54.673679>,  <25.884296, 41.647350, 54.625259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084654, 41.524418, 54.673679>,  <26.418583, 41.319530, 54.754379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084654, 41.524418, 54.673679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280740, 0.080870, -0.956371,
		-0.473560, -0.855037, -0.211313,
		-0.834821, 0.512223, -0.201746,
		25.834208, 41.678085, 54.613155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012297, 40.950554, 54.249264>,  <26.418583, 41.319530, 54.754379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012297, 40.950554, 54.249264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903128, 41.333618, 54.212624>,  <25.837626, 41.563457, 54.190639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903128, 41.333618, 54.212624>,  <26.012297, 40.950554, 54.249264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903128, 41.333618, 54.212624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268543, -0.015589, -0.963141,
		-0.923795, -0.287462, -0.252920,
		-0.272924, 0.957665, -0.091597,
		25.821251, 41.620918, 54.185146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891535, 40.971966, 53.650444>,  <26.012297, 40.950554, 54.249264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891535, 40.971966, 53.650444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904741, 41.364433, 53.726562>,  <25.912664, 41.599915, 53.772236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904741, 41.364433, 53.726562>,  <25.891535, 40.971966, 53.650444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904741, 41.364433, 53.726562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277419, 0.173926, -0.944875,
		-0.960182, 0.083989, -0.266453,
		0.033016, 0.981171, 0.190301,
		25.914646, 41.658783, 53.783653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520496, 41.358776, 53.036224>,  <25.891535, 40.971966, 53.650444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520496, 41.358776, 53.036224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794020, 41.588253, 53.216572>,  <25.958134, 41.725941, 53.324780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794020, 41.588253, 53.216572>,  <25.520496, 41.358776, 53.036224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794020, 41.588253, 53.216572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476065, 0.117502, -0.871525,
		-0.552965, 0.810599, -0.192766,
		0.683807, 0.573692, 0.450872,
		25.999163, 41.760361, 53.351833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683498, 41.864868, 52.500259>,  <25.520496, 41.358776, 53.036224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683498, 41.864868, 52.500259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978889, 41.920906, 52.764084>,  <26.156124, 41.954529, 52.922379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978889, 41.920906, 52.764084>,  <25.683498, 41.864868, 52.500259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978889, 41.920906, 52.764084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633155, 0.192306, -0.749755,
		-0.231876, 0.971283, 0.053311,
		0.738477, 0.140096, 0.659565,
		26.200432, 41.962936, 52.961952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177376, 42.378601, 52.216141>,  <25.683498, 41.864868, 52.500259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177376, 42.378601, 52.216141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411165, 42.186172, 52.477512>,  <26.551439, 42.070717, 52.634335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411165, 42.186172, 52.477512>,  <26.177376, 42.378601, 52.216141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411165, 42.186172, 52.477512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752673, 0.020614, -0.658071,
		0.303108, 0.876441, 0.374135,
		0.584473, -0.481068, 0.653426,
		26.586508, 42.041851, 52.673538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801245, 42.552364, 52.013935>,  <26.177376, 42.378601, 52.216141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801245, 42.552364, 52.013935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911556, 42.247543, 52.248280>,  <26.977743, 42.064651, 52.388885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911556, 42.247543, 52.248280>,  <26.801245, 42.552364, 52.013935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911556, 42.247543, 52.248280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802788, -0.152612, -0.576404,
		0.528656, 0.629280, 0.569676,
		0.275780, -0.762048, 0.585857,
		26.994289, 42.018929, 52.424038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505545, 42.635220, 52.159962>,  <26.801245, 42.552364, 52.013935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505545, 42.635220, 52.159962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431566, 42.245426, 52.210831>,  <27.387178, 42.011551, 52.241352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431566, 42.245426, 52.210831>,  <27.505545, 42.635220, 52.159962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431566, 42.245426, 52.210831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878472, -0.221944, -0.423118,
		0.440548, 0.033464, 0.897105,
		-0.184947, -0.974485, 0.127174,
		27.376081, 41.953079, 52.248981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077972, 42.292416, 52.613571>,  <27.505545, 42.635220, 52.159962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077972, 42.292416, 52.613571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882559, 42.023933, 52.390568>,  <27.765310, 41.862843, 52.256767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882559, 42.023933, 52.390568>,  <28.077972, 42.292416, 52.613571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882559, 42.023933, 52.390568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858103, -0.253812, -0.446363,
		0.158100, -0.696463, 0.699960,
		-0.488533, -0.671207, -0.557509,
		27.735998, 41.822571, 52.223316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606329, 41.832596, 52.535110>,  <28.077972, 42.292416, 52.613571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606329, 41.832596, 52.535110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340433, 41.750259, 52.247845>,  <28.180897, 41.700859, 52.075485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340433, 41.750259, 52.247845>,  <28.606329, 41.832596, 52.535110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340433, 41.750259, 52.247845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738664, -0.037232, -0.673045,
		0.111801, -0.977877, 0.176796,
		-0.664738, -0.205840, -0.718160,
		28.141012, 41.688507, 52.032398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480551, 41.759541, 53.341846>,  <28.606329, 41.832596, 52.535110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480551, 41.759541, 53.341846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831800, 41.783184, 53.531754>,  <29.042551, 41.797371, 53.645699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831800, 41.783184, 53.531754>,  <28.480551, 41.759541, 53.341846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831800, 41.783184, 53.531754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478023, 0.067318, 0.875764,
		0.019797, -0.995980, 0.087365,
		0.878124, 0.059100, 0.474769,
		29.095238, 41.800915, 53.674183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390854, 41.283367, 53.930550>,  <28.480551, 41.759541, 53.341846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390854, 41.283367, 53.930550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685646, 41.544876, 53.999180>,  <28.862522, 41.701782, 54.040359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685646, 41.544876, 53.999180>,  <28.390854, 41.283367, 53.930550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685646, 41.544876, 53.999180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309267, 0.100453, 0.945655,
		0.601011, -0.749991, 0.276223,
		0.736980, 0.653776, 0.171574,
		28.906740, 41.741009, 54.050652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630224, 41.042870, 54.576462>,  <28.390854, 41.283367, 53.930550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630224, 41.042870, 54.576462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794384, 41.405331, 54.535564>,  <28.892879, 41.622807, 54.511024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794384, 41.405331, 54.535564>,  <28.630224, 41.042870, 54.576462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794384, 41.405331, 54.535564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259936, 0.223718, 0.939353,
		0.874075, -0.358931, 0.327357,
		0.410398, 0.906156, -0.102248,
		28.917503, 41.677177, 54.504890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093882, 41.086514, 55.160397>,  <28.630224, 41.042870, 54.576462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093882, 41.086514, 55.160397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027020, 41.457329, 55.026142>,  <28.986902, 41.679817, 54.945591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027020, 41.457329, 55.026142>,  <29.093882, 41.086514, 55.160397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027020, 41.457329, 55.026142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035524, 0.334542, 0.941711,
		0.985290, 0.169337, -0.022989,
		-0.167157, 0.927042, -0.335637,
		28.976871, 41.735443, 54.925449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528263, 41.574394, 55.592861>,  <29.093882, 41.086514, 55.160397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528263, 41.574394, 55.592861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237761, 41.791187, 55.423717>,  <29.063459, 41.921265, 55.322231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237761, 41.791187, 55.423717>,  <29.528263, 41.574394, 55.592861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237761, 41.791187, 55.423717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150345, 0.475006, 0.867044,
		0.670780, 0.693272, -0.263493,
		-0.726258, 0.541981, -0.422855,
		29.019884, 41.953781, 55.296860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712261, 42.278118, 55.711449>,  <29.528263, 41.574394, 55.592861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712261, 42.278118, 55.711449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318132, 42.282806, 55.643333>,  <29.081656, 42.285618, 55.602463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318132, 42.282806, 55.643333>,  <29.712261, 42.278118, 55.711449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318132, 42.282806, 55.643333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133046, 0.572255, 0.809211,
		0.106935, 0.819992, -0.562297,
		-0.985324, 0.011722, -0.170290,
		29.022535, 42.286324, 55.592247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565933, 42.881550, 55.963959>,  <29.712261, 42.278118, 55.711449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565933, 42.881550, 55.963959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203892, 42.721218, 55.907219>,  <28.986668, 42.625019, 55.873173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203892, 42.721218, 55.907219>,  <29.565933, 42.881550, 55.963959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203892, 42.721218, 55.907219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285867, 0.326694, 0.900862,
		-0.314749, 0.855925, -0.410276,
		-0.905104, -0.400829, -0.141854,
		28.932360, 42.600971, 55.864662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076706, 43.382755, 56.102711>,  <29.565933, 42.881550, 55.963959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076706, 43.382755, 56.102711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869997, 43.042961, 56.145279>,  <28.745972, 42.839085, 56.170818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869997, 43.042961, 56.145279>,  <29.076706, 43.382755, 56.102711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869997, 43.042961, 56.145279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270607, 0.280008, 0.921069,
		-0.812229, 0.447187, -0.374577,
		-0.516774, -0.849482, 0.106418,
		28.714964, 42.788116, 56.177204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296640, 43.565113, 56.221451>,  <29.076706, 43.382755, 56.102711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296640, 43.565113, 56.221451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419090, 43.214081, 56.369038>,  <28.492559, 43.003460, 56.457592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419090, 43.214081, 56.369038>,  <28.296640, 43.565113, 56.221451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419090, 43.214081, 56.369038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191936, 0.322725, 0.926828,
		-0.932443, -0.354541, -0.069646,
		0.306122, -0.877581, 0.368972,
		28.510927, 42.950806, 56.479729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829510, 43.435429, 56.681522>,  <28.296640, 43.565113, 56.221451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829510, 43.435429, 56.681522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121269, 43.183884, 56.789230>,  <28.296326, 43.032955, 56.853855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121269, 43.183884, 56.789230>,  <27.829510, 43.435429, 56.681522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121269, 43.183884, 56.789230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151277, 0.235599, 0.960004,
		-0.667153, -0.740960, 0.076712,
		0.729398, -0.628865, 0.269271,
		28.340088, 42.995224, 56.870010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519810, 43.142056, 57.210613>,  <27.829510, 43.435429, 56.681522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519810, 43.142056, 57.210613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897558, 43.017296, 57.252346>,  <28.124207, 42.942440, 57.277386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897558, 43.017296, 57.252346>,  <27.519810, 43.142056, 57.210613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897558, 43.017296, 57.252346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130323, -0.063620, 0.989428,
		-0.301966, -0.947982, -0.100729,
		0.944369, -0.311901, 0.104333,
		28.180868, 42.923725, 57.283646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476578, 42.494308, 57.584866>,  <27.519810, 43.142056, 57.210613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476578, 42.494308, 57.584866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837927, 42.657352, 57.638187>,  <28.054737, 42.755180, 57.670181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837927, 42.657352, 57.638187>,  <27.476578, 42.494308, 57.584866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837927, 42.657352, 57.638187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080083, -0.145031, 0.986181,
		0.421312, -0.901565, -0.098375,
		0.903373, 0.407611, 0.133304,
		28.108938, 42.779636, 57.678177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734016, 42.102325, 58.157593>,  <27.476578, 42.494308, 57.584866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734016, 42.102325, 58.157593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932541, 42.448658, 58.132256>,  <28.051655, 42.656456, 58.117054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932541, 42.448658, 58.132256>,  <27.734016, 42.102325, 58.157593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932541, 42.448658, 58.132256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103771, 0.131612, 0.985855,
		0.861921, -0.482717, 0.155168,
		0.496311, 0.865831, -0.063347,
		28.081434, 42.708408, 58.113251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287537, 42.117599, 58.654495>,  <27.734016, 42.102325, 58.157593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287537, 42.117599, 58.654495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229977, 42.505070, 58.573540>,  <28.195440, 42.737553, 58.524967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229977, 42.505070, 58.573540>,  <28.287537, 42.117599, 58.654495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229977, 42.505070, 58.573540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026043, 0.208151, 0.977750,
		0.989250, 0.135426, -0.055180,
		-0.143899, 0.968676, -0.202387,
		28.186808, 42.795673, 58.512825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196074, 41.512810, 58.380436>,  <28.287537, 42.117599, 58.654495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196074, 41.512810, 58.380436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193699, 41.293388, 58.714874>,  <28.192274, 41.161736, 58.915539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193699, 41.293388, 58.714874>,  <28.196074, 41.512810, 58.380436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193699, 41.293388, 58.714874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836973, -0.460262, -0.296031,
		0.547212, 0.698033, 0.461855,
		-0.005935, -0.548552, 0.836096,
		28.191917, 41.128822, 58.965702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893103, 41.452724, 58.679970>,  <28.196074, 41.512810, 58.380436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893103, 41.452724, 58.679970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680319, 41.130024, 58.782871>,  <28.552649, 40.936405, 58.844612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680319, 41.130024, 58.782871>,  <28.893103, 41.452724, 58.679970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680319, 41.130024, 58.782871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648602, -0.583512, -0.488701,
		0.544368, -0.093115, 0.833663,
		-0.531958, -0.806749, 0.257251,
		28.520731, 40.888000, 58.860046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397587, 40.873253, 58.602051>,  <28.893103, 41.452724, 58.679970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397587, 40.873253, 58.602051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064116, 40.654121, 58.629959>,  <28.864033, 40.522644, 58.646706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064116, 40.654121, 58.629959>,  <29.397587, 40.873253, 58.602051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064116, 40.654121, 58.629959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494294, -0.796548, -0.348117,
		0.246287, -0.255727, 0.934851,
		-0.833677, -0.547827, 0.069775,
		28.814013, 40.489773, 58.650890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582668, 40.286850, 58.806938>,  <29.397587, 40.873253, 58.602051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582668, 40.286850, 58.806938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234760, 40.187706, 58.636261>,  <29.026016, 40.128220, 58.533855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234760, 40.187706, 58.636261>,  <29.582668, 40.286850, 58.806938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234760, 40.187706, 58.636261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429149, -0.806781, -0.406123,
		-0.243581, -0.536347, 0.808084,
		-0.869770, -0.247865, -0.426689,
		28.973829, 40.113346, 58.508255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523396, 39.582111, 58.876316>,  <29.582668, 40.286850, 58.806938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523396, 39.582111, 58.876316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273291, 39.663631, 58.574982>,  <29.123228, 39.712543, 58.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273291, 39.663631, 58.574982>,  <29.523396, 39.582111, 58.876316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273291, 39.663631, 58.574982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396778, -0.748215, -0.531735,
		-0.672020, -0.631382, 0.386972,
		-0.625265, 0.203795, -0.753333,
		29.085711, 39.724770, 58.348980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139446, 38.936562, 58.726349>,  <29.523396, 39.582111, 58.876316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139446, 38.936562, 58.726349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156538, 39.164410, 58.398029>,  <29.166794, 39.301117, 58.201038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156538, 39.164410, 58.398029>,  <29.139446, 38.936562, 58.726349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156538, 39.164410, 58.398029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404567, -0.761045, -0.507087,
		-0.913510, -0.310400, -0.262967,
		0.042730, 0.569616, -0.820799,
		29.169357, 39.335293, 58.151791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954626, 38.485146, 58.113815>,  <29.139446, 38.936562, 58.726349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954626, 38.485146, 58.113815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110508, 38.793354, 57.912056>,  <29.204037, 38.978279, 57.791000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110508, 38.793354, 57.912056>,  <28.954626, 38.485146, 58.113815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110508, 38.793354, 57.912056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301231, -0.624228, -0.720833,
		-0.870281, 0.128972, -0.475371,
		0.389707, 0.770523, -0.504403,
		29.227421, 39.024509, 57.760735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490265, 37.962021, 57.802883>,  <28.954626, 38.485146, 58.113815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490265, 37.962021, 57.802883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547237, 37.655899, 58.053970>,  <28.581421, 37.472225, 58.204620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547237, 37.655899, 58.053970>,  <28.490265, 37.962021, 57.802883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547237, 37.655899, 58.053970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719797, 0.355226, 0.596412,
		-0.679415, -0.536776, -0.500266,
		0.142433, -0.765301, 0.627716,
		28.589968, 37.426308, 58.242287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837444, 37.789436, 58.071346>,  <28.490265, 37.962021, 57.802883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837444, 37.789436, 58.071346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073906, 37.607716, 58.337925>,  <28.215782, 37.498684, 58.497871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073906, 37.607716, 58.337925>,  <27.837444, 37.789436, 58.071346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073906, 37.607716, 58.337925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640106, 0.238461, 0.730343,
		-0.490716, -0.858340, -0.149833,
		0.591153, -0.454300, 0.666445,
		28.251251, 37.471424, 58.537857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380440, 37.327740, 58.479401>,  <27.837444, 37.789436, 58.071346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380440, 37.327740, 58.479401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688240, 37.397720, 58.725086>,  <27.872919, 37.439709, 58.872498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688240, 37.397720, 58.725086>,  <27.380440, 37.327740, 58.479401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688240, 37.397720, 58.725086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638138, 0.249049, 0.728529,
		-0.025513, -0.952558, 0.303286,
		0.769500, 0.174952, 0.614217,
		27.919090, 37.450207, 58.909351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206297, 37.114357, 59.116737>,  <27.380440, 37.327740, 58.479401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206297, 37.114357, 59.116737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501709, 37.373413, 59.191723>,  <27.678957, 37.528847, 59.236713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501709, 37.373413, 59.191723>,  <27.206297, 37.114357, 59.116737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501709, 37.373413, 59.191723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505278, 0.347564, 0.789869,
		0.446395, -0.678060, 0.583923,
		0.738529, 0.647637, 0.187458,
		27.723269, 37.567703, 59.247959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200165, 37.199581, 59.810036>,  <27.206297, 37.114357, 59.116737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200165, 37.199581, 59.810036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417627, 37.520462, 59.711311>,  <27.548105, 37.712990, 59.652077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417627, 37.520462, 59.711311>,  <27.200165, 37.199581, 59.810036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417627, 37.520462, 59.711311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563185, 0.566702, 0.601391,
		0.622305, -0.187946, 0.759877,
		0.543653, 0.802200, -0.246813,
		27.580723, 37.761124, 59.637268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458336, 37.651897, 60.481674>,  <27.200165, 37.199581, 59.810036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458336, 37.651897, 60.481674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481966, 37.922081, 60.187664>,  <27.496143, 38.084190, 60.011257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481966, 37.922081, 60.187664>,  <27.458336, 37.651897, 60.481674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481966, 37.922081, 60.187664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527541, 0.646219, 0.551454,
		0.847473, 0.355178, 0.394509,
		0.059076, 0.675462, -0.735024,
		27.499689, 38.124722, 59.967155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737150, 38.286770, 60.770191>,  <27.458336, 37.651897, 60.481674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737150, 38.286770, 60.770191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527742, 38.407215, 60.451378>,  <27.402098, 38.479485, 60.260090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527742, 38.407215, 60.451378>,  <27.737150, 38.286770, 60.770191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527742, 38.407215, 60.451378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431723, 0.712729, 0.552840,
		0.734535, 0.633519, -0.243130,
		-0.523520, 0.301116, -0.797029,
		27.370686, 38.497551, 60.212269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688364, 39.037563, 60.810951>,  <27.737150, 38.286770, 60.770191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688364, 39.037563, 60.810951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396816, 38.930328, 60.558960>,  <27.221888, 38.865986, 60.407764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396816, 38.930328, 60.558960>,  <27.688364, 39.037563, 60.810951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396816, 38.930328, 60.558960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506457, 0.830294, 0.232622,
		0.460706, 0.488610, -0.740952,
		-0.728870, -0.268090, -0.629981,
		27.178156, 38.849903, 60.369965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464155, 39.670113, 60.517857>,  <27.688364, 39.037563, 60.810951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464155, 39.670113, 60.517857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148840, 39.426731, 60.481236>,  <26.959650, 39.280701, 60.459263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148840, 39.426731, 60.481236>,  <27.464155, 39.670113, 60.517857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148840, 39.426731, 60.481236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615305, 0.779560, 0.116984,
		0.000189, 0.148548, -0.988905,
		-0.788289, -0.608456, -0.091550,
		26.912354, 39.244194, 60.453770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.517200, 33.757591, 48.049789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394100, 34.063671, 47.823601>,  <37.320240, 34.247318, 47.687885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394100, 34.063671, 47.823601>,  <37.517200, 33.757591, 48.049789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394100, 34.063671, 47.823601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908737, -0.060289, 0.412991,
		0.281928, 0.640967, 0.713918,
		-0.307755, 0.765197, -0.565473,
		37.301773, 34.293232, 47.653957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363586, 34.227100, 48.552853>,  <37.517200, 33.757591, 48.049789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363586, 34.227100, 48.552853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163479, 34.319828, 48.219151>,  <37.043415, 34.375465, 48.018929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163479, 34.319828, 48.219151>,  <37.363586, 34.227100, 48.552853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163479, 34.319828, 48.219151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828078, 0.153444, 0.539204,
		0.253010, 0.960580, 0.115201,
		-0.500272, 0.231820, -0.834258,
		37.013397, 34.389374, 47.968872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072853, 34.878448, 48.718964>,  <37.363586, 34.227100, 48.552853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072853, 34.878448, 48.718964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842644, 34.728168, 48.428413>,  <36.704517, 34.638000, 48.254082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842644, 34.728168, 48.428413>,  <37.072853, 34.878448, 48.718964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842644, 34.728168, 48.428413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817388, 0.236500, 0.525305,
		-0.025570, 0.896056, -0.443205,
		-0.575520, -0.375702, -0.726378,
		36.669987, 34.615459, 48.210499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473610, 35.443928, 48.687843>,  <37.072853, 34.878448, 48.718964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473610, 35.443928, 48.687843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383728, 35.115814, 48.477455>,  <36.329800, 34.918945, 48.351223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383728, 35.115814, 48.477455>,  <36.473610, 35.443928, 48.687843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383728, 35.115814, 48.477455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953883, 0.074917, 0.290678,
		-0.199033, 0.567034, -0.799286,
		-0.224705, -0.820280, -0.525973,
		36.316319, 34.869732, 48.319664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825577, 35.639759, 48.367508>,  <36.473610, 35.443928, 48.687843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825577, 35.639759, 48.367508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854038, 35.241516, 48.343140>,  <35.871117, 35.002571, 48.328518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854038, 35.241516, 48.343140>,  <35.825577, 35.639759, 48.367508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854038, 35.241516, 48.343140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926604, -0.088584, 0.365455,
		-0.369244, 0.030446, -0.928833,
		0.071153, -0.995603, -0.060920,
		35.875385, 34.942837, 48.324863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261200, 35.403282, 48.012112>,  <35.825577, 35.639759, 48.367508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261200, 35.403282, 48.012112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384445, 35.099659, 48.241512>,  <35.458393, 34.917484, 48.379150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384445, 35.099659, 48.241512>,  <35.261200, 35.403282, 48.012112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384445, 35.099659, 48.241512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882123, -0.002193, 0.471015,
		-0.356270, -0.651021, -0.670257,
		0.308110, -0.759057, 0.573499,
		35.476879, 34.871941, 48.413563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713379, 34.881657, 48.089993>,  <35.261200, 35.403282, 48.012112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713379, 34.881657, 48.089993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928783, 34.791481, 48.414753>,  <35.058025, 34.737377, 48.609608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928783, 34.791481, 48.414753>,  <34.713379, 34.881657, 48.089993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928783, 34.791481, 48.414753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841959, -0.105838, 0.529060,
		-0.033338, -0.968493, -0.246801,
		0.538511, -0.225434, 0.811902,
		35.090336, 34.723850, 48.658325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237423, 34.374580, 48.381535>,  <34.713379, 34.881657, 48.089993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237423, 34.374580, 48.381535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490089, 34.456100, 48.680725>,  <34.641689, 34.505013, 48.860237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490089, 34.456100, 48.680725>,  <34.237423, 34.374580, 48.381535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490089, 34.456100, 48.680725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757104, -0.045315, 0.651721,
		0.166714, -0.977964, 0.125673,
		0.631665, 0.203798, 0.747975,
		34.679588, 34.517239, 48.905117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100246, 33.881763, 48.930805>,  <34.237423, 34.374580, 48.381535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100246, 33.881763, 48.930805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280003, 34.177055, 49.132027>,  <34.387856, 34.354233, 49.252758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280003, 34.177055, 49.132027>,  <34.100246, 33.881763, 48.930805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280003, 34.177055, 49.132027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745169, -0.000816, 0.666876,
		0.492721, -0.674544, 0.549742,
		0.449388, 0.738234, 0.503051,
		34.414818, 34.398525, 49.282944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994267, 33.683601, 49.617138>,  <34.100246, 33.881763, 48.930805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994267, 33.683601, 49.617138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.067242, 34.076328, 49.638119>,  <34.111027, 34.311966, 49.650707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.067242, 34.076328, 49.638119>,  <33.994267, 33.683601, 49.617138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067242, 34.076328, 49.638119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827449, 0.124498, 0.547566,
		0.531080, -0.143297, 0.835117,
		0.182435, 0.981818, 0.052452,
		34.121971, 34.370872, 49.653854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837597, 33.787785, 50.274117>,  <33.994267, 33.683601, 49.617138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837597, 33.787785, 50.274117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850986, 34.159676, 50.127422>,  <33.859020, 34.382809, 50.039406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850986, 34.159676, 50.127422>,  <33.837597, 33.787785, 50.274117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850986, 34.159676, 50.127422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746942, 0.267074, 0.608891,
		0.664046, 0.253543, 0.703391,
		0.033477, 0.929724, -0.366731,
		33.861031, 34.438595, 50.017403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652134, 34.202644, 50.785847>,  <33.837597, 33.787785, 50.274117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652134, 34.202644, 50.785847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.549206, 34.408928, 50.458965>,  <33.487450, 34.532700, 50.262836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.549206, 34.408928, 50.458965>,  <33.652134, 34.202644, 50.785847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549206, 34.408928, 50.458965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909638, 0.156120, 0.384949,
		0.326105, 0.842418, 0.428937,
		-0.257323, 0.515711, -0.817207,
		33.472008, 34.563641, 50.213802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424980, 34.966839, 50.988438>,  <33.652134, 34.202644, 50.785847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424980, 34.966839, 50.988438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.238129, 34.854187, 50.653183>,  <33.126019, 34.786594, 50.452030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.238129, 34.854187, 50.653183>,  <33.424980, 34.966839, 50.988438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238129, 34.854187, 50.653183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872372, 0.301276, 0.384968,
		0.144092, 0.910997, -0.386422,
		-0.467124, -0.281633, -0.838140,
		33.097992, 34.769699, 50.401741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877960, 35.327969, 51.042683>,  <33.424980, 34.966839, 50.988438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877960, 35.327969, 51.042683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.773430, 35.094727, 50.734993>,  <32.710712, 34.954781, 50.550381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.773430, 35.094727, 50.734993>,  <32.877960, 35.327969, 51.042683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773430, 35.094727, 50.734993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946390, -0.001988, 0.323021,
		-0.189884, 0.812396, -0.551323,
		-0.261325, -0.583102, -0.769221,
		32.695034, 34.919796, 50.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320644, 35.585026, 50.573940>,  <32.877960, 35.327969, 51.042683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320644, 35.585026, 50.573940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289860, 35.192024, 50.506107>,  <32.271389, 34.956223, 50.465408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289860, 35.192024, 50.506107>,  <32.320644, 35.585026, 50.573940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289860, 35.192024, 50.506107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928835, 0.008829, 0.370388,
		-0.362412, 0.186018, -0.913266,
		-0.076962, -0.982507, -0.169580,
		32.266769, 34.897274, 50.455235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571724, 35.481842, 50.317974>,  <32.320644, 35.585026, 50.573940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571724, 35.481842, 50.317974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688427, 35.127617, 50.462563>,  <31.758448, 34.915081, 50.549316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688427, 35.127617, 50.462563>,  <31.571724, 35.481842, 50.317974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688427, 35.127617, 50.462563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844195, -0.060735, 0.532584,
		-0.449681, -0.460537, -0.765306,
		0.291755, -0.885560, 0.361472,
		31.775953, 34.861950, 50.571003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086826, 34.959675, 49.944992>,  <31.571724, 35.481842, 50.317974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086826, 34.959675, 49.944992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.248383, 34.782887, 50.265377>,  <31.345316, 34.676815, 50.457607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.248383, 34.782887, 50.265377>,  <31.086826, 34.959675, 49.944992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248383, 34.782887, 50.265377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908440, -0.090649, 0.408068,
		-0.107751, -0.892434, -0.438122,
		0.403889, -0.441977, 0.800956,
		31.369551, 34.650295, 50.505665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749350, 34.363995, 50.028267>,  <31.086826, 34.959675, 49.944992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749350, 34.363995, 50.028267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.899799, 34.437508, 50.391533>,  <30.990068, 34.481617, 50.609493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.899799, 34.437508, 50.391533>,  <30.749350, 34.363995, 50.028267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899799, 34.437508, 50.391533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873785, -0.255739, 0.413640,
		0.308273, -0.949115, 0.064400,
		0.376122, 0.183786, 0.908160,
		31.012636, 34.492641, 50.663982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527399, 33.764156, 50.457062>,  <30.749350, 34.363995, 50.028267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527399, 33.764156, 50.457062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.585535, 34.080986, 50.694210>,  <30.620417, 34.271084, 50.836498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.585535, 34.080986, 50.694210>,  <30.527399, 33.764156, 50.457062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585535, 34.080986, 50.694210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863510, -0.190945, 0.466788,
		0.482936, -0.579792, 0.656212,
		0.145339, 0.792074, 0.592870,
		30.629137, 34.318607, 50.872070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332878, 33.475922, 51.100178>,  <30.527399, 33.764156, 50.457062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332878, 33.475922, 51.100178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.318382, 33.873482, 51.141850>,  <30.309685, 34.112019, 51.166851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.318382, 33.873482, 51.141850>,  <30.332878, 33.475922, 51.100178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318382, 33.873482, 51.141850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858360, -0.084342, 0.506068,
		0.511767, -0.071083, 0.856178,
		-0.036239, 0.993898, 0.104178,
		30.307510, 34.171650, 51.173103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869337, 33.565720, 51.693047>,  <30.332878, 33.475922, 51.100178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869337, 33.565720, 51.693047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.889135, 33.944958, 51.567402>,  <29.901014, 34.172501, 51.492016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.889135, 33.944958, 51.567402>,  <29.869337, 33.565720, 51.693047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889135, 33.944958, 51.567402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877563, 0.191446, 0.439581,
		0.476900, 0.253893, 0.841490,
		0.049493, 0.948097, -0.314107,
		29.903984, 34.229385, 51.473171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557117, 33.906525, 52.195496>,  <29.869337, 33.565720, 51.693047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557117, 33.906525, 52.195496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.553482, 34.159039, 51.885300>,  <29.551300, 34.310547, 51.699181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.553482, 34.159039, 51.885300>,  <29.557117, 33.906525, 52.195496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553482, 34.159039, 51.885300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967463, 0.190547, 0.166453,
		0.252848, 0.751776, 0.609017,
		-0.009089, 0.631289, -0.775495,
		29.550755, 34.348427, 51.652653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222729, 34.503105, 52.494110>,  <29.557117, 33.906525, 52.195496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222729, 34.503105, 52.494110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.193100, 34.531864, 52.096249>,  <29.175323, 34.549118, 51.857533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.193100, 34.531864, 52.096249>,  <29.222729, 34.503105, 52.494110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193100, 34.531864, 52.096249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932185, 0.349382, 0.094674,
		0.354323, 0.934218, 0.041143,
		-0.074071, 0.071898, -0.994658,
		29.170879, 34.553432, 51.797852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083029, 35.197197, 52.312679>,  <29.222729, 34.503105, 52.494110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083029, 35.197197, 52.312679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.946707, 34.975945, 52.008598>,  <28.864914, 34.843193, 51.826149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.946707, 34.975945, 52.008598>,  <29.083029, 35.197197, 52.312679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946707, 34.975945, 52.008598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888027, 0.454861, 0.067153,
		0.308640, 0.697963, -0.646211,
		-0.340806, -0.553127, -0.760198,
		28.844465, 34.810005, 51.780540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593035, 35.649002, 51.917736>,  <29.083029, 35.197197, 52.312679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593035, 35.649002, 51.917736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.506538, 35.281425, 51.785805>,  <28.454639, 35.060879, 51.706646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.506538, 35.281425, 51.785805>,  <28.593035, 35.649002, 51.917736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506538, 35.281425, 51.785805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975961, 0.194040, 0.099243,
		-0.027199, 0.343358, -0.938811,
		-0.216243, -0.918942, -0.329826,
		28.441666, 35.005741, 51.686855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147758, 35.671364, 51.239090>,  <28.593035, 35.649002, 51.917736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147758, 35.671364, 51.239090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.103937, 35.316212, 51.417828>,  <28.077644, 35.103119, 51.525070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.103937, 35.316212, 51.417828>,  <28.147758, 35.671364, 51.239090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103937, 35.316212, 51.417828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993132, 0.116352, -0.012297,
		-0.041073, -0.445120, -0.894529,
		-0.109554, -0.887880, 0.446841,
		28.071072, 35.049847, 51.551880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605194, 35.386734, 50.896702>,  <28.147758, 35.671364, 51.239090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605194, 35.386734, 50.896702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.623169, 35.188190, 51.243484>,  <27.633955, 35.069065, 51.451553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.623169, 35.188190, 51.243484>,  <27.605194, 35.386734, 50.896702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623169, 35.188190, 51.243484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998674, -0.000502, 0.051478,
		-0.025116, -0.868119, -0.495720,
		0.044938, -0.496356, 0.866955,
		27.636650, 35.039284, 51.503571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097061, 34.844490, 50.885895>,  <27.605194, 35.386734, 50.896702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097061, 34.844490, 50.885895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.140648, 34.880936, 51.281837>,  <27.166800, 34.902802, 51.519405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.140648, 34.880936, 51.281837>,  <27.097061, 34.844490, 50.885895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140648, 34.880936, 51.281837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994032, 0.015101, 0.108035,
		-0.005103, -0.995724, 0.092235,
		0.108966, 0.091133, 0.989859,
		27.173338, 34.908268, 51.578796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492771, 34.568577, 51.139118>,  <27.097061, 34.844490, 50.885895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492771, 34.568577, 51.139118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.636213, 34.764736, 51.456841>,  <26.722279, 34.882431, 51.647472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.636213, 34.764736, 51.456841>,  <26.492771, 34.568577, 51.139118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636213, 34.764736, 51.456841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933313, 0.171831, 0.315279,
		0.018125, -0.854394, 0.519310,
		0.358606, 0.490393, 0.794302,
		26.743795, 34.911854, 51.695129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150513, 34.245403, 51.715607>,  <26.492771, 34.568577, 51.139118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150513, 34.245403, 51.715607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.266462, 34.601318, 51.856602>,  <26.336031, 34.814869, 51.941200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.266462, 34.601318, 51.856602>,  <26.150513, 34.245403, 51.715607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266462, 34.601318, 51.856602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942345, 0.201003, 0.267550,
		0.167212, -0.409724, 0.896753,
		0.289872, 0.889789, 0.352491,
		26.353424, 34.868256, 51.962349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855921, 34.361401, 52.389015>,  <26.150513, 34.245403, 51.715607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855921, 34.361401, 52.389015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.921888, 34.729069, 52.245941>,  <25.961470, 34.949669, 52.160099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.921888, 34.729069, 52.245941>,  <25.855921, 34.361401, 52.389015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921888, 34.729069, 52.245941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868806, 0.307047, 0.388457,
		0.466882, 0.246692, 0.849214,
		0.164920, 0.919166, -0.357682,
		25.971365, 35.004818, 52.138638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706573, 34.759632, 53.043167>,  <25.855921, 34.361401, 52.389015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706573, 34.759632, 53.043167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.679365, 34.967087, 52.702251>,  <25.663040, 35.091560, 52.497704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.679365, 34.967087, 52.702251>,  <25.706573, 34.759632, 53.043167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679365, 34.967087, 52.702251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919215, 0.299504, 0.255617,
		0.387835, 0.800822, 0.456364,
		-0.068021, 0.518634, -0.852286,
		25.658958, 35.122677, 52.446564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402674, 35.373074, 53.266811>,  <25.706573, 34.759632, 53.043167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402674, 35.373074, 53.266811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.359007, 35.419872, 52.871967>,  <25.332808, 35.447952, 52.635059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.359007, 35.419872, 52.871967>,  <25.402674, 35.373074, 53.266811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359007, 35.419872, 52.871967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888968, 0.432840, 0.149614,
		0.444767, 0.893847, 0.056751,
		-0.109168, 0.116993, -0.987114,
		25.326256, 35.454971, 52.575832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035954, 35.978779, 53.052071>,  <25.402674, 35.373074, 53.266811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035954, 35.978779, 53.052071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.984726, 35.788013, 52.704243>,  <24.953989, 35.673553, 52.495548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.984726, 35.788013, 52.704243>,  <25.035954, 35.978779, 53.052071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984726, 35.788013, 52.704243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914052, 0.396990, -0.083111,
		0.384846, 0.784186, -0.486770,
		-0.128068, -0.476918, -0.869567,
		24.946306, 35.644939, 52.443371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740416, 36.491531, 52.573341>,  <25.035954, 35.978779, 53.052071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740416, 36.491531, 52.573341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.661697, 36.120922, 52.445080>,  <24.614468, 35.898556, 52.368122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.661697, 36.120922, 52.445080>,  <24.740416, 36.491531, 52.573341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.661697, 36.120922, 52.445080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924463, 0.284286, -0.254067,
		0.326559, 0.246438, -0.912484,
		-0.196794, -0.926526, -0.320659,
		24.602659, 35.842964, 52.348881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.029053, 30.140739, 49.332302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666798, 30.149242, 49.162891>,  <34.449444, 30.154345, 49.061245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666798, 30.149242, 49.162891>,  <35.029053, 30.140739, 49.332302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666798, 30.149242, 49.162891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315621, 0.633235, 0.706680,
		0.283213, 0.773667, -0.566770,
		-0.905634, 0.021257, -0.423526,
		34.395107, 30.155619, 49.035835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831310, 30.837507, 49.116489>,  <35.029053, 30.140739, 49.332302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831310, 30.837507, 49.116489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501709, 30.619591, 49.178738>,  <34.303947, 30.488840, 49.216087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501709, 30.619591, 49.178738>,  <34.831310, 30.837507, 49.116489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501709, 30.619591, 49.178738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299779, 0.652283, 0.696175,
		-0.480782, 0.526998, -0.700801,
		-0.824004, -0.544793, 0.155623,
		34.254509, 30.456152, 49.225426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240360, 31.253881, 49.085102>,  <34.831310, 30.837507, 49.116489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240360, 31.253881, 49.085102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087666, 30.958317, 49.307198>,  <33.996048, 30.780977, 49.440453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087666, 30.958317, 49.307198>,  <34.240360, 31.253881, 49.085102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087666, 30.958317, 49.307198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168218, 0.646237, 0.744366,
		-0.908835, 0.190749, -0.370989,
		-0.381734, -0.738913, 0.555236,
		33.973145, 30.736643, 49.473766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580601, 31.505619, 49.448898>,  <34.240360, 31.253881, 49.085102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580601, 31.505619, 49.448898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.665901, 31.184601, 49.671768>,  <33.717083, 30.991991, 49.805492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.665901, 31.184601, 49.671768>,  <33.580601, 31.505619, 49.448898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665901, 31.184601, 49.671768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228375, 0.513551, 0.827110,
		-0.949931, -0.303628, -0.073765,
		0.213251, -0.802543, 0.557179,
		33.729877, 30.943838, 49.838921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955631, 31.438076, 49.942112>,  <33.580601, 31.505619, 49.448898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955631, 31.438076, 49.942112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.275150, 31.258068, 50.101814>,  <33.466862, 31.150063, 50.197636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.275150, 31.258068, 50.101814>,  <32.955631, 31.438076, 49.942112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275150, 31.258068, 50.101814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203884, 0.421881, 0.883430,
		-0.566001, -0.787082, 0.245245,
		0.798796, -0.450020, 0.399258,
		33.514790, 31.123062, 50.221592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755161, 31.054520, 50.549995>,  <32.955631, 31.438076, 49.942112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755161, 31.054520, 50.549995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.146599, 31.123791, 50.594482>,  <33.381462, 31.165354, 50.621174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.146599, 31.123791, 50.594482>,  <32.755161, 31.054520, 50.549995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146599, 31.123791, 50.594482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165880, 0.343762, 0.924290,
		0.121837, -0.922950, 0.365129,
		0.978591, 0.173180, 0.111216,
		33.440178, 31.175745, 50.627846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798386, 30.962324, 51.270599>,  <32.755161, 31.054520, 50.549995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798386, 30.962324, 51.270599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.132809, 31.144913, 51.148853>,  <33.333462, 31.254465, 51.075806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.132809, 31.144913, 51.148853>,  <32.798386, 30.962324, 51.270599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132809, 31.144913, 51.148853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089773, 0.661113, 0.744896,
		0.541243, -0.595454, 0.593708,
		0.836060, 0.456469, -0.304367,
		33.383625, 31.281853, 51.057545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230125, 30.912897, 51.801796>,  <32.798386, 30.962324, 51.270599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230125, 30.912897, 51.801796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333107, 31.220736, 51.568062>,  <33.394897, 31.405437, 51.427822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333107, 31.220736, 51.568062>,  <33.230125, 30.912897, 51.801796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333107, 31.220736, 51.568062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102124, 0.622999, 0.775527,
		0.960879, -0.139989, 0.238988,
		0.257454, 0.769594, -0.584331,
		33.410343, 31.451614, 51.392761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655354, 31.417542, 52.269356>,  <33.230125, 30.912897, 51.801796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655354, 31.417542, 52.269356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551121, 31.645758, 51.957825>,  <33.488579, 31.782688, 51.770905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551121, 31.645758, 51.957825>,  <33.655354, 31.417542, 52.269356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551121, 31.645758, 51.957825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114413, 0.782769, 0.611704,
		0.958647, 0.248510, -0.138701,
		-0.260586, 0.570540, -0.778832,
		33.472946, 31.816919, 51.724174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201412, 32.046001, 52.233997>,  <33.655354, 31.417542, 52.269356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201412, 32.046001, 52.233997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855423, 32.111954, 52.044415>,  <33.647827, 32.151524, 51.930664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855423, 32.111954, 52.044415>,  <34.201412, 32.046001, 52.233997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855423, 32.111954, 52.044415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162071, 0.802079, 0.574806,
		0.474921, 0.574008, -0.667058,
		-0.864976, 0.164877, -0.473954,
		33.595932, 32.161415, 51.902229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157471, 32.743866, 52.128780>,  <34.201412, 32.046001, 52.233997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157471, 32.743866, 52.128780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773182, 32.641243, 52.086468>,  <33.542610, 32.579670, 52.061081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773182, 32.641243, 52.086468>,  <34.157471, 32.743866, 52.128780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773182, 32.641243, 52.086468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248004, 0.622715, 0.742105,
		-0.124523, 0.739191, -0.661884,
		-0.960723, -0.256559, -0.105780,
		33.484966, 32.564274, 52.054733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776192, 33.248863, 52.236118>,  <34.157471, 32.743866, 52.128780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776192, 33.248863, 52.236118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495667, 32.967987, 52.285248>,  <33.327351, 32.799461, 52.314728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495667, 32.967987, 52.285248>,  <33.776192, 33.248863, 52.236118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495667, 32.967987, 52.285248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376679, 0.511325, 0.772438,
		-0.605201, 0.495458, -0.623100,
		-0.701317, -0.702189, 0.122825,
		33.285271, 32.757332, 52.322094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059978, 33.969402, 52.096191>,  <33.776192, 33.248863, 52.236118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059978, 33.969402, 52.096191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327499, 34.200710, 52.283081>,  <34.488014, 34.339497, 52.395214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327499, 34.200710, 52.283081>,  <34.059978, 33.969402, 52.096191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327499, 34.200710, 52.283081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700160, -0.278640, -0.657371,
		-0.249949, 0.766788, -0.591237,
		0.668807, 0.578269, 0.467229,
		34.528141, 34.374191, 52.423248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438259, 34.378826, 51.594963>,  <34.059978, 33.969402, 52.096191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438259, 34.378826, 51.594963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690018, 34.371113, 51.905701>,  <34.841072, 34.366486, 52.092144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690018, 34.371113, 51.905701>,  <34.438259, 34.378826, 51.594963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690018, 34.371113, 51.905701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736635, -0.303526, -0.604352,
		0.247445, 0.952628, -0.176834,
		0.629396, -0.019282, 0.776845,
		34.878838, 34.365330, 52.138756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028019, 34.725010, 51.367569>,  <34.438259, 34.378826, 51.594963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028019, 34.725010, 51.367569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191376, 34.573013, 51.699551>,  <35.289391, 34.481815, 51.898739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191376, 34.573013, 51.699551>,  <35.028019, 34.725010, 51.367569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191376, 34.573013, 51.699551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900000, 0.015860, -0.435601,
		0.152363, 0.924853, 0.348472,
		0.408394, -0.379994, 0.829951,
		35.313892, 34.459015, 51.948536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622162, 35.116531, 51.534515>,  <35.028019, 34.725010, 51.367569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622162, 35.116531, 51.534515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719856, 34.787697, 51.740246>,  <35.778473, 34.590397, 51.863682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719856, 34.787697, 51.740246>,  <35.622162, 35.116531, 51.534515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719856, 34.787697, 51.740246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876914, -0.039176, -0.479047,
		0.413966, 0.568019, 0.711327,
		0.244241, -0.822082, 0.514322,
		35.793129, 34.541073, 51.894543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263737, 35.114113, 51.569431>,  <35.622162, 35.116531, 51.534515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263737, 35.114113, 51.569431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244408, 34.732143, 51.686592>,  <36.232811, 34.502964, 51.756889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244408, 34.732143, 51.686592>,  <36.263737, 35.114113, 51.569431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244408, 34.732143, 51.686592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889915, -0.174325, -0.421500,
		0.453559, 0.240292, 0.858221,
		-0.048326, -0.954919, 0.292906,
		36.229908, 34.445667, 51.774464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877228, 34.935158, 51.861649>,  <36.263737, 35.114113, 51.569431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877228, 34.935158, 51.861649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721409, 34.585217, 51.746490>,  <36.627918, 34.375252, 51.677395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721409, 34.585217, 51.746490>,  <36.877228, 34.935158, 51.861649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721409, 34.585217, 51.746490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904646, -0.304803, -0.297844,
		0.172820, -0.376465, 0.910169,
		-0.389550, -0.874854, -0.287891,
		36.604546, 34.322762, 51.660122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399731, 34.383305, 52.061584>,  <36.877228, 34.935158, 51.861649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399731, 34.383305, 52.061584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154194, 34.227547, 51.786900>,  <37.006874, 34.134094, 51.622089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154194, 34.227547, 51.786900>,  <37.399731, 34.383305, 52.061584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154194, 34.227547, 51.786900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784683, -0.396223, -0.476739,
		-0.086452, -0.831493, 0.548767,
		-0.613839, -0.389394, -0.686713,
		36.970043, 34.110729, 51.580887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739105, 33.837151, 51.978912>,  <37.399731, 34.383305, 52.061584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739105, 33.837151, 51.978912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.508942, 33.929230, 51.664993>,  <37.370842, 33.984478, 51.476643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.508942, 33.929230, 51.664993>,  <37.739105, 33.837151, 51.978912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508942, 33.929230, 51.664993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759548, -0.205436, -0.617157,
		-0.303294, -0.951213, -0.056636,
		-0.575413, 0.230198, -0.784799,
		37.336319, 33.998287, 51.429554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059582, 33.354176, 51.512508>,  <37.739105, 33.837151, 51.978912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059582, 33.354176, 51.512508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.842640, 33.596184, 51.279339>,  <37.712475, 33.741390, 51.139439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.842640, 33.596184, 51.279339>,  <38.059582, 33.354176, 51.512508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842640, 33.596184, 51.279339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565071, -0.250761, -0.786011,
		-0.621727, -0.755691, -0.205878,
		-0.542356, 0.605020, -0.582924,
		37.679932, 33.777691, 51.104462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987011, 33.032581, 50.930637>,  <38.059582, 33.354176, 51.512508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987011, 33.032581, 50.930637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907604, 33.405487, 50.809662>,  <37.859959, 33.629230, 50.737076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907604, 33.405487, 50.809662>,  <37.987011, 33.032581, 50.930637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907604, 33.405487, 50.809662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489378, -0.173071, -0.854725,
		-0.849176, -0.317685, -0.421873,
		-0.198520, 0.932267, -0.302436,
		37.848049, 33.685165, 50.718929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875767, 33.119549, 50.120770>,  <37.987011, 33.032581, 50.930637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875767, 33.119549, 50.120770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986633, 33.489182, 50.226036>,  <38.053154, 33.710960, 50.289196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986633, 33.489182, 50.226036>,  <37.875767, 33.119549, 50.120770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986633, 33.489182, 50.226036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578845, 0.058021, -0.813371,
		-0.766889, 0.377768, -0.518818,
		0.277163, 0.924080, 0.263165,
		38.069782, 33.766407, 50.304985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682320, 33.673531, 49.607800>,  <37.875767, 33.119549, 50.120770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682320, 33.673531, 49.607800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.005569, 33.816433, 49.795116>,  <38.199520, 33.902176, 49.907509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.005569, 33.816433, 49.795116>,  <37.682320, 33.673531, 49.607800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005569, 33.816433, 49.795116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465569, 0.099579, -0.879391,
		-0.360801, 0.928683, -0.085855,
		0.808126, 0.357257, 0.468294,
		38.248009, 33.923611, 49.935604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937286, 34.238453, 49.122562>,  <37.682320, 33.673531, 49.607800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937286, 34.238453, 49.122562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247635, 34.179764, 49.367996>,  <38.433846, 34.144550, 49.515259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247635, 34.179764, 49.367996>,  <37.937286, 34.238453, 49.122562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247635, 34.179764, 49.367996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630572, 0.211130, -0.746862,
		-0.019964, 0.966383, 0.256330,
		0.775874, -0.146724, 0.613589,
		38.480396, 34.135746, 49.552074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345428, 34.877716, 49.148777>,  <37.937286, 34.238453, 49.122562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345428, 34.877716, 49.148777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566628, 34.556526, 49.237705>,  <38.699348, 34.363811, 49.291061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566628, 34.556526, 49.237705>,  <38.345428, 34.877716, 49.148777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566628, 34.556526, 49.237705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611224, 0.209640, -0.763188,
		0.566210, 0.557934, 0.606726,
		0.553002, -0.802970, 0.222323,
		38.732529, 34.315636, 49.304401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959743, 35.181568, 49.665192>,  <38.345428, 34.877716, 49.148777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959743, 35.181568, 49.665192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.049522, 35.350712, 49.314007>,  <38.103390, 35.452198, 49.103298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.049522, 35.350712, 49.314007>,  <37.959743, 35.181568, 49.665192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049522, 35.350712, 49.314007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084400, -0.889123, -0.449818,
		-0.970824, 0.175061, -0.163872,
		0.224448, 0.422864, -0.877958,
		38.116856, 35.477570, 49.050621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323830, 35.578396, 49.507259>,  <37.959743, 35.181568, 49.665192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323830, 35.578396, 49.507259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049953, 35.773830, 49.290932>,  <36.885628, 35.891090, 49.161137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049953, 35.773830, 49.290932>,  <37.323830, 35.578396, 49.507259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049953, 35.773830, 49.290932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209419, 0.578856, 0.788080,
		0.698103, 0.652846, -0.294015,
		-0.684687, 0.488588, -0.540819,
		36.844547, 35.920406, 49.128685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556225, 36.277596, 49.408993>,  <37.323830, 35.578396, 49.507259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556225, 36.277596, 49.408993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157082, 36.260033, 49.428406>,  <36.917595, 36.249496, 49.440056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157082, 36.260033, 49.428406>,  <37.556225, 36.277596, 49.408993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157082, 36.260033, 49.428406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019656, 0.506284, 0.862143,
		-0.062427, 0.861248, -0.504335,
		-0.997856, -0.043908, 0.048534,
		36.857723, 36.246861, 49.442966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309875, 36.635647, 50.021996>,  <37.556225, 36.277596, 49.408993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309875, 36.635647, 50.021996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961807, 36.662804, 49.826775>,  <36.752968, 36.679100, 49.709644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961807, 36.662804, 49.826775>,  <37.309875, 36.635647, 50.021996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961807, 36.662804, 49.826775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381263, 0.534677, 0.754161,
		0.312154, 0.842324, -0.439374,
		-0.870171, 0.067897, -0.488049,
		36.700756, 36.683174, 49.680359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108181, 37.206284, 50.149609>,  <37.309875, 36.635647, 50.021996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108181, 37.206284, 50.149609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767780, 37.071079, 49.988834>,  <36.563541, 36.989956, 49.892372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767780, 37.071079, 49.988834>,  <37.108181, 37.206284, 50.149609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767780, 37.071079, 49.988834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508304, 0.722526, 0.468597,
		0.132017, 0.603080, -0.786680,
		-0.850998, -0.338011, -0.401934,
		36.512482, 36.969677, 49.868256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716499, 37.794567, 49.913860>,  <37.108181, 37.206284, 50.149609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716499, 37.794567, 49.913860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444107, 37.506466, 49.966759>,  <36.280670, 37.333603, 49.998497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444107, 37.506466, 49.966759>,  <36.716499, 37.794567, 49.913860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444107, 37.506466, 49.966759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601106, 0.652939, 0.460806,
		-0.418248, 0.234308, -0.877593,
		-0.680985, -0.720257, 0.132246,
		36.239811, 37.290390, 50.006432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038689, 37.865948, 49.532875>,  <36.716499, 37.794567, 49.913860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038689, 37.865948, 49.532875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977623, 37.635731, 49.854233>,  <35.940983, 37.497601, 50.047047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977623, 37.635731, 49.854233>,  <36.038689, 37.865948, 49.532875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977623, 37.635731, 49.854233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696690, 0.639248, 0.325555,
		-0.700940, -0.510017, -0.498564,
		-0.152667, -0.575539, 0.803397,
		35.931824, 37.463070, 50.095253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351582, 37.545948, 49.546509>,  <36.038689, 37.865948, 49.532875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351582, 37.545948, 49.546509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.454262, 37.554722, 49.933006>,  <35.515869, 37.559986, 50.164906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.454262, 37.554722, 49.933006>,  <35.351582, 37.545948, 49.546509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454262, 37.554722, 49.933006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709257, 0.683415, 0.172910,
		-0.656553, -0.729701, 0.190987,
		0.256696, 0.021935, 0.966244,
		35.531269, 37.561302, 50.222878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806122, 37.713131, 49.828617>,  <35.351582, 37.545948, 49.546509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806122, 37.713131, 49.828617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055885, 37.778801, 50.134079>,  <35.205742, 37.818203, 50.317356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055885, 37.778801, 50.134079>,  <34.806122, 37.713131, 49.828617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055885, 37.778801, 50.134079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678763, 0.597835, 0.426467,
		-0.386522, -0.784627, 0.484728,
		0.624405, 0.164176, 0.763652,
		35.243206, 37.828053, 50.363174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382828, 37.659084, 50.353905>,  <34.806122, 37.713131, 49.828617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382828, 37.659084, 50.353905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702633, 37.852261, 50.496765>,  <34.894516, 37.968166, 50.582481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702633, 37.852261, 50.496765>,  <34.382828, 37.659084, 50.353905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702633, 37.852261, 50.496765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591826, 0.531817, 0.605733,
		0.102593, -0.695659, 0.711009,
		0.799510, 0.482938, 0.357148,
		34.942486, 37.997143, 50.603909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236233, 37.800377, 50.993725>,  <34.382828, 37.659084, 50.353905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236233, 37.800377, 50.993725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556911, 38.035534, 50.950535>,  <34.749321, 38.176628, 50.924622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556911, 38.035534, 50.950535>,  <34.236233, 37.800377, 50.993725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556911, 38.035534, 50.950535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338000, 0.594873, 0.729302,
		0.492980, -0.548188, 0.675618,
		0.801702, 0.587890, -0.107973,
		34.797421, 38.211903, 50.918144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545227, 37.822777, 51.631001>,  <34.236233, 37.800377, 50.993725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545227, 37.822777, 51.631001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.643265, 38.148087, 51.419903>,  <34.702087, 38.343273, 51.293243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.643265, 38.148087, 51.419903>,  <34.545227, 37.822777, 51.631001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643265, 38.148087, 51.419903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455970, 0.577081, 0.677546,
		0.855581, 0.074570, 0.512270,
		0.245097, 0.813275, -0.527741,
		34.716793, 38.392071, 51.261581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731224, 38.336140, 52.079437>,  <34.545227, 37.822777, 51.631001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731224, 38.336140, 52.079437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.637501, 38.543869, 51.750706>,  <34.581268, 38.668507, 51.553467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.637501, 38.543869, 51.750706>,  <34.731224, 38.336140, 52.079437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637501, 38.543869, 51.750706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457732, 0.686860, 0.564539,
		0.857660, 0.508454, 0.076774,
		-0.234309, 0.519324, -0.821828,
		34.567207, 38.699665, 51.504158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583565, 38.947205, 52.369617>,  <34.731224, 38.336140, 52.079437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583565, 38.947205, 52.369617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453880, 39.015297, 51.997402>,  <34.376068, 39.056152, 51.774071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453880, 39.015297, 51.997402>,  <34.583565, 38.947205, 52.369617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453880, 39.015297, 51.997402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616655, 0.707924, 0.344355,
		0.717373, 0.685467, -0.124544,
		-0.324211, 0.170231, -0.930542,
		34.356617, 39.066364, 51.718239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557255, 39.665340, 52.222942>,  <34.583565, 38.947205, 52.369617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557255, 39.665340, 52.222942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297119, 39.497360, 51.969738>,  <34.141037, 39.396572, 51.817818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297119, 39.497360, 51.969738>,  <34.557255, 39.665340, 52.222942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297119, 39.497360, 51.969738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702493, 0.649571, 0.290792,
		0.289064, 0.633797, -0.717456,
		-0.650342, -0.419950, -0.633006,
		34.102016, 39.371376, 51.779835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240723, 40.252037, 51.856831>,  <34.557255, 39.665340, 52.222942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240723, 40.252037, 51.856831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970184, 39.962963, 51.799877>,  <33.807861, 39.789516, 51.765705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970184, 39.962963, 51.799877>,  <34.240723, 40.252037, 51.856831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970184, 39.962963, 51.799877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732741, 0.679846, 0.029999,
		0.075120, 0.124622, -0.989356,
		-0.676349, -0.722689, -0.142386,
		33.767281, 39.746155, 51.757160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754879, 40.574852, 51.504738>,  <34.240723, 40.252037, 51.856831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754879, 40.574852, 51.504738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563675, 40.244377, 51.624016>,  <33.448952, 40.046093, 51.695583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563675, 40.244377, 51.624016>,  <33.754879, 40.574852, 51.504738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563675, 40.244377, 51.624016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769533, 0.557589, 0.311310,
		-0.423469, -0.080659, -0.902312,
		-0.478009, -0.826189, 0.298192,
		33.420273, 39.996521, 51.713474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120922, 40.721275, 51.250225>,  <33.754879, 40.574852, 51.504738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120922, 40.721275, 51.250225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086170, 40.450165, 51.542271>,  <33.065319, 40.287498, 51.717499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086170, 40.450165, 51.542271>,  <33.120922, 40.721275, 51.250225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086170, 40.450165, 51.542271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829072, 0.455536, 0.324231,
		-0.552351, -0.577152, -0.601502,
		-0.086875, -0.677778, 0.730116,
		33.060108, 40.246830, 51.761307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550068, 40.527813, 51.125042>,  <33.120922, 40.721275, 51.250225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550068, 40.527813, 51.125042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.627960, 40.444454, 51.508427>,  <32.674694, 40.394440, 51.738457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.627960, 40.444454, 51.508427>,  <32.550068, 40.527813, 51.125042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627960, 40.444454, 51.508427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810368, 0.516356, 0.276912,
		-0.552615, -0.830631, -0.068326,
		0.194731, -0.208395, 0.958463,
		32.686378, 40.381935, 51.795967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920916, 40.164398, 51.287842>,  <32.550068, 40.527813, 51.125042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920916, 40.164398, 51.287842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084633, 40.302826, 51.625534>,  <32.182861, 40.385883, 51.828148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084633, 40.302826, 51.625534>,  <31.920916, 40.164398, 51.287842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084633, 40.302826, 51.625534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911545, 0.195228, 0.361900,
		-0.039575, -0.917673, 0.395360,
		0.409291, 0.346067, 0.844227,
		32.207420, 40.406647, 51.878803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521599, 40.105038, 51.871265>,  <31.920916, 40.164398, 51.287842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521599, 40.105038, 51.871265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.746014, 40.339214, 52.105362>,  <31.880663, 40.479721, 52.245819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.746014, 40.339214, 52.105362>,  <31.521599, 40.105038, 51.871265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746014, 40.339214, 52.105362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800448, 0.203460, 0.563814,
		0.211028, -0.784748, 0.582784,
		0.561025, 0.585470, 0.585214,
		31.914324, 40.514847, 52.280933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262211, 40.016285, 52.560658>,  <31.521599, 40.105038, 51.871265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262211, 40.016285, 52.560658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449326, 40.369808, 52.563622>,  <31.561594, 40.581924, 52.565399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449326, 40.369808, 52.563622>,  <31.262211, 40.016285, 52.560658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449326, 40.369808, 52.563622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774160, 0.405676, 0.485904,
		0.426443, -0.233032, 0.873981,
		0.467784, 0.883812, 0.007406,
		31.589661, 40.634953, 52.565845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204056, 40.416210, 53.259312>,  <31.262211, 40.016285, 52.560658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204056, 40.416210, 53.259312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288008, 40.723930, 53.017941>,  <31.338379, 40.908562, 52.873119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288008, 40.723930, 53.017941>,  <31.204056, 40.416210, 53.259312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288008, 40.723930, 53.017941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554096, 0.602082, 0.574871,
		0.805562, 0.213702, 0.552632,
		0.209878, 0.769304, -0.603425,
		31.350971, 40.954723, 52.836914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372988, 40.916111, 53.694431>,  <31.204056, 40.416210, 53.259312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372988, 40.916111, 53.694431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294029, 41.104889, 53.350735>,  <31.246655, 41.218155, 53.144516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294029, 41.104889, 53.350735>,  <31.372988, 40.916111, 53.694431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294029, 41.104889, 53.350735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617770, 0.620672, 0.482832,
		0.761180, 0.626124, 0.169038,
		-0.197395, 0.471948, -0.859244,
		31.234810, 41.246475, 53.092960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418554, 41.666740, 53.807148>,  <31.372988, 40.916111, 53.694431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418554, 41.666740, 53.807148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194641, 41.622723, 53.478626>,  <31.060293, 41.596313, 53.281513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194641, 41.622723, 53.478626>,  <31.418554, 41.666740, 53.807148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194641, 41.622723, 53.478626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679801, 0.627738, 0.379231,
		0.473829, 0.770607, -0.426205,
		-0.559783, -0.110044, -0.821300,
		31.026707, 41.589710, 53.232235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158962, 42.252129, 53.740520>,  <31.418554, 41.666740, 53.807148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158962, 42.252129, 53.740520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.922241, 42.036274, 53.500999>,  <30.780209, 41.906761, 53.357288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.922241, 42.036274, 53.500999>,  <31.158962, 42.252129, 53.740520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922241, 42.036274, 53.500999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787724, 0.544804, 0.287542,
		0.171061, 0.641858, -0.747500,
		-0.591802, -0.539637, -0.598801,
		30.744701, 41.874382, 53.321358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647650, 42.724426, 53.374928>,  <31.158962, 42.252129, 53.740520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647650, 42.724426, 53.374928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.473928, 42.364235, 53.384068>,  <30.369696, 42.148121, 53.389553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.473928, 42.364235, 53.384068>,  <30.647650, 42.724426, 53.374928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473928, 42.364235, 53.384068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860345, 0.422193, 0.285588,
		-0.266814, 0.104369, -0.958080,
		-0.434301, -0.900478, 0.022854,
		30.343637, 42.094093, 53.390923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905779, 42.831997, 53.176430>,  <30.647650, 42.724426, 53.374928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905779, 42.831997, 53.176430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987513, 42.517025, 53.409050>,  <30.036552, 42.328041, 53.548622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987513, 42.517025, 53.409050>,  <29.905779, 42.831997, 53.176430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987513, 42.517025, 53.409050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696135, 0.300785, 0.651862,
		-0.688218, -0.538036, -0.486697,
		0.204334, -0.787430, 0.581552,
		30.048813, 42.280796, 53.583515>
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
