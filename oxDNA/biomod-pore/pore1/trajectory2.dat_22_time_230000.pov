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
	<47.730846, 40.656803, 43.404655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.892479, 40.642242, 43.770256>,  <47.989460, 40.633507, 43.989616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.892479, 40.642242, 43.770256>,  <47.730846, 40.656803, 43.404655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.892479, 40.642242, 43.770256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830975, -0.432283, 0.350160,
		0.382360, -0.901003, -0.204927,
		0.404081, -0.036402, 0.913998,
		48.013702, 40.631321, 44.044456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360485, 40.218746, 43.632374>,  <47.730846, 40.656803, 43.404655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360485, 40.218746, 43.632374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513382, 40.396332, 43.956543>,  <47.605122, 40.502884, 44.151047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513382, 40.396332, 43.956543>,  <47.360485, 40.218746, 43.632374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513382, 40.396332, 43.956543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755060, -0.355531, 0.550892,
		0.532706, -0.822494, 0.199318,
		0.382241, 0.443961, 0.810426,
		47.628056, 40.529518, 44.199673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.485050, 39.710258, 44.145847>,  <47.360485, 40.218746, 43.632374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.485050, 39.710258, 44.145847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402153, 40.049675, 44.340588>,  <47.352417, 40.253326, 44.457432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402153, 40.049675, 44.340588>,  <47.485050, 39.710258, 44.145847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402153, 40.049675, 44.340588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785439, -0.441000, 0.434286,
		0.583212, -0.292392, 0.757872,
		-0.207240, 0.848544, 0.486852,
		47.339981, 40.304237, 44.486645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.195084, 39.422882, 44.773808>,  <47.485050, 39.710258, 44.145847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.195084, 39.422882, 44.773808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.101852, 39.811569, 44.789024>,  <47.045914, 40.044781, 44.798153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.101852, 39.811569, 44.789024>,  <47.195084, 39.422882, 44.773808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.101852, 39.811569, 44.789024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768056, -0.207940, 0.605683,
		0.596460, 0.111957, 0.794796,
		-0.233081, 0.971713, 0.038038,
		47.031929, 40.103085, 44.800434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119904, 39.572193, 45.507980>,  <47.195084, 39.422882, 44.773808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119904, 39.572193, 45.507980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916557, 39.869133, 45.333405>,  <46.794548, 40.047295, 45.228657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916557, 39.869133, 45.333405>,  <47.119904, 39.572193, 45.507980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916557, 39.869133, 45.333405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766975, -0.159870, 0.621443,
		0.391553, 0.650662, 0.650634,
		-0.508366, 0.742348, -0.436444,
		46.764046, 40.091839, 45.202473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047260, 40.051617, 46.043373>,  <47.119904, 39.572193, 45.507980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047260, 40.051617, 46.043373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773811, 40.091370, 45.754158>,  <46.609741, 40.115219, 45.580627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773811, 40.091370, 45.754158>,  <47.047260, 40.051617, 46.043373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773811, 40.091370, 45.754158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721881, 0.053785, 0.689924,
		0.107453, 0.993595, 0.034972,
		-0.683624, 0.099380, -0.723036,
		46.568726, 40.121185, 45.537247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717312, 40.609665, 46.230236>,  <47.047260, 40.051617, 46.043373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717312, 40.609665, 46.230236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464249, 40.437378, 45.972794>,  <46.312412, 40.334007, 45.818329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464249, 40.437378, 45.972794>,  <46.717312, 40.609665, 46.230236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464249, 40.437378, 45.972794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767474, 0.237567, 0.595437,
		-0.103564, 0.870659, -0.480861,
		-0.632659, -0.430714, -0.643605,
		46.274452, 40.308163, 45.779713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131989, 41.012688, 46.325794>,  <46.717312, 40.609665, 46.230236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131989, 41.012688, 46.325794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976822, 40.683334, 46.160118>,  <45.883720, 40.485722, 46.060715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976822, 40.683334, 46.160118>,  <46.131989, 41.012688, 46.325794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976822, 40.683334, 46.160118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805041, 0.083867, 0.587261,
		-0.448807, 0.561248, -0.695395,
		-0.387919, -0.823388, -0.414188,
		45.860447, 40.436317, 46.035862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444920, 41.179905, 46.121998>,  <46.131989, 41.012688, 46.325794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444920, 41.179905, 46.121998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453873, 40.780182, 46.133869>,  <45.459244, 40.540348, 46.140991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453873, 40.780182, 46.133869>,  <45.444920, 41.179905, 46.121998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453873, 40.780182, 46.133869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878255, -0.005473, 0.478161,
		-0.477668, -0.036773, -0.877771,
		0.022387, -0.999309, 0.029681,
		45.460590, 40.480389, 46.142773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681454, 41.000668, 46.109676>,  <45.444920, 41.179905, 46.121998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681454, 41.000668, 46.109676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881844, 40.684227, 46.250069>,  <45.002079, 40.494362, 46.334305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881844, 40.684227, 46.250069>,  <44.681454, 41.000668, 46.109676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881844, 40.684227, 46.250069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796330, -0.262531, 0.544919,
		-0.338942, -0.552486, -0.761497,
		0.500977, -0.791099, 0.350979,
		45.032135, 40.446896, 46.355362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182941, 40.519505, 46.142620>,  <44.681454, 41.000668, 46.109676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182941, 40.519505, 46.142620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475990, 40.366707, 46.367954>,  <44.651817, 40.275028, 46.503155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475990, 40.366707, 46.367954>,  <44.182941, 40.519505, 46.142620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475990, 40.366707, 46.367954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656676, -0.179012, 0.732620,
		-0.179012, -0.906662, -0.381994,
		-0.732620, 0.381994, -0.563338,
		44.695778, 40.252110, 46.536957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921440, 39.907158, 46.404659>,  <44.182941, 40.519505, 46.142620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921440, 39.907158, 46.404659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215584, 40.005806, 46.657143>,  <44.392071, 40.064995, 46.808632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215584, 40.005806, 46.657143>,  <43.921440, 39.907158, 46.404659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215584, 40.005806, 46.657143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610193, -0.164228, 0.775044,
		0.294807, -0.955094, 0.029722,
		0.735359, 0.246625, 0.631207,
		44.436192, 40.079792, 46.846504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988457, 39.304977, 46.912426>,  <43.921440, 39.907158, 46.404659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988457, 39.304977, 46.912426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138103, 39.637070, 47.077721>,  <44.227890, 39.836323, 47.176899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138103, 39.637070, 47.077721>,  <43.988457, 39.304977, 46.912426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138103, 39.637070, 47.077721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587648, -0.132489, 0.798196,
		0.717432, -0.541453, 0.438315,
		0.374113, 0.830226, 0.413235,
		44.250336, 39.886139, 47.201691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056423, 39.086784, 47.504570>,  <43.988457, 39.304977, 46.912426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056423, 39.086784, 47.504570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110954, 39.475609, 47.581005>,  <44.143673, 39.708904, 47.626865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110954, 39.475609, 47.581005>,  <44.056423, 39.086784, 47.504570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110954, 39.475609, 47.581005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470617, -0.106184, 0.875925,
		0.871742, -0.209342, 0.442992,
		0.136329, 0.972061, 0.191085,
		44.151852, 39.767227, 47.638332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515244, 39.111622, 48.074390>,  <44.056423, 39.086784, 47.504570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515244, 39.111622, 48.074390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263306, 39.420425, 48.040207>,  <44.112144, 39.605709, 48.019699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263306, 39.420425, 48.040207>,  <44.515244, 39.111622, 48.074390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263306, 39.420425, 48.040207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196519, -0.051947, 0.979123,
		0.751452, 0.633486, 0.184433,
		-0.629842, 0.772009, -0.085456,
		44.074352, 39.652027, 48.014568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613186, 39.508839, 48.758785>,  <44.515244, 39.111622, 48.074390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613186, 39.508839, 48.758785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276321, 39.648811, 48.594681>,  <44.074203, 39.732796, 48.496220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276321, 39.648811, 48.594681>,  <44.613186, 39.508839, 48.758785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276321, 39.648811, 48.594681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417210, 0.059157, 0.906883,
		0.341613, 0.934907, 0.096173,
		-0.842162, 0.349927, -0.410261,
		44.023674, 39.753788, 48.471603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567768, 40.048061, 49.216301>,  <44.613186, 39.508839, 48.758785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567768, 40.048061, 49.216301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216995, 39.959282, 49.045780>,  <44.006531, 39.906013, 48.943466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216995, 39.959282, 49.045780>,  <44.567768, 40.048061, 49.216301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216995, 39.959282, 49.045780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405748, -0.133546, 0.904176,
		-0.257612, 0.965870, 0.027055,
		-0.876929, -0.221949, -0.426302,
		43.953915, 39.892696, 48.917889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152412, 40.573494, 49.418774>,  <44.567768, 40.048061, 49.216301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152412, 40.573494, 49.418774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914139, 40.261986, 49.340118>,  <43.771175, 40.075081, 49.292927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914139, 40.261986, 49.340118>,  <44.152412, 40.573494, 49.418774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914139, 40.261986, 49.340118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331140, 0.015069, 0.943461,
		-0.731781, 0.627123, -0.266860,
		-0.595687, -0.778775, -0.196638,
		43.735432, 40.028355, 49.281128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523388, 40.672741, 49.779682>,  <44.152412, 40.573494, 49.418774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523388, 40.672741, 49.779682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502518, 40.284584, 49.685352>,  <43.489998, 40.051689, 49.628754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502518, 40.284584, 49.685352>,  <43.523388, 40.672741, 49.779682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502518, 40.284584, 49.685352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239610, -0.217082, 0.946289,
		-0.969466, 0.105876, -0.221190,
		-0.052173, -0.970394, -0.235823,
		43.486866, 39.993465, 49.614605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988026, 40.498203, 50.179737>,  <43.523388, 40.672741, 49.779682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988026, 40.498203, 50.179737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191948, 40.171730, 50.070969>,  <43.314301, 39.975845, 50.005707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191948, 40.171730, 50.070969>,  <42.988026, 40.498203, 50.179737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191948, 40.171730, 50.070969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295821, -0.463116, 0.835472,
		-0.807831, -0.345488, -0.477543,
		0.509803, -0.816187, -0.271917,
		43.344891, 39.926872, 49.989395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459812, 39.978230, 50.300003>,  <42.988026, 40.498203, 50.179737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459812, 39.978230, 50.300003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796593, 39.763260, 50.280815>,  <42.998661, 39.634277, 50.269302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796593, 39.763260, 50.280815>,  <42.459812, 39.978230, 50.300003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796593, 39.763260, 50.280815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216771, -0.418332, 0.882048,
		-0.494096, -0.732242, -0.468712,
		0.841950, -0.537420, -0.047967,
		43.049179, 39.602036, 50.266426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258846, 39.380585, 50.529873>,  <42.459812, 39.978230, 50.300003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258846, 39.380585, 50.529873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655807, 39.358604, 50.573887>,  <42.893986, 39.345417, 50.600296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655807, 39.358604, 50.573887>,  <42.258846, 39.380585, 50.529873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655807, 39.358604, 50.573887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118327, -0.182506, 0.976058,
		-0.033551, -0.981668, -0.187622,
		0.992408, -0.054949, 0.110034,
		42.953529, 39.342117, 50.606895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431129, 38.649330, 50.748703>,  <42.258846, 39.380585, 50.529873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431129, 38.649330, 50.748703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718071, 38.896492, 50.877449>,  <42.890236, 39.044788, 50.954697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718071, 38.896492, 50.877449>,  <42.431129, 38.649330, 50.748703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718071, 38.896492, 50.877449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090037, -0.375887, 0.922281,
		0.690865, -0.690584, -0.214010,
		0.717356, 0.617902, 0.321865,
		42.933277, 39.081863, 50.974010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876236, 38.258785, 51.131611>,  <42.431129, 38.649330, 50.748703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876236, 38.258785, 51.131611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942135, 38.631294, 51.261597>,  <42.981674, 38.854797, 51.339588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942135, 38.631294, 51.261597>,  <42.876236, 38.258785, 51.131611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942135, 38.631294, 51.261597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076640, -0.316380, 0.945532,
		0.983355, -0.180674, 0.019251,
		0.164742, 0.931268, 0.324961,
		42.991558, 38.910675, 51.359085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314064, 38.095718, 51.823643>,  <42.876236, 38.258785, 51.131611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314064, 38.095718, 51.823643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204483, 38.480324, 51.815292>,  <43.138733, 38.711086, 51.810280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204483, 38.480324, 51.815292>,  <43.314064, 38.095718, 51.823643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204483, 38.480324, 51.815292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054222, 0.006232, 0.998510,
		0.960213, 0.274677, 0.050428,
		-0.273954, 0.961516, -0.020878,
		43.122295, 38.768780, 51.809029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629597, 38.375198, 52.361633>,  <43.314064, 38.095718, 51.823643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629597, 38.375198, 52.361633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328651, 38.633469, 52.309391>,  <43.148083, 38.788429, 52.278046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328651, 38.633469, 52.309391>,  <43.629597, 38.375198, 52.361633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328651, 38.633469, 52.309391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368545, -0.248232, 0.895855,
		0.546010, 0.722140, 0.424720,
		-0.752362, 0.645674, -0.130604,
		43.102943, 38.827171, 52.270210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655704, 38.758430, 52.984135>,  <43.629597, 38.375198, 52.361633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655704, 38.758430, 52.984135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282097, 38.811600, 52.851505>,  <43.057934, 38.843502, 52.771927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282097, 38.811600, 52.851505>,  <43.655704, 38.758430, 52.984135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282097, 38.811600, 52.851505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353188, -0.204519, 0.912924,
		0.053535, 0.969795, 0.237972,
		-0.934019, 0.132922, -0.331571,
		43.001892, 38.851475, 52.752033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239040, 39.265240, 53.447578>,  <43.655704, 38.758430, 52.984135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239040, 39.265240, 53.447578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984322, 39.015938, 53.266010>,  <42.831490, 38.866356, 53.157070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984322, 39.015938, 53.266010>,  <43.239040, 39.265240, 53.447578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984322, 39.015938, 53.266010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444888, -0.183821, 0.876518,
		-0.629735, 0.760107, -0.160223,
		-0.636795, -0.623256, -0.453921,
		42.793282, 38.828960, 53.129833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630379, 39.265182, 53.812725>,  <43.239040, 39.265240, 53.447578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630379, 39.265182, 53.812725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510361, 38.956573, 53.588326>,  <42.438351, 38.771408, 53.453686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510361, 38.956573, 53.588326>,  <42.630379, 39.265182, 53.812725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510361, 38.956573, 53.588326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696653, -0.224518, 0.681371,
		-0.651648, 0.595269, -0.470117,
		-0.300049, -0.771522, -0.561002,
		42.420345, 38.725117, 53.420025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883533, 39.194366, 53.808064>,  <42.630379, 39.265182, 53.812725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883533, 39.194366, 53.808064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022919, 38.837624, 53.692703>,  <42.106548, 38.623577, 53.623489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022919, 38.837624, 53.692703>,  <41.883533, 39.194366, 53.808064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022919, 38.837624, 53.692703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592907, -0.448032, 0.669125,
		-0.725972, -0.062172, -0.684909,
		0.348462, -0.891853, -0.288397,
		42.127457, 38.570068, 53.606186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339130, 38.821804, 53.666374>,  <41.883533, 39.194366, 53.808064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339130, 38.821804, 53.666374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629639, 38.553238, 53.725342>,  <41.803944, 38.392097, 53.760723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629639, 38.553238, 53.725342>,  <41.339130, 38.821804, 53.666374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629639, 38.553238, 53.725342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497327, -0.365168, 0.786967,
		-0.474553, -0.644863, -0.599125,
		0.726268, -0.671419, 0.147416,
		41.847519, 38.351814, 53.769566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021366, 38.144196, 53.890369>,  <41.339130, 38.821804, 53.666374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021366, 38.144196, 53.890369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399853, 38.098419, 54.011414>,  <41.626945, 38.070953, 54.084038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399853, 38.098419, 54.011414>,  <41.021366, 38.144196, 53.890369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399853, 38.098419, 54.011414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312692, -0.563540, 0.764622,
		0.083025, -0.818123, -0.569019,
		0.946219, -0.114445, 0.302608,
		41.683720, 38.064087, 54.102196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095135, 37.427849, 53.926651>,  <41.021366, 38.144196, 53.890369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095135, 37.427849, 53.926651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369358, 37.611794, 54.152409>,  <41.533894, 37.722160, 54.287861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369358, 37.611794, 54.152409>,  <41.095135, 37.427849, 53.926651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369358, 37.611794, 54.152409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366698, -0.451598, 0.813383,
		0.628919, -0.764584, -0.140968,
		0.685560, 0.459859, 0.564390,
		41.575027, 37.749752, 54.321724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341034, 36.902645, 54.437462>,  <41.095135, 37.427849, 53.926651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341034, 36.902645, 54.437462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460815, 37.253746, 54.587067>,  <41.532684, 37.464405, 54.676830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460815, 37.253746, 54.587067>,  <41.341034, 36.902645, 54.437462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460815, 37.253746, 54.587067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073158, -0.369719, 0.926259,
		0.951301, -0.304735, -0.046500,
		0.299455, 0.877750, 0.374008,
		41.550652, 37.517071, 54.699268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884590, 36.810741, 54.930206>,  <41.341034, 36.902645, 54.437462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884590, 36.810741, 54.930206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721363, 37.151215, 55.062248>,  <41.623428, 37.355499, 55.141476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721363, 37.151215, 55.062248>,  <41.884590, 36.810741, 54.930206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721363, 37.151215, 55.062248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147324, -0.295449, 0.943931,
		0.900988, 0.433818, -0.004837,
		-0.408065, 0.851183, 0.330108,
		41.598942, 37.406570, 55.161282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181297, 36.959881, 55.529110>,  <41.884590, 36.810741, 54.930206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181297, 36.959881, 55.529110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855446, 37.187218, 55.575363>,  <41.659935, 37.323620, 55.603115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855446, 37.187218, 55.575363>,  <42.181297, 36.959881, 55.529110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855446, 37.187218, 55.575363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014645, -0.219468, 0.975510,
		0.579800, 0.792983, 0.187108,
		-0.814627, 0.568341, 0.115634,
		41.611057, 37.357719, 55.610054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387600, 37.328709, 56.136051>,  <42.181297, 36.959881, 55.529110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387600, 37.328709, 56.136051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989883, 37.354622, 56.102123>,  <41.751255, 37.370171, 56.081768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989883, 37.354622, 56.102123>,  <42.387600, 37.328709, 56.136051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989883, 37.354622, 56.102123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086459, -0.022956, 0.995991,
		0.062572, 0.997635, 0.028425,
		-0.994289, 0.064778, -0.084818,
		41.691597, 37.374054, 56.076679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171669, 37.755440, 56.610657>,  <42.387600, 37.328709, 56.136051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171669, 37.755440, 56.610657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813656, 37.588882, 56.546753>,  <41.598846, 37.488949, 56.508411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813656, 37.588882, 56.546753>,  <42.171669, 37.755440, 56.610657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813656, 37.588882, 56.546753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187201, 0.025614, 0.981988,
		-0.404805, 0.908822, -0.100876,
		-0.895036, -0.416397, -0.159764,
		41.545147, 37.463963, 56.498825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666454, 38.114574, 56.927292>,  <42.171669, 37.755440, 56.610657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666454, 38.114574, 56.927292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475174, 37.764252, 56.901131>,  <41.360405, 37.554058, 56.885433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475174, 37.764252, 56.901131>,  <41.666454, 38.114574, 56.927292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475174, 37.764252, 56.901131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224123, 0.049688, 0.973294,
		-0.849171, 0.480091, -0.220050,
		-0.478203, -0.875810, -0.065406,
		41.331715, 37.501507, 56.881508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056202, 38.179932, 57.230309>,  <41.666454, 38.114574, 56.927292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056202, 38.179932, 57.230309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115082, 37.785370, 57.259552>,  <41.150410, 37.548634, 57.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115082, 37.785370, 57.259552>,  <41.056202, 38.179932, 57.230309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115082, 37.785370, 57.259552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334158, 0.019978, 0.942306,
		-0.930951, -0.163140, -0.326673,
		0.147202, -0.986401, 0.073113,
		41.159241, 37.489449, 57.281487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521687, 37.985641, 57.692711>,  <41.056202, 38.179932, 57.230309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521687, 37.985641, 57.692711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759552, 37.664055, 57.691097>,  <40.902271, 37.471104, 57.690128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759552, 37.664055, 57.691097>,  <40.521687, 37.985641, 57.692711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759552, 37.664055, 57.691097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183900, -0.140906, 0.972793,
		-0.782657, -0.577746, -0.231641,
		0.594667, -0.803962, -0.004034,
		40.937954, 37.422867, 57.689888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148357, 37.421127, 58.008854>,  <40.521687, 37.985641, 57.692711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148357, 37.421127, 58.008854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532585, 37.312332, 58.031937>,  <40.763123, 37.247055, 58.045788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532585, 37.312332, 58.031937>,  <40.148357, 37.421127, 58.008854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532585, 37.312332, 58.031937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129034, -0.252213, 0.959030,
		-0.246252, -0.928672, -0.277361,
		0.960578, -0.271952, 0.057723,
		40.820755, 37.230736, 58.049252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156235, 36.922569, 58.517536>,  <40.148357, 37.421127, 58.008854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156235, 36.922569, 58.517536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548653, 36.997826, 58.498970>,  <40.784103, 37.042980, 58.487831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548653, 36.997826, 58.498970>,  <40.156235, 36.922569, 58.517536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548653, 36.997826, 58.498970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118110, -0.390654, 0.912929,
		0.153626, -0.901106, -0.405471,
		0.981045, 0.188140, -0.046415,
		40.842968, 37.054268, 58.485046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527027, 36.271656, 58.577885>,  <40.156235, 36.922569, 58.517536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527027, 36.271656, 58.577885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689121, 36.589783, 58.758217>,  <40.786377, 36.780659, 58.866417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689121, 36.589783, 58.758217>,  <40.527027, 36.271656, 58.577885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689121, 36.589783, 58.758217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089862, -0.525403, 0.846095,
		0.909786, -0.302354, -0.284379,
		0.405234, 0.795320, 0.450834,
		40.810692, 36.828381, 58.893467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241756, 36.124653, 58.923889>,  <40.527027, 36.271656, 58.577885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241756, 36.124653, 58.923889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012276, 36.388954, 59.117496>,  <40.874588, 36.547535, 59.233662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012276, 36.388954, 59.117496>,  <41.241756, 36.124653, 58.923889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012276, 36.388954, 59.117496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011761, -0.597522, 0.801766,
		0.818981, 0.454281, 0.350570,
		-0.573701, 0.660754, 0.484016,
		40.840164, 36.587181, 59.262703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473660, 36.485172, 59.594288>,  <41.241756, 36.124653, 58.923889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473660, 36.485172, 59.594288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082840, 36.401810, 59.611919>,  <40.848347, 36.351791, 59.622498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082840, 36.401810, 59.611919>,  <41.473660, 36.485172, 59.594288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082840, 36.401810, 59.611919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124649, -0.391565, 0.911668,
		-0.172738, 0.896238, 0.408556,
		-0.977049, -0.208406, 0.044077,
		40.789726, 36.339287, 59.625141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289497, 36.726166, 60.252789>,  <41.473660, 36.485172, 59.594288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289497, 36.726166, 60.252789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071030, 36.428047, 60.099823>,  <40.939949, 36.249176, 60.008045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071030, 36.428047, 60.099823>,  <41.289497, 36.726166, 60.252789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071030, 36.428047, 60.099823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174862, -0.547898, 0.818065,
		-0.819222, 0.379930, 0.429567,
		-0.546167, -0.745292, -0.382415,
		40.907181, 36.204460, 59.985100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857533, 37.116776, 60.671589>,  <41.289497, 36.726166, 60.252789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857533, 37.116776, 60.671589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508694, 37.224632, 60.508251>,  <40.299393, 37.289345, 60.410248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508694, 37.224632, 60.508251>,  <40.857533, 37.116776, 60.671589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508694, 37.224632, 60.508251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472718, 0.679861, -0.560648,
		0.126447, -0.681971, -0.720366,
		-0.872094, 0.269638, -0.408346,
		40.247066, 37.305523, 60.385746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631531, 36.929306, 59.861416>,  <40.857533, 37.116776, 60.671589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631531, 36.929306, 59.861416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528214, 37.270576, 60.042686>,  <40.466225, 37.475342, 60.151447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528214, 37.270576, 60.042686>,  <40.631531, 36.929306, 59.861416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528214, 37.270576, 60.042686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822538, 0.440243, -0.360023,
		-0.506673, 0.279765, -0.815484,
		-0.258290, 0.853181, 0.453177,
		40.450726, 37.526531, 60.178638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580830, 37.520161, 59.327213>,  <40.631531, 36.929306, 59.861416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580830, 37.520161, 59.327213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669838, 37.641212, 59.697922>,  <40.723244, 37.713844, 59.920345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669838, 37.641212, 59.697922>,  <40.580830, 37.520161, 59.327213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669838, 37.641212, 59.697922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768700, 0.530227, -0.357714,
		-0.599652, 0.792007, -0.114643,
		0.222526, 0.302630, 0.926767,
		40.736595, 37.732002, 59.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370365, 38.215553, 59.449169>,  <40.580830, 37.520161, 59.327213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370365, 38.215553, 59.449169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683975, 38.071449, 59.651367>,  <40.872139, 37.984985, 59.772686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683975, 38.071449, 59.651367>,  <40.370365, 38.215553, 59.449169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683975, 38.071449, 59.651367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585608, 0.699339, -0.409863,
		-0.205850, 0.617361, 0.759270,
		0.784021, -0.360264, 0.505491,
		40.919182, 37.963371, 59.803013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875214, 38.700172, 59.551865>,  <40.370365, 38.215553, 59.449169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875214, 38.700172, 59.551865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067799, 38.349785, 59.563690>,  <41.183350, 38.139553, 59.570786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067799, 38.349785, 59.563690>,  <40.875214, 38.700172, 59.551865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067799, 38.349785, 59.563690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748793, 0.393556, -0.533313,
		0.455530, 0.278908, 0.845401,
		0.481458, -0.875970, 0.029568,
		41.212234, 38.086994, 59.572559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619915, 38.806339, 59.845676>,  <40.875214, 38.700172, 59.551865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619915, 38.806339, 59.845676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565407, 38.502495, 59.591301>,  <41.532700, 38.320187, 59.438675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565407, 38.502495, 59.591301>,  <41.619915, 38.806339, 59.845676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565407, 38.502495, 59.591301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782101, 0.311523, -0.539696,
		0.608069, -0.570917, 0.551640,
		-0.136273, -0.759610, -0.635942,
		41.524525, 38.274612, 59.400520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235790, 38.614799, 59.755249>,  <41.619915, 38.806339, 59.845676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235790, 38.614799, 59.755249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036522, 38.453163, 59.448387>,  <41.916962, 38.356182, 59.264271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036522, 38.453163, 59.448387>,  <42.235790, 38.614799, 59.755249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036522, 38.453163, 59.448387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812910, 0.090146, -0.575370,
		0.301660, -0.910264, 0.283585,
		-0.498175, -0.404095, -0.767156,
		41.887070, 38.331936, 59.218239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793293, 38.199127, 59.446915>,  <42.235790, 38.614799, 59.755249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793293, 38.199127, 59.446915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507744, 38.254364, 59.172302>,  <42.336414, 38.287506, 59.007534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507744, 38.254364, 59.172302>,  <42.793293, 38.199127, 59.446915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507744, 38.254364, 59.172302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695124, 0.258467, -0.670819,
		0.084807, -0.956098, -0.280506,
		-0.713870, 0.138096, -0.686526,
		42.293583, 38.295792, 58.966343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113567, 38.002548, 58.770416>,  <42.793293, 38.199127, 59.446915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113567, 38.002548, 58.770416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796013, 38.227081, 58.676910>,  <42.605480, 38.361801, 58.620808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796013, 38.227081, 58.676910>,  <43.113567, 38.002548, 58.770416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796013, 38.227081, 58.676910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475310, 0.333108, -0.814321,
		-0.379237, -0.757590, -0.531258,
		-0.793889, 0.561334, -0.233763,
		42.557846, 38.395481, 58.606781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998299, 37.835438, 58.088432>,  <43.113567, 38.002548, 58.770416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998299, 37.835438, 58.088432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807220, 38.185150, 58.122925>,  <42.692574, 38.394978, 58.143620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807220, 38.185150, 58.122925>,  <42.998299, 37.835438, 58.088432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807220, 38.185150, 58.122925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554399, 0.376141, -0.742401,
		-0.681506, -0.306831, -0.664383,
		-0.477694, 0.874284, 0.086235,
		42.663914, 38.447433, 58.148796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625103, 37.973877, 57.433395>,  <42.998299, 37.835438, 58.088432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625103, 37.973877, 57.433395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688026, 38.321869, 57.620327>,  <42.725780, 38.530663, 57.732487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688026, 38.321869, 57.620327>,  <42.625103, 37.973877, 57.433395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688026, 38.321869, 57.620327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394274, 0.378539, -0.837411,
		-0.905430, 0.315984, -0.283464,
		0.157306, 0.869979, 0.467324,
		42.735218, 38.582863, 57.760525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565578, 38.455166, 56.865223>,  <42.625103, 37.973877, 57.433395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565578, 38.455166, 56.865223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735748, 38.673767, 57.153763>,  <42.837852, 38.804928, 57.326885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735748, 38.673767, 57.153763>,  <42.565578, 38.455166, 56.865223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735748, 38.673767, 57.153763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575094, 0.452189, -0.681757,
		-0.698768, 0.704883, -0.121917,
		0.425429, 0.546503, 0.721349,
		42.863377, 38.837719, 57.370167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559860, 39.166344, 56.570217>,  <42.565578, 38.455166, 56.865223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559860, 39.166344, 56.570217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829308, 39.156128, 56.865669>,  <42.990978, 39.149998, 57.042942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829308, 39.156128, 56.865669>,  <42.559860, 39.166344, 56.570217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829308, 39.156128, 56.865669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673833, 0.431781, -0.599595,
		-0.303617, 0.901617, 0.308065,
		0.673622, -0.025537, 0.738635,
		43.031395, 39.148468, 57.087261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862873, 39.812866, 56.589531>,  <42.559860, 39.166344, 56.570217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862873, 39.812866, 56.589531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112125, 39.587921, 56.806953>,  <43.261677, 39.452953, 56.937408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112125, 39.587921, 56.806953>,  <42.862873, 39.812866, 56.589531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112125, 39.587921, 56.806953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776985, 0.365587, -0.512485,
		0.089485, 0.741682, 0.664756,
		0.623127, -0.562365, 0.543561,
		43.299065, 39.419212, 56.970020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384842, 40.224197, 56.821785>,  <42.862873, 39.812866, 56.589531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384842, 40.224197, 56.821785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540970, 39.856178, 56.808220>,  <43.634647, 39.635365, 56.800079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540970, 39.856178, 56.808220>,  <43.384842, 40.224197, 56.821785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540970, 39.856178, 56.808220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760111, 0.342820, -0.552001,
		0.519498, 0.189679, 0.833153,
		0.390324, -0.920052, -0.033917,
		43.658066, 39.580162, 56.798046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166439, 40.309650, 56.889492>,  <43.384842, 40.224197, 56.821785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166439, 40.309650, 56.889492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087616, 39.953278, 56.725834>,  <44.040321, 39.739452, 56.627640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087616, 39.953278, 56.725834>,  <44.166439, 40.309650, 56.889492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087616, 39.953278, 56.725834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740179, 0.138457, -0.658000,
		0.642885, -0.432507, 0.632168,
		-0.197062, -0.890936, -0.409145,
		44.028496, 39.685997, 56.603092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835991, 40.157776, 56.562744>,  <44.166439, 40.309650, 56.889492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835991, 40.157776, 56.562744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600193, 39.862854, 56.430756>,  <44.458714, 39.685902, 56.351562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600193, 39.862854, 56.430756>,  <44.835991, 40.157776, 56.562744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600193, 39.862854, 56.430756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620838, -0.152208, -0.769021,
		0.516774, -0.658195, 0.547470,
		-0.589495, -0.737300, -0.329975,
		44.423344, 39.641663, 56.331764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288605, 39.667000, 56.271130>,  <44.835991, 40.157776, 56.562744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288605, 39.667000, 56.271130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931190, 39.599586, 56.104664>,  <44.716743, 39.559139, 56.004784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931190, 39.599586, 56.104664>,  <45.288605, 39.667000, 56.271130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931190, 39.599586, 56.104664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428591, -0.043908, -0.902431,
		0.133817, -0.984717, 0.111465,
		-0.893534, -0.168534, -0.416165,
		44.663132, 39.549026, 55.979813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299911, 39.125198, 55.864086>,  <45.288605, 39.667000, 56.271130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299911, 39.125198, 55.864086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980492, 39.305031, 55.703987>,  <44.788841, 39.412930, 55.607929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980492, 39.305031, 55.703987>,  <45.299911, 39.125198, 55.864086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980492, 39.305031, 55.703987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357799, -0.180185, -0.916250,
		-0.484046, -0.874878, -0.016973,
		-0.798548, 0.449580, -0.400248,
		44.740929, 39.439903, 55.583912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130302, 38.660992, 55.304733>,  <45.299911, 39.125198, 55.864086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130302, 38.660992, 55.304733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931107, 38.997032, 55.218727>,  <44.811588, 39.198658, 55.167126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931107, 38.997032, 55.218727>,  <45.130302, 38.660992, 55.304733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931107, 38.997032, 55.218727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251710, -0.097233, -0.962906,
		-0.829848, -0.533639, -0.163042,
		-0.497991, 0.840104, -0.215011,
		44.781708, 39.249062, 55.154224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707077, 38.460011, 54.756672>,  <45.130302, 38.660992, 55.304733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707077, 38.460011, 54.756672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721519, 38.859589, 54.745308>,  <44.730186, 39.099335, 54.738491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721519, 38.859589, 54.745308>,  <44.707077, 38.460011, 54.756672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721519, 38.859589, 54.745308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038731, -0.029805, -0.998805,
		-0.998597, 0.034962, -0.039767,
		0.036105, 0.998944, -0.028409,
		44.732349, 39.159271, 54.736786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204384, 38.643898, 54.284203>,  <44.707077, 38.460011, 54.756672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204384, 38.643898, 54.284203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457897, 38.952568, 54.305519>,  <44.610004, 39.137772, 54.318310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457897, 38.952568, 54.305519>,  <44.204384, 38.643898, 54.284203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457897, 38.952568, 54.305519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197933, -0.095194, -0.975582,
		-0.747761, 0.628851, -0.213072,
		0.633779, 0.771676, 0.053288,
		44.648029, 39.184071, 54.321507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018898, 39.014786, 53.763241>,  <44.204384, 38.643898, 54.284203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018898, 39.014786, 53.763241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400749, 39.103561, 53.842667>,  <44.629860, 39.156826, 53.890324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400749, 39.103561, 53.842667>,  <44.018898, 39.014786, 53.763241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400749, 39.103561, 53.842667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251681, -0.244852, -0.936325,
		-0.159184, 0.943818, -0.289600,
		0.954629, 0.221935, 0.198564,
		44.687138, 39.170143, 53.902237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294964, 39.415611, 53.292835>,  <44.018898, 39.014786, 53.763241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294964, 39.415611, 53.292835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645096, 39.296127, 53.444923>,  <44.855175, 39.224438, 53.536179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645096, 39.296127, 53.444923>,  <44.294964, 39.415611, 53.292835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645096, 39.296127, 53.444923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353642, -0.140767, -0.924728,
		0.329748, 0.943905, -0.017581,
		0.875330, -0.298710, 0.380222,
		44.907696, 39.206512, 53.558990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773689, 39.715439, 52.731449>,  <44.294964, 39.415611, 53.292835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773689, 39.715439, 52.731449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977104, 39.445198, 52.944973>,  <45.099152, 39.283054, 53.073086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977104, 39.445198, 52.944973>,  <44.773689, 39.715439, 52.731449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977104, 39.445198, 52.944973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686426, -0.056177, -0.725026,
		0.519815, 0.735126, 0.435181,
		0.508538, -0.675599, 0.533811,
		45.129665, 39.242519, 53.105118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502560, 40.044563, 52.864872>,  <44.773689, 39.715439, 52.731449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502560, 40.044563, 52.864872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538177, 39.649200, 52.914059>,  <45.559547, 39.411983, 52.943569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538177, 39.649200, 52.914059>,  <45.502560, 40.044563, 52.864872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538177, 39.649200, 52.914059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748891, -0.014961, -0.662524,
		0.656684, 0.151081, 0.738878,
		0.089040, -0.988408, 0.122967,
		45.564888, 39.352676, 52.950951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266556, 39.820675, 52.937363>,  <45.502560, 40.044563, 52.864872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266556, 39.820675, 52.937363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087379, 39.477356, 52.837219>,  <45.979874, 39.271366, 52.777134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087379, 39.477356, 52.837219>,  <46.266556, 39.820675, 52.937363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087379, 39.477356, 52.837219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700512, -0.162930, -0.694792,
		0.555545, -0.486607, 0.674228,
		-0.447943, -0.858293, -0.250359,
		45.952995, 39.219868, 52.762112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850864, 39.367092, 52.744312>,  <46.266556, 39.820675, 52.937363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850864, 39.367092, 52.744312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528114, 39.206337, 52.571136>,  <46.334465, 39.109882, 52.467232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528114, 39.206337, 52.571136>,  <46.850864, 39.367092, 52.744312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528114, 39.206337, 52.571136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552397, -0.253667, -0.794047,
		0.209297, -0.879852, 0.426680,
		-0.806879, -0.401888, -0.432936,
		46.286049, 39.085770, 52.441257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109131, 38.740292, 52.432541>,  <46.850864, 39.367092, 52.744312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109131, 38.740292, 52.432541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767189, 38.847656, 52.254921>,  <46.562023, 38.912075, 52.148350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767189, 38.847656, 52.254921>,  <47.109131, 38.740292, 52.432541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.767189, 38.847656, 52.254921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395922, -0.215721, -0.892586,
		-0.335373, -0.938839, 0.078139,
		-0.854851, 0.268412, -0.444055,
		46.510735, 38.928181, 52.121704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976917, 38.271404, 51.925606>,  <47.109131, 38.740292, 52.432541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976917, 38.271404, 51.925606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752609, 38.583130, 51.813751>,  <46.618023, 38.770164, 51.746639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752609, 38.583130, 51.813751>,  <46.976917, 38.271404, 51.925606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752609, 38.583130, 51.813751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330276, -0.099159, -0.938662,
		-0.759244, -0.618734, -0.201784,
		-0.560773, 0.779317, -0.279639,
		46.584377, 38.816925, 51.729858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710358, 38.025543, 51.260509>,  <46.976917, 38.271404, 51.925606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710358, 38.025543, 51.260509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686432, 38.423195, 51.296593>,  <46.672077, 38.661785, 51.318241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686432, 38.423195, 51.296593>,  <46.710358, 38.025543, 51.260509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686432, 38.423195, 51.296593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188230, 0.099981, -0.977023,
		-0.980302, -0.041458, -0.193104,
		-0.059812, 0.994125, 0.090208,
		46.668488, 38.721432, 51.323654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569424, 38.229923, 50.580864>,  <46.710358, 38.025543, 51.260509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569424, 38.229923, 50.580864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660011, 38.591873, 50.725040>,  <46.714363, 38.809044, 50.811546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660011, 38.591873, 50.725040>,  <46.569424, 38.229923, 50.580864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660011, 38.591873, 50.725040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144284, 0.334803, -0.931176,
		-0.963273, 0.262888, -0.054737,
		0.226469, 0.904874, 0.360437,
		46.727951, 38.863335, 50.833172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129429, 38.748211, 50.195026>,  <46.569424, 38.229923, 50.580864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129429, 38.748211, 50.195026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456017, 38.925514, 50.343025>,  <46.651970, 39.031895, 50.431824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456017, 38.925514, 50.343025>,  <46.129429, 38.748211, 50.195026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456017, 38.925514, 50.343025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106796, 0.513818, -0.851226,
		-0.567425, 0.734514, 0.372179,
		0.816470, 0.443260, 0.369996,
		46.700958, 39.058491, 50.454025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110798, 39.474152, 50.035393>,  <46.129429, 38.748211, 50.195026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110798, 39.474152, 50.035393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499146, 39.386948, 50.075172>,  <46.732155, 39.334625, 50.099041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499146, 39.386948, 50.075172>,  <46.110798, 39.474152, 50.035393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499146, 39.386948, 50.075172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210652, 0.578692, -0.787871,
		0.114216, 0.785866, 0.607757,
		0.970866, -0.218013, 0.099448,
		46.790405, 39.321545, 50.105007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450615, 40.052616, 49.875488>,  <46.110798, 39.474152, 50.035393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450615, 40.052616, 49.875488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758430, 39.798431, 49.850197>,  <46.943119, 39.645920, 49.835022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758430, 39.798431, 49.850197>,  <46.450615, 40.052616, 49.875488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758430, 39.798431, 49.850197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347395, 0.499647, -0.793517,
		0.535838, 0.588679, 0.605255,
		0.769541, -0.635460, -0.063226,
		46.989292, 39.607792, 49.831230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.131287, 40.450748, 49.744240>,  <46.450615, 40.052616, 49.875488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.131287, 40.450748, 49.744240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189606, 40.070213, 49.635654>,  <47.224598, 39.841892, 49.570503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189606, 40.070213, 49.635654>,  <47.131287, 40.450748, 49.744240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.189606, 40.070213, 49.635654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426599, 0.308031, -0.850371,
		0.892612, 0.008175, 0.450751,
		0.145797, -0.951341, -0.271465,
		47.233345, 39.784809, 49.554214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.818501, 40.537132, 49.486645>,  <47.131287, 40.450748, 49.744240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.818501, 40.537132, 49.486645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717491, 40.176010, 49.347408>,  <47.656883, 39.959335, 49.263866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717491, 40.176010, 49.347408>,  <47.818501, 40.537132, 49.486645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717491, 40.176010, 49.347408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462660, 0.203296, -0.862912,
		0.849810, -0.378954, 0.366356,
		-0.252525, -0.902809, -0.348090,
		47.641735, 39.905167, 49.242981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.401447, 40.215992, 49.239456>,  <47.818501, 40.537132, 49.486645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.401447, 40.215992, 49.239456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.089523, 40.066788, 49.038353>,  <47.902370, 39.977264, 48.917690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.089523, 40.066788, 49.038353>,  <48.401447, 40.215992, 49.239456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.089523, 40.066788, 49.038353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495475, 0.123113, -0.859853,
		0.382632, -0.919622, 0.088815,
		-0.779806, -0.373012, -0.502757,
		47.855583, 39.954884, 48.887527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.787449, 39.892433, 48.669220>,  <48.401447, 40.215992, 49.239456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.787449, 39.892433, 48.669220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.399872, 39.913399, 48.572548>,  <48.167328, 39.925976, 48.514545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.399872, 39.913399, 48.572548>,  <48.787449, 39.892433, 48.669220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.399872, 39.913399, 48.572548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247198, 0.177689, -0.952533,
		-0.006981, -0.982690, -0.185126,
		-0.968940, 0.052412, -0.241679,
		48.109188, 39.929123, 48.500046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.807392, 39.459591, 48.130688>,  <48.787449, 39.892433, 48.669220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.807392, 39.459591, 48.130688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.474220, 39.679039, 48.101730>,  <48.274319, 39.810707, 48.084354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.474220, 39.679039, 48.101730>,  <48.807392, 39.459591, 48.130688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.474220, 39.679039, 48.101730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160009, 0.113540, -0.980564,
		-0.529742, -0.828324, -0.182355,
		-0.832929, 0.548624, -0.072392,
		48.224342, 39.843628, 48.080013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.284523, 39.195396, 47.571960>,  <48.807392, 39.459591, 48.130688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.284523, 39.195396, 47.571960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.219551, 39.588196, 47.610519>,  <48.180569, 39.823875, 47.633656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.219551, 39.588196, 47.610519>,  <48.284523, 39.195396, 47.571960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.219551, 39.588196, 47.610519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280937, 0.139680, -0.949507,
		-0.945882, -0.127143, -0.298568,
		-0.162427, 0.982000, 0.096401,
		48.170822, 39.882797, 47.639439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.186283, 39.348114, 46.890408>,  <48.284523, 39.195396, 47.571960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.186283, 39.348114, 46.890408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.227844, 39.703613, 47.068996>,  <48.252781, 39.916912, 47.176151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.227844, 39.703613, 47.068996>,  <48.186283, 39.348114, 46.890408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.227844, 39.703613, 47.068996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223780, 0.416502, -0.881163,
		-0.969085, 0.191471, -0.155605,
		0.103907, 0.888744, 0.446473,
		48.259018, 39.970238, 47.202938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.812477, 39.725510, 46.377708>,  <48.186283, 39.348114, 46.890408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.812477, 39.725510, 46.377708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.041946, 39.970413, 46.595345>,  <48.179630, 40.117355, 46.725925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.041946, 39.970413, 46.595345>,  <47.812477, 39.725510, 46.377708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.041946, 39.970413, 46.595345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358349, 0.409717, -0.838879,
		-0.736533, 0.676221, 0.015644,
		0.573677, 0.612256, 0.544094,
		48.214050, 40.154091, 46.758572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.614853, 40.450634, 46.221691>,  <47.812477, 39.725510, 46.377708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.614853, 40.450634, 46.221691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.983177, 40.482841, 46.374332>,  <48.204174, 40.502167, 46.465916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.983177, 40.482841, 46.374332>,  <47.614853, 40.450634, 46.221691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.983177, 40.482841, 46.374332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277216, 0.553118, -0.785628,
		-0.274328, 0.829203, 0.486998,
		0.920812, 0.080516, 0.381604,
		48.259422, 40.506996, 46.488815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.765579, 41.142056, 46.206776>,  <47.614853, 40.450634, 46.221691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.765579, 41.142056, 46.206776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.127419, 40.973015, 46.229103>,  <48.344521, 40.871590, 46.242500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.127419, 40.973015, 46.229103>,  <47.765579, 41.142056, 46.206776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.127419, 40.973015, 46.229103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368995, 0.710753, -0.598893,
		0.213417, 0.562353, 0.798882,
		0.904597, -0.422597, 0.055819,
		48.398796, 40.846237, 46.245850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.212326, 41.657089, 46.693851>,  <47.765579, 41.142056, 46.206776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.212326, 41.657089, 46.693851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.136459, 42.044670, 46.630413>,  <48.090939, 42.277218, 46.592350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.136459, 42.044670, 46.630413>,  <48.212326, 41.657089, 46.693851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.136459, 42.044670, 46.630413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113204, 0.138868, 0.983819,
		0.975301, 0.204549, 0.083351,
		-0.189665, 0.968956, -0.158593,
		48.079559, 42.335358, 46.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.643242, 42.066563, 47.212303>,  <48.212326, 41.657089, 46.693851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.643242, 42.066563, 47.212303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.332008, 42.296425, 47.110828>,  <48.145267, 42.434341, 47.049946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.332008, 42.296425, 47.110828>,  <48.643242, 42.066563, 47.212303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.332008, 42.296425, 47.110828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180175, 0.182714, 0.966516,
		0.601761, 0.797742, -0.038630,
		-0.778088, 0.574651, -0.253683,
		48.098583, 42.468819, 47.034725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.630344, 42.475204, 47.720844>,  <48.643242, 42.066563, 47.212303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.630344, 42.475204, 47.720844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.267944, 42.564232, 47.576828>,  <48.050507, 42.617649, 47.490417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.267944, 42.564232, 47.576828>,  <48.630344, 42.475204, 47.720844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.267944, 42.564232, 47.576828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249780, 0.405598, 0.879261,
		0.341727, 0.886541, -0.311878,
		-0.905998, 0.222566, -0.360044,
		47.996143, 42.631001, 47.468815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.424599, 43.108559, 47.995014>,  <48.630344, 42.475204, 47.720844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.424599, 43.108559, 47.995014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.061295, 42.966370, 47.906742>,  <47.843311, 42.881058, 47.853779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.061295, 42.966370, 47.906742>,  <48.424599, 43.108559, 47.995014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.061295, 42.966370, 47.906742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366392, 0.421059, 0.829739,
		-0.202026, 0.834477, -0.512673,
		-0.908264, -0.355468, -0.220681,
		47.788815, 42.859730, 47.840538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.867371, 43.742294, 48.007618>,  <48.424599, 43.108559, 47.995014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.867371, 43.742294, 48.007618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656006, 43.407715, 48.065773>,  <47.529186, 43.206966, 48.100666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656006, 43.407715, 48.065773>,  <47.867371, 43.742294, 48.007618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656006, 43.407715, 48.065773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526923, 0.457381, 0.716348,
		-0.665686, 0.301917, -0.682428,
		-0.528408, -0.836450, 0.145385,
		47.497482, 43.156780, 48.109390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202763, 43.968513, 48.083504>,  <47.867371, 43.742294, 48.007618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202763, 43.968513, 48.083504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201309, 43.596046, 48.229332>,  <47.200439, 43.372566, 48.316830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201309, 43.596046, 48.229332>,  <47.202763, 43.968513, 48.083504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.201309, 43.596046, 48.229332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524143, 0.312250, 0.792322,
		-0.851623, -0.188208, -0.489200,
		-0.003631, -0.931170, 0.364567,
		47.200218, 43.316696, 48.338703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496822, 43.865414, 48.113239>,  <47.202763, 43.968513, 48.083504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496822, 43.865414, 48.113239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682243, 43.600220, 48.348381>,  <46.793495, 43.441105, 48.489464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682243, 43.600220, 48.348381>,  <46.496822, 43.865414, 48.113239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682243, 43.600220, 48.348381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562354, 0.292568, 0.773409,
		-0.684745, -0.689097, -0.237212,
		0.463553, -0.662985, 0.587851,
		46.821308, 43.401325, 48.524738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976254, 43.745293, 48.612617>,  <46.496822, 43.865414, 48.113239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976254, 43.745293, 48.612617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297485, 43.573219, 48.777542>,  <46.490223, 43.469975, 48.876499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297485, 43.573219, 48.777542>,  <45.976254, 43.745293, 48.612617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297485, 43.573219, 48.777542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381488, 0.160366, 0.910357,
		-0.457743, -0.888383, -0.035324,
		0.803081, -0.430185, 0.412314,
		46.538410, 43.444164, 48.901237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783756, 43.087532, 49.021019>,  <45.976254, 43.745293, 48.612617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783756, 43.087532, 49.021019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128853, 43.241905, 49.151699>,  <46.335911, 43.334530, 49.230106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128853, 43.241905, 49.151699>,  <45.783756, 43.087532, 49.021019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128853, 43.241905, 49.151699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362718, 0.022196, 0.931634,
		0.352294, -0.922261, 0.159134,
		0.862742, 0.385930, 0.326701,
		46.387676, 43.357685, 49.249710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099777, 42.558842, 49.469078>,  <45.783756, 43.087532, 49.021019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099777, 42.558842, 49.469078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261261, 42.909279, 49.574516>,  <46.358150, 43.119541, 49.637779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261261, 42.909279, 49.574516>,  <46.099777, 42.558842, 49.469078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.261261, 42.909279, 49.574516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279597, -0.156183, 0.947329,
		0.871115, -0.456149, 0.181899,
		0.403714, 0.876090, 0.263591,
		46.382374, 43.172108, 49.653595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510437, 42.431866, 50.024361>,  <46.099777, 42.558842, 49.469078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510437, 42.431866, 50.024361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443962, 42.823982, 50.067101>,  <46.404076, 43.059250, 50.092743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443962, 42.823982, 50.067101>,  <46.510437, 42.431866, 50.024361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443962, 42.823982, 50.067101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210130, -0.141069, 0.967443,
		0.963446, 0.138324, 0.229431,
		-0.166186, 0.980289, 0.106846,
		46.394108, 43.118069, 50.099155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735077, 42.543816, 50.645184>,  <46.510437, 42.431866, 50.024361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735077, 42.543816, 50.645184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548630, 42.893967, 50.593880>,  <46.436760, 43.104057, 50.563099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548630, 42.893967, 50.593880>,  <46.735077, 42.543816, 50.645184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548630, 42.893967, 50.593880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173342, 0.051797, 0.983499,
		0.867573, 0.480663, 0.127595,
		-0.466122, 0.875374, -0.128257,
		46.408794, 43.156578, 50.555401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.074570, 43.031349, 51.137211>,  <46.735077, 42.543816, 50.645184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.074570, 43.031349, 51.137211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697845, 43.133644, 51.049950>,  <46.471809, 43.195023, 50.997593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697845, 43.133644, 51.049950>,  <47.074570, 43.031349, 51.137211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697845, 43.133644, 51.049950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223721, 0.007493, 0.974625,
		0.250883, 0.966717, 0.050157,
		-0.941810, 0.255738, -0.218154,
		46.415302, 43.210365, 50.984505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880352, 43.507442, 51.652863>,  <47.074570, 43.031349, 51.137211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880352, 43.507442, 51.652863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543648, 43.376419, 51.481216>,  <46.341625, 43.297806, 51.378227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543648, 43.376419, 51.481216>,  <46.880352, 43.507442, 51.652863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543648, 43.376419, 51.481216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445288, -0.028111, 0.894946,
		-0.305208, 0.944413, -0.122194,
		-0.841764, -0.327557, -0.429115,
		46.291119, 43.278152, 51.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441330, 43.823574, 52.055710>,  <46.880352, 43.507442, 51.652863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441330, 43.823574, 52.055710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212616, 43.542366, 51.886559>,  <46.075386, 43.373642, 51.785069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212616, 43.542366, 51.886559>,  <46.441330, 43.823574, 52.055710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212616, 43.542366, 51.886559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576303, -0.022666, 0.816921,
		-0.583894, 0.710813, -0.392190,
		-0.571789, -0.703016, -0.422878,
		46.041080, 43.331463, 51.759693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710999, 44.014317, 52.142841>,  <46.441330, 43.823574, 52.055710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710999, 44.014317, 52.142841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741959, 43.618225, 52.096443>,  <45.760532, 43.380569, 52.068604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741959, 43.618225, 52.096443>,  <45.710999, 44.014317, 52.142841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741959, 43.618225, 52.096443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476138, -0.138931, 0.868326,
		-0.875958, -0.011976, -0.482238,
		0.077397, -0.990229, -0.115996,
		45.765179, 43.321156, 52.061646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202499, 43.883877, 52.532375>,  <45.710999, 44.014317, 52.142841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202499, 43.883877, 52.532375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352936, 43.517700, 52.475082>,  <45.443199, 43.297993, 52.440708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352936, 43.517700, 52.475082>,  <45.202499, 43.883877, 52.532375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352936, 43.517700, 52.475082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356152, -0.285526, 0.889736,
		-0.855401, -0.283610, -0.433421,
		0.376091, -0.915446, -0.143231,
		45.465763, 43.243065, 52.432114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625633, 43.476387, 52.612171>,  <45.202499, 43.883877, 52.532375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625633, 43.476387, 52.612171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958416, 43.271370, 52.697159>,  <45.158085, 43.148361, 52.748150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958416, 43.271370, 52.697159>,  <44.625633, 43.476387, 52.612171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958416, 43.271370, 52.697159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467747, -0.441952, 0.765436,
		-0.298417, -0.736194, -0.607426,
		0.831962, -0.512540, 0.212466,
		45.208004, 43.117607, 52.760899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408524, 42.850288, 52.755215>,  <44.625633, 43.476387, 52.612171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408524, 42.850288, 52.755215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780441, 42.851646, 52.902443>,  <45.003590, 42.852459, 52.990780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780441, 42.851646, 52.902443>,  <44.408524, 42.850288, 52.755215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780441, 42.851646, 52.902443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336393, -0.398114, 0.853431,
		0.149430, -0.917330, -0.369021,
		0.929790, 0.003392, 0.368074,
		45.059380, 42.852665, 53.012863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520702, 42.156715, 52.927105>,  <44.408524, 42.850288, 52.755215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520702, 42.156715, 52.927105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765144, 42.393723, 53.137047>,  <44.911808, 42.535927, 53.263012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765144, 42.393723, 53.137047>,  <44.520702, 42.156715, 52.927105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765144, 42.393723, 53.137047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281086, -0.457419, 0.843658,
		0.739964, -0.663090, -0.112980,
		0.611100, 0.592519, 0.524859,
		44.948475, 42.571480, 53.294506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954575, 41.666332, 53.306004>,  <44.520702, 42.156715, 52.927105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954575, 41.666332, 53.306004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934879, 42.015030, 53.500999>,  <44.923061, 42.224247, 53.617996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934879, 42.015030, 53.500999>,  <44.954575, 41.666332, 53.306004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934879, 42.015030, 53.500999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360033, -0.470759, 0.805458,
		0.931639, -0.135850, 0.337035,
		-0.049241, 0.871740, 0.487488,
		44.920109, 42.276550, 53.647247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081120, 41.484482, 54.053383>,  <44.954575, 41.666332, 53.306004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081120, 41.484482, 54.053383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936646, 41.853729, 54.106152>,  <44.849960, 42.075275, 54.137814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936646, 41.853729, 54.106152>,  <45.081120, 41.484482, 54.053383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936646, 41.853729, 54.106152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343462, -0.263220, 0.901526,
		0.866936, 0.280309, 0.412127,
		-0.361186, 0.923115, 0.131919,
		44.828289, 42.130665, 54.145729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136864, 41.528042, 54.737034>,  <45.081120, 41.484482, 54.053383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136864, 41.528042, 54.737034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918961, 41.845100, 54.627522>,  <44.788219, 42.035336, 54.561813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918961, 41.845100, 54.627522>,  <45.136864, 41.528042, 54.737034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918961, 41.845100, 54.627522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569112, -0.109663, 0.814914,
		0.615912, 0.599744, 0.510842,
		-0.544761, 0.792642, -0.273779,
		44.755531, 42.082893, 54.545387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152382, 42.010273, 55.405140>,  <45.136864, 41.528042, 54.737034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152382, 42.010273, 55.405140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845623, 42.069916, 55.155457>,  <44.661568, 42.105701, 55.005646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845623, 42.069916, 55.155457>,  <45.152382, 42.010273, 55.405140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845623, 42.069916, 55.155457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628287, -0.372771, 0.682860,
		-0.130866, 0.915865, 0.379560,
		-0.766896, 0.149109, -0.624209,
		44.615555, 42.114647, 54.968193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624771, 42.229839, 55.890228>,  <45.152382, 42.010273, 55.405140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624771, 42.229839, 55.890228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447323, 42.132553, 55.545197>,  <44.340855, 42.074181, 55.338177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447323, 42.132553, 55.545197>,  <44.624771, 42.229839, 55.890228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447323, 42.132553, 55.545197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802287, -0.321175, 0.503173,
		-0.399419, 0.915255, -0.052648,
		-0.443622, -0.243216, -0.862581,
		44.314236, 42.059589, 55.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955341, 42.614853, 55.821468>,  <44.624771, 42.229839, 55.890228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955341, 42.614853, 55.821468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921036, 42.280708, 55.604279>,  <43.900452, 42.080223, 55.473965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921036, 42.280708, 55.604279>,  <43.955341, 42.614853, 55.821468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921036, 42.280708, 55.604279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871520, -0.201187, 0.447187,
		-0.482801, 0.511567, -0.710776,
		-0.085767, -0.835358, -0.542974,
		43.895306, 42.030102, 55.441387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278522, 42.588200, 55.487812>,  <43.955341, 42.614853, 55.821468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278522, 42.588200, 55.487812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420410, 42.218147, 55.541946>,  <43.505543, 41.996117, 55.574429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420410, 42.218147, 55.541946>,  <43.278522, 42.588200, 55.487812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420410, 42.218147, 55.541946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787529, -0.217612, 0.576578,
		-0.503958, -0.311103, -0.805756,
		0.354717, -0.925127, 0.135335,
		43.526825, 41.940609, 55.582546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718739, 42.180798, 55.430180>,  <43.278522, 42.588200, 55.487812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718739, 42.180798, 55.430180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956715, 41.913261, 55.608482>,  <43.099499, 41.752739, 55.715466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956715, 41.913261, 55.608482>,  <42.718739, 42.180798, 55.430180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956715, 41.913261, 55.608482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723060, -0.203139, 0.660241,
		-0.351042, -0.715117, -0.604465,
		0.594940, -0.668836, 0.445762,
		43.135197, 41.712608, 55.742210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254921, 41.580799, 55.530792>,  <42.718739, 42.180798, 55.430180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254921, 41.580799, 55.530792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581776, 41.544724, 55.758530>,  <42.777889, 41.523079, 55.895172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581776, 41.544724, 55.758530>,  <42.254921, 41.580799, 55.530792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581776, 41.544724, 55.758530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564985, -0.321287, 0.759978,
		0.114384, -0.942678, -0.313489,
		0.817134, -0.090187, 0.569349,
		42.826916, 41.517666, 55.929333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181633, 40.875431, 55.939236>,  <42.254921, 41.580799, 55.530792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181633, 40.875431, 55.939236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446815, 41.102898, 56.134010>,  <42.605927, 41.239376, 56.250874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446815, 41.102898, 56.134010>,  <42.181633, 40.875431, 55.939236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446815, 41.102898, 56.134010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380926, -0.303701, 0.873304,
		0.644503, -0.764449, 0.015280,
		0.662956, 0.568668, 0.486935,
		42.645702, 41.273499, 56.280090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458412, 40.475113, 56.500565>,  <42.181633, 40.875431, 55.939236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458412, 40.475113, 56.500565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513107, 40.855690, 56.610878>,  <42.545925, 41.084038, 56.677067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513107, 40.855690, 56.610878>,  <42.458412, 40.475113, 56.500565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513107, 40.855690, 56.610878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305649, -0.224294, 0.925349,
		0.942274, -0.210826, 0.260138,
		0.136741, 0.951443, 0.275786,
		42.554131, 41.141125, 56.693615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792419, 40.599625, 57.205765>,  <42.458412, 40.475113, 56.500565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792419, 40.599625, 57.205765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598808, 40.941696, 57.131603>,  <42.482639, 41.146938, 57.087105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598808, 40.941696, 57.131603>,  <42.792419, 40.599625, 57.205765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598808, 40.941696, 57.131603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409210, -0.033927, 0.911810,
		0.773474, 0.517214, 0.366371,
		-0.484030, 0.855183, -0.185407,
		42.453598, 41.198250, 57.075981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007294, 41.131798, 57.644737>,  <42.792419, 40.599625, 57.205765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007294, 41.131798, 57.644737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673862, 41.329765, 57.546600>,  <42.473804, 41.448547, 57.487717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673862, 41.329765, 57.546600>,  <43.007294, 41.131798, 57.644737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673862, 41.329765, 57.546600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138874, 0.242117, 0.960257,
		0.534653, 0.834525, -0.133093,
		-0.833583, 0.494922, -0.245342,
		42.423786, 41.478241, 57.473000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882748, 41.707714, 58.088078>,  <43.007294, 41.131798, 57.644737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882748, 41.707714, 58.088078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515739, 41.652809, 57.938782>,  <42.295532, 41.619865, 57.849205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515739, 41.652809, 57.938782>,  <42.882748, 41.707714, 58.088078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515739, 41.652809, 57.938782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388084, 0.104105, 0.915725,
		-0.086838, 0.985049, -0.148788,
		-0.917524, -0.137262, -0.373241,
		42.240482, 41.611629, 57.826809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505436, 42.261871, 58.436970>,  <42.882748, 41.707714, 58.088078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505436, 42.261871, 58.436970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208569, 42.028061, 58.305813>,  <42.030449, 41.887775, 58.227119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208569, 42.028061, 58.305813>,  <42.505436, 42.261871, 58.436970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208569, 42.028061, 58.305813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519862, 0.193304, 0.832092,
		-0.422997, 0.788011, -0.447338,
		-0.742170, -0.584526, -0.327890,
		41.985916, 41.852703, 58.207447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943336, 42.597404, 58.687576>,  <42.505436, 42.261871, 58.436970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943336, 42.597404, 58.687576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797291, 42.232468, 58.613464>,  <41.709663, 42.013508, 58.568996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797291, 42.232468, 58.613464>,  <41.943336, 42.597404, 58.687576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797291, 42.232468, 58.613464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577101, 0.065641, 0.814030,
		-0.730510, 0.404139, -0.550478,
		-0.365115, -0.912339, -0.185278,
		41.687756, 41.958767, 58.557880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265839, 42.673199, 58.693733>,  <41.943336, 42.597404, 58.687576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265839, 42.673199, 58.693733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329796, 42.282860, 58.753265>,  <41.368168, 42.048656, 58.788986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329796, 42.282860, 58.753265>,  <41.265839, 42.673199, 58.693733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329796, 42.282860, 58.753265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612738, 0.020097, 0.790030,
		-0.773943, -0.217512, -0.594728,
		0.159889, -0.975851, 0.148832,
		41.377762, 41.990105, 58.797916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595707, 42.290592, 58.730175>,  <41.265839, 42.673199, 58.693733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595707, 42.290592, 58.730175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870918, 42.064568, 58.912304>,  <41.036045, 41.928951, 59.021580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870918, 42.064568, 58.912304>,  <40.595707, 42.290592, 58.730175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870918, 42.064568, 58.912304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601758, -0.093582, 0.793177,
		-0.405586, -0.819722, -0.404419,
		0.688031, -0.565065, 0.455319,
		41.077328, 41.895050, 59.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895027, 42.131130, 58.819111>,  <40.595707, 42.290592, 58.730175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895027, 42.131130, 58.819111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660416, 42.450928, 58.767273>,  <39.519650, 42.642807, 58.736172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660416, 42.450928, 58.767273>,  <39.895027, 42.131130, 58.819111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660416, 42.450928, 58.767273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454434, 0.192398, -0.869755,
		-0.670430, -0.569027, -0.476164,
		-0.586527, 0.799495, -0.129596,
		39.484459, 42.690777, 58.728394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677261, 42.070553, 58.086929>,  <39.895027, 42.131130, 58.819111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677261, 42.070553, 58.086929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612701, 42.447586, 58.203888>,  <39.573963, 42.673805, 58.274063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612701, 42.447586, 58.203888>,  <39.677261, 42.070553, 58.086929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612701, 42.447586, 58.203888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458540, 0.333982, -0.823527,
		-0.873894, 0.001156, -0.486115,
		-0.161402, 0.942579, 0.292395,
		39.564281, 42.730358, 58.291607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436245, 42.428364, 57.540115>,  <39.677261, 42.070553, 58.086929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436245, 42.428364, 57.540115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568909, 42.732193, 57.763916>,  <39.648506, 42.914490, 57.898197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568909, 42.732193, 57.763916>,  <39.436245, 42.428364, 57.540115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568909, 42.732193, 57.763916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367269, 0.442326, -0.818206,
		-0.868973, 0.476855, -0.132267,
		0.331661, 0.759577, 0.559504,
		39.668407, 42.960068, 57.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253895, 42.961449, 57.131916>,  <39.436245, 42.428364, 57.540115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253895, 42.961449, 57.131916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541847, 43.067070, 57.388680>,  <39.714619, 43.130444, 57.542736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541847, 43.067070, 57.388680>,  <39.253895, 42.961449, 57.131916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541847, 43.067070, 57.388680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423881, 0.565082, -0.707819,
		-0.549630, 0.781639, 0.294867,
		0.719883, 0.264051, 0.641908,
		39.757812, 43.146286, 57.581253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207649, 43.647278, 57.121368>,  <39.253895, 42.961449, 57.131916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207649, 43.647278, 57.121368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568642, 43.538620, 57.255081>,  <39.785236, 43.473427, 57.335308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568642, 43.538620, 57.255081>,  <39.207649, 43.647278, 57.121368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568642, 43.538620, 57.255081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430575, 0.547958, -0.717180,
		0.011646, 0.791172, 0.611483,
		0.902480, -0.271641, 0.334278,
		39.839386, 43.457127, 57.355366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679718, 44.247169, 57.008270>,  <39.207649, 43.647278, 57.121368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679718, 44.247169, 57.008270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956917, 43.968567, 57.082718>,  <40.123238, 43.801407, 57.127384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956917, 43.968567, 57.082718>,  <39.679718, 44.247169, 57.008270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956917, 43.968567, 57.082718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592572, 0.403256, -0.697312,
		0.410627, 0.593521, 0.692183,
		0.692996, -0.696503, 0.186116,
		40.164814, 43.759617, 57.138554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300011, 44.613186, 56.980152>,  <39.679718, 44.247169, 57.008270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300011, 44.613186, 56.980152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402420, 44.227066, 56.959579>,  <40.463867, 43.995392, 56.947235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402420, 44.227066, 56.959579>,  <40.300011, 44.613186, 56.980152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402420, 44.227066, 56.959579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736713, 0.229288, -0.636145,
		0.625865, 0.124977, 0.769853,
		0.256022, -0.965302, -0.051431,
		40.479225, 43.937477, 56.944149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129063, 44.596622, 57.017746>,  <40.300011, 44.613186, 56.980152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129063, 44.596622, 57.017746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005089, 44.259285, 56.842148>,  <40.930706, 44.056881, 56.736790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005089, 44.259285, 56.842148>,  <41.129063, 44.596622, 57.017746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005089, 44.259285, 56.842148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791248, 0.027205, -0.610890,
		0.527134, -0.536684, 0.658863,
		-0.309930, -0.843345, -0.438991,
		40.912109, 44.006283, 56.710449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760433, 44.199348, 56.771965>,  <41.129063, 44.596622, 57.017746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760433, 44.199348, 56.771965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457314, 44.052612, 56.556122>,  <41.275444, 43.964573, 56.426617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457314, 44.052612, 56.556122>,  <41.760433, 44.199348, 56.771965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457314, 44.052612, 56.556122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612052, -0.113023, -0.782699,
		0.226135, -0.923394, 0.310171,
		-0.757796, -0.366837, -0.539607,
		41.229973, 43.942562, 56.394241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014160, 43.597237, 56.366104>,  <41.760433, 44.199348, 56.771965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014160, 43.597237, 56.366104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684021, 43.726616, 56.180984>,  <41.485939, 43.804241, 56.069912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684021, 43.726616, 56.180984>,  <42.014160, 43.597237, 56.366104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684021, 43.726616, 56.180984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450492, -0.116900, -0.885094,
		-0.340380, -0.938998, -0.049226,
		-0.825348, 0.323444, -0.462802,
		41.436417, 43.823650, 56.042145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183498, 43.345219, 55.715919>,  <42.014160, 43.597237, 56.366104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183498, 43.345219, 55.715919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855469, 43.560669, 55.638603>,  <41.658649, 43.689938, 55.592213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855469, 43.560669, 55.638603>,  <42.183498, 43.345219, 55.715919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855469, 43.560669, 55.638603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250692, 0.034510, -0.967452,
		-0.514421, -0.841840, -0.163329,
		-0.820076, 0.538623, -0.193290,
		41.609447, 43.722256, 55.580616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015228, 43.083439, 55.114937>,  <42.183498, 43.345219, 55.715919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015228, 43.083439, 55.114937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835575, 43.440628, 55.126820>,  <41.727783, 43.654942, 55.133949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835575, 43.440628, 55.126820>,  <42.015228, 43.083439, 55.114937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835575, 43.440628, 55.126820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202683, 0.134216, -0.970003,
		-0.870170, -0.429642, -0.241271,
		-0.449136, 0.892969, 0.029709,
		41.700832, 43.708519, 55.135731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470551, 43.172676, 54.538288>,  <42.015228, 43.083439, 55.114937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470551, 43.172676, 54.538288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623299, 43.522667, 54.657349>,  <41.714947, 43.732662, 54.728786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623299, 43.522667, 54.657349>,  <41.470551, 43.172676, 54.538288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623299, 43.522667, 54.657349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351316, 0.160459, -0.922405,
		-0.854839, 0.456811, -0.246117,
		0.381873, 0.874972, 0.297651,
		41.737862, 43.785160, 54.746643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292809, 43.709778, 54.161793>,  <41.470551, 43.172676, 54.538288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292809, 43.709778, 54.161793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617271, 43.885010, 54.316772>,  <41.811947, 43.990150, 54.409760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617271, 43.885010, 54.316772>,  <41.292809, 43.709778, 54.161793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617271, 43.885010, 54.316772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210852, 0.398874, -0.892435,
		-0.545502, 0.805595, 0.231178,
		0.811153, 0.438081, 0.387448,
		41.860619, 44.016434, 54.433006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292492, 44.423260, 53.900700>,  <41.292809, 43.709778, 54.161793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292492, 44.423260, 53.900700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668701, 44.385193, 54.031151>,  <41.894428, 44.362354, 54.109421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668701, 44.385193, 54.031151>,  <41.292492, 44.423260, 53.900700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668701, 44.385193, 54.031151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333470, 0.442043, -0.832704,
		-0.064920, 0.891932, 0.447485,
		0.940523, -0.095164, 0.326130,
		41.950859, 44.356644, 54.128990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650532, 45.024445, 53.681629>,  <41.292492, 44.423260, 53.900700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650532, 45.024445, 53.681629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934769, 44.748398, 53.736477>,  <42.105309, 44.582771, 53.769386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934769, 44.748398, 53.736477>,  <41.650532, 45.024445, 53.681629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934769, 44.748398, 53.736477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485191, 0.339474, -0.805821,
		0.509563, 0.639136, 0.576065,
		0.710588, -0.690118, 0.137120,
		42.147945, 44.541363, 53.777615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260601, 45.379112, 53.635796>,  <41.650532, 45.024445, 53.681629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260601, 45.379112, 53.635796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365845, 44.999031, 53.569000>,  <42.428989, 44.770981, 53.528923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365845, 44.999031, 53.569000>,  <42.260601, 45.379112, 53.635796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365845, 44.999031, 53.569000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522840, 0.285900, -0.803057,
		0.810809, 0.123986, 0.572028,
		0.263111, -0.950205, -0.166985,
		42.444778, 44.713970, 53.518906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014610, 45.306099, 53.686893>,  <42.260601, 45.379112, 53.635796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014610, 45.306099, 53.686893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903748, 44.980606, 53.482533>,  <42.837231, 44.785309, 53.359917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903748, 44.980606, 53.482533>,  <43.014610, 45.306099, 53.686893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903748, 44.980606, 53.482533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687794, 0.203264, -0.696866,
		0.670911, -0.544539, 0.503344,
		-0.277159, -0.813733, -0.510903,
		42.820599, 44.736485, 53.329262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606525, 45.021320, 53.434223>,  <43.014610, 45.306099, 53.686893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606525, 45.021320, 53.434223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339226, 44.879013, 53.172882>,  <43.178844, 44.793629, 53.016079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339226, 44.879013, 53.172882>,  <43.606525, 45.021320, 53.434223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339226, 44.879013, 53.172882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624168, 0.209740, -0.752611,
		0.404787, -0.910736, 0.081898,
		-0.668253, -0.355765, -0.653353,
		43.138748, 44.772285, 52.976875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910099, 44.355545, 52.986633>,  <43.606525, 45.021320, 53.434223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910099, 44.355545, 52.986633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619041, 44.537102, 52.780907>,  <43.444408, 44.646034, 52.657471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619041, 44.537102, 52.780907>,  <43.910099, 44.355545, 52.986633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619041, 44.537102, 52.780907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574665, -0.006052, -0.818366,
		-0.374560, -0.891038, -0.256431,
		-0.727643, 0.453889, -0.514315,
		43.400749, 44.673267, 52.626614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962303, 44.030369, 52.367149>,  <43.910099, 44.355545, 52.986633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962303, 44.030369, 52.367149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755997, 44.358795, 52.269310>,  <43.632214, 44.555851, 52.210606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755997, 44.358795, 52.269310>,  <43.962303, 44.030369, 52.367149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755997, 44.358795, 52.269310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444486, 0.012380, -0.895700,
		-0.732404, -0.570693, -0.371340,
		-0.515767, 0.821070, -0.244598,
		43.601265, 44.605118, 52.195930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496773, 43.834682, 51.816181>,  <43.962303, 44.030369, 52.367149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496773, 43.834682, 51.816181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556610, 44.229691, 51.796444>,  <43.592510, 44.466694, 51.784603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556610, 44.229691, 51.796444>,  <43.496773, 43.834682, 51.816181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556610, 44.229691, 51.796444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334415, -0.097491, -0.937370,
		-0.930478, 0.123721, -0.344824,
		0.149589, 0.987516, -0.049339,
		43.601486, 44.525944, 51.781643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333561, 43.943859, 51.158932>,  <43.496773, 43.834682, 51.816181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333561, 43.943859, 51.158932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537216, 44.259842, 51.295609>,  <43.659409, 44.449432, 51.377613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537216, 44.259842, 51.295609>,  <43.333561, 43.943859, 51.158932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537216, 44.259842, 51.295609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483466, 0.065955, -0.872875,
		-0.712067, 0.609609, -0.348336,
		0.509138, 0.789954, 0.341689,
		43.689957, 44.496830, 51.398117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331116, 44.453400, 50.625656>,  <43.333561, 43.943859, 51.158932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331116, 44.453400, 50.625656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629440, 44.584625, 50.857567>,  <43.808434, 44.663361, 50.996716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629440, 44.584625, 50.857567>,  <43.331116, 44.453400, 50.625656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629440, 44.584625, 50.857567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478354, 0.341978, -0.808844,
		-0.463622, 0.880583, 0.098121,
		0.745810, 0.328061, 0.579779,
		43.853184, 44.683044, 51.031502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472374, 45.117432, 50.422134>,  <43.331116, 44.453400, 50.625656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472374, 45.117432, 50.422134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816887, 45.047523, 50.612984>,  <44.023594, 45.005581, 50.727493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816887, 45.047523, 50.612984>,  <43.472374, 45.117432, 50.422134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816887, 45.047523, 50.612984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504958, 0.398999, -0.765387,
		-0.056607, 0.900142, 0.431902,
		0.861286, -0.174766, 0.477120,
		44.075272, 44.995094, 50.756119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811619, 45.700638, 50.498882>,  <43.472374, 45.117432, 50.422134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811619, 45.700638, 50.498882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131195, 45.463341, 50.538376>,  <44.322941, 45.320961, 50.562073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131195, 45.463341, 50.538376>,  <43.811619, 45.700638, 50.498882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131195, 45.463341, 50.538376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480999, 0.531776, -0.697033,
		0.361008, 0.604380, 0.710210,
		0.798945, -0.593245, 0.098730,
		44.370880, 45.285366, 50.567993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385212, 46.147240, 50.609932>,  <43.811619, 45.700638, 50.498882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385212, 46.147240, 50.609932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494640, 45.795403, 50.454254>,  <44.560299, 45.584301, 50.360847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494640, 45.795403, 50.454254>,  <44.385212, 46.147240, 50.609932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494640, 45.795403, 50.454254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396816, 0.471807, -0.787360,
		0.876182, 0.060961, 0.478110,
		0.273574, -0.879592, -0.389199,
		44.576714, 45.531525, 50.337494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989998, 46.253502, 50.261971>,  <44.385212, 46.147240, 50.609932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989998, 46.253502, 50.261971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922462, 45.882401, 50.128838>,  <44.881943, 45.659740, 50.048958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922462, 45.882401, 50.128838>,  <44.989998, 46.253502, 50.261971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922462, 45.882401, 50.128838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436035, 0.232531, -0.869369,
		0.883949, -0.291909, 0.365270,
		-0.168840, -0.927749, -0.332828,
		44.871811, 45.604076, 50.028988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603302, 45.954075, 49.948662>,  <44.989998, 46.253502, 50.261971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603302, 45.954075, 49.948662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302853, 45.744362, 49.788193>,  <45.122581, 45.618534, 49.691910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302853, 45.744362, 49.788193>,  <45.603302, 45.954075, 49.948662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302853, 45.744362, 49.788193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379167, 0.154847, -0.912280,
		0.540413, -0.837347, 0.082482,
		-0.751123, -0.524283, -0.401175,
		45.077515, 45.587078, 49.667839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892216, 45.491962, 49.470928>,  <45.603302, 45.954075, 49.948662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892216, 45.491962, 49.470928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512154, 45.526497, 49.351093>,  <45.284115, 45.547218, 49.279194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512154, 45.526497, 49.351093>,  <45.892216, 45.491962, 49.470928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512154, 45.526497, 49.351093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311348, 0.212456, -0.926242,
		-0.016318, -0.973349, -0.228746,
		-0.950156, 0.086334, -0.299583,
		45.227108, 45.552399, 49.261219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975853, 45.238209, 48.855507>,  <45.892216, 45.491962, 49.470928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975853, 45.238209, 48.855507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626945, 45.433670, 48.863121>,  <45.417599, 45.550945, 48.867687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626945, 45.433670, 48.863121>,  <45.975853, 45.238209, 48.855507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626945, 45.433670, 48.863121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116717, 0.245829, -0.962260,
		-0.474887, -0.837132, -0.271464,
		-0.872273, 0.488649, 0.019033,
		45.365265, 45.580265, 48.868832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527298, 45.024632, 48.262012>,  <45.975853, 45.238209, 48.855507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527298, 45.024632, 48.262012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390015, 45.383461, 48.373344>,  <45.307644, 45.598759, 48.440144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390015, 45.383461, 48.373344>,  <45.527298, 45.024632, 48.262012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390015, 45.383461, 48.373344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122644, 0.336590, -0.933630,
		-0.931217, -0.286298, -0.225542,
		-0.343211, 0.897074, 0.278326,
		45.287052, 45.652584, 48.456841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000751, 45.164879, 47.807053>,  <45.527298, 45.024632, 48.262012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000751, 45.164879, 47.807053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108810, 45.521423, 47.952652>,  <45.173645, 45.735348, 48.040012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108810, 45.521423, 47.952652>,  <45.000751, 45.164879, 47.807053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108810, 45.521423, 47.952652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020283, 0.383244, -0.923424,
		-0.962605, 0.242079, 0.121613,
		0.270149, 0.891359, 0.364002,
		45.189854, 45.788830, 48.061852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639462, 45.677212, 47.336151>,  <45.000751, 45.164879, 47.807053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639462, 45.677212, 47.336151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911316, 45.900818, 47.526134>,  <45.074429, 46.034981, 47.640125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911316, 45.900818, 47.526134>,  <44.639462, 45.677212, 47.336151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911316, 45.900818, 47.526134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073880, 0.592028, -0.802524,
		-0.729816, 0.580518, 0.361065,
		0.679640, 0.559019, 0.474960,
		45.115208, 46.068523, 47.668621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542271, 46.396469, 47.302258>,  <44.639462, 45.677212, 47.336151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542271, 46.396469, 47.302258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939556, 46.405815, 47.347839>,  <45.177925, 46.411423, 47.375191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939556, 46.405815, 47.347839>,  <44.542271, 46.396469, 47.302258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939556, 46.405815, 47.347839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063223, 0.713875, -0.697413,
		-0.097649, 0.699883, 0.707551,
		0.993211, 0.023368, 0.113958,
		45.237518, 46.412827, 47.382027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710896, 47.095287, 47.108521>,  <44.542271, 46.396469, 47.302258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710896, 47.095287, 47.108521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074486, 46.928986, 47.096428>,  <45.292641, 46.829205, 47.089172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074486, 46.928986, 47.096428>,  <44.710896, 47.095287, 47.108521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074486, 46.928986, 47.096428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277088, 0.656810, -0.701301,
		0.311424, 0.629089, 0.712224,
		0.908976, -0.415751, -0.030233,
		45.347179, 46.804260, 47.087357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072826, 47.635284, 46.938526>,  <44.710896, 47.095287, 47.108521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072826, 47.635284, 46.938526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306667, 47.323540, 46.848331>,  <45.446972, 47.136494, 46.794216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306667, 47.323540, 46.848331>,  <45.072826, 47.635284, 46.938526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306667, 47.323540, 46.848331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293257, 0.462115, -0.836929,
		0.756466, 0.423146, 0.498705,
		0.584602, -0.779357, -0.225484,
		45.482048, 47.089733, 46.780685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730427, 47.934963, 46.671795>,  <45.072826, 47.635284, 46.938526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730427, 47.934963, 46.671795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713127, 47.556580, 46.543236>,  <45.702747, 47.329548, 46.466103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713127, 47.556580, 46.543236>,  <45.730427, 47.934963, 46.671795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713127, 47.556580, 46.543236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079316, 0.317428, -0.944959,
		0.995911, -0.066359, 0.061302,
		-0.043247, -0.945958, -0.321393,
		45.700153, 47.272793, 46.446819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351967, 47.733223, 46.331516>,  <45.730427, 47.934963, 46.671795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351967, 47.733223, 46.331516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102066, 47.463593, 46.173878>,  <45.952126, 47.301815, 46.079296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102066, 47.463593, 46.173878>,  <46.351967, 47.733223, 46.331516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102066, 47.463593, 46.173878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204622, 0.345735, -0.915749,
		0.753533, -0.652758, -0.078070,
		-0.624754, -0.674073, -0.394092,
		45.914639, 47.261372, 46.055649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877735, 48.348980, 46.089447>,  <46.351967, 47.733223, 46.331516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877735, 48.348980, 46.089447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743347, 48.716331, 46.173077>,  <45.662716, 48.936741, 46.223255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743347, 48.716331, 46.173077>,  <45.877735, 48.348980, 46.089447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743347, 48.716331, 46.173077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419777, 0.344710, -0.839620,
		-0.843157, -0.194320, -0.501324,
		-0.335966, 0.918376, 0.209074,
		45.642559, 48.991844, 46.235798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.319565, 41.541233, 50.548340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.554329, 41.221497, 50.599861>,  <40.695187, 41.029655, 50.630775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.554329, 41.221497, 50.599861>,  <40.319565, 41.541233, 50.548340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554329, 41.221497, 50.599861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613777, 0.335505, -0.714643,
		0.528027, 0.498490, 0.687528,
		0.586911, -0.799340, 0.128806,
		40.730404, 40.981693, 50.638504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957024, 41.850353, 50.579563>,  <40.319565, 41.541233, 50.548340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957024, 41.850353, 50.579563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.989174, 41.463043, 50.484917>,  <41.008465, 41.230656, 50.428131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.989174, 41.463043, 50.484917>,  <40.957024, 41.850353, 50.579563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989174, 41.463043, 50.484917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718947, 0.220739, -0.659082,
		0.690401, -0.117135, 0.713881,
		0.080380, -0.968274, -0.236612,
		41.013287, 41.172562, 50.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764950, 41.659725, 50.578575>,  <40.957024, 41.850353, 50.579563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764950, 41.659725, 50.578575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.567047, 41.403580, 50.343578>,  <41.448307, 41.249893, 50.202579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.567047, 41.403580, 50.343578>,  <41.764950, 41.659725, 50.578575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567047, 41.403580, 50.343578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723186, 0.071485, -0.686944,
		0.481893, -0.764735, 0.427737,
		-0.494754, -0.640367, -0.587494,
		41.418621, 41.211472, 50.167332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271725, 41.388054, 50.094509>,  <41.764950, 41.659725, 50.578575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271725, 41.388054, 50.094509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.951229, 41.249748, 49.899181>,  <41.758930, 41.166763, 49.781982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.951229, 41.249748, 49.899181>,  <42.271725, 41.388054, 50.094509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951229, 41.249748, 49.899181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504888, 0.047266, -0.861890,
		0.321094, -0.937129, 0.136702,
		-0.801241, -0.345767, -0.488322,
		41.710857, 41.146019, 49.752686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515938, 40.849266, 49.674557>,  <42.271725, 41.388054, 50.094509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515938, 40.849266, 49.674557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.166992, 40.966331, 49.517933>,  <41.957623, 41.036572, 49.423958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.166992, 40.966331, 49.517933>,  <42.515938, 40.849266, 49.674557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166992, 40.966331, 49.517933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415425, 0.021620, -0.909370,
		-0.257674, -0.955971, -0.140440,
		-0.872368, 0.292663, -0.391564,
		41.905281, 41.054131, 49.400463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337204, 40.419014, 49.089809>,  <42.515938, 40.849266, 49.674557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337204, 40.419014, 49.089809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.142639, 40.763260, 49.029476>,  <42.025902, 40.969807, 48.993275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.142639, 40.763260, 49.029476>,  <42.337204, 40.419014, 49.089809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142639, 40.763260, 49.029476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397436, 0.064195, -0.915382,
		-0.778107, -0.505197, -0.373263,
		-0.486410, 0.860613, -0.150833,
		41.996716, 41.021442, 48.984226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963619, 40.444466, 48.428272>,  <42.337204, 40.419014, 49.089809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963619, 40.444466, 48.428272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.998074, 40.830132, 48.528648>,  <42.018745, 41.061531, 48.588875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.998074, 40.830132, 48.528648>,  <41.963619, 40.444466, 48.428272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998074, 40.830132, 48.528648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268570, 0.220084, -0.937781,
		-0.959401, 0.148173, -0.239988,
		0.086136, 0.964162, 0.250943,
		42.023914, 41.119381, 48.603931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792786, 40.838539, 47.805698>,  <41.963619, 40.444466, 48.428272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792786, 40.838539, 47.805698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.967781, 41.103905, 48.048512>,  <42.072777, 41.263123, 48.194199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.967781, 41.103905, 48.048512>,  <41.792786, 40.838539, 47.805698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967781, 41.103905, 48.048512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418627, 0.447188, -0.790426,
		-0.795839, 0.599919, -0.082086,
		0.437484, 0.663415, 0.607032,
		42.099026, 41.302929, 48.230621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500351, 41.424534, 47.613140>,  <41.792786, 40.838539, 47.805698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500351, 41.424534, 47.613140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.859531, 41.503571, 47.770435>,  <42.075039, 41.550995, 47.864815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.859531, 41.503571, 47.770435>,  <41.500351, 41.424534, 47.613140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859531, 41.503571, 47.770435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258524, 0.486289, -0.834678,
		-0.356159, 0.851163, 0.385580,
		0.897951, 0.197597, 0.393243,
		42.128918, 41.562851, 47.888409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642540, 42.005493, 47.341228>,  <41.500351, 41.424534, 47.613140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642540, 42.005493, 47.341228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.997746, 41.897903, 47.490406>,  <42.210869, 41.833347, 47.579914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.997746, 41.897903, 47.490406>,  <41.642540, 42.005493, 47.341228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997746, 41.897903, 47.490406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459301, 0.557511, -0.691537,
		-0.021915, 0.785387, 0.618616,
		0.888010, -0.268976, 0.372947,
		42.264149, 41.817211, 47.602291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997658, 42.552155, 47.274933>,  <41.642540, 42.005493, 47.341228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997658, 42.552155, 47.274933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.277664, 42.267540, 47.299255>,  <42.445667, 42.096771, 47.313850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.277664, 42.267540, 47.299255>,  <41.997658, 42.552155, 47.274933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277664, 42.267540, 47.299255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581516, 0.518523, -0.626876,
		0.414515, 0.474182, 0.776743,
		0.700012, -0.711537, 0.060809,
		42.487667, 42.054077, 47.317497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672451, 42.963566, 47.231865>,  <41.997658, 42.552155, 47.274933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672451, 42.963566, 47.231865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.754700, 42.586609, 47.126320>,  <42.804050, 42.360435, 47.062992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.754700, 42.586609, 47.126320>,  <42.672451, 42.963566, 47.231865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754700, 42.586609, 47.126320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747538, 0.325261, -0.579131,
		0.631590, -0.078161, 0.771353,
		0.205625, -0.942388, -0.263860,
		42.816387, 42.303894, 47.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306026, 42.926243, 47.238564>,  <42.672451, 42.963566, 47.231865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306026, 42.926243, 47.238564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.231575, 42.594925, 47.027176>,  <43.186905, 42.396133, 46.900345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.231575, 42.594925, 47.027176>,  <43.306026, 42.926243, 47.238564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231575, 42.594925, 47.027176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765091, 0.215267, -0.606874,
		0.616434, -0.517285, 0.593655,
		-0.186132, -0.828297, -0.528468,
		43.175735, 42.346436, 46.868637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971230, 42.656425, 47.029629>,  <43.306026, 42.926243, 47.238564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971230, 42.656425, 47.029629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.700539, 42.503174, 46.778149>,  <43.538124, 42.411224, 46.627262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.700539, 42.503174, 46.778149>,  <43.971230, 42.656425, 47.029629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700539, 42.503174, 46.778149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614647, 0.176073, -0.768900,
		0.405282, -0.906760, 0.116335,
		-0.676724, -0.383126, -0.628697,
		43.497520, 42.388237, 46.589539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362038, 42.305740, 46.716721>,  <43.971230, 42.656425, 47.029629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362038, 42.305740, 46.716721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.041046, 42.374275, 46.488102>,  <43.848450, 42.415398, 46.350929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.041046, 42.374275, 46.488102>,  <44.362038, 42.305740, 46.716721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041046, 42.374275, 46.488102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595985, 0.183988, -0.781633,
		-0.028766, -0.967880, -0.249762,
		-0.802480, 0.171339, -0.571549,
		43.800301, 42.425678, 46.316639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544563, 41.942871, 46.107792>,  <44.362038, 42.305740, 46.716721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544563, 41.942871, 46.107792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.277946, 42.226372, 46.015369>,  <44.117977, 42.396473, 45.959915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.277946, 42.226372, 46.015369>,  <44.544563, 41.942871, 46.107792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277946, 42.226372, 46.015369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562009, 0.274132, -0.780383,
		-0.489760, -0.650015, -0.581047,
		-0.666544, 0.708754, -0.231055,
		44.077984, 42.438999, 45.946053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528324, 41.937012, 45.399345>,  <44.544563, 41.942871, 46.107792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528324, 41.937012, 45.399345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.369305, 42.293587, 45.486340>,  <44.273895, 42.507530, 45.538536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.369305, 42.293587, 45.486340>,  <44.528324, 41.937012, 45.399345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369305, 42.293587, 45.486340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550667, 0.421375, -0.720561,
		-0.733979, -0.166691, -0.658399,
		-0.397544, 0.891435, 0.217489,
		44.250042, 42.561016, 45.551586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661201, 42.283295, 44.785175>,  <44.528324, 41.937012, 45.399345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661201, 42.283295, 44.785175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.542778, 42.597626, 45.002365>,  <44.471725, 42.786224, 45.132679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.542778, 42.597626, 45.002365>,  <44.661201, 42.283295, 44.785175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542778, 42.597626, 45.002365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562589, 0.602852, -0.565741,
		-0.771908, 0.137976, -0.620581,
		-0.296060, 0.785832, 0.542970,
		44.453960, 42.833374, 45.165257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358879, 42.750603, 44.397648>,  <44.661201, 42.283295, 44.785175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358879, 42.750603, 44.397648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.485764, 42.978470, 44.700928>,  <44.561893, 43.115189, 44.882896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.485764, 42.978470, 44.700928>,  <44.358879, 42.750603, 44.397648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485764, 42.978470, 44.700928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549247, 0.541398, -0.636566,
		-0.773114, 0.618363, -0.141148,
		0.317212, 0.569663, 0.758196,
		44.580929, 43.149368, 44.928387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417248, 43.455334, 44.125248>,  <44.358879, 42.750603, 44.397648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417248, 43.455334, 44.125248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.653214, 43.453613, 44.448231>,  <44.794792, 43.452583, 44.642021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.653214, 43.453613, 44.448231>,  <44.417248, 43.455334, 44.125248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653214, 43.453613, 44.448231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685277, 0.531570, -0.497825,
		-0.427079, 0.847004, 0.316526,
		0.589915, -0.004297, 0.807454,
		44.830189, 43.452324, 44.690468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626366, 44.157349, 44.099411>,  <44.417248, 43.455334, 44.125248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626366, 44.157349, 44.099411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.870522, 44.022659, 44.386200>,  <45.017014, 43.941845, 44.558273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.870522, 44.022659, 44.386200>,  <44.626366, 44.157349, 44.099411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870522, 44.022659, 44.386200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655264, 0.723200, -0.218201,
		-0.445039, 0.602991, 0.662074,
		0.610385, -0.336725, 0.716970,
		45.053638, 43.921642, 44.601292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851997, 44.650188, 44.638687>,  <44.626366, 44.157349, 44.099411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851997, 44.650188, 44.638687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.136742, 44.370331, 44.614147>,  <45.307587, 44.202415, 44.599422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.136742, 44.370331, 44.614147>,  <44.851997, 44.650188, 44.638687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136742, 44.370331, 44.614147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674462, 0.705363, -0.218091,
		0.195859, 0.113873, 0.973998,
		0.711857, -0.699640, -0.061349,
		45.350300, 44.160439, 44.595741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206806, 44.249760, 44.801491>,  <44.851997, 44.650188, 44.638687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206806, 44.249760, 44.801491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.076553, 44.622253, 44.736065>,  <43.998402, 44.845749, 44.696808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.076553, 44.622253, 44.736065>,  <44.206806, 44.249760, 44.801491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076553, 44.622253, 44.736065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850148, -0.212675, 0.481682,
		0.413774, 0.295911, 0.860946,
		-0.325637, 0.931239, -0.163569,
		43.978863, 44.901627, 44.686993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041969, 44.598606, 45.440815>,  <44.206806, 44.249760, 44.801491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041969, 44.598606, 45.440815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.823826, 44.782066, 45.160179>,  <43.692940, 44.892143, 44.991798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.823826, 44.782066, 45.160179>,  <44.041969, 44.598606, 45.440815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823826, 44.782066, 45.160179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815752, -0.097991, 0.570041,
		0.192703, 0.883196, 0.427588,
		-0.545357, 0.458654, -0.701586,
		43.660217, 44.919662, 44.949703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649078, 45.157188, 45.797073>,  <44.041969, 44.598606, 45.440815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649078, 45.157188, 45.797073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.446503, 45.064323, 45.464901>,  <43.324959, 45.008606, 45.265594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.446503, 45.064323, 45.464901>,  <43.649078, 45.157188, 45.797073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446503, 45.064323, 45.464901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812592, -0.193695, 0.549706,
		-0.288470, 0.953197, -0.090555,
		-0.506438, -0.232158, -0.830436,
		43.294571, 44.994675, 45.215771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016289, 45.383194, 45.902630>,  <43.649078, 45.157188, 45.797073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016289, 45.383194, 45.902630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.912605, 45.148628, 45.595665>,  <42.850395, 45.007889, 45.411484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.912605, 45.148628, 45.595665>,  <43.016289, 45.383194, 45.902630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912605, 45.148628, 45.595665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820456, -0.285521, 0.495307,
		-0.509569, 0.758020, -0.407118,
		-0.259212, -0.586416, -0.767415,
		42.834843, 44.972702, 45.365440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337410, 45.535892, 45.806000>,  <43.016289, 45.383194, 45.902630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337410, 45.535892, 45.806000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.404579, 45.190262, 45.616192>,  <42.444881, 44.982883, 45.502308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.404579, 45.190262, 45.616192>,  <42.337410, 45.535892, 45.806000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404579, 45.190262, 45.616192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844319, -0.374530, 0.383213,
		-0.508849, 0.336299, -0.792449,
		0.167922, -0.864078, -0.474523,
		42.454956, 44.931038, 45.473835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689934, 45.394150, 45.452934>,  <42.337410, 45.535892, 45.806000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689934, 45.394150, 45.452934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.868813, 45.036835, 45.471039>,  <41.976139, 44.822445, 45.481903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.868813, 45.036835, 45.471039>,  <41.689934, 45.394150, 45.452934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868813, 45.036835, 45.471039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842836, -0.403916, 0.355640,
		-0.299408, -0.197188, -0.933526,
		0.447194, -0.893291, 0.045262,
		42.002972, 44.768848, 45.484615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133667, 44.884209, 45.370544>,  <41.689934, 45.394150, 45.452934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133667, 44.884209, 45.370544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.417953, 44.647491, 45.522686>,  <41.588524, 44.505463, 45.613972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.417953, 44.647491, 45.522686>,  <41.133667, 44.884209, 45.370544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417953, 44.647491, 45.522686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681193, -0.443904, 0.582173,
		-0.175681, -0.672855, -0.718611,
		0.710712, -0.591790, 0.380359,
		41.631168, 44.469955, 45.636795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815514, 44.342381, 45.490665>,  <41.133667, 44.884209, 45.370544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815514, 44.342381, 45.490665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.126812, 44.274788, 45.732586>,  <41.313591, 44.234234, 45.877739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.126812, 44.274788, 45.732586>,  <40.815514, 44.342381, 45.490665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126812, 44.274788, 45.732586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626459, -0.275487, 0.729148,
		0.043403, -0.946337, -0.320255,
		0.778245, -0.168980, 0.604798,
		41.360287, 44.224094, 45.914024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619221, 43.761326, 45.803169>,  <40.815514, 44.342381, 45.490665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619221, 43.761326, 45.803169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895935, 43.926865, 46.039867>,  <41.061962, 44.026188, 46.181885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895935, 43.926865, 46.039867>,  <40.619221, 43.761326, 45.803169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895935, 43.926865, 46.039867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527731, -0.269592, 0.805494,
		0.492883, -0.869511, 0.031902,
		0.691785, 0.413850, 0.591745,
		41.103470, 44.051018, 46.217392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784489, 43.294342, 46.337399>,  <40.619221, 43.761326, 45.803169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784489, 43.294342, 46.337399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.902695, 43.649345, 46.478817>,  <40.973618, 43.862347, 46.563667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.902695, 43.649345, 46.478817>,  <40.784489, 43.294342, 46.337399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902695, 43.649345, 46.478817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458874, -0.192726, 0.867348,
		0.837919, -0.418545, 0.350303,
		0.295512, 0.887512, 0.353548,
		40.991348, 43.915600, 46.584881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294567, 43.191017, 47.020958>,  <40.784489, 43.294342, 46.337399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294567, 43.191017, 47.020958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104507, 43.542976, 47.019257>,  <40.990471, 43.754150, 47.018238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104507, 43.542976, 47.019257>,  <41.294567, 43.191017, 47.020958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104507, 43.542976, 47.019257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408117, -0.216098, 0.886985,
		0.779537, 0.423181, 0.461778,
		-0.475145, 0.879897, -0.004251,
		40.961964, 43.806946, 47.017982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415516, 43.483303, 47.700550>,  <41.294567, 43.191017, 47.020958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415516, 43.483303, 47.700550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120647, 43.716805, 47.564430>,  <40.943726, 43.856907, 47.482758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120647, 43.716805, 47.564430>,  <41.415516, 43.483303, 47.700550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120647, 43.716805, 47.564430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482481, -0.102161, 0.869928,
		0.473061, 0.805476, 0.356961,
		-0.737174, 0.583756, -0.340299,
		40.899494, 43.891930, 47.462341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277760, 44.075104, 48.144917>,  <41.415516, 43.483303, 47.700550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277760, 44.075104, 48.144917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946812, 43.993805, 47.935478>,  <40.748241, 43.945026, 47.809814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946812, 43.993805, 47.935478>,  <41.277760, 44.075104, 48.144917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946812, 43.993805, 47.935478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521863, -0.066480, 0.850435,
		-0.207654, 0.976869, -0.051061,
		-0.827368, -0.203243, -0.523597,
		40.698601, 43.932831, 47.778400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701889, 44.608997, 48.293304>,  <41.277760, 44.075104, 48.144917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701889, 44.608997, 48.293304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.530548, 44.262527, 48.190346>,  <40.427742, 44.054646, 48.128571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.530548, 44.262527, 48.190346>,  <40.701889, 44.608997, 48.293304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530548, 44.262527, 48.190346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494115, -0.013961, 0.869285,
		-0.756549, 0.499541, -0.422011,
		-0.428351, -0.866178, -0.257393,
		40.402042, 44.002674, 48.113129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073006, 44.789169, 48.454098>,  <40.701889, 44.608997, 48.293304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073006, 44.789169, 48.454098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128860, 44.393089, 48.453178>,  <40.162373, 44.155441, 48.452625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128860, 44.393089, 48.453178>,  <40.073006, 44.789169, 48.454098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128860, 44.393089, 48.453178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424125, -0.061907, 0.903485,
		-0.894774, -0.125181, -0.428613,
		0.139633, -0.990201, -0.002300,
		40.170750, 44.096027, 48.452488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521935, 44.608566, 48.722164>,  <40.073006, 44.789169, 48.454098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521935, 44.608566, 48.722164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.736080, 44.274597, 48.773201>,  <39.864567, 44.074215, 48.803822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.736080, 44.274597, 48.773201>,  <39.521935, 44.608566, 48.722164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736080, 44.274597, 48.773201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390046, -0.110407, 0.914152,
		-0.749163, -0.539174, -0.384769,
		0.535368, -0.834926, 0.127590,
		39.896690, 44.024120, 48.811478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216774, 44.332951, 49.205112>,  <39.521935, 44.608566, 48.722164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216774, 44.332951, 49.205112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538849, 44.100487, 49.252319>,  <39.732094, 43.961010, 49.280643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538849, 44.100487, 49.252319>,  <39.216774, 44.332951, 49.205112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538849, 44.100487, 49.252319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317957, -0.255095, 0.913143,
		-0.500578, -0.772773, -0.390183,
		0.805186, -0.581161, 0.118013,
		39.780403, 43.926140, 49.287724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930923, 43.621731, 49.459320>,  <39.216774, 44.332951, 49.205112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930923, 43.621731, 49.459320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314236, 43.664062, 49.565521>,  <39.544224, 43.689461, 49.629242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314236, 43.664062, 49.565521>,  <38.930923, 43.621731, 49.459320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314236, 43.664062, 49.565521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194489, -0.439261, 0.877054,
		0.209440, -0.892105, -0.400355,
		0.958284, 0.105825, 0.265503,
		39.601723, 43.695808, 49.645172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.229931, 42.815453, 49.935436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480915, 43.116745, 50.014374>,  <39.631504, 43.297520, 50.061737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480915, 43.116745, 50.014374>,  <39.229931, 42.815453, 49.935436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480915, 43.116745, 50.014374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186217, -0.391245, 0.901250,
		0.756057, -0.528746, -0.385753,
		0.627456, 0.753230, 0.197342,
		39.669151, 43.342712, 50.073578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565144, 42.499332, 50.366219>,  <39.229931, 42.815453, 49.935436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565144, 42.499332, 50.366219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609299, 42.889870, 50.440578>,  <39.635792, 43.124191, 50.485195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609299, 42.889870, 50.440578>,  <39.565144, 42.499332, 50.366219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609299, 42.889870, 50.440578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223178, -0.206621, 0.952628,
		0.968507, -0.063670, -0.240708,
		0.110390, 0.976347, 0.185905,
		39.642414, 43.182774, 50.496349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263203, 42.509850, 50.588230>,  <39.565144, 42.499332, 50.366219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263203, 42.509850, 50.588230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.105141, 42.850662, 50.725571>,  <40.010303, 43.055149, 50.807976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.105141, 42.850662, 50.725571>,  <40.263203, 42.509850, 50.588230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105141, 42.850662, 50.725571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040445, -0.357268, 0.933126,
		0.917723, 0.382618, 0.106717,
		-0.395157, 0.852035, 0.343348,
		39.986595, 43.106274, 50.828575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698551, 42.811626, 51.070271>,  <40.263203, 42.509850, 50.588230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698551, 42.811626, 51.070271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.327187, 42.939262, 51.146412>,  <40.104366, 43.015842, 51.192097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.327187, 42.939262, 51.146412>,  <40.698551, 42.811626, 51.070271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327187, 42.939262, 51.146412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054430, -0.389992, 0.919208,
		0.367548, 0.863764, 0.344704,
		-0.928411, 0.319090, 0.190355,
		40.048664, 43.034988, 51.203518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713074, 43.055534, 51.712856>,  <40.698551, 42.811626, 51.070271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713074, 43.055534, 51.712856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.316734, 43.029442, 51.665604>,  <40.078930, 43.013786, 51.637253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.316734, 43.029442, 51.665604>,  <40.713074, 43.055534, 51.712856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316734, 43.029442, 51.665604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072000, -0.484848, 0.871630,
		-0.114130, 0.872163, 0.475717,
		-0.990853, -0.065227, -0.118132,
		40.019478, 43.009872, 51.630165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429268, 43.174114, 52.321861>,  <40.713074, 43.055534, 51.712856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429268, 43.174114, 52.321861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107998, 42.986549, 52.174877>,  <39.915234, 42.874008, 52.086689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107998, 42.986549, 52.174877>,  <40.429268, 43.174114, 52.321861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107998, 42.986549, 52.174877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172483, -0.407351, 0.896836,
		-0.570225, 0.783698, 0.246295,
		-0.803177, -0.468917, -0.367456,
		39.867046, 42.845875, 52.064640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018440, 43.357460, 52.715340>,  <40.429268, 43.174114, 52.321861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018440, 43.357460, 52.715340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862297, 43.022408, 52.562504>,  <39.768612, 42.821377, 52.470802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862297, 43.022408, 52.562504>,  <40.018440, 43.357460, 52.715340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862297, 43.022408, 52.562504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309964, -0.271217, 0.911243,
		-0.866916, 0.474144, -0.153764,
		-0.390357, -0.837633, -0.382090,
		39.745190, 42.771118, 52.447876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292191, 43.288593, 52.863800>,  <40.018440, 43.357460, 52.715340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292191, 43.288593, 52.863800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432964, 42.917633, 52.813103>,  <39.517429, 42.695057, 52.782684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432964, 42.917633, 52.813103>,  <39.292191, 43.288593, 52.863800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432964, 42.917633, 52.813103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412011, -0.275072, 0.868667,
		-0.840469, -0.253493, -0.478908,
		0.351936, -0.927403, -0.126748,
		39.538544, 42.639412, 52.775078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733028, 42.850269, 52.983391>,  <39.292191, 43.288593, 52.863800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733028, 42.850269, 52.983391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018143, 42.571342, 53.013565>,  <39.189209, 42.403988, 53.031670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018143, 42.571342, 53.013565>,  <38.733028, 42.850269, 52.983391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018143, 42.571342, 53.013565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385074, -0.299171, 0.873049,
		-0.586224, -0.651342, -0.481762,
		0.712783, -0.697316, 0.075433,
		39.231979, 42.362148, 53.036194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389412, 42.221954, 53.058918>,  <38.733028, 42.850269, 52.983391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389412, 42.221954, 53.058918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.759407, 42.174240, 53.203232>,  <38.981403, 42.145611, 53.289822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.759407, 42.174240, 53.203232>,  <38.389412, 42.221954, 53.058918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759407, 42.174240, 53.203232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374960, -0.440569, 0.815662,
		0.061658, -0.889758, -0.452248,
		0.924988, -0.119283, 0.360788,
		39.036903, 42.138454, 53.311470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390556, 41.598877, 53.405132>,  <38.389412, 42.221954, 53.058918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390556, 41.598877, 53.405132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.704983, 41.782776, 53.570412>,  <38.893639, 41.893116, 53.669579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.704983, 41.782776, 53.570412>,  <38.390556, 41.598877, 53.405132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704983, 41.782776, 53.570412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227778, -0.405983, 0.885040,
		0.574644, -0.789818, -0.214411,
		0.786068, 0.459744, 0.413199,
		38.940804, 41.920700, 53.694370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368416, 41.344810, 54.071491>,  <38.390556, 41.598877, 53.405132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368416, 41.344810, 54.071491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652149, 41.620605, 54.130081>,  <38.822388, 41.786083, 54.165234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652149, 41.620605, 54.130081>,  <38.368416, 41.344810, 54.071491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652149, 41.620605, 54.130081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103631, -0.103534, 0.989212,
		0.697217, -0.716858, -0.001987,
		0.709330, 0.689489, 0.146474,
		38.864948, 41.827454, 54.174023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905537, 41.039185, 54.593956>,  <38.368416, 41.344810, 54.071491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905537, 41.039185, 54.593956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942245, 41.435616, 54.632641>,  <38.964272, 41.673473, 54.655849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942245, 41.435616, 54.632641>,  <38.905537, 41.039185, 54.593956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942245, 41.435616, 54.632641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161020, -0.081070, 0.983616,
		0.982675, -0.105841, 0.152143,
		0.091772, 0.991073, 0.096708,
		38.969776, 41.732937, 54.661652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438999, 41.167629, 55.039471>,  <38.905537, 41.039185, 54.593956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438999, 41.167629, 55.039471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184479, 41.476166, 55.044491>,  <39.031765, 41.661285, 55.047504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184479, 41.476166, 55.044491>,  <39.438999, 41.167629, 55.039471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184479, 41.476166, 55.044491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201018, -0.181494, 0.962627,
		0.744789, 0.609999, 0.270538,
		-0.636302, 0.771338, 0.012554,
		38.993587, 41.707565, 55.048256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514912, 41.409454, 55.692593>,  <39.438999, 41.167629, 55.039471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514912, 41.409454, 55.692593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182747, 41.598213, 55.574112>,  <38.983448, 41.711468, 55.503025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182747, 41.598213, 55.574112>,  <39.514912, 41.409454, 55.692593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182747, 41.598213, 55.574112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476070, -0.324795, 0.817230,
		0.289442, 0.819648, 0.494368,
		-0.830410, 0.471895, -0.296200,
		38.933624, 41.739780, 55.485252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391098, 41.975937, 56.191277>,  <39.514912, 41.409454, 55.692593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391098, 41.975937, 56.191277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040085, 41.904991, 56.013077>,  <38.829475, 41.862423, 55.906158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040085, 41.904991, 56.013077>,  <39.391098, 41.975937, 56.191277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040085, 41.904991, 56.013077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447494, -0.030869, 0.893754,
		-0.172276, 0.983660, -0.052282,
		-0.877537, -0.177369, -0.445500,
		38.776825, 41.851780, 55.879425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908421, 42.322674, 56.543381>,  <39.391098, 41.975937, 56.191277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908421, 42.322674, 56.543381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.690208, 42.042091, 56.359917>,  <38.559280, 41.873741, 56.249840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.690208, 42.042091, 56.359917>,  <38.908421, 42.322674, 56.543381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690208, 42.042091, 56.359917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464428, -0.202536, 0.862140,
		-0.697645, 0.683333, -0.215285,
		-0.545526, -0.701452, -0.458657,
		38.526550, 41.831657, 56.222321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206795, 42.452709, 56.715149>,  <38.908421, 42.322674, 56.543381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206795, 42.452709, 56.715149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234291, 42.070938, 56.598984>,  <38.250790, 41.841877, 56.529285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234291, 42.070938, 56.598984>,  <38.206795, 42.452709, 56.715149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234291, 42.070938, 56.598984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574987, -0.275795, 0.770278,
		-0.815270, 0.114031, -0.567743,
		0.068745, -0.954429, -0.290414,
		38.254913, 41.784611, 56.511860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444016, 42.076683, 56.793709>,  <38.206795, 42.452709, 56.715149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444016, 42.076683, 56.793709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742252, 41.810669, 56.776619>,  <37.921192, 41.651062, 56.766365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742252, 41.810669, 56.776619>,  <37.444016, 42.076683, 56.793709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742252, 41.810669, 56.776619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331533, -0.425783, 0.841900,
		-0.578085, -0.613546, -0.537940,
		0.745590, -0.665034, -0.042728,
		37.965931, 41.611160, 56.763802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086594, 41.535694, 57.038601>,  <37.444016, 42.076683, 56.793709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086594, 41.535694, 57.038601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474365, 41.442703, 57.069996>,  <37.707027, 41.386909, 57.088833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474365, 41.442703, 57.069996>,  <37.086594, 41.535694, 57.038601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474365, 41.442703, 57.069996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181829, -0.465892, 0.865958,
		-0.164747, -0.853757, -0.493921,
		0.969431, -0.232473, 0.078483,
		37.765194, 41.372963, 57.093540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061012, 40.954884, 57.328533>,  <37.086594, 41.535694, 57.038601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061012, 40.954884, 57.328533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445160, 41.036118, 57.404892>,  <37.675648, 41.084858, 57.450706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445160, 41.036118, 57.404892>,  <37.061012, 40.954884, 57.328533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445160, 41.036118, 57.404892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134580, -0.261916, 0.955661,
		0.244076, -0.943482, -0.224207,
		0.960372, 0.203081, 0.190901,
		37.733273, 41.097042, 57.462162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380554, 40.371117, 57.715866>,  <37.061012, 40.954884, 57.328533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380554, 40.371117, 57.715866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622578, 40.682198, 57.784081>,  <37.767792, 40.868847, 57.825008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622578, 40.682198, 57.784081>,  <37.380554, 40.371117, 57.715866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622578, 40.682198, 57.784081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163337, -0.088390, 0.982603,
		0.779247, -0.622387, 0.073547,
		0.605058, 0.777703, 0.170537,
		37.804096, 40.915508, 57.835243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851177, 40.215240, 58.312862>,  <37.380554, 40.371117, 57.715866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851177, 40.215240, 58.312862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782101, 40.607811, 58.279465>,  <37.740654, 40.843353, 58.259426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782101, 40.607811, 58.279465>,  <37.851177, 40.215240, 58.312862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782101, 40.607811, 58.279465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066768, 0.072912, 0.995101,
		0.982711, 0.177419, 0.052937,
		-0.172690, 0.981431, -0.083497,
		37.730293, 40.902241, 58.254417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701347, 39.561508, 58.324757>,  <37.851177, 40.215240, 58.312862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701347, 39.561508, 58.324757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.980412, 39.275429, 58.341579>,  <38.147850, 39.103783, 58.351673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.980412, 39.275429, 58.341579>,  <37.701347, 39.561508, 58.324757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980412, 39.275429, 58.341579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177636, -0.229555, -0.956948,
		0.694060, 0.660151, -0.287195,
		0.697657, -0.715196, 0.042059,
		38.189709, 39.060871, 58.354198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286095, 39.752247, 57.914459>,  <37.701347, 39.561508, 58.324757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286095, 39.752247, 57.914459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294548, 39.353020, 57.937813>,  <38.299622, 39.113483, 57.951824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294548, 39.353020, 57.937813>,  <38.286095, 39.752247, 57.914459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294548, 39.353020, 57.937813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176573, -0.053749, -0.982819,
		0.984060, 0.031080, 0.175097,
		0.021135, -0.998071, 0.058380,
		38.300888, 39.053600, 57.955326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933220, 39.612762, 57.631187>,  <38.286095, 39.752247, 57.914459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933220, 39.612762, 57.631187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.757622, 39.253494, 57.621571>,  <38.652264, 39.037933, 57.615799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.757622, 39.253494, 57.621571>,  <38.933220, 39.612762, 57.631187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757622, 39.253494, 57.621571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333087, -0.137830, -0.932768,
		0.834467, -0.417491, 0.359674,
		-0.438996, -0.898167, -0.024047,
		38.625923, 38.984043, 57.614357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489353, 39.167206, 57.568005>,  <38.933220, 39.612762, 57.631187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489353, 39.167206, 57.568005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147339, 39.030289, 57.412186>,  <38.942131, 38.948139, 57.318695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147339, 39.030289, 57.412186>,  <39.489353, 39.167206, 57.568005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147339, 39.030289, 57.412186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479488, -0.235785, -0.845279,
		0.197485, -0.909528, 0.365731,
		-0.855038, -0.342293, -0.389544,
		38.890827, 38.927601, 57.295322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643391, 38.633705, 57.122375>,  <39.489353, 39.167206, 57.568005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643391, 38.633705, 57.122375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281982, 38.734024, 56.983376>,  <39.065140, 38.794216, 56.899975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281982, 38.734024, 56.983376>,  <39.643391, 38.633705, 57.122375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281982, 38.734024, 56.983376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318305, -0.150215, -0.936011,
		-0.286949, -0.956314, 0.055892,
		-0.903517, 0.250797, -0.347503,
		39.010929, 38.809261, 56.879124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562397, 38.141148, 56.671696>,  <39.643391, 38.633705, 57.122375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562397, 38.141148, 56.671696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.292194, 38.414986, 56.562138>,  <39.130074, 38.579288, 56.496403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.292194, 38.414986, 56.562138>,  <39.562397, 38.141148, 56.671696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292194, 38.414986, 56.562138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288716, -0.096218, -0.952567,
		-0.678477, -0.722545, -0.132658,
		-0.675509, 0.684596, -0.273892,
		39.089542, 38.620365, 56.479969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284966, 37.905365, 56.017529>,  <39.562397, 38.141148, 56.671696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284966, 37.905365, 56.017529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192192, 38.293633, 56.042870>,  <39.136528, 38.526592, 56.058075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192192, 38.293633, 56.042870>,  <39.284966, 37.905365, 56.017529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192192, 38.293633, 56.042870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150761, 0.100215, -0.983477,
		-0.960979, -0.218545, -0.169582,
		-0.231929, 0.970667, 0.063356,
		39.122612, 38.584831, 56.061878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843559, 38.017616, 55.361515>,  <39.284966, 37.905365, 56.017529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843559, 38.017616, 55.361515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981750, 38.375389, 55.475105>,  <39.064667, 38.590054, 55.543259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981750, 38.375389, 55.475105>,  <38.843559, 38.017616, 55.361515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981750, 38.375389, 55.475105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251377, 0.203342, -0.946288,
		-0.904131, 0.398308, -0.154589,
		0.345480, 0.894429, 0.283973,
		39.085396, 38.643719, 55.560299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815601, 38.469025, 54.810658>,  <38.843559, 38.017616, 55.361515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815601, 38.469025, 54.810658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060211, 38.683449, 55.043442>,  <39.206978, 38.812103, 55.183113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060211, 38.683449, 55.043442>,  <38.815601, 38.469025, 54.810658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060211, 38.683449, 55.043442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398893, 0.426329, -0.811867,
		-0.683318, 0.728614, 0.046878,
		0.611523, 0.536064, 0.581958,
		39.243668, 38.844269, 55.218029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679775, 39.204456, 54.622810>,  <38.815601, 38.469025, 54.810658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679775, 39.204456, 54.622810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039871, 39.154411, 54.789623>,  <39.255928, 39.124386, 54.889713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039871, 39.154411, 54.789623>,  <38.679775, 39.204456, 54.622810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039871, 39.154411, 54.789623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408755, 0.572784, -0.710520,
		-0.149976, 0.810102, 0.566782,
		0.900237, -0.125114, 0.417037,
		39.309944, 39.116879, 54.914734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033955, 39.848686, 54.577560>,  <38.679775, 39.204456, 54.622810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033955, 39.848686, 54.577560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331520, 39.584732, 54.619774>,  <39.510059, 39.426361, 54.645103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331520, 39.584732, 54.619774>,  <39.033955, 39.848686, 54.577560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331520, 39.584732, 54.619774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565287, 0.537153, -0.626033,
		0.356424, 0.525373, 0.772622,
		0.743917, -0.659886, 0.105533,
		39.554695, 39.386765, 54.651432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646629, 40.281578, 54.468754>,  <39.033955, 39.848686, 54.577560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646629, 40.281578, 54.468754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783096, 39.910233, 54.409767>,  <39.864975, 39.687424, 54.374374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783096, 39.910233, 54.409767>,  <39.646629, 40.281578, 54.468754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783096, 39.910233, 54.409767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559971, 0.326729, -0.761367,
		0.755008, 0.177174, 0.631326,
		0.341166, -0.928363, -0.147471,
		39.885445, 39.631725, 54.365524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409595, 40.298309, 54.506310>,  <39.646629, 40.281578, 54.468754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409595, 40.298309, 54.506310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.288445, 39.975731, 54.303173>,  <40.215752, 39.782185, 54.181290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.288445, 39.975731, 54.303173>,  <40.409595, 40.298309, 54.506310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288445, 39.975731, 54.303173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373246, 0.389927, -0.841810,
		0.876899, -0.444516, 0.182903,
		-0.302879, -0.806450, -0.507841,
		40.197582, 39.733795, 54.150822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860394, 40.330658, 53.970093>,  <40.409595, 40.298309, 54.506310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860394, 40.330658, 53.970093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579315, 40.068832, 53.858543>,  <40.410667, 39.911739, 53.791615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579315, 40.068832, 53.858543>,  <40.860394, 40.330658, 53.970093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579315, 40.068832, 53.858543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233993, 0.157540, -0.959390,
		0.671914, -0.739411, 0.042460,
		-0.702694, -0.654562, -0.278870,
		40.368507, 39.872463, 53.774883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268284, 39.876873, 53.538963>,  <40.860394, 40.330658, 53.970093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268284, 39.876873, 53.538963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881187, 39.824333, 53.452957>,  <40.648930, 39.792809, 53.401356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881187, 39.824333, 53.452957>,  <41.268284, 39.876873, 53.538963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881187, 39.824333, 53.452957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181504, 0.228450, -0.956487,
		0.174753, -0.964654, -0.197239,
		-0.967738, -0.131349, -0.215011,
		40.590866, 39.784927, 53.388454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239853, 39.468281, 52.935631>,  <41.268284, 39.876873, 53.538963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239853, 39.468281, 52.935631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.896065, 39.672432, 52.947159>,  <40.689793, 39.794922, 52.954075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.896065, 39.672432, 52.947159>,  <41.239853, 39.468281, 52.935631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896065, 39.672432, 52.947159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117198, 0.251613, -0.960706,
		-0.497575, -0.822317, -0.276068,
		-0.859467, 0.510378, 0.028822,
		40.638226, 39.825546, 52.955807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882099, 39.296207, 52.265305>,  <41.239853, 39.468281, 52.935631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882099, 39.296207, 52.265305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.705727, 39.628265, 52.401798>,  <40.599903, 39.827499, 52.483696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.705727, 39.628265, 52.401798>,  <40.882099, 39.296207, 52.265305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705727, 39.628265, 52.401798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097321, 0.422167, -0.901279,
		-0.892247, -0.364197, -0.266938,
		-0.440935, 0.830142, 0.341233,
		40.573444, 39.877308, 52.504169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464424, 39.374653, 51.769161>,  <40.882099, 39.296207, 52.265305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464424, 39.374653, 51.769161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.458092, 39.741318, 51.928902>,  <40.454292, 39.961315, 52.024746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.458092, 39.741318, 51.928902>,  <40.464424, 39.374653, 51.769161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458092, 39.741318, 51.928902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029631, 0.399654, -0.916187,
		-0.999435, -0.002675, -0.033490,
		-0.015836, 0.916662, 0.399349,
		40.453342, 40.016315, 52.048706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950138, 39.758411, 51.426704>,  <40.464424, 39.374653, 51.769161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950138, 39.758411, 51.426704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213837, 40.024979, 51.566006>,  <40.372055, 40.184921, 51.649586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213837, 40.024979, 51.566006>,  <39.950138, 39.758411, 51.426704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213837, 40.024979, 51.566006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173529, 0.315807, -0.932820,
		-0.731633, 0.675387, 0.092550,
		0.659243, 0.666422, 0.348254,
		40.411610, 40.224907, 51.670483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705208, 40.345757, 51.095016>,  <39.950138, 39.758411, 51.426704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705208, 40.345757, 51.095016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075912, 40.434547, 51.216240>,  <40.298336, 40.487820, 51.288975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075912, 40.434547, 51.216240>,  <39.705208, 40.345757, 51.095016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075912, 40.434547, 51.216240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229482, 0.304172, -0.924563,
		-0.297409, 0.926395, 0.230956,
		0.926761, 0.221974, 0.303054,
		40.353939, 40.501141, 51.307156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847904, 41.041519, 50.876892>,  <39.705208, 40.345757, 51.095016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847904, 41.041519, 50.876892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.209511, 40.878181, 50.927498>,  <40.426476, 40.780178, 50.957859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.209511, 40.878181, 50.927498>,  <39.847904, 41.041519, 50.876892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209511, 40.878181, 50.927498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279218, 0.339919, -0.898049,
		0.323714, 0.847176, 0.421311,
		0.904017, -0.408348, 0.126510,
		40.480717, 40.755676, 50.965450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.951450, 44.540825, 46.878902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.240479, 44.349243, 47.078300>,  <40.413895, 44.234295, 47.197941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.240479, 44.349243, 47.078300>,  <39.951450, 44.540825, 46.878902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240479, 44.349243, 47.078300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688715, 0.436431, -0.578965,
		0.059740, 0.761662, 0.645215,
		0.722567, -0.478957, 0.498495,
		40.457249, 44.205555, 47.227848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569939, 45.031487, 47.022945>,  <39.951450, 44.540825, 46.878902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569939, 45.031487, 47.022945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.686913, 44.649307, 47.038986>,  <40.757095, 44.420002, 47.048611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.686913, 44.649307, 47.038986>,  <40.569939, 45.031487, 47.022945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686913, 44.649307, 47.038986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689649, 0.181660, -0.700988,
		0.662470, 0.232649, 0.712045,
		0.292435, -0.955444, 0.040102,
		40.774643, 44.362675, 47.051018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320011, 45.084579, 47.006111>,  <40.569939, 45.031487, 47.022945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320011, 45.084579, 47.006111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211906, 44.722771, 46.874172>,  <41.147045, 44.505684, 46.795010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211906, 44.722771, 46.874172>,  <41.320011, 45.084579, 47.006111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211906, 44.722771, 46.874172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769859, 0.002712, -0.638208,
		0.578167, -0.426420, 0.695621,
		-0.270258, -0.904521, -0.329852,
		41.130829, 44.451416, 46.775215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881512, 44.615692, 47.051849>,  <41.320011, 45.084579, 47.006111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881512, 44.615692, 47.051849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.653519, 44.462807, 46.760910>,  <41.516724, 44.371075, 46.586346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.653519, 44.462807, 46.760910>,  <41.881512, 44.615692, 47.051849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653519, 44.462807, 46.760910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802252, -0.067637, -0.593142,
		0.177513, -0.921594, 0.345186,
		-0.569983, -0.382216, -0.727344,
		41.482525, 44.348141, 46.542706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412319, 44.224636, 46.686344>,  <41.881512, 44.615692, 47.051849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412319, 44.224636, 46.686344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093628, 44.256996, 46.446785>,  <41.902412, 44.276413, 46.303051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093628, 44.256996, 46.446785>,  <42.412319, 44.224636, 46.686344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093628, 44.256996, 46.446785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591458, -0.099092, -0.800224,
		-0.124082, -0.991784, 0.031102,
		-0.796732, 0.080898, -0.598894,
		41.854607, 44.281265, 46.267117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554832, 43.711601, 46.129742>,  <42.412319, 44.224636, 46.686344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554832, 43.711601, 46.129742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266880, 43.952217, 45.991226>,  <42.094109, 44.096588, 45.908115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266880, 43.952217, 45.991226>,  <42.554832, 43.711601, 46.129742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266880, 43.952217, 45.991226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574493, 0.236398, -0.783629,
		-0.389520, -0.763064, -0.515759,
		-0.719884, 0.601539, -0.346293,
		42.050915, 44.132679, 45.887337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498173, 43.554550, 45.461773>,  <42.554832, 43.711601, 46.129742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498173, 43.554550, 45.461773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.358154, 43.928703, 45.481857>,  <42.274143, 44.153194, 45.493908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.358154, 43.928703, 45.481857>,  <42.498173, 43.554550, 45.461773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358154, 43.928703, 45.481857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726880, 0.305049, -0.615297,
		-0.590856, -0.178886, -0.786695,
		-0.350049, 0.935385, 0.050211,
		42.253139, 44.209320, 45.496922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837700, 43.869793, 45.040855>,  <42.498173, 43.554550, 45.461773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837700, 43.869793, 45.040855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643921, 44.197594, 45.163315>,  <42.527653, 44.394276, 45.236790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643921, 44.197594, 45.163315>,  <42.837700, 43.869793, 45.040855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643921, 44.197594, 45.163315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604571, 0.566562, -0.559912,
		-0.632299, -0.086163, -0.769918,
		-0.484450, 0.819502, 0.306145,
		42.498585, 44.443443, 45.255157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682636, 44.192345, 44.372299>,  <42.837700, 43.869793, 45.040855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682636, 44.192345, 44.372299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.712189, 44.448761, 44.677876>,  <42.729919, 44.602612, 44.861221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.712189, 44.448761, 44.677876>,  <42.682636, 44.192345, 44.372299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712189, 44.448761, 44.677876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573128, 0.599606, -0.558567,
		-0.816128, 0.479108, -0.323094,
		0.073885, 0.641037, 0.763946,
		42.734356, 44.641071, 44.907059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530006, 44.908989, 44.143539>,  <42.682636, 44.192345, 44.372299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530006, 44.908989, 44.143539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776291, 44.922440, 44.458443>,  <42.924061, 44.930511, 44.647385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776291, 44.922440, 44.458443>,  <42.530006, 44.908989, 44.143539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776291, 44.922440, 44.458443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555805, 0.689669, -0.464152,
		-0.558555, 0.723343, 0.405944,
		0.615708, 0.033628, 0.787256,
		42.961002, 44.932529, 44.694618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907040, 45.552246, 44.150063>,  <42.530006, 44.908989, 44.143539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907040, 45.552246, 44.150063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140656, 45.346992, 44.401646>,  <43.280827, 45.223843, 44.552597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140656, 45.346992, 44.401646>,  <42.907040, 45.552246, 44.150063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140656, 45.346992, 44.401646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807954, 0.442094, -0.389568,
		-0.078161, 0.735696, 0.672787,
		0.584039, -0.513132, 0.628963,
		43.315868, 45.193054, 44.590336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354904, 46.037777, 44.337463>,  <42.907040, 45.552246, 44.150063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354904, 46.037777, 44.337463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.521904, 45.686142, 44.429466>,  <43.622105, 45.475163, 44.484669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.521904, 45.686142, 44.429466>,  <43.354904, 46.037777, 44.337463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521904, 45.686142, 44.429466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816034, 0.251372, -0.520481,
		0.399729, 0.404996, 0.822310,
		0.417499, -0.879085, 0.230010,
		43.647152, 45.422417, 44.498470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100712, 46.093082, 44.655682>,  <43.354904, 46.037777, 44.337463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100712, 46.093082, 44.655682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.034187, 45.742851, 44.474266>,  <43.994274, 45.532711, 44.365417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.034187, 45.742851, 44.474266>,  <44.100712, 46.093082, 44.655682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034187, 45.742851, 44.474266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819693, 0.132909, -0.557171,
		0.548128, -0.464425, 0.695604,
		-0.166312, -0.875582, -0.453537,
		43.984295, 45.480175, 44.338203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350243, 46.416855, 45.311653>,  <44.100712, 46.093082, 44.655682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350243, 46.416855, 45.311653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.006599, 46.599098, 45.218399>,  <43.800415, 46.708447, 45.162449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.006599, 46.599098, 45.218399>,  <44.350243, 46.416855, 45.311653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006599, 46.599098, 45.218399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365273, 0.226785, -0.902853,
		-0.358481, -0.860805, -0.361256,
		-0.859108, 0.455613, -0.233131,
		43.748867, 46.735783, 45.148460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766068, 47.001762, 45.461876>,  <44.350243, 46.416855, 45.311653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766068, 47.001762, 45.461876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163361, 47.019142, 45.504944>,  <45.401737, 47.029572, 45.530785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163361, 47.019142, 45.504944>,  <44.766068, 47.001762, 45.461876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163361, 47.019142, 45.504944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076368, -0.454044, 0.887700,
		0.087462, -0.889919, -0.447655,
		0.993236, 0.043454, 0.107673,
		45.461330, 47.032177, 45.537247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037945, 46.295574, 45.779995>,  <44.766068, 47.001762, 45.461876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037945, 46.295574, 45.779995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315971, 46.576599, 45.841034>,  <45.482788, 46.745213, 45.877659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315971, 46.576599, 45.841034>,  <45.037945, 46.295574, 45.779995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315971, 46.576599, 45.841034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167090, -0.364305, 0.916167,
		0.699257, -0.611301, -0.370608,
		0.695069, 0.702561, 0.152601,
		45.524490, 46.787369, 45.886814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580650, 45.991325, 46.018074>,  <45.037945, 46.295574, 45.779995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580650, 45.991325, 46.018074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604164, 46.369629, 46.145874>,  <45.618271, 46.596611, 46.222553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604164, 46.369629, 46.145874>,  <45.580650, 45.991325, 46.018074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604164, 46.369629, 46.145874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096169, -0.323934, 0.941179,
		0.993628, -0.024597, -0.109994,
		0.058781, 0.945760, 0.319505,
		45.621799, 46.653358, 46.241726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086597, 45.946064, 46.528511>,  <45.580650, 45.991325, 46.018074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086597, 45.946064, 46.528511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.909256, 46.296524, 46.604195>,  <45.802853, 46.506802, 46.649605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.909256, 46.296524, 46.604195>,  <46.086597, 45.946064, 46.528511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909256, 46.296524, 46.604195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023964, -0.199427, 0.979620,
		0.896026, 0.438853, 0.067421,
		-0.443355, 0.876149, 0.189209,
		45.776249, 46.559368, 46.660957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514027, 46.186420, 47.053177>,  <46.086597, 45.946064, 46.528511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514027, 46.186420, 47.053177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.164688, 46.381142, 47.060078>,  <45.955086, 46.497974, 47.064217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.164688, 46.381142, 47.060078>,  <46.514027, 46.186420, 47.053177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164688, 46.381142, 47.060078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178435, -0.352670, 0.918578,
		0.453249, 0.799155, 0.394863,
		-0.873342, 0.486802, 0.017250,
		45.902687, 46.527184, 47.065254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.478569, 46.460949, 47.705349>,  <46.514027, 46.186420, 47.053177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.478569, 46.460949, 47.705349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.092613, 46.442116, 47.601994>,  <45.861038, 46.430817, 47.539982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.092613, 46.442116, 47.601994>,  <46.478569, 46.460949, 47.705349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092613, 46.442116, 47.601994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233200, -0.298983, 0.925325,
		-0.120819, 0.953096, 0.277507,
		-0.964894, -0.047082, -0.258385,
		45.803146, 46.427990, 47.524479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064903, 46.783562, 48.235733>,  <46.478569, 46.460949, 47.705349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064903, 46.783562, 48.235733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.777756, 46.565208, 48.062912>,  <45.605465, 46.434196, 47.959217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.777756, 46.565208, 48.062912>,  <46.064903, 46.783562, 48.235733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777756, 46.565208, 48.062912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309851, -0.305226, 0.900461,
		-0.623419, 0.780289, 0.049971,
		-0.717872, -0.545881, -0.432057,
		45.562393, 46.401443, 47.933296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410385, 46.967922, 48.466862>,  <46.064903, 46.783562, 48.235733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410385, 46.967922, 48.466862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363235, 46.590195, 48.343979>,  <45.334946, 46.363560, 48.270248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363235, 46.590195, 48.343979>,  <45.410385, 46.967922, 48.466862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363235, 46.590195, 48.343979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475425, -0.217935, 0.852335,
		-0.871824, 0.246522, -0.423262,
		-0.117876, -0.944315, -0.307203,
		45.327873, 46.306900, 48.251820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797104, 46.829720, 48.759136>,  <45.410385, 46.967922, 48.466862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797104, 46.829720, 48.759136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944725, 46.469482, 48.667290>,  <45.033298, 46.253338, 48.612183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944725, 46.469482, 48.667290>,  <44.797104, 46.829720, 48.759136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944725, 46.469482, 48.667290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437093, -0.386215, 0.812273,
		-0.820211, -0.199411, -0.536179,
		0.369057, -0.900596, -0.229617,
		45.055443, 46.199303, 48.598404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254520, 46.361618, 48.943554>,  <44.797104, 46.829720, 48.759136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254520, 46.361618, 48.943554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601479, 46.163353, 48.925880>,  <44.809654, 46.044395, 48.915276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601479, 46.163353, 48.925880>,  <44.254520, 46.361618, 48.943554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601479, 46.163353, 48.925880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262779, -0.531632, 0.805180,
		-0.422580, -0.686799, -0.591382,
		0.867394, -0.495656, -0.044180,
		44.861698, 46.014656, 48.912624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981022, 45.645229, 48.891449>,  <44.254520, 46.361618, 48.943554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981022, 45.645229, 48.891449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363876, 45.623787, 49.005302>,  <44.593590, 45.610920, 49.073616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363876, 45.623787, 49.005302>,  <43.981022, 45.645229, 48.891449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363876, 45.623787, 49.005302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272192, -0.502419, 0.820662,
		0.099013, -0.862961, -0.495475,
		0.957135, -0.053608, 0.284637,
		44.651016, 45.607704, 49.090694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070152, 44.938778, 49.194656>,  <43.981022, 45.645229, 48.891449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070152, 44.938778, 49.194656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.388641, 45.133858, 49.337860>,  <44.579735, 45.250908, 49.423782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.388641, 45.133858, 49.337860>,  <44.070152, 44.938778, 49.194656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388641, 45.133858, 49.337860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099428, -0.478226, 0.872591,
		0.596777, -0.730374, -0.332283,
		0.796223, 0.487704, 0.358014,
		44.627510, 45.280170, 49.445263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562805, 44.469509, 49.511795>,  <44.070152, 44.938778, 49.194656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562805, 44.469509, 49.511795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.657158, 44.822853, 49.673798>,  <44.713768, 45.034859, 49.771000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.657158, 44.822853, 49.673798>,  <44.562805, 44.469509, 49.511795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657158, 44.822853, 49.673798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152005, -0.378100, 0.913201,
		0.959821, -0.276969, 0.045089,
		0.235880, 0.883363, 0.405008,
		44.727921, 45.087860, 49.795300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120949, 44.392189, 50.053635>,  <44.562805, 44.469509, 49.511795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120949, 44.392189, 50.053635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.959190, 44.748398, 50.136990>,  <44.862137, 44.962124, 50.187004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.959190, 44.748398, 50.136990>,  <45.120949, 44.392189, 50.053635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959190, 44.748398, 50.136990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279442, -0.337265, 0.898980,
		0.870848, 0.305311, 0.385239,
		-0.404396, 0.890526, 0.208390,
		44.837872, 45.015556, 50.199505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776516, 44.230457, 50.370792>,  <45.120949, 44.392189, 50.053635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776516, 44.230457, 50.370792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949089, 43.870827, 50.400517>,  <46.052635, 43.655048, 50.418350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949089, 43.870827, 50.400517>,  <45.776516, 44.230457, 50.370792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949089, 43.870827, 50.400517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389425, 0.111300, -0.914309,
		0.813764, 0.423404, 0.398143,
		0.431435, -0.899078, 0.074313,
		46.078518, 43.601105, 50.422810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429893, 44.408737, 50.221104>,  <45.776516, 44.230457, 50.370792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429893, 44.408737, 50.221104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396530, 44.012764, 50.175377>,  <46.376511, 43.775181, 50.147942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396530, 44.012764, 50.175377>,  <46.429893, 44.408737, 50.221104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396530, 44.012764, 50.175377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524771, 0.053886, -0.849536,
		0.847147, -0.130851, 0.514995,
		-0.083412, -0.989936, -0.114316,
		46.371506, 43.715782, 50.141083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019886, 44.257706, 50.083527>,  <46.429893, 44.408737, 50.221104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019886, 44.257706, 50.083527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.816452, 43.935516, 49.961842>,  <46.694389, 43.742203, 49.888832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.816452, 43.935516, 49.961842>,  <47.019886, 44.257706, 50.083527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.816452, 43.935516, 49.961842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478887, 0.028996, -0.877397,
		0.715545, -0.591916, 0.370986,
		-0.508588, -0.805478, -0.304209,
		46.663876, 43.693874, 49.870579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537788, 43.804592, 49.674122>,  <47.019886, 44.257706, 50.083527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537788, 43.804592, 49.674122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.186676, 43.653847, 49.555817>,  <46.976009, 43.563400, 49.484833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.186676, 43.653847, 49.555817>,  <47.537788, 43.804592, 49.674122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.186676, 43.653847, 49.555817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423928, -0.323522, -0.845942,
		0.223117, -0.867935, 0.443743,
		-0.877783, -0.376859, -0.295759,
		46.923340, 43.540791, 49.467091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.689075, 43.146866, 49.532902>,  <47.537788, 43.804592, 49.674122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.689075, 43.146866, 49.532902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.346466, 43.211159, 49.336727>,  <47.140900, 43.249733, 49.219021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.346466, 43.211159, 49.336727>,  <47.689075, 43.146866, 49.532902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346466, 43.211159, 49.336727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393000, -0.412839, -0.821654,
		-0.334531, -0.896511, 0.290443,
		-0.856527, 0.160725, -0.490436,
		47.089508, 43.259377, 49.189594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.620605, 42.517071, 49.161198>,  <47.689075, 43.146866, 49.532902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.620605, 42.517071, 49.161198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.347626, 42.760384, 48.999088>,  <47.183838, 42.906372, 48.901821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.347626, 42.760384, 48.999088>,  <47.620605, 42.517071, 49.161198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347626, 42.760384, 48.999088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204394, -0.373533, -0.904818,
		-0.701769, -0.700333, 0.130590,
		-0.682453, 0.608282, -0.405278,
		47.142891, 42.942867, 48.877506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081326, 42.143421, 48.874828>,  <47.620605, 42.517071, 49.161198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081326, 42.143421, 48.874828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.110245, 42.499390, 48.694695>,  <47.127598, 42.712971, 48.586613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.110245, 42.499390, 48.694695>,  <47.081326, 42.143421, 48.874828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110245, 42.499390, 48.694695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209429, -0.455000, -0.865514,
		-0.975147, -0.031737, -0.219272,
		0.072300, 0.889926, -0.450339,
		47.131935, 42.766369, 48.559593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750942, 42.098774, 48.147354>,  <47.081326, 42.143421, 48.874828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750942, 42.098774, 48.147354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.979126, 42.426826, 48.129677>,  <47.116035, 42.623657, 48.119072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.979126, 42.426826, 48.129677>,  <46.750942, 42.098774, 48.147354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979126, 42.426826, 48.129677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208881, -0.196905, -0.957913,
		-0.794320, 0.537221, -0.283637,
		0.570460, 0.820136, -0.044190,
		47.150265, 42.672867, 48.116421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.611588, 42.500023, 47.516949>,  <46.750942, 42.098774, 48.147354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.611588, 42.500023, 47.516949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.979309, 42.624260, 47.613617>,  <47.199944, 42.698803, 47.671619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.979309, 42.624260, 47.613617>,  <46.611588, 42.500023, 47.516949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979309, 42.624260, 47.613617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249033, 0.016383, -0.968356,
		-0.304728, 0.950400, -0.062288,
		0.919306, 0.310597, 0.241674,
		47.255100, 42.717438, 47.686119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811226, 42.873337, 46.981060>,  <46.611588, 42.500023, 47.516949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811226, 42.873337, 46.981060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.169357, 42.818253, 47.150490>,  <47.384235, 42.785202, 47.252148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.169357, 42.818253, 47.150490>,  <46.811226, 42.873337, 46.981060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169357, 42.818253, 47.150490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413905, -0.094028, -0.905451,
		0.164521, 0.985999, -0.027186,
		0.895330, -0.137714, 0.423579,
		47.437958, 42.776939, 47.277565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272957, 43.342949, 46.662270>,  <46.811226, 42.873337, 46.981060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272957, 43.342949, 46.662270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.527542, 43.060257, 46.785843>,  <47.680294, 42.890640, 46.859985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.527542, 43.060257, 46.785843>,  <47.272957, 43.342949, 46.662270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.527542, 43.060257, 46.785843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370257, -0.071418, -0.926180,
		0.676626, 0.703866, 0.216217,
		0.636465, -0.706733, 0.308935,
		47.718483, 42.848236, 46.878525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865833, 43.637772, 46.422337>,  <47.272957, 43.342949, 46.662270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865833, 43.637772, 46.422337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.916901, 43.245407, 46.480999>,  <47.947540, 43.009987, 46.516197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.916901, 43.245407, 46.480999>,  <47.865833, 43.637772, 46.422337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.916901, 43.245407, 46.480999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356855, -0.092534, -0.929565,
		0.925394, 0.171016, 0.338230,
		0.127672, -0.980913, 0.146659,
		47.955204, 42.951134, 46.524998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<45.151318, 43.405849, 54.351868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042191, 43.090950, 54.130669>,  <44.976715, 42.902012, 53.997948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042191, 43.090950, 54.130669>,  <45.151318, 43.405849, 54.351868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042191, 43.090950, 54.130669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613336, 0.300528, -0.730412,
		0.741208, -0.538446, 0.400858,
		-0.272819, -0.787247, -0.553002,
		44.960346, 42.854774, 53.964767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770569, 43.210861, 54.037029>,  <45.151318, 43.405849, 54.351868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770569, 43.210861, 54.037029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492546, 43.028664, 53.814529>,  <45.325733, 42.919346, 53.681030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492546, 43.028664, 53.814529>,  <45.770569, 43.210861, 54.037029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492546, 43.028664, 53.814529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586996, 0.087198, -0.804880,
		0.415122, -0.885958, 0.206765,
		-0.695061, -0.455494, -0.556252,
		45.284027, 42.892017, 53.647655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213188, 42.748253, 53.656860>,  <45.770569, 43.210861, 54.037029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213188, 42.748253, 53.656860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865662, 42.790245, 53.463310>,  <45.657146, 42.815441, 53.347179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865662, 42.790245, 53.463310>,  <46.213188, 42.748253, 53.656860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865662, 42.790245, 53.463310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493570, 0.105968, -0.863226,
		-0.039351, -0.988812, -0.143884,
		-0.868815, 0.104986, -0.483878,
		45.605019, 42.821739, 53.318146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.339016, 42.426708, 53.033794>,  <46.213188, 42.748253, 53.656860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.339016, 42.426708, 53.033794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994904, 42.610184, 52.944775>,  <45.788437, 42.720268, 52.891361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994904, 42.610184, 52.944775>,  <46.339016, 42.426708, 53.033794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994904, 42.610184, 52.944775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287152, 0.075244, -0.954925,
		-0.421269, -0.885405, -0.196444,
		-0.860277, 0.458689, -0.222548,
		45.736820, 42.747791, 52.878010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107517, 42.135025, 52.378483>,  <46.339016, 42.426708, 53.033794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107517, 42.135025, 52.378483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879219, 42.462700, 52.355888>,  <45.742241, 42.659306, 52.342331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879219, 42.462700, 52.355888>,  <46.107517, 42.135025, 52.378483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879219, 42.462700, 52.355888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378588, 0.201479, -0.903370,
		-0.728644, -0.536978, -0.425126,
		-0.570744, 0.819183, -0.056487,
		45.707996, 42.708454, 52.338943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623760, 42.061817, 51.806915>,  <46.107517, 42.135025, 52.378483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623760, 42.061817, 51.806915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688522, 42.451820, 51.867760>,  <45.727379, 42.685822, 51.904266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688522, 42.451820, 51.867760>,  <45.623760, 42.061817, 51.806915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688522, 42.451820, 51.867760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214922, 0.115602, -0.969765,
		-0.963117, 0.189702, -0.190835,
		0.161905, 0.975012, 0.152110,
		45.737095, 42.744324, 51.913391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501690, 42.344090, 51.134678>,  <45.623760, 42.061817, 51.806915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501690, 42.344090, 51.134678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623680, 42.669495, 51.332745>,  <45.696873, 42.864738, 51.451584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623680, 42.669495, 51.332745>,  <45.501690, 42.344090, 51.134678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623680, 42.669495, 51.332745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276146, 0.422064, -0.863485,
		-0.911446, 0.400080, -0.095928,
		0.304975, 0.813510, 0.495169,
		45.715172, 42.913548, 51.481297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175430, 42.880013, 50.831024>,  <45.501690, 42.344090, 51.134678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175430, 42.880013, 50.831024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520523, 42.998444, 50.994995>,  <45.727577, 43.069500, 51.093380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520523, 42.998444, 50.994995>,  <45.175430, 42.880013, 50.831024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520523, 42.998444, 50.994995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311932, 0.326449, -0.892261,
		-0.397996, 0.897648, 0.189282,
		0.862727, 0.296073, 0.409930,
		45.779343, 43.087265, 51.117973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201229, 43.554787, 50.673660>,  <45.175430, 42.880013, 50.831024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201229, 43.554787, 50.673660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568413, 43.411827, 50.742500>,  <45.788723, 43.326050, 50.783806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568413, 43.411827, 50.742500>,  <45.201229, 43.554787, 50.673660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568413, 43.411827, 50.742500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290448, 0.310080, -0.905257,
		0.270175, 0.880973, 0.388447,
		0.917957, -0.357402, 0.172101,
		45.843800, 43.304607, 50.794132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195847, 44.360653, 50.802509>,  <45.201229, 43.554787, 50.673660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195847, 44.360653, 50.802509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939819, 44.655708, 50.716534>,  <44.786201, 44.832741, 50.664948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939819, 44.655708, 50.716534>,  <45.195847, 44.360653, 50.802509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939819, 44.655708, 50.716534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459230, -0.143013, 0.876730,
		0.615970, 0.659876, 0.430284,
		-0.640069, 0.737639, -0.214943,
		44.747799, 44.876999, 50.652050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182293, 44.653313, 51.386936>,  <45.195847, 44.360653, 50.802509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182293, 44.653313, 51.386936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845890, 44.728966, 51.184181>,  <44.644051, 44.774357, 51.062527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845890, 44.728966, 51.184181>,  <45.182293, 44.653313, 51.386936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845890, 44.728966, 51.184181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524102, -0.052297, 0.850048,
		0.134264, 0.980558, 0.143108,
		-0.841005, 0.189134, -0.506891,
		44.593590, 44.785706, 51.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850471, 45.136665, 51.713974>,  <45.182293, 44.653313, 51.386936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850471, 45.136665, 51.713974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551716, 44.971306, 51.505642>,  <44.372463, 44.872089, 51.380642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551716, 44.971306, 51.505642>,  <44.850471, 45.136665, 51.713974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551716, 44.971306, 51.505642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621349, 0.154937, 0.768062,
		-0.236822, 0.897271, -0.372586,
		-0.746887, -0.413400, -0.520826,
		44.327648, 44.847286, 51.349396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334290, 45.736195, 51.647217>,  <44.850471, 45.136665, 51.713974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334290, 45.736195, 51.647217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140545, 45.390999, 51.589745>,  <44.024296, 45.183884, 51.555260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140545, 45.390999, 51.589745>,  <44.334290, 45.736195, 51.647217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140545, 45.390999, 51.589745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576530, 0.191329, 0.794359,
		-0.658031, 0.467596, -0.590211,
		-0.484364, -0.862987, -0.143682,
		43.995235, 45.132103, 51.546638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669895, 45.813873, 51.730377>,  <44.334290, 45.736195, 51.647217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669895, 45.813873, 51.730377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652893, 45.415291, 51.759407>,  <43.642693, 45.176140, 51.776825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652893, 45.415291, 51.759407>,  <43.669895, 45.813873, 51.730377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652893, 45.415291, 51.759407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491554, 0.084095, 0.866777,
		-0.869810, 0.001165, -0.493386,
		-0.042501, -0.996457, 0.072574,
		43.640144, 45.116352, 51.781178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957024, 45.622925, 51.800270>,  <43.669895, 45.813873, 51.730377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957024, 45.622925, 51.800270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167164, 45.311035, 51.936523>,  <43.293247, 45.123901, 52.018276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167164, 45.311035, 51.936523>,  <42.957024, 45.622925, 51.800270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167164, 45.311035, 51.936523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657640, -0.118061, 0.744023,
		-0.539920, -0.614888, -0.574804,
		0.525353, -0.779727, 0.340632,
		43.324768, 45.077118, 52.038712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419338, 45.125202, 51.943920>,  <42.957024, 45.622925, 51.800270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419338, 45.125202, 51.943920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727692, 44.999557, 52.165577>,  <42.912704, 44.924171, 52.298573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727692, 44.999557, 52.165577>,  <42.419338, 45.125202, 51.943920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727692, 44.999557, 52.165577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629333, -0.241180, 0.738764,
		-0.098403, -0.918241, -0.383601,
		0.770880, -0.314110, 0.554147,
		42.958954, 44.905323, 52.331821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208061, 44.387764, 52.181160>,  <42.419338, 45.125202, 51.943920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208061, 44.387764, 52.181160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491219, 44.501289, 52.439873>,  <42.661114, 44.569405, 52.595100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491219, 44.501289, 52.439873>,  <42.208061, 44.387764, 52.181160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491219, 44.501289, 52.439873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475213, -0.486087, 0.733411,
		0.522546, -0.826541, -0.209228,
		0.707897, 0.283813, 0.646786,
		42.703587, 44.586433, 52.633907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515995, 43.754665, 52.594795>,  <42.208061, 44.387764, 52.181160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515995, 43.754665, 52.594795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598385, 44.073891, 52.821304>,  <42.647820, 44.265427, 52.957211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598385, 44.073891, 52.821304>,  <42.515995, 43.754665, 52.594795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598385, 44.073891, 52.821304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353910, -0.478759, 0.803454,
		0.912318, -0.365899, 0.183832,
		0.205971, 0.798065, 0.566275,
		42.660175, 44.313309, 52.991188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724678, 43.515888, 53.146465>,  <42.515995, 43.754665, 52.594795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724678, 43.515888, 53.146465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654755, 43.881706, 53.292370>,  <42.612801, 44.101196, 53.379913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654755, 43.881706, 53.292370>,  <42.724678, 43.515888, 53.146465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654755, 43.881706, 53.292370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277105, -0.401190, 0.873075,
		0.944803, 0.051547, 0.323557,
		-0.174812, 0.914543, 0.364762,
		42.602310, 44.156071, 53.401798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073391, 43.659843, 53.766911>,  <42.724678, 43.515888, 53.146465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073391, 43.659843, 53.766911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773567, 43.922981, 53.796326>,  <42.593674, 44.080864, 53.813976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773567, 43.922981, 53.796326>,  <43.073391, 43.659843, 53.766911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773567, 43.922981, 53.796326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186140, -0.316088, 0.930291,
		0.635227, 0.683619, 0.359376,
		-0.749559, 0.657840, 0.073539,
		42.548698, 44.120335, 53.818386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165634, 43.996643, 54.484814>,  <43.073391, 43.659843, 53.766911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165634, 43.996643, 54.484814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799652, 44.106300, 54.366352>,  <42.580063, 44.172096, 54.295277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799652, 44.106300, 54.366352>,  <43.165634, 43.996643, 54.484814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799652, 44.106300, 54.366352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343922, -0.145761, 0.927616,
		0.211135, 0.950578, 0.227649,
		-0.914953, 0.274146, -0.296150,
		42.525166, 44.188545, 54.277508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863598, 44.509163, 54.995907>,  <43.165634, 43.996643, 54.484814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863598, 44.509163, 54.995907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561565, 44.340240, 54.795307>,  <42.380344, 44.238888, 54.674946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561565, 44.340240, 54.795307>,  <42.863598, 44.509163, 54.995907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561565, 44.340240, 54.795307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479754, -0.165455, 0.861662,
		-0.446863, 0.891224, -0.077672,
		-0.755083, -0.422308, -0.501504,
		42.335041, 44.213547, 54.644855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307697, 44.876381, 55.204399>,  <42.863598, 44.509163, 54.995907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307697, 44.876381, 55.204399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151379, 44.536018, 55.063980>,  <42.057587, 44.331802, 54.979729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151379, 44.536018, 55.063980>,  <42.307697, 44.876381, 55.204399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151379, 44.536018, 55.063980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603175, -0.051359, 0.795954,
		-0.695311, 0.522802, -0.493174,
		-0.390797, -0.850906, -0.351051,
		42.034138, 44.280746, 54.958664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.971149, 38.297935, 52.305134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.198303, 38.462021, 52.590572>,  <42.334595, 38.560474, 52.761837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.198303, 38.462021, 52.590572>,  <41.971149, 38.297935, 52.305134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198303, 38.462021, 52.590572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322462, 0.686784, -0.651418,
		-0.757312, 0.600041, 0.257737,
		0.567888, 0.410217, 0.713601,
		42.368671, 38.585087, 52.804653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833252, 38.919991, 52.167217>,  <41.971149, 38.297935, 52.305134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833252, 38.919991, 52.167217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.188614, 38.917648, 52.350830>,  <42.401829, 38.916245, 52.460999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.188614, 38.917648, 52.350830>,  <41.833252, 38.919991, 52.167217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188614, 38.917648, 52.350830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381963, 0.564102, -0.732048,
		-0.254655, 0.825684, 0.503385,
		0.888400, -0.005855, 0.459032,
		42.455135, 38.915894, 52.488541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111664, 39.605747, 52.109333>,  <41.833252, 38.919991, 52.167217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111664, 39.605747, 52.109333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.431572, 39.367516, 52.139412>,  <42.623516, 39.224579, 52.157459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.431572, 39.367516, 52.139412>,  <42.111664, 39.605747, 52.109333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431572, 39.367516, 52.139412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372075, 0.393500, -0.840665,
		0.471090, 0.700319, 0.536309,
		0.799772, -0.595576, 0.075198,
		42.671505, 39.188843, 52.161972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628319, 39.984715, 51.834034>,  <42.111664, 39.605747, 52.109333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628319, 39.984715, 51.834034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.781700, 39.615341, 51.840103>,  <42.873730, 39.393715, 51.843746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.781700, 39.615341, 51.840103>,  <42.628319, 39.984715, 51.834034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781700, 39.615341, 51.840103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540816, 0.211192, -0.814197,
		0.748653, 0.320413, 0.580391,
		0.383453, -0.923436, 0.015175,
		42.896736, 39.338310, 51.844654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439854, 39.945431, 51.944038>,  <42.628319, 39.984715, 51.834034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439854, 39.945431, 51.944038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.266674, 39.648880, 51.738937>,  <43.162766, 39.470951, 51.615875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.266674, 39.648880, 51.738937>,  <43.439854, 39.945431, 51.944038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266674, 39.648880, 51.738937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489316, 0.284436, -0.824418,
		0.757051, -0.607828, 0.239621,
		-0.432948, -0.741377, -0.512753,
		43.136791, 39.426468, 51.585110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892345, 39.919144, 51.318680>,  <43.439854, 39.945431, 51.944038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892345, 39.919144, 51.318680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.606209, 39.660957, 51.211601>,  <43.434528, 39.506046, 51.147354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.606209, 39.660957, 51.211601>,  <43.892345, 39.919144, 51.318680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606209, 39.660957, 51.211601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256192, 0.114158, -0.959861,
		0.650117, -0.755210, 0.083701,
		-0.715342, -0.645466, -0.267694,
		43.391605, 39.467319, 51.131294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232277, 39.420731, 50.811699>,  <43.892345, 39.919144, 51.318680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232277, 39.420731, 50.811699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.837238, 39.403671, 50.751251>,  <43.600216, 39.393436, 50.714981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.837238, 39.403671, 50.751251>,  <44.232277, 39.420731, 50.811699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837238, 39.403671, 50.751251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145832, 0.107707, -0.983429,
		0.058216, -0.993267, -0.100152,
		-0.987595, -0.042646, -0.151121,
		43.540958, 39.390877, 50.705914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281231, 39.094219, 50.211185>,  <44.232277, 39.420731, 50.811699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281231, 39.094219, 50.211185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.908974, 39.238884, 50.233440>,  <43.685619, 39.325684, 50.246792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.908974, 39.238884, 50.233440>,  <44.281231, 39.094219, 50.211185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908974, 39.238884, 50.233440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006129, 0.167431, -0.985865,
		-0.365868, -0.917151, -0.158036,
		-0.930647, 0.361665, 0.055637,
		43.629780, 39.347382, 50.250130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820534, 38.741676, 49.813644>,  <44.281231, 39.094219, 50.211185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820534, 38.741676, 49.813644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.675964, 39.112976, 49.848793>,  <43.589222, 39.335754, 49.869881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.675964, 39.112976, 49.848793>,  <43.820534, 38.741676, 49.813644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675964, 39.112976, 49.848793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019336, 0.086757, -0.996042,
		-0.932200, -0.361696, -0.013407,
		-0.361428, 0.928250, 0.087869,
		43.567535, 39.391453, 49.875153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332733, 38.722878, 49.363911>,  <43.820534, 38.741676, 49.813644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332733, 38.722878, 49.363911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.373940, 39.116402, 49.422565>,  <43.398663, 39.352516, 49.457756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.373940, 39.116402, 49.422565>,  <43.332733, 38.722878, 49.363911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373940, 39.116402, 49.422565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029369, 0.144345, -0.989091,
		-0.994246, 0.106197, -0.014024,
		0.103014, 0.983812, 0.146634,
		43.404842, 39.411545, 49.466557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907539, 39.026688, 48.806713>,  <43.332733, 38.722878, 49.363911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907539, 39.026688, 48.806713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.141663, 39.312912, 48.959232>,  <43.282135, 39.484646, 49.050743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.141663, 39.312912, 48.959232>,  <42.907539, 39.026688, 48.806713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141663, 39.312912, 48.959232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314822, 0.232803, -0.920157,
		-0.747196, 0.658616, -0.089013,
		0.585308, 0.715561, 0.381296,
		43.317253, 39.527580, 49.073620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691818, 39.606556, 48.456860>,  <42.907539, 39.026688, 48.806713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691818, 39.606556, 48.456860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.063324, 39.687744, 48.580921>,  <43.286228, 39.736458, 48.655357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.063324, 39.687744, 48.580921>,  <42.691818, 39.606556, 48.456860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063324, 39.687744, 48.580921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232179, 0.333702, -0.913639,
		-0.288945, 0.920568, 0.262804,
		0.928765, 0.202973, 0.310158,
		43.341953, 39.748634, 48.673969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898968, 40.290478, 48.132084>,  <42.691818, 39.606556, 48.456860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898968, 40.290478, 48.132084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.249779, 40.125298, 48.230301>,  <43.460266, 40.026192, 48.289230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.249779, 40.125298, 48.230301>,  <42.898968, 40.290478, 48.132084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249779, 40.125298, 48.230301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370432, 0.255782, -0.892948,
		0.305934, 0.874100, 0.377297,
		0.877032, -0.412946, 0.245542,
		43.512890, 40.001415, 48.303963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334877, 40.766640, 47.969467>,  <42.898968, 40.290478, 48.132084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334877, 40.766640, 47.969467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.535328, 40.420563, 47.976559>,  <43.655598, 40.212917, 47.980816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.535328, 40.420563, 47.976559>,  <43.334877, 40.766640, 47.969467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535328, 40.420563, 47.976559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373830, 0.197955, -0.906126,
		0.780463, 0.460714, 0.422635,
		0.501128, -0.865192, 0.017732,
		43.685665, 40.161007, 47.981880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455864, 41.493919, 47.985641>,  <43.334877, 40.766640, 47.969467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455864, 41.493919, 47.985641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.087112, 41.608421, 47.881187>,  <42.865860, 41.677124, 47.818516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.087112, 41.608421, 47.881187>,  <43.455864, 41.493919, 47.985641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087112, 41.608421, 47.881187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331700, -0.234713, 0.913720,
		0.200267, 0.928960, 0.311329,
		-0.921883, 0.286256, -0.261131,
		42.810547, 41.694298, 47.802849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201427, 41.757778, 48.584332>,  <43.455864, 41.493919, 47.985641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201427, 41.757778, 48.584332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.872154, 41.700508, 48.364563>,  <42.674591, 41.666145, 48.232700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.872154, 41.700508, 48.364563>,  <43.201427, 41.757778, 48.584332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872154, 41.700508, 48.364563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497952, -0.282859, 0.819777,
		-0.272780, 0.948416, 0.161552,
		-0.823186, -0.143174, -0.549424,
		42.625198, 41.657555, 48.199738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726608, 42.172005, 48.900772>,  <43.201427, 41.757778, 48.584332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726608, 42.172005, 48.900772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.516369, 41.906128, 48.688381>,  <42.390224, 41.746601, 48.560947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.516369, 41.906128, 48.688381>,  <42.726608, 42.172005, 48.900772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516369, 41.906128, 48.688381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620808, -0.127067, 0.773596,
		-0.581669, 0.736237, -0.345856,
		-0.525603, -0.664687, -0.530973,
		42.358688, 41.706722, 48.529091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976105, 42.374619, 49.005871>,  <42.726608, 42.172005, 48.900772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976105, 42.374619, 49.005871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.999973, 42.002625, 48.860779>,  <42.014294, 41.779430, 48.773724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.999973, 42.002625, 48.860779>,  <41.976105, 42.374619, 49.005871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999973, 42.002625, 48.860779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643335, -0.313674, 0.698376,
		-0.763256, 0.191679, -0.617008,
		0.059675, -0.929982, -0.362728,
		42.017876, 41.723629, 48.751961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254459, 42.085857, 48.829979>,  <41.976105, 42.374619, 49.005871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254459, 42.085857, 48.829979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.480690, 41.764015, 48.902359>,  <41.616428, 41.570911, 48.945789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.480690, 41.764015, 48.902359>,  <41.254459, 42.085857, 48.829979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480690, 41.764015, 48.902359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691842, -0.343475, 0.635122,
		-0.448869, -0.484397, -0.750917,
		0.565572, -0.804603, 0.180951,
		41.650360, 41.522636, 48.956646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803696, 41.393051, 48.831303>,  <41.254459, 42.085857, 48.829979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803696, 41.393051, 48.831303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.156563, 41.292404, 48.990540>,  <41.368282, 41.232014, 49.086082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.156563, 41.292404, 48.990540>,  <40.803696, 41.393051, 48.831303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156563, 41.292404, 48.990540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469157, -0.395983, 0.789360,
		-0.040981, -0.883111, -0.467371,
		0.882163, -0.251619, 0.398090,
		41.421211, 41.216919, 49.109966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723362, 40.678196, 49.071842>,  <40.803696, 41.393051, 48.831303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723362, 40.678196, 49.071842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.019501, 40.840523, 49.286209>,  <41.197186, 40.937920, 49.414829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.019501, 40.840523, 49.286209>,  <40.723362, 40.678196, 49.071842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019501, 40.840523, 49.286209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500375, -0.199692, 0.842465,
		0.448902, -0.891873, 0.055219,
		0.740346, 0.405814, 0.535914,
		41.241604, 40.962269, 49.446983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715015, 40.243732, 49.620575>,  <40.723362, 40.678196, 49.071842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715015, 40.243732, 49.620575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940872, 40.531654, 49.782093>,  <41.076385, 40.704407, 49.879005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940872, 40.531654, 49.782093>,  <40.715015, 40.243732, 49.620575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940872, 40.531654, 49.782093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240135, -0.324808, 0.914787,
		0.789628, -0.613495, -0.010550,
		0.564644, 0.719808, 0.403799,
		41.110264, 40.747597, 49.903233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134590, 39.914722, 50.113358>,  <40.715015, 40.243732, 49.620575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134590, 39.914722, 50.113358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.138840, 40.304153, 50.204601>,  <41.141388, 40.537811, 50.259350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.138840, 40.304153, 50.204601>,  <41.134590, 39.914722, 50.113358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138840, 40.304153, 50.204601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262093, -0.217439, 0.940227,
		0.964984, -0.069777, 0.252857,
		0.010625, 0.973576, 0.228113,
		41.142029, 40.596226, 50.273037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544434, 39.975746, 50.676102>,  <41.134590, 39.914722, 50.113358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544434, 39.975746, 50.676102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272369, 40.268021, 50.652512>,  <41.109131, 40.443386, 50.638359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272369, 40.268021, 50.652512>,  <41.544434, 39.975746, 50.676102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272369, 40.268021, 50.652512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281051, -0.185618, 0.941571,
		0.677048, 0.656994, 0.331610,
		-0.680159, 0.730688, -0.058976,
		41.068321, 40.487228, 50.634819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640743, 40.244621, 51.264244>,  <41.544434, 39.975746, 50.676102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640743, 40.244621, 51.264244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.284187, 40.396950, 51.165936>,  <41.070255, 40.488346, 51.106949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.284187, 40.396950, 51.165936>,  <41.640743, 40.244621, 51.264244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284187, 40.396950, 51.165936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258216, 0.018962, 0.965901,
		0.372495, 0.924455, 0.081431,
		-0.891388, 0.380820, -0.245772,
		41.016769, 40.511196, 51.092205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546253, 40.787411, 51.770676>,  <41.640743, 40.244621, 51.264244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546253, 40.787411, 51.770676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.187149, 40.704201, 51.615368>,  <40.971687, 40.654274, 51.522182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.187149, 40.704201, 51.615368>,  <41.546253, 40.787411, 51.770676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187149, 40.704201, 51.615368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359614, -0.162873, 0.918777,
		-0.254370, 0.964467, 0.071411,
		-0.897761, -0.208028, -0.388265,
		40.917820, 40.641792, 51.498890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148796, 41.254597, 52.078632>,  <41.546253, 40.787411, 51.770676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148796, 41.254597, 52.078632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.955654, 40.924423, 51.961666>,  <40.839767, 40.726318, 51.891487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.955654, 40.924423, 51.961666>,  <41.148796, 41.254597, 52.078632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955654, 40.924423, 51.961666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270143, -0.177234, 0.946367,
		-0.832992, 0.535951, -0.137407,
		-0.482854, -0.825436, -0.292418,
		40.810799, 40.676792, 51.873940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559727, 41.243526, 52.536396>,  <41.148796, 41.254597, 52.078632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559727, 41.243526, 52.536396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528297, 40.869217, 52.398903>,  <40.509441, 40.644630, 52.316406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528297, 40.869217, 52.398903>,  <40.559727, 41.243526, 52.536396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528297, 40.869217, 52.398903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257410, -0.314060, 0.913842,
		-0.963103, 0.160278, -0.216203,
		-0.078569, -0.935776, -0.343729,
		40.504726, 40.588486, 52.295784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942425, 41.449036, 52.386372>,  <40.559727, 41.243526, 52.536396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942425, 41.449036, 52.386372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813843, 41.809189, 52.503662>,  <39.736694, 42.025280, 52.574036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813843, 41.809189, 52.503662>,  <39.942425, 41.449036, 52.386372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813843, 41.809189, 52.503662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013380, 0.305310, -0.952159,
		-0.946832, -0.309996, -0.086095,
		-0.321451, 0.900382, 0.293225,
		39.717407, 42.079304, 52.591629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506535, 41.712200, 51.778206>,  <39.942425, 41.449036, 52.386372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506535, 41.712200, 51.778206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575546, 42.028297, 52.013409>,  <39.616955, 42.217957, 52.154530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575546, 42.028297, 52.013409>,  <39.506535, 41.712200, 51.778206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575546, 42.028297, 52.013409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301444, 0.610678, -0.732260,
		-0.937744, -0.050914, 0.343574,
		0.172531, 0.790240, 0.588007,
		39.627304, 42.265369, 52.189812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996132, 42.109596, 51.488319>,  <39.506535, 41.712200, 51.778206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996132, 42.109596, 51.488319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267311, 42.342903, 51.667294>,  <39.430019, 42.482887, 51.774677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267311, 42.342903, 51.667294>,  <38.996132, 42.109596, 51.488319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267311, 42.342903, 51.667294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036880, 0.634876, -0.771733,
		-0.734188, 0.506690, 0.451922,
		0.677944, 0.583264, 0.447432,
		39.470695, 42.517883, 51.801521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743057, 42.865368, 51.471523>,  <38.996132, 42.109596, 51.488319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743057, 42.865368, 51.471523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.139862, 42.898476, 51.509609>,  <39.377945, 42.918339, 51.532463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.139862, 42.898476, 51.509609>,  <38.743057, 42.865368, 51.471523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139862, 42.898476, 51.509609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017316, 0.658270, -0.752583,
		-0.124967, 0.748218, 0.651577,
		0.992010, 0.082766, 0.095218,
		39.437466, 42.923306, 51.538174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832676, 43.542561, 51.398132>,  <38.743057, 42.865368, 51.471523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832676, 43.542561, 51.398132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198223, 43.387962, 51.348381>,  <39.417549, 43.295204, 51.318531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198223, 43.387962, 51.348381>,  <38.832676, 43.542561, 51.398132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198223, 43.387962, 51.348381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125331, 0.559919, -0.819013,
		0.386187, 0.732880, 0.560131,
		0.913866, -0.386494, -0.124381,
		39.472382, 43.272015, 51.311066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352142, 44.155300, 51.157749>,  <38.832676, 43.542561, 51.398132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352142, 44.155300, 51.157749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.545635, 43.817520, 51.065746>,  <39.661732, 43.614853, 51.010544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.545635, 43.817520, 51.065746>,  <39.352142, 44.155300, 51.157749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545635, 43.817520, 51.065746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053584, 0.290878, -0.955258,
		0.873573, 0.449766, 0.185957,
		0.483734, -0.844453, -0.230003,
		39.690754, 43.564186, 50.996746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860867, 44.434692, 50.858288>,  <39.352142, 44.155300, 51.157749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860867, 44.434692, 50.858288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813152, 44.059288, 50.728691>,  <39.784523, 43.834045, 50.650932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813152, 44.059288, 50.728691>,  <39.860867, 44.434692, 50.858288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813152, 44.059288, 50.728691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193755, 0.298039, -0.934683,
		0.973771, -0.174271, 0.146288,
		-0.119289, -0.938511, -0.323987,
		39.777367, 43.777737, 50.631496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482014, 44.247631, 50.398922>,  <39.860867, 44.434692, 50.858288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482014, 44.247631, 50.398922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211445, 43.971832, 50.295349>,  <40.049103, 43.806355, 50.233204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211445, 43.971832, 50.295349>,  <40.482014, 44.247631, 50.398922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211445, 43.971832, 50.295349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400081, -0.048809, -0.915179,
		0.618375, -0.722642, 0.308871,
		-0.676422, -0.689497, -0.258933,
		40.008518, 43.764984, 50.217670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870937, 43.825943, 49.966114>,  <40.482014, 44.247631, 50.398922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870937, 43.825943, 49.966114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.486801, 43.760658, 49.875679>,  <40.256321, 43.721489, 49.821419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.486801, 43.760658, 49.875679>,  <40.870937, 43.825943, 49.966114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486801, 43.760658, 49.875679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243218, -0.093720, -0.965433,
		0.136381, -0.982129, 0.129699,
		-0.960336, -0.163212, -0.226090,
		40.198700, 43.711693, 49.807854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855362, 43.248650, 49.479610>,  <40.870937, 43.825943, 49.966114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855362, 43.248650, 49.479610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514267, 43.445541, 49.409698>,  <40.309608, 43.563679, 49.367752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514267, 43.445541, 49.409698>,  <40.855362, 43.248650, 49.479610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514267, 43.445541, 49.409698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209907, 0.016514, -0.977582,
		-0.478310, -0.870308, -0.117405,
		-0.852736, 0.492231, -0.174784,
		40.258446, 43.593212, 49.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512993, 42.891769, 48.921307>,  <40.855362, 43.248650, 49.479610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512993, 42.891769, 48.921307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.318047, 43.239311, 48.886536>,  <40.201077, 43.447838, 48.865673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.318047, 43.239311, 48.886536>,  <40.512993, 42.891769, 48.921307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318047, 43.239311, 48.886536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122514, -0.030523, -0.991997,
		-0.864558, -0.494119, -0.091572,
		-0.487370, 0.868858, -0.086925,
		40.171837, 43.499969, 48.860458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955055, 42.789185, 48.468674>,  <40.512993, 42.891769, 48.921307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955055, 42.789185, 48.468674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049088, 43.177773, 48.456089>,  <40.105507, 43.410923, 48.448540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049088, 43.177773, 48.456089>,  <39.955055, 42.789185, 48.468674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049088, 43.177773, 48.456089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187976, -0.077193, -0.979136,
		-0.953626, 0.224262, -0.200759,
		0.235080, 0.971467, -0.031457,
		40.119610, 43.469212, 48.446651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797859, 42.991745, 47.678787>,  <39.955055, 42.789185, 48.468674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797859, 42.991745, 47.678787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003349, 43.294838, 47.839752>,  <40.126644, 43.476692, 47.936333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003349, 43.294838, 47.839752>,  <39.797859, 42.991745, 47.678787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003349, 43.294838, 47.839752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408688, 0.196277, -0.891319,
		-0.754363, 0.622351, -0.208843,
		0.513723, 0.757730, 0.402411,
		40.157467, 43.522156, 47.960476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700932, 43.454838, 47.113117>,  <39.797859, 42.991745, 47.678787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700932, 43.454838, 47.113117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005295, 43.581841, 47.339462>,  <40.187912, 43.658043, 47.475269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005295, 43.581841, 47.339462>,  <39.700932, 43.454838, 47.113117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005295, 43.581841, 47.339462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545777, 0.158464, -0.822810,
		-0.350916, 0.934922, -0.052709,
		0.760911, 0.317504, 0.565866,
		40.233570, 43.677094, 47.509224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.349270, 44.993160, 55.080257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.456718, 44.607880, 55.083916>,  <41.521187, 44.376713, 55.086113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.456718, 44.607880, 55.083916>,  <41.349270, 44.993160, 55.080257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456718, 44.607880, 55.083916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581038, -0.154454, 0.799086,
		-0.768268, -0.219969, -0.601147,
		0.268624, -0.963202, 0.009148,
		41.537304, 44.318920, 55.086658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731369, 44.472305, 55.149174>,  <41.349270, 44.993160, 55.080257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731369, 44.472305, 55.149174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037651, 44.284691, 55.325214>,  <41.221420, 44.172123, 55.430840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037651, 44.284691, 55.325214>,  <40.731369, 44.472305, 55.149174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037651, 44.284691, 55.325214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582239, -0.214733, 0.784148,
		-0.273293, -0.856674, -0.437517,
		0.765708, -0.469042, 0.440104,
		41.267365, 44.143978, 55.457245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423737, 43.911789, 55.300552>,  <40.731369, 44.472305, 55.149174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423737, 43.911789, 55.300552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.745167, 43.921501, 55.538437>,  <40.938023, 43.927330, 55.681168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.745167, 43.921501, 55.538437>,  <40.423737, 43.911789, 55.300552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745167, 43.921501, 55.538437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520797, -0.455060, 0.722282,
		0.288170, -0.890129, -0.353027,
		0.803573, 0.024284, 0.594711,
		40.986240, 43.928787, 55.716850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235912, 43.403069, 55.796535>,  <40.423737, 43.911789, 55.300552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235912, 43.403069, 55.796535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.565094, 43.553505, 55.966858>,  <40.762604, 43.643764, 56.069050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.565094, 43.553505, 55.966858>,  <40.235912, 43.403069, 55.796535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565094, 43.553505, 55.966858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327034, -0.299266, 0.896375,
		0.464547, -0.876925, -0.123287,
		0.822949, 0.376089, 0.425807,
		40.811977, 43.666332, 56.094601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477798, 42.859581, 56.263515>,  <40.235912, 43.403069, 55.796535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477798, 42.859581, 56.263515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.588322, 43.223190, 56.388306>,  <40.654636, 43.441357, 56.463181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.588322, 43.223190, 56.388306>,  <40.477798, 42.859581, 56.263515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588322, 43.223190, 56.388306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415270, -0.179821, 0.891748,
		0.866720, -0.375953, 0.327804,
		0.276309, 0.909024, 0.311976,
		40.671215, 43.495899, 56.481899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855984, 42.693436, 56.759232>,  <40.477798, 42.859581, 56.263515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855984, 42.693436, 56.759232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.732712, 43.068680, 56.822449>,  <40.658749, 43.293827, 56.860378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.732712, 43.068680, 56.822449>,  <40.855984, 42.693436, 56.759232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732712, 43.068680, 56.822449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312523, -0.256745, 0.914555,
		0.898530, 0.232453, 0.372304,
		-0.308178, 0.938109, 0.158045,
		40.640259, 43.350113, 56.869862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075336, 42.839901, 57.474785>,  <40.855984, 42.693436, 56.759232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075336, 42.839901, 57.474785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.793610, 43.098091, 57.356594>,  <40.624573, 43.253006, 57.285679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.793610, 43.098091, 57.356594>,  <41.075336, 42.839901, 57.474785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793610, 43.098091, 57.356594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493583, -0.146119, 0.857336,
		0.510212, 0.749676, 0.421508,
		-0.704315, 0.645473, -0.295476,
		40.582314, 43.291733, 57.267952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945831, 43.135498, 58.052986>,  <41.075336, 42.839901, 57.474785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945831, 43.135498, 58.052986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.629261, 43.233955, 57.829178>,  <40.439320, 43.293030, 57.694893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.629261, 43.233955, 57.829178>,  <40.945831, 43.135498, 58.052986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629261, 43.233955, 57.829178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586275, -0.046576, 0.808772,
		0.173010, 0.968115, 0.181166,
		-0.791422, 0.246139, -0.559523,
		40.391834, 43.307796, 57.661320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754951, 43.682144, 58.371571>,  <40.945831, 43.135498, 58.052986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754951, 43.682144, 58.371571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469292, 43.512901, 58.148510>,  <40.297897, 43.411358, 58.014675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469292, 43.512901, 58.148510>,  <40.754951, 43.682144, 58.371571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469292, 43.512901, 58.148510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566021, -0.119655, 0.815661,
		-0.411835, 0.898145, -0.154035,
		-0.714151, -0.423105, -0.557647,
		40.255047, 43.385971, 57.981216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177719, 43.850685, 58.674156>,  <40.754951, 43.682144, 58.371571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177719, 43.850685, 58.674156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025188, 43.560547, 58.444908>,  <39.933670, 43.386463, 58.307362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025188, 43.560547, 58.444908>,  <40.177719, 43.850685, 58.674156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025188, 43.560547, 58.444908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594671, -0.282194, 0.752817,
		-0.707781, 0.627888, -0.323732,
		-0.381330, -0.725343, -0.573118,
		39.910789, 43.342945, 58.272972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492226, 43.919003, 58.863537>,  <40.177719, 43.850685, 58.674156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492226, 43.919003, 58.863537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532043, 43.554420, 58.703865>,  <39.555935, 43.335670, 58.608063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532043, 43.554420, 58.703865>,  <39.492226, 43.919003, 58.863537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532043, 43.554420, 58.703865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785573, -0.318210, 0.530676,
		-0.610709, 0.260758, -0.747690,
		0.099544, -0.911454, -0.399178,
		39.561905, 43.280983, 58.584110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803535, 43.763435, 58.591175>,  <39.492226, 43.919003, 58.863537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803535, 43.763435, 58.591175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.014076, 43.426308, 58.636101>,  <39.140400, 43.224033, 58.663055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.014076, 43.426308, 58.636101>,  <38.803535, 43.763435, 58.591175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014076, 43.426308, 58.636101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753212, -0.400899, 0.521490,
		-0.394477, -0.359111, -0.845830,
		0.526365, -0.842805, 0.112341,
		39.171982, 43.173462, 58.669796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400211, 43.121662, 58.433437>,  <38.803535, 43.763435, 58.591175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400211, 43.121662, 58.433437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673958, 43.035973, 58.712219>,  <38.838207, 42.984558, 58.879490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673958, 43.035973, 58.712219>,  <38.400211, 43.121662, 58.433437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673958, 43.035973, 58.712219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702738, -0.448670, 0.552136,
		0.194422, -0.867642, -0.457600,
		0.684368, -0.214226, 0.696956,
		38.879269, 42.971706, 58.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432487, 42.367496, 58.656284>,  <38.400211, 43.121662, 58.433437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432487, 42.367496, 58.656284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594032, 42.586288, 58.949596>,  <38.690960, 42.717564, 59.125584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594032, 42.586288, 58.949596>,  <38.432487, 42.367496, 58.656284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594032, 42.586288, 58.949596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600127, -0.446571, 0.663643,
		0.690464, -0.708085, 0.147904,
		0.403866, 0.546983, 0.733281,
		38.715191, 42.750381, 59.169582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543503, 41.915859, 58.161846>,  <38.432487, 42.367496, 58.656284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543503, 41.915859, 58.161846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317383, 41.605225, 58.050606>,  <38.181709, 41.418842, 57.983860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317383, 41.605225, 58.050606>,  <38.543503, 41.915859, 58.161846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317383, 41.605225, 58.050606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335032, 0.091926, -0.937712,
		0.753781, -0.623265, 0.208216,
		-0.565303, -0.776589, -0.278105,
		38.147793, 41.372250, 57.967175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000202, 41.449226, 57.707970>,  <38.543503, 41.915859, 58.161846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000202, 41.449226, 57.707970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.620930, 41.354729, 57.622982>,  <38.393368, 41.298031, 57.571987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.620930, 41.354729, 57.622982>,  <39.000202, 41.449226, 57.707970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620930, 41.354729, 57.622982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202660, 0.065362, -0.977065,
		0.244717, -0.969492, -0.014097,
		-0.948179, -0.236247, -0.212473,
		38.336475, 41.283855, 57.559238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976582, 40.928509, 57.244194>,  <39.000202, 41.449226, 57.707970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976582, 40.928509, 57.244194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606895, 41.072533, 57.193314>,  <38.385082, 41.158947, 57.162785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606895, 41.072533, 57.193314>,  <38.976582, 40.928509, 57.244194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606895, 41.072533, 57.193314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167339, 0.082467, -0.982444,
		-0.343253, -0.929276, -0.136470,
		-0.924216, 0.360064, -0.127197,
		38.329632, 41.180553, 57.155155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735332, 40.577774, 56.653728>,  <38.976582, 40.928509, 57.244194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735332, 40.577774, 56.653728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.511848, 40.907646, 56.688927>,  <38.377758, 41.105568, 56.710045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.511848, 40.907646, 56.688927>,  <38.735332, 40.577774, 56.653728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511848, 40.907646, 56.688927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129988, 0.191865, -0.972775,
		-0.819112, -0.532062, -0.214395,
		-0.558711, 0.824680, 0.087997,
		38.344234, 41.155052, 56.715324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278324, 40.559582, 56.061977>,  <38.735332, 40.577774, 56.653728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278324, 40.559582, 56.061977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281647, 40.933067, 56.205147>,  <38.283642, 41.157158, 56.291050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281647, 40.933067, 56.205147>,  <38.278324, 40.559582, 56.061977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281647, 40.933067, 56.205147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189105, 0.350010, -0.917460,
		-0.981922, 0.075310, -0.173661,
		0.008311, 0.933714, 0.357924,
		38.284142, 41.213181, 56.312523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851753, 40.913860, 55.597561>,  <38.278324, 40.559582, 56.061977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851753, 40.913860, 55.597561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063461, 41.200165, 55.779800>,  <38.190487, 41.371948, 55.889145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063461, 41.200165, 55.779800>,  <37.851753, 40.913860, 55.597561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063461, 41.200165, 55.779800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138521, 0.456872, -0.878681,
		-0.837072, 0.528166, 0.142660,
		0.529266, 0.715758, 0.455596,
		38.222240, 41.414890, 55.916481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610435, 41.616810, 55.340233>,  <37.851753, 40.913860, 55.597561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610435, 41.616810, 55.340233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.978661, 41.666122, 55.488487>,  <38.199596, 41.695709, 55.577438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.978661, 41.666122, 55.488487>,  <37.610435, 41.616810, 55.340233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978661, 41.666122, 55.488487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290099, 0.419609, -0.860099,
		-0.261557, 0.899294, 0.350511,
		0.920560, 0.123282, 0.370636,
		38.254829, 41.703106, 55.599678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780743, 42.312870, 55.213638>,  <37.610435, 41.616810, 55.340233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780743, 42.312870, 55.213638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.124359, 42.117867, 55.276093>,  <38.330528, 42.000866, 55.313564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.124359, 42.117867, 55.276093>,  <37.780743, 42.312870, 55.213638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124359, 42.117867, 55.276093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397418, 0.442897, -0.803680,
		0.322647, 0.752449, 0.574212,
		0.859045, -0.487507, 0.156138,
		38.382072, 41.971615, 55.322933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284237, 42.816246, 55.030884>,  <37.780743, 42.312870, 55.213638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284237, 42.816246, 55.030884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472290, 42.463356, 55.041103>,  <38.585121, 42.251621, 55.047234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472290, 42.463356, 55.041103>,  <38.284237, 42.816246, 55.030884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472290, 42.463356, 55.041103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598407, 0.297346, -0.743972,
		0.648755, 0.365053, 0.667722,
		0.470134, -0.882225, 0.025546,
		38.613331, 42.198689, 55.048767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879963, 42.987026, 54.930717>,  <38.284237, 42.816246, 55.030884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879963, 42.987026, 54.930717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.890301, 42.601479, 54.824665>,  <38.896503, 42.370152, 54.761032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.890301, 42.601479, 54.824665>,  <38.879963, 42.987026, 54.930717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890301, 42.601479, 54.824665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535286, 0.237340, -0.810641,
		0.844275, -0.120969, 0.522078,
		0.025847, -0.963865, -0.265134,
		38.898056, 42.312321, 54.745125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469646, 42.863754, 54.439064>,  <38.879963, 42.987026, 54.930717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469646, 42.863754, 54.439064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.283714, 42.521072, 54.349621>,  <39.172157, 42.315464, 54.295956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.283714, 42.521072, 54.349621>,  <39.469646, 42.863754, 54.439064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283714, 42.521072, 54.349621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363756, 0.045470, -0.930384,
		0.807228, -0.513806, 0.290494,
		-0.464828, -0.856701, -0.223604,
		39.144264, 42.264061, 54.282539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014194, 42.498131, 54.116096>,  <39.469646, 42.863754, 54.439064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014194, 42.498131, 54.116096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.665947, 42.342537, 53.995625>,  <39.456997, 42.249180, 53.923344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.665947, 42.342537, 53.995625>,  <40.014194, 42.498131, 54.116096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665947, 42.342537, 53.995625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364291, -0.098319, -0.926081,
		0.330620, -0.915982, 0.227303,
		-0.870622, -0.388985, -0.301178,
		39.404758, 42.225842, 53.905270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209793, 41.905159, 53.837299>,  <40.014194, 42.498131, 54.116096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209793, 41.905159, 53.837299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.859161, 41.993225, 53.666122>,  <39.648781, 42.046066, 53.563416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.859161, 41.993225, 53.666122>,  <40.209793, 41.905159, 53.837299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859161, 41.993225, 53.666122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435660, -0.014767, -0.899990,
		-0.204470, -0.975350, -0.082975,
		-0.876580, 0.220170, -0.427940,
		39.596188, 42.059277, 53.537739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255146, 41.572830, 53.156700>,  <40.209793, 41.905159, 53.837299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255146, 41.572830, 53.156700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940117, 41.817780, 53.129181>,  <39.751099, 41.964748, 53.112671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940117, 41.817780, 53.129181>,  <40.255146, 41.572830, 53.156700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940117, 41.817780, 53.129181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205346, 0.155542, -0.966250,
		-0.581003, -0.775118, -0.248248,
		-0.787572, 0.612371, -0.068797,
		39.703846, 42.001492, 53.108543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987862, 40.918488, 52.935375>,  <40.255146, 41.572830, 53.156700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987862, 40.918488, 52.935375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160870, 40.593338, 52.779343>,  <40.264675, 40.398251, 52.685722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160870, 40.593338, 52.779343>,  <39.987862, 40.918488, 52.935375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160870, 40.593338, 52.779343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362998, -0.553028, 0.749929,
		-0.825323, -0.182760, -0.534266,
		0.432521, -0.812871, -0.390086,
		40.290627, 40.349476, 52.662315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470181, 40.485672, 52.932701>,  <39.987862, 40.918488, 52.935375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470181, 40.485672, 52.932701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.807434, 40.270645, 52.937664>,  <40.009785, 40.141628, 52.940643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.807434, 40.270645, 52.937664>,  <39.470181, 40.485672, 52.932701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807434, 40.270645, 52.937664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349816, -0.530841, 0.771904,
		-0.408360, -0.655158, -0.635618,
		0.843131, -0.537564, 0.012411,
		40.060371, 40.109375, 52.941387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264385, 39.822655, 53.107319>,  <39.470181, 40.485672, 52.932701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264385, 39.822655, 53.107319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.657417, 39.796921, 53.177048>,  <39.893238, 39.781479, 53.218887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.657417, 39.796921, 53.177048>,  <39.264385, 39.822655, 53.107319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657417, 39.796921, 53.177048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180043, -0.561672, 0.807533,
		0.045963, -0.824855, -0.563473,
		0.982584, -0.064333, 0.174326,
		39.952194, 39.777622, 53.229347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355064, 39.121025, 53.318951>,  <39.264385, 39.822655, 53.107319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355064, 39.121025, 53.318951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666737, 39.333748, 53.451649>,  <39.853741, 39.461380, 53.531265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666737, 39.333748, 53.451649>,  <39.355064, 39.121025, 53.318951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666737, 39.333748, 53.451649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011296, -0.517265, 0.855751,
		0.626693, -0.670535, -0.397038,
		0.779184, 0.531808, 0.331740,
		39.900494, 39.493290, 53.551170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830059, 38.636642, 53.534935>,  <39.355064, 39.121025, 53.318951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830059, 38.636642, 53.534935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.908607, 38.981583, 53.721611>,  <39.955734, 39.188545, 53.833614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.908607, 38.981583, 53.721611>,  <39.830059, 38.636642, 53.534935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908607, 38.981583, 53.721611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112443, -0.453009, 0.884386,
		0.974062, -0.226141, 0.008008,
		0.196368, 0.862347, 0.466687,
		39.967518, 39.240288, 53.861618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261795, 38.434284, 54.060677>,  <39.830059, 38.636642, 53.534935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261795, 38.434284, 54.060677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.159279, 38.805023, 54.170418>,  <40.097771, 39.027466, 54.236263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.159279, 38.805023, 54.170418>,  <40.261795, 38.434284, 54.060677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159279, 38.805023, 54.170418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058104, -0.298095, 0.952766,
		0.964852, 0.228243, 0.130252,
		-0.256290, 0.926846, 0.274356,
		40.082394, 39.083076, 54.252724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506470, 38.514107, 54.805443>,  <40.261795, 38.434284, 54.060677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506470, 38.514107, 54.805443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.223907, 38.792038, 54.751480>,  <40.054371, 38.958797, 54.719105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.223907, 38.792038, 54.751480>,  <40.506470, 38.514107, 54.805443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223907, 38.792038, 54.751480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283178, -0.102761, 0.953546,
		0.648691, 0.711793, 0.269352,
		-0.706406, 0.694832, -0.134904,
		40.011986, 39.000488, 54.711010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118454, 38.570908, 55.356022>,  <40.506470, 38.514107, 54.805443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118454, 38.570908, 55.356022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.276375, 38.204781, 55.324234>,  <41.371128, 37.985104, 55.305161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.276375, 38.204781, 55.324234>,  <41.118454, 38.570908, 55.356022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276375, 38.204781, 55.324234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527224, 0.296545, -0.796301,
		0.752439, 0.272484, 0.599657,
		0.394804, -0.915322, -0.079472,
		41.394817, 37.930183, 55.300392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821430, 38.638359, 55.258457>,  <41.118454, 38.570908, 55.356022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821430, 38.638359, 55.258457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.734276, 38.293991, 55.074570>,  <41.681984, 38.087368, 54.964237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.734276, 38.293991, 55.074570>,  <41.821430, 38.638359, 55.258457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734276, 38.293991, 55.074570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483026, 0.314176, -0.817300,
		0.848064, -0.400130, 0.347394,
		-0.217884, -0.860924, -0.459715,
		41.668911, 38.035713, 54.936657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481380, 38.294941, 55.044842>,  <41.821430, 38.638359, 55.258457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481380, 38.294941, 55.044842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.212894, 38.109940, 54.813133>,  <42.051804, 37.998940, 54.674110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.212894, 38.109940, 54.813133>,  <42.481380, 38.294941, 55.044842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212894, 38.109940, 54.813133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536040, 0.236894, -0.810273,
		0.511982, -0.854382, 0.088915,
		-0.671219, -0.462507, -0.579268,
		42.011528, 37.971188, 54.639351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889904, 37.799221, 54.492657>,  <42.481380, 38.294941, 55.044842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889904, 37.799221, 54.492657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.514183, 37.856880, 54.368118>,  <42.288750, 37.891476, 54.293396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.514183, 37.856880, 54.368118>,  <42.889904, 37.799221, 54.492657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514183, 37.856880, 54.368118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330724, 0.138957, -0.933441,
		-0.091286, -0.979752, -0.178195,
		-0.939302, 0.144144, -0.311342,
		42.232391, 37.900124, 54.274715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741436, 37.359943, 53.918449>,  <42.889904, 37.799221, 54.492657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741436, 37.359943, 53.918449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.487614, 37.666359, 53.877426>,  <42.335320, 37.850208, 53.852814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.487614, 37.666359, 53.877426>,  <42.741436, 37.359943, 53.918449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487614, 37.666359, 53.877426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294597, 0.117059, -0.948425,
		-0.714527, -0.632044, -0.299954,
		-0.634558, 0.766041, -0.102556,
		42.297245, 37.896172, 53.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748634, 37.518833, 53.166630>,  <42.741436, 37.359943, 53.918449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748634, 37.518833, 53.166630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.552151, 37.836052, 53.310741>,  <42.434261, 38.026382, 53.397209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.552151, 37.836052, 53.310741>,  <42.748634, 37.518833, 53.166630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552151, 37.836052, 53.310741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009530, 0.418486, -0.908173,
		-0.870992, -0.442666, -0.213121,
		-0.491205, 0.793042, 0.360279,
		42.404789, 38.073963, 53.418827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079399, 37.687580, 52.673355>,  <42.748634, 37.518833, 53.166630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079399, 37.687580, 52.673355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.207577, 37.998833, 52.889442>,  <42.284485, 38.185585, 53.019093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.207577, 37.998833, 52.889442>,  <42.079399, 37.687580, 52.673355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207577, 37.998833, 52.889442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279704, 0.467136, -0.838778,
		-0.905030, 0.419883, -0.067954,
		0.320445, 0.778127, 0.540215,
		42.303711, 38.232269, 53.051506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.930252, 41.194588, 59.695728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669113, 41.417458, 59.490456>,  <41.512432, 41.551178, 59.367290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669113, 41.417458, 59.490456>,  <41.930252, 41.194588, 59.695728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669113, 41.417458, 59.490456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371792, -0.354569, -0.857934,
		-0.659974, -0.750894, 0.024326,
		-0.652843, 0.557170, -0.513183,
		41.473259, 41.584610, 59.336502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451313, 40.735226, 59.162853>,  <41.930252, 41.194588, 59.695728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451313, 40.735226, 59.162853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.428619, 41.115440, 59.040695>,  <41.415005, 41.343567, 58.967400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.428619, 41.115440, 59.040695>,  <41.451313, 40.735226, 59.162853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428619, 41.115440, 59.040695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302463, -0.275152, -0.912583,
		-0.951471, -0.144145, -0.271891,
		-0.056733, 0.950533, -0.305398,
		41.411598, 41.400600, 58.949078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073505, 40.767262, 58.581039>,  <41.451313, 40.735226, 59.162853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073505, 40.767262, 58.581039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.281837, 41.106140, 58.539093>,  <41.406837, 41.309467, 58.513924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.281837, 41.106140, 58.539093>,  <41.073505, 40.767262, 58.581039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281837, 41.106140, 58.539093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181159, -0.229740, -0.956243,
		-0.834216, 0.479044, -0.273133,
		0.520832, 0.847193, -0.104869,
		41.438087, 41.360298, 58.507633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982178, 41.119648, 57.918118>,  <41.073505, 40.767262, 58.581039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982178, 41.119648, 57.918118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.317078, 41.315247, 58.016022>,  <41.518017, 41.432606, 58.074764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.317078, 41.315247, 58.016022>,  <40.982178, 41.119648, 57.918118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317078, 41.315247, 58.016022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345241, -0.125582, -0.930074,
		-0.424062, 0.863200, -0.273963,
		0.837245, 0.488993, 0.244758,
		41.568253, 41.461945, 58.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084255, 41.371769, 57.328896>,  <40.982178, 41.119648, 57.918118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084255, 41.371769, 57.328896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.436790, 41.445129, 57.503075>,  <41.648312, 41.489147, 57.607582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.436790, 41.445129, 57.503075>,  <41.084255, 41.371769, 57.328896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436790, 41.445129, 57.503075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408656, 0.166723, -0.897331,
		-0.237173, 0.968796, 0.071989,
		0.881334, 0.183404, 0.435447,
		41.701191, 41.500153, 57.633709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363632, 42.015800, 56.977566>,  <41.084255, 41.371769, 57.328896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363632, 42.015800, 56.977566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.670784, 41.820526, 57.143475>,  <41.855076, 41.703362, 57.243019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.670784, 41.820526, 57.143475>,  <41.363632, 42.015800, 56.977566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670784, 41.820526, 57.143475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496913, 0.045315, -0.866616,
		0.404278, 0.871560, 0.277385,
		0.767878, -0.488190, 0.414770,
		41.901146, 41.674068, 57.267906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036346, 42.385406, 56.881226>,  <41.363632, 42.015800, 56.977566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036346, 42.385406, 56.881226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.150391, 42.010170, 56.959908>,  <42.218819, 41.785027, 57.007114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.150391, 42.010170, 56.959908>,  <42.036346, 42.385406, 56.881226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150391, 42.010170, 56.959908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634325, 0.030817, -0.772452,
		0.718571, 0.345006, 0.603843,
		0.285109, -0.938094, 0.196702,
		42.235924, 41.728741, 57.018917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746693, 42.386200, 56.891041>,  <42.036346, 42.385406, 56.881226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746693, 42.386200, 56.891041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.692883, 41.990517, 56.867828>,  <42.660595, 41.753105, 56.853901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.692883, 41.990517, 56.867828>,  <42.746693, 42.386200, 56.891041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692883, 41.990517, 56.867828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669811, -0.047622, -0.741003,
		0.730244, -0.138555, 0.668989,
		-0.134528, -0.989209, -0.058030,
		42.652523, 41.693752, 56.850418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373142, 42.143112, 56.972275>,  <42.746693, 42.386200, 56.891041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373142, 42.143112, 56.972275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.166603, 41.867744, 56.768524>,  <43.042679, 41.702522, 56.646275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.166603, 41.867744, 56.768524>,  <43.373142, 42.143112, 56.972275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166603, 41.867744, 56.768524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700670, 0.002379, -0.713482,
		0.492386, -0.725310, 0.481125,
		-0.516351, -0.688419, -0.509374,
		43.011700, 41.661221, 56.615711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878574, 41.594753, 56.759651>,  <43.373142, 42.143112, 56.972275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878574, 41.594753, 56.759651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.563385, 41.562759, 56.515453>,  <43.374271, 41.543564, 56.368935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.563385, 41.562759, 56.515453>,  <43.878574, 41.594753, 56.759651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563385, 41.562759, 56.515453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615462, -0.130632, -0.777266,
		-0.017579, -0.988199, 0.152163,
		-0.787971, -0.079987, -0.610495,
		43.326992, 41.538765, 56.332306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001133, 41.000942, 56.349030>,  <43.878574, 41.594753, 56.759651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001133, 41.000942, 56.349030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.719955, 41.205330, 56.151131>,  <43.551247, 41.327965, 56.032391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.719955, 41.205330, 56.151131>,  <44.001133, 41.000942, 56.349030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719955, 41.205330, 56.151131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570869, -0.009570, -0.820985,
		-0.424236, -0.859544, -0.284971,
		-0.702946, 0.510973, -0.494747,
		43.509071, 41.358624, 56.002708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885769, 40.670235, 55.694744>,  <44.001133, 41.000942, 56.349030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885769, 40.670235, 55.694744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.795399, 41.059212, 55.671719>,  <43.741177, 41.292599, 55.657902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.795399, 41.059212, 55.671719>,  <43.885769, 40.670235, 55.694744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795399, 41.059212, 55.671719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699193, 0.120726, -0.704666,
		-0.678298, -0.199450, -0.707200,
		-0.225924, 0.972443, -0.057566,
		43.727623, 41.350945, 55.654449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708771, 40.054405, 55.151424>,  <43.885769, 40.670235, 55.694744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708771, 40.054405, 55.151424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.028618, 39.845139, 55.269348>,  <44.220524, 39.719578, 55.340103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.028618, 39.845139, 55.269348>,  <43.708771, 40.054405, 55.151424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028618, 39.845139, 55.269348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377559, -0.056225, 0.924277,
		-0.466977, -0.850373, -0.242485,
		0.799614, -0.523168, 0.294810,
		44.268501, 39.688187, 55.357792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456203, 39.452583, 55.472267>,  <43.708771, 40.054405, 55.151424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456203, 39.452583, 55.472267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.832870, 39.458786, 55.606739>,  <44.058872, 39.462505, 55.687424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.832870, 39.458786, 55.606739>,  <43.456203, 39.452583, 55.472267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832870, 39.458786, 55.606739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308889, -0.356685, 0.881682,
		0.133580, -0.934096, -0.331091,
		0.941671, 0.015505, 0.336179,
		44.115372, 39.463436, 55.707592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582695, 38.856899, 55.664806>,  <43.456203, 39.452583, 55.472267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582695, 38.856899, 55.664806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.824329, 39.086639, 55.885788>,  <43.969311, 39.224483, 56.018379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.824329, 39.086639, 55.885788>,  <43.582695, 38.856899, 55.664806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824329, 39.086639, 55.885788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440896, -0.336612, 0.832047,
		0.663848, -0.746202, 0.049886,
		0.604083, 0.574348, 0.552457,
		44.005554, 39.258945, 56.051525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910080, 38.462902, 56.175156>,  <43.582695, 38.856899, 55.664806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910080, 38.462902, 56.175156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.943573, 38.841919, 56.298538>,  <43.963669, 39.069328, 56.372566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.943573, 38.841919, 56.298538>,  <43.910080, 38.462902, 56.175156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943573, 38.841919, 56.298538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433705, -0.244029, 0.867381,
		0.897156, -0.206409, 0.390522,
		0.083736, 0.947547, 0.308453,
		43.968693, 39.126183, 56.391075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299076, 38.455643, 56.933552>,  <43.910080, 38.462902, 56.175156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299076, 38.455643, 56.933552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.084621, 38.788666, 56.877834>,  <43.955948, 38.988480, 56.844402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.084621, 38.788666, 56.877834>,  <44.299076, 38.455643, 56.933552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084621, 38.788666, 56.877834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463888, -0.152726, 0.872630,
		0.705243, 0.532464, 0.468097,
		-0.536135, 0.832560, -0.139295,
		43.923782, 39.038433, 56.836044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270897, 38.722836, 57.562668>,  <44.299076, 38.455643, 56.933552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270897, 38.722836, 57.562668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.962700, 38.915298, 57.395416>,  <43.777782, 39.030777, 57.295063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.962700, 38.915298, 57.395416>,  <44.270897, 38.722836, 57.562668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962700, 38.915298, 57.395416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525969, -0.109273, 0.843455,
		0.360141, 0.869799, 0.337266,
		-0.770490, 0.481154, -0.418133,
		43.731552, 39.059647, 57.269978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850460, 38.934532, 58.080040>,  <44.270897, 38.722836, 57.562668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850460, 38.934532, 58.080040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.606495, 39.019554, 57.774666>,  <43.460117, 39.070568, 57.591442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.606495, 39.019554, 57.774666>,  <43.850460, 38.934532, 58.080040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606495, 39.019554, 57.774666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792021, -0.131020, 0.596269,
		0.026716, 0.968325, 0.248259,
		-0.609909, 0.212556, -0.763433,
		43.423523, 39.083321, 57.545635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426968, 39.559414, 58.239437>,  <43.850460, 38.934532, 58.080040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426968, 39.559414, 58.239437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.258987, 39.305183, 57.980305>,  <43.158199, 39.152645, 57.824825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.258987, 39.305183, 57.980305>,  <43.426968, 39.559414, 58.239437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258987, 39.305183, 57.980305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794334, -0.087836, 0.601097,
		-0.438946, 0.767025, -0.467973,
		-0.419952, -0.635576, -0.647830,
		43.133003, 39.114510, 57.785957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697849, 39.807869, 58.207249>,  <43.426968, 39.559414, 58.239437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697849, 39.807869, 58.207249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.702896, 39.429863, 58.076538>,  <42.705925, 39.203060, 57.998112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.702896, 39.429863, 58.076538>,  <42.697849, 39.807869, 58.207249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702896, 39.429863, 58.076538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726211, -0.233306, 0.646673,
		-0.687357, 0.229154, -0.689224,
		0.012613, -0.945017, -0.326778,
		42.706680, 39.146358, 57.978504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978607, 39.567722, 58.119568>,  <42.697849, 39.807869, 58.207249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978607, 39.567722, 58.119568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.205330, 39.240593, 58.159355>,  <42.341362, 39.044315, 58.183228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.205330, 39.240593, 58.159355>,  <41.978607, 39.567722, 58.119568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205330, 39.240593, 58.159355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664585, -0.382533, 0.641868,
		-0.486886, -0.429920, -0.760336,
		0.566806, -0.817825, 0.099468,
		42.375370, 38.995247, 58.189198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506428, 39.119675, 58.302620>,  <41.978607, 39.567722, 58.119568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506428, 39.119675, 58.302620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.834072, 38.903328, 58.379051>,  <42.030659, 38.773518, 58.424908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.834072, 38.903328, 58.379051>,  <41.506428, 39.119675, 58.302620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834072, 38.903328, 58.379051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530624, -0.587891, 0.610592,
		-0.217920, -0.601534, -0.768549,
		0.819115, -0.540870, 0.191076,
		42.079807, 38.741066, 58.436375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313828, 38.468418, 58.057541>,  <41.506428, 39.119675, 58.302620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313828, 38.468418, 58.057541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.616173, 38.404152, 58.311424>,  <41.797581, 38.365593, 58.463757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.616173, 38.404152, 58.311424>,  <41.313828, 38.468418, 58.057541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616173, 38.404152, 58.311424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592621, -0.580010, 0.558918,
		0.278340, -0.798608, -0.533622,
		0.755862, -0.160666, 0.634711,
		41.842930, 38.355953, 58.501839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381241, 37.767776, 58.195503>,  <41.313828, 38.468418, 58.057541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381241, 37.767776, 58.195503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.537537, 37.947777, 58.516708>,  <41.631313, 38.055779, 58.709431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.537537, 37.947777, 58.516708>,  <41.381241, 37.767776, 58.195503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537537, 37.947777, 58.516708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635314, -0.499436, 0.589016,
		0.666110, -0.740313, 0.090743,
		0.390736, 0.450000, 0.803010,
		41.654758, 38.082775, 58.757610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531219, 37.182636, 58.694248>,  <41.381241, 37.767776, 58.195503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531219, 37.182636, 58.694248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.475281, 37.525467, 58.892586>,  <41.441719, 37.731167, 59.011589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.475281, 37.525467, 58.892586>,  <41.531219, 37.182636, 58.694248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475281, 37.525467, 58.892586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465603, -0.498867, 0.730989,
		0.873874, -0.128641, 0.468823,
		-0.139845, 0.857078, 0.495843,
		41.433327, 37.782589, 59.041340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025684, 36.807007, 58.225075>,  <41.531219, 37.182636, 58.694248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025684, 36.807007, 58.225075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.645771, 36.916504, 58.164444>,  <41.417824, 36.982201, 58.128067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.645771, 36.916504, 58.164444>,  <42.025684, 36.807007, 58.225075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645771, 36.916504, 58.164444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120588, -0.126768, -0.984575,
		-0.288736, -0.953412, 0.087392,
		-0.949785, 0.273744, -0.151572,
		41.360836, 36.998627, 58.118973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786568, 36.397999, 57.603298>,  <42.025684, 36.807007, 58.225075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786568, 36.397999, 57.603298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.525703, 36.699409, 57.636482>,  <41.369183, 36.880257, 57.656391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.525703, 36.699409, 57.636482>,  <41.786568, 36.397999, 57.603298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525703, 36.699409, 57.636482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107710, 0.016214, -0.994050,
		-0.750387, -0.657219, 0.070588,
		-0.652164, 0.753525, 0.082956,
		41.330055, 36.925468, 57.661369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218945, 36.240429, 57.174484>,  <41.786568, 36.397999, 57.603298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218945, 36.240429, 57.174484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.192448, 36.638634, 57.201515>,  <41.176548, 36.877556, 57.217735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.192448, 36.638634, 57.201515>,  <41.218945, 36.240429, 57.174484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192448, 36.638634, 57.201515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150256, 0.057001, -0.987003,
		-0.986425, -0.075539, 0.145806,
		-0.066246, 0.995512, 0.067577,
		41.172573, 36.937286, 57.221786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808575, 36.401817, 56.614140>,  <41.218945, 36.240429, 57.174484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808575, 36.401817, 56.614140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.962826, 36.758530, 56.708817>,  <41.055378, 36.972557, 56.765621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.962826, 36.758530, 56.708817>,  <40.808575, 36.401817, 56.614140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962826, 36.758530, 56.708817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179136, 0.324017, -0.928937,
		-0.905096, 0.315828, 0.284700,
		0.385632, 0.891777, 0.236690,
		41.078514, 37.026062, 56.779823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484077, 36.839958, 56.058029>,  <40.808575, 36.401817, 56.614140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484077, 36.839958, 56.058029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.804996, 37.026894, 56.206573>,  <40.997547, 37.139057, 56.295700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.804996, 37.026894, 56.206573>,  <40.484077, 36.839958, 56.058029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804996, 37.026894, 56.206573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057322, 0.558928, -0.827233,
		-0.594163, 0.684976, 0.421638,
		0.802300, 0.467342, 0.371358,
		41.045685, 37.167095, 56.317982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426769, 37.563576, 55.916851>,  <40.484077, 36.839958, 56.058029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426769, 37.563576, 55.916851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818657, 37.492508, 55.953922>,  <41.053787, 37.449867, 55.976166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818657, 37.492508, 55.953922>,  <40.426769, 37.563576, 55.916851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818657, 37.492508, 55.953922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178459, 0.563236, -0.806795,
		0.091143, 0.806969, 0.583518,
		0.979717, -0.177668, 0.092676,
		41.112572, 37.439209, 55.981724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635883, 38.140484, 55.691566>,  <40.426769, 37.563576, 55.916851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635883, 38.140484, 55.691566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.959930, 37.906212, 55.681099>,  <41.154358, 37.765648, 55.674820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.959930, 37.906212, 55.681099>,  <40.635883, 38.140484, 55.691566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959930, 37.906212, 55.681099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313513, 0.470514, -0.824819,
		0.495391, 0.659999, 0.564791,
		0.810122, -0.585677, -0.026170,
		41.202969, 37.730507, 55.673248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473156, 38.861282, 55.451736>,  <40.635883, 38.140484, 55.691566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473156, 38.861282, 55.451736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.116127, 38.944519, 55.291733>,  <39.901909, 38.994461, 55.195732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.116127, 38.944519, 55.291733>,  <40.473156, 38.861282, 55.451736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116127, 38.944519, 55.291733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424197, -0.086781, 0.901402,
		0.152864, 0.974251, 0.165732,
		-0.892575, 0.208095, -0.400008,
		39.848354, 39.006947, 55.171730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224041, 39.275852, 55.937386>,  <40.473156, 38.861282, 55.451736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224041, 39.275852, 55.937386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.915939, 39.163376, 55.708427>,  <39.731079, 39.095890, 55.571053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.915939, 39.163376, 55.708427>,  <40.224041, 39.275852, 55.937386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915939, 39.163376, 55.708427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521578, -0.238706, 0.819131,
		-0.366969, 0.929489, 0.037200,
		-0.770253, -0.281193, -0.572399,
		39.684864, 39.079018, 55.536709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584667, 39.712082, 56.054501>,  <40.224041, 39.275852, 55.937386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584667, 39.712082, 56.054501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.417740, 39.390312, 55.885387>,  <39.317585, 39.197250, 55.783920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.417740, 39.390312, 55.885387>,  <39.584667, 39.712082, 56.054501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417740, 39.390312, 55.885387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651087, -0.059898, 0.756636,
		-0.633982, 0.591024, -0.498755,
		-0.417316, -0.804427, -0.422783,
		39.292545, 39.148983, 55.758553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840885, 39.853016, 56.076340>,  <39.584667, 39.712082, 56.054501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840885, 39.853016, 56.076340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.933723, 39.463974, 56.071045>,  <38.989426, 39.230549, 56.067867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.933723, 39.463974, 56.071045>,  <38.840885, 39.853016, 56.076340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933723, 39.463974, 56.071045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587045, -0.150908, 0.795365,
		-0.775572, -0.176830, -0.605986,
		0.232092, -0.972604, -0.013233,
		39.003349, 39.172192, 56.067074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173157, 39.456520, 56.103889>,  <38.840885, 39.853016, 56.076340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173157, 39.456520, 56.103889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.459900, 39.206863, 56.228191>,  <38.631947, 39.057072, 56.302773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.459900, 39.206863, 56.228191>,  <38.173157, 39.456520, 56.103889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459900, 39.206863, 56.228191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523342, -0.187183, 0.831310,
		-0.460685, -0.758560, -0.460822,
		0.716856, -0.624139, 0.310754,
		38.674957, 39.019623, 56.321419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776714, 38.990242, 56.541977>,  <38.173157, 39.456520, 56.103889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776714, 38.990242, 56.541977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160194, 38.930588, 56.638855>,  <38.390282, 38.894794, 56.696983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160194, 38.930588, 56.638855>,  <37.776714, 38.990242, 56.541977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160194, 38.930588, 56.638855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268098, -0.189450, 0.944580,
		-0.094981, -0.970499, -0.221607,
		0.958698, -0.149129, 0.242195,
		38.447803, 38.885849, 56.711514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859638, 38.229794, 56.858337>,  <37.776714, 38.990242, 56.541977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859638, 38.229794, 56.858337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.157051, 38.455727, 57.001514>,  <38.335499, 38.591286, 57.087421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.157051, 38.455727, 57.001514>,  <37.859638, 38.229794, 56.858337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157051, 38.455727, 57.001514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291366, -0.208144, 0.933693,
		0.601887, -0.798521, 0.009812,
		0.743531, 0.564837, 0.357941,
		38.380112, 38.625179, 57.108898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039562, 37.849522, 57.496078>,  <37.859638, 38.229794, 56.858337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039562, 37.849522, 57.496078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.224377, 38.200485, 57.547737>,  <38.335266, 38.411064, 57.578732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.224377, 38.200485, 57.547737>,  <38.039562, 37.849522, 57.496078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224377, 38.200485, 57.547737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250865, -0.010373, 0.967966,
		0.850642, -0.479631, 0.215319,
		0.462033, 0.877409, 0.129146,
		38.362988, 38.463707, 57.586479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430325, 37.757668, 58.160072>,  <38.039562, 37.849522, 57.496078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430325, 37.757668, 58.160072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389847, 38.149292, 58.089424>,  <38.365559, 38.384266, 58.047035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389847, 38.149292, 58.089424>,  <38.430325, 37.757668, 58.160072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389847, 38.149292, 58.089424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144029, 0.161244, 0.976348,
		0.984386, 0.124240, 0.124697,
		-0.101195, 0.979063, -0.176620,
		38.359489, 38.443012, 58.036438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<46.269917, 43.264797, 44.681339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.982903, 43.541420, 44.648136>,  <45.810692, 43.707394, 44.628212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.982903, 43.541420, 44.648136>,  <46.269917, 43.264797, 44.681339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982903, 43.541420, 44.648136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537462, -0.473928, 0.697515,
		0.443027, 0.545110, 0.711746,
		-0.717539, 0.691554, -0.083012,
		45.767639, 43.748886, 44.623234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950180, 43.108448, 45.205387>,  <46.269917, 43.264797, 44.681339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950180, 43.108448, 45.205387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.686829, 43.354935, 45.032497>,  <45.528820, 43.502827, 44.928764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.686829, 43.354935, 45.032497>,  <45.950180, 43.108448, 45.205387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686829, 43.354935, 45.032497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745285, -0.453348, 0.488903,
		0.105323, 0.644011, 0.757731,
		-0.658375, 0.616218, -0.432224,
		45.489315, 43.539799, 44.902832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622334, 43.428574, 45.715645>,  <45.950180, 43.108448, 45.205387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622334, 43.428574, 45.715645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.371124, 43.454773, 45.405472>,  <45.220398, 43.470493, 45.219368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.371124, 43.454773, 45.405472>,  <45.622334, 43.428574, 45.715645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371124, 43.454773, 45.405472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757326, -0.280661, 0.589649,
		-0.179013, 0.957570, 0.225865,
		-0.628021, 0.065499, -0.775435,
		45.182716, 43.474422, 45.172840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019436, 43.744907, 45.976997>,  <45.622334, 43.428574, 45.715645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019436, 43.744907, 45.976997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.879021, 43.579086, 45.641159>,  <44.794773, 43.479591, 45.439655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.879021, 43.579086, 45.641159>,  <45.019436, 43.744907, 45.976997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879021, 43.579086, 45.641159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822987, -0.291078, 0.487818,
		-0.446615, 0.862216, -0.238995,
		-0.351038, -0.414557, -0.839592,
		44.773708, 43.454720, 45.389282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286919, 43.814011, 45.967205>,  <45.019436, 43.744907, 45.976997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286919, 43.814011, 45.967205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.300209, 43.513298, 45.703773>,  <44.308186, 43.332870, 45.545715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.300209, 43.513298, 45.703773>,  <44.286919, 43.814011, 45.967205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300209, 43.513298, 45.703773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593880, -0.544846, 0.591987,
		-0.803867, 0.371445, -0.464572,
		0.033230, -0.751779, -0.658577,
		44.310177, 43.287766, 45.506199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671658, 43.683506, 45.667080>,  <44.286919, 43.814011, 45.967205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671658, 43.683506, 45.667080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.859138, 43.330292, 45.657520>,  <43.971626, 43.118362, 45.651783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.859138, 43.330292, 45.657520>,  <43.671658, 43.683506, 45.667080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859138, 43.330292, 45.657520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774940, -0.424012, 0.468701,
		-0.424012, -0.201161, -0.883033,
		-0.468701, 0.883033, 0.023899,
		43.999748, 43.065380, 45.650349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145378, 43.263500, 45.634178>,  <43.671658, 43.683506, 45.667080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145378, 43.263500, 45.634178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.444462, 43.016525, 45.731915>,  <43.623913, 42.868340, 45.790554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.444462, 43.016525, 45.731915>,  <43.145378, 43.263500, 45.634178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444462, 43.016525, 45.731915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581638, -0.431469, 0.689589,
		-0.320350, -0.657732, -0.681737,
		0.747712, -0.617433, 0.244341,
		43.668774, 42.831295, 45.805218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822868, 42.631744, 45.538433>,  <43.145378, 43.263500, 45.634178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822868, 42.631744, 45.538433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.131508, 42.579636, 45.787483>,  <43.316692, 42.548370, 45.936913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.131508, 42.579636, 45.787483>,  <42.822868, 42.631744, 45.538433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131508, 42.579636, 45.787483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585589, -0.527758, 0.615270,
		0.248444, -0.839345, -0.483503,
		0.771597, -0.130274, 0.622629,
		43.362988, 42.540554, 45.974274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646992, 41.891563, 45.762363>,  <42.822868, 42.631744, 45.538433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646992, 41.891563, 45.762363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.912621, 42.045135, 46.018990>,  <43.071999, 42.137280, 46.172966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.912621, 42.045135, 46.018990>,  <42.646992, 41.891563, 45.762363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912621, 42.045135, 46.018990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464644, -0.460344, 0.756432,
		0.585760, -0.800424, -0.127309,
		0.664072, 0.383935, 0.641563,
		43.111843, 42.160316, 46.211460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819351, 41.334137, 46.086105>,  <42.646992, 41.891563, 45.762363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819351, 41.334137, 46.086105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.925407, 41.640015, 46.321033>,  <42.989040, 41.823540, 46.461990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.925407, 41.640015, 46.321033>,  <42.819351, 41.334137, 46.086105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925407, 41.640015, 46.321033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486839, -0.419606, 0.766106,
		0.832279, -0.489055, 0.261030,
		0.265139, 0.764694, 0.587320,
		43.004948, 41.869423, 46.497231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071205, 41.082542, 46.730721>,  <42.819351, 41.334137, 46.086105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071205, 41.082542, 46.730721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.972157, 41.460442, 46.816643>,  <42.912727, 41.687180, 46.868198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.972157, 41.460442, 46.816643>,  <43.071205, 41.082542, 46.730721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972157, 41.460442, 46.816643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402945, -0.302052, 0.863944,
		0.881089, 0.127375, 0.455475,
		-0.247622, 0.944744, 0.214809,
		42.897869, 41.743866, 46.881084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530758, 41.286591, 47.264339>,  <43.071205, 41.082542, 46.730721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530758, 41.286591, 47.264339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.211582, 41.524147, 47.305515>,  <43.020077, 41.666679, 47.330219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.211582, 41.524147, 47.305515>,  <43.530758, 41.286591, 47.264339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211582, 41.524147, 47.305515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214208, -0.439041, 0.872558,
		0.563394, 0.674196, 0.477542,
		-0.797936, 0.593888, 0.102935,
		42.972202, 41.702312, 47.336395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085171, 41.068855, 47.819927>,  <43.530758, 41.286591, 47.264339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085171, 41.068855, 47.819927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.140152, 40.673782, 47.790001>,  <44.173141, 40.436741, 47.772045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.140152, 40.673782, 47.790001>,  <44.085171, 41.068855, 47.819927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140152, 40.673782, 47.790001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440111, 0.128572, -0.888691,
		0.887360, 0.089226, 0.452361,
		0.137455, -0.987678, -0.074820,
		44.181389, 40.377480, 47.767555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798645, 40.846935, 47.939476>,  <44.085171, 41.068855, 47.819927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798645, 40.846935, 47.939476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.645298, 40.557915, 47.709366>,  <44.553291, 40.384502, 47.571301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.645298, 40.557915, 47.709366>,  <44.798645, 40.846935, 47.939476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645298, 40.557915, 47.709366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734536, 0.139070, -0.664167,
		0.559901, -0.677180, 0.477428,
		-0.383365, -0.722555, -0.575278,
		44.530289, 40.341148, 47.536781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326946, 40.359962, 47.749123>,  <44.798645, 40.846935, 47.939476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326946, 40.359962, 47.749123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.065769, 40.283737, 47.455906>,  <44.909061, 40.238003, 47.279976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.065769, 40.283737, 47.455906>,  <45.326946, 40.359962, 47.749123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065769, 40.283737, 47.455906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734968, 0.074403, -0.674007,
		0.182984, -0.978851, 0.091480,
		-0.652946, -0.190567, -0.733039,
		44.869884, 40.226566, 47.235992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521820, 39.792850, 47.451752>,  <45.326946, 40.359962, 47.749123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521820, 39.792850, 47.451752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.295929, 39.974266, 47.175957>,  <45.160397, 40.083115, 47.010479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.295929, 39.974266, 47.175957>,  <45.521820, 39.792850, 47.451752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295929, 39.974266, 47.175957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734083, -0.105699, -0.670783,
		-0.377102, -0.884948, -0.273243,
		-0.564726, 0.453537, -0.689485,
		45.126511, 40.110329, 46.969112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669357, 39.360466, 46.797211>,  <45.521820, 39.792850, 47.451752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669357, 39.360466, 46.797211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.499367, 39.700798, 46.673615>,  <45.397373, 39.904999, 46.599457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.499367, 39.700798, 46.673615>,  <45.669357, 39.360466, 46.797211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499367, 39.700798, 46.673615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564503, -0.017741, -0.825241,
		-0.707626, -0.525134, -0.472759,
		-0.424974, 0.850835, -0.308993,
		45.371876, 39.956047, 46.580917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587082, 39.149261, 46.144394>,  <45.669357, 39.360466, 46.797211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587082, 39.149261, 46.144394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.540062, 39.546432, 46.137825>,  <45.511848, 39.784737, 46.133884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.540062, 39.546432, 46.137825>,  <45.587082, 39.149261, 46.144394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540062, 39.546432, 46.137825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420290, 0.034758, -0.906724,
		-0.899743, -0.113491, -0.421405,
		-0.117552, 0.992931, -0.016426,
		45.504795, 39.844311, 46.132896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245102, 39.405064, 45.486469>,  <45.587082, 39.149261, 46.144394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245102, 39.405064, 45.486469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.448242, 39.701271, 45.662521>,  <45.570126, 39.878998, 45.768154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.448242, 39.701271, 45.662521>,  <45.245102, 39.405064, 45.486469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448242, 39.701271, 45.662521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487552, 0.174139, -0.855551,
		-0.710200, 0.649077, -0.272608,
		0.507847, 0.740523, 0.440133,
		45.600597, 39.923428, 45.794559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415421, 39.912556, 44.923843>,  <45.245102, 39.405064, 45.486469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415421, 39.912556, 44.923843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.677605, 40.034813, 45.200092>,  <45.834915, 40.108166, 45.365841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.677605, 40.034813, 45.200092>,  <45.415421, 39.912556, 44.923843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677605, 40.034813, 45.200092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667495, 0.193334, -0.719078,
		-0.353300, 0.932312, -0.077290,
		0.655462, 0.305641, 0.690618,
		45.874245, 40.126507, 45.407276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602688, 40.524361, 44.680588>,  <45.415421, 39.912556, 44.923843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602688, 40.524361, 44.680588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.892883, 40.406540, 44.929394>,  <46.067001, 40.335846, 45.078678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.892883, 40.406540, 44.929394>,  <45.602688, 40.524361, 44.680588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892883, 40.406540, 44.929394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682308, 0.189487, -0.706082,
		0.090115, 0.936661, 0.338447,
		0.725490, -0.294553, 0.622015,
		46.110531, 40.318172, 45.115997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.090515, 40.879570, 44.456741>,  <45.602688, 40.524361, 44.680588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.090515, 40.879570, 44.456741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.315826, 40.657028, 44.701099>,  <46.451012, 40.523502, 44.847713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.315826, 40.657028, 44.701099>,  <46.090515, 40.879570, 44.456741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315826, 40.657028, 44.701099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816653, 0.262398, -0.514028,
		0.125685, 0.788427, 0.602152,
		0.563277, -0.556355, 0.610892,
		46.484810, 40.490120, 44.884369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606403, 41.287533, 44.779819>,  <46.090515, 40.879570, 44.456741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606403, 41.287533, 44.779819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.735535, 40.909058, 44.788864>,  <46.813011, 40.681973, 44.794292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.735535, 40.909058, 44.788864>,  <46.606403, 41.287533, 44.779819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735535, 40.909058, 44.788864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904919, 0.301570, -0.300296,
		0.277317, 0.117405, 0.953578,
		0.322827, -0.946188, 0.022611,
		46.832382, 40.625202, 44.795647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235264, 41.359928, 45.173035>,  <46.606403, 41.287533, 44.779819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235264, 41.359928, 45.173035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.256981, 41.021080, 44.961586>,  <47.270012, 40.817772, 44.834717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.256981, 41.021080, 44.961586>,  <47.235264, 41.359928, 45.173035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.256981, 41.021080, 44.961586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848999, 0.317824, -0.422124,
		0.525598, -0.425881, 0.736459,
		0.054290, -0.847121, -0.528620,
		47.273270, 40.766945, 44.803001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.990273, 41.346218, 45.184525>,  <47.235264, 41.359928, 45.173035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.990273, 41.346218, 45.184525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.883476, 41.085526, 44.900562>,  <47.819397, 40.929111, 44.730186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.883476, 41.085526, 44.900562>,  <47.990273, 41.346218, 45.184525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.883476, 41.085526, 44.900562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910104, 0.071719, -0.408127,
		0.316902, -0.755054, 0.573992,
		-0.266992, -0.651728, -0.709905,
		47.803379, 40.890007, 44.687592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.420612, 40.831524, 45.267239>,  <47.990273, 41.346218, 45.184525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.420612, 40.831524, 45.267239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.312248, 40.786285, 44.884865>,  <48.247231, 40.759140, 44.655441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.312248, 40.786285, 44.884865>,  <48.420612, 40.831524, 45.267239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.312248, 40.786285, 44.884865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959253, 0.051080, -0.277894,
		0.080259, -0.992270, 0.094653,
		-0.270911, -0.113100, -0.955937,
		48.230976, 40.752357, 44.598083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.733093, 40.234825, 44.982273>,  <48.420612, 40.831524, 45.267239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.733093, 40.234825, 44.982273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.655319, 40.512962, 44.705521>,  <48.608654, 40.679844, 44.539471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.655319, 40.512962, 44.705521>,  <48.733093, 40.234825, 44.982273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.655319, 40.512962, 44.705521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969700, 0.029892, -0.242464,
		-0.147913, -0.718059, -0.680083,
		-0.194432, 0.695340, -0.691880,
		48.596989, 40.721565, 44.497955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.082329, 40.073395, 45.699635>,  <48.733093, 40.234825, 44.982273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.082329, 40.073395, 45.699635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.034256, 40.444283, 45.841522>,  <49.005413, 40.666817, 45.926655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.034256, 40.444283, 45.841522>,  <49.082329, 40.073395, 45.699635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.034256, 40.444283, 45.841522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340438, -0.374132, 0.862628,
		0.932555, -0.017089, 0.360623,
		-0.120179, 0.927218, 0.354716,
		48.998203, 40.722446, 45.947937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.501293, 40.152489, 46.345741>,  <49.082329, 40.073395, 45.699635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.501293, 40.152489, 46.345741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.188126, 40.399216, 46.313290>,  <49.000225, 40.547253, 46.293819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.188126, 40.399216, 46.313290>,  <49.501293, 40.152489, 46.345741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.188126, 40.399216, 46.313290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371465, -0.358874, 0.856284,
		0.499054, 0.700535, 0.510094,
		-0.782917, 0.616814, -0.081127,
		48.953251, 40.584259, 46.288952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.457119, 40.641758, 46.957062>,  <49.501293, 40.152489, 46.345741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.457119, 40.641758, 46.957062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.080551, 40.596916, 46.829842>,  <48.854610, 40.570011, 46.753510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.080551, 40.596916, 46.829842>,  <49.457119, 40.641758, 46.957062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.080551, 40.596916, 46.829842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282990, -0.250316, 0.925882,
		-0.183413, 0.961651, 0.203928,
		-0.941422, -0.112109, -0.318049,
		48.798126, 40.563282, 46.734428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.045406, 40.981407, 47.415241>,  <49.457119, 40.641758, 46.957062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.045406, 40.981407, 47.415241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.791016, 40.734802, 47.229576>,  <48.638382, 40.586838, 47.118179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.791016, 40.734802, 47.229576>,  <49.045406, 40.981407, 47.415241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.791016, 40.734802, 47.229576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414467, -0.234483, 0.879338,
		-0.650960, 0.751619, -0.106398,
		-0.635979, -0.616512, -0.464160,
		48.600224, 40.549850, 47.090328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.410454, 41.188168, 47.614391>,  <49.045406, 40.981407, 47.415241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.410454, 41.188168, 47.614391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.349083, 40.813759, 47.487698>,  <48.312260, 40.589115, 47.411682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.349083, 40.813759, 47.487698>,  <48.410454, 41.188168, 47.614391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.349083, 40.813759, 47.487698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353125, -0.247434, 0.902263,
		-0.922911, 0.250276, -0.292571,
		-0.153423, -0.936023, -0.316739,
		48.303055, 40.532951, 47.392677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748821, 41.080029, 47.639992>,  <48.410454, 41.188168, 47.614391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748821, 41.080029, 47.639992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.893600, 40.707153, 47.638424>,  <47.980469, 40.483429, 47.637486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.893600, 40.707153, 47.638424>,  <47.748821, 41.080029, 47.639992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.893600, 40.707153, 47.638424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620905, -0.244212, 0.744874,
		-0.695320, -0.267175, -0.667194,
		0.361948, -0.932190, -0.003915,
		48.002186, 40.427498, 47.637249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253391, 40.767014, 48.021847>,  <47.748821, 41.080029, 47.639992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253391, 40.767014, 48.021847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.533852, 40.481827, 48.025051>,  <47.702129, 40.310715, 48.026974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.533852, 40.481827, 48.025051>,  <47.253391, 40.767014, 48.021847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.533852, 40.481827, 48.025051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428901, -0.412765, 0.803535,
		-0.569584, -0.566840, -0.595203,
		0.701155, -0.712964, 0.008013,
		47.744198, 40.267937, 48.027454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908939, 40.032730, 48.088787>,  <47.253391, 40.767014, 48.021847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908939, 40.032730, 48.088787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.282333, 40.009018, 48.230267>,  <47.506371, 39.994793, 48.315155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.282333, 40.009018, 48.230267>,  <46.908939, 40.032730, 48.088787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.282333, 40.009018, 48.230267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330952, -0.522304, 0.785919,
		0.138149, -0.850697, -0.507179,
		0.933480, -0.059278, 0.353695,
		47.562378, 39.991234, 48.336376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936527, 39.295826, 48.295681>,  <46.908939, 40.032730, 48.088787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936527, 39.295826, 48.295681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.226494, 39.506279, 48.473522>,  <47.400475, 39.632553, 48.580227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.226494, 39.506279, 48.473522>,  <46.936527, 39.295826, 48.295681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226494, 39.506279, 48.473522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157821, -0.501418, 0.850690,
		0.670511, -0.686849, -0.280452,
		0.724919, 0.526136, 0.444606,
		47.443970, 39.664120, 48.606903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316269, 38.779011, 48.690056>,  <46.936527, 39.295826, 48.295681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316269, 38.779011, 48.690056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.401688, 39.125389, 48.870956>,  <47.452938, 39.333218, 48.979496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.401688, 39.125389, 48.870956>,  <47.316269, 38.779011, 48.690056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401688, 39.125389, 48.870956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080180, -0.445835, 0.891517,
		0.973638, -0.226640, -0.025773,
		0.213544, 0.865948, 0.452254,
		47.465752, 39.385174, 49.006634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.669468, 38.557278, 49.233807>,  <47.316269, 38.779011, 48.690056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.669468, 38.557278, 49.233807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.539497, 38.923882, 49.327126>,  <47.461514, 39.143845, 49.383118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.539497, 38.923882, 49.327126>,  <47.669468, 38.557278, 49.233807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539497, 38.923882, 49.327126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202285, -0.308325, 0.929525,
		0.923852, 0.254838, 0.285580,
		-0.324929, 0.916512, 0.233296,
		47.442020, 39.198833, 49.397114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865814, 38.653313, 49.934990>,  <47.669468, 38.557278, 49.233807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865814, 38.653313, 49.934990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.586288, 38.935966, 49.890579>,  <47.418575, 39.105560, 49.863934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.586288, 38.935966, 49.890579>,  <47.865814, 38.653313, 49.934990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.586288, 38.935966, 49.890579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221371, -0.066055, 0.972950,
		0.680190, 0.704485, 0.202589,
		-0.698811, 0.706638, -0.111023,
		47.376644, 39.147957, 49.857273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.047886, 39.246304, 50.351028>,  <47.865814, 38.653313, 49.934990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.047886, 39.246304, 50.351028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.655815, 39.239677, 50.272049>,  <47.420574, 39.235703, 50.224663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.655815, 39.239677, 50.272049>,  <48.047886, 39.246304, 50.351028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655815, 39.239677, 50.272049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197273, -0.011649, 0.980279,
		-0.018537, 0.999795, 0.008150,
		-0.980173, -0.016564, -0.197449,
		47.361763, 39.234707, 50.212814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.732349, 39.689205, 50.949017>,  <48.047886, 39.246304, 50.351028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.732349, 39.689205, 50.949017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.425301, 39.486725, 50.791786>,  <47.241070, 39.365238, 50.697449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.425301, 39.486725, 50.791786>,  <47.732349, 39.689205, 50.949017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.425301, 39.486725, 50.791786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424828, -0.057325, 0.903457,
		-0.479865, 0.860507, -0.171044,
		-0.767626, -0.506202, -0.393077,
		47.195011, 39.334866, 50.673862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226841, 39.938576, 51.395679>,  <47.732349, 39.689205, 50.949017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226841, 39.938576, 51.395679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.054070, 39.631340, 51.206589>,  <46.950405, 39.446999, 51.093136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.054070, 39.631340, 51.206589>,  <47.226841, 39.938576, 51.395679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.054070, 39.631340, 51.206589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578388, -0.166270, 0.798638,
		-0.692027, 0.618376, -0.372438,
		-0.431933, -0.768092, -0.472725,
		46.924488, 39.400913, 51.064770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538803, 40.015102, 51.436543>,  <47.226841, 39.938576, 51.395679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538803, 40.015102, 51.436543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.531723, 39.619209, 51.379799>,  <46.527473, 39.381676, 51.345753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.531723, 39.619209, 51.379799>,  <46.538803, 40.015102, 51.436543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531723, 39.619209, 51.379799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750721, -0.080555, 0.655690,
		-0.660382, 0.118104, -0.741584,
		-0.017701, -0.989728, -0.141860,
		46.526413, 39.322292, 51.337242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791779, 39.767555, 51.358654>,  <46.538803, 40.015102, 51.436543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791779, 39.767555, 51.358654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.036598, 39.477745, 51.485432>,  <46.183491, 39.303860, 51.561497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.036598, 39.477745, 51.485432>,  <45.791779, 39.767555, 51.358654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036598, 39.477745, 51.485432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575062, -0.132644, 0.807285,
		-0.542862, -0.676360, -0.497834,
		0.612050, -0.724530, 0.316942,
		46.220215, 39.260387, 51.580513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338238, 39.253956, 51.588753>,  <45.791779, 39.767555, 51.358654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338238, 39.253956, 51.588753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.691254, 39.147270, 51.743664>,  <45.903065, 39.083260, 51.836609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.691254, 39.147270, 51.743664>,  <45.338238, 39.253956, 51.588753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691254, 39.147270, 51.743664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456182, -0.285773, 0.842752,
		-0.114100, -0.920434, -0.373876,
		0.882541, -0.266714, 0.387279,
		45.956017, 39.067257, 51.859848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284500, 38.551643, 51.801811>,  <45.338238, 39.253956, 51.588753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284500, 38.551643, 51.801811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.598106, 38.691002, 52.007309>,  <45.786270, 38.774616, 52.130608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.598106, 38.691002, 52.007309>,  <45.284500, 38.551643, 51.801811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598106, 38.691002, 52.007309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472082, -0.202744, 0.857924,
		0.403058, -0.915158, 0.005517,
		0.784017, 0.348398, 0.513747,
		45.833313, 38.795521, 52.161434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305386, 38.172859, 52.392078>,  <45.284500, 38.551643, 51.801811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305386, 38.172859, 52.392078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.516937, 38.493034, 52.504925>,  <45.643867, 38.685139, 52.572632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.516937, 38.493034, 52.504925>,  <45.305386, 38.172859, 52.392078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516937, 38.493034, 52.504925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390980, -0.065247, 0.918084,
		0.753274, -0.595856, 0.278447,
		0.528878, 0.800436, 0.282117,
		45.675602, 38.733166, 52.589561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526028, 38.005402, 53.147964>,  <45.305386, 38.172859, 52.392078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.526028, 38.005402, 53.147964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.579048, 38.395309, 53.076118>,  <45.610859, 38.629253, 53.033012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.579048, 38.395309, 53.076118>,  <45.526028, 38.005402, 53.147964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579048, 38.395309, 53.076118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053017, 0.187925, 0.980752,
		0.989758, -0.120474, 0.076588,
		0.132548, 0.974767, -0.179613,
		45.618813, 38.687740, 53.022236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848904, 38.373650, 53.728500>,  <45.526028, 38.005402, 53.147964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848904, 38.373650, 53.728500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.636566, 38.656754, 53.542049>,  <45.509163, 38.826618, 53.430180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.636566, 38.656754, 53.542049>,  <45.848904, 38.373650, 53.728500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636566, 38.656754, 53.542049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321553, 0.340676, 0.883484,
		0.784095, 0.618878, 0.046736,
		-0.530847, 0.707763, -0.466125,
		45.477310, 38.869083, 53.402210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021481, 38.889118, 54.124950>,  <45.848904, 38.373650, 53.728500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021481, 38.889118, 54.124950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.685204, 38.993294, 53.935043>,  <45.483437, 39.055798, 53.821098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.685204, 38.993294, 53.935043>,  <46.021481, 38.889118, 54.124950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685204, 38.993294, 53.935043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405684, 0.277833, 0.870764,
		0.358684, 0.924653, -0.127918,
		-0.840694, 0.260435, -0.474771,
		45.432995, 39.071423, 53.792614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897209, 39.652969, 54.250095>,  <46.021481, 38.889118, 54.124950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897209, 39.652969, 54.250095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.536034, 39.522255, 54.138451>,  <45.319328, 39.443825, 54.071465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.536034, 39.522255, 54.138451>,  <45.897209, 39.652969, 54.250095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536034, 39.522255, 54.138451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419039, 0.525266, 0.740609,
		-0.095414, 0.785687, -0.611222,
		-0.902941, -0.326790, -0.279115,
		45.265152, 39.424217, 54.054714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569775, 40.167419, 54.382320>,  <45.897209, 39.652969, 54.250095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569775, 40.167419, 54.382320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.285435, 39.888260, 54.347374>,  <45.114830, 39.720764, 54.326408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.285435, 39.888260, 54.347374>,  <45.569775, 40.167419, 54.382320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285435, 39.888260, 54.347374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541408, 0.463662, 0.701353,
		-0.448965, 0.545855, -0.707441,
		-0.710850, -0.697897, -0.087362,
		45.072178, 39.678890, 54.321167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870922, 40.481674, 54.530304>,  <45.569775, 40.167419, 54.382320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870922, 40.481674, 54.530304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.827637, 40.092636, 54.612610>,  <44.801666, 39.859211, 54.661995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.827637, 40.092636, 54.612610>,  <44.870922, 40.481674, 54.530304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827637, 40.092636, 54.612610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633416, 0.226984, 0.739772,
		-0.766208, -0.050287, -0.640622,
		-0.108210, -0.972599, 0.205769,
		44.795174, 39.800858, 54.674339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218414, 40.333687, 54.742165>,  <44.870922, 40.481674, 54.530304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218414, 40.333687, 54.742165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.393372, 40.005058, 54.888428>,  <44.498348, 39.807880, 54.976185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.393372, 40.005058, 54.888428>,  <44.218414, 40.333687, 54.742165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393372, 40.005058, 54.888428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490864, 0.122575, 0.862570,
		-0.753483, -0.556773, -0.349665,
		0.437396, -0.821571, 0.365658,
		44.524590, 39.758587, 54.998127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870586, 40.940453, 54.753407>,  <44.218414, 40.333687, 54.742165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870586, 40.940453, 54.753407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.851158, 41.294907, 54.937756>,  <43.839500, 41.507580, 55.048367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.851158, 41.294907, 54.937756>,  <43.870586, 40.940453, 54.753407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851158, 41.294907, 54.937756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423998, 0.436075, -0.793766,
		-0.904360, 0.156858, -0.396899,
		-0.048569, 0.886135, 0.460876,
		43.836586, 41.560745, 55.076019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657169, 41.574699, 54.262550>,  <43.870586, 40.940453, 54.753407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657169, 41.574699, 54.262550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.859917, 41.740326, 54.564976>,  <43.981564, 41.839703, 54.746429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.859917, 41.740326, 54.564976>,  <43.657169, 41.574699, 54.262550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859917, 41.740326, 54.564976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592233, 0.470042, -0.654462,
		-0.626374, 0.779492, -0.006976,
		0.506869, 0.414069, 0.756063,
		44.011978, 41.864548, 54.791794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597626, 42.236198, 54.179108>,  <43.657169, 41.574699, 54.262550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597626, 42.236198, 54.179108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.915169, 42.205353, 54.420387>,  <44.105694, 42.186848, 54.565155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.915169, 42.205353, 54.420387>,  <43.597626, 42.236198, 54.179108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915169, 42.205353, 54.420387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455745, 0.732162, -0.506197,
		-0.402608, 0.676752, 0.616372,
		0.793854, -0.077109, 0.603200,
		44.153324, 42.182220, 54.601349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873890, 42.971077, 54.280338>,  <43.597626, 42.236198, 54.179108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873890, 42.971077, 54.280338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.160526, 42.703400, 54.358994>,  <44.332508, 42.542793, 54.406185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.160526, 42.703400, 54.358994>,  <43.873890, 42.971077, 54.280338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160526, 42.703400, 54.358994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613709, 0.470982, -0.633669,
		0.331439, 0.574761, 0.748197,
		0.716596, -0.669198, 0.196634,
		44.375504, 42.502640, 54.417984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424740, 43.312435, 54.353333>,  <43.873890, 42.971077, 54.280338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424740, 43.312435, 54.353333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.517685, 42.939949, 54.241013>,  <44.573452, 42.716457, 54.173622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.517685, 42.939949, 54.241013>,  <44.424740, 43.312435, 54.353333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517685, 42.939949, 54.241013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605855, 0.364423, -0.707202,
		0.760887, -0.005798, 0.648858,
		0.232359, -0.931215, -0.280798,
		44.587391, 42.660583, 54.156773>
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
