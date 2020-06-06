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
	<24.262877, 35.031902, 35.261391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125893, 34.671989, 35.153233>,  <24.043703, 34.456043, 35.088337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125893, 34.671989, 35.153233>,  <24.262877, 35.031902, 35.261391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125893, 34.671989, 35.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141112, -0.333797, 0.932023,
		-0.928875, 0.281024, 0.241282,
		-0.342460, -0.899781, -0.270400,
		24.023155, 34.402054, 35.072113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709444, 34.559311, 34.766426>,  <24.262877, 35.031902, 35.261391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709444, 34.559311, 34.766426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523748, 34.867332, 34.591385>,  <24.412331, 35.052147, 34.486362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523748, 34.867332, 34.591385>,  <24.709444, 34.559311, 34.766426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523748, 34.867332, 34.591385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534729, 0.637544, 0.554620,
		0.706078, 0.023478, -0.707744,
		-0.464240, 0.770056, -0.437601,
		24.384476, 35.098351, 34.460106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115051, 34.112476, 34.422138>,  <24.709444, 34.559311, 34.766426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115051, 34.112476, 34.422138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229445, 34.038406, 34.046070>,  <25.298080, 33.993965, 33.820431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229445, 34.038406, 34.046070>,  <25.115051, 34.112476, 34.422138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229445, 34.038406, 34.046070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792121, 0.506430, -0.340697,
		0.539220, 0.842163, -0.001852,
		0.285984, -0.185177, -0.940172,
		25.315239, 33.982853, 33.764019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369398, 34.712112, 34.121853>,  <25.115051, 34.112476, 34.422138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369398, 34.712112, 34.121853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207344, 34.443096, 33.874126>,  <25.110111, 34.281685, 33.725491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207344, 34.443096, 33.874126>,  <25.369398, 34.712112, 34.121853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207344, 34.443096, 33.874126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822286, 0.564149, -0.074719,
		0.399639, 0.478985, -0.781576,
		-0.405136, -0.672540, -0.619319,
		25.085804, 34.241333, 33.688332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241825, 35.497772, 34.002586>,  <25.369398, 34.712112, 34.121853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241825, 35.497772, 34.002586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366856, 35.636044, 33.648682>,  <25.441874, 35.719006, 33.436340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366856, 35.636044, 33.648682>,  <25.241825, 35.497772, 34.002586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366856, 35.636044, 33.648682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185194, 0.891381, 0.413694,
		0.931666, -0.293162, 0.214605,
		0.312574, 0.345681, -0.884761,
		25.460629, 35.739746, 33.383255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683376, 35.987469, 34.122765>,  <25.241825, 35.497772, 34.002586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683376, 35.987469, 34.122765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574652, 36.114716, 33.759464>,  <25.509417, 36.191063, 33.541485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574652, 36.114716, 33.759464>,  <25.683376, 35.987469, 34.122765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574652, 36.114716, 33.759464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069743, 0.947816, 0.311098,
		0.959820, 0.021216, -0.279814,
		-0.271812, 0.318113, -0.908252,
		25.493109, 36.210148, 33.486988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119183, 36.493553, 33.882168>,  <25.683376, 35.987469, 34.122765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119183, 36.493553, 33.882168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759886, 36.556576, 33.718048>,  <25.544308, 36.594387, 33.619576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759886, 36.556576, 33.718048>,  <26.119183, 36.493553, 33.882168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759886, 36.556576, 33.718048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062451, 0.969819, 0.235692,
		0.435046, 0.186085, -0.880969,
		-0.898240, 0.157555, -0.410295,
		25.490414, 36.603844, 33.594959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087374, 37.106941, 33.513992>,  <26.119183, 36.493553, 33.882168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087374, 37.106941, 33.513992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698280, 37.099735, 33.606483>,  <25.464825, 37.095413, 33.661980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698280, 37.099735, 33.606483>,  <26.087374, 37.106941, 33.513992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698280, 37.099735, 33.606483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106382, 0.851266, 0.513837,
		-0.206091, 0.524424, -0.826139,
		-0.972733, -0.018011, 0.231228,
		25.406460, 37.094334, 33.675854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046198, 37.792747, 33.655914>,  <26.087374, 37.106941, 33.513992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046198, 37.792747, 33.655914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730881, 37.616177, 33.827374>,  <25.541691, 37.510235, 33.930248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730881, 37.616177, 33.827374>,  <26.046198, 37.792747, 33.655914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730881, 37.616177, 33.827374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075618, 0.621871, 0.779460,
		-0.610638, 0.646856, -0.456836,
		-0.788291, -0.441423, 0.428652,
		25.494392, 37.483749, 33.955971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453922, 38.319027, 33.740135>,  <26.046198, 37.792747, 33.655914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453922, 38.319027, 33.740135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420568, 38.023788, 34.007942>,  <25.400557, 37.846645, 34.168629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420568, 38.023788, 34.007942>,  <25.453922, 38.319027, 33.740135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420568, 38.023788, 34.007942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052679, 0.674185, 0.736681,
		-0.995124, 0.026160, -0.095100,
		-0.083386, -0.738099, 0.669520,
		25.395554, 37.802361, 34.208797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898893, 38.525921, 34.117153>,  <25.453922, 38.319027, 33.740135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898893, 38.525921, 34.117153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096014, 38.272625, 34.355869>,  <25.214287, 38.120647, 34.499100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096014, 38.272625, 34.355869>,  <24.898893, 38.525921, 34.117153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096014, 38.272625, 34.355869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080850, 0.649563, 0.755997,
		-0.866379, -0.420805, 0.268907,
		0.492799, -0.633239, 0.596790,
		25.243855, 38.082653, 34.534904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377306, 38.273792, 34.636761>,  <24.898893, 38.525921, 34.117153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377306, 38.273792, 34.636761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.766331, 38.297371, 34.726788>,  <24.999744, 38.311516, 34.780804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.766331, 38.297371, 34.726788>,  <24.377306, 38.273792, 34.636761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.766331, 38.297371, 34.726788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219848, 0.549356, 0.806148,
		-0.076122, -0.833507, 0.547240,
		0.972559, 0.058944, 0.225063,
		25.058098, 38.315056, 34.794308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447336, 38.310070, 35.337440>,  <24.377306, 38.273792, 34.636761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447336, 38.310070, 35.337440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807148, 38.459000, 35.246033>,  <25.023035, 38.548359, 35.191189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807148, 38.459000, 35.246033>,  <24.447336, 38.310070, 35.337440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807148, 38.459000, 35.246033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007203, 0.510378, 0.859920,
		0.436797, -0.775171, 0.456419,
		0.899531, 0.372323, -0.228515,
		25.077007, 38.570698, 35.177479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071369, 38.154713, 35.755863>,  <24.447336, 38.310070, 35.337440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071369, 38.154713, 35.755863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083939, 38.522995, 35.600266>,  <25.091480, 38.743965, 35.506908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083939, 38.522995, 35.600266>,  <25.071369, 38.154713, 35.755863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083939, 38.522995, 35.600266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001028, 0.389214, 0.921147,
		0.999506, -0.028547, 0.013177,
		0.031424, 0.920705, -0.388993,
		25.093367, 38.799206, 35.483566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732828, 38.209541, 35.744976>,  <25.071369, 38.154713, 35.755863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732828, 38.209541, 35.744976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867842, 38.555084, 35.894547>,  <25.948851, 38.762409, 35.984287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867842, 38.555084, 35.894547>,  <25.732828, 38.209541, 35.744976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867842, 38.555084, 35.894547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142296, 0.345844, -0.927440,
		-0.930496, 0.366250, -0.006189,
		0.337535, 0.863859, 0.373922,
		25.969103, 38.814243, 36.006721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171459, 37.794674, 35.358131>,  <25.732828, 38.209541, 35.744976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171459, 37.794674, 35.358131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804998, 37.912979, 35.249920>,  <25.585121, 37.983963, 35.184994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804998, 37.912979, 35.249920>,  <26.171459, 37.794674, 35.358131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804998, 37.912979, 35.249920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112199, -0.837174, -0.535304,
		-0.384806, -0.460067, 0.800164,
		-0.916153, 0.295766, -0.270530,
		25.530153, 38.001709, 35.168762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725639, 37.220314, 35.358402>,  <26.171459, 37.794674, 35.358131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725639, 37.220314, 35.358402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565500, 37.487370, 35.107334>,  <25.469416, 37.647602, 34.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565500, 37.487370, 35.107334>,  <25.725639, 37.220314, 35.358402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565500, 37.487370, 35.107334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107808, -0.714522, -0.691257,
		-0.909999, -0.209076, 0.358035,
		-0.400350, 0.667642, -0.627674,
		25.445395, 37.687660, 34.919033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168365, 36.899918, 35.075294>,  <25.725639, 37.220314, 35.358402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168365, 36.899918, 35.075294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245331, 37.183445, 34.803837>,  <25.291510, 37.353561, 34.640961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245331, 37.183445, 34.803837>,  <25.168365, 36.899918, 35.075294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245331, 37.183445, 34.803837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257612, -0.630827, -0.731911,
		-0.946897, 0.315655, 0.061221,
		0.192411, 0.708815, -0.678645,
		25.303055, 37.396091, 34.600243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478985, 37.023033, 34.667507>,  <25.168365, 36.899918, 35.075294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478985, 37.023033, 34.667507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796944, 37.148685, 34.459869>,  <24.987719, 37.224075, 34.335285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796944, 37.148685, 34.459869>,  <24.478985, 37.023033, 34.667507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796944, 37.148685, 34.459869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313903, -0.519236, -0.794896,
		-0.519236, 0.794805, -0.314132,
		0.794896, 0.314132, -0.519097,
		25.035412, 37.242924, 34.304138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.176477, 37.083733, 34.077419>,  <24.478985, 37.023033, 34.667507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.176477, 37.083733, 34.077419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567890, 37.073212, 33.995659>,  <24.802738, 37.066898, 33.946602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567890, 37.073212, 33.995659>,  <24.176477, 37.083733, 34.077419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567890, 37.073212, 33.995659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198553, -0.386088, -0.900840,
		-0.055224, 0.922087, -0.383022,
		0.978533, -0.026302, -0.204405,
		24.861450, 37.065319, 33.934338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.206047, 37.043781, 33.351906>,  <24.176477, 37.083733, 34.077419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.206047, 37.043781, 33.351906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.581285, 36.960987, 33.462997>,  <24.806429, 36.911308, 33.529652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.581285, 36.960987, 33.462997>,  <24.206047, 37.043781, 33.351906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.581285, 36.960987, 33.462997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123285, -0.549763, -0.826173,
		0.323692, 0.809269, -0.490211,
		0.938096, -0.206990, 0.277724,
		24.862715, 36.898891, 33.546314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661165, 37.080967, 32.759884>,  <24.206047, 37.043781, 33.351906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661165, 37.080967, 32.759884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877052, 36.894054, 33.039986>,  <25.006584, 36.781906, 33.208046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877052, 36.894054, 33.039986>,  <24.661165, 37.080967, 32.759884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877052, 36.894054, 33.039986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361095, -0.622904, -0.693975,
		0.760470, 0.627409, -0.167461,
		0.539718, -0.467278, 0.700254,
		25.038967, 36.753872, 33.250061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058027, 36.697056, 32.368370>,  <24.661165, 37.080967, 32.759884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058027, 36.697056, 32.368370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179024, 36.527084, 32.709648>,  <25.251621, 36.425102, 32.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179024, 36.527084, 32.709648>,  <25.058027, 36.697056, 32.368370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179024, 36.527084, 32.709648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132595, -0.867663, -0.479145,
		0.943884, 0.258067, -0.206118,
		0.302492, -0.424927, 0.853191,
		25.269772, 36.399605, 32.965607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598635, 37.067928, 32.429996>,  <25.058027, 36.697056, 32.368370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598635, 37.067928, 32.429996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929300, 36.916348, 32.596378>,  <26.127701, 36.825397, 32.696205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929300, 36.916348, 32.596378>,  <25.598635, 37.067928, 32.429996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929300, 36.916348, 32.596378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349907, -0.925112, -0.147423,
		0.440668, -0.023675, -0.897358,
		0.826666, -0.378956, 0.415951,
		26.177299, 36.802662, 32.721165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053858, 36.728745, 31.932953>,  <25.598635, 37.067928, 32.429996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053858, 36.728745, 31.932953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129461, 36.563843, 32.289452>,  <26.174824, 36.464901, 32.503349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129461, 36.563843, 32.289452>,  <26.053858, 36.728745, 31.932953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129461, 36.563843, 32.289452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312695, -0.885629, -0.343340,
		0.930858, -0.213794, -0.296302,
		0.189009, -0.412253, 0.891248,
		26.186165, 36.440166, 32.556828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037584, 36.014893, 31.804613>,  <26.053858, 36.728745, 31.932953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037584, 36.014893, 31.804613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078709, 35.996918, 32.202087>,  <26.103384, 35.986134, 32.440571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078709, 35.996918, 32.202087>,  <26.037584, 36.014893, 31.804613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078709, 35.996918, 32.202087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260633, -0.965294, -0.016682,
		0.959948, -0.257272, -0.110953,
		0.102811, -0.044932, 0.993685,
		26.109552, 35.983437, 32.500195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554850, 35.429104, 32.135357>,  <26.037584, 36.014893, 31.804613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554850, 35.429104, 32.135357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228878, 35.506752, 32.353790>,  <26.033295, 35.553341, 32.484852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228878, 35.506752, 32.353790>,  <26.554850, 35.429104, 32.135357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228878, 35.506752, 32.353790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262567, -0.963655, -0.049266,
		0.516674, -0.183531, 0.836280,
		-0.814928, 0.194125, 0.546084,
		25.984400, 35.564991, 32.517616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510973, 34.948544, 32.687828>,  <26.554850, 35.429104, 32.135357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510973, 34.948544, 32.687828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128820, 35.042576, 32.616291>,  <25.899529, 35.098995, 32.573368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128820, 35.042576, 32.616291>,  <26.510973, 34.948544, 32.687828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128820, 35.042576, 32.616291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256115, -0.960917, 0.105093,
		-0.147145, 0.146208, 0.978249,
		-0.955381, 0.235080, -0.178840,
		25.842207, 35.113098, 32.562637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170498, 34.360142, 33.061008>,  <26.510973, 34.948544, 32.687828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170498, 34.360142, 33.061008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946085, 34.550091, 32.789791>,  <25.811438, 34.664059, 32.627060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946085, 34.550091, 32.789791>,  <26.170498, 34.360142, 33.061008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946085, 34.550091, 32.789791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430198, -0.867055, -0.251287,
		-0.707229, 0.150713, 0.690733,
		-0.561032, 0.474870, -0.678043,
		25.777775, 34.692551, 32.586376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508789, 33.995899, 32.558826>,  <26.170498, 34.360142, 33.061008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508789, 33.995899, 32.558826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111240, 34.011139, 32.517330>,  <25.872711, 34.020283, 32.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111240, 34.011139, 32.517330>,  <26.508789, 33.995899, 32.558826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111240, 34.011139, 32.517330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049182, -0.688143, -0.723906,
		-0.098972, -0.724574, 0.682054,
		-0.993874, 0.038102, -0.103743,
		25.813078, 34.022568, 32.486206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098614, 33.391544, 32.753807>,  <26.508789, 33.995899, 32.558826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098614, 33.391544, 32.753807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915169, 33.575577, 32.449703>,  <25.805101, 33.685997, 32.267242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915169, 33.575577, 32.449703>,  <26.098614, 33.391544, 32.753807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915169, 33.575577, 32.449703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093347, -0.825861, -0.556094,
		-0.883720, -0.325999, 0.335802,
		-0.458612, 0.460085, -0.760261,
		25.777586, 33.713604, 32.221626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468845, 33.046604, 32.565548>,  <26.098614, 33.391544, 32.753807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468845, 33.046604, 32.565548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609539, 33.255638, 32.254887>,  <25.693954, 33.381058, 32.068489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609539, 33.255638, 32.254887>,  <25.468845, 33.046604, 32.565548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609539, 33.255638, 32.254887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047159, -0.818721, -0.572252,
		-0.934911, 0.237907, -0.263328,
		0.351735, 0.522586, -0.776651,
		25.715059, 33.412415, 32.021893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.946777, 32.969692, 31.931442>,  <25.468845, 33.046604, 32.565548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.946777, 32.969692, 31.931442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332052, 33.008823, 31.831285>,  <25.563217, 33.032303, 31.771191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332052, 33.008823, 31.831285>,  <24.946777, 32.969692, 31.931442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332052, 33.008823, 31.831285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071187, -0.805362, -0.588494,
		-0.259228, 0.584655, -0.768751,
		0.963189, 0.097829, -0.250393,
		25.621010, 33.038174, 31.756168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933395, 32.993340, 31.203485>,  <24.946777, 32.969692, 31.931442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933395, 32.993340, 31.203485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308395, 32.918953, 31.321136>,  <25.533396, 32.874321, 31.391727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308395, 32.918953, 31.321136>,  <24.933395, 32.993340, 31.203485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308395, 32.918953, 31.321136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009317, -0.831501, -0.555445,
		0.347862, 0.523470, -0.777799,
		0.937499, -0.185971, 0.294125,
		25.589645, 32.863163, 31.409374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381542, 32.931370, 30.620958>,  <24.933395, 32.993340, 31.203485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381542, 32.931370, 30.620958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553511, 32.732872, 30.922663>,  <25.656691, 32.613773, 31.103685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553511, 32.732872, 30.922663>,  <25.381542, 32.931370, 30.620958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553511, 32.732872, 30.922663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111318, -0.799897, -0.589723,
		0.895979, 0.337496, -0.288650,
		0.429919, -0.496247, 0.754260,
		25.682486, 32.584000, 31.148941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920561, 32.453705, 30.370174>,  <25.381542, 32.931370, 30.620958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920561, 32.453705, 30.370174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182858, 32.388355, 30.665012>,  <26.340235, 32.349148, 30.841915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182858, 32.388355, 30.665012>,  <25.920561, 32.453705, 30.370174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182858, 32.388355, 30.665012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276631, -0.960402, 0.033233,
		0.702480, -0.225696, -0.674969,
		0.655742, -0.163372, 0.737097,
		26.379580, 32.339344, 30.886141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597475, 31.908102, 30.330887>,  <25.920561, 32.453705, 30.370174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597475, 31.908102, 30.330887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434935, 31.893444, 30.696079>,  <26.337410, 31.884649, 30.915195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434935, 31.893444, 30.696079>,  <26.597475, 31.908102, 30.330887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434935, 31.893444, 30.696079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201878, -0.970901, -0.128823,
		0.891136, -0.236659, 0.387131,
		-0.406353, -0.036645, 0.912981,
		26.313028, 31.882450, 30.969975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.911261, 31.311218, 30.672958>,  <26.597475, 31.908102, 30.330887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.911261, 31.311218, 30.672958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540833, 31.381489, 30.806547>,  <26.318577, 31.423651, 30.886700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540833, 31.381489, 30.806547>,  <26.911261, 31.311218, 30.672958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540833, 31.381489, 30.806547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226461, -0.966666, -0.119470,
		0.301850, -0.186268, 0.934982,
		-0.926068, 0.175675, 0.333970,
		26.263012, 31.434191, 30.906738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728136, 30.768150, 30.969938>,  <26.911261, 31.311218, 30.672958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728136, 30.768150, 30.969938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372784, 30.938374, 30.901031>,  <26.159573, 31.040508, 30.859688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372784, 30.938374, 30.901031>,  <26.728136, 30.768150, 30.969938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372784, 30.938374, 30.901031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362283, -0.880294, -0.306324,
		-0.282004, -0.209724, 0.936210,
		-0.888384, 0.425557, -0.172267,
		26.106268, 31.066040, 30.849352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128805, 30.464592, 31.268879>,  <26.728136, 30.768150, 30.969938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128805, 30.464592, 31.268879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103422, 30.617746, 30.900234>,  <26.088192, 30.709639, 30.679047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103422, 30.617746, 30.900234>,  <26.128805, 30.464592, 31.268879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103422, 30.617746, 30.900234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121787, -0.919544, -0.373640,
		-0.990526, 0.088531, 0.104981,
		-0.063456, 0.382885, -0.921614,
		26.084385, 30.732613, 30.623751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917753, 29.948162, 31.849712>,  <26.128805, 30.464592, 31.268879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917753, 29.948162, 31.849712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630360, 29.962317, 32.127571>,  <25.457924, 29.970810, 32.294285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630360, 29.962317, 32.127571>,  <25.917753, 29.948162, 31.849712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630360, 29.962317, 32.127571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443152, 0.793049, 0.417960,
		-0.536097, 0.608129, -0.585473,
		-0.718482, 0.035386, 0.694645,
		25.414816, 29.972933, 32.335964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794031, 30.660570, 31.982588>,  <25.917753, 29.948162, 31.849712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794031, 30.660570, 31.982588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623592, 30.455709, 32.280888>,  <25.521330, 30.332792, 32.459869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623592, 30.455709, 32.280888>,  <25.794031, 30.660570, 31.982588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623592, 30.455709, 32.280888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161284, 0.768116, 0.619665,
		-0.890185, 0.384315, -0.244690,
		-0.426097, -0.512152, 0.745749,
		25.495764, 30.302063, 32.504612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.323092, 31.079929, 32.225864>,  <25.794031, 30.660570, 31.982588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.323092, 31.079929, 32.225864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388126, 30.829735, 32.531109>,  <25.427147, 30.679619, 32.714256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388126, 30.829735, 32.531109>,  <25.323092, 31.079929, 32.225864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388126, 30.829735, 32.531109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233699, 0.726980, 0.645666,
		-0.958619, -0.283315, -0.027978,
		0.162588, -0.625486, 0.763107,
		25.436903, 30.642090, 32.760040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220642, 31.602522, 31.692125>,  <25.323092, 31.079929, 32.225864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220642, 31.602522, 31.692125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517532, 31.550318, 31.429197>,  <25.695667, 31.518995, 31.271441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517532, 31.550318, 31.429197>,  <25.220642, 31.602522, 31.692125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517532, 31.550318, 31.429197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276119, 0.953284, 0.122511,
		0.610622, -0.272429, 0.743588,
		0.742226, -0.130511, -0.657318,
		25.740200, 31.511164, 31.232002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720922, 31.874638, 32.107620>,  <25.220642, 31.602522, 31.692125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720922, 31.874638, 32.107620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891756, 31.873980, 31.745937>,  <25.994257, 31.873585, 31.528927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891756, 31.873980, 31.745937>,  <25.720922, 31.874638, 32.107620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891756, 31.873980, 31.745937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416010, 0.888233, 0.194878,
		0.802829, -0.459390, 0.380034,
		0.427084, -0.001644, -0.904210,
		26.019880, 31.873486, 31.474674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388699, 32.047092, 32.091213>,  <25.720922, 31.874638, 32.107620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388699, 32.047092, 32.091213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216385, 32.192039, 31.760612>,  <26.112997, 32.279007, 31.562250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216385, 32.192039, 31.760612>,  <26.388699, 32.047092, 32.091213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216385, 32.192039, 31.760612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369406, 0.906405, 0.204862,
		0.823385, -0.217065, -0.524327,
		-0.430784, 0.362370, -0.826506,
		26.087149, 32.300751, 31.512661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830151, 32.535065, 31.716253>,  <26.388699, 32.047092, 32.091213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830151, 32.535065, 31.716253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462521, 32.644810, 31.603096>,  <26.241943, 32.710655, 31.535202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462521, 32.644810, 31.603096>,  <26.830151, 32.535065, 31.716253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462521, 32.644810, 31.603096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171624, 0.924857, 0.339390,
		0.354753, 0.263372, -0.897098,
		-0.919073, 0.274363, -0.282895,
		26.186798, 32.727119, 31.518227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877798, 33.289379, 31.492834>,  <26.830151, 32.535065, 31.716253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877798, 33.289379, 31.492834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491716, 33.225979, 31.576031>,  <26.260067, 33.187939, 31.625950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491716, 33.225979, 31.576031>,  <26.877798, 33.289379, 31.492834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491716, 33.225979, 31.576031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086446, 0.944052, 0.318265,
		-0.246802, 0.289211, -0.924903,
		-0.965203, -0.158503, 0.207993,
		26.202156, 33.178429, 31.638428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385201, 33.819843, 31.139721>,  <26.877798, 33.289379, 31.492834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385201, 33.819843, 31.139721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281809, 33.696251, 31.505829>,  <26.219774, 33.622093, 31.725494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281809, 33.696251, 31.505829>,  <26.385201, 33.819843, 31.139721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281809, 33.696251, 31.505829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154220, 0.922117, 0.354848,
		-0.953628, 0.232873, -0.190695,
		-0.258478, -0.308984, 0.915270,
		26.204266, 33.603558, 31.780409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126707, 34.431160, 31.549961>,  <26.385201, 33.819843, 31.139721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126707, 34.431160, 31.549961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159281, 34.165466, 31.847189>,  <26.178825, 34.006050, 32.025528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159281, 34.165466, 31.847189>,  <26.126707, 34.431160, 31.549961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159281, 34.165466, 31.847189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137924, 0.745885, 0.651638,
		-0.987089, 0.049421, 0.152356,
		0.081435, -0.664238, 0.743072,
		26.183712, 33.966194, 32.070110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818451, 34.760544, 31.443302>,  <26.126707, 34.431160, 31.549961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818451, 34.760544, 31.443302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889252, 34.416763, 31.251465>,  <26.931732, 34.210495, 31.136362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889252, 34.416763, 31.251465>,  <26.818451, 34.760544, 31.443302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889252, 34.416763, 31.251465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534166, 0.325387, -0.780250,
		0.826642, 0.394287, -0.401498,
		0.177000, -0.859454, -0.479594,
		26.942352, 34.158928, 31.107586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019846, 35.187157, 30.836092>,  <26.818451, 34.760544, 31.443302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019846, 35.187157, 30.836092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411484, 35.184254, 30.917402>,  <27.646467, 35.182514, 30.966188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411484, 35.184254, 30.917402>,  <27.019846, 35.187157, 30.836092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411484, 35.184254, 30.917402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194786, -0.254360, -0.947291,
		0.058577, 0.967082, -0.247629,
		0.979095, -0.007254, 0.203274,
		27.705212, 35.182076, 30.978384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460377, 35.648609, 30.427488>,  <27.019846, 35.187157, 30.836092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460377, 35.648609, 30.427488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616446, 35.298969, 30.543228>,  <27.710087, 35.089188, 30.612673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616446, 35.298969, 30.543228>,  <27.460377, 35.648609, 30.427488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616446, 35.298969, 30.543228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103313, -0.270711, -0.957101,
		0.914927, 0.403328, -0.015318,
		0.390173, -0.874095, 0.289349,
		27.733498, 35.036739, 30.630033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033525, 35.581264, 29.983027>,  <27.460377, 35.648609, 30.427488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033525, 35.581264, 29.983027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900492, 35.230885, 30.122799>,  <27.820671, 35.020657, 30.206661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900492, 35.230885, 30.122799>,  <28.033525, 35.581264, 29.983027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900492, 35.230885, 30.122799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234368, -0.435666, -0.869061,
		0.913488, -0.207139, 0.350189,
		-0.332582, -0.875950, 0.349429,
		27.800716, 34.968102, 30.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571985, 34.977615, 29.869118>,  <28.033525, 35.581264, 29.983027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571985, 34.977615, 29.869118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214735, 34.802387, 29.909943>,  <28.000385, 34.697250, 29.934437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214735, 34.802387, 29.909943>,  <28.571985, 34.977615, 29.869118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214735, 34.802387, 29.909943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224016, -0.629960, -0.743618,
		0.390053, -0.641282, 0.660769,
		-0.893127, -0.438073, 0.102060,
		27.946796, 34.670967, 29.940561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762552, 34.313999, 29.822910>,  <28.571985, 34.977615, 29.869118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762552, 34.313999, 29.822910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385092, 34.373192, 29.704506>,  <28.158615, 34.408707, 29.633463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385092, 34.373192, 29.704506>,  <28.762552, 34.313999, 29.822910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385092, 34.373192, 29.704506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173587, -0.540210, -0.823432,
		-0.281760, -0.828417, 0.484083,
		-0.943652, 0.147980, -0.296012,
		28.101995, 34.417587, 29.615702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495218, 33.643631, 29.507507>,  <28.762552, 34.313999, 29.822910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495218, 33.643631, 29.507507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322304, 33.974026, 29.362804>,  <28.218555, 34.172264, 29.275982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322304, 33.974026, 29.362804>,  <28.495218, 33.643631, 29.507507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322304, 33.974026, 29.362804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224702, -0.289851, -0.930320,
		-0.873291, -0.483452, -0.060304,
		-0.432287, 0.825991, -0.361757,
		28.192617, 34.221825, 29.254278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040012, 33.584068, 28.869394>,  <28.495218, 33.643631, 29.507507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040012, 33.584068, 28.869394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244215, 33.926991, 28.895943>,  <28.366735, 34.132744, 28.911871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244215, 33.926991, 28.895943>,  <28.040012, 33.584068, 28.869394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244215, 33.926991, 28.895943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548908, -0.265500, -0.792597,
		-0.661880, 0.441055, -0.606123,
		0.510505, 0.857310, 0.066370,
		28.397366, 34.184185, 28.915854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078596, 33.802975, 28.245428>,  <28.040012, 33.584068, 28.869394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078596, 33.802975, 28.245428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381908, 33.986843, 28.430346>,  <28.563896, 34.097164, 28.541296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381908, 33.986843, 28.430346>,  <28.078596, 33.802975, 28.245428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381908, 33.986843, 28.430346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591039, -0.185479, -0.785029,
		-0.275107, 0.868506, -0.412327,
		0.758280, 0.459668, 0.462295,
		28.609392, 34.124744, 28.569035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334057, 34.308662, 27.785078>,  <28.078596, 33.802975, 28.245428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334057, 34.308662, 27.785078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623426, 34.228214, 28.049261>,  <28.797049, 34.179947, 28.207771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623426, 34.228214, 28.049261>,  <28.334057, 34.308662, 27.785078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623426, 34.228214, 28.049261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645419, -0.142650, -0.750390,
		0.245131, 0.969125, 0.026608,
		0.723426, -0.201118, 0.660460,
		28.840454, 34.167877, 28.247398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799412, 34.438999, 27.358290>,  <28.334057, 34.308662, 27.785078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799412, 34.438999, 27.358290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022131, 34.302238, 27.661098>,  <29.155762, 34.220184, 27.842785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022131, 34.302238, 27.661098>,  <28.799412, 34.438999, 27.358290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022131, 34.302238, 27.661098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665202, -0.362285, -0.652882,
		0.497478, 0.867096, 0.025712,
		0.556796, -0.341898, 0.757023,
		29.189169, 34.199669, 27.888205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955656, 34.118073, 26.644859>,  <28.799412, 34.438999, 27.358290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955656, 34.118073, 26.644859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854605, 33.736977, 26.577383>,  <28.793974, 33.508320, 26.536898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854605, 33.736977, 26.577383>,  <28.955656, 34.118073, 26.644859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854605, 33.736977, 26.577383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256138, 0.102275, -0.961215,
		0.933045, -0.286039, 0.218196,
		-0.252629, -0.952744, -0.168692,
		28.778816, 33.451153, 26.526775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567696, 33.711971, 26.432356>,  <28.955656, 34.118073, 26.644859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567696, 33.711971, 26.432356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208260, 33.581699, 26.314732>,  <28.992598, 33.503536, 26.244158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208260, 33.581699, 26.314732>,  <29.567696, 33.711971, 26.432356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208260, 33.581699, 26.314732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291955, 0.056530, -0.954760,
		0.327565, -0.943790, 0.044285,
		-0.898590, -0.325676, -0.294061,
		28.938683, 33.483997, 26.226513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388948, 33.650532, 25.759161>,  <29.567696, 33.711971, 26.432356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388948, 33.650532, 25.759161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241926, 33.282417, 25.705544>,  <29.153713, 33.061546, 25.673374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241926, 33.282417, 25.705544>,  <29.388948, 33.650532, 25.759161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241926, 33.282417, 25.705544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896738, -0.312508, -0.313370,
		0.246502, -0.235382, 0.940123,
		-0.367557, -0.920290, -0.134042,
		29.131659, 33.006329, 25.665331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954140, 33.123627, 25.970146>,  <29.388948, 33.650532, 25.759161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954140, 33.123627, 25.970146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733345, 32.969227, 25.674494>,  <29.600868, 32.876587, 25.497103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733345, 32.969227, 25.674494>,  <29.954140, 33.123627, 25.970146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733345, 32.969227, 25.674494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828497, -0.153571, -0.538524,
		0.094363, -0.909625, 0.404571,
		-0.551985, -0.386003, -0.739130,
		29.567749, 32.853424, 25.452755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383444, 32.629311, 25.662365>,  <29.954140, 33.123627, 25.970146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383444, 32.629311, 25.662365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102816, 32.711655, 25.389479>,  <29.934439, 32.761063, 25.225746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102816, 32.711655, 25.389479>,  <30.383444, 32.629311, 25.662365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102816, 32.711655, 25.389479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680796, -0.089189, -0.727023,
		-0.210513, -0.974508, -0.077578,
		-0.701571, 0.205863, -0.682216,
		29.892344, 32.773415, 25.184814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439938, 32.161053, 25.052713>,  <30.383444, 32.629311, 25.662365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439938, 32.161053, 25.052713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272532, 32.502113, 24.927605>,  <30.172089, 32.706749, 24.852539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272532, 32.502113, 24.927605>,  <30.439938, 32.161053, 25.052713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272532, 32.502113, 24.927605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684749, 0.070007, -0.725409,
		-0.596627, -0.517763, -0.613154,
		-0.418515, 0.852655, -0.312770,
		30.146976, 32.757912, 24.833775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394285, 32.188431, 24.291674>,  <30.439938, 32.161053, 25.052713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394285, 32.188431, 24.291674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400681, 32.567455, 24.419348>,  <30.404518, 32.794868, 24.495953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400681, 32.567455, 24.419348>,  <30.394285, 32.188431, 24.291674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400681, 32.567455, 24.419348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696369, 0.218522, -0.683607,
		-0.717506, 0.233202, -0.656356,
		0.015990, 0.947557, 0.319186,
		30.405478, 32.851723, 24.515104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236631, 32.527519, 23.735909>,  <30.394285, 32.188431, 24.291674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236631, 32.527519, 23.735909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407665, 32.802097, 23.971182>,  <30.510286, 32.966846, 24.112345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407665, 32.802097, 23.971182>,  <30.236631, 32.527519, 23.735909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407665, 32.802097, 23.971182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610644, 0.260433, -0.747856,
		-0.666548, 0.678941, -0.307819,
		0.427584, 0.686450, 0.588182,
		30.535940, 33.008034, 24.147636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362135, 33.210041, 23.346579>,  <30.236631, 32.527519, 23.735909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362135, 33.210041, 23.346579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618214, 33.267914, 23.648363>,  <30.771862, 33.302639, 23.829433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618214, 33.267914, 23.648363>,  <30.362135, 33.210041, 23.346579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618214, 33.267914, 23.648363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656780, 0.406341, -0.635238,
		-0.398478, 0.902194, 0.165112,
		0.640199, 0.144686, 0.754461,
		30.810274, 33.311321, 23.874701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543743, 34.012466, 23.322794>,  <30.362135, 33.210041, 23.346579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543743, 34.012466, 23.322794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827547, 33.809662, 23.518566>,  <30.997829, 33.687981, 23.636028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827547, 33.809662, 23.518566>,  <30.543743, 34.012466, 23.322794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827547, 33.809662, 23.518566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689068, 0.353687, -0.632528,
		0.147592, 0.786034, 0.600306,
		0.709509, -0.507008, 0.489429,
		31.040400, 33.657558, 23.665396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097383, 34.396534, 23.573994>,  <30.543743, 34.012466, 23.322794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097383, 34.396534, 23.573994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239353, 34.032490, 23.488451>,  <31.324535, 33.814064, 23.437126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239353, 34.032490, 23.488451>,  <31.097383, 34.396534, 23.573994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239353, 34.032490, 23.488451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826781, 0.412339, -0.382636,
		0.436421, -0.041005, 0.898808,
		0.354923, -0.910108, -0.213855,
		31.345831, 33.759457, 23.424294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763292, 34.645981, 23.541904>,  <31.097383, 34.396534, 23.573994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763292, 34.645981, 23.541904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781286, 34.265560, 23.419605>,  <31.792082, 34.037308, 23.346226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781286, 34.265560, 23.419605>,  <31.763292, 34.645981, 23.541904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781286, 34.265560, 23.419605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796201, 0.218982, -0.564013,
		0.603357, -0.218067, 0.767076,
		0.044983, -0.951049, -0.305750,
		31.794781, 33.980244, 23.327881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543892, 34.480492, 23.492628>,  <31.763292, 34.645981, 23.541904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543892, 34.480492, 23.492628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334053, 34.214344, 23.280184>,  <32.208149, 34.054657, 23.152718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334053, 34.214344, 23.280184>,  <32.543892, 34.480492, 23.492628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334053, 34.214344, 23.280184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690378, 0.032567, -0.722716,
		0.498171, -0.745802, 0.442273,
		-0.524599, -0.665371, -0.531109,
		32.176674, 34.014732, 23.120852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979355, 33.962460, 23.406820>,  <32.543892, 34.480492, 23.492628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979355, 33.962460, 23.406820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718784, 33.930363, 23.105036>,  <32.562443, 33.911106, 22.923965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718784, 33.930363, 23.105036>,  <32.979355, 33.962460, 23.406820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718784, 33.930363, 23.105036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750305, 0.079516, -0.656292,
		0.112654, -0.993598, 0.008408,
		-0.651422, -0.080242, -0.754460,
		32.523357, 33.906288, 22.878698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343811, 33.761852, 22.823610>,  <32.979355, 33.962460, 23.406820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343811, 33.761852, 22.823610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008247, 33.844677, 22.622274>,  <32.806908, 33.894371, 22.501472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008247, 33.844677, 22.622274>,  <33.343811, 33.761852, 22.823610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008247, 33.844677, 22.622274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542953, 0.382625, -0.747529,
		0.037804, -0.900401, -0.433415,
		-0.838912, 0.207065, -0.503340,
		32.756573, 33.906796, 22.471272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588455, 33.530739, 22.153286>,  <33.343811, 33.761852, 22.823610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588455, 33.530739, 22.153286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308884, 33.816158, 22.133881>,  <33.141140, 33.987408, 22.122238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308884, 33.816158, 22.133881>,  <33.588455, 33.530739, 22.153286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308884, 33.816158, 22.133881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511243, 0.451030, -0.731575,
		-0.500133, -0.536118, -0.680032,
		-0.698926, 0.713547, -0.048511,
		33.099205, 34.030224, 22.119328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327877, 33.611454, 21.442280>,  <33.588455, 33.530739, 22.153286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327877, 33.611454, 21.442280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257290, 33.959606, 21.626148>,  <33.214939, 34.168499, 21.736469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257290, 33.959606, 21.626148>,  <33.327877, 33.611454, 21.442280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257290, 33.959606, 21.626148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560085, 0.472816, -0.680257,
		-0.809422, 0.137413, -0.570923,
		-0.176466, 0.870381, 0.459670,
		33.204350, 34.220722, 21.764050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236629, 34.169983, 20.955294>,  <33.327877, 33.611454, 21.442280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236629, 34.169983, 20.955294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298321, 34.371887, 21.295040>,  <33.335335, 34.493031, 21.498888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298321, 34.371887, 21.295040>,  <33.236629, 34.169983, 20.955294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298321, 34.371887, 21.295040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600197, 0.634998, -0.486355,
		-0.784841, 0.584800, -0.205021,
		0.154232, 0.504764, 0.849368,
		33.344589, 34.523315, 21.549850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094723, 34.890926, 20.810894>,  <33.236629, 34.169983, 20.955294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094723, 34.890926, 20.810894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310677, 34.919964, 21.146336>,  <33.440247, 34.937386, 21.347601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310677, 34.919964, 21.146336>,  <33.094723, 34.890926, 20.810894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310677, 34.919964, 21.146336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612182, 0.649919, -0.450377,
		-0.577721, 0.756528, 0.306437,
		0.539882, 0.072597, 0.838604,
		33.472641, 34.941742, 21.397917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139645, 35.568729, 21.008453>,  <33.094723, 34.890926, 20.810894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139645, 35.568729, 21.008453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460335, 35.432888, 21.205187>,  <33.652748, 35.351383, 21.323227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460335, 35.432888, 21.205187>,  <33.139645, 35.568729, 21.008453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460335, 35.432888, 21.205187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545544, 0.751951, -0.370070,
		-0.244157, 0.565012, 0.788130,
		0.801729, -0.339604, 0.491833,
		33.700855, 35.331005, 21.352737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456093, 36.040413, 21.397942>,  <33.139645, 35.568729, 21.008453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456093, 36.040413, 21.397942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782875, 35.809807, 21.403723>,  <33.978947, 35.671444, 21.407190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782875, 35.809807, 21.403723>,  <33.456093, 36.040413, 21.397942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782875, 35.809807, 21.403723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553535, 0.776877, -0.300100,
		0.161785, 0.253169, 0.953798,
		0.816960, -0.576513, 0.014451,
		34.027962, 35.636852, 21.408058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955971, 36.368824, 21.743982>,  <33.456093, 36.040413, 21.397942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955971, 36.368824, 21.743982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191113, 36.143448, 21.511791>,  <34.332199, 36.008221, 21.372477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191113, 36.143448, 21.511791>,  <33.955971, 36.368824, 21.743982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191113, 36.143448, 21.511791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549182, 0.804831, -0.225045,
		0.593988, -0.186494, 0.782559,
		0.587858, -0.563442, -0.580480,
		34.367470, 35.974415, 21.337646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632465, 36.654678, 21.842690>,  <33.955971, 36.368824, 21.743982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632465, 36.654678, 21.842690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684223, 36.424072, 21.519979>,  <34.715279, 36.285709, 21.326353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684223, 36.424072, 21.519979>,  <34.632465, 36.654678, 21.842690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684223, 36.424072, 21.519979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664847, 0.654081, -0.360771,
		0.735686, -0.489699, 0.467932,
		0.129397, -0.576518, -0.806774,
		34.723042, 36.251118, 21.277946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322914, 36.697712, 21.601875>,  <34.632465, 36.654678, 21.842690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322914, 36.697712, 21.601875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134315, 36.566635, 21.274385>,  <35.021156, 36.487988, 21.077892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134315, 36.566635, 21.274385>,  <35.322914, 36.697712, 21.601875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134315, 36.566635, 21.274385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507502, 0.658428, -0.555801,
		0.721205, -0.677560, -0.144137,
		-0.471493, -0.327696, -0.818724,
		34.992867, 36.468327, 21.028769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930840, 36.692802, 21.072960>,  <35.322914, 36.697712, 21.601875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930840, 36.692802, 21.072960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562084, 36.687660, 20.918062>,  <35.340832, 36.684574, 20.825123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562084, 36.687660, 20.918062>,  <35.930840, 36.692802, 21.072960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562084, 36.687660, 20.918062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318429, 0.544266, -0.776130,
		0.220740, -0.838814, -0.497659,
		-0.921888, -0.012854, -0.387244,
		35.285519, 36.683804, 20.801889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084862, 36.725391, 20.396616>,  <35.930840, 36.692802, 21.072960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084862, 36.725391, 20.396616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692196, 36.801319, 20.389565>,  <35.456596, 36.846878, 20.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692196, 36.801319, 20.389565>,  <36.084862, 36.725391, 20.396616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692196, 36.801319, 20.389565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097969, 0.422978, -0.900828,
		-0.163540, -0.886035, -0.433817,
		-0.981660, 0.189822, -0.017631,
		35.397697, 36.858265, 20.384275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900681, 36.495918, 19.789347>,  <36.084862, 36.725391, 20.396616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900681, 36.495918, 19.789347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614529, 36.753578, 19.897644>,  <35.442837, 36.908176, 19.962622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614529, 36.753578, 19.897644>,  <35.900681, 36.495918, 19.789347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614529, 36.753578, 19.897644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016617, 0.403049, -0.915028,
		-0.698542, -0.650090, -0.299035,
		-0.715376, 0.644155, 0.270744,
		35.399918, 36.946823, 19.978867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369778, 36.508213, 19.246422>,  <35.900681, 36.495918, 19.789347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369778, 36.508213, 19.246422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345345, 36.851940, 19.449532>,  <35.330685, 37.058178, 19.571398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345345, 36.851940, 19.449532>,  <35.369778, 36.508213, 19.246422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345345, 36.851940, 19.449532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005101, 0.508987, -0.860759,
		-0.998119, -0.049991, -0.035476,
		-0.061087, 0.859321, 0.507775,
		35.327019, 37.109737, 19.601864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931274, 36.866142, 18.811226>,  <35.369778, 36.508213, 19.246422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931274, 36.866142, 18.811226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073170, 37.169685, 19.029694>,  <35.158306, 37.351810, 19.160774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073170, 37.169685, 19.029694>,  <34.931274, 36.866142, 18.811226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073170, 37.169685, 19.029694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096406, 0.551357, -0.828680,
		-0.929981, 0.346621, 0.122431,
		0.354741, 0.758854, 0.546168,
		35.179592, 37.397343, 19.193544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510429, 37.402069, 18.608143>,  <34.931274, 36.866142, 18.811226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510429, 37.402069, 18.608143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853127, 37.539326, 18.762148>,  <35.058746, 37.621681, 18.854551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853127, 37.539326, 18.762148>,  <34.510429, 37.402069, 18.608143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853127, 37.539326, 18.762148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144211, 0.557361, -0.817651,
		-0.495164, 0.756043, 0.428033,
		0.856748, 0.343144, 0.385014,
		35.110149, 37.642269, 18.877651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417469, 38.225342, 18.559111>,  <34.510429, 37.402069, 18.608143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417469, 38.225342, 18.559111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804379, 38.181103, 18.650461>,  <35.036522, 38.154560, 18.705273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804379, 38.181103, 18.650461>,  <34.417469, 38.225342, 18.559111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804379, 38.181103, 18.650461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245508, 0.635385, -0.732128,
		-0.064138, 0.764235, 0.641741,
		0.967270, -0.110596, 0.228378,
		35.094559, 38.147923, 18.718975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723312, 38.975670, 18.611792>,  <34.417469, 38.225342, 18.559111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723312, 38.975670, 18.611792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996181, 38.697723, 18.520756>,  <35.159904, 38.530956, 18.466133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996181, 38.697723, 18.520756>,  <34.723312, 38.975670, 18.611792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996181, 38.697723, 18.520756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279109, 0.535158, -0.797311,
		0.675820, 0.480384, 0.559015,
		0.682177, -0.694865, -0.227591,
		35.200836, 38.489265, 18.452478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358986, 39.376797, 18.502151>,  <34.723312, 38.975670, 18.611792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358986, 39.376797, 18.502151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392654, 39.012768, 18.339828>,  <35.412857, 38.794350, 18.242435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392654, 39.012768, 18.339828>,  <35.358986, 39.376797, 18.502151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392654, 39.012768, 18.339828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241013, 0.413754, -0.877907,
		0.966865, -0.023906, 0.254168,
		0.084176, -0.910075, -0.405806,
		35.417908, 38.739746, 18.218086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076359, 39.356686, 18.309063>,  <35.358986, 39.376797, 18.502151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076359, 39.356686, 18.309063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869747, 39.095730, 18.087221>,  <35.745781, 38.939156, 17.954117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869747, 39.095730, 18.087221>,  <36.076359, 39.356686, 18.309063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869747, 39.095730, 18.087221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309034, 0.462012, -0.831290,
		0.798557, -0.600779, -0.037034,
		-0.516532, -0.652388, -0.554604,
		35.714787, 38.900013, 17.920839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532948, 39.080402, 17.944012>,  <36.076359, 39.356686, 18.309063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532948, 39.080402, 17.944012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199398, 39.007481, 17.735619>,  <35.999268, 38.963726, 17.610582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199398, 39.007481, 17.735619>,  <36.532948, 39.080402, 17.944012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199398, 39.007481, 17.735619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419068, 0.405186, -0.812531,
		0.359219, -0.895875, -0.261478,
		-0.833873, -0.182300, -0.520983,
		35.949238, 38.952789, 17.579323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711880, 38.950592, 17.356760>,  <36.532948, 39.080402, 17.944012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711880, 38.950592, 17.356760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334850, 39.076939, 17.313335>,  <36.108631, 39.152748, 17.287281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334850, 39.076939, 17.313335>,  <36.711880, 38.950592, 17.356760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334850, 39.076939, 17.313335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300651, 0.660809, -0.687707,
		-0.145488, -0.680851, -0.717826,
		-0.942572, 0.315868, -0.108559,
		36.052078, 39.171700, 17.280767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673557, 38.998474, 16.605473>,  <36.711880, 38.950592, 17.356760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673557, 38.998474, 16.605473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380119, 39.220234, 16.762688>,  <36.204056, 39.353291, 16.857016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380119, 39.220234, 16.762688>,  <36.673557, 38.998474, 16.605473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380119, 39.220234, 16.762688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239127, 0.751944, -0.614328,
		-0.636123, -0.356684, -0.684196,
		-0.733597, 0.554398, 0.393036,
		36.160042, 39.386555, 16.880598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451565, 39.347008, 15.994784>,  <36.673557, 38.998474, 16.605473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451565, 39.347008, 15.994784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309406, 39.534611, 16.318197>,  <36.224110, 39.647175, 16.512245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309406, 39.534611, 16.318197>,  <36.451565, 39.347008, 15.994784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309406, 39.534611, 16.318197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045057, 0.872593, -0.486365,
		-0.933629, -0.136423, -0.331250,
		-0.355397, 0.469009, 0.808531,
		36.202785, 39.675312, 16.560757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850163, 39.848900, 15.805972>,  <36.451565, 39.347008, 15.994784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850163, 39.848900, 15.805972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012260, 39.963100, 16.153366>,  <36.109520, 40.031620, 16.361803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012260, 39.963100, 16.153366>,  <35.850163, 39.848900, 15.805972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012260, 39.963100, 16.153366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125033, 0.923750, -0.362013,
		-0.905617, 0.255293, 0.338648,
		0.405246, 0.285503, 0.868484,
		36.133835, 40.048752, 16.413912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741695, 40.544136, 15.826528>,  <35.850163, 39.848900, 15.805972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741695, 40.544136, 15.826528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985394, 40.529011, 16.143360>,  <36.131611, 40.519936, 16.333460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985394, 40.529011, 16.143360>,  <35.741695, 40.544136, 15.826528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985394, 40.529011, 16.143360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183668, 0.978429, -0.094565,
		-0.771420, 0.203093, 0.603045,
		0.609243, -0.037811, 0.792082,
		36.168167, 40.517666, 16.380985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763847, 41.197937, 16.226692>,  <35.741695, 40.544136, 15.826528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763847, 41.197937, 16.226692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130135, 41.078323, 16.334053>,  <36.349907, 41.006557, 16.398470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130135, 41.078323, 16.334053>,  <35.763847, 41.197937, 16.226692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130135, 41.078323, 16.334053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344582, 0.927996, -0.141730,
		-0.206695, 0.222271, 0.952823,
		0.915718, -0.299031, 0.268403,
		36.404850, 40.988613, 16.414574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033607, 41.669167, 16.764935>,  <35.763847, 41.197937, 16.226692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033607, 41.669167, 16.764935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339279, 41.487534, 16.581699>,  <36.522682, 41.378555, 16.471758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339279, 41.487534, 16.581699>,  <36.033607, 41.669167, 16.764935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339279, 41.487534, 16.581699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452617, 0.883495, -0.120723,
		0.459537, -0.115085, 0.880670,
		0.764174, -0.454084, -0.458088,
		36.568531, 41.351307, 16.444273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600723, 41.916142, 17.090979>,  <36.033607, 41.669167, 16.764935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600723, 41.916142, 17.090979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757595, 41.780582, 16.748903>,  <36.851719, 41.699245, 16.543659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757595, 41.780582, 16.748903>,  <36.600723, 41.916142, 17.090979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757595, 41.780582, 16.748903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488082, 0.864671, -0.118829,
		0.779726, -0.370799, 0.504515,
		0.392177, -0.338899, -0.855187,
		36.875248, 41.678913, 16.492348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258068, 42.203014, 17.070572>,  <36.600723, 41.916142, 17.090979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258068, 42.203014, 17.070572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212688, 42.097305, 16.687471>,  <37.185459, 42.033878, 16.457611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212688, 42.097305, 16.687471>,  <37.258068, 42.203014, 17.070572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212688, 42.097305, 16.687471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390435, 0.874566, -0.287567,
		0.913614, -0.406564, 0.003962,
		-0.113450, -0.264272, -0.957752,
		37.178654, 42.018024, 16.400146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816277, 42.607010, 16.682745>,  <37.258068, 42.203014, 17.070572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816277, 42.607010, 16.682745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553463, 42.505749, 16.398710>,  <37.395775, 42.444992, 16.228289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553463, 42.505749, 16.398710>,  <37.816277, 42.607010, 16.682745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553463, 42.505749, 16.398710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338099, 0.742933, -0.577702,
		0.673796, -0.619647, -0.402537,
		-0.657029, -0.253156, -0.710088,
		37.356354, 42.429802, 16.185684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152561, 42.643631, 15.986398>,  <37.816277, 42.607010, 16.682745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152561, 42.643631, 15.986398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763889, 42.683083, 15.900501>,  <37.530685, 42.706753, 15.848964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763889, 42.683083, 15.900501>,  <38.152561, 42.643631, 15.986398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763889, 42.683083, 15.900501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209693, 0.778861, -0.591105,
		0.108952, -0.619393, -0.777484,
		-0.971678, 0.098631, -0.214741,
		37.472385, 42.712673, 15.836079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158058, 42.914272, 15.358049>,  <38.152561, 42.643631, 15.986398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158058, 42.914272, 15.358049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780628, 42.993286, 15.464362>,  <37.554169, 43.040695, 15.528150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780628, 42.993286, 15.464362>,  <38.158058, 42.914272, 15.358049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780628, 42.993286, 15.464362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015722, 0.828415, -0.559894,
		-0.330778, -0.524125, -0.784779,
		-0.943577, 0.197539, 0.265782,
		37.497555, 43.052547, 15.544097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896824, 43.156418, 14.764117>,  <38.158058, 42.914272, 15.358049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896824, 43.156418, 14.764117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605167, 43.271675, 15.012415>,  <37.430172, 43.340832, 15.161393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605167, 43.271675, 15.012415>,  <37.896824, 43.156418, 14.764117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605167, 43.271675, 15.012415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196042, 0.781085, -0.592852,
		-0.655682, -0.553966, -0.513033,
		-0.729143, 0.288146, 0.620744,
		37.386425, 43.358120, 15.198638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378262, 43.506310, 14.381823>,  <37.896824, 43.156418, 14.764117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378262, 43.506310, 14.381823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338757, 43.637154, 14.757748>,  <37.315052, 43.715660, 14.983302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338757, 43.637154, 14.757748>,  <37.378262, 43.506310, 14.381823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338757, 43.637154, 14.757748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011197, 0.944004, -0.329742,
		-0.995048, -0.043090, -0.089574,
		-0.098767, 0.327107, 0.939812,
		37.309128, 43.735287, 15.039691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854294, 44.046989, 14.394626>,  <37.378262, 43.506310, 14.381823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854294, 44.046989, 14.394626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089275, 44.114700, 14.711169>,  <37.230263, 44.155327, 14.901095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089275, 44.114700, 14.711169>,  <36.854294, 44.046989, 14.394626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089275, 44.114700, 14.711169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054610, 0.967357, -0.247465,
		-0.807416, 0.188589, 0.559029,
		0.587449, 0.169279, 0.791358,
		37.265511, 44.165485, 14.948577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593998, 44.603519, 14.795296>,  <36.854294, 44.046989, 14.394626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593998, 44.603519, 14.795296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981411, 44.590954, 14.894060>,  <37.213860, 44.583416, 14.953319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981411, 44.590954, 14.894060>,  <36.593998, 44.603519, 14.795296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981411, 44.590954, 14.894060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080414, 0.978295, -0.190977,
		-0.235553, 0.204822, 0.950033,
		0.968529, -0.031411, 0.246911,
		37.271969, 44.581532, 14.968133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870411, 45.126690, 15.348122>,  <36.593998, 44.603519, 14.795296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870411, 45.126690, 15.348122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124237, 45.030174, 15.054427>,  <37.276535, 44.972263, 14.878210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124237, 45.030174, 15.054427>,  <36.870411, 45.126690, 15.348122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124237, 45.030174, 15.054427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146139, 0.970339, -0.192575,
		0.758924, 0.014902, 0.651009,
		0.634569, -0.241288, -0.734236,
		37.314610, 44.957787, 14.834156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223099, 45.743286, 15.430967>,  <36.870411, 45.126690, 15.348122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223099, 45.743286, 15.430967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984394, 45.821468, 15.742268>,  <36.841171, 45.868378, 15.929048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984394, 45.821468, 15.742268>,  <37.223099, 45.743286, 15.430967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984394, 45.821468, 15.742268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604378, 0.747469, 0.275714,
		-0.527830, 0.634893, -0.564187,
		-0.596761, 0.195452, 0.778251,
		36.805367, 45.880104, 15.975743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074707, 46.550186, 15.485901>,  <37.223099, 45.743286, 15.430967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074707, 46.550186, 15.485901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033291, 46.355530, 15.832878>,  <37.008442, 46.238735, 16.041065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033291, 46.355530, 15.832878>,  <37.074707, 46.550186, 15.485901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033291, 46.355530, 15.832878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593345, 0.669728, 0.446549,
		-0.798261, 0.560929, 0.219402,
		-0.103543, -0.486644, 0.867443,
		37.002228, 46.209538, 16.093111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960739, 47.056694, 15.964772>,  <37.074707, 46.550186, 15.485901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960739, 47.056694, 15.964772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091228, 46.716263, 16.129332>,  <37.169521, 46.512005, 16.228067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091228, 46.716263, 16.129332>,  <36.960739, 47.056694, 15.964772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091228, 46.716263, 16.129332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506024, 0.524826, 0.684469,
		-0.798447, -0.015113, 0.601876,
		0.326225, -0.851075, 0.411398,
		37.189095, 46.460941, 16.252750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020081, 47.307152, 16.644526>,  <36.960739, 47.056694, 15.964772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020081, 47.307152, 16.644526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234131, 46.980892, 16.556555>,  <37.362560, 46.785137, 16.503773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234131, 46.980892, 16.556555>,  <37.020081, 47.307152, 16.644526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234131, 46.980892, 16.556555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787694, 0.387689, 0.478786,
		-0.305257, -0.429443, 0.849940,
		0.535124, -0.815645, -0.219925,
		37.394669, 46.736198, 16.490578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198612, 47.068909, 17.236891>,  <37.020081, 47.307152, 16.644526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198612, 47.068909, 17.236891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474556, 46.989861, 16.958313>,  <37.640121, 46.942432, 16.791166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474556, 46.989861, 16.958313>,  <37.198612, 47.068909, 17.236891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474556, 46.989861, 16.958313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665584, 0.551546, 0.502787,
		0.284757, -0.810396, 0.512028,
		0.689863, -0.197625, -0.696443,
		37.681515, 46.930573, 16.749380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787567, 46.467945, 17.257771>,  <37.198612, 47.068909, 17.236891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787567, 46.467945, 17.257771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711666, 46.413795, 16.868790>,  <36.666126, 46.381306, 16.635401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711666, 46.413795, 16.868790>,  <36.787567, 46.467945, 17.257771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711666, 46.413795, 16.868790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236314, -0.955036, 0.179059,
		-0.952969, 0.263782, 0.149231,
		-0.189754, -0.135372, -0.972455,
		36.654739, 46.373184, 16.577053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130451, 46.083096, 17.078421>,  <36.787567, 46.467945, 17.257771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130451, 46.083096, 17.078421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324154, 46.015709, 16.734999>,  <36.440376, 45.975277, 16.528946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324154, 46.015709, 16.734999>,  <36.130451, 46.083096, 17.078421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324154, 46.015709, 16.734999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307809, -0.951358, 0.013057,
		-0.818993, 0.257948, -0.512555,
		0.484256, -0.168463, -0.858555,
		36.469429, 45.965172, 16.477432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630527, 45.843483, 16.632511>,  <36.130451, 46.083096, 17.078421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630527, 45.843483, 16.632511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990444, 45.721935, 16.507265>,  <36.206394, 45.649006, 16.432117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990444, 45.721935, 16.507265>,  <35.630527, 45.843483, 16.632511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990444, 45.721935, 16.507265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310530, -0.950100, 0.029678,
		-0.306510, 0.070528, -0.949251,
		0.899791, -0.303868, -0.313116,
		36.260380, 45.630775, 16.413330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469460, 45.464302, 16.084957>,  <35.630527, 45.843483, 16.632511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469460, 45.464302, 16.084957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810524, 45.345592, 16.256956>,  <36.015163, 45.274368, 16.360155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810524, 45.345592, 16.256956>,  <35.469460, 45.464302, 16.084957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810524, 45.345592, 16.256956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397285, -0.902792, 0.164717,
		0.339313, -0.311279, -0.887678,
		0.852661, -0.296770, 0.429996,
		36.066322, 45.256561, 16.385954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410248, 44.806206, 15.973636>,  <35.469460, 45.464302, 16.084957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410248, 44.806206, 15.973636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710365, 44.835537, 16.236444>,  <35.890438, 44.853138, 16.394131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710365, 44.835537, 16.236444>,  <35.410248, 44.806206, 15.973636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710365, 44.835537, 16.236444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202599, -0.920505, 0.334101,
		0.629294, -0.383787, -0.675794,
		0.750296, 0.073333, 0.657023,
		35.935455, 44.857536, 16.433552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637394, 44.106537, 16.059824>,  <35.410248, 44.806206, 15.973636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637394, 44.106537, 16.059824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749203, 44.309181, 16.386066>,  <35.816288, 44.430767, 16.581812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749203, 44.309181, 16.386066>,  <35.637394, 44.106537, 16.059824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749203, 44.309181, 16.386066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301453, -0.760205, 0.575513,
		0.911589, -0.406735, -0.059774,
		0.279521, 0.506612, 0.815606,
		35.833057, 44.461166, 16.630749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995773, 43.597538, 16.542818>,  <35.637394, 44.106537, 16.059824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995773, 43.597538, 16.542818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872478, 43.904045, 16.768322>,  <35.798504, 44.087948, 16.903624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872478, 43.904045, 16.768322>,  <35.995773, 43.597538, 16.542818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872478, 43.904045, 16.768322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204138, -0.632086, 0.747526,
		0.929149, 0.115330, 0.351255,
		-0.308235, 0.766268, 0.563759,
		35.780006, 44.133926, 16.937450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231598, 43.365368, 17.118055>,  <35.995773, 43.597538, 16.542818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231598, 43.365368, 17.118055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974094, 43.658512, 17.206137>,  <35.819592, 43.834400, 17.258986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974094, 43.658512, 17.206137>,  <36.231598, 43.365368, 17.118055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974094, 43.658512, 17.206137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359226, -0.543507, 0.758654,
		0.675670, 0.409287, 0.613150,
		-0.643759, 0.732860, 0.220205,
		35.780968, 43.878368, 17.272198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227119, 43.382160, 17.821344>,  <36.231598, 43.365368, 17.118055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227119, 43.382160, 17.821344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895725, 43.592857, 17.745289>,  <35.696888, 43.719276, 17.699656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895725, 43.592857, 17.745289>,  <36.227119, 43.382160, 17.821344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895725, 43.592857, 17.745289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461088, -0.448925, 0.765418,
		0.317822, 0.721808, 0.614803,
		-0.828485, 0.526745, -0.190138,
		35.647179, 43.750881, 17.688248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016056, 43.749397, 18.423323>,  <36.227119, 43.382160, 17.821344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016056, 43.749397, 18.423323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689545, 43.676773, 18.203972>,  <35.493637, 43.633198, 18.072361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689545, 43.676773, 18.203972>,  <36.016056, 43.749397, 18.423323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689545, 43.676773, 18.203972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382976, -0.540597, 0.749056,
		-0.432449, 0.821457, 0.371747,
		-0.816282, -0.181558, -0.548379,
		35.444660, 43.622307, 18.039457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471943, 43.946014, 18.904461>,  <36.016056, 43.749397, 18.423323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471943, 43.946014, 18.904461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316753, 43.697224, 18.632395>,  <35.223640, 43.547951, 18.469154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316753, 43.697224, 18.632395>,  <35.471943, 43.946014, 18.904461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316753, 43.697224, 18.632395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436469, -0.525988, 0.729953,
		-0.811772, 0.580072, -0.067404,
		-0.387972, -0.621975, -0.680165,
		35.200363, 43.510632, 18.428345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738380, 43.899895, 19.106171>,  <35.471943, 43.946014, 18.904461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738380, 43.899895, 19.106171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838158, 43.573967, 18.896847>,  <34.898022, 43.378410, 18.771252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838158, 43.573967, 18.896847>,  <34.738380, 43.899895, 19.106171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838158, 43.573967, 18.896847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337066, -0.579653, 0.741882,
		-0.907836, -0.008666, -0.419236,
		0.249441, -0.814817, -0.523309,
		34.912991, 43.329521, 18.739855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187721, 43.466484, 19.338053>,  <34.738380, 43.899895, 19.106171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187721, 43.466484, 19.338053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468719, 43.235310, 19.171923>,  <34.637318, 43.096607, 19.072245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468719, 43.235310, 19.171923>,  <34.187721, 43.466484, 19.338053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468719, 43.235310, 19.171923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223700, -0.733310, 0.642040,
		-0.675616, -0.358122, -0.644431,
		0.702496, -0.577932, -0.415324,
		34.679470, 43.061932, 19.047325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831524, 42.829491, 19.220469>,  <34.187721, 43.466484, 19.338053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831524, 42.829491, 19.220469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219204, 42.733055, 19.200375>,  <34.451813, 42.675194, 19.188318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219204, 42.733055, 19.200375>,  <33.831524, 42.829491, 19.220469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219204, 42.733055, 19.200375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185421, -0.848627, 0.495430,
		-0.162076, -0.470856, -0.867194,
		0.969201, -0.241093, -0.050236,
		34.509964, 42.660728, 19.185305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874012, 42.087734, 19.122852>,  <33.831524, 42.829491, 19.220469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874012, 42.087734, 19.122852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241291, 42.187656, 19.245829>,  <34.461658, 42.247608, 19.319614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241291, 42.187656, 19.245829>,  <33.874012, 42.087734, 19.122852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241291, 42.187656, 19.245829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050465, -0.843545, 0.534682,
		0.392906, -0.475426, -0.787144,
		0.918193, 0.249803, 0.307441,
		34.516750, 42.262596, 19.338060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195465, 41.425919, 19.119432>,  <33.874012, 42.087734, 19.122852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195465, 41.425919, 19.119432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429714, 41.667553, 19.335627>,  <34.570263, 41.812534, 19.465343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429714, 41.667553, 19.335627>,  <34.195465, 41.425919, 19.119432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429714, 41.667553, 19.335627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270708, -0.774257, 0.572052,
		0.764045, -0.188691, -0.616953,
		0.585621, 0.604087, 0.540487,
		34.605400, 41.848778, 19.497772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841625, 41.168018, 19.086166>,  <34.195465, 41.425919, 19.119432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841625, 41.168018, 19.086166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813084, 41.378483, 19.425121>,  <34.795959, 41.504761, 19.628494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813084, 41.378483, 19.425121>,  <34.841625, 41.168018, 19.086166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813084, 41.378483, 19.425121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161609, -0.832230, 0.530355,
		0.984272, 0.174791, -0.025645,
		-0.071359, 0.526158, 0.847388,
		34.791676, 41.536331, 19.679338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327175, 40.853008, 19.548967>,  <34.841625, 41.168018, 19.086166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327175, 40.853008, 19.548967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101093, 41.067081, 19.800081>,  <34.965443, 41.195526, 19.950750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101093, 41.067081, 19.800081>,  <35.327175, 40.853008, 19.548967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101093, 41.067081, 19.800081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125919, -0.808053, 0.575496,
		0.815281, 0.246225, 0.524109,
		-0.565209, 0.535186, 0.627786,
		34.931530, 41.227638, 19.988417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437061, 40.586266, 20.257437>,  <35.327175, 40.853008, 19.548967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437061, 40.586266, 20.257437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094307, 40.788624, 20.297070>,  <34.888653, 40.910038, 20.320850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094307, 40.788624, 20.297070>,  <35.437061, 40.586266, 20.257437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094307, 40.788624, 20.297070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366167, -0.732597, 0.573780,
		0.362859, 0.455383, 0.812994,
		-0.856887, 0.505893, 0.099083,
		34.837242, 40.940392, 20.326794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162045, 40.542984, 21.043081>,  <35.437061, 40.586266, 20.257437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162045, 40.542984, 21.043081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854786, 40.635143, 20.804129>,  <34.670429, 40.690441, 20.660757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854786, 40.635143, 20.804129>,  <35.162045, 40.542984, 21.043081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854786, 40.635143, 20.804129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602664, -0.575236, 0.553082,
		-0.216202, 0.784869, 0.580722,
		-0.768149, 0.230403, -0.597379,
		34.624340, 40.704266, 20.624914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734837, 40.567600, 21.539867>,  <35.162045, 40.542984, 21.043081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734837, 40.567600, 21.539867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531452, 40.536930, 21.196802>,  <34.409420, 40.518528, 20.990963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531452, 40.536930, 21.196802>,  <34.734837, 40.567600, 21.539867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531452, 40.536930, 21.196802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757498, -0.433808, 0.487860,
		-0.409469, 0.897737, 0.162492,
		-0.508460, -0.076676, -0.857665,
		34.378914, 40.513927, 20.939503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133690, 40.606201, 21.775991>,  <34.734837, 40.567600, 21.539867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133690, 40.606201, 21.775991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057262, 40.457081, 21.412781>,  <34.011406, 40.367611, 21.194855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057262, 40.457081, 21.412781>,  <34.133690, 40.606201, 21.775991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057262, 40.457081, 21.412781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748670, -0.542922, 0.380434,
		-0.634813, 0.752501, -0.175369,
		-0.191065, -0.372798, -0.908028,
		33.999943, 40.345242, 21.140371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459274, 40.484814, 21.722551>,  <34.133690, 40.606201, 21.775991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459274, 40.484814, 21.722551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608631, 40.232315, 21.450638>,  <33.698246, 40.080814, 21.287489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608631, 40.232315, 21.450638>,  <33.459274, 40.484814, 21.722551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608631, 40.232315, 21.450638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613524, -0.717676, 0.329437,
		-0.695823, 0.294058, -0.655256,
		0.373388, -0.631245, -0.679787,
		33.720646, 40.042942, 21.246702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874233, 40.174561, 21.465534>,  <33.459274, 40.484814, 21.722551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874233, 40.174561, 21.465534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192551, 39.943066, 21.394234>,  <33.383541, 39.804169, 21.351454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192551, 39.943066, 21.394234>,  <32.874233, 40.174561, 21.465534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192551, 39.943066, 21.394234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553056, -0.814482, 0.175350,
		-0.246662, -0.040961, -0.968235,
		0.795793, -0.578740, -0.178249,
		33.431290, 39.769444, 21.340759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644352, 39.560684, 21.115803>,  <32.874233, 40.174561, 21.465534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644352, 39.560684, 21.115803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992184, 39.445740, 21.276430>,  <33.200882, 39.376774, 21.372807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992184, 39.445740, 21.276430>,  <32.644352, 39.560684, 21.115803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992184, 39.445740, 21.276430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429821, -0.840809, 0.329081,
		0.243077, -0.458764, -0.854663,
		0.869579, -0.287360, 0.401568,
		33.253056, 39.359531, 21.396900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846355, 38.851429, 20.835009>,  <32.644352, 39.560684, 21.115803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846355, 38.851429, 20.835009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009472, 38.925369, 21.192675>,  <33.107342, 38.969734, 21.407274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009472, 38.925369, 21.192675>,  <32.846355, 38.851429, 20.835009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009472, 38.925369, 21.192675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404330, -0.841484, 0.358360,
		0.818670, -0.507676, -0.268413,
		0.407795, 0.184851, 0.894166,
		33.131809, 38.980824, 21.460924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048107, 38.171276, 21.047094>,  <32.846355, 38.851429, 20.835009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048107, 38.171276, 21.047094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092110, 38.369186, 21.391907>,  <33.118511, 38.487934, 21.598793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092110, 38.369186, 21.391907>,  <33.048107, 38.171276, 21.047094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092110, 38.369186, 21.391907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441301, -0.752806, 0.488403,
		0.890591, -0.434143, 0.135530,
		0.110009, 0.494776, 0.862029,
		33.125111, 38.517620, 21.650517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489117, 37.757542, 21.536219>,  <33.048107, 38.171276, 21.047094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489117, 37.757542, 21.536219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243259, 37.996624, 21.742119>,  <33.095745, 38.140072, 21.865660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243259, 37.996624, 21.742119>,  <33.489117, 37.757542, 21.536219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243259, 37.996624, 21.742119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212948, -0.754068, 0.621316,
		0.759520, 0.272271, 0.590760,
		-0.614641, 0.597703, 0.514750,
		33.058868, 38.175934, 21.896544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680927, 37.677307, 22.251411>,  <33.489117, 37.757542, 21.536219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680927, 37.677307, 22.251411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322449, 37.851814, 22.283665>,  <33.107361, 37.956516, 22.303017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322449, 37.851814, 22.283665>,  <33.680927, 37.677307, 22.251411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322449, 37.851814, 22.283665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325968, -0.770790, 0.547382,
		0.300956, 0.464278, 0.832989,
		-0.896198, 0.436266, 0.080634,
		33.053589, 37.982693, 22.307856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504559, 37.901546, 22.968544>,  <33.680927, 37.677307, 22.251411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504559, 37.901546, 22.968544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154087, 37.840576, 22.785645>,  <32.943806, 37.803993, 22.675905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154087, 37.840576, 22.785645>,  <33.504559, 37.901546, 22.968544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154087, 37.840576, 22.785645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229985, -0.701497, 0.674544,
		-0.423579, 0.696181, 0.579580,
		-0.876178, -0.152428, -0.457250,
		32.891235, 37.794849, 22.648470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057877, 37.872009, 23.477730>,  <33.504559, 37.901546, 22.968544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057877, 37.872009, 23.477730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810040, 37.734901, 23.195280>,  <32.661339, 37.652637, 23.025810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810040, 37.734901, 23.195280>,  <33.057877, 37.872009, 23.477730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810040, 37.734901, 23.195280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467721, -0.561224, 0.682836,
		-0.630350, 0.753350, 0.187410,
		-0.619593, -0.342770, -0.706125,
		32.624161, 37.632069, 22.983442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309895, 38.026878, 23.684559>,  <33.057877, 37.872009, 23.477730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309895, 38.026878, 23.684559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320267, 37.704327, 23.448225>,  <32.326488, 37.510796, 23.306425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320267, 37.704327, 23.448225>,  <32.309895, 38.026878, 23.684559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320267, 37.704327, 23.448225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379110, -0.554814, 0.740579,
		-0.924988, 0.204789, -0.320091,
		0.025929, -0.806377, -0.590834,
		32.328045, 37.462414, 23.270975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693327, 37.777493, 23.805676>,  <32.309895, 38.026878, 23.684559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693327, 37.777493, 23.805676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853670, 37.462986, 23.617594>,  <31.949877, 37.274281, 23.504745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853670, 37.462986, 23.617594>,  <31.693327, 37.777493, 23.805676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853670, 37.462986, 23.617594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277510, -0.593343, 0.755600,
		-0.873098, -0.172403, -0.456045,
		0.400860, -0.786270, -0.470203,
		31.973928, 37.227104, 23.476532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147333, 37.269733, 23.752083>,  <31.693327, 37.777493, 23.805676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147333, 37.269733, 23.752083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498745, 37.079082, 23.739357>,  <31.709593, 36.964691, 23.731722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498745, 37.079082, 23.739357>,  <31.147333, 37.269733, 23.752083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498745, 37.079082, 23.739357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325440, -0.645949, 0.690535,
		-0.349678, -0.596302, -0.722600,
		0.878530, -0.476628, -0.031813,
		31.762304, 36.936092, 23.729813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945827, 36.616405, 23.845221>,  <31.147333, 37.269733, 23.752083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945827, 36.616405, 23.845221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338234, 36.590233, 23.918243>,  <31.573677, 36.574532, 23.962057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338234, 36.590233, 23.918243>,  <30.945827, 36.616405, 23.845221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338234, 36.590233, 23.918243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173790, -0.714322, 0.677894,
		0.086049, -0.696752, -0.712132,
		0.981016, -0.065429, 0.182555,
		31.632538, 36.570602, 23.973009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973974, 35.991016, 24.070229>,  <30.945827, 36.616405, 23.845221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973974, 35.991016, 24.070229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333887, 36.129700, 24.176197>,  <31.549835, 36.212910, 24.239779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333887, 36.129700, 24.176197>,  <30.973974, 35.991016, 24.070229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333887, 36.129700, 24.176197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074228, -0.719921, 0.690075,
		0.429979, -0.601252, -0.673508,
		0.899782, 0.346711, 0.264921,
		31.603823, 36.233711, 24.255672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553335, 35.396469, 24.004108>,  <30.973974, 35.991016, 24.070229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553335, 35.396469, 24.004108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628317, 35.668987, 24.287149>,  <31.673306, 35.832497, 24.456974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628317, 35.668987, 24.287149>,  <31.553335, 35.396469, 24.004108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628317, 35.668987, 24.287149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200391, -0.731748, 0.651450,
		0.961615, 0.019679, -0.273695,
		0.187456, 0.681291, 0.707604,
		31.684553, 35.873375, 24.499430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147507, 35.225231, 24.249281>,  <31.553335, 35.396469, 24.004108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147507, 35.225231, 24.249281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049232, 35.466560, 24.552765>,  <31.990267, 35.611359, 24.734856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049232, 35.466560, 24.552765>,  <32.147507, 35.225231, 24.249281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049232, 35.466560, 24.552765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154154, -0.748420, 0.645061,
		0.957013, 0.275441, 0.090872,
		-0.245687, 0.603324, 0.758709,
		31.975527, 35.647556, 24.780378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690262, 35.157146, 24.795092>,  <32.147507, 35.225231, 24.249281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690262, 35.157146, 24.795092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362888, 35.312614, 24.964371>,  <32.166462, 35.405895, 25.065939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362888, 35.312614, 24.964371>,  <32.690262, 35.157146, 24.795092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362888, 35.312614, 24.964371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077691, -0.654902, 0.751710,
		0.569319, 0.648106, 0.505800,
		-0.818437, 0.388667, 0.423200,
		32.117355, 35.429214, 25.091331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906288, 35.384647, 25.482016>,  <32.690262, 35.157146, 24.795092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906288, 35.384647, 25.482016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511299, 35.324703, 25.501766>,  <32.274307, 35.288738, 25.513617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511299, 35.324703, 25.501766>,  <32.906288, 35.384647, 25.482016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511299, 35.324703, 25.501766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127686, -0.575119, 0.808044,
		-0.092697, 0.804226, 0.587049,
		-0.987473, -0.149861, 0.049377,
		32.215057, 35.279743, 25.516579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561752, 35.514721, 26.196476>,  <32.906288, 35.384647, 25.482016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561752, 35.514721, 26.196476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351795, 35.228390, 26.012270>,  <32.225822, 35.056591, 25.901747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351795, 35.228390, 26.012270>,  <32.561752, 35.514721, 26.196476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351795, 35.228390, 26.012270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009407, -0.536127, 0.844085,
		-0.851116, 0.447388, 0.274676,
		-0.524894, -0.715830, -0.460514,
		32.194328, 35.013641, 25.874115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307888, 36.204815, 26.506330>,  <32.561752, 35.514721, 26.196476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307888, 36.204815, 26.506330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385601, 36.471817, 26.793856>,  <32.432228, 36.632019, 26.966372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385601, 36.471817, 26.793856>,  <32.307888, 36.204815, 26.506330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385601, 36.471817, 26.793856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033095, 0.727898, -0.684887,
		-0.980388, 0.156848, 0.119324,
		0.194278, 0.667506, 0.718813,
		32.443886, 36.672070, 27.009501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959845, 36.919334, 26.301453>,  <32.307888, 36.204815, 26.506330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959845, 36.919334, 26.301453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262894, 37.001499, 26.549263>,  <32.444725, 37.050797, 26.697948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262894, 37.001499, 26.549263>,  <31.959845, 36.919334, 26.301453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262894, 37.001499, 26.549263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238930, 0.796020, -0.556115,
		-0.607386, 0.569350, 0.554006,
		0.757624, 0.205408, 0.619526,
		32.490181, 37.063122, 26.735121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038429, 37.729988, 26.547680>,  <31.959845, 36.919334, 26.301453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038429, 37.729988, 26.547680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400837, 37.561802, 26.567038>,  <32.618282, 37.460892, 26.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400837, 37.561802, 26.567038>,  <32.038429, 37.729988, 26.547680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400837, 37.561802, 26.567038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370836, 0.733526, -0.569579,
		0.203989, 0.533996, 0.820511,
		0.906018, -0.420463, 0.048394,
		32.672642, 37.435661, 26.581556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514305, 38.162022, 26.813292>,  <32.038429, 37.729988, 26.547680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514305, 38.162022, 26.813292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724293, 37.907906, 26.586731>,  <32.850285, 37.755436, 26.450794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724293, 37.907906, 26.586731>,  <32.514305, 38.162022, 26.813292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724293, 37.907906, 26.586731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353739, 0.768139, -0.533696,
		0.774127, 0.079817, 0.627978,
		0.524972, -0.635289, -0.566403,
		32.881786, 37.717319, 26.416811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092159, 38.517349, 26.776922>,  <32.514305, 38.162022, 26.813292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092159, 38.517349, 26.776922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140007, 38.225273, 26.507847>,  <33.168716, 38.050026, 26.346401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140007, 38.225273, 26.507847>,  <33.092159, 38.517349, 26.776922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140007, 38.225273, 26.507847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535398, 0.618034, -0.575660,
		0.836086, -0.291296, 0.464872,
		0.119619, -0.730192, -0.672689,
		33.175892, 38.006214, 26.306040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754230, 38.613373, 26.621965>,  <33.092159, 38.517349, 26.776922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754230, 38.613373, 26.621965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611446, 38.405483, 26.311491>,  <33.525776, 38.280750, 26.125206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611446, 38.405483, 26.311491>,  <33.754230, 38.613373, 26.621965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611446, 38.405483, 26.311491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543079, 0.560604, -0.625131,
		0.760030, -0.644677, 0.082139,
		-0.356960, -0.519727, -0.776186,
		33.504360, 38.249565, 26.078636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351570, 38.361965, 26.134174>,  <33.754230, 38.613373, 26.621965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351570, 38.361965, 26.134174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025791, 38.376263, 25.902517>,  <33.830326, 38.384842, 25.763523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025791, 38.376263, 25.902517>,  <34.351570, 38.361965, 26.134174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025791, 38.376263, 25.902517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465742, 0.635565, -0.615744,
		0.346074, -0.771219, -0.534278,
		-0.814443, 0.035742, -0.579142,
		33.781460, 38.386986, 25.728775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525444, 38.296040, 25.434593>,  <34.351570, 38.361965, 26.134174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525444, 38.296040, 25.434593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173454, 38.486042, 25.432922>,  <33.962261, 38.600044, 25.431921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173454, 38.486042, 25.432922>,  <34.525444, 38.296040, 25.434593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173454, 38.486042, 25.432922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386738, 0.711291, -0.586941,
		-0.275831, -0.518106, -0.809619,
		-0.879972, 0.475007, -0.004175,
		33.909462, 38.628544, 25.431669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440731, 38.487755, 24.751913>,  <34.525444, 38.296040, 25.434593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440731, 38.487755, 24.751913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193497, 38.720898, 24.962910>,  <34.045155, 38.860783, 25.089508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193497, 38.720898, 24.962910>,  <34.440731, 38.487755, 24.751913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193497, 38.720898, 24.962910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286339, 0.791845, -0.539436,
		-0.732105, -0.182378, -0.656323,
		-0.618087, 0.582855, 0.527492,
		34.008072, 38.895756, 25.121157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299129, 38.989506, 24.285633>,  <34.440731, 38.487755, 24.751913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299129, 38.989506, 24.285633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151005, 39.170952, 24.609880>,  <34.062130, 39.279819, 24.804430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151005, 39.170952, 24.609880>,  <34.299129, 38.989506, 24.285633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151005, 39.170952, 24.609880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274721, 0.887104, -0.370910,
		-0.887354, 0.085342, -0.453122,
		-0.370312, 0.453611, 0.810621,
		34.039909, 39.307034, 24.853067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860901, 39.541237, 24.011507>,  <34.299129, 38.989506, 24.285633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860901, 39.541237, 24.011507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939392, 39.642441, 24.390448>,  <33.986488, 39.703163, 24.617813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939392, 39.642441, 24.390448>,  <33.860901, 39.541237, 24.011507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939392, 39.642441, 24.390448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165158, 0.943805, -0.286276,
		-0.966549, 0.212638, 0.143413,
		0.196228, 0.253015, 0.947353,
		33.998260, 39.718346, 24.674654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587967, 40.224590, 24.070272>,  <33.860901, 39.541237, 24.011507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587967, 40.224590, 24.070272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871712, 40.184204, 24.349304>,  <34.041958, 40.159973, 24.516724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871712, 40.184204, 24.349304>,  <33.587967, 40.224590, 24.070272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871712, 40.184204, 24.349304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492240, 0.779320, -0.387763,
		-0.504487, 0.618439, 0.602516,
		0.709360, -0.100961, 0.697578,
		34.084518, 40.153915, 24.558578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701569, 40.872860, 24.353474>,  <33.587967, 40.224590, 24.070272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701569, 40.872860, 24.353474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036934, 40.674229, 24.443336>,  <34.238155, 40.555050, 24.497253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036934, 40.674229, 24.443336>,  <33.701569, 40.872860, 24.353474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036934, 40.674229, 24.443336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545029, 0.762741, -0.348095,
		0.001500, 0.414293, 0.910142,
		0.838416, -0.496576, 0.224658,
		34.288460, 40.525257, 24.510735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158009, 41.418549, 24.755413>,  <33.701569, 40.872860, 24.353474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158009, 41.418549, 24.755413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410984, 41.134159, 24.632421>,  <34.562771, 40.963528, 24.558626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410984, 41.134159, 24.632421>,  <34.158009, 41.418549, 24.755413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410984, 41.134159, 24.632421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601412, 0.700856, -0.383542,
		0.488186, 0.057645, 0.870834,
		0.632438, -0.710970, -0.307480,
		34.600716, 40.920868, 24.540178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800999, 41.594360, 24.976906>,  <34.158009, 41.418549, 24.755413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800999, 41.594360, 24.976906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870750, 41.365749, 24.656170>,  <34.912601, 41.228580, 24.463728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870750, 41.365749, 24.656170>,  <34.800999, 41.594360, 24.976906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870750, 41.365749, 24.656170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476519, 0.761593, -0.439211,
		0.861696, -0.305501, 0.405152,
		0.174382, -0.571529, -0.801839,
		34.923065, 41.194290, 24.415619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403175, 41.869358, 24.749643>,  <34.800999, 41.594360, 24.976906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403175, 41.869358, 24.749643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273548, 41.659966, 24.434444>,  <35.195770, 41.534328, 24.245325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273548, 41.659966, 24.434444>,  <35.403175, 41.869358, 24.749643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273548, 41.659966, 24.434444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541688, 0.580211, -0.608219,
		0.775599, -0.623954, 0.095538,
		-0.324069, -0.523485, -0.787999,
		35.176327, 41.502918, 24.198044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956429, 41.816246, 24.272379>,  <35.403175, 41.869358, 24.749643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956429, 41.816246, 24.272379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627914, 41.733318, 24.059771>,  <35.430805, 41.683559, 23.932205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627914, 41.733318, 24.059771>,  <35.956429, 41.816246, 24.272379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627914, 41.733318, 24.059771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327450, 0.591622, -0.736722,
		0.467197, -0.779104, -0.418001,
		-0.821282, -0.207320, -0.531521,
		35.381531, 41.671124, 23.900314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229607, 41.642387, 23.653524>,  <35.956429, 41.816246, 24.272379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229607, 41.642387, 23.653524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846333, 41.728352, 23.577953>,  <35.616367, 41.779930, 23.532612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846333, 41.728352, 23.577953>,  <36.229607, 41.642387, 23.653524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846333, 41.728352, 23.577953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266388, 0.428892, -0.863185,
		-0.104476, -0.877420, -0.468207,
		-0.958187, 0.214907, -0.188925,
		35.558876, 41.792824, 23.521276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027412, 41.410542, 23.003542>,  <36.229607, 41.642387, 23.653524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027412, 41.410542, 23.003542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786602, 41.713223, 23.105492>,  <35.642117, 41.894833, 23.166660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786602, 41.713223, 23.105492>,  <36.027412, 41.410542, 23.003542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786602, 41.713223, 23.105492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293752, 0.506708, -0.810529,
		-0.742477, -0.413093, -0.527336,
		-0.602029, 0.756705, 0.254872,
		35.605995, 41.940235, 23.181953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814465, 41.564457, 22.408033>,  <36.027412, 41.410542, 23.003542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814465, 41.564457, 22.408033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713223, 41.895351, 22.608681>,  <35.652477, 42.093887, 22.729069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713223, 41.895351, 22.608681>,  <35.814465, 41.564457, 22.408033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713223, 41.895351, 22.608681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086265, 0.535733, -0.839970,
		-0.963585, -0.169330, -0.206959,
		-0.253107, 0.827235, 0.501617,
		35.637291, 42.143520, 22.759165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198139, 41.874222, 22.000341>,  <35.814465, 41.564457, 22.408033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198139, 41.874222, 22.000341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399719, 42.138439, 22.222950>,  <35.520668, 42.296970, 22.356514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399719, 42.138439, 22.222950>,  <35.198139, 41.874222, 22.000341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399719, 42.138439, 22.222950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287869, 0.479034, -0.829252,
		-0.814347, 0.578110, 0.051262,
		0.503955, 0.660542, 0.556519,
		35.550907, 42.336601, 22.389906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856560, 42.514328, 21.860992>,  <35.198139, 41.874222, 22.000341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856560, 42.514328, 21.860992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210770, 42.605076, 22.023163>,  <35.423298, 42.659527, 22.120464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210770, 42.605076, 22.023163>,  <34.856560, 42.514328, 21.860992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210770, 42.605076, 22.023163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351763, 0.242638, -0.904096,
		-0.303488, 0.943215, 0.135056,
		0.885527, 0.226874, 0.405425,
		35.476429, 42.673138, 22.144791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126476, 43.161068, 21.518295>,  <34.856560, 42.514328, 21.860992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126476, 43.161068, 21.518295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462196, 43.010128, 21.674850>,  <35.663628, 42.919563, 21.768784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462196, 43.010128, 21.674850>,  <35.126476, 43.161068, 21.518295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462196, 43.010128, 21.674850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521044, 0.352773, -0.777216,
		0.155213, 0.856246, 0.492699,
		0.839299, -0.377352, 0.391387,
		35.713985, 42.896923, 21.792267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699772, 43.668118, 21.438778>,  <35.126476, 43.161068, 21.518295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699772, 43.668118, 21.438778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857445, 43.301090, 21.459551>,  <35.952049, 43.080875, 21.472015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857445, 43.301090, 21.459551>,  <35.699772, 43.668118, 21.438778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857445, 43.301090, 21.459551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629611, 0.228449, -0.742564,
		0.669487, 0.325400, 0.667759,
		0.394179, -0.917565, 0.051932,
		35.975700, 43.025822, 21.475130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411980, 43.799519, 21.322296>,  <35.699772, 43.668118, 21.438778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411980, 43.799519, 21.322296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375507, 43.404285, 21.272699>,  <36.353622, 43.167145, 21.242941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375507, 43.404285, 21.272699>,  <36.411980, 43.799519, 21.322296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375507, 43.404285, 21.272699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619839, 0.041138, -0.783650,
		0.779414, -0.148308, 0.608703,
		-0.091181, -0.988085, -0.123991,
		36.348152, 43.107861, 21.235502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084652, 43.564850, 21.464542>,  <36.411980, 43.799519, 21.322296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084652, 43.564850, 21.464542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901134, 43.300510, 21.226959>,  <36.791023, 43.141907, 21.084410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901134, 43.300510, 21.226959>,  <37.084652, 43.564850, 21.464542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901134, 43.300510, 21.226959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603789, 0.258546, -0.754051,
		0.651882, -0.704576, 0.280397,
		-0.458791, -0.660853, -0.593956,
		36.763496, 43.102253, 21.048773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689655, 43.213020, 21.171503>,  <37.084652, 43.564850, 21.464542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689655, 43.213020, 21.171503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382977, 43.174942, 20.917538>,  <37.198971, 43.152096, 20.765158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382977, 43.174942, 20.917538>,  <37.689655, 43.213020, 21.171503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382977, 43.174942, 20.917538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633916, 0.044282, -0.772133,
		0.101625, -0.994473, 0.026400,
		-0.766696, -0.095203, -0.634912,
		37.152969, 43.146381, 20.727064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843884, 42.660599, 20.615610>,  <37.689655, 43.213020, 21.171503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843884, 42.660599, 20.615610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551655, 42.860123, 20.429083>,  <37.376316, 42.979836, 20.317167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551655, 42.860123, 20.429083>,  <37.843884, 42.660599, 20.615610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551655, 42.860123, 20.429083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524923, -0.026498, -0.850737,
		-0.436712, -0.866307, -0.242477,
		-0.730574, 0.498809, -0.466317,
		37.332481, 43.009766, 20.289188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754562, 42.417557, 19.928036>,  <37.843884, 42.660599, 20.615610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754562, 42.417557, 19.928036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585907, 42.778717, 19.894606>,  <37.484715, 42.995415, 19.874548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585907, 42.778717, 19.894606>,  <37.754562, 42.417557, 19.928036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585907, 42.778717, 19.894606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337162, 0.070551, -0.938800,
		-0.841751, -0.424010, -0.334172,
		-0.421637, 0.902905, -0.083574,
		37.459415, 43.049587, 19.869534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549477, 42.393635, 19.246159>,  <37.754562, 42.417557, 19.928036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549477, 42.393635, 19.246159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545650, 42.772690, 19.373846>,  <37.543354, 43.000122, 19.450459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545650, 42.772690, 19.373846>,  <37.549477, 42.393635, 19.246159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545650, 42.772690, 19.373846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416871, 0.293948, -0.860124,
		-0.908915, 0.124842, -0.397854,
		-0.009569, 0.947634, 0.319217,
		37.542778, 43.056980, 19.469610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234093, 42.821766, 18.753124>,  <37.549477, 42.393635, 19.246159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234093, 42.821766, 18.753124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502853, 43.036777, 18.956932>,  <37.664112, 43.165783, 19.079216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502853, 43.036777, 18.956932>,  <37.234093, 42.821766, 18.753124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502853, 43.036777, 18.956932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451798, 0.247653, -0.857057,
		-0.586877, 0.806059, -0.076455,
		0.671904, 0.537529, 0.509517,
		37.704426, 43.198036, 19.109787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424034, 43.146744, 18.271332>,  <37.234093, 42.821766, 18.753124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424034, 43.146744, 18.271332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674232, 43.295414, 18.545738>,  <37.824352, 43.384617, 18.710382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674232, 43.295414, 18.545738>,  <37.424034, 43.146744, 18.271332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674232, 43.295414, 18.545738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615482, 0.305329, -0.726605,
		-0.479521, 0.876717, -0.037777,
		0.625493, 0.371674, 0.686016,
		37.861881, 43.406918, 18.751543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464172, 43.884045, 18.111349>,  <37.424034, 43.146744, 18.271332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464172, 43.884045, 18.111349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792271, 43.779835, 18.315044>,  <37.989128, 43.717308, 18.437262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792271, 43.779835, 18.315044>,  <37.464172, 43.884045, 18.111349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792271, 43.779835, 18.315044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570685, 0.312065, -0.759562,
		0.038970, 0.913642, 0.404648,
		0.820244, -0.260526, 0.509240,
		38.038345, 43.701675, 18.467817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954811, 44.486862, 18.080385>,  <37.464172, 43.884045, 18.111349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954811, 44.486862, 18.080385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151096, 44.150322, 18.171011>,  <38.268867, 43.948399, 18.225388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151096, 44.150322, 18.171011>,  <37.954811, 44.486862, 18.080385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151096, 44.150322, 18.171011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707698, 0.233159, -0.666933,
		0.508299, 0.487610, 0.709836,
		0.490709, -0.841352, 0.226566,
		38.298309, 43.897915, 18.238981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708408, 44.662914, 18.242943>,  <37.954811, 44.486862, 18.080385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708408, 44.662914, 18.242943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677853, 44.274967, 18.150408>,  <38.659519, 44.042198, 18.094887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677853, 44.274967, 18.150408>,  <38.708408, 44.662914, 18.242943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677853, 44.274967, 18.150408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686534, 0.117093, -0.717607,
		0.723074, -0.213636, 0.656904,
		-0.076388, -0.969871, -0.231335,
		38.654938, 43.984005, 18.081007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492580, 44.375343, 18.037477>,  <38.708408, 44.662914, 18.242943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492580, 44.375343, 18.037477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220852, 44.130859, 17.875023>,  <39.057816, 43.984169, 17.777550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220852, 44.130859, 17.875023>,  <39.492580, 44.375343, 18.037477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220852, 44.130859, 17.875023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506643, 0.009752, -0.862101,
		0.530888, -0.791406, 0.303042,
		-0.679316, -0.611213, -0.406137,
		39.017056, 43.947495, 17.753181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873272, 43.746578, 17.769089>,  <39.492580, 44.375343, 18.037477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873272, 43.746578, 17.769089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536282, 43.743256, 17.553623>,  <39.334087, 43.741261, 17.424343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536282, 43.743256, 17.553623>,  <39.873272, 43.746578, 17.769089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536282, 43.743256, 17.553623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532096, -0.169258, -0.829593,
		-0.084278, -0.985537, 0.147019,
		-0.842479, -0.008312, -0.538665,
		39.283539, 43.740765, 17.392023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957054, 43.250168, 17.291685>,  <39.873272, 43.746578, 17.769089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957054, 43.250168, 17.291685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698235, 43.508785, 17.130043>,  <39.542942, 43.663956, 17.033058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698235, 43.508785, 17.130043>,  <39.957054, 43.250168, 17.291685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698235, 43.508785, 17.130043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443915, -0.111450, -0.889111,
		-0.619889, -0.754690, -0.214898,
		-0.647053, 0.646547, -0.404104,
		39.504120, 43.702747, 17.008812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758587, 42.866753, 16.725876>,  <39.957054, 43.250168, 17.291685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758587, 42.866753, 16.725876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065212, 42.611637, 16.695900>,  <40.249187, 42.458569, 16.677914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065212, 42.611637, 16.695900>,  <39.758587, 42.866753, 16.725876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065212, 42.611637, 16.695900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320285, -0.480858, 0.816207,
		-0.556602, -0.601667, -0.572879,
		0.766558, -0.637787, -0.074942,
		40.295181, 42.420303, 16.673418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507885, 42.167976, 16.886362>,  <39.758587, 42.866753, 16.725876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507885, 42.167976, 16.886362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900791, 42.136734, 16.954552>,  <40.136536, 42.117989, 16.995466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900791, 42.136734, 16.954552>,  <39.507885, 42.167976, 16.886362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900791, 42.136734, 16.954552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187001, -0.475316, 0.859713,
		0.013883, -0.876342, -0.481490,
		0.982262, -0.078103, 0.170475,
		40.195469, 42.113304, 17.005693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640533, 41.442890, 17.019611>,  <39.507885, 42.167976, 16.886362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640533, 41.442890, 17.019611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952114, 41.634636, 17.181324>,  <40.139061, 41.749683, 17.278353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952114, 41.634636, 17.181324>,  <39.640533, 41.442890, 17.019611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952114, 41.634636, 17.181324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079596, -0.715069, 0.694508,
		0.622014, -0.508808, -0.595158,
		0.778950, 0.479365, 0.404284,
		40.185799, 41.778446, 17.302608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104061, 40.920925, 17.133595>,  <39.640533, 41.442890, 17.019611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104061, 40.920925, 17.133595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195034, 41.225540, 17.376360>,  <40.249619, 41.408310, 17.522018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195034, 41.225540, 17.376360>,  <40.104061, 40.920925, 17.133595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195034, 41.225540, 17.376360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076523, -0.607341, 0.790747,
		0.970783, -0.226283, -0.079853,
		0.227430, 0.761533, 0.606912,
		40.263264, 41.453999, 17.558434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427719, 40.580154, 17.626389>,  <40.104061, 40.920925, 17.133595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427719, 40.580154, 17.626389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385681, 40.936893, 17.802372>,  <40.360458, 41.150936, 17.907961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385681, 40.936893, 17.802372>,  <40.427719, 40.580154, 17.626389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385681, 40.936893, 17.802372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026449, -0.439743, 0.897734,
		0.994110, 0.105985, 0.022627,
		-0.105097, 0.891848, 0.439957,
		40.354153, 41.204449, 17.934359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891003, 40.486176, 18.236929>,  <40.427719, 40.580154, 17.626389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891003, 40.486176, 18.236929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643787, 40.795475, 18.293671>,  <40.495461, 40.981056, 18.327715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643787, 40.795475, 18.293671>,  <40.891003, 40.486176, 18.236929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643787, 40.795475, 18.293671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294465, -0.394998, 0.870211,
		0.728920, 0.496049, 0.471816,
		-0.618034, 0.773248, 0.141853,
		40.458378, 41.027451, 18.336227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088493, 40.719345, 18.899302>,  <40.891003, 40.486176, 18.236929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088493, 40.719345, 18.899302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728184, 40.886974, 18.853720>,  <40.511997, 40.987553, 18.826370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728184, 40.886974, 18.853720>,  <41.088493, 40.719345, 18.899302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728184, 40.886974, 18.853720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221810, -0.218352, 0.950328,
		0.373373, 0.881306, 0.289640,
		-0.900773, 0.419072, -0.113955,
		40.457951, 41.012695, 18.819532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950283, 41.070431, 19.539541>,  <41.088493, 40.719345, 18.899302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950283, 41.070431, 19.539541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593685, 41.035221, 19.361778>,  <40.379726, 41.014095, 19.255121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593685, 41.035221, 19.361778>,  <40.950283, 41.070431, 19.539541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593685, 41.035221, 19.361778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443002, -0.035977, 0.895799,
		-0.094836, 0.995469, -0.006919,
		-0.891491, -0.088020, -0.444406,
		40.326237, 41.008816, 19.228456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547054, 41.478031, 19.853697>,  <40.950283, 41.070431, 19.539541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547054, 41.478031, 19.853697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317482, 41.177155, 19.724194>,  <40.179741, 40.996628, 19.646492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317482, 41.177155, 19.724194>,  <40.547054, 41.478031, 19.853697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317482, 41.177155, 19.724194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365285, -0.118693, 0.923298,
		-0.732922, 0.648170, -0.206642,
		-0.573927, -0.752189, -0.323760,
		40.145306, 40.951496, 19.627066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875301, 41.652039, 20.242620>,  <40.547054, 41.478031, 19.853697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875301, 41.652039, 20.242620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834305, 41.279770, 20.102135>,  <39.809708, 41.056408, 20.017843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834305, 41.279770, 20.102135>,  <39.875301, 41.652039, 20.242620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834305, 41.279770, 20.102135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616413, -0.217691, 0.756734,
		-0.780725, 0.294052, -0.551364,
		-0.102492, -0.930669, -0.351214,
		39.803558, 41.000568, 19.996771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166489, 41.576160, 20.126644>,  <39.875301, 41.652039, 20.242620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166489, 41.576160, 20.126644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330647, 41.214710, 20.175703>,  <39.429142, 40.997841, 20.205139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330647, 41.214710, 20.175703>,  <39.166489, 41.576160, 20.126644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330647, 41.214710, 20.175703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611106, -0.172692, 0.772481,
		-0.676852, -0.391972, -0.623081,
		0.410392, -0.903623, 0.122649,
		39.453766, 40.943623, 20.212498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621445, 41.076786, 20.196468>,  <39.166489, 41.576160, 20.126644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621445, 41.076786, 20.196468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922657, 40.885021, 20.376743>,  <39.103382, 40.769962, 20.484907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922657, 40.885021, 20.376743>,  <38.621445, 41.076786, 20.196468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922657, 40.885021, 20.376743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638545, -0.367150, 0.676359,
		-0.158783, -0.797099, -0.582598,
		0.753026, -0.479409, 0.450686,
		39.148563, 40.741199, 20.511950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292835, 40.412266, 20.359173>,  <38.621445, 41.076786, 20.196468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292835, 40.412266, 20.359173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627892, 40.450287, 20.574327>,  <38.828926, 40.473099, 20.703421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627892, 40.450287, 20.574327>,  <38.292835, 40.412266, 20.359173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627892, 40.450287, 20.574327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518523, -0.171239, 0.837742,
		0.171738, -0.980633, -0.094149,
		0.837640, 0.095054, 0.537889,
		38.879185, 40.478802, 20.735695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378876, 39.780025, 20.652067>,  <38.292835, 40.412266, 20.359173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378876, 39.780025, 20.652067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584583, 40.030804, 20.886150>,  <38.708008, 40.181271, 21.026600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584583, 40.030804, 20.886150>,  <38.378876, 39.780025, 20.652067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584583, 40.030804, 20.886150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536960, -0.296685, 0.789716,
		0.668731, -0.720359, 0.184068,
		0.514269, 0.626945, 0.585207,
		38.738865, 40.218887, 21.061712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521660, 39.410667, 21.302006>,  <38.378876, 39.780025, 20.652067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521660, 39.410667, 21.302006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596146, 39.786762, 21.416042>,  <38.640839, 40.012421, 21.484465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596146, 39.786762, 21.416042>,  <38.521660, 39.410667, 21.302006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596146, 39.786762, 21.416042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535906, -0.145999, 0.831558,
		0.823485, -0.307633, 0.476691,
		0.186218, 0.940237, 0.285090,
		38.652012, 40.068832, 21.501570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869057, 39.401367, 22.026812>,  <38.521660, 39.410667, 21.302006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869057, 39.401367, 22.026812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680847, 39.748470, 21.962812>,  <38.567921, 39.956734, 21.924414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680847, 39.748470, 21.962812>,  <38.869057, 39.401367, 22.026812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680847, 39.748470, 21.962812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538932, -0.139045, 0.830794,
		0.698682, 0.477139, 0.533087,
		-0.470528, 0.867758, -0.159997,
		38.539688, 40.008797, 21.914814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744125, 39.863792, 22.721621>,  <38.869057, 39.401367, 22.026812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744125, 39.863792, 22.721621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484852, 40.038784, 22.472309>,  <38.329288, 40.143780, 22.322721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484852, 40.038784, 22.472309>,  <38.744125, 39.863792, 22.721621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484852, 40.038784, 22.472309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658566, 0.088876, 0.747256,
		0.382301, 0.894827, 0.230499,
		-0.648179, 0.437475, -0.623281,
		38.290398, 40.170025, 22.285324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434517, 40.419449, 23.061466>,  <38.744125, 39.863792, 22.721621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434517, 40.419449, 23.061466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174183, 40.320461, 22.774363>,  <38.017982, 40.261070, 22.602100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174183, 40.320461, 22.774363>,  <38.434517, 40.419449, 23.061466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174183, 40.320461, 22.774363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727625, -0.066594, 0.682735,
		-0.216753, 0.966605, -0.136722,
		-0.650830, -0.247468, -0.717760,
		37.978935, 40.246220, 22.559034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825676, 40.722237, 23.205482>,  <38.434517, 40.419449, 23.061466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825676, 40.722237, 23.205482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734634, 40.413631, 22.967842>,  <37.680008, 40.228466, 22.825258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734634, 40.413631, 22.967842>,  <37.825676, 40.722237, 23.205482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734634, 40.413631, 22.967842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788125, -0.212366, 0.577719,
		-0.571887, 0.599718, -0.559717,
		-0.227603, -0.771518, -0.594102,
		37.666355, 40.182175, 22.789612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145439, 40.703838, 23.309805>,  <37.825676, 40.722237, 23.205482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145439, 40.703838, 23.309805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204636, 40.347729, 23.137520>,  <37.240154, 40.134064, 23.034149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204636, 40.347729, 23.137520>,  <37.145439, 40.703838, 23.309805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204636, 40.347729, 23.137520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582464, -0.430425, 0.689543,
		-0.799271, 0.148828, -0.582251,
		0.147992, -0.890272, -0.430713,
		37.249035, 40.080647, 23.008307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532116, 40.407341, 23.226664>,  <37.145439, 40.703838, 23.309805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532116, 40.407341, 23.226664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800438, 40.111477, 23.205015>,  <36.961430, 39.933960, 23.192026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800438, 40.111477, 23.205015>,  <36.532116, 40.407341, 23.226664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800438, 40.111477, 23.205015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539497, -0.536740, 0.648733,
		-0.508890, -0.405973, -0.759090,
		0.670802, -0.739660, -0.054120,
		37.001678, 39.889580, 23.188780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156033, 39.820896, 23.274612>,  <36.532116, 40.407341, 23.226664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156033, 39.820896, 23.274612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508453, 39.654697, 23.365042>,  <36.719906, 39.554977, 23.419300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508453, 39.654697, 23.365042>,  <36.156033, 39.820896, 23.274612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508453, 39.654697, 23.365042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426339, -0.490511, 0.760023,
		-0.204892, -0.766005, -0.609307,
		0.881053, -0.415494, 0.226076,
		36.772770, 39.530048, 23.432865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060516, 39.103180, 23.368853>,  <36.156033, 39.820896, 23.274612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060516, 39.103180, 23.368853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390179, 39.190132, 23.578047>,  <36.587975, 39.242302, 23.703564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390179, 39.190132, 23.578047>,  <36.060516, 39.103180, 23.368853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390179, 39.190132, 23.578047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408248, -0.412015, 0.814602,
		0.392557, -0.884867, -0.250819,
		0.824156, 0.217381, 0.522985,
		36.637424, 39.255344, 23.734941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069305, 38.518803, 23.788656>,  <36.060516, 39.103180, 23.368853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069305, 38.518803, 23.788656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329330, 38.754314, 23.980804>,  <36.485348, 38.895622, 24.096094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329330, 38.754314, 23.980804>,  <36.069305, 38.518803, 23.788656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329330, 38.754314, 23.980804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165364, -0.507406, 0.845691,
		0.741666, -0.629192, -0.232485,
		0.650066, 0.588776, 0.480371,
		36.524349, 38.930946, 24.124916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564091, 38.035229, 24.175274>,  <36.069305, 38.518803, 23.788656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564091, 38.035229, 24.175274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534767, 38.388256, 24.361052>,  <36.517174, 38.600071, 24.472517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534767, 38.388256, 24.361052>,  <36.564091, 38.035229, 24.175274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534767, 38.388256, 24.361052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049477, -0.468341, 0.882162,
		0.996082, 0.041689, 0.077999,
		-0.073306, 0.882564, 0.464443,
		36.512775, 38.653027, 24.500385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994316, 38.089867, 24.789646>,  <36.564091, 38.035229, 24.175274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994316, 38.089867, 24.789646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719933, 38.370770, 24.865854>,  <36.555302, 38.539310, 24.911579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719933, 38.370770, 24.865854>,  <36.994316, 38.089867, 24.789646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719933, 38.370770, 24.865854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088625, -0.340516, 0.936052,
		0.722221, 0.625211, 0.295818,
		-0.685961, 0.702253, 0.190519,
		36.514145, 38.581444, 24.923010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060036, 38.142815, 25.459455>,  <36.994316, 38.089867, 24.789646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060036, 38.142815, 25.459455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736198, 38.370838, 25.403477>,  <36.541897, 38.507652, 25.369890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736198, 38.370838, 25.403477>,  <37.060036, 38.142815, 25.459455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736198, 38.370838, 25.403477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328899, -0.243075, 0.912546,
		0.486190, 0.784821, 0.384285,
		-0.809596, 0.570062, -0.139946,
		36.493320, 38.541855, 25.361492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033272, 38.575138, 26.062996>,  <37.060036, 38.142815, 25.459455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033272, 38.575138, 26.062996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665821, 38.562107, 25.905483>,  <36.445351, 38.554287, 25.810976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665821, 38.562107, 25.905483>,  <37.033272, 38.575138, 26.062996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665821, 38.562107, 25.905483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354165, -0.373970, 0.857154,
		-0.175190, 0.926868, 0.331999,
		-0.918627, -0.032582, -0.393780,
		36.390232, 38.552334, 25.787350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601315, 38.607365, 26.665840>,  <37.033272, 38.575138, 26.062996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601315, 38.607365, 26.665840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375584, 38.482277, 26.360228>,  <36.240147, 38.407223, 26.176861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375584, 38.482277, 26.360228>,  <36.601315, 38.607365, 26.665840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375584, 38.482277, 26.360228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585122, -0.501365, 0.637390,
		-0.582383, 0.806746, 0.099954,
		-0.564325, -0.312720, -0.764031,
		36.206287, 38.388462, 26.131018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910110, 38.657455, 26.966259>,  <36.601315, 38.607365, 26.665840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910110, 38.657455, 26.966259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917480, 38.396393, 26.663286>,  <35.921902, 38.239758, 26.481503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917480, 38.396393, 26.663286>,  <35.910110, 38.657455, 26.966259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917480, 38.396393, 26.663286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461441, -0.677606, 0.572645,
		-0.886979, 0.338957, -0.313648,
		0.018428, -0.652654, -0.757432,
		35.923008, 38.200596, 26.436056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430923, 38.178516, 27.145840>,  <35.910110, 38.657455, 26.966259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430923, 38.178516, 27.145840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590351, 37.983902, 26.834860>,  <35.686008, 37.867134, 26.648272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590351, 37.983902, 26.834860>,  <35.430923, 38.178516, 27.145840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590351, 37.983902, 26.834860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263448, -0.872701, 0.411081,
		-0.878489, 0.040978, -0.476002,
		0.398562, -0.486532, -0.777454,
		35.709923, 37.837944, 26.601625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918556, 37.707241, 27.060869>,  <35.430923, 38.178516, 27.145840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918556, 37.707241, 27.060869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259052, 37.580303, 26.893694>,  <35.463352, 37.504139, 26.793388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259052, 37.580303, 26.893694>,  <34.918556, 37.707241, 27.060869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259052, 37.580303, 26.893694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041238, -0.834413, 0.549595,
		-0.523146, -0.450605, -0.723377,
		0.851245, -0.317348, -0.417937,
		35.514427, 37.485100, 26.768312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809593, 36.845676, 26.977791>,  <34.918556, 37.707241, 27.060869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809593, 36.845676, 26.977791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202709, 36.916164, 26.955662>,  <35.438580, 36.958458, 26.942385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202709, 36.916164, 26.955662>,  <34.809593, 36.845676, 26.977791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202709, 36.916164, 26.955662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179678, -0.842781, 0.507381,
		0.042789, -0.508592, -0.859944,
		0.982794, 0.176223, -0.055321,
		35.497547, 36.969032, 26.939066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141453, 36.191879, 26.874100>,  <34.809593, 36.845676, 26.977791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141453, 36.191879, 26.874100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447105, 36.419998, 26.994675>,  <35.630497, 36.556870, 27.067020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447105, 36.419998, 26.994675>,  <35.141453, 36.191879, 26.874100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447105, 36.419998, 26.994675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448253, -0.805488, 0.387632,
		0.463872, -0.161079, -0.871135,
		0.764128, 0.570300, 0.301439,
		35.676342, 36.591087, 27.085106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841881, 35.863113, 26.665844>,  <35.141453, 36.191879, 26.874100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841881, 35.863113, 26.665844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921844, 36.120560, 26.961355>,  <35.969822, 36.275028, 27.138662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921844, 36.120560, 26.961355>,  <35.841881, 35.863113, 26.665844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921844, 36.120560, 26.961355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558611, -0.694322, 0.453730,
		0.804979, 0.321988, -0.498330,
		0.199905, 0.643616, 0.738781,
		35.981815, 36.313644, 27.182989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440514, 35.715244, 26.716770>,  <35.841881, 35.863113, 26.665844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440514, 35.715244, 26.716770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298302, 35.881836, 27.051470>,  <36.212975, 35.981789, 27.252289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298302, 35.881836, 27.051470>,  <36.440514, 35.715244, 26.716770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298302, 35.881836, 27.051470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420672, -0.728138, 0.541157,
		0.834646, 0.544393, 0.083675,
		-0.355529, 0.416474, 0.836748,
		36.191643, 36.006779, 27.302494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985592, 35.997181, 27.142149>,  <36.440514, 35.715244, 26.716770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985592, 35.997181, 27.142149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681919, 35.923683, 27.391911>,  <36.499714, 35.879585, 27.541767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681919, 35.923683, 27.391911>,  <36.985592, 35.997181, 27.142149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681919, 35.923683, 27.391911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605742, -0.550479, 0.574500,
		0.238158, 0.814377, 0.529217,
		-0.759182, -0.183747, 0.624403,
		36.454163, 35.868561, 27.579231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346439, 35.927979, 27.788664>,  <36.985592, 35.997181, 27.142149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346439, 35.927979, 27.788664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970551, 35.817085, 27.868729>,  <36.745018, 35.750549, 27.916767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970551, 35.817085, 27.868729>,  <37.346439, 35.927979, 27.788664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970551, 35.817085, 27.868729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329771, -0.580014, 0.744872,
		-0.090406, 0.765980, 0.636476,
		-0.939722, -0.277233, 0.200161,
		36.688633, 35.733917, 27.928778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118919, 36.113892, 28.538418>,  <37.346439, 35.927979, 27.788664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118919, 36.113892, 28.538418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910557, 35.795971, 28.413876>,  <36.785538, 35.605217, 28.339149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910557, 35.795971, 28.413876>,  <37.118919, 36.113892, 28.538418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910557, 35.795971, 28.413876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116211, -0.427387, 0.896569,
		-0.845664, 0.430848, 0.314995,
		-0.520910, -0.794802, -0.311356,
		36.754284, 35.557529, 28.320469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653980, 35.990044, 28.992779>,  <37.118919, 36.113892, 28.538418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653980, 35.990044, 28.992779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704453, 35.625629, 28.835764>,  <36.734737, 35.406979, 28.741554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704453, 35.625629, 28.835764>,  <36.653980, 35.990044, 28.992779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704453, 35.625629, 28.835764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078165, -0.403602, 0.911589,
		-0.988923, -0.084341, -0.122138,
		0.126180, -0.911039, -0.392539,
		36.742306, 35.352318, 28.718002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902878, 36.400280, 29.548016>,  <36.653980, 35.990044, 28.992779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902878, 36.400280, 29.548016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828217, 36.413666, 29.940758>,  <36.783421, 36.421696, 30.176403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828217, 36.413666, 29.940758>,  <36.902878, 36.400280, 29.548016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828217, 36.413666, 29.940758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969875, 0.152972, -0.189585,
		-0.156542, -0.987664, 0.003910,
		-0.186648, 0.033470, 0.981857,
		36.772221, 36.423706, 30.235315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462605, 35.933601, 29.746134>,  <36.902878, 36.400280, 29.548016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462605, 35.933601, 29.746134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305710, 36.280560, 29.868631>,  <37.211575, 36.488735, 29.942131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305710, 36.280560, 29.868631>,  <37.462605, 35.933601, 29.746134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305710, 36.280560, 29.868631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449134, -0.109955, 0.886673,
		0.802765, 0.485328, -0.346447,
		-0.392234, 0.867391, 0.306245,
		37.188042, 36.540775, 29.960505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086098, 36.285290, 29.936953>,  <37.462605, 35.933601, 29.746134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086098, 36.285290, 29.936953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750294, 36.317307, 30.151920>,  <37.548813, 36.336517, 30.280901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750294, 36.317307, 30.151920>,  <38.086098, 36.285290, 29.936953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750294, 36.317307, 30.151920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497960, -0.282414, 0.819926,
		0.217399, 0.955948, 0.197233,
		-0.839508, 0.080037, 0.537420,
		37.498440, 36.341316, 30.313147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317665, 35.613667, 29.529449>,  <38.086098, 36.285290, 29.936953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317665, 35.613667, 29.529449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568008, 35.680313, 29.224678>,  <38.718216, 35.720303, 29.041815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568008, 35.680313, 29.224678>,  <38.317665, 35.613667, 29.529449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568008, 35.680313, 29.224678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095500, -0.985935, -0.137159,
		-0.774066, 0.013078, -0.632971,
		0.625861, 0.166619, -0.761929,
		38.755768, 35.730297, 28.996099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216656, 35.129986, 28.938648>,  <38.317665, 35.613667, 29.529449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216656, 35.129986, 28.938648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582138, 35.276787, 28.868853>,  <38.801426, 35.364868, 28.826977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582138, 35.276787, 28.868853>,  <38.216656, 35.129986, 28.938648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582138, 35.276787, 28.868853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327258, -0.919094, -0.219475,
		-0.240918, 0.143434, -0.959888,
		0.913707, 0.367006, -0.174487,
		38.856251, 35.386890, 28.816507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506153, 35.090847, 28.202047>,  <38.216656, 35.129986, 28.938648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506153, 35.090847, 28.202047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789387, 35.068214, 28.483591>,  <38.959328, 35.054634, 28.652517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789387, 35.068214, 28.483591>,  <38.506153, 35.090847, 28.202047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789387, 35.068214, 28.483591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221872, -0.928474, -0.297840,
		0.670365, 0.367062, -0.644884,
		0.708084, -0.056580, 0.703858,
		39.001812, 35.051239, 28.694748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178246, 34.791069, 28.006836>,  <38.506153, 35.090847, 28.202047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178246, 34.791069, 28.006836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134491, 34.722488, 28.398476>,  <39.108238, 34.681339, 28.633461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134491, 34.722488, 28.398476>,  <39.178246, 34.791069, 28.006836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134491, 34.722488, 28.398476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213399, -0.966095, -0.145333,
		0.970822, 0.193043, 0.142261,
		-0.109382, -0.171451, 0.979102,
		39.101677, 34.671055, 28.692205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814556, 34.428829, 28.221479>,  <39.178246, 34.791069, 28.006836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814556, 34.428829, 28.221479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501820, 34.350353, 28.458204>,  <39.314178, 34.303268, 28.600239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501820, 34.350353, 28.458204>,  <39.814556, 34.428829, 28.221479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501820, 34.350353, 28.458204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198758, -0.978107, -0.061666,
		0.590951, 0.069414, 0.803715,
		-0.781839, -0.196186, 0.591810,
		39.267269, 34.291496, 28.635748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968872, 34.003014, 28.908272>,  <39.814556, 34.428829, 28.221479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968872, 34.003014, 28.908272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616169, 33.968906, 28.722698>,  <39.404549, 33.948441, 28.611353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616169, 33.968906, 28.722698>,  <39.968872, 34.003014, 28.908272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616169, 33.968906, 28.722698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283763, -0.881551, -0.377288,
		-0.376810, -0.464324, 0.801510,
		-0.881755, -0.085273, -0.463935,
		39.351643, 33.943325, 28.583517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608898, 33.364819, 29.155807>,  <39.968872, 34.003014, 28.908272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608898, 33.364819, 29.155807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554497, 33.484051, 28.777885>,  <39.521854, 33.555588, 28.551132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554497, 33.484051, 28.777885>,  <39.608898, 33.364819, 29.155807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554497, 33.484051, 28.777885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463168, -0.823895, -0.326606,
		-0.875772, -0.482024, -0.026004,
		-0.136007, 0.298076, -0.944803,
		39.513695, 33.573475, 28.494444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523190, 32.775806, 28.655006>,  <39.608898, 33.364819, 29.155807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523190, 32.775806, 28.655006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666420, 33.047024, 28.398245>,  <39.752357, 33.209755, 28.244188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666420, 33.047024, 28.398245>,  <39.523190, 32.775806, 28.655006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666420, 33.047024, 28.398245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669856, -0.665483, -0.329281,
		-0.650443, -0.312075, -0.692484,
		0.358075, 0.678043, -0.641904,
		39.773842, 33.250435, 28.205673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430737, 32.277309, 28.184622>,  <39.523190, 32.775806, 28.655006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430737, 32.277309, 28.184622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552067, 31.922493, 28.323851>,  <39.624866, 31.709604, 28.407389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552067, 31.922493, 28.323851>,  <39.430737, 32.277309, 28.184622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552067, 31.922493, 28.323851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813275, 0.050639, -0.579672,
		0.496565, 0.458910, 0.736767,
		0.303326, -0.887039, 0.348074,
		39.643066, 31.656382, 28.428272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094391, 32.394775, 28.389650>,  <39.430737, 32.277309, 28.184622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094391, 32.394775, 28.389650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047527, 32.003719, 28.319792>,  <40.019409, 31.769087, 28.277876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047527, 32.003719, 28.319792>,  <40.094391, 32.394775, 28.389650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047527, 32.003719, 28.319792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850102, -0.007807, -0.526561,
		0.513422, -0.210156, 0.832005,
		-0.117155, -0.977637, -0.174646,
		40.012383, 31.710428, 28.267399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716282, 32.041813, 28.503849>,  <40.094391, 32.394775, 28.389650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716282, 32.041813, 28.503849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494709, 31.824089, 28.251852>,  <40.361767, 31.693457, 28.100653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494709, 31.824089, 28.251852>,  <40.716282, 32.041813, 28.503849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494709, 31.824089, 28.251852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730482, 0.045302, -0.681428,
		0.399445, -0.837663, 0.372511,
		-0.553931, -0.544305, -0.629993,
		40.328529, 31.660797, 28.062855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183258, 31.595819, 28.207649>,  <40.716282, 32.041813, 28.503849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183258, 31.595819, 28.207649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884872, 31.553888, 27.944574>,  <40.705841, 31.528730, 27.786730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884872, 31.553888, 27.944574>,  <41.183258, 31.595819, 28.207649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884872, 31.553888, 27.944574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664324, -0.186922, -0.723695,
		-0.047071, -0.976766, 0.209077,
		-0.745962, -0.104830, -0.657687,
		40.661083, 31.522440, 27.747269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262131, 30.938795, 27.820442>,  <41.183258, 31.595819, 28.207649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262131, 30.938795, 27.820442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047382, 31.177027, 27.581427>,  <40.918533, 31.319965, 27.438017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047382, 31.177027, 27.581427>,  <41.262131, 30.938795, 27.820442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047382, 31.177027, 27.581427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462202, -0.384884, -0.798896,
		-0.705788, -0.705089, -0.068644,
		-0.536873, 0.595579, -0.597540,
		40.886322, 31.355700, 27.402164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152573, 30.389845, 27.341589>,  <41.262131, 30.938795, 27.820442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152573, 30.389845, 27.341589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058197, 30.738756, 27.170259>,  <41.001572, 30.948103, 27.067463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058197, 30.738756, 27.170259>,  <41.152573, 30.389845, 27.341589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058197, 30.738756, 27.170259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191499, -0.390388, -0.900514,
		-0.952712, -0.294493, -0.074931,
		-0.235943, 0.872279, -0.428322,
		40.987415, 31.000441, 27.041763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968571, 30.173664, 26.638592>,  <41.152573, 30.389845, 27.341589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968571, 30.173664, 26.638592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993839, 30.572336, 26.618042>,  <41.009003, 30.811539, 26.605713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993839, 30.572336, 26.618042>,  <40.968571, 30.173664, 26.638592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993839, 30.572336, 26.618042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358084, -0.070687, -0.931010,
		-0.931550, 0.040418, -0.361361,
		0.063173, 0.996679, -0.051375,
		41.012791, 30.871340, 26.602629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575459, 30.418018, 26.104162>,  <40.968571, 30.173664, 26.638592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575459, 30.418018, 26.104162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872532, 30.674435, 26.181616>,  <41.050774, 30.828285, 26.228088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872532, 30.674435, 26.181616>,  <40.575459, 30.418018, 26.104162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872532, 30.674435, 26.181616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435970, -0.243380, -0.866427,
		-0.508289, 0.727896, -0.460228,
		0.742679, 0.641041, 0.193634,
		41.095337, 30.866747, 26.239706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574959, 30.789877, 25.435808>,  <40.575459, 30.418018, 26.104162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574959, 30.789877, 25.435808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918758, 30.868170, 25.624680>,  <41.125038, 30.915146, 25.738003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918758, 30.868170, 25.624680>,  <40.574959, 30.789877, 25.435808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918758, 30.868170, 25.624680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485519, -0.023820, -0.873902,
		-0.159803, 0.980368, -0.115505,
		0.859497, 0.195732, 0.472180,
		41.176609, 30.926889, 25.766335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941963, 31.315186, 25.163572>,  <40.574959, 30.789877, 25.435808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941963, 31.315186, 25.163572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200169, 31.065132, 25.339079>,  <41.355091, 30.915100, 25.444384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200169, 31.065132, 25.339079>,  <40.941963, 31.315186, 25.163572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200169, 31.065132, 25.339079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410520, -0.200449, -0.889547,
		0.644038, 0.754338, 0.127237,
		0.645515, -0.625135, 0.438767,
		41.393822, 30.877592, 25.470709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647148, 31.523684, 25.051411>,  <40.941963, 31.315186, 25.163572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647148, 31.523684, 25.051411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552601, 31.135021, 25.049639>,  <41.495872, 30.901825, 25.048576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552601, 31.135021, 25.049639>,  <41.647148, 31.523684, 25.051411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552601, 31.135021, 25.049639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360909, -0.083560, -0.928850,
		0.902151, -0.221148, 0.370430,
		-0.236366, -0.971654, -0.004430,
		41.481689, 30.843525, 25.048309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900291, 30.874649, 24.792212>,  <41.647148, 31.523684, 25.051411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900291, 30.874649, 24.792212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202103, 30.785412, 25.039085>,  <42.383190, 30.731869, 25.187210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202103, 30.785412, 25.039085>,  <41.900291, 30.874649, 24.792212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202103, 30.785412, 25.039085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516906, 0.377404, 0.768358,
		-0.404344, -0.898774, 0.169444,
		0.754529, -0.223094, 0.617183,
		42.428463, 30.718483, 25.224241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860142, 30.360720, 25.334633>,  <41.900291, 30.874649, 24.792212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860142, 30.360720, 25.334633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092747, 30.673405, 25.424767>,  <42.232307, 30.861015, 25.478848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092747, 30.673405, 25.424767>,  <41.860142, 30.360720, 25.334633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092747, 30.673405, 25.424767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698059, 0.337195, 0.631675,
		0.417807, -0.524620, 0.741763,
		0.581508, 0.781712, 0.225333,
		42.267200, 30.907917, 25.492367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192520, 30.406670, 26.056007>,  <41.860142, 30.360720, 25.334633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192520, 30.406670, 26.056007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091816, 30.753674, 25.884407>,  <42.031395, 30.961876, 25.781446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091816, 30.753674, 25.884407>,  <42.192520, 30.406670, 26.056007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091816, 30.753674, 25.884407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691406, 0.148944, 0.706947,
		0.677181, 0.474594, 0.562304,
		-0.251761, 0.867512, -0.428999,
		42.016289, 31.013927, 25.755707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165924, 31.050152, 26.530586>,  <42.192520, 30.406670, 26.056007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165924, 31.050152, 26.530586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886623, 31.102009, 26.248980>,  <41.719044, 31.133123, 26.080015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886623, 31.102009, 26.248980>,  <42.165924, 31.050152, 26.530586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886623, 31.102009, 26.248980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677200, 0.199165, 0.708332,
		0.232043, 0.971353, -0.051275,
		-0.698252, 0.129640, -0.704015,
		41.677147, 31.140902, 26.037775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902760, 31.844521, 26.507757>,  <42.165924, 31.050152, 26.530586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902760, 31.844521, 26.507757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640934, 31.559994, 26.405331>,  <41.483837, 31.389278, 26.343874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640934, 31.559994, 26.405331>,  <41.902760, 31.844521, 26.507757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640934, 31.559994, 26.405331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576603, 0.250665, 0.777622,
		-0.488947, 0.656657, -0.574224,
		-0.654568, -0.711315, -0.256068,
		41.444565, 31.346600, 26.328510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282402, 32.118088, 26.507442>,  <41.902760, 31.844521, 26.507757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282402, 32.118088, 26.507442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186443, 31.730968, 26.537954>,  <41.128868, 31.498697, 26.556261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186443, 31.730968, 26.537954>,  <41.282402, 32.118088, 26.507442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186443, 31.730968, 26.537954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721939, 0.230380, 0.652479,
		-0.649042, 0.101456, -0.753957,
		-0.239894, -0.967797, 0.076281,
		41.114475, 31.440630, 26.560839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558739, 32.127937, 26.395359>,  <41.282402, 32.118088, 26.507442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558739, 32.127937, 26.395359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664364, 31.793814, 26.588243>,  <40.727737, 31.593340, 26.703974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664364, 31.793814, 26.588243>,  <40.558739, 32.127937, 26.395359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664364, 31.793814, 26.588243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590342, 0.255394, 0.765683,
		-0.762736, -0.486859, -0.425678,
		0.264064, -0.835310, 0.482212,
		40.743584, 31.543221, 26.732906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060833, 32.096966, 26.935930>,  <40.558739, 32.127937, 26.395359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060833, 32.096966, 26.935930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274429, 31.772402, 27.030979>,  <40.402588, 31.577663, 27.088009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274429, 31.772402, 27.030979>,  <40.060833, 32.096966, 26.935930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274429, 31.772402, 27.030979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582387, -0.149251, 0.799093,
		-0.612929, -0.565095, -0.552255,
		0.533988, -0.811414, 0.237624,
		40.434628, 31.528978, 27.102266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623074, 31.469677, 26.889957>,  <40.060833, 32.096966, 26.935930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623074, 31.469677, 26.889957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924973, 31.426144, 27.148727>,  <40.106113, 31.400023, 27.303989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924973, 31.426144, 27.148727>,  <39.623074, 31.469677, 26.889957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924973, 31.426144, 27.148727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653146, -0.216777, 0.725540,
		0.061274, -0.970136, -0.234697,
		0.754749, -0.108834, 0.646923,
		40.151398, 31.393494, 27.342804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477882, 31.022036, 27.304779>,  <39.623074, 31.469677, 26.889957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477882, 31.022036, 27.304779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749802, 31.200151, 27.537876>,  <39.912952, 31.307020, 27.677734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749802, 31.200151, 27.537876>,  <39.477882, 31.022036, 27.304779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749802, 31.200151, 27.537876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646008, -0.012601, 0.763227,
		0.347201, -0.895298, 0.279095,
		0.679798, 0.445291, 0.582745,
		39.953743, 31.333738, 27.712700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607487, 30.583735, 27.885075>,  <39.477882, 31.022036, 27.304779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607487, 30.583735, 27.885075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703701, 30.954514, 28.000254>,  <39.761429, 31.176981, 28.069361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703701, 30.954514, 28.000254>,  <39.607487, 30.583735, 27.885075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703701, 30.954514, 28.000254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414520, -0.170145, 0.893993,
		0.877676, -0.334397, 0.343311,
		0.240536, 0.926946, 0.287946,
		39.775864, 31.232597, 28.086637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887917, 30.435278, 28.586437>,  <39.607487, 30.583735, 27.885075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887917, 30.435278, 28.586437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770699, 30.811203, 28.516150>,  <39.700367, 31.036758, 28.473976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770699, 30.811203, 28.516150>,  <39.887917, 30.435278, 28.586437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770699, 30.811203, 28.516150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500726, 0.005710, 0.865587,
		0.814493, 0.341641, 0.468915,
		-0.293043, 0.939813, -0.175719,
		39.682785, 31.093147, 28.463434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986248, 30.746456, 29.194426>,  <39.887917, 30.435278, 28.586437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986248, 30.746456, 29.194426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715443, 30.954525, 28.986166>,  <39.552959, 31.079367, 28.861210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715443, 30.954525, 28.986166>,  <39.986248, 30.746456, 29.194426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715443, 30.954525, 28.986166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614747, -0.010733, 0.788651,
		0.404645, 0.853995, 0.327040,
		-0.677014, 0.520171, -0.520647,
		39.512337, 31.110577, 28.829971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776173, 31.275696, 29.592991>,  <39.986248, 30.746456, 29.194426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776173, 31.275696, 29.592991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456924, 31.251087, 29.353252>,  <39.265373, 31.236322, 29.209410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456924, 31.251087, 29.353252>,  <39.776173, 31.275696, 29.592991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456924, 31.251087, 29.353252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597787, -0.043249, 0.800488,
		-0.075170, 0.997168, -0.002260,
		-0.798123, -0.061524, -0.599345,
		39.217487, 31.232630, 29.173449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217991, 31.825438, 29.713974>,  <39.776173, 31.275696, 29.592991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217991, 31.825438, 29.713974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086781, 31.477962, 29.565498>,  <39.008057, 31.269478, 29.476414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086781, 31.477962, 29.565498>,  <39.217991, 31.825438, 29.713974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086781, 31.477962, 29.565498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674014, -0.060093, 0.736271,
		-0.661896, 0.491699, -0.565796,
		-0.328023, -0.868689, -0.371187,
		38.988373, 31.217356, 29.454142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310749, 32.560181, 29.514679>,  <39.217991, 31.825438, 29.713974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310749, 32.560181, 29.514679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205547, 32.838921, 29.247780>,  <39.142426, 33.006165, 29.087641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205547, 32.838921, 29.247780>,  <39.310749, 32.560181, 29.514679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205547, 32.838921, 29.247780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480997, 0.694227, 0.535435,
		0.836342, -0.180121, -0.517773,
		-0.263009, 0.696854, -0.667249,
		39.126644, 33.047977, 29.047606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949295, 32.854149, 29.560585>,  <39.310749, 32.560181, 29.514679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949295, 32.854149, 29.560585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003765, 32.800404, 29.953197>,  <40.036446, 32.768158, 30.188765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003765, 32.800404, 29.953197>,  <39.949295, 32.854149, 29.560585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003765, 32.800404, 29.953197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868283, 0.493236, -0.052943,
		-0.477013, 0.859456, 0.183829,
		0.136174, -0.134361, 0.981531,
		40.044617, 32.760094, 30.247658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002003, 33.523315, 29.989780>,  <39.949295, 32.854149, 29.560585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002003, 33.523315, 29.989780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234676, 33.206352, 30.063259>,  <40.374279, 33.016174, 30.107346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234676, 33.206352, 30.063259>,  <40.002003, 33.523315, 29.989780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234676, 33.206352, 30.063259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811041, 0.547743, -0.205403,
		0.062144, 0.268463, 0.961284,
		0.581680, -0.792405, 0.183695,
		40.409180, 32.968632, 30.118368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562962, 33.590508, 30.632193>,  <40.002003, 33.523315, 29.989780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562962, 33.590508, 30.632193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668289, 33.334408, 30.343542>,  <40.731487, 33.180748, 30.170351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668289, 33.334408, 30.343542>,  <40.562962, 33.590508, 30.632193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668289, 33.334408, 30.343542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873904, 0.475134, -0.102661,
		0.408598, -0.603600, 0.684627,
		0.263323, -0.640246, -0.721627,
		40.747288, 33.142334, 30.127054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123497, 33.064960, 30.764824>,  <40.562962, 33.590508, 30.632193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123497, 33.064960, 30.764824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067120, 33.185104, 30.387482>,  <41.033295, 33.257191, 30.161076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067120, 33.185104, 30.387482>,  <41.123497, 33.064960, 30.764824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067120, 33.185104, 30.387482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948972, 0.312513, -0.042278,
		0.282113, -0.901178, -0.329076,
		-0.140940, 0.300357, -0.943357,
		41.024837, 33.275211, 30.104475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678608, 32.821537, 30.270559>,  <41.123497, 33.064960, 30.764824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678608, 32.821537, 30.270559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522488, 33.182888, 30.199488>,  <41.428818, 33.399700, 30.156845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522488, 33.182888, 30.199488>,  <41.678608, 32.821537, 30.270559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522488, 33.182888, 30.199488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920483, 0.386956, -0.054563,
		0.019462, -0.184846, -0.982575,
		-0.390299, 0.903381, -0.177678,
		41.405399, 33.453903, 30.146185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952396, 33.186378, 29.673155>,  <41.678608, 32.821537, 30.270559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952396, 33.186378, 29.673155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850582, 33.458508, 29.948072>,  <41.789494, 33.621784, 30.113024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850582, 33.458508, 29.948072>,  <41.952396, 33.186378, 29.673155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850582, 33.458508, 29.948072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951815, 0.301950, 0.053616,
		-0.171053, 0.667825, -0.724397,
		-0.254538, 0.680321, 0.687295,
		41.774220, 33.662605, 30.154261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063873, 33.818268, 29.446835>,  <41.952396, 33.186378, 29.673155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063873, 33.818268, 29.446835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124065, 33.749203, 29.836203>,  <42.160179, 33.707764, 30.069822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124065, 33.749203, 29.836203>,  <42.063873, 33.818268, 29.446835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124065, 33.749203, 29.836203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904731, 0.420966, -0.065190,
		-0.398520, 0.890492, 0.219559,
		0.150478, -0.172662, 0.973419,
		42.169209, 33.697403, 30.128229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459755, 34.464581, 29.489611>,  <42.063873, 33.818268, 29.446835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459755, 34.464581, 29.489611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496143, 34.419086, 29.885345>,  <42.517979, 34.391788, 30.122786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496143, 34.419086, 29.885345>,  <42.459755, 34.464581, 29.489611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496143, 34.419086, 29.885345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995840, 0.005201, -0.090974,
		0.005201, 0.993497, 0.113736,
		0.090974, -0.113736, 0.989337,
		42.523434, 34.384964, 30.182146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931561, 34.869926, 29.740005>,  <42.459755, 34.464581, 29.489611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931561, 34.869926, 29.740005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953903, 34.555717, 29.986528>,  <42.967308, 34.367191, 30.134443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953903, 34.555717, 29.986528>,  <42.931561, 34.869926, 29.740005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953903, 34.555717, 29.986528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985745, -0.054733, -0.159095,
		0.158705, 0.616409, 0.771267,
		0.055854, -0.785521, 0.616309,
		42.970661, 34.320061, 30.171421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611107, 34.581059, 29.445805>,  <42.931561, 34.869926, 29.740005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611107, 34.581059, 29.445805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585567, 34.452053, 29.823568>,  <43.570244, 34.374649, 30.050226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585567, 34.452053, 29.823568>,  <43.611107, 34.581059, 29.445805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585567, 34.452053, 29.823568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997874, -0.033068, 0.056166,
		0.013115, 0.945988, 0.323937,
		-0.063844, -0.322511, 0.944410,
		43.566414, 34.355301, 30.106892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015812, 35.028969, 29.894989>,  <43.611107, 34.581059, 29.445805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015812, 35.028969, 29.894989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986031, 34.659279, 30.044796>,  <43.968163, 34.437466, 30.134680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986031, 34.659279, 30.044796>,  <44.015812, 35.028969, 29.894989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986031, 34.659279, 30.044796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996815, -0.058210, 0.054509,
		-0.028578, 0.377384, 0.925616,
		-0.074450, -0.924225, 0.374519,
		43.963696, 34.382011, 30.157152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288986, 35.012829, 30.621864>,  <44.015812, 35.028969, 29.894989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288986, 35.012829, 30.621864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354939, 34.665199, 30.435307>,  <44.394508, 34.456619, 30.323372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354939, 34.665199, 30.435307>,  <44.288986, 35.012829, 30.621864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354939, 34.665199, 30.435307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985429, 0.125113, 0.115230,
		-0.041791, -0.478596, 0.877040,
		0.164878, -0.869076, -0.466393,
		44.404404, 34.404476, 30.295389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539768, 34.459106, 31.036417>,  <44.288986, 35.012829, 30.621864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539768, 34.459106, 31.036417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663052, 34.426834, 30.657261>,  <44.737022, 34.407471, 30.429768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663052, 34.426834, 30.657261>,  <44.539768, 34.459106, 31.036417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663052, 34.426834, 30.657261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950889, 0.056111, 0.304405,
		0.028628, -0.995160, 0.094009,
		0.308207, -0.080678, -0.947892,
		44.755512, 34.402630, 30.372892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048370, 33.872963, 30.980633>,  <44.539768, 34.459106, 31.036417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048370, 33.872963, 30.980633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107857, 34.139072, 30.687979>,  <45.143551, 34.298740, 30.512386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107857, 34.139072, 30.687979>,  <45.048370, 33.872963, 30.980633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107857, 34.139072, 30.687979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981132, -0.006834, 0.193220,
		0.123544, -0.746566, -0.653740,
		0.148719, 0.665276, -0.731635,
		45.152473, 34.338654, 30.468489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527184, 33.601460, 30.535543>,  <45.048370, 33.872963, 30.980633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527184, 33.601460, 30.535543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520958, 34.001057, 30.552414>,  <45.517223, 34.240814, 30.562536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520958, 34.001057, 30.552414>,  <45.527184, 33.601460, 30.535543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520958, 34.001057, 30.552414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904593, -0.003901, 0.426259,
		0.425992, 0.044789, -0.903618,
		-0.015567, 0.998989, 0.042178,
		45.516289, 34.300755, 30.565067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143478, 33.953979, 30.263863>,  <45.527184, 33.601460, 30.535543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143478, 33.953979, 30.263863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979149, 34.158813, 30.565588>,  <45.880550, 34.281715, 30.746624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979149, 34.158813, 30.565588>,  <46.143478, 33.953979, 30.263863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979149, 34.158813, 30.565588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891577, 0.052722, 0.449790,
		0.190562, 0.857314, -0.478224,
		-0.410824, 0.512086, 0.754315,
		45.855900, 34.312439, 30.791882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.864967, 34.063114, 30.610289>,  <46.143478, 33.953979, 30.263863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.864967, 34.063114, 30.610289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.766308, 34.417950, 30.454212>,  <46.707111, 34.630852, 30.360567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.766308, 34.417950, 30.454212>,  <46.864967, 34.063114, 30.610289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.766308, 34.417950, 30.454212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308107, 0.453516, 0.836297,
		0.918824, 0.086048, -0.385174,
		-0.246644, 0.887084, -0.390189,
		46.692314, 34.684074, 30.337156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.468445, 34.439190, 30.697409>,  <46.864967, 34.063114, 30.610289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.468445, 34.439190, 30.697409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183292, 34.715996, 30.651945>,  <47.012199, 34.882080, 30.624666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183292, 34.715996, 30.651945>,  <47.468445, 34.439190, 30.697409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.183292, 34.715996, 30.651945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334901, 0.478339, 0.811809,
		0.616149, 0.540659, -0.572755,
		-0.712883, 0.692011, -0.113661,
		46.969429, 34.923599, 30.617847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.757492, 35.171078, 30.778116>,  <47.468445, 34.439190, 30.697409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.757492, 35.171078, 30.778116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371758, 35.194893, 30.881275>,  <47.140316, 35.209183, 30.943171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371758, 35.194893, 30.881275>,  <47.757492, 35.171078, 30.778116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371758, 35.194893, 30.881275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259172, 0.410115, 0.874434,
		-0.053707, 0.910088, -0.410919,
		-0.964337, 0.059536, 0.257895,
		47.082455, 35.212753, 30.958643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.661652, 35.725723, 31.241587>,  <47.757492, 35.171078, 30.778116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.661652, 35.725723, 31.241587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336720, 35.496796, 31.286434>,  <47.141758, 35.359440, 31.313343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336720, 35.496796, 31.286434>,  <47.661652, 35.725723, 31.241587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336720, 35.496796, 31.286434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049941, 0.123274, 0.991115,
		-0.581051, 0.810715, -0.071558,
		-0.812333, -0.572315, 0.112116,
		47.093021, 35.325100, 31.320068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146244, 36.029007, 31.710735>,  <47.661652, 35.725723, 31.241587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.146244, 36.029007, 31.710735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.117191, 35.631104, 31.739513>,  <47.099758, 35.392361, 31.756781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.117191, 35.631104, 31.739513>,  <47.146244, 36.029007, 31.710735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.117191, 35.631104, 31.739513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153291, 0.060143, 0.986349,
		-0.985508, 0.082670, 0.148120,
		-0.072633, -0.994760, 0.071944,
		47.095402, 35.332676, 31.761097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740967, 35.848709, 32.458702>,  <47.146244, 36.029007, 31.710735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.740967, 35.848709, 32.458702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.929470, 35.513237, 32.349503>,  <47.042572, 35.311954, 32.283981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.929470, 35.513237, 32.349503>,  <46.740967, 35.848709, 32.458702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.929470, 35.513237, 32.349503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143744, -0.232354, 0.961951,
		-0.870201, -0.492573, 0.011055,
		0.471263, -0.838680, -0.272999,
		47.070850, 35.261635, 32.267601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586605, 35.318108, 32.968159>,  <46.740967, 35.848709, 32.458702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586605, 35.318108, 32.968159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937988, 35.188763, 32.827446>,  <47.148819, 35.111156, 32.743019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937988, 35.188763, 32.827446>,  <46.586605, 35.318108, 32.968159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937988, 35.188763, 32.827446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177066, -0.463503, 0.868224,
		-0.443802, -0.824986, -0.349912,
		0.878458, -0.323362, -0.351781,
		47.201527, 35.091751, 32.721912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686981, 34.662189, 33.217541>,  <46.586605, 35.318108, 32.968159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686981, 34.662189, 33.217541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.050827, 34.809803, 33.141212>,  <47.269135, 34.898373, 33.095417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.050827, 34.809803, 33.141212>,  <46.686981, 34.662189, 33.217541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.050827, 34.809803, 33.141212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319456, -0.327658, 0.889150,
		0.265607, -0.869742, -0.415934,
		0.909616, 0.369038, -0.190816,
		47.323711, 34.920513, 33.083969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333736, 34.102474, 33.295822>,  <46.686981, 34.662189, 33.217541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333736, 34.102474, 33.295822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392799, 34.492950, 33.359386>,  <47.428238, 34.727234, 33.397526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392799, 34.492950, 33.359386>,  <47.333736, 34.102474, 33.295822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.392799, 34.492950, 33.359386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252703, -0.192576, 0.948185,
		0.956210, -0.099852, -0.275122,
		0.147660, 0.976189, 0.158910,
		47.437096, 34.785809, 33.407059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487057, 34.004700, 34.051861>,  <47.333736, 34.102474, 33.295822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487057, 34.004700, 34.051861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559391, 34.392853, 33.987793>,  <47.602791, 34.625744, 33.949352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559391, 34.392853, 33.987793>,  <47.487057, 34.004700, 34.051861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.559391, 34.392853, 33.987793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161956, 0.131251, 0.978031,
		0.970086, -0.202808, -0.133424,
		0.180840, 0.970382, -0.160171,
		47.613644, 34.683968, 33.939743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.172531, 34.387474, 34.284973>,  <47.487057, 34.004700, 34.051861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.172531, 34.387474, 34.284973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.837971, 34.603374, 34.323151>,  <47.637234, 34.732914, 34.346058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.837971, 34.603374, 34.323151>,  <48.172531, 34.387474, 34.284973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.837971, 34.603374, 34.323151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063736, -0.077173, 0.994978,
		0.544402, 0.838283, 0.030146,
		-0.836400, 0.539746, 0.095442,
		47.587051, 34.765297, 34.351784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.181652, 34.905861, 34.825516>,  <48.172531, 34.387474, 34.284973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.181652, 34.905861, 34.825516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.793858, 34.814079, 34.790981>,  <47.561180, 34.759010, 34.770260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.793858, 34.814079, 34.790981>,  <48.181652, 34.905861, 34.825516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.793858, 34.814079, 34.790981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030002, -0.238461, 0.970688,
		-0.243317, 0.943656, 0.224300,
		-0.969483, -0.229456, -0.086333,
		47.503014, 34.745243, 34.765079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.756176, 35.354904, 35.190662>,  <48.181652, 34.905861, 34.825516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.756176, 35.354904, 35.190662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.623981, 34.977554, 35.179211>,  <47.544666, 34.751144, 35.172340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.623981, 34.977554, 35.179211>,  <47.756176, 35.354904, 35.190662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.623981, 34.977554, 35.179211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148727, -0.082014, 0.985472,
		-0.932019, 0.321427, 0.167410,
		-0.330487, -0.943376, -0.028633,
		47.524834, 34.694542, 35.170620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.798576, 36.068317, 19.520586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.446205, 36.095333, 19.333223>,  <38.234783, 36.111542, 19.220806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.446205, 36.095333, 19.333223>,  <38.798576, 36.068317, 19.520586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446205, 36.095333, 19.333223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415491, -0.584226, 0.697171,
		-0.226565, 0.808775, 0.542725,
		-0.880929, 0.067543, -0.468404,
		38.181927, 36.115597, 19.192701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345669, 36.346085, 19.987320>,  <38.798576, 36.068317, 19.520586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345669, 36.346085, 19.987320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147041, 36.123978, 19.720457>,  <38.027863, 35.990715, 19.560339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147041, 36.123978, 19.720457>,  <38.345669, 36.346085, 19.987320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147041, 36.123978, 19.720457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397294, -0.537979, 0.743463,
		-0.771735, 0.634239, 0.046541,
		-0.496571, -0.555266, -0.667156,
		37.998070, 35.957397, 19.520309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635708, 36.317768, 20.164707>,  <38.345669, 36.346085, 19.987320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635708, 36.317768, 20.164707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652081, 35.998047, 19.924892>,  <37.661903, 35.806213, 19.781004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652081, 35.998047, 19.924892>,  <37.635708, 36.317768, 20.164707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652081, 35.998047, 19.924892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648920, -0.477533, 0.592338,
		-0.759755, 0.364807, -0.538227,
		0.040932, -0.799299, -0.599539,
		37.664360, 35.758259, 19.745031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979580, 36.142349, 20.104486>,  <37.635708, 36.317768, 20.164707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979580, 36.142349, 20.104486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196365, 35.819641, 20.010334>,  <37.326435, 35.626019, 19.953842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196365, 35.819641, 20.010334>,  <36.979580, 36.142349, 20.104486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196365, 35.819641, 20.010334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644885, -0.578826, 0.499082,
		-0.538886, -0.118692, -0.833975,
		0.541963, -0.806767, -0.235379,
		37.358955, 35.577610, 19.939720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498489, 35.718124, 19.823872>,  <36.979580, 36.142349, 20.104486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498489, 35.718124, 19.823872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784630, 35.463989, 19.940224>,  <36.956314, 35.311508, 20.010035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784630, 35.463989, 19.940224>,  <36.498489, 35.718124, 19.823872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784630, 35.463989, 19.940224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667455, -0.498083, 0.553549,
		-0.206809, -0.590133, -0.780367,
		0.715355, -0.635339, 0.290880,
		36.999237, 35.273388, 20.027487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127892, 35.094627, 19.977306>,  <36.498489, 35.718124, 19.823872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127892, 35.094627, 19.977306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468025, 35.002892, 20.166763>,  <36.672104, 34.947849, 20.280437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468025, 35.002892, 20.166763>,  <36.127892, 35.094627, 19.977306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468025, 35.002892, 20.166763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526229, -0.363055, 0.768944,
		-0.004390, -0.903103, -0.429402,
		0.850332, -0.229340, 0.473645,
		36.723125, 34.934090, 20.308857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023811, 34.411674, 20.228010>,  <36.127892, 35.094627, 19.977306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023811, 34.411674, 20.228010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314400, 34.559116, 20.459999>,  <36.488754, 34.647583, 20.599194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314400, 34.559116, 20.459999>,  <36.023811, 34.411674, 20.228010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314400, 34.559116, 20.459999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518960, -0.258959, 0.814629,
		0.450464, -0.892789, 0.003163,
		0.726472, 0.368603, 0.579973,
		36.532341, 34.669697, 20.633991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193897, 33.888161, 20.642612>,  <36.023811, 34.411674, 20.228010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193897, 33.888161, 20.642612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318859, 34.213341, 20.839191>,  <36.393837, 34.408447, 20.957138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318859, 34.213341, 20.839191>,  <36.193897, 33.888161, 20.642612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318859, 34.213341, 20.839191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504405, -0.296426, 0.810992,
		0.804970, -0.501249, 0.317448,
		0.312409, 0.812946, 0.491446,
		36.412582, 34.457226, 20.986626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519264, 33.579166, 21.271706>,  <36.193897, 33.888161, 20.642612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519264, 33.579166, 21.271706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471519, 33.965069, 21.365515>,  <36.442871, 34.196609, 21.421801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471519, 33.965069, 21.365515>,  <36.519264, 33.579166, 21.271706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471519, 33.965069, 21.365515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185815, -0.253746, 0.949255,
		0.975307, 0.069731, 0.209554,
		-0.119366, 0.964754, 0.234523,
		36.435711, 34.254494, 21.435871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940998, 33.678562, 21.853643>,  <36.519264, 33.579166, 21.271706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940998, 33.678562, 21.853643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650013, 33.952065, 21.876549>,  <36.475422, 34.116165, 21.890293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650013, 33.952065, 21.876549>,  <36.940998, 33.678562, 21.853643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650013, 33.952065, 21.876549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073144, -0.160261, 0.984361,
		0.682238, 0.711897, 0.166596,
		-0.727463, 0.683753, 0.057265,
		36.431774, 34.157192, 21.893728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198555, 34.063744, 22.460657>,  <36.940998, 33.678562, 21.853643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198555, 34.063744, 22.460657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818150, 34.165863, 22.390911>,  <36.589909, 34.227135, 22.349064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818150, 34.165863, 22.390911>,  <37.198555, 34.063744, 22.460657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818150, 34.165863, 22.390911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189439, -0.035501, 0.981250,
		0.244325, 0.966210, 0.082126,
		-0.951009, 0.255302, -0.174364,
		36.532848, 34.242455, 22.338602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030823, 34.567875, 22.921383>,  <37.198555, 34.063744, 22.460657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030823, 34.567875, 22.921383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689190, 34.387184, 22.818245>,  <36.484211, 34.278770, 22.756363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689190, 34.387184, 22.818245>,  <37.030823, 34.567875, 22.921383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689190, 34.387184, 22.818245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216438, -0.142113, 0.965898,
		-0.472962, 0.880767, 0.023607,
		-0.854085, -0.451724, -0.257845,
		36.432964, 34.251667, 22.740891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688534, 34.739475, 23.446732>,  <37.030823, 34.567875, 22.921383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688534, 34.739475, 23.446732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480911, 34.435745, 23.289757>,  <36.356339, 34.253506, 23.195572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480911, 34.435745, 23.289757>,  <36.688534, 34.739475, 23.446732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480911, 34.435745, 23.289757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374667, -0.210546, 0.902937,
		-0.768250, 0.615706, -0.175210,
		-0.519053, -0.759327, -0.392437,
		36.325195, 34.207947, 23.172026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011623, 34.792656, 23.634268>,  <36.688534, 34.739475, 23.446732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011623, 34.792656, 23.634268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040356, 34.401405, 23.556179>,  <36.057594, 34.166656, 23.509327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040356, 34.401405, 23.556179>,  <36.011623, 34.792656, 23.634268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040356, 34.401405, 23.556179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292709, -0.207780, 0.933353,
		-0.953500, -0.009900, -0.301231,
		0.071830, -0.978125, -0.195220,
		36.061905, 34.107967, 23.497614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449860, 34.543068, 23.985359>,  <36.011623, 34.792656, 23.634268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449860, 34.543068, 23.985359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.690849, 34.230686, 23.919462>,  <35.835442, 34.043259, 23.879925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.690849, 34.230686, 23.919462>,  <35.449860, 34.543068, 23.985359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690849, 34.230686, 23.919462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249312, -0.380220, 0.890660,
		-0.758201, -0.495527, -0.423774,
		0.602473, -0.780951, -0.164742,
		35.871590, 33.996399, 23.870039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995937, 34.025578, 24.222769>,  <35.449860, 34.543068, 23.985359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995937, 34.025578, 24.222769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.375652, 33.900085, 24.214502>,  <35.603481, 33.824791, 24.209541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.375652, 33.900085, 24.214502>,  <34.995937, 34.025578, 24.222769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375652, 33.900085, 24.214502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089606, -0.332965, 0.938672,
		-0.301366, -0.889219, -0.344191,
		0.949289, -0.313725, -0.020665,
		35.660439, 33.805965, 24.208302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003235, 33.381294, 24.602030>,  <34.995937, 34.025578, 24.222769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003235, 33.381294, 24.602030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391232, 33.473740, 24.571819>,  <35.624031, 33.529209, 24.553694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391232, 33.473740, 24.571819>,  <35.003235, 33.381294, 24.602030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391232, 33.473740, 24.571819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132865, -0.243686, 0.960710,
		0.203632, -0.941914, -0.267080,
		0.969990, 0.231117, -0.075525,
		35.682228, 33.543076, 24.549162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255924, 32.933643, 24.968298>,  <35.003235, 33.381294, 24.602030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255924, 32.933643, 24.968298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562309, 33.190796, 24.968239>,  <35.746140, 33.345089, 24.968203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562309, 33.190796, 24.968239>,  <35.255924, 32.933643, 24.968298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562309, 33.190796, 24.968239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206722, -0.246080, 0.946948,
		0.608739, -0.725360, -0.321386,
		0.765965, 0.642882, -0.000150,
		35.792099, 33.383659, 24.968193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823112, 32.541599, 25.063736>,  <35.255924, 32.933643, 24.968298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823112, 32.541599, 25.063736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900261, 32.916733, 25.179165>,  <35.946552, 33.141811, 25.248423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900261, 32.916733, 25.179165>,  <35.823112, 32.541599, 25.063736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900261, 32.916733, 25.179165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037644, -0.300950, 0.952897,
		0.980501, -0.172926, -0.093349,
		0.192874, 0.937831, 0.288572,
		35.958122, 33.198082, 25.265736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417641, 32.477634, 25.523695>,  <35.823112, 32.541599, 25.063736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417641, 32.477634, 25.523695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183086, 32.790607, 25.607555>,  <36.042355, 32.978390, 25.657871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183086, 32.790607, 25.607555>,  <36.417641, 32.477634, 25.523695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183086, 32.790607, 25.607555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067112, -0.211002, 0.975179,
		0.807245, 0.585904, 0.071219,
		-0.586389, 0.782428, 0.209651,
		36.007168, 33.025337, 25.670450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596897, 32.569134, 26.216900>,  <36.417641, 32.477634, 25.523695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596897, 32.569134, 26.216900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269459, 32.791367, 26.158613>,  <36.072998, 32.924706, 26.123640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269459, 32.791367, 26.158613>,  <36.596897, 32.569134, 26.216900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269459, 32.791367, 26.158613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086218, 0.131968, 0.987497,
		0.567867, 0.820921, -0.060127,
		-0.818592, 0.555583, -0.145719,
		36.023880, 32.958042, 26.114897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710682, 33.300663, 26.595095>,  <36.596897, 32.569134, 26.216900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710682, 33.300663, 26.595095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329681, 33.180347, 26.576057>,  <36.101082, 33.108158, 26.564636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329681, 33.180347, 26.576057>,  <36.710682, 33.300663, 26.595095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329681, 33.180347, 26.576057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061075, 0.035579, 0.997499,
		-0.298339, 0.953028, -0.052260,
		-0.952504, -0.300785, -0.047591,
		36.043930, 33.090111, 26.561781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070206, 33.911167, 26.927095>,  <36.710682, 33.300663, 26.595095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070206, 33.911167, 26.927095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299812, 33.980980, 27.247107>,  <37.437576, 34.022869, 27.439114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299812, 33.980980, 27.247107>,  <37.070206, 33.911167, 26.927095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299812, 33.980980, 27.247107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656826, 0.485272, -0.577140,
		-0.488960, 0.856767, 0.163917,
		0.574019, 0.174533, 0.800026,
		37.472019, 34.033340, 27.487114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214848, 34.574413, 26.890507>,  <37.070206, 33.911167, 26.927095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214848, 34.574413, 26.890507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490116, 34.387180, 27.112253>,  <37.655277, 34.274841, 27.245300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490116, 34.387180, 27.112253>,  <37.214848, 34.574413, 26.890507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490116, 34.387180, 27.112253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722866, 0.508008, -0.468394,
		-0.062373, 0.723065, 0.687959,
		0.688168, -0.468087, 0.554365,
		37.696568, 34.246754, 27.278563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588570, 35.147095, 27.040167>,  <37.214848, 34.574413, 26.890507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588570, 35.147095, 27.040167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816467, 34.823917, 27.100332>,  <37.953205, 34.630013, 27.136431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816467, 34.823917, 27.100332>,  <37.588570, 35.147095, 27.040167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816467, 34.823917, 27.100332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700294, 0.381503, -0.603360,
		0.430098, 0.449091, 0.783156,
		0.569740, -0.807944, 0.150412,
		37.987389, 34.581535, 27.145456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275066, 35.382378, 27.024960>,  <37.588570, 35.147095, 27.040167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275066, 35.382378, 27.024960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312725, 34.986786, 26.979244>,  <38.335320, 34.749432, 26.951815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312725, 34.986786, 26.979244>,  <38.275066, 35.382378, 27.024960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312725, 34.986786, 26.979244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725017, 0.146782, -0.672908,
		0.682266, -0.019512, 0.730844,
		0.094145, -0.988976, -0.114291,
		38.340969, 34.690094, 26.944958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976070, 35.245235, 27.024370>,  <38.275066, 35.382378, 27.024960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976070, 35.245235, 27.024370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802380, 34.951195, 26.816113>,  <38.698166, 34.774773, 26.691158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802380, 34.951195, 26.816113>,  <38.976070, 35.245235, 27.024370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802380, 34.951195, 26.816113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617603, 0.177800, -0.766129,
		0.655753, -0.654229, 0.376794,
		-0.434230, -0.735100, -0.520646,
		38.672112, 34.730663, 26.659918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562229, 34.964252, 26.672764>,  <38.976070, 35.245235, 27.024370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562229, 34.964252, 26.672764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232067, 34.822540, 26.496946>,  <39.033970, 34.737514, 26.391455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232067, 34.822540, 26.496946>,  <39.562229, 34.964252, 26.672764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232067, 34.822540, 26.496946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450782, 0.055122, -0.890930,
		0.339866, -0.933514, 0.114204,
		-0.825401, -0.354278, -0.439546,
		38.984447, 34.716259, 26.365082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834167, 34.515656, 26.124666>,  <39.562229, 34.964252, 26.672764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834167, 34.515656, 26.124666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.457142, 34.590450, 26.013956>,  <39.230927, 34.635326, 25.947529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.457142, 34.590450, 26.013956>,  <39.834167, 34.515656, 26.124666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457142, 34.590450, 26.013956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309873, 0.180175, -0.933550,
		-0.124690, -0.965699, -0.227768,
		-0.942566, 0.186984, -0.276778,
		39.174374, 34.646545, 25.930923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718620, 34.140049, 25.525875>,  <39.834167, 34.515656, 26.124666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718620, 34.140049, 25.525875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434376, 34.421265, 25.514791>,  <39.263828, 34.589993, 25.508142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434376, 34.421265, 25.514791>,  <39.718620, 34.140049, 25.525875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434376, 34.421265, 25.514791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281804, 0.248315, -0.926783,
		-0.644682, -0.666393, -0.374575,
		-0.710614, 0.703037, -0.027708,
		39.221191, 34.632175, 25.506479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330421, 34.066895, 24.919165>,  <39.718620, 34.140049, 25.525875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330421, 34.066895, 24.919165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260307, 34.453251, 24.995398>,  <39.218239, 34.685066, 25.041138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260307, 34.453251, 24.995398>,  <39.330421, 34.066895, 24.919165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260307, 34.453251, 24.995398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120555, 0.213180, -0.969547,
		-0.977109, -0.146971, -0.153810,
		-0.175284, 0.965896, 0.190582,
		39.207722, 34.743019, 25.052572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873470, 34.274864, 24.421463>,  <39.330421, 34.066895, 24.919165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873470, 34.274864, 24.421463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021282, 34.625286, 24.545385>,  <39.109970, 34.835537, 24.619740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021282, 34.625286, 24.545385>,  <38.873470, 34.274864, 24.421463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021282, 34.625286, 24.545385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015749, 0.327452, -0.944736,
		-0.929084, 0.353990, 0.107208,
		0.369533, 0.876051, 0.309806,
		39.132141, 34.888100, 24.638327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492878, 34.711212, 23.953896>,  <38.873470, 34.274864, 24.421463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492878, 34.711212, 23.953896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813950, 34.912567, 24.081842>,  <39.006592, 35.033379, 24.158609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813950, 34.912567, 24.081842>,  <38.492878, 34.711212, 23.953896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813950, 34.912567, 24.081842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139934, 0.362391, -0.921462,
		-0.579766, 0.784396, 0.220442,
		0.802677, 0.503385, 0.319865,
		39.054752, 35.063583, 24.177801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475101, 35.436329, 23.801872>,  <38.492878, 34.711212, 23.953896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475101, 35.436329, 23.801872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865650, 35.354698, 23.830317>,  <39.099979, 35.305717, 23.847383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865650, 35.354698, 23.830317>,  <38.475101, 35.436329, 23.801872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865650, 35.354698, 23.830317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162745, 0.477823, -0.863249,
		0.142194, 0.854422, 0.499745,
		0.976368, -0.204080, 0.071109,
		39.158562, 35.293476, 23.851650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844967, 36.013618, 23.714035>,  <38.475101, 35.436329, 23.801872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844967, 36.013618, 23.714035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117252, 35.735653, 23.621325>,  <39.280624, 35.568874, 23.565699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117252, 35.735653, 23.621325>,  <38.844967, 36.013618, 23.714035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117252, 35.735653, 23.621325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235224, 0.506993, -0.829233,
		0.693759, 0.509949, 0.508577,
		0.680712, -0.694918, -0.231779,
		39.321465, 35.527176, 23.551790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496830, 36.266693, 23.568169>,  <38.844967, 36.013618, 23.714035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496830, 36.266693, 23.568169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555290, 35.909042, 23.398853>,  <39.590366, 35.694450, 23.297264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555290, 35.909042, 23.398853>,  <39.496830, 36.266693, 23.568169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555290, 35.909042, 23.398853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367732, 0.446324, -0.815824,
		0.918375, -0.036422, 0.394031,
		0.146152, -0.894130, -0.423287,
		39.599136, 35.640804, 23.271868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237164, 36.225025, 23.380754>,  <39.496830, 36.266693, 23.568169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237164, 36.225025, 23.380754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.024124, 35.985947, 23.141056>,  <39.896301, 35.842499, 22.997238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.024124, 35.985947, 23.141056>,  <40.237164, 36.225025, 23.380754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024124, 35.985947, 23.141056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429004, 0.419680, -0.799890,
		0.729583, -0.683101, 0.032893,
		-0.532601, -0.597698, -0.599244,
		39.864346, 35.806637, 22.961283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705067, 35.981720, 22.799828>,  <40.237164, 36.225025, 23.380754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705067, 35.981720, 22.799828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.335022, 35.942028, 22.653229>,  <40.112995, 35.918213, 22.565269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.335022, 35.942028, 22.653229>,  <40.705067, 35.981720, 22.799828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335022, 35.942028, 22.653229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300839, 0.397341, -0.866958,
		0.231654, -0.912290, -0.337732,
		-0.925112, -0.099232, -0.366498,
		40.057487, 35.912258, 22.543280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790173, 35.651234, 22.183237>,  <40.705067, 35.981720, 22.799828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790173, 35.651234, 22.183237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415977, 35.786987, 22.143877>,  <40.191460, 35.868439, 22.120260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415977, 35.786987, 22.143877>,  <40.790173, 35.651234, 22.183237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415977, 35.786987, 22.143877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160123, 0.158900, -0.974223,
		-0.315003, -0.927129, -0.202993,
		-0.935486, 0.339387, -0.098401,
		40.135330, 35.888802, 22.114357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616669, 35.617447, 21.510862>,  <40.790173, 35.651234, 22.183237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616669, 35.617447, 21.510862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332489, 35.872280, 21.630449>,  <40.161980, 36.025181, 21.702202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332489, 35.872280, 21.630449>,  <40.616669, 35.617447, 21.510862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332489, 35.872280, 21.630449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168703, 0.258254, -0.951233,
		-0.683225, -0.726243, -0.075999,
		-0.710453, 0.637084, 0.298965,
		40.119354, 36.063404, 21.720139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.202610, 35.737148, 20.921709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078449, 36.045368, 21.144388>,  <40.003952, 36.230301, 21.277996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078449, 36.045368, 21.144388>,  <40.202610, 35.737148, 20.921709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078449, 36.045368, 21.144388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216921, 0.512757, -0.830678,
		-0.925526, -0.378599, 0.007990,
		-0.310397, 0.770547, 0.556696,
		39.985329, 36.276531, 21.311398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606930, 36.018677, 20.522039>,  <40.202610, 35.737148, 20.921709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606930, 36.018677, 20.522039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707661, 36.326637, 20.756590>,  <39.768101, 36.511414, 20.897320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707661, 36.326637, 20.756590>,  <39.606930, 36.018677, 20.522039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707661, 36.326637, 20.756590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166653, 0.631349, -0.757381,
		-0.953315, 0.093009, 0.287297,
		0.251828, 0.769901, 0.586374,
		39.783211, 36.557606, 20.932503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185505, 36.579952, 20.266329>,  <39.606930, 36.018677, 20.522039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185505, 36.579952, 20.266329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.496292, 36.747124, 20.454645>,  <39.682766, 36.847427, 20.567635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.496292, 36.747124, 20.454645>,  <39.185505, 36.579952, 20.266329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496292, 36.747124, 20.454645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030758, 0.772150, -0.634695,
		-0.628783, 0.478660, 0.612794,
		0.776973, 0.417933, 0.470792,
		39.729385, 36.872505, 20.595882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983784, 37.303249, 20.515711>,  <39.185505, 36.579952, 20.266329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983784, 37.303249, 20.515711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.380871, 37.292873, 20.468655>,  <39.619122, 37.286648, 20.440420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.380871, 37.292873, 20.468655>,  <38.983784, 37.303249, 20.515711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380871, 37.292873, 20.468655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059118, 0.745957, -0.663365,
		0.104965, 0.665489, 0.738991,
		0.992717, -0.025943, -0.117641,
		39.678684, 37.285091, 20.433363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191036, 38.045746, 20.579748>,  <38.983784, 37.303249, 20.515711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191036, 38.045746, 20.579748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465168, 37.819164, 20.396685>,  <39.629646, 37.683216, 20.286846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465168, 37.819164, 20.396685>,  <39.191036, 38.045746, 20.579748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465168, 37.819164, 20.396685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017382, 0.640998, -0.767346,
		0.728026, 0.517929, 0.449141,
		0.685329, -0.566455, -0.457660,
		39.670765, 37.649227, 20.259386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673012, 38.568794, 20.249008>,  <39.191036, 38.045746, 20.579748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673012, 38.568794, 20.249008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777363, 38.215393, 20.093390>,  <39.839973, 38.003353, 20.000017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777363, 38.215393, 20.093390>,  <39.673012, 38.568794, 20.249008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777363, 38.215393, 20.093390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293611, 0.456527, -0.839866,
		0.919638, 0.104874, 0.378506,
		0.260878, -0.883507, -0.389048,
		39.855625, 37.950340, 19.976675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409897, 38.649921, 20.047348>,  <39.673012, 38.568794, 20.249008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409897, 38.649921, 20.047348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.230675, 38.358677, 19.839849>,  <40.123142, 38.183929, 19.715349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.230675, 38.358677, 19.839849>,  <40.409897, 38.649921, 20.047348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230675, 38.358677, 19.839849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368568, 0.378203, -0.849187,
		0.814494, -0.571681, 0.098900,
		-0.448060, -0.728109, -0.518748,
		40.096256, 38.140244, 19.684225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935333, 38.491062, 19.553751>,  <40.409897, 38.649921, 20.047348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935333, 38.491062, 19.553751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.610409, 38.312328, 19.403820>,  <40.415455, 38.205090, 19.313862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.610409, 38.312328, 19.403820>,  <40.935333, 38.491062, 19.553751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610409, 38.312328, 19.403820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344690, 0.150624, -0.926553,
		0.470473, -0.881846, 0.031666,
		-0.812308, -0.446834, -0.374828,
		40.366714, 38.178280, 19.291372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164761, 37.914490, 18.945805>,  <40.935333, 38.491062, 19.553751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164761, 37.914490, 18.945805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778034, 37.971600, 18.861067>,  <40.545998, 38.005867, 18.810225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778034, 37.971600, 18.861067>,  <41.164761, 37.914490, 18.945805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778034, 37.971600, 18.861067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240685, 0.231080, -0.942694,
		-0.085643, -0.962401, -0.257777,
		-0.966817, 0.142779, -0.211846,
		40.487988, 38.014435, 18.797514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068241, 37.532085, 18.307539>,  <41.164761, 37.914490, 18.945805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068241, 37.532085, 18.307539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784035, 37.813248, 18.320719>,  <40.613510, 37.981945, 18.328627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784035, 37.813248, 18.320719>,  <41.068241, 37.532085, 18.307539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784035, 37.813248, 18.320719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321838, 0.366246, -0.873089,
		-0.625770, -0.609739, -0.486446,
		-0.710515, 0.702910, 0.032948,
		40.570881, 38.024120, 18.330603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935951, 37.487873, 17.622801>,  <41.068241, 37.532085, 18.307539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935951, 37.487873, 17.622801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.814075, 37.831909, 17.786461>,  <40.740948, 38.038330, 17.884657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.814075, 37.831909, 17.786461>,  <40.935951, 37.487873, 17.622801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814075, 37.831909, 17.786461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420542, 0.506920, -0.752448,
		-0.854580, -0.057201, -0.516160,
		-0.304692, 0.860093, 0.409148,
		40.722668, 38.089939, 17.909204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617908, 37.826378, 17.084402>,  <40.935951, 37.487873, 17.622801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617908, 37.826378, 17.084402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717728, 38.108059, 17.350281>,  <40.777618, 38.277069, 17.509808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717728, 38.108059, 17.350281>,  <40.617908, 37.826378, 17.084402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717728, 38.108059, 17.350281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195469, 0.635653, -0.746818,
		-0.948429, 0.316296, 0.020977,
		0.249549, 0.704203, 0.664698,
		40.792591, 38.319321, 17.549690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283733, 38.460804, 16.837929>,  <40.617908, 37.826378, 17.084402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283733, 38.460804, 16.837929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.597427, 38.549232, 17.069828>,  <40.785645, 38.602291, 17.208967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.597427, 38.549232, 17.069828>,  <40.283733, 38.460804, 16.837929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597427, 38.549232, 17.069828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287808, 0.698163, -0.655542,
		-0.549681, 0.680953, 0.483895,
		0.784231, 0.221070, 0.579750,
		40.832695, 38.615555, 17.243753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152946, 39.163589, 17.022854>,  <40.283733, 38.460804, 16.837929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152946, 39.163589, 17.022854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.540817, 39.066708, 17.035904>,  <40.773540, 39.008579, 17.043734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.540817, 39.066708, 17.035904>,  <40.152946, 39.163589, 17.022854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540817, 39.066708, 17.035904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221009, 0.812074, -0.540084,
		0.104314, 0.530918, 0.840978,
		0.969677, -0.242202, 0.032627,
		40.831722, 38.994045, 17.045692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410866, 39.822521, 17.134193>,  <40.152946, 39.163589, 17.022854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410866, 39.822521, 17.134193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719425, 39.600517, 17.009670>,  <40.904560, 39.467316, 16.934958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719425, 39.600517, 17.009670>,  <40.410866, 39.822521, 17.134193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719425, 39.600517, 17.009670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211964, 0.685367, -0.696665,
		0.600014, 0.471420, 0.646333,
		0.771398, -0.555009, -0.311306,
		40.950844, 39.434013, 16.916279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913231, 40.336632, 16.968315>,  <40.410866, 39.822521, 17.134193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913231, 40.336632, 16.968315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.027233, 39.998379, 16.787796>,  <41.095634, 39.795425, 16.679485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.027233, 39.998379, 16.787796>,  <40.913231, 40.336632, 16.968315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027233, 39.998379, 16.787796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234489, 0.518029, -0.822594,
		0.929401, 0.128621, 0.345935,
		0.285007, -0.845637, -0.451296,
		41.112736, 39.744686, 16.652407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663315, 40.386009, 16.839689>,  <40.913231, 40.336632, 16.968315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663315, 40.386009, 16.839689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.518459, 40.117100, 16.581417>,  <41.431545, 39.955753, 16.426455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.518459, 40.117100, 16.581417>,  <41.663315, 40.386009, 16.839689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518459, 40.117100, 16.581417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430415, 0.493824, -0.755567,
		0.826801, -0.551530, 0.110525,
		-0.362138, -0.672275, -0.645680,
		41.409817, 39.915417, 16.387712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105640, 40.479485, 16.246738>,  <41.663315, 40.386009, 16.839689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105640, 40.479485, 16.246738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.813919, 40.245140, 16.105377>,  <41.638885, 40.104534, 16.020561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.813919, 40.245140, 16.105377>,  <42.105640, 40.479485, 16.246738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813919, 40.245140, 16.105377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212206, 0.297368, -0.930882,
		0.650455, -0.753886, -0.092548,
		-0.729299, -0.585857, -0.353404,
		41.595131, 40.069382, 15.999356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327419, 40.243706, 15.627310>,  <42.105640, 40.479485, 16.246738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327419, 40.243706, 15.627310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.929066, 40.227287, 15.595003>,  <41.690052, 40.217438, 15.575619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.929066, 40.227287, 15.595003>,  <42.327419, 40.243706, 15.627310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929066, 40.227287, 15.595003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051094, 0.481753, -0.874816,
		0.074815, -0.875346, -0.477675,
		-0.995888, -0.041043, -0.080768,
		41.630299, 40.214973, 15.570773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341713, 40.220894, 14.964628>,  <42.327419, 40.243706, 15.627310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341713, 40.220894, 14.964628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.950760, 40.251720, 15.043407>,  <41.716190, 40.270218, 15.090675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.950760, 40.251720, 15.043407>,  <42.341713, 40.220894, 14.964628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950760, 40.251720, 15.043407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164585, 0.307647, -0.937158,
		-0.132818, -0.948374, -0.288003,
		-0.977380, 0.077071, 0.196949,
		41.657547, 40.274841, 15.102492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031544, 39.911083, 14.355909>,  <42.341713, 40.220894, 14.964628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031544, 39.911083, 14.355909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.786667, 40.167484, 14.541093>,  <41.639740, 40.321323, 14.652203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.786667, 40.167484, 14.541093>,  <42.031544, 39.911083, 14.355909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786667, 40.167484, 14.541093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093342, 0.522819, -0.847317,
		-0.785177, -0.561938, -0.260235,
		-0.612196, 0.641004, 0.462958,
		41.603008, 40.359787, 14.679980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254536, 39.936401, 14.095835>,  <42.031544, 39.911083, 14.355909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254536, 39.936401, 14.095835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.404819, 40.284279, 14.223881>,  <41.494991, 40.493004, 14.300709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.404819, 40.284279, 14.223881>,  <41.254536, 39.936401, 14.095835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404819, 40.284279, 14.223881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183511, 0.408402, -0.894165,
		-0.908385, 0.277206, 0.313040,
		0.375714, 0.869692, 0.320116,
		41.517532, 40.545185, 14.319916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863579, 40.456585, 13.862128>,  <41.254536, 39.936401, 14.095835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863579, 40.456585, 13.862128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.210396, 40.642414, 13.934139>,  <41.418484, 40.753914, 13.977345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.210396, 40.642414, 13.934139>,  <40.863579, 40.456585, 13.862128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210396, 40.642414, 13.934139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051640, 0.443176, -0.894946,
		-0.495554, 0.766658, 0.408242,
		0.867041, 0.464576, 0.180027,
		41.470509, 40.781788, 13.988148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856243, 41.221745, 13.734346>,  <40.863579, 40.456585, 13.862128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856243, 41.221745, 13.734346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.223949, 41.083298, 13.659354>,  <41.444572, 41.000229, 13.614359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.223949, 41.083298, 13.659354>,  <40.856243, 41.221745, 13.734346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223949, 41.083298, 13.659354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018986, 0.436744, -0.899385,
		0.393174, 0.830336, 0.394914,
		0.919268, -0.346117, -0.187481,
		41.499729, 40.979462, 13.603109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190544, 41.585083, 13.564385>,  <40.856243, 41.221745, 13.734346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190544, 41.585083, 13.564385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861435, 41.511574, 13.349250>,  <39.663971, 41.467468, 13.220168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861435, 41.511574, 13.349250>,  <40.190544, 41.585083, 13.564385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861435, 41.511574, 13.349250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491722, -0.244428, 0.835742,
		-0.285050, 0.952094, 0.110743,
		-0.822774, -0.183773, -0.537839,
		39.614601, 41.456440, 13.187898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652485, 41.949417, 13.872770>,  <40.190544, 41.585083, 13.564385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652485, 41.949417, 13.872770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486000, 41.637573, 13.685596>,  <39.386108, 41.450466, 13.573291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486000, 41.637573, 13.685596>,  <39.652485, 41.949417, 13.872770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486000, 41.637573, 13.685596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414878, -0.295108, 0.860690,
		-0.809098, 0.552370, -0.200615,
		-0.416216, -0.779614, -0.467938,
		39.361134, 41.403690, 13.545214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982349, 41.985168, 14.172038>,  <39.652485, 41.949417, 13.872770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982349, 41.985168, 14.172038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027908, 41.612617, 14.033724>,  <39.055244, 41.389088, 13.950735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027908, 41.612617, 14.033724>,  <38.982349, 41.985168, 14.172038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027908, 41.612617, 14.033724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378023, -0.362498, 0.851877,
		-0.918764, 0.033689, -0.393368,
		0.113896, -0.931375, -0.345785,
		39.062077, 41.333206, 13.929988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366920, 41.597084, 14.356796>,  <38.982349, 41.985168, 14.172038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366920, 41.597084, 14.356796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625843, 41.300537, 14.285955>,  <38.781197, 41.122608, 14.243451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625843, 41.300537, 14.285955>,  <38.366920, 41.597084, 14.356796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625843, 41.300537, 14.285955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317644, -0.473579, 0.821477,
		-0.692891, -0.475491, -0.542042,
		0.647305, -0.741371, -0.177102,
		38.820034, 41.078125, 14.232825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006618, 40.884270, 14.336102>,  <38.366920, 41.597084, 14.356796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006618, 40.884270, 14.336102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389027, 40.835896, 14.442979>,  <38.618473, 40.806870, 14.507106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389027, 40.835896, 14.442979>,  <38.006618, 40.884270, 14.336102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389027, 40.835896, 14.442979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291242, -0.498913, 0.816250,
		0.034593, -0.858173, -0.512194,
		0.956024, -0.120936, 0.267194,
		38.675835, 40.799614, 14.523137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976349, 40.222370, 14.526916>,  <38.006618, 40.884270, 14.336102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976349, 40.222370, 14.526916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334454, 40.325668, 14.672140>,  <38.549316, 40.387650, 14.759274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334454, 40.325668, 14.672140>,  <37.976349, 40.222370, 14.526916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334454, 40.325668, 14.672140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124031, -0.638210, 0.759806,
		0.427927, -0.725257, -0.539335,
		0.895263, 0.258247, 0.363061,
		38.603031, 40.403141, 14.781058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309418, 39.578197, 14.656084>,  <37.976349, 40.222370, 14.526916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309418, 39.578197, 14.656084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506165, 39.843937, 14.881192>,  <38.624214, 40.003380, 15.016257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506165, 39.843937, 14.881192>,  <38.309418, 39.578197, 14.656084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506165, 39.843937, 14.881192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013649, -0.652170, 0.757950,
		0.870562, -0.365131, -0.329850,
		0.491869, 0.664345, 0.562771,
		38.653725, 40.043240, 15.050023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881489, 39.234467, 14.863869>,  <38.309418, 39.578197, 14.656084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881489, 39.234467, 14.863869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832867, 39.537632, 15.120238>,  <38.803692, 39.719532, 15.274060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832867, 39.537632, 15.120238>,  <38.881489, 39.234467, 14.863869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832867, 39.537632, 15.120238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029177, -0.642706, 0.765557,
		0.992156, 0.111759, 0.056011,
		-0.121557, 0.757918, 0.640925,
		38.796398, 39.765007, 15.312515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157021, 38.936256, 15.384300>,  <38.881489, 39.234467, 14.863869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157021, 38.936256, 15.384300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928040, 39.223808, 15.542043>,  <38.790649, 39.396339, 15.636688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928040, 39.223808, 15.542043>,  <39.157021, 38.936256, 15.384300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928040, 39.223808, 15.542043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169313, -0.574229, 0.800995,
		0.802267, 0.391762, 0.450433,
		-0.572451, 0.718877, 0.394355,
		38.756306, 39.439472, 15.660349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431347, 39.269405, 16.081476>,  <39.157021, 38.936256, 15.384300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431347, 39.269405, 16.081476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040710, 39.353279, 16.062260>,  <38.806328, 39.403603, 16.050730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040710, 39.353279, 16.062260>,  <39.431347, 39.269405, 16.081476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040710, 39.353279, 16.062260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147200, -0.488534, 0.860039,
		0.156867, 0.846976, 0.507962,
		-0.976589, 0.209683, -0.048040,
		38.747734, 39.416183, 16.047848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375389, 39.419754, 16.759415>,  <39.431347, 39.269405, 16.081476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375389, 39.419754, 16.759415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006287, 39.350651, 16.621620>,  <38.784824, 39.309189, 16.538942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006287, 39.350651, 16.621620>,  <39.375389, 39.419754, 16.759415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006287, 39.350651, 16.621620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182797, -0.590731, 0.785889,
		-0.339265, 0.788158, 0.513524,
		-0.922759, -0.172753, -0.344487,
		38.729458, 39.298824, 16.518274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904842, 39.464809, 17.390923>,  <39.375389, 39.419754, 16.759415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904842, 39.464809, 17.390923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678421, 39.267311, 17.126863>,  <38.542568, 39.148811, 16.968428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678421, 39.267311, 17.126863>,  <38.904842, 39.464809, 17.390923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678421, 39.267311, 17.126863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293757, -0.627413, 0.721152,
		-0.770251, 0.602136, 0.210109,
		-0.566056, -0.493747, -0.660147,
		38.508606, 39.119186, 16.928820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243206, 39.251572, 17.755119>,  <38.904842, 39.464809, 17.390923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243206, 39.251572, 17.755119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258213, 39.012234, 17.434977>,  <38.267216, 38.868629, 17.242891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258213, 39.012234, 17.434977>,  <38.243206, 39.251572, 17.755119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258213, 39.012234, 17.434977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293997, -0.772085, 0.563427,
		-0.955070, 0.214165, -0.204878,
		0.037517, -0.598346, -0.800359,
		38.269466, 38.832729, 17.194868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576599, 38.893372, 17.839161>,  <38.243206, 39.251572, 17.755119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576599, 38.893372, 17.839161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821804, 38.677822, 17.608049>,  <37.968929, 38.548492, 17.469383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821804, 38.677822, 17.608049>,  <37.576599, 38.893372, 17.839161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821804, 38.677822, 17.608049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231519, -0.821717, 0.520750,
		-0.755388, -0.185461, -0.628485,
		0.613015, -0.538874, -0.577778,
		38.005707, 38.516159, 17.434715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127125, 38.284561, 17.686201>,  <37.576599, 38.893372, 17.839161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127125, 38.284561, 17.686201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505806, 38.174915, 17.618540>,  <37.733017, 38.109127, 17.577942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505806, 38.174915, 17.618540>,  <37.127125, 38.284561, 17.686201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505806, 38.174915, 17.618540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179780, -0.885417, 0.428620,
		-0.267261, -0.375366, -0.887509,
		0.946705, -0.274110, -0.169154,
		37.789818, 38.092682, 17.567793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127640, 37.677895, 17.371677>,  <37.127125, 38.284561, 17.686201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127640, 37.677895, 17.371677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.489468, 37.682140, 17.542158>,  <37.706562, 37.684689, 17.644447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.489468, 37.682140, 17.542158>,  <37.127640, 37.677895, 17.371677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489468, 37.682140, 17.542158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187529, -0.887884, 0.420113,
		0.382876, -0.459945, -0.801160,
		0.904566, 0.010611, 0.426202,
		37.760838, 37.685322, 17.670019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534760, 37.001545, 17.113359>,  <37.127640, 37.677895, 17.371677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534760, 37.001545, 17.113359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727791, 37.123795, 17.441681>,  <37.843609, 37.197144, 17.638674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727791, 37.123795, 17.441681>,  <37.534760, 37.001545, 17.113359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727791, 37.123795, 17.441681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049112, -0.926227, 0.373752,
		0.874477, -0.220674, -0.431964,
		0.482574, 0.305623, 0.820802,
		37.872562, 37.215481, 17.687922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174725, 36.582115, 17.213507>,  <37.534760, 37.001545, 17.113359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174725, 36.582115, 17.213507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.077358, 36.724106, 17.574558>,  <38.018940, 36.809299, 17.791189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.077358, 36.724106, 17.574558>,  <38.174725, 36.582115, 17.213507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077358, 36.724106, 17.574558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114740, -0.913549, 0.390209,
		0.963111, 0.198551, 0.181642,
		-0.243416, 0.354973, 0.902631,
		38.004333, 36.830597, 17.845348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676575, 36.204178, 17.758266>,  <38.174725, 36.582115, 17.213507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676575, 36.204178, 17.758266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413105, 36.378941, 18.003300>,  <38.255024, 36.483799, 18.150320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413105, 36.378941, 18.003300>,  <38.676575, 36.204178, 17.758266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413105, 36.378941, 18.003300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082147, -0.851035, 0.518644,
		0.747927, 0.291298, 0.596449,
		-0.658678, 0.436904, 0.612583,
		38.215500, 36.510014, 18.187075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972019, 36.206944, 18.299540>,  <38.676575, 36.204178, 17.758266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972019, 36.206944, 18.299540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576912, 36.219807, 18.360573>,  <38.339848, 36.227524, 18.397194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576912, 36.219807, 18.360573>,  <38.972019, 36.206944, 18.299540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576912, 36.219807, 18.360573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075597, -0.757083, 0.648930,
		0.136385, 0.652527, 0.745391,
		-0.987767, 0.032155, 0.152584,
		38.280582, 36.229454, 18.406347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.385056, 35.230713, 24.122726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997902, 35.286758, 24.039240>,  <39.765610, 35.320385, 23.989149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997902, 35.286758, 24.039240>,  <40.385056, 35.230713, 24.122726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997902, 35.286758, 24.039240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223963, -0.103559, 0.969080,
		0.114165, 0.984705, 0.131613,
		-0.967888, 0.140112, -0.208715,
		39.707535, 35.328793, 23.976625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118279, 35.751842, 24.601540>,  <40.385056, 35.230713, 24.122726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118279, 35.751842, 24.601540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801559, 35.532635, 24.493670>,  <39.611526, 35.401108, 24.428947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801559, 35.532635, 24.493670>,  <40.118279, 35.751842, 24.601540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801559, 35.532635, 24.493670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247386, -0.115939, 0.961955,
		-0.558440, 0.828389, -0.043773,
		-0.791798, -0.548024, -0.269677,
		39.564018, 35.368229, 24.412766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552631, 36.031742, 25.057653>,  <40.118279, 35.751842, 24.601540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552631, 36.031742, 25.057653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415535, 35.686230, 24.909916>,  <39.333279, 35.478924, 24.821274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415535, 35.686230, 24.909916>,  <39.552631, 36.031742, 25.057653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415535, 35.686230, 24.909916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562393, -0.126260, 0.817173,
		-0.752490, 0.487795, -0.442509,
		-0.342742, -0.863779, -0.369343,
		39.312714, 35.427097, 24.799112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841957, 35.987907, 25.316189>,  <39.552631, 36.031742, 25.057653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841957, 35.987907, 25.316189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959785, 35.614857, 25.232824>,  <39.030483, 35.391026, 25.182806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959785, 35.614857, 25.232824>,  <38.841957, 35.987907, 25.316189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959785, 35.614857, 25.232824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397282, -0.317862, 0.860889,
		-0.869136, -0.170791, -0.464148,
		0.294568, -0.932627, -0.208413,
		39.048157, 35.335068, 25.170300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340412, 35.574692, 25.469425>,  <38.841957, 35.987907, 25.316189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340412, 35.574692, 25.469425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.612297, 35.281403, 25.477156>,  <38.775429, 35.105427, 25.481794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.612297, 35.281403, 25.477156>,  <38.340412, 35.574692, 25.469425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612297, 35.281403, 25.477156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344206, -0.295594, 0.891149,
		-0.647700, -0.612376, -0.453299,
		0.679711, -0.733226, 0.019327,
		38.816212, 35.061436, 25.482954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013962, 34.946808, 25.548973>,  <38.340412, 35.574692, 25.469425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013962, 34.946808, 25.548973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388653, 34.850788, 25.650890>,  <38.613468, 34.793179, 25.712040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388653, 34.850788, 25.650890>,  <38.013962, 34.946808, 25.548973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388653, 34.850788, 25.650890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329933, -0.362165, 0.871769,
		-0.116987, -0.900674, -0.418449,
		0.936727, -0.240046, 0.254793,
		38.669670, 34.778774, 25.727327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920589, 34.158527, 25.729321>,  <38.013962, 34.946808, 25.548973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920589, 34.158527, 25.729321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.236412, 34.338100, 25.896685>,  <38.425903, 34.445843, 25.997103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.236412, 34.338100, 25.896685>,  <37.920589, 34.158527, 25.729321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236412, 34.338100, 25.896685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280530, -0.342371, 0.896708,
		0.545810, -0.825376, -0.144382,
		0.789553, 0.448929, 0.418412,
		38.473278, 34.472778, 26.022209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214684, 33.679089, 26.106668>,  <37.920589, 34.158527, 25.729321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214684, 33.679089, 26.106668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355469, 34.012539, 26.276930>,  <38.439941, 34.212608, 26.379087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355469, 34.012539, 26.276930>,  <38.214684, 33.679089, 26.106668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355469, 34.012539, 26.276930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186703, -0.383089, 0.904646,
		0.917203, -0.397877, 0.020806,
		0.351968, 0.833628, 0.425655,
		38.461060, 34.262627, 26.404627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607403, 33.443878, 26.694777>,  <38.214684, 33.679089, 26.106668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607403, 33.443878, 26.694777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.490082, 33.821362, 26.755943>,  <38.419689, 34.047852, 26.792643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.490082, 33.821362, 26.755943>,  <38.607403, 33.443878, 26.694777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490082, 33.821362, 26.755943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323062, -0.248380, 0.913202,
		0.899779, 0.218447, 0.377729,
		-0.293306, 0.943710, 0.152916,
		38.402088, 34.104473, 26.801819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796848, 33.557899, 27.334011>,  <38.607403, 33.443878, 26.694777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796848, 33.557899, 27.334011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.537350, 33.851971, 27.255384>,  <38.381653, 34.028416, 27.208208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.537350, 33.851971, 27.255384>,  <38.796848, 33.557899, 27.334011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537350, 33.851971, 27.255384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487648, -0.203305, 0.849039,
		0.584235, 0.646664, 0.490403,
		-0.648744, 0.735182, -0.196566,
		38.342728, 34.072525, 27.196415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579796, 33.739403, 28.035122>,  <38.796848, 33.557899, 27.334011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579796, 33.739403, 28.035122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.321503, 33.919140, 27.788181>,  <38.166527, 34.026981, 27.640017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.321503, 33.919140, 27.788181>,  <38.579796, 33.739403, 28.035122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321503, 33.919140, 27.788181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698528, -0.021118, 0.715271,
		0.308363, 0.893111, 0.327514,
		-0.645732, 0.449341, -0.617351,
		38.127785, 34.053944, 27.602976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300274, 34.340504, 28.386015>,  <38.579796, 33.739403, 28.035122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300274, 34.340504, 28.386015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.046154, 34.195854, 28.113068>,  <37.893681, 34.109066, 27.949299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.046154, 34.195854, 28.113068>,  <38.300274, 34.340504, 28.386015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046154, 34.195854, 28.113068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705644, -0.087199, 0.703181,
		-0.313785, 0.928239, -0.199777,
		-0.635300, -0.361619, -0.682368,
		37.855564, 34.087368, 27.908358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586140, 34.737827, 28.399611>,  <38.300274, 34.340504, 28.386015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586140, 34.737827, 28.399611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.610020, 34.348030, 28.313086>,  <37.624348, 34.114151, 28.261169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.610020, 34.348030, 28.313086>,  <37.586140, 34.737827, 28.399611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610020, 34.348030, 28.313086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650715, -0.202320, 0.731872,
		-0.756972, 0.097068, -0.646198,
		0.059698, -0.974497, -0.216314,
		37.627930, 34.055679, 28.248192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010044, 34.256367, 28.368000>,  <37.586140, 34.737827, 28.399611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010044, 34.256367, 28.368000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.837822, 34.509792, 28.625128>,  <36.734489, 34.661850, 28.779406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.837822, 34.509792, 28.625128>,  <37.010044, 34.256367, 28.368000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837822, 34.509792, 28.625128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507186, 0.419296, -0.752963,
		-0.746585, -0.650219, 0.140807,
		-0.430551, 0.633566, 0.642822,
		36.708656, 34.699863, 28.817974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421303, 34.233658, 28.099016>,  <37.010044, 34.256367, 28.368000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421303, 34.233658, 28.099016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.516743, 34.561615, 28.307188>,  <36.574009, 34.758389, 28.432091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.516743, 34.561615, 28.307188>,  <36.421303, 34.233658, 28.099016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516743, 34.561615, 28.307188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444017, 0.568719, -0.692393,
		-0.863665, -0.065874, 0.499743,
		0.238603, 0.819890, 0.520432,
		36.588322, 34.807583, 28.463318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899048, 34.663414, 27.922422>,  <36.421303, 34.233658, 28.099016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899048, 34.663414, 27.922422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151291, 34.919411, 28.098036>,  <36.302635, 35.073009, 28.203403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151291, 34.919411, 28.098036>,  <35.899048, 34.663414, 27.922422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151291, 34.919411, 28.098036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348714, 0.739020, -0.576410,
		-0.693351, 0.210390, 0.689203,
		0.630605, 0.639989, 0.439034,
		36.340473, 35.111408, 28.229746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555195, 35.104233, 28.242964>,  <35.899048, 34.663414, 27.922422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555195, 35.104233, 28.242964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.899590, 35.281097, 28.142406>,  <36.106224, 35.387218, 28.082071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.899590, 35.281097, 28.142406>,  <35.555195, 35.104233, 28.242964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899590, 35.281097, 28.142406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505359, 0.687643, -0.521305,
		-0.057633, 0.575879, 0.815501,
		0.860983, 0.442165, -0.251395,
		36.157883, 35.413746, 28.066988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436237, 35.829071, 28.386782>,  <35.555195, 35.104233, 28.242964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436237, 35.829071, 28.386782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.763893, 35.824825, 28.157381>,  <35.960487, 35.822277, 28.019741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.763893, 35.824825, 28.157381>,  <35.436237, 35.829071, 28.386782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763893, 35.824825, 28.157381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323515, 0.817076, -0.477204,
		0.473661, 0.576432, 0.665862,
		0.819136, -0.010616, -0.573502,
		36.009632, 35.821640, 27.985331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795887, 36.494091, 28.451616>,  <35.436237, 35.829071, 28.386782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795887, 36.494091, 28.451616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.893459, 36.337372, 28.096766>,  <35.952003, 36.243340, 27.883856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.893459, 36.337372, 28.096766>,  <35.795887, 36.494091, 28.451616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893459, 36.337372, 28.096766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183776, 0.879508, -0.438968,
		0.952221, 0.270109, 0.142534,
		0.243929, -0.391800, -0.887125,
		35.966637, 36.219833, 27.830627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189110, 36.998508, 28.224628>,  <35.795887, 36.494091, 28.451616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189110, 36.998508, 28.224628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109280, 36.780174, 27.899118>,  <36.061382, 36.649174, 27.703812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109280, 36.780174, 27.899118>,  <36.189110, 36.998508, 28.224628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109280, 36.780174, 27.899118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007752, 0.829579, -0.558336,
		0.979852, -0.117738, -0.161331,
		-0.199574, -0.545836, -0.813777,
		36.049408, 36.616425, 27.654985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561489, 37.286404, 27.670380>,  <36.189110, 36.998508, 28.224628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561489, 37.286404, 27.670380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283852, 37.077240, 27.472469>,  <36.117268, 36.951744, 27.353724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283852, 37.077240, 27.472469>,  <36.561489, 37.286404, 27.670380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283852, 37.077240, 27.472469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046431, 0.718386, -0.694093,
		0.718386, -0.458792, -0.522906,
		0.694093, 0.522906, 0.494776,
		36.075623, 36.920368, 27.324036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789848, 37.168964, 26.988499>,  <36.561489, 37.286404, 27.670380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789848, 37.168964, 26.988499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393276, 37.118431, 26.975185>,  <36.155334, 37.088112, 26.967197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393276, 37.118431, 26.975185>,  <36.789848, 37.168964, 26.988499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393276, 37.118431, 26.975185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057861, 0.653020, -0.755127,
		0.117130, -0.746730, -0.654733,
		-0.991430, -0.126332, -0.033282,
		36.095848, 37.080532, 26.965200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636929, 37.103699, 26.269131>,  <36.789848, 37.168964, 26.988499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636929, 37.103699, 26.269131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.290771, 37.223579, 26.429766>,  <36.083076, 37.295509, 26.526148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.290771, 37.223579, 26.429766>,  <36.636929, 37.103699, 26.269131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290771, 37.223579, 26.429766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062227, 0.730942, -0.679596,
		-0.497217, -0.613107, -0.613902,
		-0.865392, 0.299705, 0.401589,
		36.031155, 37.313492, 26.550241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258396, 37.165569, 25.651173>,  <36.636929, 37.103699, 26.269131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258396, 37.165569, 25.651173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.069756, 37.357128, 25.947348>,  <35.956570, 37.472065, 26.125053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.069756, 37.357128, 25.947348>,  <36.258396, 37.165569, 25.651173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069756, 37.357128, 25.947348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186403, 0.766564, -0.614519,
		-0.861883, -0.427830, -0.272248,
		-0.471605, 0.478896, 0.740437,
		35.928272, 37.500797, 26.169479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705223, 37.412434, 25.414215>,  <36.258396, 37.165569, 25.651173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705223, 37.412434, 25.414215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.762161, 37.651299, 25.729969>,  <35.796326, 37.794617, 25.919422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.762161, 37.651299, 25.729969>,  <35.705223, 37.412434, 25.414215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762161, 37.651299, 25.729969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018295, 0.798959, -0.601107,
		-0.989648, 0.071123, 0.124654,
		0.142345, 0.597165, 0.789387,
		35.804863, 37.830448, 25.966785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390129, 37.866470, 25.225880>,  <35.705223, 37.412434, 25.414215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390129, 37.866470, 25.225880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.613937, 38.037468, 25.509905>,  <35.748222, 38.140064, 25.680321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.613937, 38.037468, 25.509905>,  <35.390129, 37.866470, 25.225880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613937, 38.037468, 25.509905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161261, 0.784194, -0.599195,
		-0.812978, 0.449766, 0.369834,
		0.559519, 0.427492, 0.710063,
		35.781792, 38.165714, 25.722923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170895, 38.587620, 25.337402>,  <35.390129, 37.866470, 25.225880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170895, 38.587620, 25.337402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.550083, 38.580788, 25.464565>,  <35.777596, 38.576687, 25.540863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.550083, 38.580788, 25.464565>,  <35.170895, 38.587620, 25.337402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550083, 38.580788, 25.464565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245208, 0.676044, -0.694865,
		-0.203051, 0.736663, 0.645056,
		0.947968, -0.017080, 0.317907,
		35.834473, 38.575665, 25.559937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395309, 39.245892, 25.148424>,  <35.170895, 38.587620, 25.337402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395309, 39.245892, 25.148424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.733120, 39.039410, 25.205423>,  <35.935806, 38.915520, 25.239624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.733120, 39.039410, 25.205423>,  <35.395309, 39.245892, 25.148424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733120, 39.039410, 25.205423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467327, 0.580491, -0.666810,
		0.261489, 0.629734, 0.731477,
		0.844529, -0.516203, 0.142499,
		35.986477, 38.884548, 25.248173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948788, 39.885338, 25.457151>,  <35.395309, 39.245892, 25.148424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948788, 39.885338, 25.457151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.674953, 39.994793, 25.186905>,  <34.510651, 40.060467, 25.024757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.674953, 39.994793, 25.186905>,  <34.948788, 39.885338, 25.457151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674953, 39.994793, 25.186905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681587, -0.568885, 0.460228,
		-0.258410, 0.775558, 0.575964,
		-0.684590, 0.273642, -0.675616,
		34.469578, 40.076885, 24.984221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349972, 40.032135, 25.863985>,  <34.948788, 39.885338, 25.457151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349972, 40.032135, 25.863985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.257053, 39.931595, 25.488142>,  <34.201302, 39.871273, 25.262636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.257053, 39.931595, 25.488142>,  <34.349972, 40.032135, 25.863985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257053, 39.931595, 25.488142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603710, -0.720166, 0.341901,
		-0.762608, 0.646673, 0.015554,
		-0.232300, -0.251346, -0.939607,
		34.187363, 39.856190, 25.206261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587688, 39.920250, 25.910538>,  <34.349972, 40.032135, 25.863985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587688, 39.920250, 25.910538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.705681, 39.731861, 25.577990>,  <33.776474, 39.618828, 25.378460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.705681, 39.731861, 25.577990>,  <33.587688, 39.920250, 25.910538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705681, 39.731861, 25.577990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604110, -0.766042, 0.219617,
		-0.740297, 0.437456, -0.510483,
		0.294978, -0.470970, -0.831369,
		33.794174, 39.590569, 25.328579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060997, 39.638741, 25.616152>,  <33.587688, 39.920250, 25.910538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060997, 39.638741, 25.616152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.352352, 39.405228, 25.472679>,  <33.527164, 39.265121, 25.386595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.352352, 39.405228, 25.472679>,  <33.060997, 39.638741, 25.616152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352352, 39.405228, 25.472679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575287, -0.805419, 0.142634,
		-0.372158, 0.102453, -0.922498,
		0.728384, -0.583783, -0.358683,
		33.570866, 39.230091, 25.365074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741070, 39.117565, 25.216219>,  <33.060997, 39.638741, 25.616152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741070, 39.117565, 25.216219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.102757, 38.977509, 25.314034>,  <33.319767, 38.893475, 25.372723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.102757, 38.977509, 25.314034>,  <32.741070, 39.117565, 25.216219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102757, 38.977509, 25.314034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403263, -0.888511, 0.218923,
		0.140622, -0.296567, -0.944602,
		0.904215, -0.350137, 0.244539,
		33.374020, 38.872467, 25.387396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686775, 38.425541, 25.087029>,  <32.741070, 39.117565, 25.216219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686775, 38.425541, 25.087029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.032574, 38.429260, 25.288054>,  <33.240051, 38.431492, 25.408669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.032574, 38.429260, 25.288054>,  <32.686775, 38.425541, 25.087029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032574, 38.429260, 25.288054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300979, -0.791196, 0.532373,
		0.402573, -0.611492, -0.681184,
		0.864492, 0.009297, 0.502561,
		33.291920, 38.432049, 25.438822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031708, 37.690674, 25.004068>,  <32.686775, 38.425541, 25.087029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031708, 37.690674, 25.004068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.185375, 37.864574, 25.329868>,  <33.277576, 37.968914, 25.525349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.185375, 37.864574, 25.329868>,  <33.031708, 37.690674, 25.004068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185375, 37.864574, 25.329868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094473, -0.859055, 0.503090,
		0.918417, -0.270219, -0.288949,
		0.384168, 0.434749, 0.814499,
		33.300625, 37.994999, 25.574219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345364, 37.197647, 25.317354>,  <33.031708, 37.690674, 25.004068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345364, 37.197647, 25.317354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.297195, 37.449558, 25.624308>,  <33.268295, 37.600704, 25.808479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.297195, 37.449558, 25.624308>,  <33.345364, 37.197647, 25.317354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297195, 37.449558, 25.624308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120411, -0.776569, 0.618419,
		0.985394, -0.017932, 0.169346,
		-0.120420, 0.629777, 0.767385,
		33.261070, 37.638493, 25.854523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681213, 36.930336, 25.868170>,  <33.345364, 37.197647, 25.317354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681213, 36.930336, 25.868170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.449528, 37.187538, 26.068592>,  <33.310516, 37.341858, 26.188845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.449528, 37.187538, 26.068592>,  <33.681213, 36.930336, 25.868170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449528, 37.187538, 26.068592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222306, -0.715956, 0.661806,
		0.784278, 0.271939, 0.557635,
		-0.579213, 0.643005, 0.501056,
		33.275764, 37.380440, 26.218908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869442, 36.886070, 26.584793>,  <33.681213, 36.930336, 25.868170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869442, 36.886070, 26.584793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.496368, 37.030342, 26.586027>,  <33.272526, 37.116905, 26.586767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.496368, 37.030342, 26.586027>,  <33.869442, 36.886070, 26.584793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496368, 37.030342, 26.586027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277272, -0.722424, 0.633423,
		0.230693, 0.589928, 0.773799,
		-0.932685, 0.360679, 0.003087,
		33.216564, 37.138546, 26.586954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473904, 36.650143, 27.319252>,  <33.869442, 36.886070, 26.584793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473904, 36.650143, 27.319252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.338444, 36.743904, 27.683752>,  <33.257168, 36.800159, 27.902452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.338444, 36.743904, 27.683752>,  <33.473904, 36.650143, 27.319252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338444, 36.743904, 27.683752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157287, -0.968948, 0.190790,
		0.927674, -0.078718, 0.364998,
		-0.338646, 0.234401, 0.911249,
		33.236851, 36.814224, 27.957127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950161, 36.246952, 27.764509>,  <33.473904, 36.650143, 27.319252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950161, 36.246952, 27.764509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.565102, 36.303654, 27.856773>,  <33.334064, 36.337677, 27.912132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.565102, 36.303654, 27.856773>,  <33.950161, 36.246952, 27.764509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565102, 36.303654, 27.856773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079866, -0.962741, 0.258361,
		0.258691, 0.230290, 0.938107,
		-0.962653, 0.141759, 0.230661,
		33.276306, 36.346180, 27.925972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.116562, 43.224377, 23.190184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915726, 42.992329, 22.933634>,  <35.795223, 42.853100, 22.779705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915726, 42.992329, 22.933634>,  <36.116562, 43.224377, 23.190184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915726, 42.992329, 22.933634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518453, -0.391670, 0.760132,
		-0.692176, 0.714180, -0.104111,
		-0.502094, -0.580122, -0.641374,
		35.765099, 42.818291, 22.741222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368313, 43.168217, 23.466389>,  <36.116562, 43.224377, 23.190184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368313, 43.168217, 23.466389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447594, 42.851429, 23.235392>,  <35.495163, 42.661354, 23.096794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447594, 42.851429, 23.235392>,  <35.368313, 43.168217, 23.466389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447594, 42.851429, 23.235392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418322, -0.601176, 0.680878,
		-0.886410, 0.106625, -0.450453,
		0.198203, -0.791971, -0.577492,
		35.507053, 42.613838, 23.062143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726768, 42.807526, 23.600885>,  <35.368313, 43.168217, 23.466389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726768, 42.807526, 23.600885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985382, 42.545868, 23.443865>,  <35.140549, 42.388874, 23.349651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985382, 42.545868, 23.443865>,  <34.726768, 42.807526, 23.600885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985382, 42.545868, 23.443865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318085, -0.698843, 0.640656,
		-0.693401, -0.289349, -0.659903,
		0.646542, -0.654137, -0.392541,
		35.179340, 42.349625, 23.326099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317833, 42.149269, 23.363291>,  <34.726768, 42.807526, 23.600885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317833, 42.149269, 23.363291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696510, 42.029919, 23.411848>,  <34.923717, 41.958309, 23.440983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696510, 42.029919, 23.411848>,  <34.317833, 42.149269, 23.363291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696510, 42.029919, 23.411848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317382, -0.799539, 0.509908,
		-0.055085, -0.521256, -0.851620,
		0.946696, -0.298378, 0.121395,
		34.980518, 41.940407, 23.448267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301289, 41.461857, 23.175444>,  <34.317833, 42.149269, 23.363291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301289, 41.461857, 23.175444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633411, 41.514492, 23.392065>,  <34.832684, 41.546074, 23.522038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633411, 41.514492, 23.392065>,  <34.301289, 41.461857, 23.175444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633411, 41.514492, 23.392065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265697, -0.760727, 0.592200,
		0.489900, -0.635595, -0.596672,
		0.830303, 0.131585, 0.541556,
		34.882504, 41.553967, 23.554531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646866, 40.711910, 23.331291>,  <34.301289, 41.461857, 23.175444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646866, 40.711910, 23.331291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841461, 40.936333, 23.599184>,  <34.958218, 41.070988, 23.759920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841461, 40.936333, 23.599184>,  <34.646866, 40.711910, 23.331291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841461, 40.936333, 23.599184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043710, -0.749968, 0.660028,
		0.872591, -0.350373, -0.340330,
		0.486493, 0.561058, 0.669730,
		34.987408, 41.104649, 23.800102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161587, 40.277431, 23.553236>,  <34.646866, 40.711910, 23.331291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161587, 40.277431, 23.553236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089962, 40.570850, 23.815487>,  <35.046986, 40.746902, 23.972837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089962, 40.570850, 23.815487>,  <35.161587, 40.277431, 23.553236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089962, 40.570850, 23.815487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177708, -0.679549, 0.711781,
		0.967655, 0.010943, 0.252038,
		-0.179062, 0.733548, 0.655625,
		35.036243, 40.790916, 24.012175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357601, 39.991802, 24.144072>,  <35.161587, 40.277431, 23.553236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357601, 39.991802, 24.144072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110577, 40.280098, 24.270029>,  <34.962360, 40.453075, 24.345604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110577, 40.280098, 24.270029>,  <35.357601, 39.991802, 24.144072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110577, 40.280098, 24.270029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384016, -0.625700, 0.678993,
		0.686404, 0.298395, 0.663182,
		-0.617561, 0.720736, 0.314894,
		34.925308, 40.496319, 24.364498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325371, 39.883057, 24.840134>,  <35.357601, 39.991802, 24.144072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325371, 39.883057, 24.840134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010033, 40.105267, 24.734381>,  <34.820827, 40.238594, 24.670929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010033, 40.105267, 24.734381>,  <35.325371, 39.883057, 24.840134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010033, 40.105267, 24.734381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598697, -0.593774, 0.537582,
		0.141657, 0.582086, 0.800693,
		-0.788350, 0.555524, -0.264381,
		34.773529, 40.271923, 24.655066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018826, 39.753426, 25.084553>,  <35.325371, 39.883057, 24.840134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018826, 39.753426, 25.084553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172577, 39.386852, 25.040014>,  <36.264828, 39.166908, 25.013290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172577, 39.386852, 25.040014>,  <36.018826, 39.753426, 25.084553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172577, 39.386852, 25.040014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641476, 0.351874, -0.681684,
		0.663901, 0.190595, 0.723124,
		0.384374, -0.916438, -0.111348,
		36.287888, 39.111919, 25.006609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787365, 39.737484, 25.180449>,  <36.018826, 39.753426, 25.084553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787365, 39.737484, 25.180449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690437, 39.419209, 24.958397>,  <36.632282, 39.228245, 24.825167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690437, 39.419209, 24.958397>,  <36.787365, 39.737484, 25.180449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690437, 39.419209, 24.958397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518231, 0.377562, -0.767387,
		0.820194, -0.473636, 0.320859,
		-0.242318, -0.795686, -0.555128,
		36.617741, 39.180504, 24.791859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313961, 39.797836, 24.677063>,  <36.787365, 39.737484, 25.180449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313961, 39.797836, 24.677063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075726, 39.517899, 24.519335>,  <36.932785, 39.349934, 24.424698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075726, 39.517899, 24.519335>,  <37.313961, 39.797836, 24.677063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075726, 39.517899, 24.519335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243983, 0.310091, -0.918867,
		0.765344, -0.643471, -0.013935,
		-0.595585, -0.699849, -0.394322,
		36.897049, 39.307945, 24.401037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757839, 39.358891, 24.343527>,  <37.313961, 39.797836, 24.677063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757839, 39.358891, 24.343527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407860, 39.342014, 24.150579>,  <37.197872, 39.331886, 24.034811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407860, 39.342014, 24.150579>,  <37.757839, 39.358891, 24.343527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407860, 39.342014, 24.150579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460267, 0.236919, -0.855584,
		0.150385, -0.970612, -0.187871,
		-0.874951, -0.042196, -0.482370,
		37.145374, 39.329357, 24.005869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958920, 38.997208, 23.748211>,  <37.757839, 39.358891, 24.343527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958920, 38.997208, 23.748211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625999, 39.196148, 23.650293>,  <37.426247, 39.315510, 23.591543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625999, 39.196148, 23.650293>,  <37.958920, 38.997208, 23.748211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625999, 39.196148, 23.650293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393160, 0.218320, -0.893175,
		-0.390776, -0.839631, -0.377244,
		-0.832298, 0.497349, -0.244795,
		37.376308, 39.345352, 23.576855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849934, 38.928024, 23.006659>,  <37.958920, 38.997208, 23.748211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849934, 38.928024, 23.006659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565781, 39.206192, 23.050013>,  <37.395287, 39.373093, 23.076025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565781, 39.206192, 23.050013>,  <37.849934, 38.928024, 23.006659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565781, 39.206192, 23.050013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288451, 0.428145, -0.856439,
		-0.641986, -0.577139, -0.504742,
		-0.710387, 0.695415, 0.108387,
		37.352665, 39.414818, 23.082529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517998, 38.957947, 22.349754>,  <37.849934, 38.928024, 23.006659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517998, 38.957947, 22.349754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425594, 39.296429, 22.541828>,  <37.370152, 39.499516, 22.657072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425594, 39.296429, 22.541828>,  <37.517998, 38.957947, 22.349754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425594, 39.296429, 22.541828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353766, 0.532807, -0.768743,
		-0.906358, -0.007710, -0.422439,
		-0.231006, 0.846201, 0.480187,
		37.356293, 39.550289, 22.685884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185493, 39.434662, 21.914730>,  <37.517998, 38.957947, 22.349754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185493, 39.434662, 21.914730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344402, 39.674286, 22.192810>,  <37.439747, 39.818058, 22.359657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344402, 39.674286, 22.192810>,  <37.185493, 39.434662, 21.914730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344402, 39.674286, 22.192810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326019, 0.616000, -0.717116,
		-0.857836, 0.511542, 0.049418,
		0.397276, 0.599057, 0.695199,
		37.463585, 39.854004, 22.401369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058586, 40.046356, 21.643423>,  <37.185493, 39.434662, 21.914730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058586, 40.046356, 21.643423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345154, 40.106697, 21.915890>,  <37.517094, 40.142902, 22.079369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345154, 40.106697, 21.915890>,  <37.058586, 40.046356, 21.643423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345154, 40.106697, 21.915890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577303, 0.420039, -0.700206,
		-0.391746, 0.894880, 0.213835,
		0.716419, 0.150855, 0.681165,
		37.560081, 40.151955, 22.120239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421528, 40.740833, 21.552645>,  <37.058586, 40.046356, 21.643423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421528, 40.740833, 21.552645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692974, 40.534534, 21.761826>,  <37.855843, 40.410755, 21.887335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692974, 40.534534, 21.761826>,  <37.421528, 40.740833, 21.552645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692974, 40.534534, 21.761826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667889, 0.137050, -0.731534,
		0.305618, 0.845706, 0.437469,
		0.678618, -0.515751, 0.522952,
		37.896561, 40.379810, 21.918711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001293, 41.182217, 21.556204>,  <37.421528, 40.740833, 21.552645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001293, 41.182217, 21.556204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166893, 40.834175, 21.663179>,  <38.266254, 40.625351, 21.727365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166893, 40.834175, 21.663179>,  <38.001293, 41.182217, 21.556204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166893, 40.834175, 21.663179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767445, 0.175640, -0.616586,
		0.489520, 0.460514, 0.740471,
		0.414003, -0.870102, 0.267440,
		38.291096, 40.573143, 21.743412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701115, 41.363068, 21.660624>,  <38.001293, 41.182217, 21.556204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701115, 41.363068, 21.660624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707554, 40.964748, 21.624573>,  <38.711418, 40.725758, 21.602942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707554, 40.964748, 21.624573>,  <38.701115, 41.363068, 21.660624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707554, 40.964748, 21.624573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739238, 0.072547, -0.669525,
		0.673252, -0.055848, 0.737301,
		0.016097, -0.995800, -0.090127,
		38.712383, 40.666008, 21.597534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373955, 41.168400, 21.728205>,  <38.701115, 41.363068, 21.660624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373955, 41.168400, 21.728205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193516, 40.876820, 21.522238>,  <39.085255, 40.701870, 21.398659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193516, 40.876820, 21.522238>,  <39.373955, 41.168400, 21.728205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193516, 40.876820, 21.522238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817544, -0.106103, -0.566007,
		0.357958, -0.676290, 0.643815,
		-0.451095, -0.728954, -0.514916,
		39.058186, 40.658134, 21.367764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876472, 40.564137, 21.591822>,  <39.373955, 41.168400, 21.728205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876472, 40.564137, 21.591822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581982, 40.536808, 21.322512>,  <39.405289, 40.520412, 21.160925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581982, 40.536808, 21.322512>,  <39.876472, 40.564137, 21.591822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581982, 40.536808, 21.322512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676150, -0.115569, -0.727643,
		-0.028096, -0.990947, 0.131281,
		-0.736228, -0.068322, -0.673276,
		39.361115, 40.516312, 21.120529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.238739, 38.010201, 17.120453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.373520, 38.285633, 17.377300>,  <35.454388, 38.450893, 17.531408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.373520, 38.285633, 17.377300>,  <35.238739, 38.010201, 17.120453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373520, 38.285633, 17.377300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135917, -0.639285, 0.756862,
		0.931658, -0.342304, -0.121821,
		0.336956, 0.688580, 0.642121,
		35.474606, 38.492207, 17.569937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629234, 37.594200, 17.587814>,  <35.238739, 38.010201, 17.120453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629234, 37.594200, 17.587814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582996, 37.942585, 17.778835>,  <35.555252, 38.151615, 17.893448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582996, 37.942585, 17.778835>,  <35.629234, 37.594200, 17.587814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582996, 37.942585, 17.778835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044700, -0.475726, 0.878457,
		0.992290, 0.122892, 0.016060,
		-0.115596, 0.870966, 0.477551,
		35.548317, 38.203876, 17.922100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085415, 37.625637, 18.049171>,  <35.629234, 37.594200, 17.587814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085415, 37.625637, 18.049171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829079, 37.900105, 18.186869>,  <35.675278, 38.064785, 18.269487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829079, 37.900105, 18.186869>,  <36.085415, 37.625637, 18.049171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829079, 37.900105, 18.186869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078651, -0.504750, 0.859675,
		0.763636, 0.523838, 0.377431,
		-0.640839, 0.686164, 0.344244,
		35.636826, 38.105953, 18.290142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403400, 37.966908, 18.708784>,  <36.085415, 37.625637, 18.049171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403400, 37.966908, 18.708784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.004368, 37.993614, 18.716459>,  <35.764946, 38.009640, 18.721064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.004368, 37.993614, 18.716459>,  <36.403400, 37.966908, 18.708784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004368, 37.993614, 18.716459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001584, -0.297973, 0.954573,
		0.069452, 0.952236, 0.297359,
		-0.997584, 0.066768, 0.019187,
		35.705093, 38.013645, 18.722216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274364, 38.017052, 19.385714>,  <36.403400, 37.966908, 18.708784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274364, 38.017052, 19.385714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914978, 37.926891, 19.235008>,  <35.699345, 37.872795, 19.144585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914978, 37.926891, 19.235008>,  <36.274364, 38.017052, 19.385714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914978, 37.926891, 19.235008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191267, -0.571486, 0.798010,
		-0.395186, 0.789049, 0.470350,
		-0.898468, -0.225400, -0.376762,
		35.645439, 37.859272, 19.121979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808086, 38.243855, 19.926693>,  <36.274364, 38.017052, 19.385714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808086, 38.243855, 19.926693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.585640, 37.999012, 19.701817>,  <35.452171, 37.852108, 19.566891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.585640, 37.999012, 19.701817>,  <35.808086, 38.243855, 19.926693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585640, 37.999012, 19.701817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277325, -0.500997, 0.819813,
		-0.783468, 0.611823, 0.108861,
		-0.556119, -0.612107, -0.562189,
		35.418804, 37.815380, 19.533159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143051, 38.214771, 20.242350>,  <35.808086, 38.243855, 19.926693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143051, 38.214771, 20.242350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181755, 37.881012, 20.025309>,  <35.204975, 37.680756, 19.895084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181755, 37.881012, 20.025309>,  <35.143051, 38.214771, 20.242350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181755, 37.881012, 20.025309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331807, -0.541015, 0.772792,
		-0.938372, 0.105267, -0.329205,
		0.096755, -0.834399, -0.542602,
		35.210781, 37.630692, 19.862528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567211, 37.869904, 20.419048>,  <35.143051, 38.214771, 20.242350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567211, 37.869904, 20.419048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807888, 37.591793, 20.261791>,  <34.952293, 37.424927, 20.167437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807888, 37.591793, 20.261791>,  <34.567211, 37.869904, 20.419048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807888, 37.591793, 20.261791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173141, -0.594038, 0.785583,
		-0.779739, -0.404608, -0.477807,
		0.601689, -0.695278, -0.393141,
		34.988396, 37.383209, 20.143848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128853, 37.260117, 20.421307>,  <34.567211, 37.869904, 20.419048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128853, 37.260117, 20.421307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.506840, 37.134083, 20.386087>,  <34.733631, 37.058464, 20.364956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.506840, 37.134083, 20.386087>,  <34.128853, 37.260117, 20.421307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506840, 37.134083, 20.386087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213650, -0.798161, 0.563288,
		-0.247760, -0.513479, -0.821556,
		0.944971, -0.315086, -0.088047,
		34.790329, 37.039558, 20.359673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099182, 36.667568, 20.060297>,  <34.128853, 37.260117, 20.421307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099182, 36.667568, 20.060297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.433563, 36.673092, 20.279749>,  <34.634193, 36.676407, 20.411421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.433563, 36.673092, 20.279749>,  <34.099182, 36.667568, 20.060297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433563, 36.673092, 20.279749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311295, -0.811375, 0.494739,
		0.451975, -0.584363, -0.673972,
		0.835951, 0.013805, 0.548630,
		34.684349, 36.677235, 20.444338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274940, 35.934795, 20.163191>,  <34.099182, 36.667568, 20.060297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274940, 35.934795, 20.163191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.487057, 36.124863, 20.444046>,  <34.614326, 36.238903, 20.612560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.487057, 36.124863, 20.444046>,  <34.274940, 35.934795, 20.163191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487057, 36.124863, 20.444046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080067, -0.796407, 0.599437,
		0.844024, -0.374097, -0.384285,
		0.530295, 0.475171, 0.702139,
		34.646145, 36.267414, 20.654688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874725, 35.538349, 20.216549>,  <34.274940, 35.934795, 20.163191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874725, 35.538349, 20.216549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.832733, 35.741627, 20.558477>,  <34.807537, 35.863594, 20.763636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.832733, 35.741627, 20.558477>,  <34.874725, 35.538349, 20.216549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832733, 35.741627, 20.558477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271315, -0.841601, 0.467008,
		0.956748, -0.182898, 0.226234,
		-0.104984, 0.508189, 0.854823,
		34.801239, 35.894085, 20.814924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073944, 35.071281, 20.717571>,  <34.874725, 35.538349, 20.216549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073944, 35.071281, 20.717571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854786, 35.336128, 20.922085>,  <34.723289, 35.495037, 21.044792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854786, 35.336128, 20.922085>,  <35.073944, 35.071281, 20.717571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854786, 35.336128, 20.922085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376065, -0.740894, 0.556464,
		0.747249, 0.112611, 0.654934,
		-0.547900, 0.662114, 0.511283,
		34.690414, 35.534763, 21.075470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050777, 34.781288, 21.465065>,  <35.073944, 35.071281, 20.717571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050777, 34.781288, 21.465065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748878, 35.039501, 21.418352>,  <34.567738, 35.194431, 21.390324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748878, 35.039501, 21.418352>,  <35.050777, 34.781288, 21.465065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748878, 35.039501, 21.418352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602446, -0.611593, 0.512847,
		0.259638, 0.457426, 0.850499,
		-0.754750, 0.645535, -0.116782,
		34.522453, 35.233162, 21.383318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523590, 35.051285, 21.946630>,  <35.050777, 34.781288, 21.465065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523590, 35.051285, 21.946630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816792, 34.779228, 21.942417>,  <35.992714, 34.615993, 21.939890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816792, 34.779228, 21.942417>,  <35.523590, 35.051285, 21.946630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816792, 34.779228, 21.942417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352498, 0.393046, -0.849270,
		0.581764, 0.618807, 0.527853,
		0.733005, -0.680142, -0.010532,
		36.036694, 34.575184, 21.939257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088795, 35.485603, 21.691460>,  <35.523590, 35.051285, 21.946630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088795, 35.485603, 21.691460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191242, 35.104610, 21.625517>,  <36.252712, 34.876015, 21.585951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191242, 35.104610, 21.625517>,  <36.088795, 35.485603, 21.691460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191242, 35.104610, 21.625517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403381, 0.260300, -0.877227,
		0.878456, 0.158179, 0.450882,
		0.256123, -0.952483, -0.164856,
		36.268078, 34.818867, 21.576059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850956, 35.541134, 21.633364>,  <36.088795, 35.485603, 21.691460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850956, 35.541134, 21.633364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714832, 35.215004, 21.445988>,  <36.633160, 35.019325, 21.333563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714832, 35.215004, 21.445988>,  <36.850956, 35.541134, 21.633364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714832, 35.215004, 21.445988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716323, 0.097946, -0.690861,
		0.609159, -0.570656, 0.550706,
		-0.340304, -0.815327, -0.468439,
		36.612740, 34.970406, 21.305456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413109, 35.241528, 21.446358>,  <36.850956, 35.541134, 21.633364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413109, 35.241528, 21.446358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165588, 35.059669, 21.190113>,  <37.017075, 34.950554, 21.036366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165588, 35.059669, 21.190113>,  <37.413109, 35.241528, 21.446358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165588, 35.059669, 21.190113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660637, 0.140031, -0.737529,
		0.425016, -0.879598, 0.213701,
		-0.618805, -0.454641, -0.640611,
		36.979946, 34.923279, 20.997931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853958, 35.002079, 20.944082>,  <37.413109, 35.241528, 21.446358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853958, 35.002079, 20.944082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519238, 34.944321, 20.732834>,  <37.318405, 34.909668, 20.606085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519238, 34.944321, 20.732834>,  <37.853958, 35.002079, 20.944082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519238, 34.944321, 20.732834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503940, 0.173940, -0.846044,
		0.214029, -0.974112, -0.072785,
		-0.836802, -0.144399, -0.528122,
		37.268196, 34.901005, 20.574398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888237, 34.442101, 20.428205>,  <37.853958, 35.002079, 20.944082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888237, 34.442101, 20.428205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615425, 34.707684, 20.305571>,  <37.451736, 34.867035, 20.231989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615425, 34.707684, 20.305571>,  <37.888237, 34.442101, 20.428205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615425, 34.707684, 20.305571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539707, 0.174068, -0.823660,
		-0.493508, -0.727229, -0.477062,
		-0.682031, 0.663957, -0.306587,
		37.410816, 34.906872, 20.213594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918411, 34.447273, 19.667641>,  <37.888237, 34.442101, 20.428205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918411, 34.447273, 19.667641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.749271, 34.795948, 19.766727>,  <37.647789, 35.005154, 19.826180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.749271, 34.795948, 19.766727>,  <37.918411, 34.447273, 19.667641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749271, 34.795948, 19.766727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558297, 0.465906, -0.686466,
		-0.713795, -0.151974, -0.683667,
		-0.422850, 0.871685, 0.247715,
		37.622417, 35.057453, 19.841042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863987, 34.711945, 19.017506>,  <37.918411, 34.447273, 19.667641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863987, 34.711945, 19.017506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825676, 35.033619, 19.252151>,  <37.802689, 35.226624, 19.392939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825676, 35.033619, 19.252151>,  <37.863987, 34.711945, 19.017506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825676, 35.033619, 19.252151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324655, 0.582337, -0.745307,
		-0.940970, 0.119061, -0.316859,
		-0.095782, 0.804182, 0.586616,
		37.796940, 35.274872, 19.428137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589809, 35.179779, 18.523167>,  <37.863987, 34.711945, 19.017506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589809, 35.179779, 18.523167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.693821, 35.419090, 18.826338>,  <37.756226, 35.562675, 19.008240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.693821, 35.419090, 18.826338>,  <37.589809, 35.179779, 18.523167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693821, 35.419090, 18.826338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017536, 0.787723, -0.615780,
		-0.965443, 0.146827, 0.215319,
		0.260025, 0.598276, 0.757926,
		37.771828, 35.598572, 19.053717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159649, 35.807774, 18.492785>,  <37.589809, 35.179779, 18.523167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159649, 35.807774, 18.492785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475834, 35.913391, 18.713858>,  <37.665543, 35.976761, 18.846500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475834, 35.913391, 18.713858>,  <37.159649, 35.807774, 18.492785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475834, 35.913391, 18.713858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037077, 0.880033, -0.473463,
		-0.611392, 0.394745, 0.685840,
		0.790459, 0.264043, 0.552681,
		37.712971, 35.992603, 18.879662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034531, 36.410671, 18.749804>,  <37.159649, 35.807774, 18.492785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034531, 36.410671, 18.749804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428684, 36.374973, 18.691771>,  <37.665176, 36.353554, 18.656950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428684, 36.374973, 18.691771>,  <37.034531, 36.410671, 18.749804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428684, 36.374973, 18.691771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047205, 0.961465, -0.270846,
		0.163664, 0.260040, 0.951627,
		0.985386, -0.089249, -0.145082,
		37.724300, 36.348198, 18.648247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375851, 37.015266, 19.022087>,  <37.034531, 36.410671, 18.749804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375851, 37.015266, 19.022087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624222, 36.846588, 18.757776>,  <37.773243, 36.745380, 18.599190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624222, 36.846588, 18.757776>,  <37.375851, 37.015266, 19.022087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624222, 36.846588, 18.757776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212648, 0.901972, -0.375803,
		0.754476, 0.092833, 0.649729,
		0.620925, -0.421698, -0.660775,
		37.810497, 36.720078, 18.559544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024155, 37.379051, 19.041176>,  <37.375851, 37.015266, 19.022087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024155, 37.379051, 19.041176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038502, 37.230907, 18.669897>,  <38.047108, 37.142021, 18.447130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038502, 37.230907, 18.669897>,  <38.024155, 37.379051, 19.041176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038502, 37.230907, 18.669897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284979, 0.894020, -0.345708,
		0.957862, -0.252118, 0.137609,
		0.035866, -0.370356, -0.928197,
		38.049263, 37.119801, 18.391438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481270, 37.769676, 18.715338>,  <38.024155, 37.379051, 19.041176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481270, 37.769676, 18.715338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285603, 37.597263, 18.412043>,  <38.168201, 37.493816, 18.230064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285603, 37.597263, 18.412043>,  <38.481270, 37.769676, 18.715338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285603, 37.597263, 18.412043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333723, 0.710699, -0.619303,
		0.805821, -0.555983, -0.203802,
		-0.489163, -0.431034, -0.758240,
		38.138855, 37.467953, 18.184570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278908, 37.618866, 18.819805>,  <38.481270, 37.769676, 18.715338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278908, 37.618866, 18.819805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613747, 37.792164, 18.953413>,  <39.814648, 37.896145, 19.033577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613747, 37.792164, 18.953413>,  <39.278908, 37.618866, 18.819805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613747, 37.792164, 18.953413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114522, -0.458264, 0.881407,
		0.534936, -0.776074, -0.333994,
		0.837095, 0.433247, 0.334020,
		39.864876, 37.922138, 19.053619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743820, 37.104214, 18.988192>,  <39.278908, 37.618866, 18.819805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743820, 37.104214, 18.988192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835163, 37.436001, 19.192087>,  <39.889969, 37.635075, 19.314425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835163, 37.436001, 19.192087>,  <39.743820, 37.104214, 18.988192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835163, 37.436001, 19.192087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040005, -0.515137, 0.856173,
		0.972756, -0.215904, -0.084451,
		0.228355, 0.829469, 0.509740,
		39.903671, 37.684841, 19.345009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245949, 36.859699, 19.426977>,  <39.743820, 37.104214, 18.988192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245949, 36.859699, 19.426977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118725, 37.204857, 19.584080>,  <40.042393, 37.411949, 19.678341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118725, 37.204857, 19.584080>,  <40.245949, 36.859699, 19.426977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118725, 37.204857, 19.584080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118479, -0.374845, 0.919485,
		0.940640, 0.338981, 0.016986,
		-0.318056, 0.862892, 0.392756,
		40.023308, 37.463726, 19.701906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799435, 37.071739, 19.861841>,  <40.245949, 36.859699, 19.426977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799435, 37.071739, 19.861841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466816, 37.263058, 19.974810>,  <40.267246, 37.377850, 20.042591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466816, 37.263058, 19.974810>,  <40.799435, 37.071739, 19.861841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466816, 37.263058, 19.974810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119935, -0.341849, 0.932070,
		0.542353, 0.808932, 0.226898,
		-0.831546, 0.478298, 0.282422,
		40.217354, 37.406548, 20.059536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957352, 37.320480, 20.549927>,  <40.799435, 37.071739, 19.861841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957352, 37.320480, 20.549927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558632, 37.321598, 20.517988>,  <40.319401, 37.322269, 20.498825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558632, 37.321598, 20.517988>,  <40.957352, 37.320480, 20.549927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558632, 37.321598, 20.517988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072074, -0.462676, 0.883593,
		-0.034475, 0.886523, 0.461398,
		-0.996803, 0.002793, -0.079846,
		40.259590, 37.322437, 20.494034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673077, 37.607452, 21.161575>,  <40.957352, 37.320480, 20.549927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673077, 37.607452, 21.161575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397152, 37.363552, 21.005438>,  <40.231598, 37.217213, 20.911757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397152, 37.363552, 21.005438>,  <40.673077, 37.607452, 21.161575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397152, 37.363552, 21.005438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094623, -0.458598, 0.883592,
		-0.717783, 0.646443, 0.258648,
		-0.689807, -0.609753, -0.390342,
		40.190208, 37.180626, 20.888334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209171, 37.492657, 21.743151>,  <40.673077, 37.607452, 21.161575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209171, 37.492657, 21.743151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.066345, 37.215729, 21.492327>,  <39.980652, 37.049572, 21.341831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.066345, 37.215729, 21.492327>,  <40.209171, 37.492657, 21.743151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066345, 37.215729, 21.492327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130954, -0.627582, 0.767458,
		-0.924856, 0.356146, 0.133423,
		-0.357061, -0.692316, -0.627061,
		39.959229, 37.008034, 21.304209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645958, 37.367416, 21.973085>,  <40.209171, 37.492657, 21.743151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645958, 37.367416, 21.973085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.737934, 37.030903, 21.777380>,  <39.793118, 36.828995, 21.659958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.737934, 37.030903, 21.777380>,  <39.645958, 37.367416, 21.973085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737934, 37.030903, 21.777380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216021, -0.534312, 0.817218,
		-0.948928, -0.082218, -0.304592,
		0.229937, -0.841280, -0.489263,
		39.806915, 36.778519, 21.630602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239895, 36.893879, 22.251701>,  <39.645958, 37.367416, 21.973085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239895, 36.893879, 22.251701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.494755, 36.633930, 22.085947>,  <39.647671, 36.477962, 21.986494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.494755, 36.633930, 22.085947>,  <39.239895, 36.893879, 22.251701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494755, 36.633930, 22.085947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182567, -0.649598, 0.738032,
		-0.748809, -0.394580, -0.532533,
		0.637145, -0.649868, -0.414388,
		39.685898, 36.438969, 21.961630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901817, 36.344955, 22.007814>,  <39.239895, 36.893879, 22.251701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901817, 36.344955, 22.007814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274441, 36.204647, 22.046108>,  <39.498013, 36.120461, 22.069084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274441, 36.204647, 22.046108>,  <38.901817, 36.344955, 22.007814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274441, 36.204647, 22.046108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318473, -0.660102, 0.680324,
		-0.175441, -0.664248, -0.726632,
		0.931555, -0.350770, 0.095736,
		39.553905, 36.099415, 22.074829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827888, 35.673996, 22.138800>,  <38.901817, 36.344955, 22.007814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827888, 35.673996, 22.138800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198662, 35.757763, 22.263338>,  <39.421127, 35.808022, 22.338060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198662, 35.757763, 22.263338>,  <38.827888, 35.673996, 22.138800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198662, 35.757763, 22.263338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163395, -0.521679, 0.837349,
		0.337775, -0.827041, -0.449345,
		0.926936, 0.209415, 0.311345,
		39.476742, 35.820587, 22.356741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123402, 35.030090, 22.252150>,  <38.827888, 35.673996, 22.138800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123402, 35.030090, 22.252150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365532, 35.255203, 22.477306>,  <39.510811, 35.390270, 22.612400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365532, 35.255203, 22.477306>,  <39.123402, 35.030090, 22.252150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365532, 35.255203, 22.477306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100815, -0.647273, 0.755562,
		0.789565, -0.514112, -0.335076,
		0.605329, 0.562785, 0.562894,
		39.547131, 35.424038, 22.646175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605885, 34.573063, 22.583302>,  <39.123402, 35.030090, 22.252150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605885, 34.573063, 22.583302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.590603, 34.904655, 22.806490>,  <39.581432, 35.103611, 22.940403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.590603, 34.904655, 22.806490>,  <39.605885, 34.573063, 22.583302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590603, 34.904655, 22.806490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097699, -0.558800, 0.823528,
		0.994482, -0.023052, 0.102338,
		-0.038203, 0.828982, 0.557969,
		39.579144, 35.153351, 22.973881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008343, 34.484077, 23.200695>,  <39.605885, 34.573063, 22.583302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008343, 34.484077, 23.200695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801361, 34.808434, 23.310017>,  <39.677170, 35.003048, 23.375608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801361, 34.808434, 23.310017>,  <40.008343, 34.484077, 23.200695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801361, 34.808434, 23.310017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200435, -0.425359, 0.882551,
		0.831905, 0.401902, 0.382635,
		-0.517456, 0.810891, 0.273303,
		39.646126, 35.051701, 23.392008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.070358, 39.943741, 20.997992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.789604, 40.188663, 20.852421>,  <39.621151, 40.335617, 20.765079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.789604, 40.188663, 20.852421>,  <40.070358, 39.943741, 20.997992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789604, 40.188663, 20.852421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545052, 0.132770, -0.827823,
		-0.458563, -0.779392, -0.426928,
		-0.701882, 0.612307, -0.363925,
		39.579041, 40.372356, 20.743242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041367, 39.764107, 20.296637>,  <40.070358, 39.943741, 20.997992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041367, 39.764107, 20.296637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.847069, 40.113647, 20.288288>,  <39.730488, 40.323372, 20.283279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.847069, 40.113647, 20.288288>,  <40.041367, 39.764107, 20.296637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847069, 40.113647, 20.288288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193193, 0.084045, -0.977554,
		-0.852481, -0.478877, -0.209647,
		-0.485749, 0.873849, -0.020869,
		39.701344, 40.375801, 20.282028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649414, 39.763577, 19.581963>,  <40.041367, 39.764107, 20.296637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649414, 39.763577, 19.581963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.691998, 40.145958, 19.691376>,  <39.717548, 40.375385, 19.757025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.691998, 40.145958, 19.691376>,  <39.649414, 39.763577, 19.581963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691998, 40.145958, 19.691376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200764, 0.248766, -0.947528,
		-0.973838, 0.155789, -0.165438,
		0.106459, 0.955953, 0.273535,
		39.723934, 40.432743, 19.773436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329754, 40.145042, 19.038754>,  <39.649414, 39.763577, 19.581963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329754, 40.145042, 19.038754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565632, 40.404991, 19.230558>,  <39.707157, 40.560959, 19.345642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565632, 40.404991, 19.230558>,  <39.329754, 40.145042, 19.038754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565632, 40.404991, 19.230558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324670, 0.352890, -0.877529,
		-0.739495, 0.673156, -0.002897,
		0.589691, 0.649869, 0.479514,
		39.742538, 40.599953, 19.374413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131763, 40.832253, 18.829962>,  <39.329754, 40.145042, 19.038754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131763, 40.832253, 18.829962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.510979, 40.890259, 18.943241>,  <39.738506, 40.925064, 19.011208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.510979, 40.890259, 18.943241>,  <39.131763, 40.832253, 18.829962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510979, 40.890259, 18.943241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187266, 0.465258, -0.865139,
		-0.257219, 0.873215, 0.413925,
		0.948035, 0.145016, 0.283197,
		39.795387, 40.933765, 19.028200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263084, 41.531994, 18.755440>,  <39.131763, 40.832253, 18.829962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263084, 41.531994, 18.755440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628990, 41.371799, 18.776672>,  <39.848534, 41.275684, 18.789412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628990, 41.371799, 18.776672>,  <39.263084, 41.531994, 18.755440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628990, 41.371799, 18.776672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282589, 0.540430, -0.792514,
		0.288702, 0.739965, 0.607539,
		0.914765, -0.400484, 0.053083,
		39.903419, 41.251656, 18.792597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630180, 42.030876, 18.553944>,  <39.263084, 41.531994, 18.755440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630180, 42.030876, 18.553944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872383, 41.717831, 18.496155>,  <40.017704, 41.530003, 18.461481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872383, 41.717831, 18.496155>,  <39.630180, 42.030876, 18.553944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872383, 41.717831, 18.496155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344950, 0.421687, -0.838564,
		0.717194, 0.457924, 0.525298,
		0.605510, -0.782615, -0.144470,
		40.054035, 41.483047, 18.452814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211758, 42.301708, 18.604368>,  <39.630180, 42.030876, 18.553944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211758, 42.301708, 18.604368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.263638, 41.961975, 18.399700>,  <40.294765, 41.758133, 18.276899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.263638, 41.961975, 18.399700>,  <40.211758, 42.301708, 18.604368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263638, 41.961975, 18.399700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370705, 0.520144, -0.769434,
		0.919649, -0.089880, 0.382318,
		0.129703, -0.849336, -0.511669,
		40.302547, 41.707172, 18.246199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752083, 42.441944, 18.243847>,  <40.211758, 42.301708, 18.604368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752083, 42.441944, 18.243847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.603737, 42.127277, 18.046413>,  <40.514729, 41.938477, 17.927954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.603737, 42.127277, 18.046413>,  <40.752083, 42.441944, 18.243847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603737, 42.127277, 18.046413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271957, 0.416189, -0.867656,
		0.887976, -0.456013, 0.059590,
		-0.370861, -0.786663, -0.493581,
		40.492477, 41.891277, 17.898338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180313, 42.435047, 17.801369>,  <40.752083, 42.441944, 18.243847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180313, 42.435047, 17.801369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.892433, 42.212463, 17.635292>,  <40.719704, 42.078915, 17.535646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.892433, 42.212463, 17.635292>,  <41.180313, 42.435047, 17.801369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892433, 42.212463, 17.635292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169901, 0.438675, -0.882439,
		0.673178, -0.705631, -0.221170,
		-0.719698, -0.556461, -0.415194,
		40.676525, 42.045525, 17.510735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433807, 42.043308, 17.261335>,  <41.180313, 42.435047, 17.801369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433807, 42.043308, 17.261335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.044830, 42.079262, 17.175285>,  <40.811443, 42.100834, 17.123655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.044830, 42.079262, 17.175285>,  <41.433807, 42.043308, 17.261335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044830, 42.079262, 17.175285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226746, 0.149869, -0.962354,
		-0.054264, -0.984611, -0.166120,
		-0.972441, 0.089888, -0.215124,
		40.753098, 42.106228, 17.110748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331757, 41.673428, 16.692060>,  <41.433807, 42.043308, 17.261335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331757, 41.673428, 16.692060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006138, 41.904243, 16.665699>,  <40.810764, 42.042732, 16.649881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006138, 41.904243, 16.665699>,  <41.331757, 41.673428, 16.692060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006138, 41.904243, 16.665699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205196, 0.179594, -0.962102,
		-0.543339, -0.796723, -0.264605,
		-0.814051, 0.577043, -0.065904,
		40.761921, 42.077358, 16.645927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891529, 41.408531, 16.243916>,  <41.331757, 41.673428, 16.692060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891529, 41.408531, 16.243916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.571465, 41.232273, 16.081154>,  <41.379425, 41.126518, 15.983497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.571465, 41.232273, 16.081154>,  <41.891529, 41.408531, 16.243916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571465, 41.232273, 16.081154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184766, 0.464335, -0.866173,
		0.570618, -0.768260, -0.290126,
		-0.800161, -0.440648, -0.406906,
		41.331417, 41.100079, 15.959083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062305, 41.016769, 15.762267>,  <41.891529, 41.408531, 16.243916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062305, 41.016769, 15.762267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.687656, 41.130455, 15.680330>,  <41.462868, 41.198666, 15.631168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.687656, 41.130455, 15.680330>,  <42.062305, 41.016769, 15.762267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687656, 41.130455, 15.680330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335117, 0.556335, -0.760387,
		-0.102153, -0.780841, -0.616321,
		-0.936622, 0.284215, -0.204842,
		41.406670, 41.215721, 15.618877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653038, 41.343643, 15.202400>,  <42.062305, 41.016769, 15.762267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653038, 41.343643, 15.202400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460064, 41.153831, 14.907897>,  <41.344280, 41.039944, 14.731195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460064, 41.153831, 14.907897>,  <41.653038, 41.343643, 15.202400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460064, 41.153831, 14.907897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081654, -0.861246, 0.501586,
		-0.872118, 0.181863, 0.454242,
		-0.482434, -0.474533, -0.736258,
		41.315334, 41.011471, 14.687019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842190, 41.232960, 15.254005>,  <41.653038, 41.343643, 15.202400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842190, 41.232960, 15.254005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.060032, 40.956108, 15.064536>,  <41.190735, 40.789997, 14.950854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.060032, 40.956108, 15.064536>,  <40.842190, 41.232960, 15.254005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060032, 40.956108, 15.064536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045032, -0.588093, 0.807539,
		-0.837484, -0.418457, -0.351445,
		0.544603, -0.692127, -0.473675,
		41.223412, 40.748470, 14.922434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421520, 40.621132, 15.319492>,  <40.842190, 41.232960, 15.254005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421520, 40.621132, 15.319492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.795898, 40.498062, 15.250970>,  <41.020527, 40.424221, 15.209857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.795898, 40.498062, 15.250970>,  <40.421520, 40.621132, 15.319492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795898, 40.498062, 15.250970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111849, -0.721001, 0.683848,
		-0.333912, -0.620883, -0.709230,
		0.935945, -0.307671, -0.171305,
		41.076683, 40.405762, 15.199578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356468, 39.990887, 15.537949>,  <40.421520, 40.621132, 15.319492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356468, 39.990887, 15.537949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748726, 40.069183, 15.536386>,  <40.984081, 40.116161, 15.535449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748726, 40.069183, 15.536386>,  <40.356468, 39.990887, 15.537949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748726, 40.069183, 15.536386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139346, -0.683832, 0.716210,
		0.137519, -0.702894, -0.697874,
		0.980648, 0.195739, -0.003906,
		41.042919, 40.127907, 15.535214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535587, 39.397594, 15.667354>,  <40.356468, 39.990887, 15.537949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535587, 39.397594, 15.667354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.861561, 39.610233, 15.759688>,  <41.057144, 39.737816, 15.815089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.861561, 39.610233, 15.759688>,  <40.535587, 39.397594, 15.667354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861561, 39.610233, 15.759688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192112, -0.623566, 0.757798,
		0.546787, -0.573209, -0.610291,
		0.814933, 0.531599, 0.230837,
		41.106041, 39.769714, 15.828939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981514, 38.900143, 15.749920>,  <40.535587, 39.397594, 15.667354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981514, 38.900143, 15.749920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.114628, 39.219944, 15.949937>,  <41.194496, 39.411827, 16.069946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.114628, 39.219944, 15.949937>,  <40.981514, 38.900143, 15.749920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114628, 39.219944, 15.949937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158030, -0.570049, 0.806270,
		0.929667, -0.189292, -0.316049,
		0.332784, 0.799508, 0.500042,
		41.214462, 39.459797, 16.099949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586353, 38.692772, 16.050436>,  <40.981514, 38.900143, 15.749920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586353, 38.692772, 16.050436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465771, 39.018658, 16.248575>,  <41.393421, 39.214188, 16.367458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465771, 39.018658, 16.248575>,  <41.586353, 38.692772, 16.050436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465771, 39.018658, 16.248575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060140, -0.502233, 0.862638,
		0.951582, 0.289836, 0.102403,
		-0.301454, 0.814713, 0.495347,
		41.375336, 39.263073, 16.397179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980659, 38.712254, 16.697027>,  <41.586353, 38.692772, 16.050436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980659, 38.712254, 16.697027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.679760, 38.963165, 16.777668>,  <41.499218, 39.113712, 16.826054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.679760, 38.963165, 16.777668>,  <41.980659, 38.712254, 16.697027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679760, 38.963165, 16.777668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186894, -0.496558, 0.847644,
		0.631814, 0.599963, 0.490770,
		-0.752251, 0.627276, 0.201603,
		41.454086, 39.151348, 16.838148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086662, 39.032639, 17.355402>,  <41.980659, 38.712254, 16.697027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086662, 39.032639, 17.355402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.703926, 38.999779, 17.243904>,  <41.474285, 38.980064, 17.177006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.703926, 38.999779, 17.243904>,  <42.086662, 39.032639, 17.355402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703926, 38.999779, 17.243904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187217, -0.559359, 0.807507,
		-0.222256, 0.824844, 0.519840,
		-0.956845, -0.082151, -0.278746,
		41.416874, 38.975132, 17.160280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724598, 39.152435, 17.996969>,  <42.086662, 39.032639, 17.355402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724598, 39.152435, 17.996969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.441162, 38.987591, 17.767860>,  <41.271103, 38.888683, 17.630396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.441162, 38.987591, 17.767860>,  <41.724598, 39.152435, 17.996969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441162, 38.987591, 17.767860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422406, -0.402477, 0.812149,
		-0.565223, 0.817421, 0.111112,
		-0.708588, -0.412110, -0.572773,
		41.228584, 38.863956, 17.596029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096893, 39.265804, 18.353132>,  <41.724598, 39.152435, 17.996969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096893, 39.265804, 18.353132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.994946, 38.963642, 18.111670>,  <40.933777, 38.782345, 17.966793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.994946, 38.963642, 18.111670>,  <41.096893, 39.265804, 18.353132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994946, 38.963642, 18.111670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552254, -0.398734, 0.732138,
		-0.793762, 0.519969, -0.315554,
		-0.254867, -0.755409, -0.603655,
		40.918484, 38.737019, 17.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367123, 39.159286, 18.505648>,  <41.096893, 39.265804, 18.353132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367123, 39.159286, 18.505648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469452, 38.827728, 18.306656>,  <40.530849, 38.628792, 18.187260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469452, 38.827728, 18.306656>,  <40.367123, 39.159286, 18.505648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469452, 38.827728, 18.306656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574962, -0.544154, 0.610995,
		-0.777157, 0.129727, -0.615790,
		0.255822, -0.828895, -0.497482,
		40.546200, 38.579060, 18.157412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716488, 38.995564, 18.365162>,  <40.367123, 39.159286, 18.505648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716488, 38.995564, 18.365162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.980103, 38.694736, 18.361868>,  <40.138271, 38.514240, 18.359892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.980103, 38.694736, 18.361868>,  <39.716488, 38.995564, 18.365162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980103, 38.694736, 18.361868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548606, -0.488176, 0.678760,
		-0.514499, -0.442803, -0.734314,
		0.659031, -0.752070, -0.008241,
		40.177814, 38.469116, 18.359398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276398, 38.331253, 18.460173>,  <39.716488, 38.995564, 18.365162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276398, 38.331253, 18.460173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646137, 38.237534, 18.580627>,  <39.867981, 38.181301, 18.652901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646137, 38.237534, 18.580627>,  <39.276398, 38.331253, 18.460173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646137, 38.237534, 18.580627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378510, -0.463644, 0.801102,
		-0.048079, -0.854481, -0.517254,
		0.924348, -0.234302, 0.301138,
		39.923443, 38.167244, 18.670969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957497, 37.685402, 18.084909>,  <39.276398, 38.331253, 18.460173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957497, 37.685402, 18.084909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.573307, 37.697861, 17.974264>,  <38.342793, 37.705334, 17.907877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.573307, 37.697861, 17.974264>,  <38.957497, 37.685402, 18.084909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573307, 37.697861, 17.974264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224892, 0.672423, -0.705175,
		0.164041, -0.739512, -0.652850,
		-0.960476, 0.031143, -0.276615,
		38.285164, 37.707203, 17.891279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003410, 37.645214, 17.406904>,  <38.957497, 37.685402, 18.084909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003410, 37.645214, 17.406904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.638294, 37.804497, 17.443209>,  <38.419224, 37.900066, 17.464991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.638294, 37.804497, 17.443209>,  <39.003410, 37.645214, 17.406904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638294, 37.804497, 17.443209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260795, 0.739312, -0.620809,
		-0.314311, -0.543001, -0.778690,
		-0.912795, 0.398206, 0.090762,
		38.364456, 37.923958, 17.470438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778458, 37.732773, 16.738894>,  <39.003410, 37.645214, 17.406904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778458, 37.732773, 16.738894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549885, 37.977192, 16.958014>,  <38.412743, 38.123844, 17.089485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549885, 37.977192, 16.958014>,  <38.778458, 37.732773, 16.738894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549885, 37.977192, 16.958014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171999, 0.741872, -0.648107,
		-0.802422, -0.276128, -0.529029,
		-0.571432, 0.611048, 0.547801,
		38.378456, 38.160507, 17.122355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443619, 38.063503, 16.221300>,  <38.778458, 37.732773, 16.738894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443619, 38.063503, 16.221300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.363979, 38.306309, 16.529039>,  <38.316196, 38.451992, 16.713682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.363979, 38.306309, 16.529039>,  <38.443619, 38.063503, 16.221300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363979, 38.306309, 16.529039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035117, 0.780141, -0.624617,
		-0.979351, -0.151374, -0.134005,
		-0.199094, 0.607014, 0.769348,
		38.304253, 38.488415, 16.759844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805492, 38.402973, 16.089949>,  <38.443619, 38.063503, 16.221300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805492, 38.402973, 16.089949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034130, 38.626331, 16.330439>,  <38.171314, 38.760345, 16.474733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034130, 38.626331, 16.330439>,  <37.805492, 38.402973, 16.089949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034130, 38.626331, 16.330439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081405, 0.767700, -0.635618,
		-0.816489, 0.314373, 0.484269,
		0.571594, 0.558397, 0.601227,
		38.205608, 38.793850, 16.510807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533798, 39.138268, 16.110960>,  <37.805492, 38.402973, 16.089949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533798, 39.138268, 16.110960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.915081, 39.174625, 16.226294>,  <38.143852, 39.196442, 16.295494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.915081, 39.174625, 16.226294>,  <37.533798, 39.138268, 16.110960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915081, 39.174625, 16.226294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072176, 0.857727, -0.509013,
		-0.293579, 0.506005, 0.811030,
		0.953206, 0.090899, 0.288332,
		38.201042, 39.201897, 16.312794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565678, 39.825470, 16.255939>,  <37.533798, 39.138268, 16.110960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565678, 39.825470, 16.255939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.934120, 39.682896, 16.193300>,  <38.155186, 39.597351, 16.155716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.934120, 39.682896, 16.193300>,  <37.565678, 39.825470, 16.255939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934120, 39.682896, 16.193300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137914, 0.674888, -0.724918,
		0.364074, 0.646127, 0.670798,
		0.921102, -0.356437, -0.156599,
		38.210449, 39.575966, 16.146320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464569, 40.363655, 16.668591>,  <37.565678, 39.825470, 16.255939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464569, 40.363655, 16.668591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135464, 40.580826, 16.601297>,  <36.938000, 40.711128, 16.560921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135464, 40.580826, 16.601297>,  <37.464569, 40.363655, 16.668591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135464, 40.580826, 16.601297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541095, -0.657534, 0.524276,
		0.174021, 0.522384, 0.834765,
		-0.822759, 0.542922, -0.168235,
		36.888638, 40.743702, 16.550827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162228, 40.428009, 17.223450>,  <37.464569, 40.363655, 16.668591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162228, 40.428009, 17.223450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848751, 40.455990, 16.976570>,  <36.660664, 40.472778, 16.828444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848751, 40.455990, 16.976570>,  <37.162228, 40.428009, 17.223450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848751, 40.455990, 16.976570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495246, -0.670107, 0.552891,
		-0.374910, 0.738961, 0.559803,
		-0.783693, 0.069956, -0.617197,
		36.613644, 40.476978, 16.791410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428371, 40.457760, 17.589342>,  <37.162228, 40.428009, 17.223450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428371, 40.457760, 17.589342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350323, 40.317368, 17.223011>,  <36.303493, 40.233131, 17.003212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350323, 40.317368, 17.223011>,  <36.428371, 40.457760, 17.589342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350323, 40.317368, 17.223011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660546, -0.643215, 0.387238,
		-0.724987, 0.680505, -0.106331,
		-0.195124, -0.350980, -0.915827,
		36.291786, 40.212074, 16.948263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721367, 40.334713, 17.587694>,  <36.428371, 40.457760, 17.589342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721367, 40.334713, 17.587694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867008, 40.128155, 17.277658>,  <35.954395, 40.004219, 17.091637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867008, 40.128155, 17.277658>,  <35.721367, 40.334713, 17.587694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867008, 40.128155, 17.277658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611351, -0.760342, 0.219386,
		-0.702622, 0.393970, -0.592545,
		0.364106, -0.516398, -0.775087,
		35.976238, 39.973236, 17.045132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127575, 40.036110, 17.281151>,  <35.721367, 40.334713, 17.587694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127575, 40.036110, 17.281151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441326, 39.827602, 17.146671>,  <35.629578, 39.702496, 17.065983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441326, 39.827602, 17.146671>,  <35.127575, 40.036110, 17.281151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441326, 39.827602, 17.146671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414402, -0.843681, 0.341283,
		-0.461545, -0.128373, -0.877779,
		0.784377, -0.521271, -0.336199,
		35.676640, 39.671223, 17.045811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852375, 39.486660, 16.977123>,  <35.127575, 40.036110, 17.281151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852375, 39.486660, 16.977123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229256, 39.396133, 17.075953>,  <35.455383, 39.341816, 17.135250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229256, 39.396133, 17.075953>,  <34.852375, 39.486660, 16.977123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229256, 39.396133, 17.075953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309683, -0.869717, 0.384304,
		0.127911, -0.438605, -0.889531,
		0.942197, -0.226315, 0.247074,
		35.511913, 39.328239, 17.150074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961502, 38.720352, 16.786789>,  <34.852375, 39.486660, 16.977123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961502, 38.720352, 16.786789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269711, 38.804783, 17.027370>,  <35.454636, 38.855442, 17.171719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269711, 38.804783, 17.027370>,  <34.961502, 38.720352, 16.786789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269711, 38.804783, 17.027370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231239, -0.786734, 0.572344,
		0.593994, -0.580081, -0.557384,
		0.770519, 0.211080, 0.601453,
		35.500866, 38.868107, 17.207806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.374123, 44.334370, 16.646851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.669258, 44.075546, 16.723700>,  <38.846340, 43.920254, 16.769810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.669258, 44.075546, 16.723700>,  <38.374123, 44.334370, 16.646851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669258, 44.075546, 16.723700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447144, -0.255348, 0.857239,
		-0.505625, -0.718411, -0.477734,
		0.737838, -0.647057, 0.192123,
		38.890610, 43.881428, 16.781336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110477, 43.716526, 16.996899>,  <38.374123, 44.334370, 16.646851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110477, 43.716526, 16.996899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497467, 43.705341, 17.097467>,  <38.729660, 43.698631, 17.157808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497467, 43.705341, 17.097467>,  <38.110477, 43.716526, 16.996899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497467, 43.705341, 17.097467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248499, -0.291068, 0.923866,
		0.047350, -0.956294, -0.288548,
		0.967474, -0.027959, 0.251421,
		38.787708, 43.696953, 17.172894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181068, 43.089546, 17.297033>,  <38.110477, 43.716526, 16.996899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181068, 43.089546, 17.297033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.447594, 43.354767, 17.433498>,  <38.607510, 43.513901, 17.515377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.447594, 43.354767, 17.433498>,  <38.181068, 43.089546, 17.297033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447594, 43.354767, 17.433498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310914, -0.168813, 0.935326,
		0.677761, -0.729291, 0.093669,
		0.666312, 0.663051, 0.341162,
		38.647488, 43.553680, 17.535847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674702, 42.719940, 17.798706>,  <38.181068, 43.089546, 17.297033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674702, 42.719940, 17.798706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.683971, 43.107574, 17.896954>,  <38.689533, 43.340157, 17.955902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.683971, 43.107574, 17.896954>,  <38.674702, 42.719940, 17.798706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683971, 43.107574, 17.896954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293187, -0.228294, 0.928398,
		0.955774, -0.093530, 0.278833,
		0.023177, 0.969089, 0.245619,
		38.690926, 43.398300, 17.970640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947628, 42.791210, 18.455009>,  <38.674702, 42.719940, 17.798706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947628, 42.791210, 18.455009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777935, 43.151440, 18.417076>,  <38.676121, 43.367577, 18.394316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777935, 43.151440, 18.417076>,  <38.947628, 42.791210, 18.455009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777935, 43.151440, 18.417076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333259, -0.057889, 0.941056,
		0.842002, 0.430828, 0.324683,
		-0.424229, 0.900575, -0.094834,
		38.650665, 43.421612, 18.388626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121380, 43.207100, 19.009987>,  <38.947628, 42.791210, 18.455009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121380, 43.207100, 19.009987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.783745, 43.360855, 18.860447>,  <38.581165, 43.453110, 18.770723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.783745, 43.360855, 18.860447>,  <39.121380, 43.207100, 19.009987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783745, 43.360855, 18.860447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461146, -0.164628, 0.871919,
		0.273612, 0.908373, 0.316220,
		-0.844086, 0.384391, -0.373849,
		38.530518, 43.476173, 18.748293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821945, 43.720119, 19.531082>,  <39.121380, 43.207100, 19.009987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821945, 43.720119, 19.531082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510952, 43.648380, 19.289967>,  <38.324356, 43.605335, 19.145298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510952, 43.648380, 19.289967>,  <38.821945, 43.720119, 19.531082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510952, 43.648380, 19.289967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569250, -0.206760, 0.795742,
		-0.267351, 0.961812, 0.058656,
		-0.777482, -0.179353, -0.602789,
		38.277706, 43.594574, 19.109129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251816, 44.179302, 19.620852>,  <38.821945, 43.720119, 19.531082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251816, 44.179302, 19.620852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.073963, 43.850399, 19.478758>,  <37.967251, 43.653057, 19.393501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.073963, 43.850399, 19.478758>,  <38.251816, 44.179302, 19.620852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073963, 43.850399, 19.478758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614815, -0.008244, 0.788628,
		-0.651385, 0.569053, -0.501872,
		-0.444633, -0.822260, -0.355233,
		37.940575, 43.603722, 19.372189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655991, 44.277729, 19.949507>,  <38.251816, 44.179302, 19.620852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655991, 44.277729, 19.949507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.611412, 43.905636, 19.809656>,  <37.584667, 43.682381, 19.725746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.611412, 43.905636, 19.809656>,  <37.655991, 44.277729, 19.949507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611412, 43.905636, 19.809656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778854, -0.136753, 0.612115,
		-0.617225, 0.340525, -0.709278,
		-0.111445, -0.930237, -0.349627,
		37.577980, 43.626564, 19.704767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923973, 44.209778, 19.795530>,  <37.655991, 44.277729, 19.949507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923973, 44.209778, 19.795530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.067356, 43.836830, 19.814259>,  <37.153385, 43.613060, 19.825495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.067356, 43.836830, 19.814259>,  <36.923973, 44.209778, 19.795530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067356, 43.836830, 19.814259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731995, -0.249586, 0.633948,
		-0.579390, -0.261515, -0.771957,
		0.358456, -0.932371, 0.046821,
		37.174892, 43.557117, 19.828304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401855, 43.659260, 19.733881>,  <36.923973, 44.209778, 19.795530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401855, 43.659260, 19.733881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.694046, 43.445774, 19.904314>,  <36.869362, 43.317680, 20.006575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.694046, 43.445774, 19.904314>,  <36.401855, 43.659260, 19.733881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694046, 43.445774, 19.904314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637145, -0.307990, 0.706533,
		-0.245858, -0.787585, -0.565035,
		0.730479, -0.533716, 0.426084,
		36.913189, 43.285660, 20.032139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094227, 43.039829, 19.971199>,  <36.401855, 43.659260, 19.733881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094227, 43.039829, 19.971199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.429501, 43.050896, 20.189074>,  <36.630665, 43.057537, 20.319798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.429501, 43.050896, 20.189074>,  <36.094227, 43.039829, 19.971199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429501, 43.050896, 20.189074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509551, -0.316334, 0.800182,
		0.194440, -0.948244, -0.251049,
		0.838183, 0.027665, 0.544686,
		36.680954, 43.059196, 20.352480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723541, 42.537643, 19.689894>,  <36.094227, 43.039829, 19.971199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723541, 42.537643, 19.689894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.345249, 42.456913, 19.588015>,  <35.118275, 42.408474, 19.526888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.345249, 42.456913, 19.588015>,  <35.723541, 42.537643, 19.689894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345249, 42.456913, 19.588015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111391, 0.534953, -0.837506,
		0.305278, -0.820423, -0.483438,
		-0.945726, -0.201821, -0.254697,
		35.061531, 42.396366, 19.511606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735371, 42.314362, 18.993816>,  <35.723541, 42.537643, 19.689894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735371, 42.314362, 18.993816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.354126, 42.414429, 19.061928>,  <35.125378, 42.474468, 19.102795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.354126, 42.414429, 19.061928>,  <35.735371, 42.314362, 18.993816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354126, 42.414429, 19.061928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001102, 0.559810, -0.828620,
		-0.302619, -0.789954, -0.533286,
		-0.953111, 0.250169, 0.170280,
		35.068192, 42.489479, 19.113012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490673, 42.288422, 18.353752>,  <35.735371, 42.314362, 18.993816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490673, 42.288422, 18.353752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.239182, 42.512703, 18.569275>,  <35.088287, 42.647270, 18.698589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.239182, 42.512703, 18.569275>,  <35.490673, 42.288422, 18.353752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239182, 42.512703, 18.569275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103838, 0.626150, -0.772758,
		-0.770661, -0.541804, -0.335456,
		-0.628729, 0.560701, 0.538809,
		35.050564, 42.680912, 18.730917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854183, 42.319397, 17.986393>,  <35.490673, 42.288422, 18.353752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854183, 42.319397, 17.986393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.889473, 42.654449, 18.202019>,  <34.910648, 42.855480, 18.331394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.889473, 42.654449, 18.202019>,  <34.854183, 42.319397, 17.986393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889473, 42.654449, 18.202019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092653, 0.545728, -0.832824,
		-0.991782, 0.023531, 0.125757,
		0.088226, 0.837632, 0.539063,
		34.915939, 42.905739, 18.363737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486393, 42.763542, 17.589424>,  <34.854183, 42.319397, 17.986393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486393, 42.763542, 17.589424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.704803, 42.980873, 17.844500>,  <34.835850, 43.111271, 17.997545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.704803, 42.980873, 17.844500>,  <34.486393, 42.763542, 17.589424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704803, 42.980873, 17.844500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233202, 0.632520, -0.738604,
		-0.804657, 0.552007, 0.218667,
		0.546026, 0.543329, 0.637690,
		34.868610, 43.143871, 18.035807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427410, 43.459011, 17.282413>,  <34.486393, 42.763542, 17.589424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427410, 43.459011, 17.282413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738560, 43.524078, 17.525213>,  <34.925251, 43.563118, 17.670893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738560, 43.524078, 17.525213>,  <34.427410, 43.459011, 17.282413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738560, 43.524078, 17.525213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226932, 0.828023, -0.512718,
		-0.586013, 0.536579, 0.607184,
		0.777876, 0.162670, 0.606999,
		34.971924, 43.572880, 17.707314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454945, 44.117920, 17.295450>,  <34.427410, 43.459011, 17.282413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454945, 44.117920, 17.295450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.821774, 44.028259, 17.427349>,  <35.041870, 43.974464, 17.506489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.821774, 44.028259, 17.427349>,  <34.454945, 44.117920, 17.295450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821774, 44.028259, 17.427349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375248, 0.764769, -0.523753,
		-0.134781, 0.604057, 0.785461,
		0.917073, -0.224151, 0.329748,
		35.096897, 43.961014, 17.526274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765671, 44.706722, 17.507057>,  <34.454945, 44.117920, 17.295450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765671, 44.706722, 17.507057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.060677, 44.444454, 17.442350>,  <35.237682, 44.287094, 17.403526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.060677, 44.444454, 17.442350>,  <34.765671, 44.706722, 17.507057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060677, 44.444454, 17.442350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564056, 0.729786, -0.386333,
		0.371360, 0.193683, 0.908063,
		0.737518, -0.655667, -0.161765,
		35.281933, 44.247753, 17.393822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407516, 45.144508, 17.635948>,  <34.765671, 44.706722, 17.507057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407516, 45.144508, 17.635948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.502880, 44.819733, 17.422813>,  <35.560101, 44.624866, 17.294931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.502880, 44.819733, 17.422813>,  <35.407516, 45.144508, 17.635948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502880, 44.819733, 17.422813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609560, 0.552231, -0.568750,
		0.756040, -0.189201, 0.626583,
		0.238411, -0.811938, -0.532838,
		35.574402, 44.576153, 17.262962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098450, 45.113445, 17.720613>,  <35.407516, 45.144508, 17.635948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098450, 45.113445, 17.720613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.020844, 44.910622, 17.384697>,  <35.974281, 44.788929, 17.183147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.020844, 44.910622, 17.384697>,  <36.098450, 45.113445, 17.720613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020844, 44.910622, 17.384697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677092, 0.550240, -0.488653,
		0.709863, -0.663423, 0.236570,
		-0.194013, -0.507057, -0.839793,
		35.962639, 44.758503, 17.132759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806580, 45.053169, 17.354616>,  <36.098450, 45.113445, 17.720613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806580, 45.053169, 17.354616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.545544, 44.974468, 17.061928>,  <36.388924, 44.927250, 16.886314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.545544, 44.974468, 17.061928>,  <36.806580, 45.053169, 17.354616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545544, 44.974468, 17.061928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573509, 0.502863, -0.646697,
		0.495194, -0.841676, -0.215324,
		-0.652588, -0.196751, -0.731723,
		36.349766, 44.915443, 16.842411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202877, 44.887215, 16.826107>,  <36.806580, 45.053169, 17.354616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202877, 44.887215, 16.826107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.845718, 44.989853, 16.678112>,  <36.631424, 45.051437, 16.589315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.845718, 44.989853, 16.678112>,  <37.202877, 44.887215, 16.826107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845718, 44.989853, 16.678112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441882, 0.657130, -0.610672,
		0.086434, -0.708759, -0.700136,
		-0.892900, 0.256595, -0.369986,
		36.577850, 45.066830, 16.567116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353966, 45.035736, 16.224592>,  <37.202877, 44.887215, 16.826107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353966, 45.035736, 16.224592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.008617, 45.232040, 16.271496>,  <36.801407, 45.349823, 16.299637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.008617, 45.232040, 16.271496>,  <37.353966, 45.035736, 16.224592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008617, 45.232040, 16.271496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437741, 0.844089, -0.309672,
		-0.250950, -0.216033, -0.943586,
		-0.863370, 0.490758, 0.117258,
		36.749607, 45.379269, 16.306673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175926, 44.262077, 16.287529>,  <37.353966, 45.035736, 16.224592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175926, 44.262077, 16.287529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.211262, 44.113968, 15.917644>,  <37.232464, 44.025105, 15.695712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.211262, 44.113968, 15.917644>,  <37.175926, 44.262077, 16.287529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211262, 44.113968, 15.917644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323892, -0.888574, 0.324855,
		-0.941960, 0.270810, -0.198425,
		0.088342, -0.370269, -0.924714,
		37.237766, 44.002888, 15.640229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621124, 43.796104, 16.153158>,  <37.175926, 44.262077, 16.287529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621124, 43.796104, 16.153158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.891949, 43.681675, 15.881937>,  <37.054443, 43.613018, 15.719205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.891949, 43.681675, 15.881937>,  <36.621124, 43.796104, 16.153158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891949, 43.681675, 15.881937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143975, -0.955041, 0.259168,
		-0.721707, -0.077850, -0.687807,
		0.677060, -0.286070, -0.678051,
		37.095066, 43.595856, 15.678521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261707, 43.271309, 15.869901>,  <36.621124, 43.796104, 16.153158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261707, 43.271309, 15.869901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.636288, 43.195702, 15.751691>,  <36.861034, 43.150337, 15.680765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.636288, 43.195702, 15.751691>,  <36.261707, 43.271309, 15.869901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636288, 43.195702, 15.751691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078967, -0.934381, 0.347413,
		-0.341802, -0.301998, -0.889926,
		0.936448, -0.189021, -0.295525,
		36.917221, 43.138996, 15.663033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212883, 42.715942, 15.521400>,  <36.261707, 43.271309, 15.869901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212883, 42.715942, 15.521400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.599258, 42.725880, 15.624434>,  <36.831081, 42.731842, 15.686255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.599258, 42.725880, 15.624434>,  <36.212883, 42.715942, 15.521400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599258, 42.725880, 15.624434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072464, -0.929587, 0.361411,
		0.248427, -0.367766, -0.896121,
		0.965936, 0.024848, 0.257585,
		36.889038, 42.733334, 15.701710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395805, 42.122627, 15.395211>,  <36.212883, 42.715942, 15.521400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395805, 42.122627, 15.395211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.700428, 42.229061, 15.631593>,  <36.883202, 42.292923, 15.773422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.700428, 42.229061, 15.631593>,  <36.395805, 42.122627, 15.395211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700428, 42.229061, 15.631593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050564, -0.933447, 0.355134,
		0.646121, -0.240574, -0.724329,
		0.761559, 0.266085, 0.590955,
		36.928894, 42.308887, 15.808879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854622, 41.694698, 15.179319>,  <36.395805, 42.122627, 15.395211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854622, 41.694698, 15.179319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968315, 41.785538, 15.551908>,  <37.036530, 41.840042, 15.775462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968315, 41.785538, 15.551908>,  <36.854622, 41.694698, 15.179319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968315, 41.785538, 15.551908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029553, -0.969006, 0.245264,
		0.958301, -0.097238, -0.268709,
		0.284229, 0.227095, 0.931473,
		37.053585, 41.853668, 15.831350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381588, 41.140980, 15.374611>,  <36.854622, 41.694698, 15.179319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381588, 41.140980, 15.374611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.228687, 41.318642, 15.698737>,  <37.136948, 41.425240, 15.893213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.228687, 41.318642, 15.698737>,  <37.381588, 41.140980, 15.374611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228687, 41.318642, 15.698737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140297, -0.894637, 0.424194,
		0.913347, 0.048463, 0.404288,
		-0.382249, 0.444157, 0.810315,
		37.114014, 41.451889, 15.941832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489716, 40.670139, 15.885143>,  <37.381588, 41.140980, 15.374611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489716, 40.670139, 15.885143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206467, 40.892998, 16.058649>,  <37.036518, 41.026711, 16.162752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206467, 40.892998, 16.058649>,  <37.489716, 40.670139, 15.885143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206467, 40.892998, 16.058649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363370, -0.814275, 0.452679,
		0.605409, 0.162937, 0.779058,
		-0.708126, 0.557142, 0.433763,
		36.994030, 41.060139, 16.188778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089893, 40.420151, 16.209028>,  <37.489716, 40.670139, 15.885143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089893, 40.420151, 16.209028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.293259, 40.128277, 16.026129>,  <38.415279, 39.953152, 15.916389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.293259, 40.128277, 16.026129>,  <38.089893, 40.420151, 16.209028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293259, 40.128277, 16.026129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360580, 0.662604, -0.656459,
		0.781982, 0.168878, 0.599987,
		0.508415, -0.729682, -0.457250,
		38.445782, 39.909370, 15.888954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698936, 40.677380, 16.252741>,  <38.089893, 40.420151, 16.209028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698936, 40.677380, 16.252741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698383, 40.399502, 15.965020>,  <38.698051, 40.232777, 15.792387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698383, 40.399502, 15.965020>,  <38.698936, 40.677380, 16.252741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698383, 40.399502, 15.965020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255158, 0.695250, -0.671954,
		0.966898, -0.184464, 0.176297,
		-0.001381, -0.694695, -0.719304,
		38.697968, 40.191093, 15.749229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247349, 40.949455, 15.750177>,  <38.698936, 40.677380, 16.252741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247349, 40.949455, 15.750177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072071, 40.663658, 15.532006>,  <38.966904, 40.492180, 15.401103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072071, 40.663658, 15.532006>,  <39.247349, 40.949455, 15.750177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072071, 40.663658, 15.532006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264622, 0.477359, -0.837916,
		0.859049, -0.511500, -0.020104,
		-0.438191, -0.714491, -0.545429,
		38.940613, 40.449310, 15.368378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700474, 40.965389, 15.179345>,  <39.247349, 40.949455, 15.750177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700474, 40.965389, 15.179345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.362793, 40.782852, 15.066868>,  <39.160183, 40.673328, 14.999381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.362793, 40.782852, 15.066868>,  <39.700474, 40.965389, 15.179345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362793, 40.782852, 15.066868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169514, 0.270381, -0.947713,
		0.508513, -0.847729, -0.150900,
		-0.844204, -0.456344, -0.281194,
		39.109531, 40.645950, 14.982510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910286, 40.464680, 14.690737>,  <39.700474, 40.965389, 15.179345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910286, 40.464680, 14.690737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.520962, 40.538502, 14.636171>,  <39.287369, 40.582794, 14.603432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.520962, 40.538502, 14.636171>,  <39.910286, 40.464680, 14.690737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520962, 40.538502, 14.636171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172953, 0.199145, -0.964587,
		-0.150854, -0.962434, -0.225750,
		-0.973309, 0.184556, -0.136414,
		39.228970, 40.593868, 14.595247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799282, 40.195316, 14.035226>,  <39.910286, 40.464680, 14.690737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799282, 40.195316, 14.035226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.483650, 40.436569, 14.081854>,  <39.294270, 40.581322, 14.109831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.483650, 40.436569, 14.081854>,  <39.799282, 40.195316, 14.035226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483650, 40.436569, 14.081854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152762, 0.376464, -0.913750,
		-0.594994, -0.703214, -0.389195,
		-0.789079, 0.603130, 0.116569,
		39.246925, 40.617508, 14.116825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247826, 40.078526, 13.422943>,  <39.799282, 40.195316, 14.035226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247826, 40.078526, 13.422943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.197906, 40.451130, 13.559597>,  <39.167953, 40.674694, 13.641589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.197906, 40.451130, 13.559597>,  <39.247826, 40.078526, 13.422943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197906, 40.451130, 13.559597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023159, 0.341498, -0.939597,
		-0.991912, -0.125173, -0.021046,
		-0.124799, 0.931510, 0.341635,
		39.160465, 40.730583, 13.662087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763664, 40.407642, 12.917318>,  <39.247826, 40.078526, 13.422943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763664, 40.407642, 12.917318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943722, 40.713116, 13.102426>,  <39.051758, 40.896400, 13.213490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943722, 40.713116, 13.102426>,  <38.763664, 40.407642, 12.917318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943722, 40.713116, 13.102426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007042, 0.521264, -0.853366,
		-0.892927, 0.380881, 0.240023,
		0.450146, 0.763684, 0.462769,
		39.078766, 40.942223, 13.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550304, 40.987396, 12.625021>,  <38.763664, 40.407642, 12.917318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550304, 40.987396, 12.625021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.894306, 41.113457, 12.785556>,  <39.100708, 41.189095, 12.881877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.894306, 41.113457, 12.785556>,  <38.550304, 40.987396, 12.625021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894306, 41.113457, 12.785556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115653, 0.645648, -0.754826,
		-0.497007, 0.695570, 0.518813,
		0.860005, 0.315152, 0.401336,
		39.152309, 41.208004, 12.905956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.274609, 33.436722, 26.742464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657337, 33.528755, 26.671406>,  <35.886974, 33.583977, 26.628771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657337, 33.528755, 26.671406>,  <35.274609, 33.436722, 26.742464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657337, 33.528755, 26.671406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218588, 0.166657, -0.961481,
		-0.191613, 0.958795, 0.209754,
		0.956820, 0.230082, -0.177647,
		35.944382, 33.597778, 26.618113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243099, 33.732559, 26.113190>,  <35.274609, 33.436722, 26.742464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243099, 33.732559, 26.113190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639458, 33.697315, 26.153904>,  <35.877274, 33.676170, 26.178331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639458, 33.697315, 26.153904>,  <35.243099, 33.732559, 26.113190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639458, 33.697315, 26.153904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108071, 0.069788, -0.991691,
		0.080275, 0.993663, 0.078675,
		0.990897, -0.088111, 0.101784,
		35.936726, 33.670883, 26.184439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552380, 34.168606, 25.631170>,  <35.243099, 33.732559, 26.113190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552380, 34.168606, 25.631170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826450, 33.887878, 25.709133>,  <35.990894, 33.719444, 25.755911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826450, 33.887878, 25.709133>,  <35.552380, 34.168606, 25.631170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826450, 33.887878, 25.709133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381337, 0.117650, -0.916919,
		0.620576, 0.702578, 0.348239,
		0.685177, -0.701814, 0.194908,
		36.032005, 33.677334, 25.767605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160900, 34.453121, 25.570667>,  <35.552380, 34.168606, 25.631170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160900, 34.453121, 25.570667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102028, 34.069511, 25.473833>,  <36.066704, 33.839344, 25.415733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102028, 34.069511, 25.473833>,  <36.160900, 34.453121, 25.570667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102028, 34.069511, 25.473833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274534, 0.195525, -0.941489,
		0.950246, -0.205032, 0.234508,
		-0.147183, -0.959027, -0.242085,
		36.057873, 33.781803, 25.401207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586853, 34.417576, 25.066189>,  <36.160900, 34.453121, 25.570667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586853, 34.417576, 25.066189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.349800, 34.100128, 25.011131>,  <36.207569, 33.909660, 24.978096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.349800, 34.100128, 25.011131>,  <36.586853, 34.417576, 25.066189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349800, 34.100128, 25.011131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189987, 0.028338, -0.981377,
		0.782745, -0.607749, 0.133984,
		-0.592634, -0.793623, -0.137646,
		36.172009, 33.862041, 24.969837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919434, 33.922512, 24.587812>,  <36.586853, 34.417576, 25.066189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919434, 33.922512, 24.587812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536278, 33.807724, 24.583982>,  <36.306385, 33.738850, 24.581684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536278, 33.807724, 24.583982>,  <36.919434, 33.922512, 24.587812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536278, 33.807724, 24.583982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024824, -0.049544, -0.998464,
		0.286060, -0.956656, 0.054581,
		-0.957890, -0.286975, -0.009576,
		36.248909, 33.721630, 24.581110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890175, 33.309994, 24.171837>,  <36.919434, 33.922512, 24.587812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890175, 33.309994, 24.171837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516056, 33.450985, 24.184366>,  <36.291584, 33.535580, 24.191885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516056, 33.450985, 24.184366>,  <36.890175, 33.309994, 24.171837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516056, 33.450985, 24.184366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038307, -0.012846, -0.999183,
		-0.351785, -0.935733, 0.025517,
		-0.935297, 0.352475, 0.031326,
		36.235466, 33.556728, 24.193764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733112, 33.024464, 23.611828>,  <36.890175, 33.309994, 24.171837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733112, 33.024464, 23.611828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.456345, 33.300060, 23.698114>,  <36.290283, 33.465420, 23.749886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.456345, 33.300060, 23.698114>,  <36.733112, 33.024464, 23.611828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456345, 33.300060, 23.698114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073331, 0.230175, -0.970383,
		-0.718241, -0.687245, -0.108738,
		-0.691920, 0.688995, 0.215717,
		36.248768, 33.506760, 23.762829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213753, 32.848843, 23.150167>,  <36.733112, 33.024464, 23.611828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213753, 32.848843, 23.150167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.147354, 33.230469, 23.249939>,  <36.107513, 33.459442, 23.309801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.147354, 33.230469, 23.249939>,  <36.213753, 32.848843, 23.150167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147354, 33.230469, 23.249939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205895, 0.213830, -0.954926,
		-0.964393, -0.209869, 0.160942,
		-0.165995, 0.954061, 0.249427,
		36.097557, 33.516685, 23.324768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709412, 33.145061, 22.777201>,  <36.213753, 32.848843, 23.150167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709412, 33.145061, 22.777201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897034, 33.475388, 22.902431>,  <36.009609, 33.673584, 22.977570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897034, 33.475388, 22.902431>,  <35.709412, 33.145061, 22.777201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897034, 33.475388, 22.902431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077892, 0.391794, -0.916750,
		-0.879726, 0.405622, 0.248099,
		0.469057, 0.825814, 0.313077,
		36.037750, 33.723133, 22.996355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382839, 33.654564, 22.352266>,  <35.709412, 33.145061, 22.777201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382839, 33.654564, 22.352266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713997, 33.834675, 22.486038>,  <35.912693, 33.942741, 22.566301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713997, 33.834675, 22.486038>,  <35.382839, 33.654564, 22.352266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713997, 33.834675, 22.486038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030693, 0.558985, -0.828609,
		-0.560046, 0.696264, 0.448959,
		0.827893, 0.450279, 0.334428,
		35.962364, 33.969757, 22.586367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224892, 34.383537, 22.311953>,  <35.382839, 33.654564, 22.352266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224892, 34.383537, 22.311953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619324, 34.318092, 22.300097>,  <35.855984, 34.278828, 22.292982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619324, 34.318092, 22.300097>,  <35.224892, 34.383537, 22.311953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619324, 34.318092, 22.300097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066073, 0.549163, -0.833099,
		0.152581, 0.819544, 0.552328,
		0.986080, -0.163609, -0.029642,
		35.915146, 34.269009, 22.291204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676331, 34.760529, 22.074945>,  <35.224892, 34.383537, 22.311953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676331, 34.760529, 22.074945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393059, 34.929451, 21.848621>,  <34.223095, 35.030804, 21.712828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393059, 34.929451, 21.848621>,  <34.676331, 34.760529, 22.074945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393059, 34.929451, 21.848621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706033, -0.421860, 0.568816,
		0.001524, 0.802303, 0.596915,
		-0.708178, 0.422308, -0.565809,
		34.180607, 35.056145, 21.678879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175022, 34.973557, 22.482046>,  <34.676331, 34.760529, 22.074945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175022, 34.973557, 22.482046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972813, 34.954868, 22.137428>,  <33.851486, 34.943657, 21.930658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972813, 34.954868, 22.137428>,  <34.175022, 34.973557, 22.482046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972813, 34.954868, 22.137428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755890, -0.457481, 0.468340,
		-0.416021, 0.887991, 0.195954,
		-0.505527, -0.046719, -0.861545,
		33.821156, 34.940853, 21.878965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546207, 35.232704, 22.588860>,  <34.175022, 34.973557, 22.482046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546207, 35.232704, 22.588860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504852, 34.983337, 22.278849>,  <33.480038, 34.833717, 22.092842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504852, 34.983337, 22.278849>,  <33.546207, 35.232704, 22.588860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504852, 34.983337, 22.278849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776214, -0.436652, 0.454782,
		-0.621935, 0.648606, -0.438757,
		-0.103390, -0.623414, -0.775026,
		33.473835, 34.796314, 22.046341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895226, 35.324112, 22.405521>,  <33.546207, 35.232704, 22.588860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895226, 35.324112, 22.405521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989613, 34.980370, 22.224051>,  <33.046246, 34.774124, 22.115168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989613, 34.980370, 22.224051>,  <32.895226, 35.324112, 22.405521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989613, 34.980370, 22.224051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809938, -0.431887, 0.396829,
		-0.536956, 0.273813, -0.797938,
		0.235963, -0.859360, -0.453676,
		33.060402, 34.722561, 22.087948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257721, 34.997856, 22.116316>,  <32.895226, 35.324112, 22.405521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257721, 34.997856, 22.116316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502430, 34.682014, 22.097313>,  <32.649254, 34.492508, 22.085911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502430, 34.682014, 22.097313>,  <32.257721, 34.997856, 22.116316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502430, 34.682014, 22.097313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726486, -0.584596, 0.361200,
		-0.312980, -0.186457, -0.931277,
		0.611770, -0.789608, -0.047508,
		32.685963, 34.445133, 22.083061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775045, 34.475586, 21.862690>,  <32.257721, 34.997856, 22.116316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775045, 34.475586, 21.862690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077606, 34.274826, 22.030478>,  <32.259144, 34.154369, 22.131149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077606, 34.274826, 22.030478>,  <31.775045, 34.475586, 21.862690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077606, 34.274826, 22.030478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653913, -0.564662, 0.503542,
		-0.015870, -0.655176, -0.755310,
		0.756403, -0.501898, 0.419467,
		32.304527, 34.124256, 22.156317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589830, 33.734894, 21.966288>,  <31.775045, 34.475586, 21.862690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589830, 33.734894, 21.966288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876831, 33.790478, 22.239309>,  <32.049030, 33.823830, 22.403122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876831, 33.790478, 22.239309>,  <31.589830, 33.734894, 21.966288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876831, 33.790478, 22.239309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565835, -0.455197, 0.687479,
		0.406229, -0.879481, -0.247977,
		0.717502, 0.138960, 0.682555,
		32.092083, 33.832165, 22.444077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669867, 33.053307, 22.397070>,  <31.589830, 33.734894, 21.966288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669867, 33.053307, 22.397070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.810228, 33.348034, 22.628231>,  <31.894445, 33.524868, 22.766928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.810228, 33.348034, 22.628231>,  <31.669867, 33.053307, 22.397070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810228, 33.348034, 22.628231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595974, -0.300291, 0.744742,
		0.722276, -0.605747, 0.333750,
		0.350903, 0.736815, 0.577902,
		31.915499, 33.569077, 22.801601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924555, 32.739754, 23.050396>,  <31.669867, 33.053307, 22.397070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924555, 32.739754, 23.050396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849739, 33.124714, 23.129189>,  <31.804850, 33.355690, 23.176464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849739, 33.124714, 23.129189>,  <31.924555, 32.739754, 23.050396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849739, 33.124714, 23.129189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650744, -0.271597, 0.709061,
		0.735900, 0.004439, 0.677076,
		-0.187039, 0.962401, 0.196980,
		31.793627, 33.413433, 23.188282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855324, 32.689175, 23.733759>,  <31.924555, 32.739754, 23.050396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855324, 32.689175, 23.733759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734472, 33.061813, 23.652922>,  <31.661961, 33.285397, 23.604420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734472, 33.061813, 23.652922>,  <31.855324, 32.689175, 23.733759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734472, 33.061813, 23.652922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574553, -0.008794, 0.818420,
		0.760662, 0.363383, 0.537909,
		-0.302130, 0.931598, -0.202094,
		31.643833, 33.341293, 23.592293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928181, 33.091785, 24.358507>,  <31.855324, 32.689175, 23.733759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928181, 33.091785, 24.358507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646261, 33.273922, 24.140911>,  <31.477110, 33.383205, 24.010353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646261, 33.273922, 24.140911>,  <31.928181, 33.091785, 24.358507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646261, 33.273922, 24.140911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581693, 0.068000, 0.810561,
		0.406073, 0.887716, 0.216943,
		-0.704796, 0.455342, -0.543991,
		31.434822, 33.410526, 23.977715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637409, 33.552731, 24.820145>,  <31.928181, 33.091785, 24.358507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637409, 33.552731, 24.820145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.368635, 33.482002, 24.532469>,  <31.207371, 33.439564, 24.359863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.368635, 33.482002, 24.532469>,  <31.637409, 33.552731, 24.820145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368635, 33.482002, 24.532469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739848, 0.116248, 0.662655,
		-0.033567, 0.977354, -0.208933,
		-0.671936, -0.176822, -0.719191,
		31.167055, 33.428955, 24.316711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009430, 33.939621, 24.970768>,  <31.637409, 33.552731, 24.820145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009430, 33.939621, 24.970768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.858305, 33.657337, 24.731026>,  <30.767630, 33.487965, 24.587181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.858305, 33.657337, 24.731026>,  <31.009430, 33.939621, 24.970768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858305, 33.657337, 24.731026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835935, -0.018322, 0.548522,
		-0.398081, 0.708261, -0.583008,
		-0.377815, -0.705713, -0.599354,
		30.744961, 33.445621, 24.551220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307022, 34.135891, 24.822264>,  <31.009430, 33.939621, 24.970768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307022, 34.135891, 24.822264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348679, 33.742451, 24.763355>,  <30.373672, 33.506386, 24.728010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348679, 33.742451, 24.763355>,  <30.307022, 34.135891, 24.822264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348679, 33.742451, 24.763355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842641, -0.165919, 0.512276,
		-0.528309, 0.070749, -0.846099,
		0.104141, -0.983598, -0.147272,
		30.379921, 33.447372, 24.719173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079020, 34.721375, 25.134327>,  <30.307022, 34.135891, 24.822264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079020, 34.721375, 25.134327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.225965, 35.047642, 25.313087>,  <30.314133, 35.243404, 25.420343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.225965, 35.047642, 25.313087>,  <30.079020, 34.721375, 25.134327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225965, 35.047642, 25.313087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116038, -0.436551, 0.892165,
		0.922810, -0.379608, -0.065725,
		0.367365, 0.815672, 0.446903,
		30.336176, 35.292343, 25.447159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624620, 34.568150, 25.649250>,  <30.079020, 34.721375, 25.134327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624620, 34.568150, 25.649250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.468222, 34.923405, 25.745861>,  <30.374382, 35.136559, 25.803827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.468222, 34.923405, 25.745861>,  <30.624620, 34.568150, 25.649250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468222, 34.923405, 25.745861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093288, -0.299309, 0.949585,
		0.915653, 0.348751, 0.199881,
		-0.390995, 0.888137, 0.241529,
		30.350924, 35.189846, 25.818319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974865, 34.902035, 26.236599>,  <30.624620, 34.568150, 25.649250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974865, 34.902035, 26.236599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.581894, 34.968033, 26.201700>,  <30.346111, 35.007629, 26.180761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.581894, 34.968033, 26.201700>,  <30.974865, 34.902035, 26.236599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581894, 34.968033, 26.201700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164373, -0.543432, 0.823203,
		0.088410, 0.823079, 0.561003,
		-0.982428, 0.164993, -0.087247,
		30.287165, 35.017532, 26.175526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891960, 35.284657, 25.678055>,  <30.974865, 34.902035, 26.236599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891960, 35.284657, 25.678055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.290075, 35.306366, 25.645912>,  <31.528944, 35.319393, 25.626627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.290075, 35.306366, 25.645912>,  <30.891960, 35.284657, 25.678055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290075, 35.306366, 25.645912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096928, 0.580347, -0.808581,
		0.002747, 0.812559, 0.582873,
		0.995287, 0.054276, -0.080354,
		31.588661, 35.322647, 25.621805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154547, 36.003113, 25.768847>,  <30.891960, 35.284657, 25.678055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154547, 36.003113, 25.768847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444403, 35.831024, 25.553513>,  <31.618317, 35.727772, 25.424313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444403, 35.831024, 25.553513>,  <31.154547, 36.003113, 25.768847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444403, 35.831024, 25.553513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062448, 0.736972, -0.673032,
		0.686291, 0.521325, 0.507174,
		0.724641, -0.430224, -0.538333,
		31.661795, 35.701958, 25.392014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679333, 36.492691, 25.655962>,  <31.154547, 36.003113, 25.768847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679333, 36.492691, 25.655962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758568, 36.224037, 25.370398>,  <31.806108, 36.062843, 25.199059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758568, 36.224037, 25.370398>,  <31.679333, 36.492691, 25.655962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758568, 36.224037, 25.370398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193817, 0.740801, -0.643155,
		0.960830, -0.010965, 0.276920,
		0.198090, -0.671635, -0.713909,
		31.817995, 36.022545, 25.156225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241241, 36.721935, 25.265518>,  <31.679333, 36.492691, 25.655962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241241, 36.721935, 25.265518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093460, 36.432102, 25.032799>,  <32.004791, 36.258202, 24.893167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093460, 36.432102, 25.032799>,  <32.241241, 36.721935, 25.265518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093460, 36.432102, 25.032799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217178, 0.541425, -0.812215,
		0.903516, -0.426426, -0.042666,
		-0.369450, -0.724582, -0.581796,
		31.982624, 36.214729, 24.858259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705479, 36.775784, 24.756914>,  <32.241241, 36.721935, 25.265518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705479, 36.775784, 24.756914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378677, 36.603382, 24.603689>,  <32.182594, 36.499943, 24.511755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378677, 36.603382, 24.603689>,  <32.705479, 36.775784, 24.756914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378677, 36.603382, 24.603689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191917, 0.423189, -0.885482,
		0.543754, -0.796961, -0.263031,
		-0.817006, -0.431004, -0.383061,
		32.133575, 36.474083, 24.488771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877571, 36.344112, 24.229025>,  <32.705479, 36.775784, 24.756914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877571, 36.344112, 24.229025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498631, 36.443645, 24.148424>,  <32.271267, 36.503365, 24.100063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498631, 36.443645, 24.148424>,  <32.877571, 36.344112, 24.229025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498631, 36.443645, 24.148424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276095, 0.316135, -0.907651,
		-0.162155, -0.915499, -0.368194,
		-0.947353, 0.248837, -0.201502,
		32.214424, 36.518295, 24.087975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768860, 36.175240, 23.560772>,  <32.877571, 36.344112, 24.229025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768860, 36.175240, 23.560772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451317, 36.414505, 23.604582>,  <32.260792, 36.558064, 23.630869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451317, 36.414505, 23.604582>,  <32.768860, 36.175240, 23.560772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451317, 36.414505, 23.604582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143978, 0.359872, -0.921826,
		-0.590816, -0.716027, -0.371809,
		-0.793856, 0.598161, 0.109526,
		32.213161, 36.593952, 23.637440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432259, 36.174076, 22.888689>,  <32.768860, 36.175240, 23.560772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432259, 36.174076, 22.888689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308647, 36.509102, 23.068907>,  <32.234478, 36.710117, 23.177038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308647, 36.509102, 23.068907>,  <32.432259, 36.174076, 22.888689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308647, 36.509102, 23.068907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302610, 0.535709, -0.788317,
		-0.901624, -0.107275, -0.419005,
		-0.309032, 0.837561, 0.450546,
		32.215939, 36.760368, 23.204071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036404, 36.558781, 22.429968>,  <32.432259, 36.174076, 22.888689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036404, 36.558781, 22.429968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147362, 36.835388, 22.696758>,  <32.213936, 37.001350, 22.856833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147362, 36.835388, 22.696758>,  <32.036404, 36.558781, 22.429968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147362, 36.835388, 22.696758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249153, 0.618693, -0.745079,
		-0.927887, 0.372861, -0.000670,
		0.277397, 0.691515, 0.666977,
		32.230579, 37.042843, 22.896851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918625, 37.172367, 22.002008>,  <32.036404, 36.558781, 22.429968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918625, 37.172367, 22.002008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144627, 37.314701, 22.299774>,  <32.280228, 37.400101, 22.478434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144627, 37.314701, 22.299774>,  <31.918625, 37.172367, 22.002008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144627, 37.314701, 22.299774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283890, 0.763297, -0.580331,
		-0.774711, 0.539221, 0.330248,
		0.565004, 0.355835, 0.744414,
		32.314129, 37.421452, 22.523098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746550, 37.888985, 22.074291>,  <31.918625, 37.172367, 22.002008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746550, 37.888985, 22.074291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101349, 37.850327, 22.254910>,  <32.314228, 37.827133, 22.363281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101349, 37.850327, 22.254910>,  <31.746550, 37.888985, 22.074291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101349, 37.850327, 22.254910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299119, 0.865222, -0.402391,
		-0.351797, 0.491986, 0.796360,
		0.886999, -0.096646, 0.451545,
		32.367447, 37.821331, 22.390373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884970, 38.521503, 22.414375>,  <31.746550, 37.888985, 22.074291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884970, 38.521503, 22.414375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.240917, 38.351337, 22.348461>,  <32.454487, 38.249237, 22.308912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.240917, 38.351337, 22.348461>,  <31.884970, 38.521503, 22.414375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240917, 38.351337, 22.348461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341976, 0.861081, -0.376287,
		0.301974, 0.278493, 0.911731,
		0.889867, -0.425419, -0.164786,
		32.507877, 38.223713, 22.299025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406757, 39.046272, 22.657330>,  <31.884970, 38.521503, 22.414375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406757, 39.046272, 22.657330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.602215, 38.789474, 22.421003>,  <32.719490, 38.635395, 22.279207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.602215, 38.789474, 22.421003>,  <32.406757, 39.046272, 22.657330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602215, 38.789474, 22.421003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593517, 0.740938, -0.314244,
		0.639501, -0.197104, 0.743094,
		0.488647, -0.641998, -0.590815,
		32.748810, 38.596874, 22.243759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103920, 39.148830, 22.748415>,  <32.406757, 39.046272, 22.657330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103920, 39.148830, 22.748415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109623, 38.983032, 22.384439>,  <33.113045, 38.883553, 22.166054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109623, 38.983032, 22.384439>,  <33.103920, 39.148830, 22.748415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109623, 38.983032, 22.384439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624198, 0.714620, -0.315748,
		0.781137, -0.563480, 0.268915,
		0.014254, -0.414499, -0.909938,
		33.113899, 38.858685, 22.111458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797028, 39.178013, 22.572981>,  <33.103920, 39.148830, 22.748415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797028, 39.178013, 22.572981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.613403, 39.106258, 22.224939>,  <33.503227, 39.063206, 22.016115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.613403, 39.106258, 22.224939>,  <33.797028, 39.178013, 22.572981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613403, 39.106258, 22.224939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592314, 0.668158, -0.450255,
		0.662132, -0.722072, -0.200483,
		-0.459071, -0.179379, -0.870102,
		33.475685, 39.052441, 21.963907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359528, 39.200485, 22.037704>,  <33.797028, 39.178013, 22.572981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359528, 39.200485, 22.037704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021194, 39.229034, 21.826244>,  <33.818195, 39.246166, 21.699369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021194, 39.229034, 21.826244>,  <34.359528, 39.200485, 22.037704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021194, 39.229034, 21.826244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421138, 0.697621, -0.579628,
		0.327425, -0.712903, -0.620131,
		-0.845835, 0.071376, -0.528649,
		33.767445, 39.250446, 21.667650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523663, 39.050632, 21.216568>,  <34.359528, 39.200485, 22.037704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523663, 39.050632, 21.216568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189713, 39.264595, 21.268507>,  <33.989342, 39.392975, 21.299671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189713, 39.264595, 21.268507>,  <34.523663, 39.050632, 21.216568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189713, 39.264595, 21.268507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362916, 0.712276, -0.600796,
		-0.413859, -0.454463, -0.788786,
		-0.834872, 0.534908, 0.129850,
		33.939251, 39.425068, 21.307463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332150, 39.166233, 20.463488>,  <34.523663, 39.050632, 21.216568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332150, 39.166233, 20.463488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118526, 39.425964, 20.680063>,  <33.990353, 39.581802, 20.810009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118526, 39.425964, 20.680063>,  <34.332150, 39.166233, 20.463488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118526, 39.425964, 20.680063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325160, 0.748910, -0.577412,
		-0.780417, -0.132319, -0.611098,
		-0.534061, 0.649327, 0.541437,
		33.958309, 39.620762, 20.842495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934162, 39.752621, 19.972345>,  <34.332150, 39.166233, 20.463488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934162, 39.752621, 19.972345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922440, 39.922318, 20.334375>,  <33.915405, 40.024136, 20.551594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922440, 39.922318, 20.334375>,  <33.934162, 39.752621, 19.972345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922440, 39.922318, 20.334375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241021, 0.881745, -0.405505,
		-0.970077, 0.206257, -0.128095,
		-0.029309, 0.424244, 0.905073,
		33.913647, 40.049591, 20.605898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494732, 40.308254, 19.927675>,  <33.934162, 39.752621, 19.972345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494732, 40.308254, 19.927675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752800, 40.375751, 20.225744>,  <33.907639, 40.416248, 20.404587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752800, 40.375751, 20.225744>,  <33.494732, 40.308254, 19.927675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752800, 40.375751, 20.225744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311763, 0.832275, -0.458390,
		-0.697541, 0.528056, 0.484349,
		0.645167, 0.168744, 0.745174,
		33.946350, 40.426376, 20.449297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562752, 41.061069, 20.000835>,  <33.494732, 40.308254, 19.927675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562752, 41.061069, 20.000835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889751, 40.931942, 20.191618>,  <34.085953, 40.854465, 20.306087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889751, 40.931942, 20.191618>,  <33.562752, 41.061069, 20.000835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889751, 40.931942, 20.191618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465470, 0.858031, -0.217073,
		-0.339168, 0.399465, 0.851700,
		0.817498, -0.322816, 0.476956,
		34.135002, 40.835098, 20.334705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728081, 41.671143, 20.349659>,  <33.562752, 41.061069, 20.000835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728081, 41.671143, 20.349659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048637, 41.432846, 20.328239>,  <34.240971, 41.289867, 20.315388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048637, 41.432846, 20.328239>,  <33.728081, 41.671143, 20.349659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048637, 41.432846, 20.328239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567467, 0.785542, -0.246788,
		0.189087, 0.167386, 0.967589,
		0.801391, -0.595739, -0.053550,
		34.289055, 41.254124, 20.312174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253319, 41.966198, 20.793600>,  <33.728081, 41.671143, 20.349659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253319, 41.966198, 20.793600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474930, 41.742283, 20.547123>,  <34.607895, 41.607933, 20.399237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474930, 41.742283, 20.547123>,  <34.253319, 41.966198, 20.793600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474930, 41.742283, 20.547123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440642, 0.825168, -0.353457,
		0.706324, -0.075696, 0.703830,
		0.554023, -0.559792, -0.616191,
		34.641136, 41.574345, 20.362267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801876, 42.432659, 20.583363>,  <34.253319, 41.966198, 20.793600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801876, 42.432659, 20.583363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807816, 42.136364, 20.314709>,  <34.811378, 41.958588, 20.153517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807816, 42.136364, 20.314709>,  <34.801876, 42.432659, 20.583363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807816, 42.136364, 20.314709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324084, 0.639011, -0.697592,
		0.945912, -0.207308, 0.249548,
		0.014848, -0.740735, -0.671634,
		34.812271, 41.914143, 20.113218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405247, 42.456223, 20.337662>,  <34.801876, 42.432659, 20.583363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405247, 42.456223, 20.337662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175583, 42.280552, 20.061268>,  <35.037785, 42.175148, 19.895432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175583, 42.280552, 20.061268>,  <35.405247, 42.456223, 20.337662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175583, 42.280552, 20.061268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066817, 0.816011, -0.574162,
		0.816011, -0.375831, -0.439178,
		0.574162, 0.439178, 0.690986,
		35.003334, 42.148800, 19.853971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152439, 42.193359, 20.321184>,  <35.405247, 42.456223, 20.337662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152439, 42.193359, 20.321184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325466, 42.485199, 20.533056>,  <36.429283, 42.660305, 20.660179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325466, 42.485199, 20.533056>,  <36.152439, 42.193359, 20.321184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325466, 42.485199, 20.533056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546453, -0.255123, 0.797685,
		0.717127, -0.634502, 0.288335,
		0.432572, 0.729603, 0.529680,
		36.455238, 42.704079, 20.691961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286541, 41.849754, 20.978127>,  <36.152439, 42.193359, 20.321184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286541, 41.849754, 20.978127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302132, 42.243160, 21.048748>,  <36.311485, 42.479206, 21.091120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302132, 42.243160, 21.048748>,  <36.286541, 41.849754, 20.978127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302132, 42.243160, 21.048748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307101, -0.156344, 0.938747,
		0.950878, -0.090809, 0.295946,
		0.038977, 0.983519, 0.176552,
		36.313824, 42.538216, 21.101713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668468, 41.953075, 21.538593>,  <36.286541, 41.849754, 20.978127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668468, 41.953075, 21.538593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439819, 42.281265, 21.535412>,  <36.302631, 42.478180, 21.533503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439819, 42.281265, 21.535412>,  <36.668468, 41.953075, 21.538593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439819, 42.281265, 21.535412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130656, -0.081450, 0.988076,
		0.810048, 0.565845, 0.153759,
		-0.571622, 0.820479, -0.007952,
		36.268333, 42.527409, 21.533026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807533, 42.206787, 22.143253>,  <36.668468, 41.953075, 21.538593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807533, 42.206787, 22.143253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478729, 42.417374, 22.056412>,  <36.281448, 42.543724, 22.004307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478729, 42.417374, 22.056412>,  <36.807533, 42.206787, 22.143253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478729, 42.417374, 22.056412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352761, -0.171453, 0.919871,
		0.447057, 0.832729, 0.326653,
		-0.822010, 0.526465, -0.217106,
		36.232128, 42.575314, 21.991280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677654, 42.811604, 22.711342>,  <36.807533, 42.206787, 22.143253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677654, 42.811604, 22.711342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333008, 42.745911, 22.519239>,  <36.126221, 42.706497, 22.403978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333008, 42.745911, 22.519239>,  <36.677654, 42.811604, 22.711342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333008, 42.745911, 22.519239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495772, 0.069582, 0.865661,
		-0.108750, 0.983965, -0.141374,
		-0.861617, -0.164230, -0.480255,
		36.074524, 42.696640, 22.375162>
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
